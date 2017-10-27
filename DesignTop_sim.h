#include <stdint.h>
#include <cstdio>

#include "bit_vector.h"

using namespace bsim;

struct circuit_state {
	uint16_t lb_p4_clamped_stencil_update_stream$mem_1$mem[ 10 ];
	uint8_t lb_p4_clamped_stencil_update_stream$mem_1$raddr$reg0;
	uint8_t lb_p4_clamped_stencil_update_stream$mem_1$waddr$reg0;
	uint16_t lb_p4_clamped_stencil_update_stream$mem_2$mem[ 10 ];
	uint8_t lb_p4_clamped_stencil_update_stream$mem_2$raddr$reg0;
	uint8_t lb_p4_clamped_stencil_update_stream$mem_2$waddr$reg0;
	uint8_t self_clk;
	uint8_t self_clk_last;
	uint16_t self_in_0;
	uint16_t self_out;
};

void simulate( circuit_state* state );
