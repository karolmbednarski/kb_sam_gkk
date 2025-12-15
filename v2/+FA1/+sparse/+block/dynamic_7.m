function [y, T, residual, g1] = dynamic_7(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(79)=exp(y(62));
  residual(1)=(T(79))-(T(21)*T(16)*(1-params(7))/T(9));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=T(79);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
