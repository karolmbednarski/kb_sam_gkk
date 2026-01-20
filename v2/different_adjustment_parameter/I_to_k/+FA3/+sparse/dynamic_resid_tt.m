function [T_order, T] = dynamic_resid_tt(y, x, params, steady_state, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 28
    T = [T; NaN(28 - size(T, 1), 1)];
end
T(1) = exp(y(89))*params(1)*(1-params(6))*(exp(y(90))-exp(y(52)))+params(6)*params(1)*exp(y(89))*exp(y(99))*exp(y(95));
T(2) = exp(y(61))*params(7)*exp(y(41))/exp(y(3))+exp(y(75))*(exp(y(48))-exp(y(71)));
T(3) = exp(y(44))^(1-params(7));
T(4) = exp(y(45))/exp(y(3));
T(5) = T(4)-params(32);
T(6) = exp(y(75))*exp(y(3));
T(7) = exp(y(3))*params(9)/2*T(5)^2;
T(8) = params(11)*exp(y(27))*exp(y(38))^((-params(12))*params(10));
T(9) = exp(y(77))^params(10);
T(10) = T(8)*T(9);
T(11) = params(11)*exp(y(38))^(params(12)*(1-params(11)));
T(12) = exp(y(77))^(params(11)-1);
T(13) = (1-T(11)*T(12))/(1-params(11));
T(14) = exp(y(89))*params(1)*params(11)*exp(y(116))^params(10);
T(15) = exp(y(77))^(params(12)*(-params(10)));
T(16) = T(14)*T(15)*exp(y(106));
T(17) = exp(y(89))*params(1)*params(11)*exp(y(116))^(params(10)-1);
T(18) = exp(y(77))^(params(12)*(1-params(10)));
T(19) = T(17)*T(18)*exp(y(107));
T(20) = exp(y(77))*exp(y(67))*params(10)/(params(10)-1)/exp(y(68));
T(21) = exp(y(30))^params(15);
T(22) = 1/params(1)*exp(y(77))^params(13);
T(23) = exp(y(65))/(params(10)/(params(10)-1));
T(24) = T(23)^params(14);
T(25) = T(22)*T(24);
T(26) = T(25)^(1-params(15));
T(27) = exp(y(61))*params(7)*exp(y(40))/T(6);
T(28) = exp(y(74))*T(6)^params(7);
end
