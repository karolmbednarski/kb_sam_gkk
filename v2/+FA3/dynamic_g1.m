function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
% function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
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
%   g1
%

if T_flag
    T = FA3.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(39, 68);
g1(1,2)=(-((-(params(3)*exp(y(2))))*T(35)));
g1(1,20)=(-(exp(y(20))*T(35)-params(3)*params(1)*(-(exp(y(20))*params(3)))*T(36)));
g1(1,53)=params(3)*params(1)*exp(y(53))*T(36);
g1(1,23)=exp(y(23));
g1(2,54)=params(1)*exp(y(26))*exp(y(54));
g1(2,26)=params(1)*exp(y(26))*exp(y(54));
g1(3,4)=(-((-(exp(y(23))*exp(y(4))))/(exp(y(4))*exp(y(4)))));
g1(3,23)=(-(exp(y(23))/exp(y(4))));
g1(3,24)=exp(y(24));
g1(4,18)=1;
g1(5,54)=(-T(1));
g1(5,55)=(-(exp(y(54))*params(1)*(1-params(6))*exp(y(55))));
g1(5,26)=(-(exp(y(54))*params(1)*(1-params(6))*(-exp(y(26)))));
g1(5,30)=exp(y(30));
g1(5,56)=(-(params(6)*params(1)*exp(y(54))*exp(y(59))*exp(y(56))));
g1(5,59)=(-(params(6)*params(1)*exp(y(54))*exp(y(59))*exp(y(56))));
g1(6,54)=(-(params(6)*params(1)*exp(y(54))*exp(y(58))*exp(y(57))));
g1(6,31)=exp(y(31));
g1(6,57)=(-(params(6)*params(1)*exp(y(54))*exp(y(58))*exp(y(57))));
g1(6,58)=(-(params(6)*params(1)*exp(y(54))*exp(y(58))*exp(y(57))));
g1(7,30)=(-((-(exp(y(31))*(-exp(y(30)))))/((params(29)-exp(y(30)))*(params(29)-exp(y(30))))));
g1(7,31)=(-(exp(y(31))/(params(29)-exp(y(30)))));
g1(7,32)=exp(y(32));
g1(8,25)=(-(exp(y(25))*exp(y(7))));
g1(8,5)=(-(exp(y(5))+exp(y(7))*(-exp(y(5)))));
g1(8,7)=(-((exp(y(25))-exp(y(5)))*exp(y(7))));
g1(8,33)=exp(y(33));
g1(9,7)=(-(exp(y(33))*(-(exp(y(32))*exp(y(7))))/(exp(y(7))*exp(y(7)))));
g1(9,32)=(-(exp(y(33))*exp(y(32))/exp(y(7))));
g1(9,33)=(-(exp(y(33))*exp(y(32))/exp(y(7))));
g1(9,34)=exp(y(34));
g1(10,16)=exp(y(22))*exp(y(16));
g1(10,22)=exp(y(22))*exp(y(16));
g1(10,27)=(-(exp(y(32))*exp(y(27))));
g1(10,32)=(-(exp(y(32))*exp(y(27))));
g1(11,27)=exp(y(27));
g1(11,28)=(-exp(y(28)));
g1(11,29)=(-exp(y(29)));
g1(12,6)=(-(params(6)*exp(y(33))*exp(y(6))*exp((-x(it_, 4)))));
g1(12,28)=exp(y(28));
g1(12,33)=(-(params(6)*exp(y(33))*exp(y(6))*exp((-x(it_, 4)))));
g1(12,67)=(-(params(6)*exp(y(33))*exp(y(6))*(-exp((-x(it_, 4))))));
g1(13,1)=(-(exp(y(22))*params(28)*exp(y(49))*exp(y(1))));
g1(13,22)=(-(exp(y(22))*params(28)*exp(y(49))*exp(y(1))));
g1(13,29)=exp(y(29));
g1(13,49)=(-(exp(y(22))*params(28)*exp(y(49))*exp(y(1))));
g1(14,15)=T(31);
g1(14,1)=(-((-(exp(y(1))*exp(y(35))*params(7)*exp(y(15))))/(exp(y(1))*exp(y(1)))/exp(y(3))));
g1(14,3)=(-((-(T(2)*exp(y(3))))/(exp(y(3))*exp(y(3)))));
g1(14,22)=(-(exp(y(22))*exp(y(49))/exp(y(3))));
g1(14,25)=exp(y(25));
g1(14,35)=T(31);
g1(14,45)=(-(exp(y(49))*(-exp(y(45)))/exp(y(3))));
g1(14,49)=(-(exp(y(49))*(exp(y(22))-exp(y(45)))/exp(y(3))));
g1(15,15)=exp(y(15));
g1(15,1)=T(32);
g1(15,18)=(-(T(3)*exp(y(18))*getPowerDeriv(exp(y(18)),1-params(7),1)));
g1(15,38)=T(32);
g1(15,48)=(-(T(3)*T(4)));
g1(15,49)=T(32);
g1(16,1)=(-(params(9)*T(33)));
g1(16,19)=(-(params(9)*T(5)));
g1(16,22)=exp(y(22));
g1(17,38)=(-(params(31)/(1+params(5))*exp(y(38))*getPowerDeriv(exp(y(38)),1+params(5),1)));
g1(17,45)=exp(y(45));
g1(18,15)=T(7);
g1(18,1)=(-T(8));
g1(18,35)=T(7);
g1(18,38)=(-(exp(y(35))*params(7)*exp(y(15))*exp(y(38))))/(exp(y(38))*exp(y(38)))-exp(y(1))*exp(y(49))*params(31)*exp(y(38))*getPowerDeriv(exp(y(38)),params(5),1);
g1(18,49)=(-T(8));
g1(19,1)=exp(y(1))*exp(y(49))*exp(y(45));
g1(19,19)=(-exp(y(19)));
g1(19,45)=exp(y(1))*exp(y(49))*exp(y(45));
g1(19,46)=1;
g1(19,49)=exp(y(1))*exp(y(49))*exp(y(45));
g1(20,1)=(-(exp(y(49))*exp(y(1))));
g1(20,16)=exp(y(16));
g1(20,46)=(-1);
g1(20,49)=(-(exp(y(49))*exp(y(1))));
g1(21,21)=exp(y(21));
g1(21,50)=(-(params(33)*exp(y(50))));
g1(22,14)=exp(y(14));
g1(22,1)=(-(T(9)+exp(y(1))*params(9)/2*T(33)*2*T(6)));
g1(22,19)=(-(exp(y(19))+exp(y(1))*params(9)/2*T(5)*2*T(6)));
g1(22,20)=(-exp(y(20)));
g1(22,21)=(-exp(y(21)));
g1(23,14)=(-(exp(y(14))*exp(y(40))));
g1(23,15)=exp(y(15));
g1(23,40)=(-(exp(y(14))*exp(y(40))));
g1(24,8)=(-T(12));
g1(24,40)=exp(y(40));
g1(24,13)=(-(T(11)*params(11)*exp(y(8))*exp(y(13))*getPowerDeriv(exp(y(13)),(-params(12))*params(10),1)+(1-params(11))*(-(T(14)*params(11)*exp(y(13))*getPowerDeriv(exp(y(13)),params(12)*(1-params(11)),1)))/(1-params(11))*T(38)));
g1(24,51)=(-(T(10)*exp(y(51))*getPowerDeriv(exp(y(51)),params(10),1)+(1-params(11))*T(38)*(-(T(13)*exp(y(51))*getPowerDeriv(exp(y(51)),params(11)-1,1)))/(1-params(11))));
g1(25,35)=(-((-exp(y(35)))/(exp(y(35))*exp(y(35)))));
g1(25,39)=exp(y(39));
g1(26,14)=(-(exp(y(35))*exp(y(14))));
g1(26,54)=(-T(18));
g1(26,35)=(-(exp(y(35))*exp(y(14))));
g1(26,41)=exp(y(41));
g1(26,60)=(-T(18));
g1(26,51)=(-(exp(y(60))*T(16)*exp(y(51))*getPowerDeriv(exp(y(51)),params(12)*(-params(10)),1)));
g1(26,63)=(-(exp(y(60))*T(17)*exp(y(54))*params(1)*params(11)*exp(y(63))*getPowerDeriv(exp(y(63)),params(10),1)));
g1(27,14)=(-exp(y(14)));
g1(27,54)=(-T(21));
g1(27,42)=exp(y(42));
g1(27,61)=(-T(21));
g1(27,51)=(-(exp(y(61))*T(19)*exp(y(51))*getPowerDeriv(exp(y(51)),params(12)*(1-params(10)),1)));
g1(27,63)=(-(exp(y(61))*T(20)*exp(y(54))*params(1)*params(11)*exp(y(63))*getPowerDeriv(exp(y(63)),params(10)-1,1)));
g1(28,41)=(-T(22));
g1(28,42)=(-(exp(y(51))*(-(exp(y(42))*exp(y(41))*params(10)/(params(10)-1)))/(exp(y(42))*exp(y(42)))));
g1(28,51)=(-T(22));
g1(28,52)=exp(y(52));
g1(29,13)=(-(params(11)*exp(y(13))*getPowerDeriv(exp(y(13)),params(12)*(1-params(10)),1)));
g1(29,51)=exp(y(51))*getPowerDeriv(exp(y(51)),1-params(10),1);
g1(29,52)=(-((1-params(11))*exp(y(52))*getPowerDeriv(exp(y(52)),1-params(10),1)));
g1(30,26)=(-(exp(y(26))*exp(y(63))));
g1(30,43)=exp(y(43));
g1(30,63)=(-(exp(y(26))*exp(y(63))));
g1(31,39)=(-(exp(x(it_, 5))*T(23)*T(24)*T(25)*getPowerDeriv(T(25),params(14),1)*T(37)));
g1(31,9)=(-(exp(x(it_, 5))*T(28)*exp(y(9))*getPowerDeriv(exp(y(9)),params(15),1)));
g1(31,43)=exp(y(43));
g1(31,51)=(-(exp(x(it_, 5))*T(23)*T(37)*T(26)*1/params(1)*exp(y(51))*getPowerDeriv(exp(y(51)),params(13),1)));
g1(31,68)=(-(T(23)*T(28)*exp(x(it_, 5))));
g1(32,10)=(-params(18));
g1(32,48)=1;
g1(32,64)=1;
g1(33,11)=(-params(16));
g1(33,49)=1;
g1(33,65)=1;
g1(34,12)=(-params(20));
g1(34,50)=1;
g1(34,66)=1;
g1(35,1)=(-(exp(y(49))*exp(y(1))));
g1(35,17)=exp(y(17));
g1(35,49)=(-(exp(y(49))*exp(y(1))));
g1(36,14)=T(30);
g1(36,18)=(-((-(exp(y(18))*exp(y(14))*exp(y(35))*(1-params(7))))/(exp(y(18))*exp(y(18)))));
g1(36,35)=T(30);
g1(36,36)=exp(y(36));
g1(37,14)=(-T(29));
g1(37,1)=T(34);
g1(37,35)=(-T(29));
g1(37,37)=exp(y(37));
g1(37,49)=T(34);
g1(38,18)=params(30)*exp(y(18))*getPowerDeriv(exp(y(18)),1+params(4),1)/(1+params(4));
g1(38,2)=(-((-(params(3)*exp(y(2))))/(exp(y(20))-params(3)*exp(y(2)))));
g1(38,20)=(-(exp(y(20))/(exp(y(20))-params(3)*exp(y(2)))));
g1(38,47)=1;
g1(38,62)=(-params(1));
g1(39,55)=(-(exp(y(55))/exp(y(26))));
g1(39,26)=(-((-(exp(y(26))*exp(y(55))))/(exp(y(26))*exp(y(26)))));
g1(39,44)=exp(y(44));

end
