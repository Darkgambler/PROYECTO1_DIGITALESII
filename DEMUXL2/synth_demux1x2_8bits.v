/* Generated by Yosys 0.9 (git sha1 1979e0b) */

(* top =  1  *)
(* src = "synth_demux1x2_8bits.v:10" *)
module synth_demux1x2_8bits(data_rx00_synt, data_rx11_synt, valid_rx00_synt, valid_rx11_synt, data_rx000, valid_rx000, clk_2f, clk_4f, reset);
  (* src = "synth_demux1x2_8bits.v:43" *)
  wire [7:0] _000_;
  (* src = "synth_demux1x2_8bits.v:43" *)
  wire [7:0] _001_;
  (* src = "synth_demux1x2_8bits.v:27" *)
  wire [8:0] _002_;
  (* src = "synth_demux1x2_8bits.v:27" *)
  wire [8:0] _003_;
  (* src = "synth_demux1x2_8bits.v:43" *)
  wire _004_;
  (* src = "synth_demux1x2_8bits.v:43" *)
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
  wire _087_;
  wire _088_;
  wire _089_;
  wire _090_;
  wire _091_;
  wire _092_;
  wire _093_;
  wire _094_;
  wire _095_;
  wire _096_;
  wire _097_;
  wire _098_;
  wire _099_;
  wire _100_;
  wire _101_;
  wire _102_;
  wire _103_;
  wire _104_;
  wire _105_;
  wire _106_;
  wire _107_;
  wire _108_;
  wire _109_;
  wire _110_;
  wire _111_;
  wire _112_;
  wire _113_;
  wire _114_;
  wire _115_;
  wire _116_;
  wire _117_;
  wire _118_;
  wire _119_;
  wire _120_;
  wire _121_;
  wire _122_;
  wire _123_;
  wire _124_;
  wire _125_;
  wire _126_;
  wire _127_;
  wire _128_;
  wire _129_;
  wire _130_;
  wire _131_;
  wire _132_;
  wire _133_;
  wire _134_;
  wire _135_;
  wire _136_;
  wire _137_;
  wire _138_;
  wire _139_;
  wire _140_;
  wire _141_;
  wire _142_;
  wire _143_;
  wire _144_;
  wire _145_;
  wire _146_;
  wire _147_;
  wire _148_;
  wire _149_;
  wire _150_;
  wire _151_;
  wire _152_;
  wire _153_;
  wire _154_;
  wire _155_;
  wire _156_;
  wire _157_;
  wire _158_;
  wire _159_;
  wire _160_;
  wire _161_;
  wire _162_;
  wire _163_;
  wire _164_;
  wire _165_;
  wire _166_;
  wire _167_;
  (* src = "synth_demux1x2_8bits.v:14" *)
  input clk_2f;
  (* src = "synth_demux1x2_8bits.v:17" *)
  wire clk_2f_s;
  (* src = "synth_demux1x2_8bits.v:14" *)
  input clk_4f;
  (* src = "synth_demux1x2_8bits.v:10" *)
  output [7:0] data_rx00_synt;
  (* src = "synth_demux1x2_8bits.v:12" *)
  input [7:0] data_rx000;
  (* src = "synth_demux1x2_8bits.v:10" *)
  output [7:0] data_rx11_synt;
  (* src = "synth_demux1x2_8bits.v:16" *)
  wire [8:0] paq_00;
  (* src = "synth_demux1x2_8bits.v:16" *)
  wire [8:0] paq_11;
  (* src = "synth_demux1x2_8bits.v:14" *)
  input reset;
  (* src = "synth_demux1x2_8bits.v:17" *)
  wire reset_s;
  (* src = "synth_demux1x2_8bits.v:11" *)
  output valid_rx00_synt;
  (* src = "synth_demux1x2_8bits.v:13" *)
  input valid_rx000;
  (* src = "synth_demux1x2_8bits.v:11" *)
  output valid_rx11_synt;
  NOT _168_ (
    .A(valid_rx00_synt),
    .Y(_024_)
  );
  NOT _169_ (
    .A(paq_11[0]),
    .Y(_025_)
  );
  NOT _170_ (
    .A(valid_rx11_synt),
    .Y(_026_)
  );
  NOT _171_ (
    .A(data_rx00_synt[0]),
    .Y(_027_)
  );
  NOT _172_ (
    .A(data_rx00_synt[1]),
    .Y(_028_)
  );
  NOT _173_ (
    .A(data_rx00_synt[2]),
    .Y(_029_)
  );
  NOT _174_ (
    .A(data_rx00_synt[3]),
    .Y(_030_)
  );
  NOT _175_ (
    .A(data_rx00_synt[4]),
    .Y(_031_)
  );
  NOT _176_ (
    .A(data_rx00_synt[5]),
    .Y(_032_)
  );
  NOT _177_ (
    .A(data_rx00_synt[6]),
    .Y(_033_)
  );
  NOT _178_ (
    .A(data_rx00_synt[7]),
    .Y(_034_)
  );
  NOT _179_ (
    .A(valid_rx000),
    .Y(_035_)
  );
  NOT _180_ (
    .A(data_rx000[0]),
    .Y(_036_)
  );
  NOT _181_ (
    .A(data_rx000[1]),
    .Y(_037_)
  );
  NOT _182_ (
    .A(data_rx000[2]),
    .Y(_038_)
  );
  NOT _183_ (
    .A(data_rx000[3]),
    .Y(_039_)
  );
  NOT _184_ (
    .A(data_rx000[4]),
    .Y(_040_)
  );
  NOT _185_ (
    .A(data_rx000[5]),
    .Y(_041_)
  );
  NOT _186_ (
    .A(data_rx000[6]),
    .Y(_042_)
  );
  NOT _187_ (
    .A(data_rx000[7]),
    .Y(_043_)
  );
  NOT _188_ (
    .A(paq_11[1]),
    .Y(_044_)
  );
  NOT _189_ (
    .A(paq_11[2]),
    .Y(_045_)
  );
  NOT _190_ (
    .A(paq_11[3]),
    .Y(_046_)
  );
  NOT _191_ (
    .A(paq_11[4]),
    .Y(_047_)
  );
  NOT _192_ (
    .A(paq_11[5]),
    .Y(_048_)
  );
  NOT _193_ (
    .A(paq_11[6]),
    .Y(_049_)
  );
  NOT _194_ (
    .A(paq_11[7]),
    .Y(_050_)
  );
  NOT _195_ (
    .A(paq_11[8]),
    .Y(_051_)
  );
  NOT _196_ (
    .A(data_rx11_synt[0]),
    .Y(_052_)
  );
  NOT _197_ (
    .A(data_rx11_synt[1]),
    .Y(_053_)
  );
  NOT _198_ (
    .A(data_rx11_synt[2]),
    .Y(_054_)
  );
  NOT _199_ (
    .A(data_rx11_synt[3]),
    .Y(_055_)
  );
  NOT _200_ (
    .A(data_rx11_synt[4]),
    .Y(_056_)
  );
  NOT _201_ (
    .A(data_rx11_synt[5]),
    .Y(_057_)
  );
  NOT _202_ (
    .A(data_rx11_synt[6]),
    .Y(_058_)
  );
  NOT _203_ (
    .A(data_rx11_synt[7]),
    .Y(_059_)
  );
  NOT _204_ (
    .A(clk_4f),
    .Y(_006_)
  );
  NOR _205_ (
    .A(clk_2f_s),
    .B(paq_11[3]),
    .Y(_060_)
  );
  NAND _206_ (
    .A(clk_2f_s),
    .B(_054_),
    .Y(_061_)
  );
  NAND _207_ (
    .A(reset_s),
    .B(_061_),
    .Y(_062_)
  );
  NOR _208_ (
    .A(_060_),
    .B(_062_),
    .Y(_001_[2])
  );
  NOR _209_ (
    .A(clk_2f_s),
    .B(paq_11[4]),
    .Y(_063_)
  );
  NAND _210_ (
    .A(clk_2f_s),
    .B(_055_),
    .Y(_064_)
  );
  NAND _211_ (
    .A(reset_s),
    .B(_064_),
    .Y(_065_)
  );
  NOR _212_ (
    .A(_063_),
    .B(_065_),
    .Y(_001_[3])
  );
  NOR _213_ (
    .A(clk_2f_s),
    .B(paq_11[5]),
    .Y(_066_)
  );
  NAND _214_ (
    .A(clk_2f_s),
    .B(_056_),
    .Y(_067_)
  );
  NAND _215_ (
    .A(reset_s),
    .B(_067_),
    .Y(_068_)
  );
  NOR _216_ (
    .A(_066_),
    .B(_068_),
    .Y(_001_[4])
  );
  NOR _217_ (
    .A(clk_2f_s),
    .B(paq_11[6]),
    .Y(_069_)
  );
  NAND _218_ (
    .A(clk_2f_s),
    .B(_057_),
    .Y(_070_)
  );
  NAND _219_ (
    .A(reset_s),
    .B(_070_),
    .Y(_071_)
  );
  NOR _220_ (
    .A(_069_),
    .B(_071_),
    .Y(_001_[5])
  );
  NOR _221_ (
    .A(clk_2f_s),
    .B(paq_11[7]),
    .Y(_072_)
  );
  NAND _222_ (
    .A(clk_2f_s),
    .B(_058_),
    .Y(_073_)
  );
  NAND _223_ (
    .A(reset_s),
    .B(_073_),
    .Y(_074_)
  );
  NOR _224_ (
    .A(_072_),
    .B(_074_),
    .Y(_001_[6])
  );
  NOR _225_ (
    .A(clk_2f_s),
    .B(paq_11[8]),
    .Y(_075_)
  );
  NAND _226_ (
    .A(clk_2f_s),
    .B(_059_),
    .Y(_076_)
  );
  NAND _227_ (
    .A(reset_s),
    .B(_076_),
    .Y(_077_)
  );
  NOR _228_ (
    .A(_075_),
    .B(_077_),
    .Y(_001_[7])
  );
  NOR _229_ (
    .A(paq_00[0]),
    .B(clk_2f_s),
    .Y(_078_)
  );
  NAND _230_ (
    .A(_024_),
    .B(clk_2f_s),
    .Y(_079_)
  );
  NAND _231_ (
    .A(reset_s),
    .B(_079_),
    .Y(_080_)
  );
  NOR _232_ (
    .A(_078_),
    .B(_080_),
    .Y(_004_)
  );
  NOR _233_ (
    .A(clk_2f_s),
    .B(paq_00[1]),
    .Y(_081_)
  );
  NAND _234_ (
    .A(clk_2f_s),
    .B(_027_),
    .Y(_082_)
  );
  NAND _235_ (
    .A(reset_s),
    .B(_082_),
    .Y(_083_)
  );
  NOR _236_ (
    .A(_081_),
    .B(_083_),
    .Y(_000_[0])
  );
  NOR _237_ (
    .A(clk_2f_s),
    .B(paq_00[2]),
    .Y(_084_)
  );
  NAND _238_ (
    .A(clk_2f_s),
    .B(_028_),
    .Y(_085_)
  );
  NAND _239_ (
    .A(reset_s),
    .B(_085_),
    .Y(_086_)
  );
  NOR _240_ (
    .A(_084_),
    .B(_086_),
    .Y(_000_[1])
  );
  NOR _241_ (
    .A(clk_2f_s),
    .B(paq_00[3]),
    .Y(_087_)
  );
  NAND _242_ (
    .A(clk_2f_s),
    .B(_029_),
    .Y(_088_)
  );
  NAND _243_ (
    .A(reset_s),
    .B(_088_),
    .Y(_089_)
  );
  NOR _244_ (
    .A(_087_),
    .B(_089_),
    .Y(_000_[2])
  );
  NOR _245_ (
    .A(clk_2f_s),
    .B(paq_00[4]),
    .Y(_090_)
  );
  NAND _246_ (
    .A(clk_2f_s),
    .B(_030_),
    .Y(_091_)
  );
  NAND _247_ (
    .A(reset_s),
    .B(_091_),
    .Y(_092_)
  );
  NOR _248_ (
    .A(_090_),
    .B(_092_),
    .Y(_000_[3])
  );
  NOR _249_ (
    .A(clk_2f_s),
    .B(paq_00[5]),
    .Y(_093_)
  );
  NAND _250_ (
    .A(clk_2f_s),
    .B(_031_),
    .Y(_094_)
  );
  NAND _251_ (
    .A(reset_s),
    .B(_094_),
    .Y(_095_)
  );
  NOR _252_ (
    .A(_093_),
    .B(_095_),
    .Y(_000_[4])
  );
  NOR _253_ (
    .A(clk_2f_s),
    .B(paq_00[6]),
    .Y(_096_)
  );
  NAND _254_ (
    .A(clk_2f_s),
    .B(_032_),
    .Y(_097_)
  );
  NAND _255_ (
    .A(reset_s),
    .B(_097_),
    .Y(_098_)
  );
  NOR _256_ (
    .A(_096_),
    .B(_098_),
    .Y(_000_[5])
  );
  NOR _257_ (
    .A(clk_2f_s),
    .B(paq_00[7]),
    .Y(_099_)
  );
  NAND _258_ (
    .A(clk_2f_s),
    .B(_033_),
    .Y(_100_)
  );
  NAND _259_ (
    .A(reset_s),
    .B(_100_),
    .Y(_101_)
  );
  NOR _260_ (
    .A(_099_),
    .B(_101_),
    .Y(_000_[6])
  );
  NOR _261_ (
    .A(clk_2f_s),
    .B(paq_00[8]),
    .Y(_102_)
  );
  NAND _262_ (
    .A(clk_2f_s),
    .B(_034_),
    .Y(_103_)
  );
  NAND _263_ (
    .A(reset_s),
    .B(_103_),
    .Y(_104_)
  );
  NOR _264_ (
    .A(_102_),
    .B(_104_),
    .Y(_000_[7])
  );
  NOR _265_ (
    .A(clk_2f_s),
    .B(paq_11[0]),
    .Y(_105_)
  );
  NAND _266_ (
    .A(clk_2f_s),
    .B(_026_),
    .Y(_106_)
  );
  NAND _267_ (
    .A(reset_s),
    .B(_106_),
    .Y(_107_)
  );
  NOR _268_ (
    .A(_105_),
    .B(_107_),
    .Y(_005_)
  );
  NOR _269_ (
    .A(valid_rx000),
    .B(clk_2f),
    .Y(_108_)
  );
  NAND _270_ (
    .A(_025_),
    .B(clk_2f),
    .Y(_109_)
  );
  NAND _271_ (
    .A(reset_s),
    .B(_109_),
    .Y(_110_)
  );
  NOR _272_ (
    .A(_108_),
    .B(_110_),
    .Y(_003_[0])
  );
  NOR _273_ (
    .A(clk_2f),
    .B(data_rx000[0]),
    .Y(_111_)
  );
  NAND _274_ (
    .A(clk_2f),
    .B(_044_),
    .Y(_112_)
  );
  NAND _275_ (
    .A(reset_s),
    .B(_112_),
    .Y(_113_)
  );
  NOR _276_ (
    .A(_111_),
    .B(_113_),
    .Y(_003_[1])
  );
  NOR _277_ (
    .A(clk_2f),
    .B(data_rx000[1]),
    .Y(_114_)
  );
  NAND _278_ (
    .A(clk_2f),
    .B(_045_),
    .Y(_115_)
  );
  NAND _279_ (
    .A(reset_s),
    .B(_115_),
    .Y(_116_)
  );
  NOR _280_ (
    .A(_114_),
    .B(_116_),
    .Y(_003_[2])
  );
  NOR _281_ (
    .A(clk_2f),
    .B(data_rx000[2]),
    .Y(_117_)
  );
  NAND _282_ (
    .A(clk_2f),
    .B(_046_),
    .Y(_118_)
  );
  NAND _283_ (
    .A(reset_s),
    .B(_118_),
    .Y(_119_)
  );
  NOR _284_ (
    .A(_117_),
    .B(_119_),
    .Y(_003_[3])
  );
  NOR _285_ (
    .A(clk_2f),
    .B(data_rx000[3]),
    .Y(_120_)
  );
  NAND _286_ (
    .A(clk_2f),
    .B(_047_),
    .Y(_121_)
  );
  NAND _287_ (
    .A(reset_s),
    .B(_121_),
    .Y(_122_)
  );
  NOR _288_ (
    .A(_120_),
    .B(_122_),
    .Y(_003_[4])
  );
  NOR _289_ (
    .A(clk_2f),
    .B(data_rx000[4]),
    .Y(_123_)
  );
  NAND _290_ (
    .A(clk_2f),
    .B(_048_),
    .Y(_124_)
  );
  NAND _291_ (
    .A(reset_s),
    .B(_124_),
    .Y(_125_)
  );
  NOR _292_ (
    .A(_123_),
    .B(_125_),
    .Y(_003_[5])
  );
  NOR _293_ (
    .A(clk_2f),
    .B(data_rx000[5]),
    .Y(_126_)
  );
  NAND _294_ (
    .A(clk_2f),
    .B(_049_),
    .Y(_127_)
  );
  NAND _295_ (
    .A(reset_s),
    .B(_127_),
    .Y(_128_)
  );
  NOR _296_ (
    .A(_126_),
    .B(_128_),
    .Y(_003_[6])
  );
  NOR _297_ (
    .A(clk_2f),
    .B(data_rx000[6]),
    .Y(_129_)
  );
  NAND _298_ (
    .A(clk_2f),
    .B(_050_),
    .Y(_130_)
  );
  NAND _299_ (
    .A(reset_s),
    .B(_130_),
    .Y(_131_)
  );
  NOR _300_ (
    .A(_129_),
    .B(_131_),
    .Y(_003_[7])
  );
  NOR _301_ (
    .A(clk_2f),
    .B(data_rx000[7]),
    .Y(_132_)
  );
  NAND _302_ (
    .A(clk_2f),
    .B(_051_),
    .Y(_133_)
  );
  NAND _303_ (
    .A(reset_s),
    .B(_133_),
    .Y(_134_)
  );
  NOR _304_ (
    .A(_132_),
    .B(_134_),
    .Y(_003_[8])
  );
  NOR _305_ (
    .A(paq_00[0]),
    .B(clk_2f),
    .Y(_135_)
  );
  NAND _306_ (
    .A(_035_),
    .B(clk_2f),
    .Y(_136_)
  );
  NAND _307_ (
    .A(reset_s),
    .B(_136_),
    .Y(_137_)
  );
  NOR _308_ (
    .A(_135_),
    .B(_137_),
    .Y(_002_[0])
  );
  NOR _309_ (
    .A(paq_00[1]),
    .B(clk_2f),
    .Y(_138_)
  );
  NAND _310_ (
    .A(clk_2f),
    .B(_036_),
    .Y(_139_)
  );
  NAND _311_ (
    .A(reset_s),
    .B(_139_),
    .Y(_140_)
  );
  NOR _312_ (
    .A(_138_),
    .B(_140_),
    .Y(_002_[1])
  );
  NOR _313_ (
    .A(paq_00[2]),
    .B(clk_2f),
    .Y(_141_)
  );
  NAND _314_ (
    .A(clk_2f),
    .B(_037_),
    .Y(_142_)
  );
  NAND _315_ (
    .A(reset_s),
    .B(_142_),
    .Y(_143_)
  );
  NOR _316_ (
    .A(_141_),
    .B(_143_),
    .Y(_002_[2])
  );
  NOR _317_ (
    .A(paq_00[3]),
    .B(clk_2f),
    .Y(_144_)
  );
  NAND _318_ (
    .A(clk_2f),
    .B(_038_),
    .Y(_145_)
  );
  NAND _319_ (
    .A(reset_s),
    .B(_145_),
    .Y(_146_)
  );
  NOR _320_ (
    .A(_144_),
    .B(_146_),
    .Y(_002_[3])
  );
  NOR _321_ (
    .A(paq_00[4]),
    .B(clk_2f),
    .Y(_147_)
  );
  NAND _322_ (
    .A(clk_2f),
    .B(_039_),
    .Y(_148_)
  );
  NAND _323_ (
    .A(reset_s),
    .B(_148_),
    .Y(_149_)
  );
  NOR _324_ (
    .A(_147_),
    .B(_149_),
    .Y(_002_[4])
  );
  NOR _325_ (
    .A(paq_00[5]),
    .B(clk_2f),
    .Y(_150_)
  );
  NAND _326_ (
    .A(clk_2f),
    .B(_040_),
    .Y(_151_)
  );
  NAND _327_ (
    .A(reset_s),
    .B(_151_),
    .Y(_152_)
  );
  NOR _328_ (
    .A(_150_),
    .B(_152_),
    .Y(_002_[5])
  );
  NOR _329_ (
    .A(paq_00[6]),
    .B(clk_2f),
    .Y(_153_)
  );
  NAND _330_ (
    .A(clk_2f),
    .B(_041_),
    .Y(_154_)
  );
  NAND _331_ (
    .A(reset_s),
    .B(_154_),
    .Y(_155_)
  );
  NOR _332_ (
    .A(_153_),
    .B(_155_),
    .Y(_002_[6])
  );
  NOR _333_ (
    .A(paq_00[7]),
    .B(clk_2f),
    .Y(_156_)
  );
  NAND _334_ (
    .A(clk_2f),
    .B(_042_),
    .Y(_157_)
  );
  NAND _335_ (
    .A(reset_s),
    .B(_157_),
    .Y(_158_)
  );
  NOR _336_ (
    .A(_156_),
    .B(_158_),
    .Y(_002_[7])
  );
  NOR _337_ (
    .A(paq_00[8]),
    .B(clk_2f),
    .Y(_159_)
  );
  NAND _338_ (
    .A(clk_2f),
    .B(_043_),
    .Y(_160_)
  );
  NAND _339_ (
    .A(reset_s),
    .B(_160_),
    .Y(_161_)
  );
  NOR _340_ (
    .A(_159_),
    .B(_161_),
    .Y(_002_[8])
  );
  NOR _341_ (
    .A(clk_2f_s),
    .B(paq_11[1]),
    .Y(_162_)
  );
  NAND _342_ (
    .A(clk_2f_s),
    .B(_052_),
    .Y(_163_)
  );
  NAND _343_ (
    .A(reset_s),
    .B(_163_),
    .Y(_164_)
  );
  NOR _344_ (
    .A(_162_),
    .B(_164_),
    .Y(_001_[0])
  );
  NOR _345_ (
    .A(clk_2f_s),
    .B(paq_11[2]),
    .Y(_165_)
  );
  NAND _346_ (
    .A(clk_2f_s),
    .B(_053_),
    .Y(_166_)
  );
  NAND _347_ (
    .A(reset_s),
    .B(_166_),
    .Y(_167_)
  );
  NOR _348_ (
    .A(_165_),
    .B(_167_),
    .Y(_001_[1])
  );
  NOT _349_ (
    .A(clk_4f),
    .Y(_007_)
  );
  NOT _350_ (
    .A(clk_4f),
    .Y(_008_)
  );
  NOT _351_ (
    .A(clk_4f),
    .Y(_009_)
  );
  NOT _352_ (
    .A(clk_4f),
    .Y(_010_)
  );
  NOT _353_ (
    .A(clk_4f),
    .Y(_011_)
  );
  NOT _354_ (
    .A(clk_4f),
    .Y(_012_)
  );
  NOT _355_ (
    .A(clk_4f),
    .Y(_013_)
  );
  NOT _356_ (
    .A(clk_4f),
    .Y(_014_)
  );
  NOT _357_ (
    .A(clk_4f),
    .Y(_015_)
  );
  NOT _358_ (
    .A(clk_4f),
    .Y(_016_)
  );
  NOT _359_ (
    .A(clk_4f),
    .Y(_017_)
  );
  NOT _360_ (
    .A(clk_4f),
    .Y(_018_)
  );
  NOT _361_ (
    .A(clk_4f),
    .Y(_019_)
  );
  NOT _362_ (
    .A(clk_4f),
    .Y(_020_)
  );
  NOT _363_ (
    .A(clk_4f),
    .Y(_021_)
  );
  NOT _364_ (
    .A(clk_4f),
    .Y(_022_)
  );
  NOT _365_ (
    .A(clk_4f),
    .Y(_023_)
  );
  (* src = "synth_demux1x2_8bits.v:43" *)
  DFF _366_ (
    .C(clk_4f),
    .D(_000_[0]),
    .Q(data_rx00_synt[0])
  );
  (* src = "synth_demux1x2_8bits.v:43" *)
  DFF _367_ (
    .C(clk_4f),
    .D(_000_[1]),
    .Q(data_rx00_synt[1])
  );
  (* src = "synth_demux1x2_8bits.v:43" *)
  DFF _368_ (
    .C(clk_4f),
    .D(_000_[2]),
    .Q(data_rx00_synt[2])
  );
  (* src = "synth_demux1x2_8bits.v:43" *)
  DFF _369_ (
    .C(clk_4f),
    .D(_000_[3]),
    .Q(data_rx00_synt[3])
  );
  (* src = "synth_demux1x2_8bits.v:43" *)
  DFF _370_ (
    .C(clk_4f),
    .D(_000_[4]),
    .Q(data_rx00_synt[4])
  );
  (* src = "synth_demux1x2_8bits.v:43" *)
  DFF _371_ (
    .C(clk_4f),
    .D(_000_[5]),
    .Q(data_rx00_synt[5])
  );
  (* src = "synth_demux1x2_8bits.v:43" *)
  DFF _372_ (
    .C(clk_4f),
    .D(_000_[6]),
    .Q(data_rx00_synt[6])
  );
  (* src = "synth_demux1x2_8bits.v:43" *)
  DFF _373_ (
    .C(clk_4f),
    .D(_000_[7]),
    .Q(data_rx00_synt[7])
  );
  (* src = "synth_demux1x2_8bits.v:22" *)
  DFF _374_ (
    .C(clk_4f),
    .D(clk_2f),
    .Q(clk_2f_s)
  );
  (* src = "synth_demux1x2_8bits.v:43" *)
  DFF _375_ (
    .C(clk_4f),
    .D(_001_[0]),
    .Q(data_rx11_synt[0])
  );
  (* src = "synth_demux1x2_8bits.v:43" *)
  DFF _376_ (
    .C(clk_4f),
    .D(_001_[1]),
    .Q(data_rx11_synt[1])
  );
  (* src = "synth_demux1x2_8bits.v:43" *)
  DFF _377_ (
    .C(clk_4f),
    .D(_001_[2]),
    .Q(data_rx11_synt[2])
  );
  (* src = "synth_demux1x2_8bits.v:43" *)
  DFF _378_ (
    .C(clk_4f),
    .D(_001_[3]),
    .Q(data_rx11_synt[3])
  );
  (* src = "synth_demux1x2_8bits.v:43" *)
  DFF _379_ (
    .C(clk_4f),
    .D(_001_[4]),
    .Q(data_rx11_synt[4])
  );
  (* src = "synth_demux1x2_8bits.v:43" *)
  DFF _380_ (
    .C(clk_4f),
    .D(_001_[5]),
    .Q(data_rx11_synt[5])
  );
  (* src = "synth_demux1x2_8bits.v:43" *)
  DFF _381_ (
    .C(clk_4f),
    .D(_001_[6]),
    .Q(data_rx11_synt[6])
  );
  (* src = "synth_demux1x2_8bits.v:43" *)
  DFF _382_ (
    .C(clk_4f),
    .D(_001_[7]),
    .Q(data_rx11_synt[7])
  );
  (* src = "synth_demux1x2_8bits.v:43" *)
  DFF _383_ (
    .C(clk_4f),
    .D(_004_),
    .Q(valid_rx00_synt)
  );
  (* src = "synth_demux1x2_8bits.v:43" *)
  DFF _384_ (
    .C(clk_4f),
    .D(_005_),
    .Q(valid_rx11_synt)
  );
  (* src = "synth_demux1x2_8bits.v:27" *)
  DFF _385_ (
    .C(_006_),
    .D(_002_[0]),
    .Q(paq_00[0])
  );
  (* src = "synth_demux1x2_8bits.v:27" *)
  DFF _386_ (
    .C(_007_),
    .D(_002_[1]),
    .Q(paq_00[1])
  );
  (* src = "synth_demux1x2_8bits.v:27" *)
  DFF _387_ (
    .C(_008_),
    .D(_002_[2]),
    .Q(paq_00[2])
  );
  (* src = "synth_demux1x2_8bits.v:27" *)
  DFF _388_ (
    .C(_009_),
    .D(_002_[3]),
    .Q(paq_00[3])
  );
  (* src = "synth_demux1x2_8bits.v:27" *)
  DFF _389_ (
    .C(_010_),
    .D(_002_[4]),
    .Q(paq_00[4])
  );
  (* src = "synth_demux1x2_8bits.v:27" *)
  DFF _390_ (
    .C(_011_),
    .D(_002_[5]),
    .Q(paq_00[5])
  );
  (* src = "synth_demux1x2_8bits.v:27" *)
  DFF _391_ (
    .C(_012_),
    .D(_002_[6]),
    .Q(paq_00[6])
  );
  (* src = "synth_demux1x2_8bits.v:27" *)
  DFF _392_ (
    .C(_013_),
    .D(_002_[7]),
    .Q(paq_00[7])
  );
  (* src = "synth_demux1x2_8bits.v:27" *)
  DFF _393_ (
    .C(_014_),
    .D(_002_[8]),
    .Q(paq_00[8])
  );
  (* src = "synth_demux1x2_8bits.v:27" *)
  DFF _394_ (
    .C(_015_),
    .D(_003_[0]),
    .Q(paq_11[0])
  );
  (* src = "synth_demux1x2_8bits.v:27" *)
  DFF _395_ (
    .C(_016_),
    .D(_003_[1]),
    .Q(paq_11[1])
  );
  (* src = "synth_demux1x2_8bits.v:27" *)
  DFF _396_ (
    .C(_017_),
    .D(_003_[2]),
    .Q(paq_11[2])
  );
  (* src = "synth_demux1x2_8bits.v:27" *)
  DFF _397_ (
    .C(_018_),
    .D(_003_[3]),
    .Q(paq_11[3])
  );
  (* src = "synth_demux1x2_8bits.v:27" *)
  DFF _398_ (
    .C(_019_),
    .D(_003_[4]),
    .Q(paq_11[4])
  );
  (* src = "synth_demux1x2_8bits.v:27" *)
  DFF _399_ (
    .C(_020_),
    .D(_003_[5]),
    .Q(paq_11[5])
  );
  (* src = "synth_demux1x2_8bits.v:27" *)
  DFF _400_ (
    .C(_021_),
    .D(_003_[6]),
    .Q(paq_11[6])
  );
  (* src = "synth_demux1x2_8bits.v:27" *)
  DFF _401_ (
    .C(_022_),
    .D(_003_[7]),
    .Q(paq_11[7])
  );
  (* src = "synth_demux1x2_8bits.v:27" *)
  DFF _402_ (
    .C(_023_),
    .D(_003_[8]),
    .Q(paq_11[8])
  );
  (* src = "synth_demux1x2_8bits.v:22" *)
  DFF _403_ (
    .C(clk_4f),
    .D(reset),
    .Q(reset_s)
  );
endmodule
