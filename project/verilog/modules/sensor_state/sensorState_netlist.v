// **Custom imports** 
`include "../../../lib/demo.v"

/* Generated by Yosys 0.10.0 (git sha1 UNKNOWN, clang 13.0.0 -fPIC -Os) */

(* dynports =  1  *)
(* hdlname = "\\CircularShifter" *)
(* src = "../../components/shifter.v:4.1-27.10" *)
module \$paramod\CircularShifter\length=s32'00000000000000000000000000000010 (clk, inputEnable, outputEnable, reset, out);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  (* src = "../../components/shifter.v:5.11-5.14" *)
  input clk;
  (* src = "../../components/shifter.v:6.11-6.22" *)
  input inputEnable;
  (* init = 2'h1 *)
  (* src = "../../components/shifter.v:14.24-14.33" *)
  wire [1:0] local_out;
  (* src = "../../components/shifter.v:9.25-9.28" *)
  output [1:0] out;
  (* src = "../../components/shifter.v:7.11-7.23" *)
  input outputEnable;
  (* src = "../../components/shifter.v:8.11-8.16" *)
  input reset;
  NOT _06_ (
    .A(local_out[0]),
    .Y(_03_)
  );
  NOT _07_ (
    .A(inputEnable),
    .Y(_04_)
  );
  NOR _08_ (
    .A(_03_),
    .B(inputEnable),
    .Y(_00_)
  );
  NAND _09_ (
    .A(local_out[0]),
    .B(inputEnable),
    .Y(_05_)
  );
  NAND _10_ (
    .A(_04_),
    .B(local_out[1]),
    .Y(_02_)
  );
  NAND _11_ (
    .A(_05_),
    .B(_02_),
    .Y(_01_)
  );
  (* src = "../../components/shifter.v:18.5-25.8" *)
  DFFSR _12_ (
    .C(clk),
    .D(_00_),
    .Q(local_out[0]),
    .R(1'h0),
    .S(reset)
  );
  (* src = "../../components/shifter.v:18.5-25.8" *)
  DFFSR _13_ (
    .C(clk),
    .D(_01_),
    .Q(local_out[1]),
    .R(reset),
    .S(1'h0)
  );
  assign out = local_out;
endmodule

(* dynports =  1  *)
(* hdlname = "\\CircularShifter" *)
(* src = "../../components/shifter.v:4.1-27.10" *)
module \$paramod\CircularShifter\length=s32'00000000000000000000000000000100 (clk, inputEnable, outputEnable, reset, out);
  wire _00_;
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
  (* src = "../../components/shifter.v:5.11-5.14" *)
  input clk;
  (* src = "../../components/shifter.v:6.11-6.22" *)
  input inputEnable;
  (* init = 4'h1 *)
  (* src = "../../components/shifter.v:14.24-14.33" *)
  wire [3:0] local_out;
  (* src = "../../components/shifter.v:9.25-9.28" *)
  output [3:0] out;
  (* src = "../../components/shifter.v:7.11-7.23" *)
  input outputEnable;
  (* src = "../../components/shifter.v:8.11-8.16" *)
  input reset;
  NOT _12_ (
    .A(inputEnable),
    .Y(_04_)
  );
  NOT _13_ (
    .A(local_out[0]),
    .Y(_05_)
  );
  NAND _14_ (
    .A(local_out[1]),
    .B(inputEnable),
    .Y(_06_)
  );
  NAND _15_ (
    .A(local_out[2]),
    .B(_04_),
    .Y(_07_)
  );
  NAND _16_ (
    .A(_06_),
    .B(_07_),
    .Y(_02_)
  );
  NAND _17_ (
    .A(inputEnable),
    .B(local_out[0]),
    .Y(_08_)
  );
  NAND _18_ (
    .A(local_out[1]),
    .B(_04_),
    .Y(_09_)
  );
  NAND _19_ (
    .A(_08_),
    .B(_09_),
    .Y(_01_)
  );
  NOR _20_ (
    .A(inputEnable),
    .B(_05_),
    .Y(_00_)
  );
  NAND _21_ (
    .A(local_out[2]),
    .B(inputEnable),
    .Y(_10_)
  );
  NAND _22_ (
    .A(_04_),
    .B(local_out[3]),
    .Y(_11_)
  );
  NAND _23_ (
    .A(_10_),
    .B(_11_),
    .Y(_03_)
  );
  (* src = "../../components/shifter.v:18.5-25.8" *)
  DFFSR _24_ (
    .C(clk),
    .D(_00_),
    .Q(local_out[0]),
    .R(1'h0),
    .S(reset)
  );
  (* src = "../../components/shifter.v:18.5-25.8" *)
  DFFSR _25_ (
    .C(clk),
    .D(_01_),
    .Q(local_out[1]),
    .R(reset),
    .S(1'h0)
  );
  (* src = "../../components/shifter.v:18.5-25.8" *)
  DFFSR _26_ (
    .C(clk),
    .D(_02_),
    .Q(local_out[2]),
    .R(reset),
    .S(1'h0)
  );
  (* src = "../../components/shifter.v:18.5-25.8" *)
  DFFSR _27_ (
    .C(clk),
    .D(_03_),
    .Q(local_out[3]),
    .R(reset),
    .S(1'h0)
  );
  assign out = local_out;
endmodule

(* dynports =  1  *)
(* hdlname = "\\Counter" *)
(* src = "../../components/counter.v:4.1-21.10" *)
module \$paramod\Counter\bits=s32'00000000000000000000000000001000 (clk, reset, enable, out);
  wire _00_;
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
  (* src = "../../components/counter.v:5.11-5.14" *)
  input clk;
  (* src = "../../components/counter.v:7.11-7.17" *)
  input enable;
  (* src = "../../components/counter.v:8.29-8.32" *)
  output [7:0] out;
  (* src = "../../components/counter.v:6.11-6.16" *)
  input reset;
  NOT _38_ (
    .A(enable),
    .Y(_08_)
  );
  NOT _39_ (
    .A(out[5]),
    .Y(_09_)
  );
  NOT _40_ (
    .A(out[4]),
    .Y(_10_)
  );
  NOT _41_ (
    .A(out[3]),
    .Y(_11_)
  );
  NOT _42_ (
    .A(out[2]),
    .Y(_12_)
  );
  NOT _43_ (
    .A(out[1]),
    .Y(_13_)
  );
  NOT _44_ (
    .A(out[0]),
    .Y(_14_)
  );
  NOR _45_ (
    .A(_08_),
    .B(_14_),
    .Y(_15_)
  );
  NAND _46_ (
    .A(enable),
    .B(out[0]),
    .Y(_16_)
  );
  NOR _47_ (
    .A(_13_),
    .B(_16_),
    .Y(_17_)
  );
  NOT _48_ (
    .A(_17_),
    .Y(_18_)
  );
  NOR _49_ (
    .A(_12_),
    .B(_18_),
    .Y(_19_)
  );
  NAND _50_ (
    .A(out[2]),
    .B(_17_),
    .Y(_20_)
  );
  NOR _51_ (
    .A(_11_),
    .B(_20_),
    .Y(_21_)
  );
  NOT _52_ (
    .A(_21_),
    .Y(_22_)
  );
  NOR _53_ (
    .A(_10_),
    .B(_22_),
    .Y(_23_)
  );
  NAND _54_ (
    .A(out[4]),
    .B(_21_),
    .Y(_24_)
  );
  NOR _55_ (
    .A(_09_),
    .B(_24_),
    .Y(_25_)
  );
  NAND _56_ (
    .A(out[6]),
    .B(_25_),
    .Y(_26_)
  );
  NOT _57_ (
    .A(_26_),
    .Y(_27_)
  );
  NOR _58_ (
    .A(out[6]),
    .B(_25_),
    .Y(_28_)
  );
  NOR _59_ (
    .A(_27_),
    .B(_28_),
    .Y(_06_)
  );
  NOR _60_ (
    .A(out[5]),
    .B(_23_),
    .Y(_29_)
  );
  NOR _61_ (
    .A(_25_),
    .B(_29_),
    .Y(_05_)
  );
  NOR _62_ (
    .A(out[4]),
    .B(_21_),
    .Y(_30_)
  );
  NOR _63_ (
    .A(_23_),
    .B(_30_),
    .Y(_04_)
  );
  NOR _64_ (
    .A(out[3]),
    .B(_19_),
    .Y(_31_)
  );
  NOR _65_ (
    .A(_21_),
    .B(_31_),
    .Y(_03_)
  );
  NOR _66_ (
    .A(out[2]),
    .B(_17_),
    .Y(_32_)
  );
  NOR _67_ (
    .A(_19_),
    .B(_32_),
    .Y(_02_)
  );
  NOR _68_ (
    .A(out[1]),
    .B(_15_),
    .Y(_33_)
  );
  NOR _69_ (
    .A(_17_),
    .B(_33_),
    .Y(_01_)
  );
  NOR _70_ (
    .A(enable),
    .B(out[0]),
    .Y(_34_)
  );
  NOR _71_ (
    .A(_15_),
    .B(_34_),
    .Y(_00_)
  );
  NAND _72_ (
    .A(out[7]),
    .B(_26_),
    .Y(_35_)
  );
  NOR _73_ (
    .A(out[7]),
    .B(_26_),
    .Y(_36_)
  );
  NOT _74_ (
    .A(_36_),
    .Y(_37_)
  );
  NAND _75_ (
    .A(_35_),
    .B(_37_),
    .Y(_07_)
  );
  (* src = "../../components/counter.v:13.5-20.8" *)
  DFFSR _76_ (
    .C(clk),
    .D(_00_),
    .Q(out[0]),
    .R(reset),
    .S(1'h0)
  );
  (* src = "../../components/counter.v:13.5-20.8" *)
  DFFSR _77_ (
    .C(clk),
    .D(_01_),
    .Q(out[1]),
    .R(reset),
    .S(1'h0)
  );
  (* src = "../../components/counter.v:13.5-20.8" *)
  DFFSR _78_ (
    .C(clk),
    .D(_02_),
    .Q(out[2]),
    .R(reset),
    .S(1'h0)
  );
  (* src = "../../components/counter.v:13.5-20.8" *)
  DFFSR _79_ (
    .C(clk),
    .D(_03_),
    .Q(out[3]),
    .R(reset),
    .S(1'h0)
  );
  (* src = "../../components/counter.v:13.5-20.8" *)
  DFFSR _80_ (
    .C(clk),
    .D(_04_),
    .Q(out[4]),
    .R(reset),
    .S(1'h0)
  );
  (* src = "../../components/counter.v:13.5-20.8" *)
  DFFSR _81_ (
    .C(clk),
    .D(_05_),
    .Q(out[5]),
    .R(reset),
    .S(1'h0)
  );
  (* src = "../../components/counter.v:13.5-20.8" *)
  DFFSR _82_ (
    .C(clk),
    .D(_06_),
    .Q(out[6]),
    .R(reset),
    .S(1'h0)
  );
  (* src = "../../components/counter.v:13.5-20.8" *)
  DFFSR _83_ (
    .C(clk),
    .D(_07_),
    .Q(out[7]),
    .R(reset),
    .S(1'h0)
  );
endmodule

(* dynports =  1  *)
(* top =  1  *)
(* src = "sensorState.v:5.1-152.10" *)
module SENSOR_STATE(clk, reset, p_erase, p_expose, p_expose_clk, p_row_select, p_aRamp, p_dRamp);
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
  (* src = "sensorState.v:6.11-6.14" *)
  input clk;
  (* src = "sensorState.v:40.17-40.24" *)
  wire [7:0] counter;
  (* src = "sensorState.v:42.11-42.24" *)
  wire counter_reset;
  (* src = "sensorState.v:60.10-60.22" *)
  wire dRamp_enable;
  (* src = "sensorState.v:56.11-56.22" *)
  wire dRamp_reset;
  (* src = "sensorState.v:104.10-104.14" *)
  wire idle;
  (* src = "sensorState.v:35.11-35.25" *)
  wire internal_reset;
  (* src = "sensorState.v:43.10-43.30" *)
  wire master_counter_reset;
  (* src = "sensorState.v:57.10-57.28" *)
  wire master_dRamp_reset;
  (* src = "sensorState.v:36.10-36.22" *)
  wire master_reset;
  (* src = "sensorState.v:76.10-76.32" *)
  wire master_rowSelect_reset;
  (* src = "sensorState.v:12.12-12.19" *)
  output p_aRamp;
  (* src = "sensorState.v:13.18-13.25" *)
  output [7:0] p_dRamp;
  (* src = "sensorState.v:8.12-8.19" *)
  output p_erase;
  (* src = "sensorState.v:9.12-9.20" *)
  output p_expose;
  (* src = "sensorState.v:10.16-10.28" *)
  output p_expose_clk;
  (* src = "sensorState.v:11.37-11.49" *)
  output [1:0] p_row_select;
  (* src = "sensorState.v:7.11-7.16" *)
  input reset;
  (* src = "sensorState.v:72.10-72.26" *)
  wire rowSelect_enable;
  (* src = "sensorState.v:71.11-71.24" *)
  wire rowSelect_inc;
  (* src = "sensorState.v:75.11-75.26" *)
  wire rowSelect_reset;
  (* src = "sensorState.v:91.24-91.29" *)
  wire [3:0] state;
  (* src = "sensorState.v:90.11-90.30" *)
  wire stateSelector_shift;
  NOT _150_ (
    .A(counter_reset),
    .Y(_081_)
  );
  NOT _151_ (
    .A(state[1]),
    .Y(_082_)
  );
  NOT _152_ (
    .A(state[0]),
    .Y(_083_)
  );
  NOT _153_ (
    .A(state[3]),
    .Y(_084_)
  );
  NOT _154_ (
    .A(counter[0]),
    .Y(_085_)
  );
  NOT _155_ (
    .A(counter[3]),
    .Y(_086_)
  );
  NOT _156_ (
    .A(counter[2]),
    .Y(_087_)
  );
  NOT _157_ (
    .A(counter[4]),
    .Y(_088_)
  );
  NOT _158_ (
    .A(counter[5]),
    .Y(_089_)
  );
  NOT _159_ (
    .A(counter[7]),
    .Y(_090_)
  );
  NOT _160_ (
    .A(counter[6]),
    .Y(_091_)
  );
  NOR _161_ (
    .A(state[1]),
    .B(state[0]),
    .Y(_092_)
  );
  NAND _162_ (
    .A(state[2]),
    .B(_092_),
    .Y(_093_)
  );
  NOR _163_ (
    .A(state[3]),
    .B(_093_),
    .Y(dRamp_enable)
  );
  NOR _164_ (
    .A(state[2]),
    .B(state[3]),
    .Y(_094_)
  );
  NAND _165_ (
    .A(state[1]),
    .B(_094_),
    .Y(_095_)
  );
  NOR _166_ (
    .A(state[0]),
    .B(_095_),
    .Y(_096_)
  );
  NOR _167_ (
    .A(dRamp_enable),
    .B(_096_),
    .Y(_097_)
  );
  NAND _168_ (
    .A(counter[0]),
    .B(counter[2]),
    .Y(_098_)
  );
  NAND _169_ (
    .A(counter[4]),
    .B(counter[5]),
    .Y(_099_)
  );
  NOR _170_ (
    .A(_098_),
    .B(_099_),
    .Y(_100_)
  );
  NAND _171_ (
    .A(counter[1]),
    .B(counter[3]),
    .Y(_101_)
  );
  NOT _172_ (
    .A(_101_),
    .Y(_102_)
  );
  NAND _173_ (
    .A(counter[7]),
    .B(counter[6]),
    .Y(_103_)
  );
  NOR _174_ (
    .A(_101_),
    .B(_103_),
    .Y(_104_)
  );
  NAND _175_ (
    .A(_100_),
    .B(_104_),
    .Y(_105_)
  );
  NOR _176_ (
    .A(_097_),
    .B(_105_),
    .Y(_106_)
  );
  NOR _177_ (
    .A(counter[5]),
    .B(counter[6]),
    .Y(_107_)
  );
  NAND _178_ (
    .A(_090_),
    .B(_107_),
    .Y(_108_)
  );
  NOR _179_ (
    .A(counter[4]),
    .B(_108_),
    .Y(_109_)
  );
  NOT _180_ (
    .A(_109_),
    .Y(_110_)
  );
  NOR _181_ (
    .A(counter[1]),
    .B(counter[3]),
    .Y(_111_)
  );
  NAND _182_ (
    .A(state[0]),
    .B(_111_),
    .Y(_112_)
  );
  NOR _183_ (
    .A(_098_),
    .B(_112_),
    .Y(_113_)
  );
  NOT _184_ (
    .A(_113_),
    .Y(_114_)
  );
  NAND _185_ (
    .A(_082_),
    .B(_094_),
    .Y(_115_)
  );
  NOR _186_ (
    .A(_114_),
    .B(_115_),
    .Y(_116_)
  );
  NAND _187_ (
    .A(_109_),
    .B(_116_),
    .Y(_117_)
  );
  NOR _188_ (
    .A(counter[0]),
    .B(counter[2]),
    .Y(_118_)
  );
  NOR _189_ (
    .A(state[2]),
    .B(_084_),
    .Y(_119_)
  );
  NAND _190_ (
    .A(_118_),
    .B(_119_),
    .Y(_120_)
  );
  NAND _191_ (
    .A(_092_),
    .B(_102_),
    .Y(_121_)
  );
  NOR _192_ (
    .A(_120_),
    .B(_121_),
    .Y(_122_)
  );
  NAND _193_ (
    .A(_109_),
    .B(_122_),
    .Y(_123_)
  );
  NAND _194_ (
    .A(_117_),
    .B(_123_),
    .Y(_124_)
  );
  NOR _195_ (
    .A(_106_),
    .B(_124_),
    .Y(_125_)
  );
  NAND _196_ (
    .A(state[3]),
    .B(_109_),
    .Y(_126_)
  );
  NOR _197_ (
    .A(state[2]),
    .B(_101_),
    .Y(_127_)
  );
  NAND _198_ (
    .A(_118_),
    .B(_127_),
    .Y(_128_)
  );
  NOT _199_ (
    .A(_128_),
    .Y(_129_)
  );
  NAND _200_ (
    .A(_092_),
    .B(_129_),
    .Y(_130_)
  );
  NOR _201_ (
    .A(_126_),
    .B(_130_),
    .Y(_131_)
  );
  NAND _202_ (
    .A(_081_),
    .B(_125_),
    .Y(_132_)
  );
  NOT _203_ (
    .A(_132_),
    .Y(_133_)
  );
  NOR _204_ (
    .A(counter_reset),
    .B(stateSelector_shift),
    .Y(_134_)
  );
  NOR _205_ (
    .A(_133_),
    .B(_134_),
    .Y(_002_)
  );
  NOR _206_ (
    .A(counter_reset),
    .B(_125_),
    .Y(_001_)
  );
  NAND _207_ (
    .A(rowSelect_inc),
    .B(_132_),
    .Y(_135_)
  );
  NOR _208_ (
    .A(counter[5]),
    .B(_090_),
    .Y(_136_)
  );
  NAND _209_ (
    .A(_089_),
    .B(counter[7]),
    .Y(_137_)
  );
  NOR _210_ (
    .A(_091_),
    .B(_136_),
    .Y(_138_)
  );
  NAND _211_ (
    .A(counter[6]),
    .B(_137_),
    .Y(_139_)
  );
  NOR _212_ (
    .A(_089_),
    .B(counter[7]),
    .Y(_140_)
  );
  NAND _213_ (
    .A(counter[5]),
    .B(_090_),
    .Y(_141_)
  );
  NOR _214_ (
    .A(counter[5]),
    .B(_103_),
    .Y(_142_)
  );
  NOT _215_ (
    .A(_142_),
    .Y(_143_)
  );
  NOR _216_ (
    .A(_140_),
    .B(_142_),
    .Y(_144_)
  );
  NAND _217_ (
    .A(_141_),
    .B(_143_),
    .Y(_145_)
  );
  NOR _218_ (
    .A(counter[4]),
    .B(_145_),
    .Y(_146_)
  );
  NAND _219_ (
    .A(_088_),
    .B(_144_),
    .Y(_147_)
  );
  NAND _220_ (
    .A(_138_),
    .B(_146_),
    .Y(_148_)
  );
  NOR _221_ (
    .A(counter[6]),
    .B(_137_),
    .Y(_149_)
  );
  NAND _222_ (
    .A(_091_),
    .B(_136_),
    .Y(_004_)
  );
  NAND _223_ (
    .A(counter[4]),
    .B(_149_),
    .Y(_005_)
  );
  NAND _224_ (
    .A(_148_),
    .B(_005_),
    .Y(_006_)
  );
  NOT _225_ (
    .A(_006_),
    .Y(_007_)
  );
  NOR _226_ (
    .A(_139_),
    .B(_146_),
    .Y(_008_)
  );
  NAND _227_ (
    .A(_138_),
    .B(_147_),
    .Y(_009_)
  );
  NOR _228_ (
    .A(_149_),
    .B(_008_),
    .Y(_010_)
  );
  NAND _229_ (
    .A(_004_),
    .B(_009_),
    .Y(_011_)
  );
  NOR _230_ (
    .A(_088_),
    .B(_011_),
    .Y(_012_)
  );
  NAND _231_ (
    .A(counter[4]),
    .B(_010_),
    .Y(_013_)
  );
  NOR _232_ (
    .A(counter[4]),
    .B(_010_),
    .Y(_014_)
  );
  NAND _233_ (
    .A(_088_),
    .B(_011_),
    .Y(_015_)
  );
  NOR _234_ (
    .A(_012_),
    .B(_014_),
    .Y(_016_)
  );
  NAND _235_ (
    .A(_013_),
    .B(_015_),
    .Y(_017_)
  );
  NOR _236_ (
    .A(counter[3]),
    .B(_017_),
    .Y(_018_)
  );
  NAND _237_ (
    .A(_086_),
    .B(_016_),
    .Y(_019_)
  );
  NOR _238_ (
    .A(_144_),
    .B(_014_),
    .Y(_020_)
  );
  NAND _239_ (
    .A(_145_),
    .B(_015_),
    .Y(_021_)
  );
  NOR _240_ (
    .A(counter[4]),
    .B(_004_),
    .Y(_022_)
  );
  NAND _241_ (
    .A(_088_),
    .B(_149_),
    .Y(_023_)
  );
  NOR _242_ (
    .A(_020_),
    .B(_022_),
    .Y(_024_)
  );
  NAND _243_ (
    .A(_021_),
    .B(_023_),
    .Y(_025_)
  );
  NOR _244_ (
    .A(_018_),
    .B(_024_),
    .Y(_026_)
  );
  NAND _245_ (
    .A(_019_),
    .B(_025_),
    .Y(_027_)
  );
  NOR _246_ (
    .A(_006_),
    .B(_026_),
    .Y(_028_)
  );
  NAND _247_ (
    .A(_007_),
    .B(_027_),
    .Y(_029_)
  );
  NOR _248_ (
    .A(counter[3]),
    .B(_028_),
    .Y(_030_)
  );
  NAND _249_ (
    .A(_086_),
    .B(_029_),
    .Y(_031_)
  );
  NOR _250_ (
    .A(_086_),
    .B(_029_),
    .Y(_032_)
  );
  NAND _251_ (
    .A(counter[3]),
    .B(_028_),
    .Y(_033_)
  );
  NOR _252_ (
    .A(_030_),
    .B(_032_),
    .Y(_034_)
  );
  NAND _253_ (
    .A(_031_),
    .B(_033_),
    .Y(_035_)
  );
  NOR _254_ (
    .A(counter[2]),
    .B(_035_),
    .Y(_036_)
  );
  NAND _255_ (
    .A(_087_),
    .B(_034_),
    .Y(_037_)
  );
  NOR _256_ (
    .A(_016_),
    .B(_030_),
    .Y(_038_)
  );
  NAND _257_ (
    .A(_017_),
    .B(_031_),
    .Y(_039_)
  );
  NOR _258_ (
    .A(_007_),
    .B(_019_),
    .Y(_040_)
  );
  NAND _259_ (
    .A(_006_),
    .B(_018_),
    .Y(_041_)
  );
  NOR _260_ (
    .A(_038_),
    .B(_040_),
    .Y(_042_)
  );
  NAND _261_ (
    .A(_039_),
    .B(_041_),
    .Y(_043_)
  );
  NOR _262_ (
    .A(_036_),
    .B(_042_),
    .Y(_044_)
  );
  NAND _263_ (
    .A(_037_),
    .B(_043_),
    .Y(_045_)
  );
  NAND _264_ (
    .A(_006_),
    .B(_019_),
    .Y(_046_)
  );
  NAND _265_ (
    .A(_024_),
    .B(_046_),
    .Y(_047_)
  );
  NAND _266_ (
    .A(_027_),
    .B(_047_),
    .Y(_048_)
  );
  NOT _267_ (
    .A(_048_),
    .Y(_049_)
  );
  NOR _268_ (
    .A(_044_),
    .B(_049_),
    .Y(_050_)
  );
  NAND _269_ (
    .A(_045_),
    .B(_048_),
    .Y(_051_)
  );
  NOR _270_ (
    .A(counter[2]),
    .B(_050_),
    .Y(_052_)
  );
  NAND _271_ (
    .A(_087_),
    .B(_051_),
    .Y(_053_)
  );
  NOR _272_ (
    .A(_034_),
    .B(_052_),
    .Y(_054_)
  );
  NAND _273_ (
    .A(_035_),
    .B(_053_),
    .Y(_055_)
  );
  NOR _274_ (
    .A(_035_),
    .B(_053_),
    .Y(_056_)
  );
  NAND _275_ (
    .A(_034_),
    .B(_052_),
    .Y(_057_)
  );
  NOR _276_ (
    .A(_054_),
    .B(_056_),
    .Y(_058_)
  );
  NAND _277_ (
    .A(_055_),
    .B(_057_),
    .Y(_059_)
  );
  NAND _278_ (
    .A(counter[1]),
    .B(_058_),
    .Y(_060_)
  );
  NOR _279_ (
    .A(_036_),
    .B(_048_),
    .Y(_061_)
  );
  NOR _280_ (
    .A(_043_),
    .B(_061_),
    .Y(_062_)
  );
  NOR _281_ (
    .A(_044_),
    .B(_062_),
    .Y(_063_)
  );
  NOR _282_ (
    .A(_059_),
    .B(_063_),
    .Y(_064_)
  );
  NOR _283_ (
    .A(counter[1]),
    .B(_064_),
    .Y(_065_)
  );
  NOR _284_ (
    .A(_087_),
    .B(_051_),
    .Y(_066_)
  );
  NAND _285_ (
    .A(counter[2]),
    .B(_050_),
    .Y(_067_)
  );
  NOR _286_ (
    .A(_052_),
    .B(_066_),
    .Y(_068_)
  );
  NAND _287_ (
    .A(_053_),
    .B(_067_),
    .Y(_069_)
  );
  NOR _288_ (
    .A(counter[0]),
    .B(_068_),
    .Y(_070_)
  );
  NOR _289_ (
    .A(_085_),
    .B(_069_),
    .Y(_071_)
  );
  NOR _290_ (
    .A(_070_),
    .B(_071_),
    .Y(_072_)
  );
  NAND _291_ (
    .A(_111_),
    .B(_118_),
    .Y(_073_)
  );
  NOR _292_ (
    .A(_110_),
    .B(_073_),
    .Y(_074_)
  );
  NOR _293_ (
    .A(_132_),
    .B(_074_),
    .Y(_075_)
  );
  NAND _294_ (
    .A(_072_),
    .B(_075_),
    .Y(_076_)
  );
  NOR _295_ (
    .A(_065_),
    .B(_076_),
    .Y(_077_)
  );
  NAND _296_ (
    .A(_060_),
    .B(_077_),
    .Y(_078_)
  );
  NAND _297_ (
    .A(_135_),
    .B(_078_),
    .Y(_000_)
  );
  NOR _298_ (
    .A(counter_reset),
    .B(_084_),
    .Y(rowSelect_enable)
  );
  NOR _299_ (
    .A(counter_reset),
    .B(_083_),
    .Y(p_erase)
  );
  NOR _300_ (
    .A(counter_reset),
    .B(_082_),
    .Y(p_expose)
  );
  NOR _301_ (
    .A(internal_reset),
    .B(reset),
    .Y(_079_)
  );
  NOT _302_ (
    .A(_079_),
    .Y(master_reset)
  );
  NAND _303_ (
    .A(_081_),
    .B(_079_),
    .Y(master_counter_reset)
  );
  NOR _304_ (
    .A(internal_reset),
    .B(_131_),
    .Y(_080_)
  );
  NOR _305_ (
    .A(counter_reset),
    .B(_080_),
    .Y(_003_)
  );
  (* src = "sensorState.v:107.5-141.8" *)
  DFF _306_ (
    .C(clk),
    .D(_000_),
    .Q(rowSelect_inc)
  );
  (* src = "sensorState.v:107.5-141.8" *)
  DFF _307_ (
    .C(clk),
    .D(_001_),
    .Q(counter_reset)
  );
  (* src = "sensorState.v:107.5-141.8" *)
  DFF _308_ (
    .C(clk),
    .D(_002_),
    .Q(stateSelector_shift)
  );
  (* src = "sensorState.v:107.5-141.8" *)
  DFF _309_ (
    .C(clk),
    .D(_003_),
    .Q(internal_reset)
  );
  (* src = "sensorState.v:46.36-51.6" *)
  \$paramod\Counter\bits=s32'00000000000000000000000000001000  Counter (
    .clk(clk),
    .enable(1'h1),
    .out(counter),
    .reset(master_counter_reset)
  );
  (* src = "sensorState.v:63.25-68.6" *)
  \$paramod\Counter\bits=s32'00000000000000000000000000001000  DRamp (
    .clk(clk),
    .enable(dRamp_enable),
    .out(p_dRamp),
    .reset(1'h1)
  );
  (* src = "sensorState.v:81.7-87.6" *)
  \$paramod\CircularShifter\length=s32'00000000000000000000000000000010  RowSelector (
    .clk(rowSelect_inc),
    .inputEnable(rowSelect_enable),
    .out(p_row_select),
    .outputEnable(rowSelect_enable),
    .reset(1'h1)
  );
  (* src = "sensorState.v:95.7-101.6" *)
  \$paramod\CircularShifter\length=s32'00000000000000000000000000000100  StateSelector (
    .clk(stateSelector_shift),
    .inputEnable(1'h1),
    .out(state),
    .outputEnable(1'h1),
    .reset(master_reset)
  );
  assign dRamp_reset = 1'hx;
  assign idle = counter_reset;
  assign master_dRamp_reset = 1'h1;
  assign master_rowSelect_reset = 1'h1;
  assign p_aRamp = clk;
  assign p_expose_clk = clk;
  assign rowSelect_reset = 1'hx;
endmodule
