function SparseStaticResid!(T::Vector{<: Real}, residual::AbstractVector{<: Real}, y::Vector{<: Real}, x::Vector{<: Real}, params::Vector{<: Real})
    @assert length(T) >= 0
    @assert length(residual) == 46
    @assert length(y) == 46
    @assert length(x) == 17
    @assert length(params) == 47
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
    residual[12] = (y[13]) - (params[4]*y[13]+params[9]*x[11]);
    residual[13] = (y[14]) - (params[5]*y[14]+params[7]*x[12]);
    residual[14] = (y[15]) - (params[4]*y[15]+params[9]*x[13]);
    residual[15] = (y[16]) - (params[5]*y[16]+params[7]*x[14]);
    residual[16] = (y[19]) - (params[5]*y[19]+params[7]*x[15]);
    residual[17] = (y[22]) - (params[5]*y[22]+params[7]*x[16]);
    residual[18] = (y[25]) - (params[5]*y[25]+params[7]*x[17]);
    residual[19] = (y[1]) - ((y[18]*y[17]^((params[8]-1)/params[8])+y[21]*y[20]^((params[8]-1)/params[8])+y[24]*y[23]^((params[8]-1)/params[8]))^(params[8]/(params[8]-1)));
    residual[20] = (y[17]) - ((y[28]*y[26]^((params[11]-1)/params[11])+y[31]*y[29]^((params[11]-1)/params[11])+y[34]*y[32]^((params[11]-1)/params[11]))^(params[11]/(params[11]-1)));
    residual[21] = (y[20]) - ((y[37]*y[35]^((params[14]-1)/params[14])+y[40]*y[38]^((params[14]-1)/params[14]))^(params[14]/(params[14]-1)));
    residual[22] = (y[23]) - ((y[43]*y[41]^((params[17]-1)/params[17])+y[46]*y[44]^((params[17]-1)/params[17]))^(params[17]/(params[17]-1)));
    residual[23] = (y[18]) - (params[12]*exp(y[19]*params[13])/(params[12]*exp(y[19]*params[13])+params[15]*exp(y[22]*params[16])+params[18]*exp(y[25]*params[19])));
    residual[24] = (y[21]) - (params[15]*exp(y[22]*params[16])/(params[12]*exp(y[19]*params[13])+params[15]*exp(y[22]*params[16])+params[18]*exp(y[25]*params[19])));
    residual[25] = (y[24]) - (params[18]*exp(y[25]*params[19])/(params[12]*exp(y[19]*params[13])+params[15]*exp(y[22]*params[16])+params[18]*exp(y[25]*params[19])));
    residual[26] = (y[28]) - (params[20]*exp(y[4]*params[21])/(params[20]*exp(y[4]*params[21])+params[24]*exp(y[6]*params[25])+params[28]*exp(y[8]*params[29])));
    residual[27] = (y[31]) - (params[24]*exp(y[6]*params[25])/(params[20]*exp(y[4]*params[21])+params[24]*exp(y[6]*params[25])+params[28]*exp(y[8]*params[29])));
    residual[28] = (y[34]) - (params[28]*exp(y[8]*params[29])/(params[20]*exp(y[4]*params[21])+params[24]*exp(y[6]*params[25])+params[28]*exp(y[8]*params[29])));
    residual[29] = (y[37]) - (params[32]*exp(y[10]*params[33])/(params[32]*exp(y[10]*params[33])+params[36]*exp(y[12]*params[37])));
    residual[30] = (y[40]) - (params[36]*exp(y[12]*params[37])/(params[32]*exp(y[10]*params[33])+params[36]*exp(y[12]*params[37])));
    residual[31] = (y[43]) - (params[40]*exp(y[14]*params[41])/(params[40]*exp(y[14]*params[41])+params[44]*exp(y[16]*params[45])));
    residual[32] = (y[46]) - (params[44]*exp(y[16]*params[45])/(params[40]*exp(y[14]*params[41])+params[44]*exp(y[16]*params[45])));
    residual[33] = (y[26]) - (params[22]+y[3]*params[23]);
    residual[34] = (1-params[10]*y[27]) - (y[28]*y[18]*params[2]/y[2]^(-params[1])*y[1]^(1/params[8]-params[6])*y[17]^(1/params[11]-1/params[8])*y[26]^((-1)/params[11]));
    residual[35] = (y[29]) - (params[26]+y[5]*params[27]);
    residual[36] = (1-params[10]*y[30]) - (y[17]^(1/params[11]-1/params[8])*y[1]^(1/params[8]-params[6])*y[31]*y[18]*params[2]/y[2]^(-params[1])*y[29]^((-1)/params[11]));
    residual[37] = (y[32]) - (params[30]+y[7]*params[31]);
    residual[38] = (1-params[10]*y[33]) - (y[17]^(1/params[11]-1/params[8])*y[1]^(1/params[8]-params[6])*y[34]*y[18]*params[2]/y[2]^(-params[1])*y[32]^((-1)/params[11]));
    residual[39] = (y[35]) - (params[34]+y[9]*params[35]);
    residual[40] = (1-params[10]*y[36]) - (y[1]^(1/params[8]-params[6])*y[37]*y[21]*params[2]/y[2]^(-params[1])*y[20]^(1/params[14]-1/params[8])*y[35]^((-1)/params[14]));
    residual[41] = (y[38]) - (params[38]+y[11]*params[39]);
    residual[42] = (1-params[10]*y[39]) - (y[20]^(1/params[14]-1/params[8])*y[1]^(1/params[8]-params[6])*y[40]*y[21]*params[2]/y[2]^(-params[1])*y[38]^((-1)/params[14]));
    residual[43] = (y[41]) - (params[42]+y[13]*params[43]);
    residual[44] = (1-params[10]*y[42]) - (y[1]^(1/params[8]-params[6])*y[43]*y[24]*params[2]/y[2]^(-params[1])*y[23]^(1/params[17]-1/params[8])*y[41]^((-1)/params[17]));
    residual[45] = (y[44]) - (params[46]+y[15]*params[47]);
    residual[46] = (1-params[10]*y[45]) - (y[23]^(1/params[17]-1/params[8])*y[1]^(1/params[8]-params[6])*y[46]*y[24]*params[2]/y[2]^(-params[1])*y[44]^((-1)/params[17]));
end
    return nothing
end

