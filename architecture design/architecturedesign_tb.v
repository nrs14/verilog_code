module DataPath_tb();

  // Define the signals for the testbench
  reg clk;
  reg ld_ir, ld_ac, ld_pc, inc_pc, clr_pc, pass, add, alu_on_dbus, dbus_on_data, data_on_dbus;
  reg ir_on_adr, pc_on_adr;
  wire [5:0] adr_bus;
  wire [1:0] op_code;
  wire [7:0] data_bus;

  // Instantiate the DataPath module
  DataPath dp(
    .ir_on_adr(ir_on_adr),
    .pc_on_adr(pc_on_adr),
    .dbus_on_data(dbus_on_data),
    .data_on_dbus(data_on_dbus),
    .ld_ir(ld_ir),
    .ld_ac(ld_ac),
    .ld_pc(ld_pc),
    .inc_pc(inc_pc),
    .clr_pc(clr_pc),
    .pass(pass),
    .add(add),
    .alu_on_dbus(alu_on_dbus),
    .clk(clk),
    .adr_bus(adr_bus),
    .op_code(op_code),
    .data_bus(data_bus)
  );

  // Initialize clock
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  // Stimulus generation
  initial begin
    // Initialize signals
    ir_on_adr = 0;
    pc_on_adr = 0;
    dbus_on_data = 0;
    data_on_dbus = 0;
    ld_ir = 0;
    ld_ac = 0;
    ld_pc = 0;
    inc_pc = 0;
    clr_pc = 0;
    pass = 0;
    add = 0;
    alu_on_dbus = 0;

    // Test case 1
    // Load IR and perform a pass operation
    ld_ir = 1;
    pass = 1;
    #10;
    ld_ir = 0;
    pass = 0;

    // Test case 2
    // Load PC and perform an add operation
    ld_pc = 1;
    add = 1;
    #10;
    ld_pc = 0;
    add = 0;

   // Test case 3
// Load IR and AC, then perform an add operation with ALU
ld_ir = 1;
ld_ac = 1;
add = 1;
#10;
ld_ir = 0;
ld_ac = 0;
add = 0;

// Test case 4
// Load IR and PC, increment PC, and perform a pass operation with ALU
ld_ir = 1;
ld_pc = 1;
inc_pc = 1;
pass = 1;
#10;
ld_ir = 0;
ld_pc = 0;
inc_pc = 0;
pass = 0;
  end
endmodule
