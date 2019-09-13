
module demorgan

(
input A,	//single bit inputs
input B, 
output nA,	//output intermediate to completment inputs
output nB,
output nAandnB,	//single bit output (~A)*(~B)
output nAornB,	//single bit output (~A + ~B) 
output AandB,	//single bit output ~(A*B)
output AorB	//single bit output ~(A + B)
);

wire nA;
wire nB;
not Ainv(nA, A);
not Binv(nB, B);
and andgate(nAandnB, nA, nB);
nand nandgate(AandB, A, B); 
or orgate(nAornB, nA, nB);
nor norgate(AorB, A, B);

endmodule



