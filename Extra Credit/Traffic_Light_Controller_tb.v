`include "Traffic_Light_Controller.v"

module Traffic_Light_Controller_tb;

// Inputs
reg [1:0] EWCar;
reg [1:0] NSCar;
reg clock;

// Outputs
wire [1:0] EWLite;
wire [1:0] NSLite;

// Instantiate the Unit Under Test (UUT)
Traffic_Light_Controller uut (
    .EWCar(EWCar),
    .NSCar(NSCar),
    .clock(clock),
    .EWLite(EWLite),
    .NSLite(NSLite)
);

// generate clock
initial begin
    clock = 0;
end
always #10 clock =~clock;

// traffic light controller
initial begin
        
    $dumpfile("Traffic_Light_Controller_tb.vcd");
    $dumpvars(0, Traffic_Light_Controller_tb);

    #20
    EWCar = 0;
    NSCar = 0;

    #20
    EWCar = 0;
    NSCar = 1;

    #20
    EWCar = 1;
    NSCar = 0;

    #20
    EWCar = 1;
    NSCar = 1;

end

endmodule