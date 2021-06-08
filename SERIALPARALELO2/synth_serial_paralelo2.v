/* Generated by Yosys 0.9 (git sha1 1979e0b) */

(* top =  1  *)
(* src = "synth_serial_paralelo2.v:1" *)
module synth_serial_paralelo2(IDLE_OUT_synt, clk_f, clk_4f, clk_32f, reset, inserter);
  (* src = "synth_serial_paralelo2.v:30" *)
  wire [2:0] _000_;
  (* src = "synth_serial_paralelo2.v:80" *)
  wire _001_;
  (* src = "synth_serial_paralelo2.v:25" *)
  wire [7:0] _002_;
  (* src = "synth_serial_paralelo2.v:16" *)
  wire [2:0] _003_;
  (* src = "synth_serial_paralelo2.v:45" *)
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
  wire _072_;
  wire _073_;
  wire _074_;
  wire _075_;
  wire _076_;
  wire _077_;
  wire _078_;
  wire _079_;
  wire _080_;
  wire _081_;
  wire _082_;
  wire _083_;
  wire _084_;
  wire _085_;
  wire _086_;
  (* src = "synth_serial_paralelo2.v:8" *)
  wire [2:0] BC_counter;
  (* src = "synth_serial_paralelo2.v:1" *)
  output IDLE_OUT_synt;
  (* src = "synth_serial_paralelo2.v:2" *)
  input clk_32f;
  (* src = "synth_serial_paralelo2.v:2" *)
  input clk_4f;
  (* src = "synth_serial_paralelo2.v:2" *)
  input clk_f;
  (* src = "synth_serial_paralelo2.v:9" *)
  wire [7:0] container;
  (* src = "synth_serial_paralelo2.v:8" *)
  wire [2:0] counter;
  (* src = "synth_serial_paralelo2.v:7" *)
  wire idle_in;
  (* src = "synth_serial_paralelo2.v:3" *)
  input inserter;
  (* src = "synth_serial_paralelo2.v:3" *)
  input reset;
  (* src = "synth_serial_paralelo2.v:6" *)
  wire reset_s;
  NOT _087_ (
    .A(container[7]),
    .Y(_038_)
  );
  NOT _088_ (
    .A(counter[2]),
    .Y(_039_)
  );
  NOT _089_ (
    .A(counter[0]),
    .Y(_040_)
  );
  NOT _090_ (
    .A(counter[1]),
    .Y(_041_)
  );
  NOT _091_ (
    .A(BC_counter[2]),
    .Y(_042_)
  );
  NOT _092_ (
    .A(reset_s),
    .Y(_043_)
  );
  NOT _093_ (
    .A(BC_counter[1]),
    .Y(_044_)
  );
  NOT _094_ (
    .A(clk_32f),
    .Y(_005_)
  );
  NAND _095_ (
    .A(BC_counter[2]),
    .B(idle_in),
    .Y(_045_)
  );
  NOR _096_ (
    .A(_043_),
    .B(_045_),
    .Y(_001_)
  );
  NOR _097_ (
    .A(container[0]),
    .B(container[1]),
    .Y(_046_)
  );
  NOT _098_ (
    .A(_046_),
    .Y(_047_)
  );
  NAND _099_ (
    .A(container[3]),
    .B(container[2]),
    .Y(_048_)
  );
  NOR _100_ (
    .A(_047_),
    .B(_048_),
    .Y(_049_)
  );
  NAND _101_ (
    .A(_038_),
    .B(container[6]),
    .Y(_050_)
  );
  NAND _102_ (
    .A(container[5]),
    .B(container[4]),
    .Y(_051_)
  );
  NOT _103_ (
    .A(_051_),
    .Y(_052_)
  );
  NAND _104_ (
    .A(_049_),
    .B(_052_),
    .Y(_053_)
  );
  NOR _105_ (
    .A(_050_),
    .B(_053_),
    .Y(_054_)
  );
  NOR _106_ (
    .A(idle_in),
    .B(_054_),
    .Y(_055_)
  );
  NOR _107_ (
    .A(_043_),
    .B(_055_),
    .Y(_004_)
  );
  NAND _108_ (
    .A(_042_),
    .B(_049_),
    .Y(_056_)
  );
  NOR _109_ (
    .A(container[6]),
    .B(_051_),
    .Y(_057_)
  );
  NAND _110_ (
    .A(container[7]),
    .B(_057_),
    .Y(_058_)
  );
  NOR _111_ (
    .A(_056_),
    .B(_058_),
    .Y(_059_)
  );
  NOR _112_ (
    .A(BC_counter[0]),
    .B(_059_),
    .Y(_060_)
  );
  NOT _113_ (
    .A(_060_),
    .Y(_061_)
  );
  NAND _114_ (
    .A(reset_s),
    .B(_061_),
    .Y(_062_)
  );
  NAND _115_ (
    .A(BC_counter[0]),
    .B(_059_),
    .Y(_063_)
  );
  NOT _116_ (
    .A(_063_),
    .Y(_064_)
  );
  NOR _117_ (
    .A(_062_),
    .B(_064_),
    .Y(_000_[0])
  );
  NAND _118_ (
    .A(_044_),
    .B(_063_),
    .Y(_065_)
  );
  NAND _119_ (
    .A(reset_s),
    .B(_065_),
    .Y(_066_)
  );
  NOR _120_ (
    .A(_044_),
    .B(_063_),
    .Y(_067_)
  );
  NOR _121_ (
    .A(_066_),
    .B(_067_),
    .Y(_000_[1])
  );
  NOR _122_ (
    .A(BC_counter[2]),
    .B(_067_),
    .Y(_068_)
  );
  NOR _123_ (
    .A(_043_),
    .B(_068_),
    .Y(_000_[2])
  );
  NOR _124_ (
    .A(_040_),
    .B(_041_),
    .Y(_069_)
  );
  NAND _125_ (
    .A(counter[0]),
    .B(counter[1]),
    .Y(_070_)
  );
  NAND _126_ (
    .A(counter[2]),
    .B(_069_),
    .Y(_071_)
  );
  NOT _127_ (
    .A(_071_),
    .Y(_072_)
  );
  NAND _128_ (
    .A(inserter),
    .B(_072_),
    .Y(_073_)
  );
  NAND _129_ (
    .A(container[7]),
    .B(_071_),
    .Y(_074_)
  );
  NAND _130_ (
    .A(_073_),
    .B(_074_),
    .Y(_002_[7])
  );
  NOR _131_ (
    .A(counter[0]),
    .B(_041_),
    .Y(_075_)
  );
  NAND _132_ (
    .A(_040_),
    .B(counter[1]),
    .Y(_076_)
  );
  NOR _133_ (
    .A(_039_),
    .B(_076_),
    .Y(_077_)
  );
  NAND _134_ (
    .A(counter[2]),
    .B(_075_),
    .Y(_078_)
  );
  NAND _135_ (
    .A(inserter),
    .B(_077_),
    .Y(_079_)
  );
  NAND _136_ (
    .A(container[6]),
    .B(_078_),
    .Y(_080_)
  );
  NAND _137_ (
    .A(_079_),
    .B(_080_),
    .Y(_002_[6])
  );
  NOR _138_ (
    .A(_040_),
    .B(counter[1]),
    .Y(_081_)
  );
  NAND _139_ (
    .A(counter[0]),
    .B(_041_),
    .Y(_082_)
  );
  NOR _140_ (
    .A(_039_),
    .B(_082_),
    .Y(_083_)
  );
  NAND _141_ (
    .A(counter[2]),
    .B(_081_),
    .Y(_084_)
  );
  NAND _142_ (
    .A(inserter),
    .B(_083_),
    .Y(_085_)
  );
  NAND _143_ (
    .A(container[5]),
    .B(_084_),
    .Y(_086_)
  );
  NAND _144_ (
    .A(_085_),
    .B(_086_),
    .Y(_002_[5])
  );
  NOR _145_ (
    .A(counter[0]),
    .B(counter[1]),
    .Y(_013_)
  );
  NOT _146_ (
    .A(_013_),
    .Y(_014_)
  );
  NAND _147_ (
    .A(counter[2]),
    .B(_013_),
    .Y(_015_)
  );
  NOT _148_ (
    .A(_015_),
    .Y(_016_)
  );
  NAND _149_ (
    .A(inserter),
    .B(_016_),
    .Y(_017_)
  );
  NAND _150_ (
    .A(container[4]),
    .B(_015_),
    .Y(_018_)
  );
  NAND _151_ (
    .A(_017_),
    .B(_018_),
    .Y(_002_[4])
  );
  NOR _152_ (
    .A(counter[2]),
    .B(_070_),
    .Y(_019_)
  );
  NOT _153_ (
    .A(_019_),
    .Y(_020_)
  );
  NAND _154_ (
    .A(inserter),
    .B(_019_),
    .Y(_021_)
  );
  NAND _155_ (
    .A(container[3]),
    .B(_020_),
    .Y(_022_)
  );
  NAND _156_ (
    .A(_021_),
    .B(_022_),
    .Y(_002_[3])
  );
  NOR _157_ (
    .A(counter[2]),
    .B(_076_),
    .Y(_023_)
  );
  NAND _158_ (
    .A(_039_),
    .B(_075_),
    .Y(_024_)
  );
  NAND _159_ (
    .A(inserter),
    .B(_023_),
    .Y(_025_)
  );
  NAND _160_ (
    .A(container[2]),
    .B(_024_),
    .Y(_026_)
  );
  NAND _161_ (
    .A(_025_),
    .B(_026_),
    .Y(_002_[2])
  );
  NOR _162_ (
    .A(counter[2]),
    .B(_082_),
    .Y(_027_)
  );
  NAND _163_ (
    .A(_039_),
    .B(_081_),
    .Y(_028_)
  );
  NAND _164_ (
    .A(inserter),
    .B(_027_),
    .Y(_029_)
  );
  NAND _165_ (
    .A(container[1]),
    .B(_028_),
    .Y(_030_)
  );
  NAND _166_ (
    .A(_029_),
    .B(_030_),
    .Y(_002_[1])
  );
  NOR _167_ (
    .A(counter[2]),
    .B(_014_),
    .Y(_031_)
  );
  NAND _168_ (
    .A(_039_),
    .B(_013_),
    .Y(_032_)
  );
  NAND _169_ (
    .A(inserter),
    .B(_031_),
    .Y(_033_)
  );
  NAND _170_ (
    .A(container[0]),
    .B(_032_),
    .Y(_034_)
  );
  NAND _171_ (
    .A(_033_),
    .B(_034_),
    .Y(_002_[0])
  );
  NOR _172_ (
    .A(counter[0]),
    .B(_043_),
    .Y(_003_[0])
  );
  NAND _173_ (
    .A(reset_s),
    .B(_070_),
    .Y(_035_)
  );
  NOR _174_ (
    .A(_013_),
    .B(_035_),
    .Y(_003_[1])
  );
  NAND _175_ (
    .A(_039_),
    .B(_070_),
    .Y(_036_)
  );
  NAND _176_ (
    .A(reset_s),
    .B(_036_),
    .Y(_037_)
  );
  NOR _177_ (
    .A(_072_),
    .B(_037_),
    .Y(_003_[2])
  );
  NOT _178_ (
    .A(clk_32f),
    .Y(_006_)
  );
  NOT _179_ (
    .A(clk_32f),
    .Y(_007_)
  );
  NOT _180_ (
    .A(clk_32f),
    .Y(_008_)
  );
  NOT _181_ (
    .A(clk_32f),
    .Y(_009_)
  );
  NOT _182_ (
    .A(clk_32f),
    .Y(_010_)
  );
  NOT _183_ (
    .A(clk_32f),
    .Y(_011_)
  );
  NOT _184_ (
    .A(clk_32f),
    .Y(_012_)
  );
  (* src = "synth_serial_paralelo2.v:80" *)
  DFF _185_ (
    .C(clk_f),
    .D(_001_),
    .Q(IDLE_OUT_synt)
  );
  (* src = "synth_serial_paralelo2.v:45" *)
  DFF _186_ (
    .C(clk_4f),
    .D(_004_),
    .Q(idle_in)
  );
  (* src = "synth_serial_paralelo2.v:30" *)
  DFF _187_ (
    .C(clk_4f),
    .D(_000_[0]),
    .Q(BC_counter[0])
  );
  (* src = "synth_serial_paralelo2.v:30" *)
  DFF _188_ (
    .C(clk_4f),
    .D(_000_[1]),
    .Q(BC_counter[1])
  );
  (* src = "synth_serial_paralelo2.v:30" *)
  DFF _189_ (
    .C(clk_4f),
    .D(_000_[2]),
    .Q(BC_counter[2])
  );
  (* src = "synth_serial_paralelo2.v:25" *)
  DFF _190_ (
    .C(_005_),
    .D(_002_[0]),
    .Q(container[0])
  );
  (* src = "synth_serial_paralelo2.v:25" *)
  DFF _191_ (
    .C(_006_),
    .D(_002_[1]),
    .Q(container[1])
  );
  (* src = "synth_serial_paralelo2.v:25" *)
  DFF _192_ (
    .C(_007_),
    .D(_002_[2]),
    .Q(container[2])
  );
  (* src = "synth_serial_paralelo2.v:25" *)
  DFF _193_ (
    .C(_008_),
    .D(_002_[3]),
    .Q(container[3])
  );
  (* src = "synth_serial_paralelo2.v:25" *)
  DFF _194_ (
    .C(_009_),
    .D(_002_[4]),
    .Q(container[4])
  );
  (* src = "synth_serial_paralelo2.v:25" *)
  DFF _195_ (
    .C(_010_),
    .D(_002_[5]),
    .Q(container[5])
  );
  (* src = "synth_serial_paralelo2.v:25" *)
  DFF _196_ (
    .C(_011_),
    .D(_002_[6]),
    .Q(container[6])
  );
  (* src = "synth_serial_paralelo2.v:25" *)
  DFF _197_ (
    .C(_012_),
    .D(_002_[7]),
    .Q(container[7])
  );
  (* src = "synth_serial_paralelo2.v:16" *)
  DFF _198_ (
    .C(clk_32f),
    .D(_003_[0]),
    .Q(counter[0])
  );
  (* src = "synth_serial_paralelo2.v:16" *)
  DFF _199_ (
    .C(clk_32f),
    .D(_003_[1]),
    .Q(counter[1])
  );
  (* src = "synth_serial_paralelo2.v:16" *)
  DFF _200_ (
    .C(clk_32f),
    .D(_003_[2]),
    .Q(counter[2])
  );
  (* src = "synth_serial_paralelo2.v:12" *)
  DFF _201_ (
    .C(clk_4f),
    .D(reset),
    .Q(reset_s)
  );
endmodule