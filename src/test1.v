module test1 (
    input clk,
    output R0in ,
    output R1in ,
    //output B0in ,
   //output B1in ,
    //output G0in ,
    //output G1in ,
    //output A0in ,
    //output A1in ,
     //output A2in ,
    //output A3in ,
    //output A4in,
    output SCLKin ,
    output BLANKin ,
    output LATCHin
);



reg [63:0] data ;
//reg [63:0] count1 ;
//reg [63:0] count2 ;
integer i ; 
integer j ;
 //array volstopen met data voor weer te geven op het pannel
initial begin
  //count = 0 ;
  for (i = 0 ; i <= 63 ; i = i + 1 )
  if(i % 2 = 0)//als de counter deelbaar is door 2 is data = 1
    data[i] = 1 ;
  else //als counter niet deelbaar is door 2 is data = 0
   data[i] = 0 ;
  end
end

always @(posedge clk) begin 

SCLKin <= ~clk;
	for(j = 0 ; j <= 63 ; j = j + 1 )
		R0in <= data[j];
		R1in <= data[j];
	end
	LATCHin <= 1 ;
	
	
end


endmodule