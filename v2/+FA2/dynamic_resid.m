function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
% function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = FA2.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(39, 1);
    residual(1) = (exp(y(23))) - ((exp(y(20))-params(3)*exp(y(2)))^(-params(2))-params(3)*params(1)*(exp(y(53))-exp(y(20))*params(3))^(-params(2)));
    residual(2) = (params(1)*exp(y(26))*exp(y(54))) - (1);
    residual(3) = (exp(y(24))) - (exp(y(23))/exp(y(4)));
    residual(4) = (params(30)*exp(y(18))^params(4)) - (T(1));
    residual(5) = (exp(y(30))) - (T(2));
    residual(6) = (exp(y(31))) - (1-params(6)+params(6)*params(1)*exp(y(54))*exp(y(58))*exp(y(57)));
    residual(7) = (exp(y(32))) - (exp(y(31))/(params(29)-exp(y(30))));
    residual(8) = (exp(y(33))) - (exp(y(5))+(exp(y(25))-exp(y(5)))*exp(y(7)));
    residual(9) = (exp(y(34))) - (exp(y(33))*exp(y(32))/exp(y(7)));
    residual(10) = (exp(y(22))*exp(y(16))) - (exp(y(32))*exp(y(27)));
    residual(11) = (exp(y(27))) - (exp(y(28))+exp(y(29)));
    residual(12) = (exp(y(28))) - (params(6)*exp(y(33))*exp(y(6))*exp((-x(it_, 4))));
    residual(13) = (exp(y(29))) - (exp(y(22))*params(28)*exp(y(49))*exp(y(1)));
    residual(14) = (exp(y(25))) - (T(3)/exp(y(3)));
    residual(15) = (exp(y(15))) - (T(4)*T(5));
    residual(16) = (exp(y(22))) - (1+params(9)*T(7));
    residual(17) = (exp(y(45))) - (params(32)+params(31)/(1+params(5))*exp(y(38))^(1+params(5)));
    residual(18) = (T(8)) - (T(9));
    residual(19) = (y(46)) - (exp(y(19))-exp(y(1))*exp(y(49))*exp(y(45)));
    residual(20) = (exp(y(16))) - (y(46)+exp(y(49))*exp(y(1)));
    residual(21) = (exp(y(21))) - (params(33)*exp(y(50)));
    residual(22) = (exp(y(14))) - (exp(y(19))+exp(y(20))+exp(y(21))+T(10));
    residual(23) = (exp(y(15))) - (exp(y(14))*exp(y(40)));
    residual(24) = (exp(y(40))) - (T(13)+(1-params(11))*T(16)^((-params(10))/(1-params(11))));
    residual(25) = (exp(y(39))) - (1/exp(y(35)));
    residual(26) = (exp(y(41))) - (exp(y(35))*exp(y(14))+T(19));
    residual(27) = (exp(y(42))) - (exp(y(14))+T(22));
    residual(28) = (exp(y(52))) - (T(23));
    residual(29) = (exp(y(51))^(1-params(10))) - (params(11)*exp(y(13))^(params(12)*(1-params(10)))+(1-params(11))*exp(y(52))^(1-params(10)));
    residual(30) = (exp(y(43))) - (exp(y(26))*exp(y(63)));
    residual(31) = (exp(y(43))) - (T(24)*T(29)*exp(x(it_, 5)));
    residual(32) = (y(48)) - (params(18)*y(10)-x(it_, 1));
    residual(33) = (y(49)) - (params(16)*y(11)-x(it_, 2));
    residual(34) = (y(50)) - (params(20)*y(12)-x(it_, 3));
    residual(35) = (exp(y(17))) - (exp(y(49))*exp(y(1)));
    residual(36) = (exp(y(36))) - (exp(y(14))*exp(y(35))*(1-params(7))/exp(y(18)));
    residual(37) = (exp(y(37))) - (T(30));
    residual(38) = (y(47)) - (log(exp(y(20))-params(3)*exp(y(2)))-params(30)*exp(y(18))^(1+params(4))/(1+params(4))+params(1)*y(62));
    residual(39) = (exp(y(44))) - (exp(y(55))/exp(y(26)));

end
