#include <iostream>
#include <ctime>
#include <cstdlib>

#include "VDesignTop.h"
#include "verilated.h"

using namespace std;

int main(int argc, char** argv) {
  Verilated::commandArgs(argc, argv);
  VDesignTop* top = new VDesignTop;

  VL_IN8(clk,0,1);
  //char	__VpadToAlign1[1];
  VL_IN16(in_0, 16, 0);
  VL_OUT16(out, 16, 0);

  top->clk = 1;
  top->in_0 = 1;//in_0;
  top->out = 0;//out;

  cout << "Initial out = " << top->out << endl;
  cout << "Initial in  = " << top->in_0 << endl;

  std::clock_t start, end;

  int nRuns = 70;

  start = std::clock();

  for (int i = 0; i < nRuns; i++) {
    top->clk = i % 2;
    top->eval();

    if (top->clk == 0) {
      cout << "out " << i << " = " << top->out << endl;
    }

    if (top->clk == 1) {

      top->in_0 = (top->in_0 + 1) % 25;
    }
  }

  end = std::clock();

  cout << "DONE." << endl;

  double time_ms =
    (end - start) / (double)(CLOCKS_PER_SEC / 1000);

  cout << "Time to compute " << nRuns << " half cycles = " << time_ms << " ms" << endl;

  top->final();
}
