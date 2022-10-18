module Traffic_Light_Controller(
    EWCar,
    NSCar,
    EWLite,
    NSLite,
    clock
);

input [1:0] EWCar;
input [1:0] NSCar;
input clock;
output [1:0] EWLite;
output [1:0] NSLite;
reg state = 0;

// following two assignents set the output, which is based
//  only on the state variable
assign NSLite = state; // NSLite on if state = 0;
assign EWLite = ~state; // EWLite on if state = 1

always @(posedge clock) // all state updates on a positive clock edge
    case(state)
        0: state = EWCar; // change state only if EWCar
        1: state = NSCar; // change state only if NSCar
    endcase

endmodule