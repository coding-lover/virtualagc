// Verilog testbench created by dumbTestbench.py
`timescale 100ns / 1ns

module agc;

reg rst = 1;
reg STRT2 = 1;
initial
  begin
    $dumpfile("agc.lxt2");
    $dumpvars(0, agc);
    # 1 rst = 0;
    # 50 STRT2 = 0;
    # 1000 $finish;
  end

reg CLOCK = 0;
always #2.44140625 CLOCK = !CLOCK;

reg ALGA = 0, CGA2 = 0, GOJ1 = 0, MP3A = 0, MSTP = 0, MSTRTP = 0, SBY = 0,
  STRT1 = 0, WL15 = 0, WL15_ = 0, WL16 = 0, WL16_ = 0;

wire CINORM, CLK, CT, CT_, EDSET, EVNSET, EVNSET_, F01A, F01B, F01C, F01D,
  FS01, FS01_, GOJAM, GOJAM_, GOSET_, MGOJAM, MONWT, MSTPIT_, MT01, MT02,
  MT03, MT04, MT05, MT06, MT07, MT08, MT09, MT10, MT11, MT12, ODDSET_,
  OVF, OVFSTB_, OVF_, P01, P01_, P02, P02_, P03, P03_, P04, P04_, P05,
  P05_, PHS2, PHS2_, PHS4, PHS4_, Q2A, RINGA_, RINGB_, RT, RT_, SB0, SB1,
  SB2, SB4, STOP, STOPA, STOP_, T01, T01DC_, T01_, T02, T02DC_, T02_, T03,
  T03DC_, T03_, T04, T04_, T05, T05_, T06, T06DC_, T06_, T07, T07DC_, T07_,
  T08, T08DC_, T08_, T09, T09DC_, T09_, T10, T10DC_, T10_, T11, T11_, T12,
  T12DC_, T12SET, T12_, TT_, UNF, UNF_, WT, WT_;

A2 iA2 (
  rst, ALGA, CGA2, CLOCK, GOJ1, MP3A, MSTP, MSTRTP, SBY, STRT1, STRT2, WL15,
  WL15_, WL16, WL16_, CINORM, EVNSET, EVNSET_, GOJAM, GOJAM_, MGOJAM, MONWT,
  MSTPIT_, MT01, MT02, MT03, MT04, MT05, MT06, MT07, MT08, MT09, MT10, MT11,
  MT12, ODDSET_, OVFSTB_, P01_, P02, P02_, P03, P03_, P04, P05, P05_, PHS4,
  PHS4_, Q2A, RINGA_, RINGB_, RT, STOP, STOPA, T02, T02DC_, T03, T03DC_,
  T06, T06DC_, T08, T08DC_, T10, T10DC_, T12DC_, WT, WT_, CLK, CT, CT_, EDSET,
  F01A, F01B, F01C, F01D, FS01, FS01_, GOSET_, OVF, OVF_, P01, P04_, PHS2,
  PHS2_, RT_, SB0, SB1, SB2, SB4, STOP_, T01, T01DC_, T01_, T02_, T03_, T04,
  T04_, T05, T05_, T06_, T07, T07DC_, T07_, T08_, T09, T09DC_, T09_, T10_,
  T11, T11_, T12, T12SET, T12_, TT_, UNF, UNF_
);

initial $timeformat(-9, 0, " ns", 10);
initial $monitor("%t: %d", $time, CLOCK);

endmodule