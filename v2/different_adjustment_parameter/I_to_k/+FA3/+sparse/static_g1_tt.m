function [T_order, T] = static_g1_tt(y, x, params, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = FA3.sparse.static_resid_tt(y, x, params, T_order, T);
T_order = 1;
if size(T, 1) < 37
    T = [T; NaN(37 - size(T, 1), 1)];
end
T(29) = (-(exp(y(1))*exp(y(22))*(1-params(7))/exp(y(5))));
T(30) = (-(exp(y(22))*params(7)*exp(y(2))/exp(y(3))/exp(y(9))));
T(31) = (-(T(4)*exp(y(35))*T(5)*getPowerDeriv(T(5),params(7),1)));
T(32) = (-(exp(y(3))*exp(y(6))))/(exp(y(3))*exp(y(3)));
T(33) = (-((-(T(5)*exp(y(22))*params(7)*exp(y(1))))/(T(5)*T(5))));
T(34) = (exp(y(7))-exp(y(7))*params(3))*getPowerDeriv(exp(y(7))-exp(y(7))*params(3),(-params(2)),1);
T(35) = getPowerDeriv(T(26),1-params(15),1);
T(36) = T(10)*getPowerDeriv(T(10),params(10),1);
T(37) = T(10)*getPowerDeriv(T(10),params(12)*(1-params(10)),1);
end
