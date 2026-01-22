function SparseDynamicResid!(T::Vector{<: Real}, residual::AbstractVector{<: Real}, y::Vector{<: Real}, x::Vector{<: Real}, params::Vector{<: Real}, steady_state::Vector{<: Real})
    @assert length(T) >= 0
    @assert length(residual) == 35
    @assert length(y) == 105
    @assert length(x) == 12
    @assert length(params) == 37
@inbounds begin
    residual[1] = (y[37]) - (params[3]);
    residual[2] = (y[38]) - (params[4]*y[3]+params[9]*x[1]);
    residual[3] = (y[39]) - (params[5]*y[4]+params[7]*x[2]);
    residual[4] = (y[40]) - (params[4]*y[5]+params[9]*x[3]);
    residual[5] = (y[41]) - (params[5]*y[6]+params[7]*x[4]);
    residual[6] = (y[42]) - (params[4]*y[7]+params[9]*x[5]);
    residual[7] = (y[43]) - (params[5]*y[8]+params[7]*x[6]);
    residual[8] = (y[44]) - (params[4]*y[9]+params[9]*x[7]);
    residual[9] = (y[45]) - (params[5]*y[10]+params[7]*x[8]);
    residual[10] = (y[46]) - (params[4]*y[11]+params[9]*x[9]);
    residual[11] = (y[47]) - (params[5]*y[12]+params[7]*x[10]);
    residual[12] = (y[50]) - (params[5]*y[15]+params[7]*x[11]);
    residual[13] = (y[53]) - (params[5]*y[18]+params[7]*x[12]);
    residual[14] = (y[36]) - ((y[49]*y[48]^((params[8]-1)/params[8])+y[52]*y[51]^((params[8]-1)/params[8]))^(params[8]/(params[8]-1)));
    residual[15] = (y[48]) - ((y[60]*y[59]^((params[11]-1)/params[11])+y[62]*y[61]^((params[11]-1)/params[11])+y[64]*y[63]^((params[11]-1)/params[11]))^(params[11]/(params[11]-1)));
    residual[16] = (y[51]) - ((y[66]*y[65]^((params[14]-1)/params[14])+y[68]*y[67]^((params[14]-1)/params[14])+y[70]*y[69]^((params[14]-1)/params[14]))^(params[14]/(params[14]-1)));
    residual[17] = (y[49]) - (params[12]*exp(y[50]*params[13])/(params[12]*exp(y[50]*params[13])+params[15]*exp(y[53]*params[16])));
    residual[18] = (y[52]) - (params[15]*exp(y[53]*params[16])/(params[12]*exp(y[50]*params[13])+params[15]*exp(y[53]*params[16])));
    residual[19] = (y[60]) - (params[32]*exp(y[39]*params[19])/(params[32]*exp(y[39]*params[19])+params[33]*exp(y[41]*params[22])+params[34]*exp(y[43]*params[25])));
    residual[20] = (y[62]) - (params[33]*exp(y[41]*params[22])/(params[32]*exp(y[39]*params[19])+params[33]*exp(y[41]*params[22])+params[34]*exp(y[43]*params[25])));
    residual[21] = (y[64]) - (params[34]*exp(y[43]*params[25])/(params[32]*exp(y[39]*params[19])+params[33]*exp(y[41]*params[22])+params[34]*exp(y[43]*params[25])));
    residual[22] = (y[66]) - (exp(y[43]*params[25])*params[35]/(exp(y[43]*params[25])*params[35]+params[36]*exp(y[45]*params[28])+params[37]*exp(y[47]*params[31])));
    residual[23] = (y[68]) - (params[36]*exp(y[45]*params[28])/(exp(y[43]*params[25])*params[35]+params[36]*exp(y[45]*params[28])+params[37]*exp(y[47]*params[31])));
    residual[24] = (y[70]) - (params[37]*exp(y[47]*params[31])/(exp(y[43]*params[25])*params[35]+params[36]*exp(y[45]*params[28])+params[37]*exp(y[47]*params[31])));
    residual[25] = (params[17]+y[38]*params[18]) - (y[59]);
    residual[26] = (params[20]+y[40]*params[21]) - (y[61]);
    residual[27] = (params[23]+y[42]*params[24]) - (y[63]+y[65]);
    residual[28] = (params[26]+y[44]*params[27]) - (y[67]);
    residual[29] = (params[29]+y[46]*params[30]) - (y[69]);
    residual[30] = (1-params[10]*y[54]) - (params[2]/y[37]^(-params[1])*y[49]*y[60]*y[36]^(1/params[8]-params[6])*y[48]^(1/params[11]-1/params[8])*y[59]^((-1)/params[11]));
    residual[31] = (1-params[10]*y[55]) - (y[48]^(1/params[11]-1/params[8])*y[36]^(1/params[8]-params[6])*params[2]/y[37]^(-params[1])*y[49]*y[62]*y[61]^((-1)/params[11]));
    residual[32] = (1-params[10]*y[56]) - (y[48]^(1/params[11]-1/params[8])*y[36]^(1/params[8]-params[6])*params[2]/y[37]^(-params[1])*y[49]*y[64]*y[63]^((-1)/params[11]));
    residual[33] = (1-params[10]*y[56]) - (y[36]^(1/params[8]-params[6])*params[2]/y[37]^(-params[1])*y[52]*y[66]*y[51]^(1/params[14]-1/params[8])*y[65]^((-1)/params[14]));
    residual[34] = (1-params[10]*y[57]) - (y[51]^(1/params[14]-1/params[8])*y[36]^(1/params[8]-params[6])*params[2]/y[37]^(-params[1])*y[52]*y[68]*y[67]^((-1)/params[14]));
    residual[35] = (1-params[10]*y[58]) - (y[51]^(1/params[14]-1/params[8])*y[36]^(1/params[8]-params[6])*params[2]/y[37]^(-params[1])*y[52]*y[70]*y[69]^((-1)/params[14]));
end
    return nothing
end

