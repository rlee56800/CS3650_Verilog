`include "Traffic_Light_Controller.v"

module Traffic_Light_Controller_tb;

// Inputs
reg EWCar, NSCar, clock;

// Outputs
wire EWLite, NSLite;

// Instantiate the Unit Under Test (UUT)
Traffic_Light_Controller uut (
    .EWCar(EWCar),
    .NSCar(NSCar),
    clock(clock),
    .EWLite(EWLite),
    .NSLite(NSLite)
)

initial begin
        
    $dumpfile("Traffic_Light_Controller_tb.vcd");
    $dumpvars(0, Traffic_Light_Controller_tb);

    #20
    // pass data into traffic light controller (prob boolean)

end

endmodule