function T = static_g1_tt(T, y, x, params)
% function T = static_g1_tt(T, y, x, params)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%
% Output:
%   T         [#temp variables by 1]  double   vector of temporary terms
%

assert(length(T) >= 39);

T = FA1.static_resid_tt(T, y, x, params);

T(31) = (-(exp(y(1))*exp(y(22))*(1-params(7))/exp(y(5))));
T(32) = (-(exp(y(22))*params(7)*exp(y(2))/exp(y(3))/exp(y(9))));
T(33) = (-(T(6)*exp(y(35))*exp(y(3))*exp(y(36))*exp(y(25))*getPowerDeriv(exp(y(3))*exp(y(36))*exp(y(25)),params(7),1)));
T(34) = (-(exp(y(3))*exp(y(6))))/(exp(y(3))*exp(y(3)));
T(35) = (-((-(exp(y(3))*exp(y(36))*exp(y(1))*exp(y(22))*params(7)))/(exp(y(3))*exp(y(36))*exp(y(3))*exp(y(36)))));
T(36) = (exp(y(7))-exp(y(7))*params(3))*getPowerDeriv(exp(y(7))-exp(y(7))*params(3),(-params(2)),1);
T(37) = getPowerDeriv(T(28),1-params(15),1);
T(38) = T(12)*getPowerDeriv(T(12),params(10),1);
T(39) = T(12)*getPowerDeriv(T(12),params(12)*(1-params(10)),1);

end
