function [y, T, residual, g1] = static_13(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(34))-(log(T(52)-T(52)*params(3))-params(30)*T(18)^(1+params(4))/(1+params(4))+params(1)*y(34));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(1);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
