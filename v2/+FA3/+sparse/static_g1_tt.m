function [T_order, T] = static_g1_tt(y, x, params, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = FA3.sparse.static_resid_tt(y, x, params, T_order, T);
T_order = 1;
if size(T, 1) < 38
    T = [T; NaN(38 - size(T, 1), 1)];
end
T(30) = (-(exp(y(1))*exp(y(22))*(1-params(7))/exp(y(5))));
T(31) = (-(exp(y(22))*params(7)*exp(y(2))/exp(y(3))/exp(y(9))));
T(32) = (-(T(5)*exp(y(35))*exp(y(3))*exp(y(36))*exp(y(25))*getPowerDeriv(exp(y(3))*exp(y(36))*exp(y(25)),params(7),1)));
T(33) = (-(exp(y(3))*exp(y(6))))/(exp(y(3))*exp(y(3)));
T(34) = (-((-(exp(y(3))*exp(y(36))*exp(y(22))*params(7)*exp(y(1))))/(exp(y(3))*exp(y(36))*exp(y(3))*exp(y(36)))));
T(35) = (exp(y(7))-exp(y(7))*params(3))*getPowerDeriv(exp(y(7))-exp(y(7))*params(3),(-params(2)),1);
T(36) = getPowerDeriv(T(27),1-params(15),1);
T(37) = T(11)*getPowerDeriv(T(11),params(10),1);
T(38) = T(11)*getPowerDeriv(T(11),params(12)*(1-params(10)),1);
end
