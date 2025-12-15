function g1 = static_g1(T, y, x, params, T_flag)
% function g1 = static_g1(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   g1
%

if T_flag
    T = FA2.static_g1_tt(T, y, x, params);
end
g1 = zeros(39, 39);
g1(1,7)=(-(T(36)-params(3)*params(1)*T(36)));
g1(1,10)=exp(y(10));
g1(2,11)=params(1)*exp(y(13))*exp(y(11));
g1(2,13)=params(1)*exp(y(13))*exp(y(11));
g1(3,11)=exp(y(11));
g1(4,1)=(-T(2));
g1(4,5)=params(30)*exp(y(5))*getPowerDeriv(exp(y(5)),params(4),1)-(-(exp(y(5))*exp(y(10))*exp(y(22))*(1-params(7))*exp(y(1))))/(exp(y(5))*exp(y(5)));
g1(4,10)=(-T(2));
g1(4,22)=(-T(2));
g1(5,11)=(-T(3));
g1(5,12)=(-(exp(y(11))*params(1)*(1-params(6))*exp(y(12))));
g1(5,13)=(-(exp(y(11))*params(1)*(1-params(6))*(-exp(y(13)))));
g1(5,17)=exp(y(17))-exp(y(17))*params(6)*params(1)*exp(y(11))*exp(y(21));
g1(5,21)=(-(exp(y(17))*params(6)*params(1)*exp(y(11))*exp(y(21))));
g1(6,11)=(-(exp(y(18))*params(6)*params(1)*exp(y(11))*exp(y(20))));
g1(6,18)=exp(y(18))-exp(y(18))*params(6)*params(1)*exp(y(11))*exp(y(20));
g1(6,20)=(-(exp(y(18))*params(6)*params(1)*exp(y(11))*exp(y(20))));
g1(7,17)=(-((-(exp(y(18))*(-exp(y(17)))))/((params(29)-exp(y(17)))*(params(29)-exp(y(17))))));
g1(7,18)=(-(exp(y(18))/(params(29)-exp(y(17)))));
g1(7,19)=exp(y(19));
g1(8,12)=(-(exp(y(12))*exp(y(19))));
g1(8,13)=(-(exp(y(13))+exp(y(19))*(-exp(y(13)))));
g1(8,19)=(-((exp(y(12))-exp(y(13)))*exp(y(19))));
g1(8,20)=exp(y(20));
g1(9,20)=(-exp(y(20)));
g1(9,21)=exp(y(21));
g1(10,3)=exp(y(9))*exp(y(3));
g1(10,9)=exp(y(9))*exp(y(3));
g1(10,14)=(-(exp(y(19))*exp(y(14))));
g1(10,19)=(-(exp(y(19))*exp(y(14))));
g1(11,14)=exp(y(14));
g1(11,15)=(-exp(y(15)));
g1(11,16)=(-exp(y(16)));
g1(12,14)=(-(exp(y(14))*params(6)*exp(y(20))*exp((-x(4)))));
g1(12,15)=exp(y(15));
g1(12,20)=(-(exp(y(14))*params(6)*exp(y(20))*exp((-x(4)))));
g1(13,3)=(-(exp(y(3))*exp(y(9))*params(28)*exp(y(36))));
g1(13,9)=(-(exp(y(3))*exp(y(9))*params(28)*exp(y(36))));
g1(13,16)=exp(y(16));
g1(13,36)=(-(exp(y(3))*exp(y(9))*params(28)*exp(y(36))));
g1(14,2)=T(32);
g1(14,3)=(-((-(exp(y(3))*exp(y(22))*params(7)*exp(y(2))))/(exp(y(3))*exp(y(3)))/exp(y(9))));
g1(14,9)=(-((exp(y(9))*exp(y(9))*exp(y(36))-exp(y(9))*T(4))/(exp(y(9))*exp(y(9)))));
g1(14,12)=exp(y(12));
g1(14,22)=T(32);
g1(14,32)=(-(exp(y(36))*(-exp(y(32)))/exp(y(9))));
g1(14,36)=(-(exp(y(36))*(exp(y(9))-exp(y(32)))/exp(y(9))));
g1(15,2)=exp(y(2));
g1(15,3)=T(33);
g1(15,5)=(-(T(5)*exp(y(5))*getPowerDeriv(exp(y(5)),1-params(7),1)));
g1(15,25)=T(33);
g1(15,35)=(-(T(5)*T(6)));
g1(15,36)=T(33);
g1(16,3)=(-(params(9)*T(34)));
g1(16,6)=(-(params(9)*T(7)));
g1(16,9)=exp(y(9));
g1(17,25)=(-(params(31)/(1+params(5))*exp(y(25))*getPowerDeriv(exp(y(25)),1+params(5),1)));
g1(17,32)=exp(y(32));
g1(18,2)=T(9);
g1(18,3)=(-T(10));
g1(18,22)=T(9);
g1(18,25)=(-(exp(y(22))*params(7)*exp(y(2))*exp(y(25))))/(exp(y(25))*exp(y(25)))-exp(y(3))*exp(y(36))*params(31)*exp(y(25))*getPowerDeriv(exp(y(25)),params(5),1);
g1(18,36)=(-T(10));
g1(19,3)=exp(y(3))*exp(y(36))*exp(y(32));
g1(19,6)=(-exp(y(6)));
g1(19,32)=exp(y(3))*exp(y(36))*exp(y(32));
g1(19,33)=1;
g1(19,36)=exp(y(3))*exp(y(36))*exp(y(32));
g1(20,3)=exp(y(3))-exp(y(3))*exp(y(36));
g1(20,33)=(-1);
g1(20,36)=(-(exp(y(3))*exp(y(36))));
g1(21,8)=exp(y(8));
g1(21,37)=(-(params(33)*exp(y(37))));
g1(22,1)=exp(y(1));
g1(22,3)=(-(T(11)+exp(y(3))*params(9)/2*T(34)*2*T(8)));
g1(22,6)=(-(exp(y(6))+exp(y(3))*params(9)/2*T(7)*2*T(8)));
g1(22,7)=(-exp(y(7)));
g1(22,8)=(-exp(y(8)));
g1(23,1)=(-(exp(y(1))*exp(y(27))));
g1(23,2)=exp(y(2));
g1(23,27)=(-(exp(y(1))*exp(y(27))));
g1(24,27)=exp(y(27))-T(15);
g1(24,38)=(-(T(14)*exp(y(27))*params(11)*T(12)*getPowerDeriv(T(12),(-params(12))*params(10),1)+T(13)*T(38)+(1-params(11))*(-(T(17)*params(11)*T(12)*getPowerDeriv(T(12),params(12)*(1-params(11)),1)+T(16)*T(12)*getPowerDeriv(T(12),params(11)-1,1)))/(1-params(11))*getPowerDeriv((1-T(16)*T(17))/(1-params(11)),(-params(10))/(1-params(11)),1)));
g1(25,22)=(-((-exp(y(22)))/(exp(y(22))*exp(y(22)))));
g1(25,26)=exp(y(26));
g1(26,1)=(-(exp(y(22))*exp(y(1))));
g1(26,11)=(-T(19));
g1(26,22)=(-(exp(y(22))*exp(y(1))));
g1(26,28)=exp(y(28))-T(19);
g1(26,38)=(-(exp(y(28))*(T(18)*exp(y(11))*params(1)*params(11)*T(38)+T(14)*exp(y(11))*params(1)*params(11)*T(12)*getPowerDeriv(T(12),params(12)*(-params(10)),1))));
g1(27,1)=(-exp(y(1)));
g1(27,11)=(-T(22));
g1(27,29)=exp(y(29))-T(22);
g1(27,38)=(-(exp(y(29))*(T(21)*exp(y(11))*params(1)*params(11)*T(12)*getPowerDeriv(T(12),params(10)-1,1)+T(20)*T(39))));
g1(28,28)=(-T(23));
g1(28,29)=(-(T(12)*(-(exp(y(29))*exp(y(28))*params(10)/(params(10)-1)))/(exp(y(29))*exp(y(29)))));
g1(28,38)=(-T(23));
g1(28,39)=exp(y(39));
g1(29,38)=T(12)*getPowerDeriv(T(12),1-params(10),1)-params(11)*T(39);
g1(29,39)=(-((1-params(11))*exp(y(39))*getPowerDeriv(exp(y(39)),1-params(10),1)));
g1(30,13)=(-(exp(y(13))*T(12)));
g1(30,30)=exp(y(30));
g1(30,38)=(-(exp(y(13))*T(12)));
g1(31,26)=(-(exp(x(5))*T(24)*T(25)*T(26)*getPowerDeriv(T(26),params(14),1)*T(37)));
g1(31,30)=exp(y(30))-exp(x(5))*T(29)*exp(y(30))*getPowerDeriv(exp(y(30)),params(15),1);
g1(31,38)=(-(exp(x(5))*T(24)*T(37)*T(27)*1/params(1)*T(12)*getPowerDeriv(T(12),params(13),1)));
g1(32,35)=1-params(18);
g1(33,36)=1-params(16);
g1(34,37)=1-params(20);
g1(35,3)=(-(exp(y(3))*exp(y(36))));
g1(35,4)=exp(y(4));
g1(35,36)=(-(exp(y(3))*exp(y(36))));
g1(36,1)=T(31);
g1(36,5)=(-((-(exp(y(5))*exp(y(1))*exp(y(22))*(1-params(7))))/(exp(y(5))*exp(y(5)))));
g1(36,22)=T(31);
g1(36,23)=exp(y(23));
g1(37,1)=(-T(30));
g1(37,3)=T(35);
g1(37,22)=(-T(30));
g1(37,24)=exp(y(24));
g1(37,36)=T(35);
g1(38,5)=params(30)*exp(y(5))*getPowerDeriv(exp(y(5)),1+params(4),1)/(1+params(4));
g1(38,7)=(-1);
g1(38,34)=1-params(1);
g1(39,12)=(-(exp(y(12))/exp(y(13))));
g1(39,13)=(-((-(exp(y(13))*exp(y(12))))/(exp(y(13))*exp(y(13)))));
g1(39,31)=exp(y(31));

end
