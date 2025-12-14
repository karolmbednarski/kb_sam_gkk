clear;
clc;
dynare DSGE1;
results_cell{1} = oo_.irfs;
dynare DSGE2;
results_cell{2} = oo_.irfs;
dynare DSGE3;
results_cell{3} = oo_.irfs;



%plotting
fields = fieldnames(results_cell{1});
num_vars = length(fields);
plots_per_fig = 9; 

%Loop through every single variable 
for k = 1:num_vars
    
   
    if mod(k-1, plots_per_fig) == 0
        figure('Name', ['figure ' num2str(floor((k-1)/plots_per_fig)+1)]);
    end
    subplot_idx = mod(k-1, plots_per_fig) + 1;
    subplot(3, 3, subplot_idx); 
    

    var_name = fields{k}; 
    data1 = results_cell{1}.(var_name);
    data2 = results_cell{2}.(var_name);
    data3 = results_cell{3}.(var_name);

    hold on;
    plot(data1, 'b-', 'LineWidth', 1.5); 
    plot(data2, 'r--', 'LineWidth', 1.5); 
    plot(data3, 'k:', 'LineWidth', 1.5); 
    hold off;
    

    clean_title = strrep(var_name, '_e_ksi', ''); 
    title(clean_title, 'Interpreter', 'none', 'FontWeight', 'bold');
    grid off;
    axis tight;
    

 if k == 1 || k == 10 || k == 19 || k == 28
       legend('i', 'ii', 'iii', 'Location', 'Best');
 end
    
end

% export figures
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
    file_name = [strrep(fig_name, ' ', '_') '.pdf'];
    full_path = fullfile(pwd, folder_name, file_name);

    exportgraphics(h, full_path, 'ContentType', 'vector');
end

disp(['All figures saved in: ' fullfile(pwd, folder_name)]);