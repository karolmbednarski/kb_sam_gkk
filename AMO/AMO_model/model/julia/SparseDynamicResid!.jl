function SparseDynamicResid!(T::Vector{<: Real}, residual::AbstractVector{<: Real}, y::Vector{<: Real}, x::Vector{<: Real}, params::Vector{<: Real}, steady_state::Vector{<: Real})
    @assert length(T) >= 0
    @assert length(residual) == 36
    @assert length(y) == 108
    @assert length(x) == 13
    @assert length(params) == 39
@inbounds begin
    residual[1] = (y[38]) - (params[12]);
    residual[2] = (y[39]) - (params[7]*y[3]+params[10]*x[1]);
    residual[3] = (y[40]) - (params[8]*y[4]+params[2]*x[2]);
    residual[4] = (y[41]) - (params[7]*y[5]+params[10]*x[3]);
    residual[5] = (y[42]) - (params[8]*y[6]+params[2]*x[4]);
    residual[6] = (y[43]) - (params[7]*y[7]+params[10]*x[5]);
    residual[7] = (y[44]) - (params[8]*y[8]+params[2]*x[6]);
    residual[8] = (y[45]) - (params[7]*y[9]+params[10]*x[7]);
    residual[9] = (y[46]) - (params[8]*y[10]+params[2]*x[8]);
    residual[10] = (y[47]) - (params[7]*y[11]+params[10]*x[9]);
    residual[11] = (y[48]) - (params[8]*y[12]+params[2]*x[10]);
    residual[12] = (y[52]) - (params[8]*y[16]+params[2]*x[11]);
    residual[13] = (y[55]) - (params[8]*y[19]+params[2]*x[12]);
    residual[14] = (y[49]) - (params[6]*y[13]+params[11]*x[13]);
    residual[15] = (y[37]) - ((y[51]*y[50]^((params[3]-1)/params[3])+y[54]*y[53]^((params[3]-1)/params[3]))^(params[3]/(params[3]-1)));
    residual[16] = (y[50]) - ((y[62]*y[61]^((params[13]-1)/params[13])+y[64]*y[63]^((params[13]-1)/params[13])+y[66]*y[65]^((params[13]-1)/params[13]))^(params[13]/(params[13]-1)));
    residual[17] = (y[53]) - ((y[68]*y[67]^((params[16]-1)/params[16])+y[70]*y[69]^((params[16]-1)/params[16])+y[72]*y[71]^((params[16]-1)/params[16]))^(params[16]/(params[16]-1)));
    residual[18] = (y[51]) - (params[14]*exp(y[52]*params[15])/(params[14]*exp(y[52]*params[15])+params[17]*exp(y[55]*params[18])));
    residual[19] = (y[54]) - (params[17]*exp(y[55]*params[18])/(params[14]*exp(y[52]*params[15])+params[17]*exp(y[55]*params[18])));
    residual[20] = (y[62]) - (params[34]*exp(y[40]*params[21])/(params[34]*exp(y[40]*params[21])+params[35]*exp(y[42]*params[24])+params[36]*exp(y[44]*params[27])));
    residual[21] = (y[64]) - (params[35]*exp(y[42]*params[24])/(params[34]*exp(y[40]*params[21])+params[35]*exp(y[42]*params[24])+params[36]*exp(y[44]*params[27])));
    residual[22] = (y[66]) - (params[36]*exp(y[44]*params[27])/(params[34]*exp(y[40]*params[21])+params[35]*exp(y[42]*params[24])+params[36]*exp(y[44]*params[27])));
    residual[23] = (y[68]) - (exp(y[44]*params[27])*params[37]/(exp(y[44]*params[27])*params[37]+params[38]*exp(y[46]*params[30])+params[39]*exp(y[48]*params[33])));
    residual[24] = (y[70]) - (params[38]*exp(y[46]*params[30])/(exp(y[44]*params[27])*params[37]+params[38]*exp(y[46]*params[30])+params[39]*exp(y[48]*params[33])));
    residual[25] = (y[72]) - (params[39]*exp(y[48]*params[33])/(exp(y[44]*params[27])*params[37]+params[38]*exp(y[46]*params[30])+params[39]*exp(y[48]*params[33])));
    residual[26] = (y[49]+params[19]+y[39]*params[20]) - (y[61]);
    residual[27] = (params[22]+y[41]*params[23]) - (y[63]);
    residual[28] = (params[25]+y[43]*params[26]-y[49]) - (y[65]+y[67]);
    residual[29] = (params[28]+y[45]*params[29]) - (y[69]);
    residual[30] = (params[31]+y[47]*params[32]) - (y[71]);
    residual[31] = (1-params[4]*y[56]) - (params[1]/y[38]^(-params[5])*y[51]*y[62]*y[37]^(1/params[3]-params[9])*y[50]^(1/params[13]-1/params[3])*y[61]^((-1)/params[13]));
    residual[32] = (1-params[4]*y[57]) - (y[50]^(1/params[13]-1/params[3])*y[37]^(1/params[3]-params[9])*params[1]/y[38]^(-params[5])*y[51]*y[64]*y[63]^((-1)/params[13]));
    residual[33] = (1-params[4]*y[58]) - (y[50]^(1/params[13]-1/params[3])*y[37]^(1/params[3]-params[9])*params[1]/y[38]^(-params[5])*y[51]*y[66]*y[65]^((-1)/params[13]));
    residual[34] = (1-params[4]*y[58]) - (y[37]^(1/params[3]-params[9])*params[1]/y[38]^(-params[5])*y[54]*y[68]*y[53]^(1/params[16]-1/params[3])*y[67]^((-1)/params[16]));
    residual[35] = (1-params[4]*y[59]) - (y[53]^(1/params[16]-1/params[3])*y[37]^(1/params[3]-params[9])*params[1]/y[38]^(-params[5])*y[54]*y[70]*y[69]^((-1)/params[16]));
    residual[36] = (1-params[4]*y[60]) - (y[53]^(1/params[16]-1/params[3])*y[37]^(1/params[3]-params[9])*params[1]/y[38]^(-params[5])*y[54]*y[72]*y[71]^((-1)/params[16]));
end
    return nothing
end

