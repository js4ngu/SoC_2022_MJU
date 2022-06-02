// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "ap_stream.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->


// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "Input_orign"
#define AUTOTB_TVIN_Input_orign  "../tv/cdatafile/c.matrixmul_1D.autotvin_Input_orign.dat"
// wrapc file define: "AB"
#define AUTOTB_TVOUT_AB  "../tv/cdatafile/c.matrixmul_1D.autotvout_AB.dat"
#define AUTOTB_TVIN_AB  "../tv/cdatafile/c.matrixmul_1D.autotvin_AB.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "AB"
#define AUTOTB_TVOUT_PC_AB  "../tv/rtldatafile/rtl.matrixmul_1D.autotvout_AB.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			Input_orign_depth = 0;
			AB_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{Input_orign " << Input_orign_depth << "}\n";
			total_list << "{AB " << AB_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int Input_orign_depth;
		int AB_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern void matrixmul_1D (
unsigned char Input_orign[32768],
unsigned int AB[16384]);

void AESL_WRAP_matrixmul_1D (
unsigned char Input_orign[32768],
unsigned int AB[16384])
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;


		// output port post check: "AB"
		aesl_fh.read(AUTOTB_TVOUT_PC_AB, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_AB, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_AB, AESL_token); // data

			sc_bv<32> *AB_pc_buffer = new sc_bv<32>[16384];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'AB', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'AB', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					AB_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_AB, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_AB))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: AB
				{
					// bitslice(31, 0)
					// {
						// celement: AB(31, 0)
						// {
							sc_lv<32>* AB_lv0_0_16383_1 = new sc_lv<32>[16384];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: AB(31, 0)
						{
							// carray: (0) => (16383) @ (1)
							for (int i_0 = 0; i_0 <= 16383; i_0 += 1)
							{
								if (&(AB[0]) != NULL) // check the null address if the c port is array or others
								{
									AB_lv0_0_16383_1[hls_map_index].range(31, 0) = sc_bv<32>(AB_pc_buffer[hls_map_index].range(31, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: AB(31, 0)
						{
							// carray: (0) => (16383) @ (1)
							for (int i_0 = 0; i_0 <= 16383; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : AB[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : AB[0]
								// output_left_conversion : AB[i_0]
								// output_type_conversion : (AB_lv0_0_16383_1[hls_map_index]).to_uint64()
								if (&(AB[0]) != NULL) // check the null address if the c port is array or others
								{
									AB[i_0] = (AB_lv0_0_16383_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] AB_pc_buffer;
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "Input_orign"
		char* tvin_Input_orign = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_Input_orign);

		// "AB"
		char* tvin_AB = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_AB);
		char* tvout_AB = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_AB);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_Input_orign, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_Input_orign, tvin_Input_orign);

		sc_bv<8>* Input_orign_tvin_wrapc_buffer = new sc_bv<8>[32768];

		// RTL Name: Input_orign
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: Input_orign(7, 0)
				{
					// carray: (0) => (32767) @ (1)
					for (int i_0 = 0; i_0 <= 32767; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : Input_orign[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : Input_orign[0]
						// regulate_c_name       : Input_orign
						// input_type_conversion : Input_orign[i_0]
						if (&(Input_orign[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<8> Input_orign_tmp_mem;
							Input_orign_tmp_mem = Input_orign[i_0];
							Input_orign_tvin_wrapc_buffer[hls_map_index].range(7, 0) = Input_orign_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32768; i++)
		{
			sprintf(tvin_Input_orign, "%s\n", (Input_orign_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_Input_orign, tvin_Input_orign);
		}

		tcl_file.set_num(32768, &tcl_file.Input_orign_depth);
		sprintf(tvin_Input_orign, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_Input_orign, tvin_Input_orign);

		// release memory allocation
		delete [] Input_orign_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_AB, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_AB, tvin_AB);

		sc_bv<32>* AB_tvin_wrapc_buffer = new sc_bv<32>[16384];

		// RTL Name: AB
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: AB(31, 0)
				{
					// carray: (0) => (16383) @ (1)
					for (int i_0 = 0; i_0 <= 16383; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : AB[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : AB[0]
						// regulate_c_name       : AB
						// input_type_conversion : AB[i_0]
						if (&(AB[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> AB_tmp_mem;
							AB_tmp_mem = AB[i_0];
							AB_tvin_wrapc_buffer[hls_map_index].range(31, 0) = AB_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 16384; i++)
		{
			sprintf(tvin_AB, "%s\n", (AB_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_AB, tvin_AB);
		}

		tcl_file.set_num(16384, &tcl_file.AB_depth);
		sprintf(tvin_AB, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_AB, tvin_AB);

		// release memory allocation
		delete [] AB_tvin_wrapc_buffer;

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		matrixmul_1D(Input_orign, AB);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_AB, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_AB, tvout_AB);

		sc_bv<32>* AB_tvout_wrapc_buffer = new sc_bv<32>[16384];

		// RTL Name: AB
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: AB(31, 0)
				{
					// carray: (0) => (16383) @ (1)
					for (int i_0 = 0; i_0 <= 16383; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : AB[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : AB[0]
						// regulate_c_name       : AB
						// input_type_conversion : AB[i_0]
						if (&(AB[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> AB_tmp_mem;
							AB_tmp_mem = AB[i_0];
							AB_tvout_wrapc_buffer[hls_map_index].range(31, 0) = AB_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 16384; i++)
		{
			sprintf(tvout_AB, "%s\n", (AB_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_AB, tvout_AB);
		}

		tcl_file.set_num(16384, &tcl_file.AB_depth);
		sprintf(tvout_AB, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_AB, tvout_AB);

		// release memory allocation
		delete [] AB_tvout_wrapc_buffer;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "Input_orign"
		delete [] tvin_Input_orign;
		// release memory allocation: "AB"
		delete [] tvout_AB;
		delete [] tvin_AB;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}
