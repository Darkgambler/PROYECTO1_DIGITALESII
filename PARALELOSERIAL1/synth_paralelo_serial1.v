/* Generated by Yosys 0.9 (git sha1 1979e0b) */

(* top =  1  *)
(* src = "synth_paralelo_serial1.v:1" *)
module synth_paralelo_serial1(data_out_synt, data_000, clk_32f, clk_4f, valid_000, reset);
  (* src = "synth_paralelo_serial1.v:14" *)
  wire [2:0] _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  wire _15_;
  wire _16_;
  wire _17_;
  wire _18_;
  wire _19_;
  wire _20_;
  wire _21_;
  wire _22_;
  wire _23_;
  wire _24_;
  wire _25_;
  wire _26_;
  wire _27_;
  wire _28_;
  wire _29_;
  wire _30_;
  wire _31_;
  wire _32_;
  wire _33_;
  wire _34_;
  wire _35_;
  wire _36_;
  wire _37_;
  wire _38_;
  wire _39_;
  wire _40_;
  wire _41_;
  (* src = "synth_paralelo_serial1.v:3" *)
  input clk_32f;
  (* src = "synth_paralelo_serial1.v:3" *)
  input clk_4f;
  (* src = "synth_paralelo_serial1.v:7" *)
  wire [2:0] counter;
  (* src = "synth_paralelo_serial1.v:2" *)
  input [7:0] data_000;
  (* src = "synth_paralelo_serial1.v:1" *)
  output data_out_synt;
  (* src = "synth_paralelo_serial1.v:4" *)
  input reset;
  (* src = "synth_paralelo_serial1.v:8" *)
  wire reset_s;
  (* src = "synth_paralelo_serial1.v:4" *)
  input valid_000;
  NOT _42_ (
    .A(reset_s),
    .Y(_01_)
  );
  NOT _43_ (
    .A(counter[1]),
    .Y(_02_)
  );
  NOT _44_ (
    .A(counter[0]),
    .Y(_03_)
  );
  NOT _45_ (
    .A(counter[2]),
    .Y(_04_)
  );
  NOT _46_ (
    .A(data_000[2]),
    .Y(_05_)
  );
  NOT _47_ (
    .A(data_000[6]),
    .Y(_06_)
  );
  NOR _48_ (
    .A(_01_),
    .B(counter[0]),
    .Y(_00_[0])
  );
  NAND _49_ (
    .A(counter[1]),
    .B(counter[0]),
    .Y(_07_)
  );
  NOT _50_ (
    .A(_07_),
    .Y(_08_)
  );
  NAND _51_ (
    .A(_02_),
    .B(_03_),
    .Y(_09_)
  );
  NAND _52_ (
    .A(reset_s),
    .B(_09_),
    .Y(_10_)
  );
  NOR _53_ (
    .A(_08_),
    .B(_10_),
    .Y(_00_[1])
  );
  NOR _54_ (
    .A(_04_),
    .B(_07_),
    .Y(_11_)
  );
  NAND _55_ (
    .A(_04_),
    .B(_07_),
    .Y(_12_)
  );
  NAND _56_ (
    .A(reset_s),
    .B(_12_),
    .Y(_13_)
  );
  NOR _57_ (
    .A(_11_),
    .B(_13_),
    .Y(_00_[2])
  );
  NAND _58_ (
    .A(reset_s),
    .B(valid_000),
    .Y(_14_)
  );
  NOT _59_ (
    .A(_14_),
    .Y(_15_)
  );
  NOR _60_ (
    .A(counter[2]),
    .B(_14_),
    .Y(_16_)
  );
  NAND _61_ (
    .A(data_000[1]),
    .B(_16_),
    .Y(_17_)
  );
  NOR _62_ (
    .A(data_000[5]),
    .B(_14_),
    .Y(_18_)
  );
  NOR _63_ (
    .A(_04_),
    .B(_18_),
    .Y(_19_)
  );
  NOR _64_ (
    .A(counter[1]),
    .B(_19_),
    .Y(_20_)
  );
  NAND _65_ (
    .A(_17_),
    .B(_20_),
    .Y(_21_)
  );
  NAND _66_ (
    .A(counter[1]),
    .B(_15_),
    .Y(_22_)
  );
  NOR _67_ (
    .A(_04_),
    .B(data_000[7]),
    .Y(_23_)
  );
  NOR _68_ (
    .A(counter[2]),
    .B(data_000[3]),
    .Y(_24_)
  );
  NOR _69_ (
    .A(_23_),
    .B(_24_),
    .Y(_25_)
  );
  NOR _70_ (
    .A(_22_),
    .B(_25_),
    .Y(_26_)
  );
  NOR _71_ (
    .A(_03_),
    .B(_26_),
    .Y(_27_)
  );
  NAND _72_ (
    .A(_21_),
    .B(_27_),
    .Y(_28_)
  );
  NOR _73_ (
    .A(_06_),
    .B(_14_),
    .Y(_29_)
  );
  NOR _74_ (
    .A(_04_),
    .B(_29_),
    .Y(_30_)
  );
  NAND _75_ (
    .A(_05_),
    .B(_16_),
    .Y(_31_)
  );
  NOR _76_ (
    .A(_02_),
    .B(counter[0]),
    .Y(_32_)
  );
  NAND _77_ (
    .A(_31_),
    .B(_32_),
    .Y(_33_)
  );
  NOR _78_ (
    .A(_30_),
    .B(_33_),
    .Y(_34_)
  );
  NOR _79_ (
    .A(data_000[4]),
    .B(_14_),
    .Y(_35_)
  );
  NOR _80_ (
    .A(_04_),
    .B(_35_),
    .Y(_36_)
  );
  NAND _81_ (
    .A(data_000[0]),
    .B(_16_),
    .Y(_37_)
  );
  NOT _82_ (
    .A(_37_),
    .Y(_38_)
  );
  NOR _83_ (
    .A(_36_),
    .B(_38_),
    .Y(_39_)
  );
  NOR _84_ (
    .A(_09_),
    .B(_39_),
    .Y(_40_)
  );
  NOR _85_ (
    .A(_34_),
    .B(_40_),
    .Y(_41_)
  );
  NAND _86_ (
    .A(_28_),
    .B(_41_),
    .Y(data_out_synt)
  );
  (* src = "synth_paralelo_serial1.v:14" *)
  DFF _87_ (
    .C(clk_32f),
    .D(_00_[0]),
    .Q(counter[0])
  );
  (* src = "synth_paralelo_serial1.v:14" *)
  DFF _88_ (
    .C(clk_32f),
    .D(_00_[1]),
    .Q(counter[1])
  );
  (* src = "synth_paralelo_serial1.v:14" *)
  DFF _89_ (
    .C(clk_32f),
    .D(_00_[2]),
    .Q(counter[2])
  );
  (* src = "synth_paralelo_serial1.v:10" *)
  DFF _90_ (
    .C(clk_4f),
    .D(reset),
    .Q(reset_s)
  );
endmodule