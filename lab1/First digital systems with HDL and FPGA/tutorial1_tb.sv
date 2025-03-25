// tutorial1_tb
//
// Uriel Martinez-Hernandez
// Updated 2022

`timescale 1ns / 1ps
// The line above determines that the # delay
// command uses 1ns steps and that the shortest
// delay considered is 1 ps.

// The testbench has no inputs or outputs. That 
// would be like having wires hanging randomly 
// off the side of your desk. Don't do that: you
// you might trip over them!
module tutorial1_tb();

	// The module under test has 4 inputs and 1 
	// output. By using the same name in the 
	// testbench we are able to make use of .* 
	// in the instantiation of the module.
	logic A,B,C,D,Z;

	// Change the name on the line below to match 
	// the module name you used. uut stands for 
	// "unit under test". It's convention but not 
	// required you could call it Susan if you 
	// really wanted to.
	tutorial1 uut (.*);

	// The initial block describes what happens to 
	// our module inputs during the test.
	initial 
	begin
	
		// By starting with a short wait, we can 
		// observe that the inputs start at neither
		// 1 nor 0.
		#10;
		
		// Now we clear all the inputs to zero. 
		A = '0;
		B = '0;
		C = '0;
		D = '0;
		
		// Finally we set each input to one over a 
		// period of 40 ns.
		#10 A = 1;		
			 B = 0;
		    C = 0;
		    D = 0;

		#10 A = 0;		
			 B = 1;
		    C = 0;
		    D = 0;

		#10 A = 1;		
			 B = 1;
		    C = 0;
		    D = 0;

		#10 A = 0;		
			 B = 0;
		    C = 1;
		    D = 0;

		#10 A = 1;		
			 B = 0;
		    C = 1;
		    D = 0;

		#10 A = 0;		
			 B = 1;
		    C = 1;
		    D = 0;
			 
		#10 A = 1;		
			 B = 1;
		    C = 1;
		    D = 0;

		#10 A = 0;		
			 B = 0;
		    C = 0;
		    D = 1;
			 
		// This is an incomplete test. Try to 
		// modify it to test all input combinations.	
	end
	
endmodule
