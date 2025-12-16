clear;
clc;

val_eta = [0, 1.728, 100];
n = length(val_eta);
results_cell = cell(1, n);
for i = 1:n
    etta = val_eta(i);
    disp(['Running Dynare with eta_i = ' num2str(etta)]);
    dynare FA3original;
    results_cell{i} = oo_.irfs;
end;




var_titles = containers.Map();

% -- Real Economy --
var_titles('Y')         = 'Output';
var_titles('Ym')        = 'Wholesale Output';
var_titles('C')         = 'Consumption';
var_titles('I')         = 'Gross Investment';
var_titles('In')        = 'Net Investment';
var_titles('L')         = 'Labor Hours';
var_titles('G')         = 'Government Spending';
var_titles('Welf')      = 'Welfare';

% -- Capital & Production --
var_titles('K')         = 'Capital Stock';
var_titles('Keff')      = 'Effective Capital';
var_titles('Q')         = 'Capital adjustment cost';
var_titles('U')         = 'Capacity Utilization';
var_titles('delta')     = 'Depreciation Rate';
var_titles('VMPK')      = 'Value Marg. Product of Capital';
var_titles('Pm')        = 'Real Marginal Cost';
var_titles('w')         = 'Real Wages';
var_titles('X')         = 'Price Markup';
var_titles('D')         = 'Price Dispersion';

% -- Financial Sector (Gertler-Karadi vars) --
var_titles('N')         = 'Aggregate Net Worth';
var_titles('Ne')        = 'Existing Bankers'' Net Worth';
var_titles('Nn')        = 'New Bankers'' Net Worth';
var_titles('phi')       = 'Bank Leverage Ratio';
var_titles('nu')        = 'Marginal Value of Assets';
var_titles('eta')       = 'Marginal Value of Net Worth';
var_titles('z')         = 'Growth Rate of Bank Capital';
var_titles('x')         = 'Growth Rate of Net Worth';
var_titles('prem')      = 'Excess Spread (Premium)';

% -- Rates & Inflation --
var_titles('R')         = 'Risk-Free Rate (Real)';
var_titles('Rk')        = 'Return on Capital';
var_titles('i')         = 'Nominal Interest Rate';
var_titles('infl')      = 'Inflation';
var_titles('inflstar')  = 'Optimal Reset Price';
var_titles('Lambda')    = 'Stochastic Discount Factor';
var_titles('varrho')    = 'Marginal Utility of Cons.';

% -- Auxiliary & Shocks --
var_titles('F')         = 'Price Setting Aux 1';
var_titles('Z')         = 'Price Setting Aux 2';
var_titles('a')         = 'TFP Shock Process';
var_titles('ksi')       = 'Capital Quality Shock Process';
var_titles('g')         = 'Gov. Spending Shock Process';


num_cases = length(results_cell);
% 2. Define a list of plot styles (colors and line styles)
% This list should be long enough for the expected number of cases. 
plot_styles = {'b-', 'r--', 'k:', 'm-.', 'g-', 'c--', 'y:', 'b--', 'r:', 'k-'};
fields = fieldnames(results_cell{1});
num_vars = length(fields);
plots_per_fig = 9; 


for k = 1:num_vars
    
    % Create new figure every 9 plots
    if mod(k-1, plots_per_fig) == 0
        figure('Name', ['figure_' num2str(floor((k-1)/plots_per_fig)+1)]);
    end
    
    subplot_idx = mod(k-1, plots_per_fig) + 1;
    subplot(3, 3, subplot_idx); 
    
    var_name = fields{k}; 
    
    hold on;
    
    % --- Variables to collect plot handles and legend labels ---
    plot_handles = [];
    legend_labels = {};
    
    % --- Dynamic Plotting Loop ---
    for case_idx = 1:num_cases
   
        data = [];
        if isfield(results_cell{case_idx}, var_name)
            data = results_cell{case_idx}.(var_name); 
        end
        
 
        if ~isempty(data)
     
            style_idx = mod(case_idx - 1, length(plot_styles)) + 1;
            current_style = plot_styles{style_idx};
            
            % 1. Plot and capture the handle
            h = plot(data, current_style, 'LineWidth', 1.5); 
            plot_handles = [plot_handles, h]; % Collect handle
            
            % 2. Generate the label from val_eta
            % Use num2str for a clean string, or sprintf for custom formatting (e.g., '%.2f')
            label = ['\eta = ' num2str(val_eta(case_idx))]; 
            legend_labels{end+1} = label; % Collect label
        end
    end
    
    hold off;
    
    % --- NAME CLEANING LOGIC (Unchanged) ---
    base_var = strrep(var_name, '_e_ksi', '');
    
    if exist('var_titles', 'var') && isKey(var_titles, base_var)
        final_title = var_titles(base_var);
    else
        final_title = base_var; 
    end
    
    title(final_title, 'FontWeight', 'bold', 'FontSize', 10);
    grid on;
    axis tight;
    
    % --- DYNAMIC LEGEND ---
    % Add legend only on the first subplot of every page to save space, 
    % or if you prefer it on every plot, remove the 'if' condition.
    if subplot_idx == 1
       legend(plot_handles, legend_labels, 'Location', 'Best', 'Interpreter', 'tex');
    end
    
end

% --- 4. Export Figures ---
folder_name = 'figures';
if ~exist(folder_name, 'dir')
    mkdir(folder_name);
end
all_figs = findobj('Type', 'figure');
for i = 1:length(all_figs)
    h = all_figs(i);
    fig_name = get(h, 'Name');
    
    if isempty(fig_name)
        continue;
    end
    
    % Save as PDF
    file_name = [fig_name '.pdf'];
    full_path = fullfile(pwd, folder_name, file_name);
    print(h, full_path, '-dpdf');
end
disp(['All figures saved in: ' fullfile(pwd, folder_name)]);