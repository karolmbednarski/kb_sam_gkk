// Dynare model file to calculate the GK model
// Created by Peter Karadi
// July 2010


parameters betta sig hh varphi zetta alfa G_over_Y eta_i epsilon gam gam_P kappa_pi kappa_y rho_i rho_ksi sigma_ksi rho_a sigma_a rho_g sigma_g sigma_i rho_shock_psi sigma_psi kappa tau chi b delta_c G_ss I_ss;
var Y Ym K Keff L I C G Q varrho Lambda Rk R Pm U D X F Z i w VMPK delta In Welf a ksi g infl inflstar ;
varexo e_a e_ksi e_g e_i ;

betta=0.99000000;
sig=1.00000000;
hh=0;
zetta=7.20000000;
alfa=0.33000000;
G_over_Y=0.20000000;
eta_i=4;
varphi = 0.27600000;
epsilon=4.16700000;
gam=0;
gam_P=0.24100000;
kappa_pi=1.50000000;
kappa_y=-0.12500000;
rho_i=0.00000000;
rho_ksi=0.66000000;
sigma_ksi=0.05000000;
rho_a=0.95000000;
sigma_a=0.01000000;
rho_g=0.95000000;
sigma_g=0.01000000;
sigma_i=0.01000000;
rho_shock_psi=0.66000000;
sigma_psi=0.07200000;
kappa=10.00000000;
tau=0.00100000;
chi=3.47600242;
b=0.03510101;
delta_c=0.02071939;
G_ss       =   0.17560825;
I_ss       =   0.15684613;



model;
//Household
//1. Marginal utility of consumption
exp(varrho)  =   (exp(C)-hh*exp(C(-1)))^(-sig)-betta*hh*(exp(C(+1))-hh*exp(C))^(-sig);

//2. Euler equation
betta*exp(R)*exp(Lambda(+1))  =   1;

//3. Stochastic discount rate
exp(Lambda)  =   exp(varrho)/exp(varrho(-1));

//4. Arbitrage
betta*exp(Lambda(+1))*exp(Rk(+1))= betta*exp(Lambda(+1))*exp(R);

//5. Labor market equilibrium
chi*exp(L)^varphi    =   exp(varrho)*exp(Pm)*(1-alfa)*exp(Ym)/exp(L);

//Final goods producer
//6. Return to capital
exp(Rk)     =   (exp(Pm)*alfa*exp(Ym)/exp(K(-1))+exp(ksi)*(exp(Q)-exp(delta)))/exp(Q(-1));

//7. Production function
exp(Ym)     =   exp(a)*(exp(ksi)*exp(U)*exp(K(-1)))^alfa*exp(L)^(1-alfa);

//Capital Goods Producer
//8. Optimal investment decision
exp(Q) = 1 + eta_i * (exp(I)/exp(K(-1)) - exp(delta));
//9. Depreciation rate
exp(delta) = delta_c+b/(1+zetta)*exp(U)^(1+zetta);

//10. Optimal capacity utilization rate
exp(Pm)*alfa*exp(Ym)/exp(U) = b*exp(U)^zetta*exp(ksi)*exp(K(-1));

//11. Net investment
In  =   exp(I)-exp(delta)*exp(ksi)*exp(K(-1));

//12. Capital accumulation equation
exp(K)  =   exp(ksi)*exp(K(-1))+In; 

//13. Government consumption
exp(G)   =   G_ss*exp(g);

//Equilibrium
//14. Aggregate resource constraint
exp(Y) = exp(C)+exp(G)+exp(I) + eta_i/2 * (exp(I)/exp(K(-1)) - exp(delta))^2 * exp(K(-1));
//15. Wholesale, retail output
exp(Ym)    =   exp(Y)*exp(D);

//16. Price dispersion
exp(D)    =   gam*exp(D(-1))*exp(infl(-1))^(-gam_P*epsilon)*exp(infl)^epsilon+(1-gam)*((1-gam*exp(infl(-1))^(gam_P*(1-gam))*exp(infl)^(gam-1))/(1-gam))^(-epsilon/(1-gam));

//17. Markup
exp(X)  =   1/exp(Pm);

//18. Optimal price choice
exp(F)       =   exp(Y)*exp(Pm)+betta*gam*exp(Lambda(+1))*exp(infl(+1))^epsilon*(exp(infl))^(-epsilon*gam_P)*exp(F(+1));

//19.
exp(Z)       =   exp(Y)+betta*gam*exp(Lambda(+1))*exp(infl(+1))^(epsilon-1)*exp(infl)^(gam_P*(1-epsilon))*exp(Z(+1));

//20. Optimal price choice
exp(inflstar)   =  epsilon/(epsilon-1)*exp(F)/exp(Z)*exp(infl);

//21. Price index
(exp(infl))^(1-epsilon)     =   gam*exp(infl(-1))^(gam_P*(1-epsilon))+(1-gam)*(exp(inflstar))^(1-epsilon);

//22. Fisher equation
exp(i)  =   exp(R)*exp(infl(+1));

//23. Interest rate rule
exp(i)      =   exp(i(-1))^rho_i*((1/betta)*exp(infl)^kappa_pi*(exp(X)/(epsilon/(epsilon-1)))^(kappa_y))^(1-rho_i)*exp(e_i);

//Shocks
//23. TFP shock
a  =   rho_a*a(-1)-e_a;

//24. Capital quality shock
ksi=   rho_ksi*ksi(-1)-e_ksi;

//25. Government consumption shock
g  =   rho_g*g(-1)-e_g;

//Some extra variables for convenience
//26. Effective capital
exp(Keff)   =   exp(ksi)*exp(K(-1));

//27. Wages
exp(w)      =   exp(Pm)*(1-alfa)*exp(Y)/exp(L);

//28. Marginal value product of capital
exp(VMPK)   =   exp(Pm)*alfa*exp(Y)/(exp(ksi)*exp(K(-1)));

//29. Welfare
Welf   =   log(exp(C)-hh*exp(C(-1)))-chi*exp(L)^(1+varphi)/(1+varphi)+betta*Welf(+1);
end;


initval;
Y=log(0.87804126);
Ym=log(0.87804126);
K=log(6.27384540);
Keff=log(6.27384540);
L=log(0.33333334);
I=log(0.15684613);
C=log(0.54558687);
G=log(0.17560825);
Q=log(1.00000000);
varrho=log(1.91363485);
Lambda=log(1.00000000);
Rk=log(1.01010101);
R=log(1.01010101);
Pm=log(0.76001920);
U=log(1.00000000);
D=log(1.00000000);
X=log(1.31575624);
F=log(2.91677177);
Z=log(3.83776065);
i=log(1.01010101);
w=log(1.34132968);
VMPK=log(0.03510101);
delta=log(0.02500000);
In=0.00000000;
Welf=-296.38295945;
a=0.00000000;
ksi=0.00000000;
g=0.00000000;
infl=0.00000000;
inflstar=0.00000000;
e_a=0.00000000;
e_ksi=0.00000000;
e_g=0.00000000;
e_i=0.00000000;
end;

shocks;
var e_a=0;
var e_ksi=sigma_ksi^2;
var e_g=0;
var e_i=0;
end;

check;

steady;

stoch_simul(order=1, periods=2000, irf=40, nograph);
