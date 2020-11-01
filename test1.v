module test1 (
    input clk,
    output R0in ,
    output R1in ,
	output B0in ,
	output B1in ,
	output G0in ,
	output G1in ,
    output A0in ,
	output A1in ,
	output A2in ,
	output A3in ,
    output A4in,
    output SCLKin ,
    output BLANKin ,
    output LATCHin
);



/* reg [63:0] data ;
reg [63:0] count1 ;
reg [63:0] count2 ;
integer i ; 
integer j ;
 //array volstopen met data voor weer te geven op het pannel
initial begin
  
	for (i = 0 ; i <= 63 ; i = i + 1 ) begin
		if(i % 2 == 0)//als de counter deelbaar is door 2 is data = 1
		begin
			data[i] = 1 ;
		end
		if( i% 2 !=0)//als de counter niet deelbaar is door 2 is data 0
		begin
			data[i] = 0 ;
		end
	end
end 
 */
always @(posedge clk) begin 
	A3in <= 0 ; 
	A4in <= 0 ;
	BLANKin <= 0 ;
	LATCHin <= 0 ;
 	A0in <= 0 ;
 	A1in <= 0 ;
 	A2in <= 0 ;
 	A3in <= 1 ;
	A4in <= 1 ;
	/* for(j = 0 ; j <= 63 ; j = j + 1 )
	begin
		R0in <= data[j];
		R1in <= data[j];

	end */

	LATCHin <= 1 ;
end
	assign SCLKin = clk;
	assign 	R0in = clk ;
	assign R1in = clk ;
endmodule