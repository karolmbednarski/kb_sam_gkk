function T = dynamic_resid_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_resid_tt(T, y, x, params, steady_state, it_)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double  vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double  vector of endogenous variables in the order stored
%                                                    in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double  matrix of exogenous variables (in declaration order)
%                                                    for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double  vector of steady state values
%   params        [M_.param_nbr by 1]        double  vector of parameter values in declaration order
%   it_           scalar                     double  time period for exogenous variables for which
%                                                    to evaluate the model
%
% Output:
%   T           [#temp variables by 1]       double  vector of temporary terms
%

assert(length(T) >= 30);

T(1) = exp(y(23))*exp(y(35))*(1-params(7))*exp(y(14))/exp(y(18));
T(2) = exp(y(54))*params(1)*(1-params(6))*(exp(y(55))-exp(y(26)))+params(6)*params(1)*exp(y(54))*exp(y(59))*exp(y(56));
T(3) = exp(y(35))*params(7)*exp(y(15))/exp(y(1))+exp(y(49))*(exp(y(22))-exp(y(45)));
T(4) = exp(y(48))*(exp(y(1))*exp(y(49))*exp(y(38)))^params(7);
T(5) = exp(y(18))^(1-params(7));
T(6) = exp(y(19))/exp(y(1));
T(7) = T(6)-params(32);
T(8) = exp(y(35))*params(7)*exp(y(15))/exp(y(38));
T(9) = exp(y(1))*exp(y(49))*params(31)*exp(y(38))^params(5);
T(10) = exp(y(1))*params(9)/2*T(7)^2;
T(11) = params(11)*exp(y(8))*exp(y(13))^((-params(12))*params(10));
T(12) = exp(y(51))^params(10);
T(13) = T(11)*T(12);
T(14) = params(11)*exp(y(13))^(params(12)*(1-params(11)));
T(15) = exp(y(51))^(params(11)-1);
T(16) = (1-T(14)*T(15))/(1-params(11));
T(17) = exp(y(54))*params(1)*params(11)*exp(y(63))^params(10);
T(18) = exp(y(51))^(params(12)*(-params(10)));
T(19) = T(17)*T(18)*exp(y(60));
T(20) = exp(y(54))*params(1)*params(11)*exp(y(63))^(params(10)-1);
T(21) = exp(y(51))^(params(12)*(1-params(10)));
T(22) = T(20)*T(21)*exp(y(61));
T(23) = exp(y(51))*exp(y(41))*params(10)/(params(10)-1)/exp(y(42));
T(24) = exp(y(9))^params(15);
T(25) = 1/params(1)*exp(y(51))^params(13);
T(26) = exp(y(39))/(params(10)/(params(10)-1));
T(27) = T(26)^params(14);
T(28) = T(25)*T(27);
T(29) = T(28)^(1-params(15));
T(30) = exp(y(14))*exp(y(35))*params(7)/(exp(y(49))*exp(y(1)));

end
