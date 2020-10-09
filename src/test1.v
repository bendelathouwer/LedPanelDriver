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


/*integer i;
initial begin
  count = 0;
  for (i=0;i<=1024;i=i+1)
    Save_state[i] = 0;
end
*/
reg [63:0] data ;
reg [63:0] count1 ;
reg [63:0] count2 ;
integer i ; 
initial begin
  count = 0 ;
  for (i=0;i<=63;i=i+1)
    data[i] = 1;
  end
end

endmodule