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
exp(Pm)*alfa*exp(Ym)/exp(U) = b*exp(U)^zetta*exp(ksi)*exp(K(-1));

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
