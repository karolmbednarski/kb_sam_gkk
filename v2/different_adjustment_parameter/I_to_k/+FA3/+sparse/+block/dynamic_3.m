function [y, T] = dynamic_3(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(64)=0;
  y(74)=params(18)*y(35)-x(1);
  y(75)=params(16)*y(36)-x(2);
  y(76)=params(20)*y(37)-x(3);
end
