/* Generated by Yosys 0.9 (git sha1 1979e0b) */

(* src = "synth_etapaflops1.v:1" *)
module synth_etapaflops1(data_0ps_synt, data_1ps_synt, data_2ps_synt, data_3ps_synt, valid_0ps_synt, valid_1ps_synt, valid_2ps_synt, valid_3ps_synt, data_0p, data_1p, data_2p, data_3p, valid_0p, valid_1p, valid_2p, valid_3p, clk_f);
  (* src = "synth_etapaflops1.v:8" *)
  input clk_f;
  (* src = "synth_etapaflops1.v:5" *)
  input [7:0] data_0p;
  (* src = "synth_etapaflops1.v:1" *)
  output [7:0] data_0ps_synt;
  (* src = "synth_etapaflops1.v:5" *)
  input [7:0] data_1p;
  (* src = "synth_etapaflops1.v:1" *)
  output [7:0] data_1ps_synt;
  (* src = "synth_etapaflops1.v:6" *)
  input [7:0] data_2p;
  (* src = "synth_etapaflops1.v:2" *)
  output [7:0] data_2ps_synt;
  (* src = "synth_etapaflops1.v:6" *)
  input [7:0] data_3p;
  (* src = "synth_etapaflops1.v:2" *)
  output [7:0] data_3ps_synt;
  (* src = "synth_etapaflops1.v:7" *)
  input valid_0p;
  (* src = "synth_etapaflops1.v:3" *)
  output valid_0ps_synt;
  (* src = "synth_etapaflops1.v:7" *)
  input valid_1p;
  (* src = "synth_etapaflops1.v:3" *)
  output valid_1ps_synt;
  (* src = "synth_etapaflops1.v:8" *)
  input valid_2p;
  (* src = "synth_etapaflops1.v:4" *)
  output valid_2ps_synt;
  (* src = "synth_etapaflops1.v:8" *)
  input valid_3p;
  (* src = "synth_etapaflops1.v:4" *)
  output valid_3ps_synt;
  (* src = "synth_etapaflops1.v:10" *)
  DFF _00_ (
    .C(clk_f),
    .D(valid_2p),
    .Q(valid_2ps_synt)
  );
  (* src = "synth_etapaflops1.v:10" *)
  DFF _01_ (
    .C(clk_f),
    .D(valid_3p),
    .Q(valid_3ps_synt)
  );
  (* src = "synth_etapaflops1.v:10" *)
  DFF _02_ (
    .C(clk_f),
    .D(data_0p[0]),
    .Q(data_0ps_synt[0])
  );
  (* src = "synth_etapaflops1.v:10" *)
  DFF _03_ (
    .C(clk_f),
    .D(data_0p[1]),
    .Q(data_0ps_synt[1])
  );
  (* src = "synth_etapaflops1.v:10" *)
  DFF _04_ (
    .C(clk_f),
    .D(data_0p[2]),
    .Q(data_0ps_synt[2])
  );
  (* src = "synth_etapaflops1.v:10" *)
  DFF _05_ (
    .C(clk_f),
    .D(data_0p[3]),
    .Q(data_0ps_synt[3])
  );
  (* src = "synth_etapaflops1.v:10" *)
  DFF _06_ (
    .C(clk_f),
    .D(data_0p[4]),
    .Q(data_0ps_synt[4])
  );
  (* src = "synth_etapaflops1.v:10" *)
  DFF _07_ (
    .C(clk_f),
    .D(data_0p[5]),
    .Q(data_0ps_synt[5])
  );
  (* src = "synth_etapaflops1.v:10" *)
  DFF _08_ (
    .C(clk_f),
    .D(data_0p[6]),
    .Q(data_0ps_synt[6])
  );
  (* src = "synth_etapaflops1.v:10" *)
  DFF _09_ (
    .C(clk_f),
    .D(data_0p[7]),
    .Q(data_0ps_synt[7])
  );
  (* src = "synth_etapaflops1.v:10" *)
  DFF _10_ (
    .C(clk_f),
    .D(valid_0p),
    .Q(valid_0ps_synt)
  );
  (* src = "synth_etapaflops1.v:10" *)
  DFF _11_ (
    .C(clk_f),
    .D(valid_1p),
    .Q(valid_1ps_synt)
  );
  (* src = "synth_etapaflops1.v:10" *)
  DFF _12_ (
    .C(clk_f),
    .D(data_1p[0]),
    .Q(data_1ps_synt[0])
  );
  (* src = "synth_etapaflops1.v:10" *)
  DFF _13_ (
    .C(clk_f),
    .D(data_1p[1]),
    .Q(data_1ps_synt[1])
  );
  (* src = "synth_etapaflops1.v:10" *)
  DFF _14_ (
    .C(clk_f),
    .D(data_1p[2]),
    .Q(data_1ps_synt[2])
  );
  (* src = "synth_etapaflops1.v:10" *)
  DFF _15_ (
    .C(clk_f),
    .D(data_1p[3]),
    .Q(data_1ps_synt[3])
  );
  (* src = "synth_etapaflops1.v:10" *)
  DFF _16_ (
    .C(clk_f),
    .D(data_1p[4]),
    .Q(data_1ps_synt[4])
  );
  (* src = "synth_etapaflops1.v:10" *)
  DFF _17_ (
    .C(clk_f),
    .D(data_1p[5]),
    .Q(data_1ps_synt[5])
  );
  (* src = "synth_etapaflops1.v:10" *)
  DFF _18_ (
    .C(clk_f),
    .D(data_1p[6]),
    .Q(data_1ps_synt[6])
  );
  (* src = "synth_etapaflops1.v:10" *)
  DFF _19_ (
    .C(clk_f),
    .D(data_1p[7]),
    .Q(data_1ps_synt[7])
  );
  (* src = "synth_etapaflops1.v:10" *)
  DFF _20_ (
    .C(clk_f),
    .D(data_2p[0]),
    .Q(data_2ps_synt[0])
  );
  (* src = "synth_etapaflops1.v:10" *)
  DFF _21_ (
    .C(clk_f),
    .D(data_2p[1]),
    .Q(data_2ps_synt[1])
  );
  (* src = "synth_etapaflops1.v:10" *)
  DFF _22_ (
    .C(clk_f),
    .D(data_2p[2]),
    .Q(data_2ps_synt[2])
  );
  (* src = "synth_etapaflops1.v:10" *)
  DFF _23_ (
    .C(clk_f),
    .D(data_2p[3]),
    .Q(data_2ps_synt[3])
  );
  (* src = "synth_etapaflops1.v:10" *)
  DFF _24_ (
    .C(clk_f),
    .D(data_2p[4]),
    .Q(data_2ps_synt[4])
  );
  (* src = "synth_etapaflops1.v:10" *)
  DFF _25_ (
    .C(clk_f),
    .D(data_2p[5]),
    .Q(data_2ps_synt[5])
  );
  (* src = "synth_etapaflops1.v:10" *)
  DFF _26_ (
    .C(clk_f),
    .D(data_2p[6]),
    .Q(data_2ps_synt[6])
  );
  (* src = "synth_etapaflops1.v:10" *)
  DFF _27_ (
    .C(clk_f),
    .D(data_2p[7]),
    .Q(data_2ps_synt[7])
  );
  (* src = "synth_etapaflops1.v:10" *)
  DFF _28_ (
    .C(clk_f),
    .D(data_3p[0]),
    .Q(data_3ps_synt[0])
  );
  (* src = "synth_etapaflops1.v:10" *)
  DFF _29_ (
    .C(clk_f),
    .D(data_3p[1]),
    .Q(data_3ps_synt[1])
  );
  (* src = "synth_etapaflops1.v:10" *)
  DFF _30_ (
    .C(clk_f),
    .D(data_3p[2]),
    .Q(data_3ps_synt[2])
  );
  (* src = "synth_etapaflops1.v:10" *)
  DFF _31_ (
    .C(clk_f),
    .D(data_3p[3]),
    .Q(data_3ps_synt[3])
  );
  (* src = "synth_etapaflops1.v:10" *)
  DFF _32_ (
    .C(clk_f),
    .D(data_3p[4]),
    .Q(data_3ps_synt[4])
  );
  (* src = "synth_etapaflops1.v:10" *)
  DFF _33_ (
    .C(clk_f),
    .D(data_3p[5]),
    .Q(data_3ps_synt[5])
  );
  (* src = "synth_etapaflops1.v:10" *)
  DFF _34_ (
    .C(clk_f),
    .D(data_3p[6]),
    .Q(data_3ps_synt[6])
  );
  (* src = "synth_etapaflops1.v:10" *)
  DFF _35_ (
    .C(clk_f),
    .D(data_3p[7]),
    .Q(data_3ps_synt[7])
  );
endmodule

(* src = "synth_etapaflops2.v:1" *)
module synth_etapaflops2(data_0_synt, data_1_synt, data_2_synt, data_3_synt, valid_0_synt, valid_1_synt, valid_2_synt, valid_3_synt, data_0rf_synt, data_1rf_synt, data_1ps_synt0, data_1ps_synt1, data_1ps_synt2, data_1ps_synt3, data_1ps_synt4, data_1ps_synt5, clk_f);
  (* src = "synth_etapaflops2.v:8" *)
  input clk_f;
  (* src = "synth_etapaflops2.v:1" *)
  output [7:0] data_0_synt;
  (* src = "synth_etapaflops2.v:5" *)
  input [7:0] data_0rf_synt;
  (* src = "synth_etapaflops2.v:1" *)
  output [7:0] data_1_synt;
  (* src = "synth_etapaflops2.v:5" *)
  input [7:0] data_1rf_synt;
  (* src = "synth_etapaflops2.v:2" *)
  output [7:0] data_2_synt;
  (* src = "synth_etapaflops2.v:6" *)
  input [7:0] data_1ps_synt0;
  (* src = "synth_etapaflops2.v:2" *)
  output [7:0] data_3_synt;
  (* src = "synth_etapaflops2.v:6" *)
  input [7:0] data_1ps_synt1;
  (* src = "synth_etapaflops2.v:3" *)
  output valid_0_synt;
  (* src = "synth_etapaflops2.v:7" *)
  input data_1ps_synt2;
  (* src = "synth_etapaflops2.v:3" *)
  output valid_1_synt;
  (* src = "synth_etapaflops2.v:7" *)
  input data_1ps_synt3;
  (* src = "synth_etapaflops2.v:4" *)
  output valid_2_synt;
  (* src = "synth_etapaflops2.v:8" *)
  input data_1ps_synt4;
  (* src = "synth_etapaflops2.v:4" *)
  output valid_3_synt;
  (* src = "synth_etapaflops2.v:8" *)
  input data_1ps_synt5;
  (* src = "synth_etapaflops2.v:10" *)
  DFF _00_ (
    .C(clk_f),
    .D(data_0rf_synt[0]),
    .Q(data_0_synt[0])
  );
  (* src = "synth_etapaflops2.v:10" *)
  DFF _01_ (
    .C(clk_f),
    .D(data_0rf_synt[1]),
    .Q(data_0_synt[1])
  );
  (* src = "synth_etapaflops2.v:10" *)
  DFF _02_ (
    .C(clk_f),
    .D(data_0rf_synt[2]),
    .Q(data_0_synt[2])
  );
  (* src = "synth_etapaflops2.v:10" *)
  DFF _03_ (
    .C(clk_f),
    .D(data_0rf_synt[3]),
    .Q(data_0_synt[3])
  );
  (* src = "synth_etapaflops2.v:10" *)
  DFF _04_ (
    .C(clk_f),
    .D(data_0rf_synt[4]),
    .Q(data_0_synt[4])
  );
  (* src = "synth_etapaflops2.v:10" *)
  DFF _05_ (
    .C(clk_f),
    .D(data_0rf_synt[5]),
    .Q(data_0_synt[5])
  );
  (* src = "synth_etapaflops2.v:10" *)
  DFF _06_ (
    .C(clk_f),
    .D(data_0rf_synt[6]),
    .Q(data_0_synt[6])
  );
  (* src = "synth_etapaflops2.v:10" *)
  DFF _07_ (
    .C(clk_f),
    .D(data_0rf_synt[7]),
    .Q(data_0_synt[7])
  );
  (* src = "synth_etapaflops2.v:10" *)
  DFF _08_ (
    .C(clk_f),
    .D(data_1ps_synt1[0]),
    .Q(data_3_synt[0])
  );
  (* src = "synth_etapaflops2.v:10" *)
  DFF _09_ (
    .C(clk_f),
    .D(data_1ps_synt1[1]),
    .Q(data_3_synt[1])
  );
  (* src = "synth_etapaflops2.v:10" *)
  DFF _10_ (
    .C(clk_f),
    .D(data_1ps_synt1[2]),
    .Q(data_3_synt[2])
  );
  (* src = "synth_etapaflops2.v:10" *)
  DFF _11_ (
    .C(clk_f),
    .D(data_1ps_synt1[3]),
    .Q(data_3_synt[3])
  );
  (* src = "synth_etapaflops2.v:10" *)
  DFF _12_ (
    .C(clk_f),
    .D(data_1ps_synt1[4]),
    .Q(data_3_synt[4])
  );
  (* src = "synth_etapaflops2.v:10" *)
  DFF _13_ (
    .C(clk_f),
    .D(data_1ps_synt1[5]),
    .Q(data_3_synt[5])
  );
  (* src = "synth_etapaflops2.v:10" *)
  DFF _14_ (
    .C(clk_f),
    .D(data_1ps_synt1[6]),
    .Q(data_3_synt[6])
  );
  (* src = "synth_etapaflops2.v:10" *)
  DFF _15_ (
    .C(clk_f),
    .D(data_1ps_synt1[7]),
    .Q(data_3_synt[7])
  );
  (* src = "synth_etapaflops2.v:10" *)
  DFF _16_ (
    .C(clk_f),
    .D(data_1rf_synt[0]),
    .Q(data_1_synt[0])
  );
  (* src = "synth_etapaflops2.v:10" *)
  DFF _17_ (
    .C(clk_f),
    .D(data_1rf_synt[1]),
    .Q(data_1_synt[1])
  );
  (* src = "synth_etapaflops2.v:10" *)
  DFF _18_ (
    .C(clk_f),
    .D(data_1rf_synt[2]),
    .Q(data_1_synt[2])
  );
  (* src = "synth_etapaflops2.v:10" *)
  DFF _19_ (
    .C(clk_f),
    .D(data_1rf_synt[3]),
    .Q(data_1_synt[3])
  );
  (* src = "synth_etapaflops2.v:10" *)
  DFF _20_ (
    .C(clk_f),
    .D(data_1rf_synt[4]),
    .Q(data_1_synt[4])
  );
  (* src = "synth_etapaflops2.v:10" *)
  DFF _21_ (
    .C(clk_f),
    .D(data_1rf_synt[5]),
    .Q(data_1_synt[5])
  );
  (* src = "synth_etapaflops2.v:10" *)
  DFF _22_ (
    .C(clk_f),
    .D(data_1rf_synt[6]),
    .Q(data_1_synt[6])
  );
  (* src = "synth_etapaflops2.v:10" *)
  DFF _23_ (
    .C(clk_f),
    .D(data_1rf_synt[7]),
    .Q(data_1_synt[7])
  );
  (* src = "synth_etapaflops2.v:10" *)
  DFF _24_ (
    .C(clk_f),
    .D(data_1ps_synt0[0]),
    .Q(data_2_synt[0])
  );
  (* src = "synth_etapaflops2.v:10" *)
  DFF _25_ (
    .C(clk_f),
    .D(data_1ps_synt0[1]),
    .Q(data_2_synt[1])
  );
  (* src = "synth_etapaflops2.v:10" *)
  DFF _26_ (
    .C(clk_f),
    .D(data_1ps_synt0[2]),
    .Q(data_2_synt[2])
  );
  (* src = "synth_etapaflops2.v:10" *)
  DFF _27_ (
    .C(clk_f),
    .D(data_1ps_synt0[3]),
    .Q(data_2_synt[3])
  );
  (* src = "synth_etapaflops2.v:10" *)
  DFF _28_ (
    .C(clk_f),
    .D(data_1ps_synt0[4]),
    .Q(data_2_synt[4])
  );
  (* src = "synth_etapaflops2.v:10" *)
  DFF _29_ (
    .C(clk_f),
    .D(data_1ps_synt0[5]),
    .Q(data_2_synt[5])
  );
  (* src = "synth_etapaflops2.v:10" *)
  DFF _30_ (
    .C(clk_f),
    .D(data_1ps_synt0[6]),
    .Q(data_2_synt[6])
  );
  (* src = "synth_etapaflops2.v:10" *)
  DFF _31_ (
    .C(clk_f),
    .D(data_1ps_synt0[7]),
    .Q(data_2_synt[7])
  );
  (* src = "synth_etapaflops2.v:10" *)
  DFF _32_ (
    .C(clk_f),
    .D(data_1ps_synt2),
    .Q(valid_0_synt)
  );
  (* src = "synth_etapaflops2.v:10" *)
  DFF _33_ (
    .C(clk_f),
    .D(data_1ps_synt3),
    .Q(valid_1_synt)
  );
  (* src = "synth_etapaflops2.v:10" *)
  DFF _34_ (
    .C(clk_f),
    .D(data_1ps_synt4),
    .Q(valid_2_synt)
  );
  (* src = "synth_etapaflops2.v:10" *)
  DFF _35_ (
    .C(clk_f),
    .D(data_1ps_synt5),
    .Q(valid_3_synt)
  );
endmodule

(* src = "synth_recirculacion.v:11" *)
module synth_recirculacion(data_0rf_synt, data_1rf_synt, data_1ps_synt0, data_1ps_synt1, data_1ps_synt2, data_1ps_synt3, data_1ps_synt4, data_1ps_synt5, data_1ps_synt6, data_1ps_synt7, data_1ps_synt8, data_1ps_synt9, data_2ps_synt0, data_2ps_synt1, data_2ps_synt2, data_2ps_synt3, data_0ps_synt, data_1ps_synt, data_2ps_synt, data_3ps_synt, valid_0ps_synt, valid_1ps_synt, valid_2ps_synt, valid_3ps_synt, IDLE_OUT_synt, clk_f);
  wire _000_;
  wire _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  wire _060_;
  wire _061_;
  wire _062_;
  wire _063_;
  wire _064_;
  wire _065_;
  wire _066_;
  wire _067_;
  wire _068_;
  wire _069_;
  wire _070_;
  wire _071_;
  (* src = "synth_recirculacion.v:21" *)
  input IDLE_OUT_synt;
  (* src = "synth_recirculacion.v:21" *)
  input clk_f;
  (* src = "synth_recirculacion.v:19" *)
  input [7:0] data_0ps_synt;
  (* src = "synth_recirculacion.v:11" *)
  output [7:0] data_0rf_synt;
  (* src = "synth_recirculacion.v:15" *)
  output [7:0] data_1ps_synt6;
  (* src = "synth_recirculacion.v:19" *)
  input [7:0] data_1ps_synt;
  (* src = "synth_recirculacion.v:11" *)
  output [7:0] data_1rf_synt;
  (* src = "synth_recirculacion.v:15" *)
  output [7:0] data_1ps_synt7;
  (* src = "synth_recirculacion.v:19" *)
  input [7:0] data_2ps_synt;
  (* src = "synth_recirculacion.v:12" *)
  output [7:0] data_1ps_synt0;
  (* src = "synth_recirculacion.v:16" *)
  output [7:0] data_1ps_synt8;
  (* src = "synth_recirculacion.v:19" *)
  input [7:0] data_3ps_synt;
  (* src = "synth_recirculacion.v:12" *)
  output [7:0] data_1ps_synt1;
  (* src = "synth_recirculacion.v:16" *)
  output [7:0] data_1ps_synt9;
  (* src = "synth_recirculacion.v:20" *)
  input valid_0ps_synt;
  (* src = "synth_recirculacion.v:13" *)
  output data_1ps_synt2;
  (* src = "synth_recirculacion.v:17" *)
  output data_2ps_synt0;
  (* src = "synth_recirculacion.v:20" *)
  input valid_1ps_synt;
  (* src = "synth_recirculacion.v:13" *)
  output data_1ps_synt3;
  (* src = "synth_recirculacion.v:17" *)
  output data_2ps_synt1;
  (* src = "synth_recirculacion.v:20" *)
  input valid_2ps_synt;
  (* src = "synth_recirculacion.v:14" *)
  output data_1ps_synt4;
  (* src = "synth_recirculacion.v:18" *)
  output data_2ps_synt2;
  (* src = "synth_recirculacion.v:20" *)
  input valid_3ps_synt;
  (* src = "synth_recirculacion.v:14" *)
  output data_1ps_synt5;
  (* src = "synth_recirculacion.v:18" *)
  output data_2ps_synt3;
  NOT _072_ (
    .A(valid_3ps_synt),
    .Y(_000_)
  );
  NOT _073_ (
    .A(data_3ps_synt[0]),
    .Y(_001_)
  );
  NOT _074_ (
    .A(data_3ps_synt[1]),
    .Y(_002_)
  );
  NOT _075_ (
    .A(data_3ps_synt[2]),
    .Y(_003_)
  );
  NOT _076_ (
    .A(data_3ps_synt[3]),
    .Y(_004_)
  );
  NOT _077_ (
    .A(data_3ps_synt[4]),
    .Y(_005_)
  );
  NOT _078_ (
    .A(data_3ps_synt[5]),
    .Y(_006_)
  );
  NOT _079_ (
    .A(data_3ps_synt[6]),
    .Y(_007_)
  );
  NOT _080_ (
    .A(data_3ps_synt[7]),
    .Y(_008_)
  );
  NOT _081_ (
    .A(valid_2ps_synt),
    .Y(_009_)
  );
  NOT _082_ (
    .A(data_1ps_synt[0]),
    .Y(_010_)
  );
  NOT _083_ (
    .A(data_1ps_synt[1]),
    .Y(_011_)
  );
  NOT _084_ (
    .A(data_1ps_synt[2]),
    .Y(_012_)
  );
  NOT _085_ (
    .A(data_1ps_synt[3]),
    .Y(_013_)
  );
  NOT _086_ (
    .A(data_1ps_synt[4]),
    .Y(_014_)
  );
  NOT _087_ (
    .A(data_1ps_synt[5]),
    .Y(_015_)
  );
  NOT _088_ (
    .A(data_1ps_synt[6]),
    .Y(_016_)
  );
  NOT _089_ (
    .A(data_1ps_synt[7]),
    .Y(_017_)
  );
  NOT _090_ (
    .A(data_2ps_synt[0]),
    .Y(_018_)
  );
  NOT _091_ (
    .A(data_2ps_synt[1]),
    .Y(_019_)
  );
  NOT _092_ (
    .A(data_2ps_synt[2]),
    .Y(_020_)
  );
  NOT _093_ (
    .A(data_2ps_synt[3]),
    .Y(_021_)
  );
  NOT _094_ (
    .A(data_2ps_synt[4]),
    .Y(_022_)
  );
  NOT _095_ (
    .A(data_2ps_synt[5]),
    .Y(_023_)
  );
  NOT _096_ (
    .A(data_2ps_synt[6]),
    .Y(_024_)
  );
  NOT _097_ (
    .A(data_2ps_synt[7]),
    .Y(_025_)
  );
  NOT _098_ (
    .A(valid_1ps_synt),
    .Y(_026_)
  );
  NOT _099_ (
    .A(valid_0ps_synt),
    .Y(_027_)
  );
  NOT _100_ (
    .A(data_0ps_synt[0]),
    .Y(_028_)
  );
  NOT _101_ (
    .A(data_0ps_synt[1]),
    .Y(_029_)
  );
  NOT _102_ (
    .A(data_0ps_synt[2]),
    .Y(_030_)
  );
  NOT _103_ (
    .A(data_0ps_synt[3]),
    .Y(_031_)
  );
  NOT _104_ (
    .A(data_0ps_synt[4]),
    .Y(_032_)
  );
  NOT _105_ (
    .A(data_0ps_synt[5]),
    .Y(_033_)
  );
  NOT _106_ (
    .A(data_0ps_synt[6]),
    .Y(_034_)
  );
  NOT _107_ (
    .A(data_0ps_synt[7]),
    .Y(_035_)
  );
  NOR _108_ (
    .A(_000_),
    .B(IDLE_OUT_synt),
    .Y(data_2ps_synt3)
  );
  NOR _109_ (
    .A(IDLE_OUT_synt),
    .B(_001_),
    .Y(data_1ps_synt9[0])
  );
  NOR _110_ (
    .A(IDLE_OUT_synt),
    .B(_002_),
    .Y(data_1ps_synt9[1])
  );
  NOR _111_ (
    .A(IDLE_OUT_synt),
    .B(_003_),
    .Y(data_1ps_synt9[2])
  );
  NOR _112_ (
    .A(IDLE_OUT_synt),
    .B(_004_),
    .Y(data_1ps_synt9[3])
  );
  NOR _113_ (
    .A(IDLE_OUT_synt),
    .B(_005_),
    .Y(data_1ps_synt9[4])
  );
  NOR _114_ (
    .A(IDLE_OUT_synt),
    .B(_006_),
    .Y(data_1ps_synt9[5])
  );
  NOR _115_ (
    .A(IDLE_OUT_synt),
    .B(_007_),
    .Y(data_1ps_synt9[6])
  );
  NOR _116_ (
    .A(IDLE_OUT_synt),
    .B(_008_),
    .Y(data_1ps_synt9[7])
  );
  NOR _117_ (
    .A(IDLE_OUT_synt),
    .B(_009_),
    .Y(data_2ps_synt2)
  );
  NOR _118_ (
    .A(IDLE_OUT_synt),
    .B(_010_),
    .Y(data_1ps_synt7[0])
  );
  NOR _119_ (
    .A(IDLE_OUT_synt),
    .B(_011_),
    .Y(data_1ps_synt7[1])
  );
  NOR _120_ (
    .A(IDLE_OUT_synt),
    .B(_012_),
    .Y(data_1ps_synt7[2])
  );
  NOR _121_ (
    .A(IDLE_OUT_synt),
    .B(_013_),
    .Y(data_1ps_synt7[3])
  );
  NOR _122_ (
    .A(IDLE_OUT_synt),
    .B(_014_),
    .Y(data_1ps_synt7[4])
  );
  NOR _123_ (
    .A(IDLE_OUT_synt),
    .B(_015_),
    .Y(data_1ps_synt7[5])
  );
  NOR _124_ (
    .A(IDLE_OUT_synt),
    .B(_016_),
    .Y(data_1ps_synt7[6])
  );
  NOR _125_ (
    .A(IDLE_OUT_synt),
    .B(_017_),
    .Y(data_1ps_synt7[7])
  );
  NOR _126_ (
    .A(IDLE_OUT_synt),
    .B(_018_),
    .Y(data_1ps_synt8[0])
  );
  NOR _127_ (
    .A(IDLE_OUT_synt),
    .B(_019_),
    .Y(data_1ps_synt8[1])
  );
  NOR _128_ (
    .A(IDLE_OUT_synt),
    .B(_020_),
    .Y(data_1ps_synt8[2])
  );
  NOR _129_ (
    .A(IDLE_OUT_synt),
    .B(_021_),
    .Y(data_1ps_synt8[3])
  );
  NOR _130_ (
    .A(IDLE_OUT_synt),
    .B(_022_),
    .Y(data_1ps_synt8[4])
  );
  NOR _131_ (
    .A(IDLE_OUT_synt),
    .B(_023_),
    .Y(data_1ps_synt8[5])
  );
  NOR _132_ (
    .A(IDLE_OUT_synt),
    .B(_024_),
    .Y(data_1ps_synt8[6])
  );
  NOR _133_ (
    .A(IDLE_OUT_synt),
    .B(_025_),
    .Y(data_1ps_synt8[7])
  );
  NOR _134_ (
    .A(IDLE_OUT_synt),
    .B(_026_),
    .Y(data_2ps_synt1)
  );
  NAND _135_ (
    .A(valid_3ps_synt),
    .B(IDLE_OUT_synt),
    .Y(_036_)
  );
  NOT _136_ (
    .A(_036_),
    .Y(data_1ps_synt5)
  );
  NOR _137_ (
    .A(IDLE_OUT_synt),
    .B(_027_),
    .Y(data_2ps_synt0)
  );
  NOR _138_ (
    .A(IDLE_OUT_synt),
    .B(_028_),
    .Y(data_1ps_synt6[0])
  );
  NOR _139_ (
    .A(IDLE_OUT_synt),
    .B(_029_),
    .Y(data_1ps_synt6[1])
  );
  NOR _140_ (
    .A(IDLE_OUT_synt),
    .B(_030_),
    .Y(data_1ps_synt6[2])
  );
  NOR _141_ (
    .A(IDLE_OUT_synt),
    .B(_031_),
    .Y(data_1ps_synt6[3])
  );
  NOR _142_ (
    .A(IDLE_OUT_synt),
    .B(_032_),
    .Y(data_1ps_synt6[4])
  );
  NOR _143_ (
    .A(IDLE_OUT_synt),
    .B(_033_),
    .Y(data_1ps_synt6[5])
  );
  NOR _144_ (
    .A(IDLE_OUT_synt),
    .B(_034_),
    .Y(data_1ps_synt6[6])
  );
  NOR _145_ (
    .A(IDLE_OUT_synt),
    .B(_035_),
    .Y(data_1ps_synt6[7])
  );
  NAND _146_ (
    .A(IDLE_OUT_synt),
    .B(data_2ps_synt[0]),
    .Y(_037_)
  );
  NOT _147_ (
    .A(_037_),
    .Y(data_1ps_synt0[0])
  );
  NAND _148_ (
    .A(IDLE_OUT_synt),
    .B(data_2ps_synt[1]),
    .Y(_038_)
  );
  NOT _149_ (
    .A(_038_),
    .Y(data_1ps_synt0[1])
  );
  NAND _150_ (
    .A(IDLE_OUT_synt),
    .B(data_2ps_synt[2]),
    .Y(_039_)
  );
  NOT _151_ (
    .A(_039_),
    .Y(data_1ps_synt0[2])
  );
  NAND _152_ (
    .A(IDLE_OUT_synt),
    .B(data_2ps_synt[3]),
    .Y(_040_)
  );
  NOT _153_ (
    .A(_040_),
    .Y(data_1ps_synt0[3])
  );
  NAND _154_ (
    .A(IDLE_OUT_synt),
    .B(data_2ps_synt[4]),
    .Y(_041_)
  );
  NOT _155_ (
    .A(_041_),
    .Y(data_1ps_synt0[4])
  );
  NAND _156_ (
    .A(IDLE_OUT_synt),
    .B(data_2ps_synt[5]),
    .Y(_042_)
  );
  NOT _157_ (
    .A(_042_),
    .Y(data_1ps_synt0[5])
  );
  NAND _158_ (
    .A(IDLE_OUT_synt),
    .B(data_2ps_synt[6]),
    .Y(_043_)
  );
  NOT _159_ (
    .A(_043_),
    .Y(data_1ps_synt0[6])
  );
  NAND _160_ (
    .A(IDLE_OUT_synt),
    .B(data_2ps_synt[7]),
    .Y(_044_)
  );
  NOT _161_ (
    .A(_044_),
    .Y(data_1ps_synt0[7])
  );
  NAND _162_ (
    .A(IDLE_OUT_synt),
    .B(data_3ps_synt[0]),
    .Y(_045_)
  );
  NOT _163_ (
    .A(_045_),
    .Y(data_1ps_synt1[0])
  );
  NAND _164_ (
    .A(IDLE_OUT_synt),
    .B(data_3ps_synt[1]),
    .Y(_046_)
  );
  NOT _165_ (
    .A(_046_),
    .Y(data_1ps_synt1[1])
  );
  NAND _166_ (
    .A(IDLE_OUT_synt),
    .B(data_3ps_synt[2]),
    .Y(_047_)
  );
  NOT _167_ (
    .A(_047_),
    .Y(data_1ps_synt1[2])
  );
  NAND _168_ (
    .A(IDLE_OUT_synt),
    .B(data_3ps_synt[3]),
    .Y(_048_)
  );
  NOT _169_ (
    .A(_048_),
    .Y(data_1ps_synt1[3])
  );
  NAND _170_ (
    .A(IDLE_OUT_synt),
    .B(data_3ps_synt[4]),
    .Y(_049_)
  );
  NOT _171_ (
    .A(_049_),
    .Y(data_1ps_synt1[4])
  );
  NAND _172_ (
    .A(IDLE_OUT_synt),
    .B(data_3ps_synt[5]),
    .Y(_050_)
  );
  NOT _173_ (
    .A(_050_),
    .Y(data_1ps_synt1[5])
  );
  NAND _174_ (
    .A(IDLE_OUT_synt),
    .B(data_3ps_synt[6]),
    .Y(_051_)
  );
  NOT _175_ (
    .A(_051_),
    .Y(data_1ps_synt1[6])
  );
  NAND _176_ (
    .A(IDLE_OUT_synt),
    .B(data_3ps_synt[7]),
    .Y(_052_)
  );
  NOT _177_ (
    .A(_052_),
    .Y(data_1ps_synt1[7])
  );
  NAND _178_ (
    .A(IDLE_OUT_synt),
    .B(valid_2ps_synt),
    .Y(_053_)
  );
  NOT _179_ (
    .A(_053_),
    .Y(data_1ps_synt4)
  );
  NAND _180_ (
    .A(IDLE_OUT_synt),
    .B(valid_0ps_synt),
    .Y(_054_)
  );
  NOT _181_ (
    .A(_054_),
    .Y(data_1ps_synt2)
  );
  NAND _182_ (
    .A(IDLE_OUT_synt),
    .B(valid_1ps_synt),
    .Y(_055_)
  );
  NOT _183_ (
    .A(_055_),
    .Y(data_1ps_synt3)
  );
  NAND _184_ (
    .A(IDLE_OUT_synt),
    .B(data_1ps_synt[0]),
    .Y(_056_)
  );
  NOT _185_ (
    .A(_056_),
    .Y(data_1rf_synt[0])
  );
  NAND _186_ (
    .A(IDLE_OUT_synt),
    .B(data_1ps_synt[1]),
    .Y(_057_)
  );
  NOT _187_ (
    .A(_057_),
    .Y(data_1rf_synt[1])
  );
  NAND _188_ (
    .A(IDLE_OUT_synt),
    .B(data_1ps_synt[2]),
    .Y(_058_)
  );
  NOT _189_ (
    .A(_058_),
    .Y(data_1rf_synt[2])
  );
  NAND _190_ (
    .A(IDLE_OUT_synt),
    .B(data_1ps_synt[3]),
    .Y(_059_)
  );
  NOT _191_ (
    .A(_059_),
    .Y(data_1rf_synt[3])
  );
  NAND _192_ (
    .A(IDLE_OUT_synt),
    .B(data_1ps_synt[4]),
    .Y(_060_)
  );
  NOT _193_ (
    .A(_060_),
    .Y(data_1rf_synt[4])
  );
  NAND _194_ (
    .A(IDLE_OUT_synt),
    .B(data_1ps_synt[5]),
    .Y(_061_)
  );
  NOT _195_ (
    .A(_061_),
    .Y(data_1rf_synt[5])
  );
  NAND _196_ (
    .A(IDLE_OUT_synt),
    .B(data_1ps_synt[6]),
    .Y(_062_)
  );
  NOT _197_ (
    .A(_062_),
    .Y(data_1rf_synt[6])
  );
  NAND _198_ (
    .A(IDLE_OUT_synt),
    .B(data_1ps_synt[7]),
    .Y(_063_)
  );
  NOT _199_ (
    .A(_063_),
    .Y(data_1rf_synt[7])
  );
  NAND _200_ (
    .A(IDLE_OUT_synt),
    .B(data_0ps_synt[0]),
    .Y(_064_)
  );
  NOT _201_ (
    .A(_064_),
    .Y(data_0rf_synt[0])
  );
  NAND _202_ (
    .A(IDLE_OUT_synt),
    .B(data_0ps_synt[1]),
    .Y(_065_)
  );
  NOT _203_ (
    .A(_065_),
    .Y(data_0rf_synt[1])
  );
  NAND _204_ (
    .A(IDLE_OUT_synt),
    .B(data_0ps_synt[2]),
    .Y(_066_)
  );
  NOT _205_ (
    .A(_066_),
    .Y(data_0rf_synt[2])
  );
  NAND _206_ (
    .A(IDLE_OUT_synt),
    .B(data_0ps_synt[3]),
    .Y(_067_)
  );
  NOT _207_ (
    .A(_067_),
    .Y(data_0rf_synt[3])
  );
  NAND _208_ (
    .A(IDLE_OUT_synt),
    .B(data_0ps_synt[4]),
    .Y(_068_)
  );
  NOT _209_ (
    .A(_068_),
    .Y(data_0rf_synt[4])
  );
  NAND _210_ (
    .A(IDLE_OUT_synt),
    .B(data_0ps_synt[5]),
    .Y(_069_)
  );
  NOT _211_ (
    .A(_069_),
    .Y(data_0rf_synt[5])
  );
  NAND _212_ (
    .A(IDLE_OUT_synt),
    .B(data_0ps_synt[6]),
    .Y(_070_)
  );
  NOT _213_ (
    .A(_070_),
    .Y(data_0rf_synt[6])
  );
  NAND _214_ (
    .A(IDLE_OUT_synt),
    .B(data_0ps_synt[7]),
    .Y(_071_)
  );
  NOT _215_ (
    .A(_071_),
    .Y(data_0rf_synt[7])
  );
endmodule

(* top =  1  *)
(* src = "synth_recirculacion_sincronico.v:5" *)
module synth_recirculacion_sincronico(data_0_synt, data_1_synt, data_2_synt, data_3_synt, valid_0_synt, valid_1_synt, valid_2_synt, valid_3_synt, data_1ps_synt6, data_1ps_synt7, data_1ps_synt8, data_1ps_synt9, data_2ps_synt0, data_2ps_synt1, data_2ps_synt2, data_2ps_synt3, data_0p, data_1p, data_2p, data_3p, valid_0p, valid_1p, valid_2p, valid_3p, IDLE_OUT_synt, clk_f);
  (* src = "synth_recirculacion_sincronico.v:17" *)
  input IDLE_OUT_synt;
  (* src = "synth_recirculacion_sincronico.v:17" *)
  input clk_f;
  (* src = "synth_recirculacion_sincronico.v:5" *)
  output [7:0] data_0_synt;
  (* src = "synth_recirculacion_sincronico.v:13" *)
  input [7:0] data_0p;
  (* src = "synth_recirculacion_sincronico.v:21" *)
  wire [7:0] data_0ps_synt;
  (* src = "synth_recirculacion_sincronico.v:22" *)
  wire [7:0] data_0rf_synt;
  (* src = "synth_recirculacion_sincronico.v:9" *)
  output [7:0] data_1ps_synt6;
  (* src = "synth_recirculacion_sincronico.v:5" *)
  output [7:0] data_1_synt;
  (* src = "synth_recirculacion_sincronico.v:13" *)
  input [7:0] data_1p;
  (* src = "synth_recirculacion_sincronico.v:23" *)
  wire [7:0] data_1ps_synt;
  (* src = "synth_recirculacion_sincronico.v:24" *)
  wire [7:0] data_1rf_synt;
  (* src = "synth_recirculacion_sincronico.v:9" *)
  output [7:0] data_1ps_synt7;
  (* src = "synth_recirculacion_sincronico.v:6" *)
  output [7:0] data_2_synt;
  (* src = "synth_recirculacion_sincronico.v:14" *)
  input [7:0] data_2p;
  (* src = "synth_recirculacion_sincronico.v:25" *)
  wire [7:0] data_2ps_synt;
  (* src = "synth_recirculacion_sincronico.v:26" *)
  wire [7:0] data_1ps_synt0;
  (* src = "synth_recirculacion_sincronico.v:10" *)
  output [7:0] data_1ps_synt8;
  (* src = "synth_recirculacion_sincronico.v:6" *)
  output [7:0] data_3_synt;
  (* src = "synth_recirculacion_sincronico.v:14" *)
  input [7:0] data_3p;
  (* src = "synth_recirculacion_sincronico.v:27" *)
  wire [7:0] data_3ps_synt;
  (* src = "synth_recirculacion_sincronico.v:28" *)
  wire [7:0] data_1ps_synt1;
  (* src = "synth_recirculacion_sincronico.v:10" *)
  output [7:0] data_1ps_synt9;
  (* src = "synth_recirculacion_sincronico.v:7" *)
  output valid_0_synt;
  (* src = "synth_recirculacion_sincronico.v:15" *)
  input valid_0p;
  (* src = "synth_recirculacion_sincronico.v:29" *)
  wire valid_0ps_synt;
  (* src = "synth_recirculacion_sincronico.v:30" *)
  wire data_1ps_synt2;
  (* src = "synth_recirculacion_sincronico.v:11" *)
  output data_2ps_synt0;
  (* src = "synth_recirculacion_sincronico.v:7" *)
  output valid_1_synt;
  (* src = "synth_recirculacion_sincronico.v:15" *)
  input valid_1p;
  (* src = "synth_recirculacion_sincronico.v:31" *)
  wire valid_1ps_synt;
  (* src = "synth_recirculacion_sincronico.v:32" *)
  wire data_1ps_synt3;
  (* src = "synth_recirculacion_sincronico.v:11" *)
  output data_2ps_synt1;
  (* src = "synth_recirculacion_sincronico.v:8" *)
  output valid_2_synt;
  (* src = "synth_recirculacion_sincronico.v:16" *)
  input valid_2p;
  (* src = "synth_recirculacion_sincronico.v:33" *)
  wire valid_2ps_synt;
  (* src = "synth_recirculacion_sincronico.v:34" *)
  wire data_1ps_synt4;
  (* src = "synth_recirculacion_sincronico.v:12" *)
  output data_2ps_synt2;
  (* src = "synth_recirculacion_sincronico.v:8" *)
  output valid_3_synt;
  (* src = "synth_recirculacion_sincronico.v:16" *)
  input valid_3p;
  (* src = "synth_recirculacion_sincronico.v:35" *)
  wire valid_3ps_synt;
  (* src = "synth_recirculacion_sincronico.v:36" *)
  wire data_1ps_synt5;
  (* src = "synth_recirculacion_sincronico.v:12" *)
  output data_2ps_synt3;
  (* module_not_derived = 32'd1 *)
  (* src = "synth_recirculacion_sincronico.v:38" *)
  synth_etapaflops1 FLOPS1 (
    .clk_f(clk_f),
    .data_0p(data_0p),
    .data_0ps_synt(data_0ps_synt),
    .data_1p(data_1p),
    .data_1ps_synt(data_1ps_synt),
    .data_2p(data_2p),
    .data_2ps_synt(data_2ps_synt),
    .data_3p(data_3p),
    .data_3ps_synt(data_3ps_synt),
    .valid_0p(valid_0p),
    .valid_0ps_synt(valid_0ps_synt),
    .valid_1p(valid_1p),
    .valid_1ps_synt(valid_1ps_synt),
    .valid_2p(valid_2p),
    .valid_2ps_synt(valid_2ps_synt),
    .valid_3p(valid_3p),
    .valid_3ps_synt(valid_3ps_synt)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "synth_recirculacion_sincronico.v:86" *)
  synth_etapaflops2 FLOPS2 (
    .clk_f(clk_f),
    .data_0_synt(data_0_synt),
    .data_0rf_synt(data_0rf_synt),
    .data_1_synt(data_1_synt),
    .data_1rf_synt(data_1rf_synt),
    .data_2_synt(data_2_synt),
    .data_1ps_synt0(data_1ps_synt0),
    .data_3_synt(data_3_synt),
    .data_1ps_synt1(data_1ps_synt1),
    .valid_0_synt(valid_0_synt),
    .data_1ps_synt2(data_1ps_synt2),
    .valid_1_synt(valid_1_synt),
    .data_1ps_synt3(data_1ps_synt3),
    .valid_2_synt(valid_2_synt),
    .data_1ps_synt4(data_1ps_synt4),
    .valid_3_synt(valid_3_synt),
    .data_1ps_synt5(data_1ps_synt5)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "synth_recirculacion_sincronico.v:58" *)
  synth_recirculacion RECIRCULACION (
    .IDLE_OUT_synt(IDLE_OUT_synt),
    .data_0ps_synt(data_0ps_synt),
    .data_0rf_synt(data_0rf_synt),
    .data_1ps_synt6(data_1ps_synt6),
    .data_1ps_synt(data_1ps_synt),
    .data_1rf_synt(data_1rf_synt),
    .data_1ps_synt7(data_1ps_synt7),
    .data_2ps_synt(data_2ps_synt),
    .data_1ps_synt0(data_1ps_synt0),
    .data_1ps_synt8(data_1ps_synt8),
    .data_3ps_synt(data_3ps_synt),
    .data_1ps_synt1(data_1ps_synt1),
    .data_1ps_synt9(data_1ps_synt9),
    .valid_0ps_synt(valid_0ps_synt),
    .data_1ps_synt2(data_1ps_synt2),
    .data_2ps_synt0(data_2ps_synt0),
    .valid_1ps_synt(valid_1ps_synt),
    .data_1ps_synt3(data_1ps_synt3),
    .data_2ps_synt1(data_2ps_synt1),
    .valid_2ps_synt(valid_2ps_synt),
    .data_1ps_synt4(data_1ps_synt4),
    .data_2ps_synt2(data_2ps_synt2),
    .valid_3ps_synt(valid_3ps_synt),
    .data_1ps_synt5(data_1ps_synt5),
    .data_2ps_synt3(data_2ps_synt3)
  );
endmodule