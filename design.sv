module traffic_light(
  input logic clk,
  input logic rst,
  output logic[2:0]lights //[1]=red,[2]=yelow,[3]=green
  );
  
  typedef enum logic[1:0]
  {
    green=2'b00,
   	yellow=2'b01,
    red =2'b10
  }state_t;
  
  state_t current_state,next_state;
  
  always@(posedge clk or negedge rst)begin
    if(!rst)begin
      current_state<=red;
    end else begin
        current_state<=next_state;
    end
  end
  
  always_comb begin
    case(current_state)
      green:next_state=yellow;
      yellow:next_state=red;
      red:next_state=green;
      default:next_state=red;
    endcase
  end
endmodule
