function [T_order, T] = static_resid_tt(y, x, params, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 30
    T = [T; NaN(30 - size(T, 1), 1)];
end
T(1) = (exp(y(7))-exp(y(7))*params(3))^(-params(2));
T(2) = exp(y(10))*exp(y(22))*(1-params(7))*exp(y(1))/exp(y(5));
T(3) = exp(y(11))*params(1)*(1-params(6))*(exp(y(12))-exp(y(13)))+exp(y(17))*params(6)*params(1)*exp(y(11))*exp(y(21));
T(4) = exp(y(22))*params(7)*exp(y(2))/exp(y(3))+exp(y(36))*(exp(y(9))-exp(y(32)));
T(5) = exp(y(35))*(exp(y(3))*exp(y(36))*exp(y(25)))^params(7);
T(6) = exp(y(5))^(1-params(7));
T(7) = exp(y(6))/exp(y(3));
T(8) = T(7)-params(32);
T(9) = exp(y(22))*params(7)*exp(y(2))/exp(y(25));
T(10) = exp(y(3))*exp(y(36))*params(31)*exp(y(25))^params(5);
T(11) = exp(y(3))*params(9)/2*T(8)^2;
T(12) = exp(y(38));
T(13) = exp(y(27))*params(11)*T(12)^((-params(12))*params(10));
T(14) = T(12)^params(10);
T(15) = T(13)*T(14);
T(16) = params(11)*T(12)^(params(12)*(1-params(11)));
T(17) = T(12)^(params(11)-1);
T(18) = T(12)^(params(12)*(-params(10)));
T(19) = exp(y(28))*T(14)*exp(y(11))*params(1)*params(11)*T(18);
T(20) = exp(y(11))*params(1)*params(11)*T(12)^(params(10)-1);
T(21) = T(12)^(params(12)*(1-params(10)));
T(22) = exp(y(29))*T(20)*T(21);
T(23) = T(12)*exp(y(28))*params(10)/(params(10)-1)/exp(y(29));
T(24) = exp(y(30))^params(15);
T(25) = 1/params(1)*T(12)^params(13);
T(26) = exp(y(26))/(params(10)/(params(10)-1));
T(27) = T(26)^params(14);
T(28) = T(25)*T(27);
T(29) = T(28)^(1-params(15));
T(30) = exp(y(1))*exp(y(22))*params(7)/(exp(y(3))*exp(y(36)));
end
