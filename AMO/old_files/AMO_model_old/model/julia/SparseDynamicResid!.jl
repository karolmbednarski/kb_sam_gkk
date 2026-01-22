function SparseDynamicResid!(T::Vector{<: Real}, residual::AbstractVector{<: Real}, y::Vector{<: Real}, x::Vector{<: Real}, params::Vector{<: Real}, steady_state::Vector{<: Real})
    @assert length(T) >= 0
    @assert length(residual) == 46
    @assert length(y) == 138
    @assert length(x) == 17
    @assert length(params) == 47
@inbounds begin
    residual[1] = (y[48]) - (params[3]);
    residual[2] = (y[49]) - (params[4]*y[3]+params[9]*x[1]);
    residual[3] = (y[50]) - (params[5]*y[4]+params[7]*x[2]);
    residual[4] = (y[51]) - (params[4]*y[5]+params[9]*x[3]);
    residual[5] = (y[52]) - (params[5]*y[6]+params[7]*x[4]);
    residual[6] = (y[53]) - (params[4]*y[7]+params[9]*x[5]);
    residual[7] = (y[54]) - (params[5]*y[8]+params[7]*x[6]);
    residual[8] = (y[55]) - (params[4]*y[9]+params[9]*x[7]);
    residual[9] = (y[56]) - (params[5]*y[10]+params[7]*x[8]);
    residual[10] = (y[57]) - (params[4]*y[11]+params[9]*x[9]);
    residual[11] = (y[58]) - (params[5]*y[12]+params[7]*x[10]);
    residual[12] = (y[59]) - (params[4]*y[13]+params[9]*x[11]);
    residual[13] = (y[60]) - (params[5]*y[14]+params[7]*x[12]);
    residual[14] = (y[61]) - (params[4]*y[15]+params[9]*x[13]);
    residual[15] = (y[62]) - (params[5]*y[16]+params[7]*x[14]);
    residual[16] = (y[65]) - (params[5]*y[19]+params[7]*x[15]);
    residual[17] = (y[68]) - (params[5]*y[22]+params[7]*x[16]);
    residual[18] = (y[71]) - (params[5]*y[25]+params[7]*x[17]);
    residual[19] = (y[47]) - ((y[64]*y[63]^((params[8]-1)/params[8])+y[67]*y[66]^((params[8]-1)/params[8])+y[70]*y[69]^((params[8]-1)/params[8]))^(params[8]/(params[8]-1)));
    residual[20] = (y[63]) - ((y[74]*y[72]^((params[11]-1)/params[11])+y[77]*y[75]^((params[11]-1)/params[11])+y[80]*y[78]^((params[11]-1)/params[11]))^(params[11]/(params[11]-1)));
    residual[21] = (y[66]) - ((y[83]*y[81]^((params[14]-1)/params[14])+y[86]*y[84]^((params[14]-1)/params[14]))^(params[14]/(params[14]-1)));
    residual[22] = (y[69]) - ((y[89]*y[87]^((params[17]-1)/params[17])+y[92]*y[90]^((params[17]-1)/params[17]))^(params[17]/(params[17]-1)));
    residual[23] = (y[64]) - (params[12]*exp(y[65]*params[13])/(params[12]*exp(y[65]*params[13])+params[15]*exp(y[68]*params[16])+params[18]*exp(y[71]*params[19])));
    residual[24] = (y[67]) - (params[15]*exp(y[68]*params[16])/(params[12]*exp(y[65]*params[13])+params[15]*exp(y[68]*params[16])+params[18]*exp(y[71]*params[19])));
    residual[25] = (y[70]) - (params[18]*exp(y[71]*params[19])/(params[12]*exp(y[65]*params[13])+params[15]*exp(y[68]*params[16])+params[18]*exp(y[71]*params[19])));
    residual[26] = (y[74]) - (params[20]*exp(y[50]*params[21])/(params[20]*exp(y[50]*params[21])+params[24]*exp(y[52]*params[25])+params[28]*exp(y[54]*params[29])));
    residual[27] = (y[77]) - (params[24]*exp(y[52]*params[25])/(params[20]*exp(y[50]*params[21])+params[24]*exp(y[52]*params[25])+params[28]*exp(y[54]*params[29])));
    residual[28] = (y[80]) - (params[28]*exp(y[54]*params[29])/(params[20]*exp(y[50]*params[21])+params[24]*exp(y[52]*params[25])+params[28]*exp(y[54]*params[29])));
    residual[29] = (y[83]) - (params[32]*exp(y[56]*params[33])/(params[32]*exp(y[56]*params[33])+params[36]*exp(y[58]*params[37])));
    residual[30] = (y[86]) - (params[36]*exp(y[58]*params[37])/(params[32]*exp(y[56]*params[33])+params[36]*exp(y[58]*params[37])));
    residual[31] = (y[89]) - (params[40]*exp(y[60]*params[41])/(params[40]*exp(y[60]*params[41])+params[44]*exp(y[62]*params[45])));
    residual[32] = (y[92]) - (params[44]*exp(y[62]*params[45])/(params[40]*exp(y[60]*params[41])+params[44]*exp(y[62]*params[45])));
    residual[33] = (y[72]) - (params[22]+y[49]*params[23]);
    residual[34] = (1-params[10]*y[73]) - (y[74]*y[64]*params[2]/y[48]^params[1]*y[47]^(1/params[8]-params[6])*y[63]^(1/params[11]-1/params[8])*y[72]^((-1)/params[11]));
    residual[35] = (y[75]) - (params[26]+y[51]*params[27]);
    residual[36] = (1-params[10]*y[76]) - (y[63]^(1/params[11]-1/params[8])*y[47]^(1/params[8]-params[6])*y[77]*y[64]*params[2]/y[48]^params[1]*y[75]^((-1)/params[11]));
    residual[37] = (y[78]) - (params[30]+y[53]*params[31]);
    residual[38] = (1-params[10]*y[79]) - (y[63]^(1/params[11]-1/params[8])*y[47]^(1/params[8]-params[6])*y[80]*y[64]*params[2]/y[48]^params[1]*y[78]^((-1)/params[11]));
    residual[39] = (y[81]) - (params[34]+y[55]*params[35]);
    residual[40] = (1-params[10]*y[82]) - (y[47]^(1/params[8]-params[6])*y[83]*y[67]*params[2]/y[48]^params[1]*y[66]^(1/params[14]-1/params[8])*y[81]^((-1)/params[14]));
    residual[41] = (y[84]) - (params[38]+y[57]*params[39]);
    residual[42] = (1-params[10]*y[85]) - (y[66]^(1/params[14]-1/params[8])*y[47]^(1/params[8]-params[6])*y[86]*y[67]*params[2]/y[48]^params[1]*y[84]^((-1)/params[14]));
    residual[43] = (y[87]) - (params[42]+y[59]*params[43]);
    residual[44] = (1-params[10]*y[88]) - (y[47]^(1/params[8]-params[6])*y[89]*y[70]*params[2]/y[48]^params[1]*y[69]^(1/params[17]-1/params[8])*y[87]^((-1)/params[17]));
    residual[45] = (y[90]) - (params[46]+y[61]*params[47]);
    residual[46] = (1-params[10]*y[91]) - (y[69]^(1/params[17]-1/params[8])*y[47]^(1/params[8]-params[6])*y[92]*y[70]*params[2]/y[48]^params[1]*y[90]^((-1)/params[17]));
end
    return nothing
end

