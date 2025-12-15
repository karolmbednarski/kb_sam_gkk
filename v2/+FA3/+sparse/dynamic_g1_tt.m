function [T_order, T] = dynamic_g1_tt(y, x, params, steady_state, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = FA3.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
T_order = 1;
if size(T, 1) < 38
    T = [T; NaN(38 - size(T, 1), 1)];
end
T(30) = (-(exp(y(40))*exp(y(61))*(1-params(7))/exp(y(44))));
T(31) = (-(exp(y(61))*params(7)*exp(y(41))/exp(y(3))/exp(y(9))));
T(32) = (-(T(4)*exp(y(74))*exp(y(3))*exp(y(75))*exp(y(64))*getPowerDeriv(exp(y(3))*exp(y(75))*exp(y(64)),params(7),1)));
T(33) = (-(exp(y(3))*exp(y(45))))/(exp(y(3))*exp(y(3)));
T(34) = (-((-(exp(y(75))*exp(y(3))*exp(y(61))*params(7)*exp(y(40))))/(exp(y(75))*exp(y(3))*exp(y(75))*exp(y(3)))));
T(35) = getPowerDeriv(exp(y(46))-params(3)*exp(y(7)),(-params(2)),1);
T(36) = getPowerDeriv(exp(y(85))-exp(y(46))*params(3),(-params(2)),1);
T(37) = getPowerDeriv(T(27),1-params(15),1);
T(38) = getPowerDeriv(T(15),(-params(10))/(1-params(11)),1);
end
