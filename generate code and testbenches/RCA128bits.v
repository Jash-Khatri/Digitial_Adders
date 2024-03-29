module fulladder(a,b,cin,cout,sum); 
input a,b,cin; 
output cout,sum; 
assign #3 cout= (b&cin | a&b | cin&a );
assign #6 sum=a^b^cin; 
endmodule 


//defining the 128 bit RCA
module RCA(X,Y,Co,S);
input [127:0]X,Y;
output [127:0]S;
output Co;

fulladder f1(X[0],Y[0],1'b0,w1,S[0]);
fulladder f2(X[1],Y[1],w1,w2,S[1]);
fulladder f3(X[2],Y[2],w2,w3,S[2]);
fulladder f4(X[3],Y[3],w3,w4,S[3]);
fulladder f5(X[4],Y[4],w4,w5,S[4]);
fulladder f6(X[5],Y[5],w5,w6,S[5]);
fulladder f7(X[6],Y[6],w6,w7,S[6]);
fulladder f8(X[7],Y[7],w7,w8,S[7]);
fulladder f9(X[8],Y[8],w8,w9,S[8]);
fulladder f10(X[9],Y[9],w9,w10,S[9]);
fulladder f11(X[10],Y[10],w10,w11,S[10]);
fulladder f12(X[11],Y[11],w11,w12,S[11]);
fulladder f13(X[12],Y[12],w12,w13,S[12]);
fulladder f14(X[13],Y[13],w13,w14,S[13]);
fulladder f15(X[14],Y[14],w14,w15,S[14]);
fulladder f16(X[15],Y[15],w15,w16,S[15]);
fulladder f17(X[16],Y[16],w16,w17,S[16]);
fulladder f18(X[17],Y[17],w17,w18,S[17]);
fulladder f19(X[18],Y[18],w18,w19,S[18]);
fulladder f20(X[19],Y[19],w19,w20,S[19]);
fulladder f21(X[20],Y[20],w20,w21,S[20]);
fulladder f22(X[21],Y[21],w21,w22,S[21]);
fulladder f23(X[22],Y[22],w22,w23,S[22]);
fulladder f24(X[23],Y[23],w23,w24,S[23]);
fulladder f25(X[24],Y[24],w24,w25,S[24]);
fulladder f26(X[25],Y[25],w25,w26,S[25]);
fulladder f27(X[26],Y[26],w26,w27,S[26]);
fulladder f28(X[27],Y[27],w27,w28,S[27]);
fulladder f29(X[28],Y[28],w28,w29,S[28]);
fulladder f30(X[29],Y[29],w29,w30,S[29]);
fulladder f31(X[30],Y[30],w30,w31,S[30]);
fulladder f32(X[31],Y[31],w31,w32,S[31]);
fulladder f33(X[32],Y[32],w32,w33,S[32]);
fulladder f34(X[33],Y[33],w33,w34,S[33]);
fulladder f35(X[34],Y[34],w34,w35,S[34]);
fulladder f36(X[35],Y[35],w35,w36,S[35]);
fulladder f37(X[36],Y[36],w36,w37,S[36]);
fulladder f38(X[37],Y[37],w37,w38,S[37]);
fulladder f39(X[38],Y[38],w38,w39,S[38]);
fulladder f40(X[39],Y[39],w39,w40,S[39]);
fulladder f41(X[40],Y[40],w40,w41,S[40]);
fulladder f42(X[41],Y[41],w41,w42,S[41]);
fulladder f43(X[42],Y[42],w42,w43,S[42]);
fulladder f44(X[43],Y[43],w43,w44,S[43]);
fulladder f45(X[44],Y[44],w44,w45,S[44]);
fulladder f46(X[45],Y[45],w45,w46,S[45]);
fulladder f47(X[46],Y[46],w46,w47,S[46]);
fulladder f48(X[47],Y[47],w47,w48,S[47]);
fulladder f49(X[48],Y[48],w48,w49,S[48]);
fulladder f50(X[49],Y[49],w49,w50,S[49]);
fulladder f51(X[50],Y[50],w50,w51,S[50]);
fulladder f52(X[51],Y[51],w51,w52,S[51]);
fulladder f53(X[52],Y[52],w52,w53,S[52]);
fulladder f54(X[53],Y[53],w53,w54,S[53]);
fulladder f55(X[54],Y[54],w54,w55,S[54]);
fulladder f56(X[55],Y[55],w55,w56,S[55]);
fulladder f57(X[56],Y[56],w56,w57,S[56]);
fulladder f58(X[57],Y[57],w57,w58,S[57]);
fulladder f59(X[58],Y[58],w58,w59,S[58]);
fulladder f60(X[59],Y[59],w59,w60,S[59]);
fulladder f61(X[60],Y[60],w60,w61,S[60]);
fulladder f62(X[61],Y[61],w61,w62,S[61]);
fulladder f63(X[62],Y[62],w62,w63,S[62]);
fulladder f64(X[63],Y[63],w63,w64,S[63]);
fulladder f65(X[64],Y[64],w64,w65,S[64]);
fulladder f66(X[65],Y[65],w65,w66,S[65]);
fulladder f67(X[66],Y[66],w66,w67,S[66]);
fulladder f68(X[67],Y[67],w67,w68,S[67]);
fulladder f69(X[68],Y[68],w68,w69,S[68]);
fulladder f70(X[69],Y[69],w69,w70,S[69]);
fulladder f71(X[70],Y[70],w70,w71,S[70]);
fulladder f72(X[71],Y[71],w71,w72,S[71]);
fulladder f73(X[72],Y[72],w72,w73,S[72]);
fulladder f74(X[73],Y[73],w73,w74,S[73]);
fulladder f75(X[74],Y[74],w74,w75,S[74]);
fulladder f76(X[75],Y[75],w75,w76,S[75]);
fulladder f77(X[76],Y[76],w76,w77,S[76]);
fulladder f78(X[77],Y[77],w77,w78,S[77]);
fulladder f79(X[78],Y[78],w78,w79,S[78]);
fulladder f80(X[79],Y[79],w79,w80,S[79]);
fulladder f81(X[80],Y[80],w80,w81,S[80]);
fulladder f82(X[81],Y[81],w81,w82,S[81]);
fulladder f83(X[82],Y[82],w82,w83,S[82]);
fulladder f84(X[83],Y[83],w83,w84,S[83]);
fulladder f85(X[84],Y[84],w84,w85,S[84]);
fulladder f86(X[85],Y[85],w85,w86,S[85]);
fulladder f87(X[86],Y[86],w86,w87,S[86]);
fulladder f88(X[87],Y[87],w87,w88,S[87]);
fulladder f89(X[88],Y[88],w88,w89,S[88]);
fulladder f90(X[89],Y[89],w89,w90,S[89]);
fulladder f91(X[90],Y[90],w90,w91,S[90]);
fulladder f92(X[91],Y[91],w91,w92,S[91]);
fulladder f93(X[92],Y[92],w92,w93,S[92]);
fulladder f94(X[93],Y[93],w93,w94,S[93]);
fulladder f95(X[94],Y[94],w94,w95,S[94]);
fulladder f96(X[95],Y[95],w95,w96,S[95]);
fulladder f97(X[96],Y[96],w96,w97,S[96]);
fulladder f98(X[97],Y[97],w97,w98,S[97]);
fulladder f99(X[98],Y[98],w98,w99,S[98]);
fulladder f100(X[99],Y[99],w99,w100,S[99]);
fulladder f101(X[100],Y[100],w100,w101,S[100]);
fulladder f102(X[101],Y[101],w101,w102,S[101]);
fulladder f103(X[102],Y[102],w102,w103,S[102]);
fulladder f104(X[103],Y[103],w103,w104,S[103]);
fulladder f105(X[104],Y[104],w104,w105,S[104]);
fulladder f106(X[105],Y[105],w105,w106,S[105]);
fulladder f107(X[106],Y[106],w106,w107,S[106]);
fulladder f108(X[107],Y[107],w107,w108,S[107]);
fulladder f109(X[108],Y[108],w108,w109,S[108]);
fulladder f110(X[109],Y[109],w109,w110,S[109]);
fulladder f111(X[110],Y[110],w110,w111,S[110]);
fulladder f112(X[111],Y[111],w111,w112,S[111]);
fulladder f113(X[112],Y[112],w112,w113,S[112]);
fulladder f114(X[113],Y[113],w113,w114,S[113]);
fulladder f115(X[114],Y[114],w114,w115,S[114]);
fulladder f116(X[115],Y[115],w115,w116,S[115]);
fulladder f117(X[116],Y[116],w116,w117,S[116]);
fulladder f118(X[117],Y[117],w117,w118,S[117]);
fulladder f119(X[118],Y[118],w118,w119,S[118]);
fulladder f120(X[119],Y[119],w119,w120,S[119]);
fulladder f121(X[120],Y[120],w120,w121,S[120]);
fulladder f122(X[121],Y[121],w121,w122,S[121]);
fulladder f123(X[122],Y[122],w122,w123,S[122]);
fulladder f124(X[123],Y[123],w123,w124,S[123]);
fulladder f125(X[124],Y[124],w124,w125,S[124]);
fulladder f126(X[125],Y[125],w125,w126,S[125]);
fulladder f127(X[126],Y[126],w126,w127,S[126]);
fulladder f128(X[127],Y[127],w127,Co,S[127]);
endmodule
