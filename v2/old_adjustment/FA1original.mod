// Dynare model file to calculate the GK model
// Created by Peter Karadi
// July 2010

parameters betta sig hh varphi zetta theta alfa G_over_Y eta_i epsilon gam gam_P kappa_pi kappa_y rho_i rho_ksi sigma_ksi rho_a sigma_a rho_g sigma_g sigma_Ne sigma_i rho_shock_psi sigma_psi kappa tau omega lambda chi b delta_c G_ss I_ss;
var Y Ym K Keff L I C G Q varrho Lambda Rk R N Ne Nn nu eta phi z x Pm w VMPK U X D F Z i prem delta In Welf a ksi g infl inflstar ;
varexo e_a e_ksi e_g e_Ne e_i ;

betta=0.99000000;
sig=1.00000000;
hh=0;
varphi=0.27600000;
zetta=7.20000000;
theta=0.97155955;
alfa=0.33000000;
G_over_Y=0.20000000;
eta_i= 1.728;
epsilon=4.16700000;
gam=0.77900000;
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
sigma_Ne=0.01000000;
sigma_i=0.01000000;
rho_shock_psi=0.66000000;
sigma_psi=0.07200000;
kappa=10.00000000;
tau=0.00100000;
omega=0.00222778;
lambda=0.38149499;
chi=3.41080850;
b=0.03760101;
delta_c=0.02041451;
G_ss       =   0.16975710;
I_ss       =   0.14153927;



model;
//Home household
//1. Marginal utility of consumption
exp(varrho)  =   (exp(C)-hh*exp(C(-1)))^(-sig)-betta*hh*(exp(C(+1))-hh*exp(C))^(-sig);

//2. Euler equation
betta*exp(R)*exp(Lambda(+1))  =   1;

//3. Stochastic discount rate
exp(Lambda)  =   exp(varrho)/exp(varrho(-1));

//4. Labor market equilibrium
chi*exp(L)^varphi    =   exp(varrho)*exp(Pm)*(1-alfa)*exp(Y)/exp(L);

//Financial Intermediaries
//5. Value of banks' capital
exp(nu)     =   (1-theta)*betta*exp(Lambda(+1))*(exp(Rk(+1))-exp(R))+betta*exp(Lambda(+1))*theta*exp(x(+1))*exp(nu(+1));

//6. Value of banks' net wealth
exp(eta)    =   (1-theta)+betta*exp(Lambda(+1))*theta*exp(z(+1))*exp(eta(+1));

//7. Optimal leverage
exp(phi)    =   exp(eta)/(lambda-exp(nu));

//8. Growth rate of banks' capital
exp(z)      =   (exp(Rk)-exp(R(-1)))*exp(phi(-1))+exp(R(-1));

//9. Growth rate of banks' net wealth
exp(x)      =   (exp(phi)/exp(phi(-1)))*exp(z);

//Aggregate capital, net worth
//10. Aggregate capital
exp(Q)*exp(K)     =   exp(phi)*exp(N);

//11. Banks' net worth
exp(N)      =   exp(Ne)+exp(Nn);

//12. Existing banks' net worth accumulation
exp(Ne)     =   theta*exp(z)*exp(N(-1))*exp(-e_Ne);

//13. New banks' net worth
exp(Nn)    =   omega*exp(Q)*exp(ksi)*exp(K(-1));

//Final goods producer
//14. Return to capital
exp(Rk)     =   (exp(Pm)*alfa*exp(Ym)/exp(K(-1))+exp(ksi)*(exp(Q)-exp(delta)))/exp(Q(-1));

//15. Production function
exp(Ym)     =   exp(a)*(exp(ksi)*exp(U)*exp(K(-1)))^alfa*exp(L)^(1-alfa);

//Capital Goods Producer
//16. Optimal investment decision
exp(Q)  =   1+eta_i/2*((In+I_ss)/(In(-1)+I_ss)-1)^2+eta_i*((In+I_ss)/(In(-1)+I_ss)-1)*(In+I_ss)/(In(-1)+I_ss)-betta*exp(Lambda(+1))*eta_i*((In(+1)+I_ss)/(In+I_ss)-1)*((In(+1)+I_ss)/(In+I_ss))^2;
//17. Depreciation rate
exp(delta) = delta_c+b/(1+zetta)*exp(U)^(1+zetta);

//18. Optimal capacity utilization rate
U=log(1.00000000);

//19. Net investment
In  =   exp(I)-exp(delta)*exp(ksi)*exp(K(-1));

//20. Capital accumulation equation
exp(K)  =   exp(ksi)*exp(K(-1))+In; 

//21. Government consumption
exp(G)   =   G_ss*exp(g);

//Equilibrium
//22. Aggregate resource constraint
exp(Y)   =   exp(C)+exp(G)+exp(I)+eta_i/2*((In+I_ss)/(In(-1)+I_ss)-1)^2*(In+I_ss);

//23. Wholesale, retail output
exp(Ym)    =   exp(Y)*exp(D);

//24. Price dispersion
exp(D)    =   gam*exp(D(-1))*exp(infl(-1))^(-gam_P*epsilon)*exp(infl)^epsilon+(1-gam)*((1-gam*exp(infl(-1))^(gam_P*(1-gam))*exp(infl)^(gam-1))/(1-gam))^(-epsilon/(1-gam));

//25. Markup
exp(X)  =   1/exp(Pm);

//26. Optimal price choice
exp(F)       =   exp(Y)*exp(Pm)+betta*gam*exp(Lambda(+1))*exp(infl(+1))^epsilon*(exp(infl))^(-epsilon*gam_P)*exp(F(+1));

//27.
exp(Z)       =   exp(Y)+betta*gam*exp(Lambda(+1))*exp(infl(+1))^(epsilon-1)*exp(infl)^(gam_P*(1-epsilon))*exp(Z(+1));

//28. Optimal price choice
exp(inflstar)   =  epsilon/(epsilon-1)*exp(F)/exp(Z)*exp(infl);

//29. Price index
(exp(infl))^(1-epsilon)     =   gam*exp(infl(-1))^(gam_P*(1-epsilon))+(1-gam)*(exp(inflstar))^(1-epsilon);

//30. Fisher equation
exp(i)  =   exp(R)*exp(infl(+1));

//31. Interest rate rule
exp(i)      =   exp(i(-1))^rho_i*((1/betta)*exp(infl)^kappa_pi*(exp(X)/(epsilon/(epsilon-1)))^(kappa_y))^(1-rho_i)*exp(e_i);

//Shocks
//32. TFP shock
a  =   rho_a*a(-1)-e_a;

//33. Capital quality shock
ksi=   rho_ksi*ksi(-1)-e_ksi;

//34. Government consumption shock
g  =   rho_g*g(-1)-e_g;

//Some extra variables for convenience
//35. Effective capital
exp(Keff)   =   exp(ksi)*exp(K(-1));

//36. Wages
exp(w)      =   exp(Pm)*(1-alfa)*exp(Y)/exp(L);

//37. Marginal value product of capital
exp(VMPK)   =   exp(Pm)*alfa*exp(Y)/(exp(ksi)*exp(K(-1)));

//38. Welfare
Welf   =   log(exp(C)-hh*exp(C(-1)))-chi*exp(L)^(1+varphi)/(1+varphi)+betta*Welf(+1);

//39. Premium
exp(prem)   =   exp(Rk(+1))/exp(R);
end;


initval;
Y=log(0.84878550);
Ym=log(0.84878550);
K=log(5.66157077);
Keff=log(5.66157077);
L=log(0.33333333);
I=log(0.14153927);
C=log(0.53748913);
G=log(0.16975710);
Q=log(1.00000000);
varrho=log(1.94246544);
Lambda=log(1.00000000);
Rk=log(1.01260101);
R=log(1.01010101);
N=log(1.41539269);
Ne=log(1.40277996);
Nn=log(0.01261274);
nu=log(0.00373978);
eta=log(1.51102084);
phi=log(4.00000000);
z=log(1.02010101);
x=log(1.02010101);
Pm=log(0.76001920);
w=log(1.29663748);
VMPK=log(0.03760101);
U=log(1.00000000);
X=log(1.31575624);
D=log(1.00000000);
F=log(2.81958684);
Z=log(3.70988896);
i=log(1.01010101);
prem=log(1.00247500);
delta=log(0.02500000);
In=0.00000000;
Welf=-296.62068821;
a=0.00000000;
ksi=0.00000000;
g=0.00000000;
infl=0.00000000;
inflstar=0.00000000;
e_a=0.00000000;
e_ksi=0.00000000;
e_g=0.00000000;
e_Ne=0.00000000;
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