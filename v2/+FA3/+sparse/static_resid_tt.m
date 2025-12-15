function [T_order, T] = static_resid_tt(y, x, params, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 29
    T = [T; NaN(29 - size(T, 1), 1)];
end
T(1) = (exp(y(7))-exp(y(7))*params(3))^(-params(2));
T(2) = exp(y(11))*params(1)*(1-params(6))*(exp(y(12))-exp(y(13)))+exp(y(17))*params(6)*params(1)*exp(y(11))*exp(y(21));
T(3) = exp(y(22))*params(7)*exp(y(2))/exp(y(3))+exp(y(36))*(exp(y(9))-exp(y(32)));
T(4) = exp(y(35))*(exp(y(3))*exp(y(36))*exp(y(25)))^params(7);
T(5) = exp(y(5))^(1-params(7));
T(6) = exp(y(6))/exp(y(3));
T(7) = T(6)-params(32);
T(8) = exp(y(22))*params(7)*exp(y(2))/exp(y(25));
T(9) = exp(y(3))*exp(y(36))*params(31)*exp(y(25))^params(5);
T(10) = exp(y(3))*params(9)/2*T(7)^2;
T(11) = exp(y(38));
T(12) = exp(y(27))*params(11)*T(11)^((-params(12))*params(10));
T(13) = T(11)^params(10);
T(14) = T(12)*T(13);
T(15) = params(11)*T(11)^(params(12)*(1-params(11)));
T(16) = T(11)^(params(11)-1);
T(17) = T(11)^(params(12)*(-params(10)));
T(18) = exp(y(28))*T(13)*exp(y(11))*params(1)*params(11)*T(17);
T(19) = exp(y(11))*params(1)*params(11)*T(11)^(params(10)-1);
T(20) = T(11)^(params(12)*(1-params(10)));
T(21) = exp(y(29))*T(19)*T(20);
T(22) = T(11)*exp(y(28))*params(10)/(params(10)-1)/exp(y(29));
T(23) = exp(y(30))^params(15);
T(24) = 1/params(1)*T(11)^params(13);
T(25) = exp(y(26))/(params(10)/(params(10)-1));
T(26) = T(25)^params(14);
T(27) = T(24)*T(26);
T(28) = T(27)^(1-params(15));
T(29) = exp(y(22))*params(7)*exp(y(1))/(exp(y(3))*exp(y(36)));
end
