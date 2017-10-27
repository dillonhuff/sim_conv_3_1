#include "DesignTop_sim.h"

#include <iostream>

using namespace std;

int main() {

  circuit_state state;
  state.self_clk = 1;
  state.self_clk_last = 0;

  // Set defaults
  for (int i = 0; i < 10; i++) {
    state.lb_p4_clamped_stencil_update_stream$mem_1$mem[ i ]= 0;
  }

  state.lb_p4_clamped_stencil_update_stream$mem_1$raddr$reg0 = 0;
  state.lb_p4_clamped_stencil_update_stream$mem_1$waddr$reg0 = 0;

  for (int i = 0; i < 10; i++) {
    state.lb_p4_clamped_stencil_update_stream$mem_2$mem[ i ] = 0;
  }

  state.lb_p4_clamped_stencil_update_stream$mem_2$raddr$reg0 = 0;
  state.lb_p4_clamped_stencil_update_stream$mem_2$waddr$reg0 = 0;

  state.self_in_0 = 13;

  for (int i = 0; i < 100; i++) {
    state.self_in_0 = state.self_in_0 + 1;
    simulate(&state);
  }

  cout << "out = " << state.self_out << endl;

}
