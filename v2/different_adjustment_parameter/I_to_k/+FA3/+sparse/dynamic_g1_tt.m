function [T_order, T] = dynamic_g1_tt(y, x, params, steady_state, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = FA3.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
T_order = 1;
if size(T, 1) < 37
    T = [T; NaN(37 - size(T, 1), 1)];
end
T(29) = (-(exp(y(40))*exp(y(61))*(1-params(7))/exp(y(44))));
T(30) = (-(exp(y(61))*params(7)*exp(y(41))/exp(y(3))/exp(y(9))));
T(31) = (-(T(3)*exp(y(74))*T(6)*getPowerDeriv(T(6),params(7),1)));
T(32) = (-(exp(y(3))*exp(y(45))))/(exp(y(3))*exp(y(3)));
T(33) = (-((-(T(6)*exp(y(61))*params(7)*exp(y(40))))/(T(6)*T(6))));
T(34) = getPowerDeriv(exp(y(46))-params(3)*exp(y(7)),(-params(2)),1);
T(35) = getPowerDeriv(exp(y(85))-exp(y(46))*params(3),(-params(2)),1);
T(36) = getPowerDeriv(T(25),1-params(15),1);
T(37) = getPowerDeriv(T(13),(-params(10))/(1-params(11)),1);
end
