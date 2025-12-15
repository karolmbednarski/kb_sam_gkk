function [y, T, residual, g1] = static_10(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(57)=exp(y(7));
  residual(1)=(T(28))-(T(24)+T(57)+T(2)+T(10)*params(9)/2*(T(24)/T(10)-params(32))^2);
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=(-T(57));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
