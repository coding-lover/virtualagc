// Verilog module auto-generated for AGC module A12 by dumbVerilog.py

module A12 ( 
  rst, CAD4, CAD5, CAD6, CGA12, CGG, CSG, EB10, EB11_, EB9, G01, G02, G03,
  G04, G05, G06, G07, G08, G09, G10, G11, G12, G13, G14, G15, G16, GOJAM,
  IC15_, L02_, L15_, MONPAR, OCTAD2, R6, RAD, RPTAD4, RPTAD5, RPTAD6, SAP,
  SCAD, SCADBL, SHANC, SHINC, T02_, T03, T04, T05, T07, T10, T12_, T7PHS4_,
  TPARG_, TSUDO_, WEDOPG_, WL01_, WL02_, WL03_, WL04_, WL05_, WL06_, WL07_,
  WL08_, WL09_, WL10_, WL11_, WL12_, WL13_, WL14_, WSG_, XB0_, XB1_, XB2_,
  XB3_, d8XP5, BRXP3, G01A_, GEMP, GNZRO, MGP_, MPAL_, MSCDBL_, MSP, PA03,
  PA03_, PA06, PA06_, PA09, PA09_, PA12, PA12_, PA15, PA15_, RL03_, RL04_,
  RL05_, RL06_, RSC_, S09_, S10_, T03_, T04_, T05_, T07_, T10_, T12A, WG_,
  CYL_, CYR_, EAD09, EAD09_, EAD10, EAD10_, EAD11, EAD11_, EDOP_, EXTPLS,
  G01A, G01ED, G02ED, G03ED, G04ED, G05ED, G06ED, G07ED, G16A_, GEQZRO_,
  GINH, INHPLS, L02A_, L15A_, PALE, PB09, PB09_, PB15, PB15_, PC15, PC15_,
  RADRG, RADRZ, RELPLS, S01, S01_, S02, S02_, S03, S03_, S04, S04_, S05,
  S05_, S06, S06_, S07, S07_, S08, S08_, S09, S10, S11, S11_, S12, S12_,
  SHIFT, SHIFT_, SR_, WGA_
);

input wire rst, CAD4, CAD5, CAD6, CGA12, CGG, CSG, EB10, EB11_, EB9, G01,
  G02, G03, G04, G05, G06, G07, G08, G09, G10, G11, G12, G13, G14, G15, G16,
  GOJAM, IC15_, L02_, L15_, MONPAR, OCTAD2, R6, RAD, RPTAD4, RPTAD5, RPTAD6,
  SCAD, SCADBL, SHANC, SHINC, T02_, T03, T04, T05, T07, T10, T12_, T7PHS4_,
  TPARG_, TSUDO_, WEDOPG_, WL01_, WL02_, WL03_, WL04_, WL05_, WL06_, WL07_,
  WL08_, WL09_, WL10_, WL11_, WL12_, WL13_, WL14_, WSG_, XB0_, XB1_, XB2_,
  XB3_, d8XP5;

input wire SAP;

inout wire BRXP3, G01A_, GEMP, GNZRO, MGP_, MPAL_, MSCDBL_, MSP, PA03, PA03_,
  PA06, PA06_, PA09, PA09_, PA12, PA12_, PA15, PA15_, RL03_, RL04_, RL05_,
  RL06_, RSC_, S09_, S10_, T03_, T04_, T05_, T07_, T10_, T12A, WG_;

output wire CYL_, CYR_, EAD09, EAD09_, EAD10, EAD10_, EAD11, EAD11_, EDOP_,
  EXTPLS, G01A, G01ED, G02ED, G03ED, G04ED, G05ED, G06ED, G07ED, G16A_, GEQZRO_,
  GINH, INHPLS, L02A_, L15A_, PALE, PB09, PB09_, PB15, PB15_, PC15, PC15_,
  RADRG, RADRZ, RELPLS, S01, S01_, S02, S02_, S03, S03_, S04, S04_, S05,
  S05_, S06, S06_, S07, S07_, S08, S08_, S09, S10, S11, S11_, S12, S12_,
  SHIFT, SHIFT_, SR_, WGA_;

// Gate A12-U241A
pullup(g34417);
assign #0.2  g34417 = rst ? 1'bz : ((0|CSG|g34416) ? 1'b0 : 1'bz);
// Gate A12-U240A
pullup(g34416);
assign #0.2  g34416 = rst ? 0 : ((0|g34417|g34415) ? 1'b0 : 1'bz);
// Gate A12-U232A
pullup(g34401);
assign #0.2  g34401 = rst ? 0 : ((0|WSG_|WL01_) ? 1'b0 : 1'bz);
// Gate A12-U248B
pullup(g34430);
assign #0.2  g34430 = rst ? 0 : ((0|g34429|g34431) ? 1'b0 : 1'bz);
// Gate A12-U248A
pullup(g34431);
assign #0.2  g34431 = rst ? 1'bz : ((0|g34430|CSG) ? 1'b0 : 1'bz);
// Gate A12-U139A A12-U141B
pullup(PA06);
assign #0.2  PA06 = rst ? 1'bz : ((0|g34114|g34115|g34116|g34117) ? 1'b0 : 1'bz);
// Gate A12-U235A
pullup(RL04_);
assign #0.2  RL04_ = rst ? 1'bz : ((0|CAD4|RPTAD4) ? 1'b0 : 1'bz);
// Gate A12-U143A
pullup(g34123);
assign #0.2  g34123 = rst ? 0 : ((0|G08) ? 1'b0 : 1'bz);
// Gate A12-U135A A12-U159B A12-U160B
pullup(GNZRO);
assign #0.2  GNZRO = rst ? 0 : ((0|G15|g34121|g34132|g34142|g34154) ? 1'b0 : 1'bz);
// Gate A12-U145A
pullup(g34124);
assign #0.2  g34124 = rst ? 0 : ((0|G09) ? 1'b0 : 1'bz);
// Gate A12-U107A A12-U106A
pullup(RELPLS);
assign #0.2  RELPLS = rst ? 0 : ((0|A12G02_|G03|g34202|g34204|G01A_) ? 1'b0 : 1'bz);
// Gate A12-U213A
pullup(g34336);
assign #0.2  g34336 = rst ? 1'bz : ((0|CSG|g34335) ? 1'b0 : 1'bz);
// Gate A12-U114B
pullup(EAD11_);
assign #0.2  EAD11_ = rst ? 0 : ((0|EAD11) ? 1'b0 : 1'bz);
// Gate A12-U143B
pullup(g34126);
assign #0.2  g34126 = rst ? 0 : ((0|G07|g34124|g34123) ? 1'b0 : 1'bz);
// Gate A12-U216B
pullup(S11);
assign #0.2  S11 = rst ? 1'bz : ((0|g34327) ? 1'b0 : 1'bz);
// Gate A12-U260B
pullup(G01A);
assign #0.2  G01A = rst ? 1'bz : ((0|G01A_) ? 1'b0 : 1'bz);
// Gate A12-U239A A12-U239B
pullup(S02_);
assign #0.2  S02_ = rst ? 1'bz : ((0|g34410) ? 1'b0 : 1'bz);
// Gate A12-U254A
pullup(g34443);
assign #0.2  g34443 = rst ? 0 : ((0|WSG_|WL07_) ? 1'b0 : 1'bz);
// Gate A12-U221A
pullup(g34320);
assign #0.2  g34320 = rst ? 1'bz : ((0|CSG|g34319) ? 1'b0 : 1'bz);
// Gate A12-U254B A12-U253B
pullup(S06);
assign #0.2  S06 = rst ? 1'bz : ((0|g34437) ? 1'b0 : 1'bz);
// Gate A12-U230A
pullup(G01ED);
assign #0.2  G01ED = rst ? 0 : ((0|WEDOPG_|WL08_) ? 1'b0 : 1'bz);
// Gate A12-U226A
pullup(S08_);
assign #0.2  S08_ = rst ? 0 : ((0|g34304) ? 1'b0 : 1'bz);
// Gate A12-U252B
pullup(g34467);
assign #0.2  g34467 = rst ? 0 : ((0|WG_) ? 1'b0 : 1'bz);
// Gate A12-U236A
pullup(g34409);
assign #0.2  g34409 = rst ? 1'bz : ((0|g34410|g34408) ? 1'b0 : 1'bz);
// Gate A12-U237A
pullup(g34410);
assign #0.2  g34410 = rst ? 0 : ((0|CSG|g34409) ? 1'b0 : 1'bz);
// Gate A12-U134A
pullup(A12G03_);
assign #0.2  A12G03_ = rst ? 0 : ((0|G03) ? 1'b0 : 1'bz);
// Gate A12-U219A
pullup(S10);
assign #0.2  S10 = rst ? 1'bz : ((0|g34319) ? 1'b0 : 1'bz);
// Gate A12-U222A
pullup(G04ED);
assign #0.2  G04ED = rst ? 0 : ((0|WEDOPG_|WL11_) ? 1'b0 : 1'bz);
// Gate A12-U258A
pullup(g34445);
assign #0.2  g34445 = rst ? 1'bz : ((0|CSG|g34444) ? 1'b0 : 1'bz);
// Gate A12-U154B
pullup(g34144);
assign #0.2  g34144 = rst ? 0 : ((0|G13) ? 1'b0 : 1'bz);
// Gate A12-U133B
pullup(g34106);
assign #0.2  g34106 = rst ? 0 : ((0|G02|A12G03_|G01A_) ? 1'b0 : 1'bz);
// Gate A12-U154A
pullup(g34142);
assign #0.2  g34142 = rst ? 1'bz : ((0|g34136) ? 1'b0 : 1'bz);
// Gate A12-U251A A12-U251B
pullup(WGA_);
assign #0.2  WGA_ = rst ? 1'bz : ((0|g34467) ? 1'b0 : 1'bz);
// Gate A12-U136A
pullup(PA03_);
assign #0.2  PA03_ = rst ? 0 : ((0|PA03) ? 1'b0 : 1'bz);
// Gate A12-U245A A12-U245B
pullup(S04_);
assign #0.2  S04_ = rst ? 0 : ((0|g34424) ? 1'b0 : 1'bz);
// Gate A12-U257B
pullup(S07);
assign #0.2  S07 = rst ? 1'bz : ((0|g34444) ? 1'b0 : 1'bz);
// Gate A12-U118A A12-U116A
pullup(PALE);
assign #0.2  PALE = rst ? 0 : ((0|SCAD|GOJAM|g34248|TPARG_|g34247|d8XP5) ? 1'b0 : 1'bz);
// Gate A12-U242A A12-U242B
pullup(S03_);
assign #0.2  S03_ = rst ? 0 : ((0|g34417) ? 1'b0 : 1'bz);
// Gate A12-U217A
pullup(S10_);
assign #0.2  S10_ = rst ? 0 : ((0|g34320) ? 1'b0 : 1'bz);
// Gate A12-U104A
pullup(g34210);
assign #0.2  g34210 = rst ? 0 : ((0|T12A|g34209) ? 1'b0 : 1'bz);
// Gate A12-U103B
pullup(g34211);
assign #0.2  g34211 = rst ? 1'bz : ((0|RAD) ? 1'b0 : 1'bz);
// Gate A12-U107B A12-U105B
pullup(g34209);
assign #0.2  g34209 = rst ? 1'bz : ((0|RELPLS|EXTPLS|g34210|INHPLS) ? 1'b0 : 1'bz);
// Gate A12-U206A
pullup(g34351);
assign #0.2  g34351 = rst ? 0 : ((0|T12A|SR_) ? 1'b0 : 1'bz);
// Gate A12-U145B
pullup(g34128);
assign #0.2  g34128 = rst ? 0 : ((0|g34123|g34122|G09) ? 1'b0 : 1'bz);
// Gate A12-U137B
pullup(g34114);
assign #0.2  g34114 = rst ? 0 : ((0|G06|G04|G05) ? 1'b0 : 1'bz);
// Gate A12-U207A
pullup(g34349);
assign #0.2  g34349 = rst ? 0 : ((0|CYR_|T12A) ? 1'b0 : 1'bz);
// Gate A12-U139B
pullup(g34113);
assign #0.2  g34113 = rst ? 0 : ((0|G06) ? 1'b0 : 1'bz);
// Gate A12-U138B
pullup(g34112);
assign #0.2  g34112 = rst ? 0 : ((0|G05) ? 1'b0 : 1'bz);
// Gate A12-U137A
pullup(g34115);
assign #0.2  g34115 = rst ? 0 : ((0|g34113|g34112|G04) ? 1'b0 : 1'bz);
// Gate A12-U209B
pullup(g34344);
assign #0.2  g34344 = rst ? 0 : ((0|T02_|g34343|XB0_) ? 1'b0 : 1'bz);
// Gate A12-U220A
pullup(g34319);
assign #0.2  g34319 = rst ? 0 : ((0|g34318|g34320) ? 1'b0 : 1'bz);
// Gate A12-U238B
pullup(g34422);
assign #0.2  g34422 = rst ? 0 : ((0|WL04_|WSG_) ? 1'b0 : 1'bz);
// Gate A12-U123A
pullup(PC15);
assign #0.2  PC15 = rst ? 0 : ((0|g34238|g34239) ? 1'b0 : 1'bz);
// Gate A12-U122B
pullup(MGP_);
assign #0.2  MGP_ = rst ? 1'bz : ((0|PC15) ? 1'b0 : 1'bz);
// Gate A12-U218A
pullup(g34328);
assign #0.2  g34328 = rst ? 1'bz : ((0|g34327|CSG) ? 1'b0 : 1'bz);
// Gate A12-U150B
pullup(g34134);
assign #0.2  g34134 = rst ? 0 : ((0|G11) ? 1'b0 : 1'bz);
// Gate A12-U238A
pullup(g34415);
assign #0.2  g34415 = rst ? 0 : ((0|WSG_|WL03_) ? 1'b0 : 1'bz);
// Gate A12-U111B
pullup(EAD09);
assign #0.2  EAD09 = rst ? 1'bz : ((0|g34219|S09_) ? 1'b0 : 1'bz);
// Gate A12-U208B
pullup(g34345);
assign #0.2  g34345 = rst ? 0 : ((0|XB1_|T02_|g34343) ? 1'b0 : 1'bz);
// Gate A12-U203B
pullup(CYL_);
assign #0.2  CYL_ = rst ? 1'bz : ((0|g34353|g34346) ? 1'b0 : 1'bz);
// Gate A12-U227A
pullup(T03_);
assign #0.2  T03_ = rst ? 1'bz : ((0|T03) ? 1'b0 : 1'bz);
// Gate A12-U141A
pullup(RSC_);
assign #0.2  RSC_ = rst ? 1'bz : ((0|BRXP3) ? 1'b0 : 1'bz);
// Gate A12-U235B
pullup(RL03_);
assign #0.2  RL03_ = rst ? 1'bz : ((0|R6) ? 1'b0 : 1'bz);
// Gate A12-U212A
pullup(G07ED);
assign #0.2  G07ED = rst ? 0 : ((0|WL14_|WEDOPG_) ? 1'b0 : 1'bz);
// Gate A12-U226B
pullup(T04_);
assign #0.2  T04_ = rst ? 1'bz : ((0|T04) ? 1'b0 : 1'bz);
// Gate A12-U218B
pullup(g34327);
assign #0.2  g34327 = rst ? 0 : ((0|g34328|g34326) ? 1'b0 : 1'bz);
// Gate A12-U121A
pullup(g34245);
assign #0.2  g34245 = rst ? 1'bz : ((0|SAP|MONPAR|g34246) ? 1'b0 : 1'bz);
// Gate A12-U222B
pullup(G03ED);
assign #0.2  G03ED = rst ? 0 : ((0|WL10_|WEDOPG_) ? 1'b0 : 1'bz);
// Gate A12-U253A
pullup(g34438);
assign #0.2  g34438 = rst ? 1'bz : ((0|CSG|g34437) ? 1'b0 : 1'bz);
// Gate A12-U103A
pullup(GEQZRO_);
assign #0.2  GEQZRO_ = rst ? 1'bz : ((0|g34217) ? 1'b0 : 1'bz);
// Gate A12-U211A A12-U216A A12-U214A
pullup(T12A);
assign #0.2  T12A = rst ? 1'bz : ((0|T12_) ? 1'b0 : 1'bz);
// Gate A12-U258B
pullup(S07_);
assign #0.2  S07_ = rst ? 0 : ((0|g34445) ? 1'b0 : 1'bz);
// Gate A12-U202A
pullup(g34355);
assign #0.2  g34355 = rst ? 0 : ((0|T12A|EDOP_) ? 1'b0 : 1'bz);
// Gate A12-U123B
pullup(PC15_);
assign #0.2  PC15_ = rst ? 1'bz : ((0|PC15) ? 1'b0 : 1'bz);
// Gate A12-U149A
pullup(g34137);
assign #0.2  g34137 = rst ? 0 : ((0|g34135|g34134|G10) ? 1'b0 : 1'bz);
// Gate A12-U121B
pullup(g34246);
assign #0.2  g34246 = rst ? 0 : ((0|CGG|g34245) ? 1'b0 : 1'bz);
// Gate A12-U153B
pullup(g34135);
assign #0.2  g34135 = rst ? 0 : ((0|G12) ? 1'b0 : 1'bz);
// Gate A12-U112B
pullup(EAD10);
assign #0.2  EAD10 = rst ? 1'bz : ((0|S10_|g34220) ? 1'b0 : 1'bz);
// Gate A12-U113B
pullup(EAD11);
assign #0.2  EAD11 = rst ? 1'bz : ((0|S10_|S09_|EB11_) ? 1'b0 : 1'bz);
// Gate A12-U149B
pullup(g34133);
assign #0.2  g34133 = rst ? 0 : ((0|G10) ? 1'b0 : 1'bz);
// Gate A12-U157A
pullup(G16A_);
assign #0.2  G16A_ = rst ? 0 : ((0|G16) ? 1'b0 : 1'bz);
// Gate A12-U119B
pullup(g34248);
assign #0.2  g34248 = rst ? 1'bz : ((0|PC15|g34246) ? 1'b0 : 1'bz);
// Gate A12-U160A
pullup(PA15_);
assign #0.2  PA15_ = rst ? 0 : ((0|PA15) ? 1'b0 : 1'bz);
// Gate A12-U246A
pullup(RL05_);
assign #0.2  RL05_ = rst ? 1'bz : ((0|RPTAD5|CAD5) ? 1'b0 : 1'bz);
// Gate A12-U146A
pullup(WG_);
assign #0.2  WG_ = rst ? 1'bz : ((0|BRXP3) ? 1'b0 : 1'bz);
// Gate A12-U250A A12-U250B
pullup(S05_);
assign #0.2  S05_ = rst ? 0 : ((0|g34431) ? 1'b0 : 1'bz);
// Gate A12-U122A
pullup(MSCDBL_);
assign #0.2  MSCDBL_ = rst ? 1'bz : ((0|SCADBL) ? 1'b0 : 1'bz);
// Gate A12-U233B A12-U234B
pullup(S01_);
assign #0.2  S01_ = rst ? 0 : ((0|g34403) ? 1'b0 : 1'bz);
// Gate A12-U229A
pullup(g34310);
assign #0.2  g34310 = rst ? 0 : ((0|WL09_|WSG_) ? 1'b0 : 1'bz);
// Gate A12-U260A
pullup(g34461);
assign #0.2  g34461 = rst ? 0 : ((0) ? 1'b0 : 1'bz);
// Gate A12-U136B
pullup(g34111);
assign #0.2  g34111 = rst ? 0 : ((0|G04) ? 1'b0 : 1'bz);
// Gate A12-U204A
pullup(g34346);
assign #0.2  g34346 = rst ? 0 : ((0|XB2_|g34343|T02_) ? 1'b0 : 1'bz);
// Gate A12-U132B
pullup(A12G02_);
assign #0.2  A12G02_ = rst ? 0 : ((0|G02) ? 1'b0 : 1'bz);
// Gate A12-U134B
pullup(g34107);
assign #0.2  g34107 = rst ? 0 : ((0|A12G02_|G03|G01A_) ? 1'b0 : 1'bz);
// Gate A12-U223A A12-U223B
pullup(S09_);
assign #0.2  S09_ = rst ? 0 : ((0|g34312) ? 1'b0 : 1'bz);
// Gate A12-U206B A12-U205B
pullup(g34357);
assign #0.2  g34357 = rst ? 1'bz : ((0|g34351|g34349|g34353|g34355) ? 1'b0 : 1'bz);
// Gate A12-U140A
pullup(PA06_);
assign #0.2  PA06_ = rst ? 0 : ((0|PA06) ? 1'b0 : 1'bz);
// Gate A12-U138A
pullup(g34116);
assign #0.2  g34116 = rst ? 0 : ((0|g34113|g34111|G05) ? 1'b0 : 1'bz);
// Gate A12-U202B
pullup(g34347);
assign #0.2  g34347 = rst ? 0 : ((0|T02_|g34343|XB3_) ? 1'b0 : 1'bz);
// Gate A12-U228B
pullup(g34304);
assign #0.2  g34304 = rst ? 1'bz : ((0|CSG|g34303) ? 1'b0 : 1'bz);
// Gate A12-U201A
pullup(EDOP_);
assign #0.2  EDOP_ = rst ? 1'bz : ((0|g34355|g34347) ? 1'b0 : 1'bz);
// Gate A12-U252A
pullup(g34437);
assign #0.2  g34437 = rst ? 0 : ((0|g34438|g34436) ? 1'b0 : 1'bz);
// Gate A12-U256B
pullup(L02A_);
assign #0.2  L02A_ = rst ? 0 : ((0|g34462) ? 1'b0 : 1'bz);
// Gate A12-U125B
pullup(PB15_);
assign #0.2  PB15_ = rst ? 1'bz : ((0|PB15) ? 1'b0 : 1'bz);
// Gate A12-U213B
pullup(g34334);
assign #0.2  g34334 = rst ? 0 : ((0|WSG_|WL12_) ? 1'b0 : 1'bz);
// Gate A12-U120A
pullup(GEMP);
assign #0.2  GEMP = rst ? 0 : ((0|PC15_) ? 1'b0 : 1'bz);
// Gate A12-U211B
pullup(S12);
assign #0.2  S12 = rst ? 1'bz : ((0|g34335) ? 1'b0 : 1'bz);
// Gate A12-U147A
pullup(PA09_);
assign #0.2  PA09_ = rst ? 0 : ((0|PA09) ? 1'b0 : 1'bz);
// Gate A12-U215B
pullup(G06ED);
assign #0.2  G06ED = rst ? 0 : ((0|WEDOPG_|WL13_) ? 1'b0 : 1'bz);
// Gate A12-U255A A12-U255B
pullup(S06_);
assign #0.2  S06_ = rst ? 0 : ((0|g34438) ? 1'b0 : 1'bz);
// Gate A12-U209A
pullup(g34343);
assign #0.2  g34343 = rst ? 1'bz : ((0|OCTAD2) ? 1'b0 : 1'bz);
// Gate A12-U119A
pullup(g34247);
assign #0.2  g34247 = rst ? 0 : ((0|g34245|PC15_) ? 1'b0 : 1'bz);
// Gate A12-U158B
pullup(g34154);
assign #0.2  g34154 = rst ? 1'bz : ((0|g34147) ? 1'b0 : 1'bz);
// Gate A12-U130B
pullup(g34228);
assign #0.2  g34228 = rst ? 0 : ((0|PA06_|PA09_|PA03) ? 1'b0 : 1'bz);
// Gate A12-U130A
pullup(g34227);
assign #0.2  g34227 = rst ? 0 : ((0|PA03|PA06|PA09) ? 1'b0 : 1'bz);
// Gate A12-U113A
pullup(EAD10_);
assign #0.2  EAD10_ = rst ? 0 : ((0|EAD10) ? 1'b0 : 1'bz);
// Gate A12-U108B
pullup(EXTPLS);
assign #0.2  EXTPLS = rst ? 0 : ((0|g34204|g34203|g34202) ? 1'b0 : 1'bz);
// Gate A12-U126A
pullup(g34234);
assign #0.2  g34234 = rst ? 0 : ((0|PA12|PA15) ? 1'b0 : 1'bz);
// Gate A12-U126B
pullup(g34235);
assign #0.2  g34235 = rst ? 1'bz : ((0|PA15_|PA12_) ? 1'b0 : 1'bz);
// Gate A12-U129A
pullup(g34229);
assign #0.2  g34229 = rst ? 0 : ((0|PA06|PA03_|PA09_) ? 1'b0 : 1'bz);
// Gate A12-U129B
pullup(g34230);
assign #0.2  g34230 = rst ? 0 : ((0|PA09|PA06_|PA03_) ? 1'b0 : 1'bz);
// Gate A12-U114A
pullup(BRXP3);
assign #0.2  BRXP3 = rst ? 0 : ((0|T03_|IC15_) ? 1'b0 : 1'bz);
// Gate A12-U243A
pullup(g34424);
assign #0.2  g34424 = rst ? 1'bz : ((0|g34423|CSG) ? 1'b0 : 1'bz);
// Gate A12-U131A
pullup(g34104);
assign #0.2  g34104 = rst ? 0 : ((0|G02|G03|G01) ? 1'b0 : 1'bz);
// Gate A12-U110B
pullup(g34219);
assign #0.2  g34219 = rst ? 0 : ((0|EB9|S10_) ? 1'b0 : 1'bz);
// Gate A12-U131B
pullup(G01A_);
assign #0.2  G01A_ = rst ? 0 : ((0|G01) ? 1'b0 : 1'bz);
// Gate A12-U101A
pullup(RADRZ);
assign #0.2  RADRZ = rst ? 0 : ((0|g34209|g34211) ? 1'b0 : 1'bz);
// Gate A12-U243B
pullup(g34423);
assign #0.2  g34423 = rst ? 0 : ((0|g34422|g34424) ? 1'b0 : 1'bz);
// Gate A12-U128A A12-U127A
pullup(PB09);
assign #0.2  PB09 = rst ? 1'bz : ((0|g34229|g34230|g34227|g34228) ? 1'b0 : 1'bz);
// Gate A12-U220B
pullup(g34326);
assign #0.2  g34326 = rst ? 0 : ((0|WSG_|WL11_) ? 1'b0 : 1'bz);
// Gate A12-U101B
pullup(RADRG);
assign #0.2  RADRG = rst ? 0 : ((0|g34210|g34211) ? 1'b0 : 1'bz);
// Gate A12-U109B
pullup(g34202);
assign #0.2  g34202 = rst ? 1'bz : ((0|g34201) ? 1'b0 : 1'bz);
// Gate A12-U108A
pullup(g34204);
assign #0.2  g34204 = rst ? 1'bz : ((0|GNZRO) ? 1'b0 : 1'bz);
// Gate A12-U109A
pullup(g34203);
assign #0.2  g34203 = rst ? 1'bz : ((0|g34105) ? 1'b0 : 1'bz);
// Gate A12-U208A
pullup(SR_);
assign #0.2  SR_ = rst ? 1'bz : ((0|g34345|g34351) ? 1'b0 : 1'bz);
// Gate A12-U104B A12-U102B
pullup(g34217);
assign #0.2  g34217 = rst ? 0 : ((0|g34204|G02|G01|G03) ? 1'b0 : 1'bz);
// Gate A12-U227B
pullup(S08);
assign #0.2  S08 = rst ? 1'bz : ((0|g34303) ? 1'b0 : 1'bz);
// Gate A12-U224B
pullup(S09);
assign #0.2  S09 = rst ? 1'bz : ((0|g34311) ? 1'b0 : 1'bz);
// Gate A12-U225A
pullup(g34311);
assign #0.2  g34311 = rst ? 0 : ((0|g34310|g34312) ? 1'b0 : 1'bz);
// Gate A12-U224A
pullup(T05_);
assign #0.2  T05_ = rst ? 1'bz : ((0|T05) ? 1'b0 : 1'bz);
// Gate A12-U231B A12-U232B
pullup(S01);
assign #0.2  S01 = rst ? 1'bz : ((0|g34402) ? 1'b0 : 1'bz);
// Gate A12-U236B A12-U237B
pullup(S02);
assign #0.2  S02 = rst ? 0 : ((0|g34409) ? 1'b0 : 1'bz);
// Gate A12-U241B A12-U240B
pullup(S03);
assign #0.2  S03 = rst ? 1'bz : ((0|g34416) ? 1'b0 : 1'bz);
// Gate A12-U244A A12-U244B
pullup(S04);
assign #0.2  S04 = rst ? 1'bz : ((0|g34423) ? 1'b0 : 1'bz);
// Gate A12-U249A A12-U249B
pullup(S05);
assign #0.2  S05 = rst ? 1'bz : ((0|g34430) ? 1'b0 : 1'bz);
// Gate A12-U147B
pullup(g34132);
assign #0.2  g34132 = rst ? 1'bz : ((0|g34125) ? 1'b0 : 1'bz);
// Gate A12-U207B
pullup(CYR_);
assign #0.2  CYR_ = rst ? 1'bz : ((0|g34349|g34344) ? 1'b0 : 1'bz);
// Gate A12-U124B
pullup(g34239);
assign #0.2  g34239 = rst ? 0 : ((0|PB09|PB15_) ? 1'b0 : 1'bz);
// Gate A12-U124A
pullup(g34238);
assign #0.2  g34238 = rst ? 1'bz : ((0|PB15|PB09_) ? 1'b0 : 1'bz);
// Gate A12-U247A
pullup(g34436);
assign #0.2  g34436 = rst ? 0 : ((0|WSG_|WL06_) ? 1'b0 : 1'bz);
// Gate A12-U228A
pullup(g34303);
assign #0.2  g34303 = rst ? 0 : ((0|g34302|g34304) ? 1'b0 : 1'bz);
// Gate A12-U247B
pullup(g34429);
assign #0.2  g34429 = rst ? 0 : ((0|WL05_|WSG_) ? 1'b0 : 1'bz);
// Gate A12-U221B
pullup(g34318);
assign #0.2  g34318 = rst ? 0 : ((0|WSG_|WL10_) ? 1'b0 : 1'bz);
// Gate A12-U256A
pullup(g34462);
assign #0.2  g34462 = rst ? 1'bz : ((0|L02_) ? 1'b0 : 1'bz);
// Gate A12-U125A
pullup(PB15);
assign #0.2  PB15 = rst ? 0 : ((0|g34235|g34234) ? 1'b0 : 1'bz);
// Gate A12-U229B
pullup(g34302);
assign #0.2  g34302 = rst ? 0 : ((0|WSG_|WL08_) ? 1'b0 : 1'bz);
// Gate A12-U112A
pullup(g34220);
assign #0.2  g34220 = rst ? 0 : ((0|S09_|EB10) ? 1'b0 : 1'bz);
// Gate A12-U201B
pullup(SHIFT);
assign #0.2  SHIFT = rst ? 0 : ((0|SHIFT_) ? 1'b0 : 1'bz);
// Gate A12-U205A
pullup(g34361);
assign #0.2  g34361 = rst ? 0 : ((0) ? 1'b0 : 1'bz);
// Gate A12-U257A
pullup(g34444);
assign #0.2  g34444 = rst ? 0 : ((0|g34445|g34443) ? 1'b0 : 1'bz);
// Gate A12-U120B
pullup(MSP);
assign #0.2  MSP = rst ? 0 : ((0|g34245) ? 1'b0 : 1'bz);
// Gate A12-U152B A12-U150A
pullup(PA12);
assign #0.2  PA12 = rst ? 1'bz : ((0|g34138|g34139|g34136|g34137) ? 1'b0 : 1'bz);
// Gate A12-U148B
pullup(g34121);
assign #0.2  g34121 = rst ? 1'bz : ((0|g34114) ? 1'b0 : 1'bz);
// Gate A12-U159A A12-U157B
pullup(PA15);
assign #0.2  PA15 = rst ? 1'bz : ((0|g34150|g34149|g34147|g34148) ? 1'b0 : 1'bz);
// Gate A12-U217B
pullup(T10_);
assign #0.2  T10_ = rst ? 1'bz : ((0|T10) ? 1'b0 : 1'bz);
// Gate A12-U148A
pullup(g34136);
assign #0.2  g34136 = rst ? 0 : ((0|G12|G10|G11) ? 1'b0 : 1'bz);
// Gate A12-U246B
pullup(RL06_);
assign #0.2  RL06_ = rst ? 1'bz : ((0|CAD6|RPTAD6) ? 1'b0 : 1'bz);
// Gate A12-U215A
pullup(G05ED);
assign #0.2  G05ED = rst ? 0 : ((0|WEDOPG_|WL12_) ? 1'b0 : 1'bz);
// Gate A12-U259A
pullup(g34464);
assign #0.2  g34464 = rst ? 1'bz : ((0|L15_) ? 1'b0 : 1'bz);
// Gate A12-U210A
pullup(S12_);
assign #0.2  S12_ = rst ? 0 : ((0|g34336) ? 1'b0 : 1'bz);
// Gate A12-U231A
pullup(g34408);
assign #0.2  g34408 = rst ? 0 : ((0|WL02_|WSG_) ? 1'b0 : 1'bz);
// Gate A12-U259B
pullup(L15A_);
assign #0.2  L15A_ = rst ? 0 : ((0|g34464) ? 1'b0 : 1'bz);
// Gate A12-U233A
pullup(g34402);
assign #0.2  g34402 = rst ? 0 : ((0|g34403|g34401) ? 1'b0 : 1'bz);
// Gate A12-U156A
pullup(g34148);
assign #0.2  g34148 = rst ? 0 : ((0|G16A_|g34145|G13) ? 1'b0 : 1'bz);
// Gate A12-U132A
pullup(g34105);
assign #0.2  g34105 = rst ? 0 : ((0|A12G03_|A12G02_|G01) ? 1'b0 : 1'bz);
// Gate A12-U156B
pullup(g34149);
assign #0.2  g34149 = rst ? 0 : ((0|g34144|G14|G16A_) ? 1'b0 : 1'bz);
// Gate A12-U110A
pullup(g34201);
assign #0.2  g34201 = rst ? 0 : ((0|T7PHS4_|TSUDO_) ? 1'b0 : 1'bz);
// Gate A12-U234A
pullup(g34403);
assign #0.2  g34403 = rst ? 1'bz : ((0|CSG|g34402) ? 1'b0 : 1'bz);
// Gate A12-U204B
pullup(GINH);
assign #0.2  GINH = rst ? 0 : ((0|g34357) ? 1'b0 : 1'bz);
// Gate A12-U155B
pullup(g34147);
assign #0.2  g34147 = rst ? 0 : ((0|G16|G13|G14) ? 1'b0 : 1'bz);
// Gate A12-U144A
pullup(g34127);
assign #0.2  g34127 = rst ? 0 : ((0|g34124|g34122|G08) ? 1'b0 : 1'bz);
// Gate A12-U155A
pullup(g34145);
assign #0.2  g34145 = rst ? 0 : ((0|G14) ? 1'b0 : 1'bz);
// Gate A12-U142A
pullup(g34122);
assign #0.2  g34122 = rst ? 0 : ((0|G07) ? 1'b0 : 1'bz);
// Gate A12-U146B A12-U144B
pullup(PA09);
assign #0.2  PA09 = rst ? 1'bz : ((0|g34127|g34128|g34126|g34125) ? 1'b0 : 1'bz);
// Gate A12-U158A
pullup(g34150);
assign #0.2  g34150 = rst ? 0 : ((0|g34144|g34145|G16) ? 1'b0 : 1'bz);
// Gate A12-U142B
pullup(g34125);
assign #0.2  g34125 = rst ? 0 : ((0|G07|G09|G08) ? 1'b0 : 1'bz);
// Gate A12-U111A
pullup(EAD09_);
assign #0.2  EAD09_ = rst ? 0 : ((0|EAD09) ? 1'b0 : 1'bz);
// Gate A12-U203A
pullup(g34353);
assign #0.2  g34353 = rst ? 0 : ((0|CYL_|T12A) ? 1'b0 : 1'bz);
// Gate A12-U135B A12-U133A
pullup(PA03);
assign #0.2  PA03 = rst ? 1'bz : ((0|g34107|g34106|g34104|g34105) ? 1'b0 : 1'bz);
// Gate A12-U214B
pullup(S11_);
assign #0.2  S11_ = rst ? 0 : ((0|g34328) ? 1'b0 : 1'bz);
// Gate A12-U230B
pullup(G02ED);
assign #0.2  G02ED = rst ? 0 : ((0|WL09_|WEDOPG_) ? 1'b0 : 1'bz);
// Gate A12-U219B
pullup(T07_);
assign #0.2  T07_ = rst ? 1'bz : ((0|T07) ? 1'b0 : 1'bz);
// Gate A12-U127B
pullup(PB09_);
assign #0.2  PB09_ = rst ? 0 : ((0|PB09) ? 1'b0 : 1'bz);
// Gate A12-U225B
pullup(g34312);
assign #0.2  g34312 = rst ? 1'bz : ((0|CSG|g34311) ? 1'b0 : 1'bz);
// Gate A12-U153A
pullup(PA12_);
assign #0.2  PA12_ = rst ? 0 : ((0|PA12) ? 1'b0 : 1'bz);
// Gate A12-U212B
pullup(g34335);
assign #0.2  g34335 = rst ? 0 : ((0|g34336|g34334|d8XP5) ? 1'b0 : 1'bz);
// Gate A12-U106B A12-U102A
pullup(INHPLS);
assign #0.2  INHPLS = rst ? 0 : ((0|G02|A12G03_|g34202|g34204|G01) ? 1'b0 : 1'bz);
// Gate A12-U151B
pullup(g34138);
assign #0.2  g34138 = rst ? 0 : ((0|G11|g34133|g34135) ? 1'b0 : 1'bz);
// Gate A12-U140B
pullup(g34117);
assign #0.2  g34117 = rst ? 0 : ((0|G06|g34112|g34111) ? 1'b0 : 1'bz);
// Gate A12-U117B
pullup(MPAL_);
assign #0.2  MPAL_ = rst ? 1'bz : ((0|PALE) ? 1'b0 : 1'bz);
// Gate A12-U210B
pullup(SHIFT_);
assign #0.2  SHIFT_ = rst ? 1'bz : ((0|SHANC|SHINC) ? 1'b0 : 1'bz);
// Gate A12-U151A
pullup(g34139);
assign #0.2  g34139 = rst ? 0 : ((0|g34134|g34133|G12) ? 1'b0 : 1'bz);
// End of NOR gates

endmodule