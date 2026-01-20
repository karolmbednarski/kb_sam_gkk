function T = dynamic_g1_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_g1_tt(T, y, x, params, steady_state, it_)
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

assert(length(T) >= 37);

T = FA3.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(29) = (-(exp(y(14))*exp(y(35))*(1-params(7))/exp(y(18))));
T(30) = (-(exp(y(35))*params(7)*exp(y(15))/exp(y(1))/exp(y(3))));
T(31) = (-(T(3)*exp(y(48))*T(6)*getPowerDeriv(T(6),params(7),1)));
T(32) = (-(exp(y(1))*exp(y(19))))/(exp(y(1))*exp(y(1)));
T(33) = (-((-(T(6)*exp(y(35))*params(7)*exp(y(14))))/(T(6)*T(6))));
T(34) = getPowerDeriv(exp(y(20))-params(3)*exp(y(2)),(-params(2)),1);
T(35) = getPowerDeriv(exp(y(53))-exp(y(20))*params(3),(-params(2)),1);
T(36) = getPowerDeriv(T(25),1-params(15),1);
T(37) = getPowerDeriv(T(13),(-params(10))/(1-params(11)),1);

end
