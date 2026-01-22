function SparseStaticResid!(T::Vector{<: Real}, residual::AbstractVector{<: Real}, y::Vector{<: Real}, x::Vector{<: Real}, params::Vector{<: Real})
    @assert length(T) >= 0
    @assert length(residual) == 35
    @assert length(y) == 35
    @assert length(x) == 12
    @assert length(params) == 37
@inbounds begin
    residual[1] = (y[2]) - (params[3]);
    residual[2] = (y[3]) - (y[3]*params[4]+params[9]*x[1]);
    residual[3] = (y[4]) - (y[4]*params[5]+params[7]*x[2]);
    residual[4] = (y[5]) - (params[4]*y[5]+params[9]*x[3]);
    residual[5] = (y[6]) - (params[5]*y[6]+params[7]*x[4]);
    residual[6] = (y[7]) - (params[4]*y[7]+params[9]*x[5]);
    residual[7] = (y[8]) - (params[5]*y[8]+params[7]*x[6]);
    residual[8] = (y[9]) - (params[4]*y[9]+params[9]*x[7]);
    residual[9] = (y[10]) - (params[5]*y[10]+params[7]*x[8]);
    residual[10] = (y[11]) - (params[4]*y[11]+params[9]*x[9]);
    residual[11] = (y[12]) - (params[5]*y[12]+params[7]*x[10]);
    residual[12] = (y[15]) - (params[5]*y[15]+params[7]*x[11]);
    residual[13] = (y[18]) - (params[5]*y[18]+params[7]*x[12]);
    residual[14] = (y[1]) - ((y[14]*y[13]^((params[8]-1)/params[8])+y[17]*y[16]^((params[8]-1)/params[8]))^(params[8]/(params[8]-1)));
    residual[15] = (y[13]) - ((y[25]*y[24]^((params[11]-1)/params[11])+y[27]*y[26]^((params[11]-1)/params[11])+y[29]*y[28]^((params[11]-1)/params[11]))^(params[11]/(params[11]-1)));
    residual[16] = (y[16]) - ((y[31]*y[30]^((params[14]-1)/params[14])+y[33]*y[32]^((params[14]-1)/params[14])+y[35]*y[34]^((params[14]-1)/params[14]))^(params[14]/(params[14]-1)));
    residual[17] = (y[14]) - (params[12]*exp(y[15]*params[13])/(params[12]*exp(y[15]*params[13])+params[15]*exp(y[18]*params[16])));
    residual[18] = (y[17]) - (params[15]*exp(y[18]*params[16])/(params[12]*exp(y[15]*params[13])+params[15]*exp(y[18]*params[16])));
    residual[19] = (y[25]) - (params[32]*exp(y[4]*params[19])/(params[32]*exp(y[4]*params[19])+params[33]*exp(y[6]*params[22])+params[34]*exp(y[8]*params[25])));
    residual[20] = (y[27]) - (params[33]*exp(y[6]*params[22])/(params[32]*exp(y[4]*params[19])+params[33]*exp(y[6]*params[22])+params[34]*exp(y[8]*params[25])));
    residual[21] = (y[29]) - (params[34]*exp(y[8]*params[25])/(params[32]*exp(y[4]*params[19])+params[33]*exp(y[6]*params[22])+params[34]*exp(y[8]*params[25])));
    residual[22] = (y[31]) - (exp(y[8]*params[25])*params[35]/(exp(y[8]*params[25])*params[35]+params[36]*exp(y[10]*params[28])+params[37]*exp(y[12]*params[31])));
    residual[23] = (y[33]) - (params[36]*exp(y[10]*params[28])/(exp(y[8]*params[25])*params[35]+params[36]*exp(y[10]*params[28])+params[37]*exp(y[12]*params[31])));
    residual[24] = (y[35]) - (params[37]*exp(y[12]*params[31])/(exp(y[8]*params[25])*params[35]+params[36]*exp(y[10]*params[28])+params[37]*exp(y[12]*params[31])));
    residual[25] = (params[17]+y[3]*params[18]) - (y[24]);
    residual[26] = (params[20]+y[5]*params[21]) - (y[26]);
    residual[27] = (params[23]+y[7]*params[24]) - (y[28]+y[30]);
    residual[28] = (params[26]+y[9]*params[27]) - (y[32]);
    residual[29] = (params[29]+y[11]*params[30]) - (y[34]);
    residual[30] = (1-params[10]*y[19]) - (params[2]/y[2]^(-params[1])*y[14]*y[25]*y[1]^(1/params[8]-params[6])*y[13]^(1/params[11]-1/params[8])*y[24]^((-1)/params[11]));
    residual[31] = (1-params[10]*y[20]) - (y[13]^(1/params[11]-1/params[8])*y[1]^(1/params[8]-params[6])*params[2]/y[2]^(-params[1])*y[14]*y[27]*y[26]^((-1)/params[11]));
    residual[32] = (1-params[10]*y[21]) - (y[13]^(1/params[11]-1/params[8])*y[1]^(1/params[8]-params[6])*params[2]/y[2]^(-params[1])*y[14]*y[29]*y[28]^((-1)/params[11]));
    residual[33] = (1-params[10]*y[21]) - (y[1]^(1/params[8]-params[6])*params[2]/y[2]^(-params[1])*y[17]*y[31]*y[16]^(1/params[14]-1/params[8])*y[30]^((-1)/params[14]));
    residual[34] = (1-params[10]*y[22]) - (y[16]^(1/params[14]-1/params[8])*y[1]^(1/params[8]-params[6])*params[2]/y[2]^(-params[1])*y[17]*y[33]*y[32]^((-1)/params[14]));
    residual[35] = (1-params[10]*y[23]) - (y[16]^(1/params[14]-1/params[8])*y[1]^(1/params[8]-params[6])*params[2]/y[2]^(-params[1])*y[17]*y[35]*y[34]^((-1)/params[14]));
end
    return nothing
end

