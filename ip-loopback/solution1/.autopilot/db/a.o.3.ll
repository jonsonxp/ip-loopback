; ModuleID = '/home/cho/hCODE/IPs/ip-loopback/ip-loopback/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@ip_loopback_str = internal unnamed_addr constant [12 x i8] c"ip_loopback\00" ; [#uses=1 type=[12 x i8]*]
@p_str2 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1 ; [#uses=1 type=[13 x i8]*]
@p_str1 = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1 ; [#uses=2 type=[8 x i8]*]
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=14 type=[1 x i8]*]

; [#uses=7]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @ip_loopback(i128* %in_V_V, i128* %out_V_V) {
  call void (...)* @_ssdm_op_SpecBitsMap(i128* %in_V_V), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i128* %out_V_V), !map !13
  call void (...)* @_ssdm_op_SpecTopModule([12 x i8]* @ip_loopback_str) nounwind
  call void @llvm.dbg.value(metadata !{i128* %in_V_V}, i64 0, metadata !17), !dbg !435 ; [debug line = 5:25] [debug variable = in.V.V]
  call void @llvm.dbg.value(metadata !{i128* %out_V_V}, i64 0, metadata !436), !dbg !438 ; [debug line = 6:25] [debug variable = out.V.V]
  call void (...)* @_ssdm_op_SpecPipeline(i32 0, i32 2, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !439 ; [debug line = 8:1]
  call void (...)* @_ssdm_op_SpecLatency(i32 0, i32 0, [1 x i8]* @p_str) nounwind, !dbg !441 ; [debug line = 9:1]
  call void (...)* @_ssdm_op_SpecInterface(i128* %in_V_V, [8 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 100, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !442 ; [debug line = 10:1]
  call void (...)* @_ssdm_op_SpecInterface(i128* %out_V_V, [8 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 100, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !443 ; [debug line = 11:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !444 ; [debug line = 12:1]
  call void @llvm.dbg.value(metadata !{i128* %in_V_V}, i64 0, metadata !445), !dbg !450 ; [debug line = 123:48@16:2] [debug variable = stream<ap_int<128> >.V.V]
  %tmp_V = call i128 @_ssdm_op_Read.ap_fifo.volatile.i128P(i128* %in_V_V), !dbg !452 ; [#uses=1 type=i128] [debug line = 125:9@16:2]
  call void @llvm.dbg.value(metadata !{i128 %tmp_V}, i64 0, metadata !454), !dbg !452 ; [debug line = 125:9@16:2] [debug variable = tmp.V]
  call void @llvm.dbg.value(metadata !{i128 %tmp_V}, i64 0, metadata !456), !dbg !458 ; [debug line = 172:10@126:9@16:2] [debug variable = value.V]
  call void @llvm.dbg.value(metadata !{i128* %out_V_V}, i64 0, metadata !462), !dbg !465 ; [debug line = 144:48@17:2] [debug variable = stream<ap_int<128> >.V.V]
  call void @llvm.dbg.value(metadata !{i128 %tmp_V}, i64 0, metadata !467), !dbg !470 ; [debug line = 145:31@17:2] [debug variable = tmp.V]
  call void @_ssdm_op_Write.ap_fifo.volatile.i128P(i128* %out_V_V, i128 %tmp_V), !dbg !471 ; [debug line = 146:9@17:2]
  ret void, !dbg !472                             ; [debug line = 18:1]
}

; [#uses=1]
define weak void @_ssdm_op_Write.ap_fifo.volatile.i128P(i128*, i128) {
entry:
  %empty = call i128 @_autotb_FifoWrite_i128(i128* %0, i128 %1) ; [#uses=0 type=i128]
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecLatency(...) nounwind {
entry:
  ret void
}

; [#uses=3]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=2]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i128 @_ssdm_op_Read.ap_fifo.volatile.i128P(i128*) {
entry:
  %empty = call i128 @_autotb_FifoRead_i128(i128* %0) ; [#uses=1 type=i128]
  ret i128 %empty
}

; [#uses=0]
declare i16 @_ssdm_op_HSub(...)

; [#uses=0]
declare i16 @_ssdm_op_HMul(...)

; [#uses=0]
declare i16 @_ssdm_op_HDiv(...)

; [#uses=0]
declare i16 @_ssdm_op_HAdd(...)

; [#uses=1]
declare i128 @_autotb_FifoWrite_i128(i128*, i128)

; [#uses=1]
declare i128 @_autotb_FifoRead_i128(i128*)

; [#uses=1]
declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!hls.encrypted.func = !{}
!llvm.map.gv = !{!0}

!0 = metadata !{metadata !1, [1 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !"", i32 0, i32 31}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 127, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"in.V.V", metadata !11, metadata !"int128", i32 0, i32 127}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 99, i32 1}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 127, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"out.V.V", metadata !11, metadata !"int128", i32 0, i32 127}
!17 = metadata !{i32 790531, metadata !18, metadata !"in.V.V", null, i32 5, metadata !426, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!18 = metadata !{i32 786689, metadata !19, metadata !"in", metadata !20, i32 16777221, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!19 = metadata !{i32 786478, i32 0, metadata !20, metadata !"ip_loopback", metadata !"ip_loopback", metadata !"_Z11ip_loopbackRN3hls6streamI6ap_intILi128EEEES4_", metadata !20, i32 4, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !46, i32 7} ; [ DW_TAG_subprogram ]
!20 = metadata !{i32 786473, metadata !"./src/main.cpp", metadata !"/home/cho/hCODE/IPs/ip-loopback", null} ; [ DW_TAG_file_type ]
!21 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !22, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!22 = metadata !{null, metadata !23, metadata !23}
!23 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !24} ; [ DW_TAG_reference_type ]
!24 = metadata !{i32 786434, metadata !25, metadata !"stream<ap_int<128> >", metadata !26, i32 79, i64 128, i64 128, i32 0, i32 0, null, metadata !27, i32 0, null, metadata !424} ; [ DW_TAG_class_type ]
!25 = metadata !{i32 786489, null, metadata !"hls", metadata !26, i32 69} ; [ DW_TAG_namespace ]
!26 = metadata !{i32 786473, metadata !"/opt/Xilinx/Vivado_HLS/2015.4/common/technology/autopilot/hls_stream.h", metadata !"/home/cho/hCODE/IPs/ip-loopback", null} ; [ DW_TAG_file_type ]
!27 = metadata !{metadata !28, metadata !384, metadata !388, metadata !391, metadata !396, metadata !399, metadata !402, metadata !405, metadata !409, metadata !410, metadata !411, metadata !414, metadata !417, metadata !418, metadata !421}
!28 = metadata !{i32 786445, metadata !24, metadata !"V", metadata !26, i32 163, i64 128, i64 128, i64 0, i32 1, metadata !29} ; [ DW_TAG_member ]
!29 = metadata !{i32 786434, null, metadata !"ap_int<128>", metadata !30, i32 73, i64 128, i64 128, i32 0, i32 0, null, metadata !31, i32 0, null, metadata !383} ; [ DW_TAG_class_type ]
!30 = metadata !{i32 786473, metadata !"/opt/Xilinx/Vivado_HLS/2015.4/common/technology/autopilot/ap_int.h", metadata !"/home/cho/hCODE/IPs/ip-loopback", null} ; [ DW_TAG_file_type ]
!31 = metadata !{metadata !32, metadata !315, metadata !319, metadata !322, metadata !325, metadata !328, metadata !331, metadata !334, metadata !337, metadata !340, metadata !343, metadata !346, metadata !349, metadata !352, metadata !355, metadata !358, metadata !361, metadata !364, metadata !371, metadata !376, metadata !380}
!32 = metadata !{i32 786460, metadata !29, null, metadata !30, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !33} ; [ DW_TAG_inheritance ]
!33 = metadata !{i32 786434, null, metadata !"ap_int_base<128, true, false>", metadata !34, i32 2339, i64 128, i64 128, i32 0, i32 0, null, metadata !35, i32 0, null, metadata !312} ; [ DW_TAG_class_type ]
!34 = metadata !{i32 786473, metadata !"/opt/Xilinx/Vivado_HLS/2015.4/common/technology/autopilot/ap_int_syn.h", metadata !"/home/cho/hCODE/IPs/ip-loopback", null} ; [ DW_TAG_file_type ]
!35 = metadata !{metadata !36, metadata !53, metadata !57, metadata !65, metadata !71, metadata !74, metadata !78, metadata !82, metadata !86, metadata !90, metadata !93, metadata !97, metadata !101, metadata !105, metadata !110, metadata !115, metadata !119, metadata !123, metadata !129, metadata !132, metadata !136, metadata !139, metadata !142, metadata !143, metadata !147, metadata !150, metadata !153, metadata !156, metadata !159, metadata !162, metadata !165, metadata !168, metadata !171, metadata !174, metadata !177, metadata !180, metadata !190, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197, metadata !200, metadata !203, metadata !206, metadata !209, metadata !212, metadata !215, metadata !218, metadata !219, metadata !223, metadata !226, metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !234, metadata !235, metadata !238, metadata !239, metadata !240, metadata !241, metadata !242, metadata !243, metadata !246, metadata !247, metadata !248, metadata !251, metadata !252, metadata !255, metadata !264, metadata !265, metadata !266, metadata !270, metadata !271, metadata !274, metadata !275, metadata !279, metadata !280, metadata !281, metadata !282, metadata !285, metadata !286, metadata !287, metadata !288, metadata !289, metadata !290, metadata !291, metadata !292, metadata !293, metadata !294, metadata !295, metadata !296, metadata !306, metadata !309}
!36 = metadata !{i32 786460, metadata !33, null, metadata !34, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_inheritance ]
!37 = metadata !{i32 786434, null, metadata !"ssdm_int<128 + 1024 * 0, true>", metadata !38, i32 136, i64 128, i64 128, i32 0, i32 0, null, metadata !39, i32 0, null, metadata !48} ; [ DW_TAG_class_type ]
!38 = metadata !{i32 786473, metadata !"/opt/Xilinx/Vivado_HLS/2015.4/common/technology/autopilot/etc/autopilot_dt.def", metadata !"/home/cho/hCODE/IPs/ip-loopback", null} ; [ DW_TAG_file_type ]
!39 = metadata !{metadata !40, metadata !42}
!40 = metadata !{i32 786445, metadata !37, metadata !"V", metadata !38, i32 136, i64 128, i64 128, i64 0, i32 0, metadata !41} ; [ DW_TAG_member ]
!41 = metadata !{i32 786468, null, metadata !"int128", null, i32 0, i64 128, i64 128, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!42 = metadata !{i32 786478, i32 0, metadata !37, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !38, i32 136, metadata !43, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 136} ; [ DW_TAG_subprogram ]
!43 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !44, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!44 = metadata !{null, metadata !45}
!45 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !37} ; [ DW_TAG_pointer_type ]
!46 = metadata !{metadata !47}
!47 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!48 = metadata !{metadata !49, metadata !51}
!49 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !50, i64 128, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!50 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!51 = metadata !{i32 786480, null, metadata !"_AP_S", metadata !52, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!52 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!53 = metadata !{i32 786478, i32 0, metadata !33, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !34, i32 2377, metadata !54, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2377} ; [ DW_TAG_subprogram ]
!54 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !55, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!55 = metadata !{null, metadata !56}
!56 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !33} ; [ DW_TAG_pointer_type ]
!57 = metadata !{i32 786478, i32 0, metadata !33, metadata !"ap_int_base<128, true>", metadata !"ap_int_base<128, true>", metadata !"", metadata !34, i32 2389, metadata !58, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !62, i32 0, metadata !46, i32 2389} ; [ DW_TAG_subprogram ]
!58 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !59, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!59 = metadata !{null, metadata !56, metadata !60}
!60 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !61} ; [ DW_TAG_reference_type ]
!61 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !33} ; [ DW_TAG_const_type ]
!62 = metadata !{metadata !63, metadata !64}
!63 = metadata !{i32 786480, null, metadata !"_AP_W2", metadata !50, i64 128, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!64 = metadata !{i32 786480, null, metadata !"_AP_S2", metadata !52, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!65 = metadata !{i32 786478, i32 0, metadata !33, metadata !"ap_int_base<128, true>", metadata !"ap_int_base<128, true>", metadata !"", metadata !34, i32 2392, metadata !66, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !62, i32 0, metadata !46, i32 2392} ; [ DW_TAG_subprogram ]
!66 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !67, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!67 = metadata !{null, metadata !56, metadata !68}
!68 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !69} ; [ DW_TAG_reference_type ]
!69 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !70} ; [ DW_TAG_const_type ]
!70 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !33} ; [ DW_TAG_volatile_type ]
!71 = metadata !{i32 786478, i32 0, metadata !33, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !34, i32 2399, metadata !72, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !46, i32 2399} ; [ DW_TAG_subprogram ]
!72 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !73, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!73 = metadata !{null, metadata !56, metadata !52}
!74 = metadata !{i32 786478, i32 0, metadata !33, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !34, i32 2400, metadata !75, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !46, i32 2400} ; [ DW_TAG_subprogram ]
!75 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !76, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!76 = metadata !{null, metadata !56, metadata !77}
!77 = metadata !{i32 786468, null, metadata !"signed char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!78 = metadata !{i32 786478, i32 0, metadata !33, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !34, i32 2401, metadata !79, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !46, i32 2401} ; [ DW_TAG_subprogram ]
!79 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !80, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!80 = metadata !{null, metadata !56, metadata !81}
!81 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!82 = metadata !{i32 786478, i32 0, metadata !33, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !34, i32 2402, metadata !83, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !46, i32 2402} ; [ DW_TAG_subprogram ]
!83 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !84, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!84 = metadata !{null, metadata !56, metadata !85}
!85 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!86 = metadata !{i32 786478, i32 0, metadata !33, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !34, i32 2403, metadata !87, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !46, i32 2403} ; [ DW_TAG_subprogram ]
!87 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !88, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!88 = metadata !{null, metadata !56, metadata !89}
!89 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!90 = metadata !{i32 786478, i32 0, metadata !33, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !34, i32 2404, metadata !91, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !46, i32 2404} ; [ DW_TAG_subprogram ]
!91 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !92, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!92 = metadata !{null, metadata !56, metadata !50}
!93 = metadata !{i32 786478, i32 0, metadata !33, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !34, i32 2405, metadata !94, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !46, i32 2405} ; [ DW_TAG_subprogram ]
!94 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !95, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!95 = metadata !{null, metadata !56, metadata !96}
!96 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!97 = metadata !{i32 786478, i32 0, metadata !33, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !34, i32 2406, metadata !98, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !46, i32 2406} ; [ DW_TAG_subprogram ]
!98 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !99, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!99 = metadata !{null, metadata !56, metadata !100}
!100 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!101 = metadata !{i32 786478, i32 0, metadata !33, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !34, i32 2407, metadata !102, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !46, i32 2407} ; [ DW_TAG_subprogram ]
!102 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !103, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!103 = metadata !{null, metadata !56, metadata !104}
!104 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!105 = metadata !{i32 786478, i32 0, metadata !33, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !34, i32 2408, metadata !106, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !46, i32 2408} ; [ DW_TAG_subprogram ]
!106 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !107, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!107 = metadata !{null, metadata !56, metadata !108}
!108 = metadata !{i32 786454, null, metadata !"ap_slong", metadata !34, i32 110, i64 0, i64 0, i64 0, i32 0, metadata !109} ; [ DW_TAG_typedef ]
!109 = metadata !{i32 786468, null, metadata !"long long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!110 = metadata !{i32 786478, i32 0, metadata !33, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !34, i32 2409, metadata !111, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !46, i32 2409} ; [ DW_TAG_subprogram ]
!111 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !112, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!112 = metadata !{null, metadata !56, metadata !113}
!113 = metadata !{i32 786454, null, metadata !"ap_ulong", metadata !34, i32 109, i64 0, i64 0, i64 0, i32 0, metadata !114} ; [ DW_TAG_typedef ]
!114 = metadata !{i32 786468, null, metadata !"long long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!115 = metadata !{i32 786478, i32 0, metadata !33, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !34, i32 2410, metadata !116, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !46, i32 2410} ; [ DW_TAG_subprogram ]
!116 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !117, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!117 = metadata !{null, metadata !56, metadata !118}
!118 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!119 = metadata !{i32 786478, i32 0, metadata !33, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !34, i32 2411, metadata !120, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !46, i32 2411} ; [ DW_TAG_subprogram ]
!120 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !121, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!121 = metadata !{null, metadata !56, metadata !122}
!122 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!123 = metadata !{i32 786478, i32 0, metadata !33, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !34, i32 2438, metadata !124, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2438} ; [ DW_TAG_subprogram ]
!124 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !125, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!125 = metadata !{null, metadata !56, metadata !126}
!126 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !127} ; [ DW_TAG_pointer_type ]
!127 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !128} ; [ DW_TAG_const_type ]
!128 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!129 = metadata !{i32 786478, i32 0, metadata !33, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !34, i32 2445, metadata !130, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2445} ; [ DW_TAG_subprogram ]
!130 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !131, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!131 = metadata !{null, metadata !56, metadata !126, metadata !77}
!132 = metadata !{i32 786478, i32 0, metadata !33, metadata !"read", metadata !"read", metadata !"_ZNV11ap_int_baseILi128ELb1ELb0EE4readEv", metadata !34, i32 2466, metadata !133, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2466} ; [ DW_TAG_subprogram ]
!133 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !134, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!134 = metadata !{metadata !33, metadata !135}
!135 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !70} ; [ DW_TAG_pointer_type ]
!136 = metadata !{i32 786478, i32 0, metadata !33, metadata !"write", metadata !"write", metadata !"_ZNV11ap_int_baseILi128ELb1ELb0EE5writeERKS0_", metadata !34, i32 2472, metadata !137, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2472} ; [ DW_TAG_subprogram ]
!137 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !138, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!138 = metadata !{null, metadata !135, metadata !60}
!139 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi128ELb1ELb0EEaSERVKS0_", metadata !34, i32 2484, metadata !140, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2484} ; [ DW_TAG_subprogram ]
!140 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !141, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!141 = metadata !{null, metadata !135, metadata !68}
!142 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi128ELb1ELb0EEaSERKS0_", metadata !34, i32 2493, metadata !137, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2493} ; [ DW_TAG_subprogram ]
!143 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi128ELb1ELb0EEaSERVKS0_", metadata !34, i32 2516, metadata !144, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2516} ; [ DW_TAG_subprogram ]
!144 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !145, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!145 = metadata !{metadata !146, metadata !56, metadata !68}
!146 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !33} ; [ DW_TAG_reference_type ]
!147 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi128ELb1ELb0EEaSERKS0_", metadata !34, i32 2521, metadata !148, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2521} ; [ DW_TAG_subprogram ]
!148 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !149, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!149 = metadata !{metadata !146, metadata !56, metadata !60}
!150 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi128ELb1ELb0EEaSEPKc", metadata !34, i32 2525, metadata !151, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2525} ; [ DW_TAG_subprogram ]
!151 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !152, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!152 = metadata !{metadata !146, metadata !56, metadata !126}
!153 = metadata !{i32 786478, i32 0, metadata !33, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi128ELb1ELb0EE3setEPKca", metadata !34, i32 2533, metadata !154, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2533} ; [ DW_TAG_subprogram ]
!154 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !155, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!155 = metadata !{metadata !146, metadata !56, metadata !126, metadata !77}
!156 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi128ELb1ELb0EEaSEc", metadata !34, i32 2547, metadata !157, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2547} ; [ DW_TAG_subprogram ]
!157 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !158, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!158 = metadata !{metadata !146, metadata !56, metadata !128}
!159 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi128ELb1ELb0EEaSEh", metadata !34, i32 2548, metadata !160, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2548} ; [ DW_TAG_subprogram ]
!160 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !161, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!161 = metadata !{metadata !146, metadata !56, metadata !81}
!162 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi128ELb1ELb0EEaSEs", metadata !34, i32 2549, metadata !163, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2549} ; [ DW_TAG_subprogram ]
!163 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !164, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!164 = metadata !{metadata !146, metadata !56, metadata !85}
!165 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi128ELb1ELb0EEaSEt", metadata !34, i32 2550, metadata !166, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2550} ; [ DW_TAG_subprogram ]
!166 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !167, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!167 = metadata !{metadata !146, metadata !56, metadata !89}
!168 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi128ELb1ELb0EEaSEi", metadata !34, i32 2551, metadata !169, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2551} ; [ DW_TAG_subprogram ]
!169 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !170, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!170 = metadata !{metadata !146, metadata !56, metadata !50}
!171 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi128ELb1ELb0EEaSEj", metadata !34, i32 2552, metadata !172, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2552} ; [ DW_TAG_subprogram ]
!172 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !173, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!173 = metadata !{metadata !146, metadata !56, metadata !96}
!174 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi128ELb1ELb0EEaSEx", metadata !34, i32 2553, metadata !175, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2553} ; [ DW_TAG_subprogram ]
!175 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !176, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!176 = metadata !{metadata !146, metadata !56, metadata !108}
!177 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi128ELb1ELb0EEaSEy", metadata !34, i32 2554, metadata !178, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2554} ; [ DW_TAG_subprogram ]
!178 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !179, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!179 = metadata !{metadata !146, metadata !56, metadata !113}
!180 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator long long", metadata !"operator long long", metadata !"_ZNK11ap_int_baseILi128ELb1ELb0EEcvxEv", metadata !34, i32 2593, metadata !181, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2593} ; [ DW_TAG_subprogram ]
!181 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !182, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!182 = metadata !{metadata !183, metadata !189}
!183 = metadata !{i32 786454, metadata !33, metadata !"RetType", metadata !34, i32 2343, i64 0, i64 0, i64 0, i32 0, metadata !184} ; [ DW_TAG_typedef ]
!184 = metadata !{i32 786454, metadata !185, metadata !"Type", metadata !34, i32 1358, i64 0, i64 0, i64 0, i32 0, metadata !108} ; [ DW_TAG_typedef ]
!185 = metadata !{i32 786434, null, metadata !"retval<8, true>", metadata !34, i32 1357, i64 8, i64 8, i32 0, i32 0, null, metadata !186, i32 0, null, metadata !187} ; [ DW_TAG_class_type ]
!186 = metadata !{i32 0}
!187 = metadata !{metadata !188, metadata !51}
!188 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !50, i64 8, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!189 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !61} ; [ DW_TAG_pointer_type ]
!190 = metadata !{i32 786478, i32 0, metadata !33, metadata !"to_bool", metadata !"to_bool", metadata !"_ZNK11ap_int_baseILi128ELb1ELb0EE7to_boolEv", metadata !34, i32 2599, metadata !191, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2599} ; [ DW_TAG_subprogram ]
!191 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !192, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!192 = metadata !{metadata !52, metadata !189}
!193 = metadata !{i32 786478, i32 0, metadata !33, metadata !"to_uchar", metadata !"to_uchar", metadata !"_ZNK11ap_int_baseILi128ELb1ELb0EE8to_ucharEv", metadata !34, i32 2600, metadata !191, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2600} ; [ DW_TAG_subprogram ]
!194 = metadata !{i32 786478, i32 0, metadata !33, metadata !"to_char", metadata !"to_char", metadata !"_ZNK11ap_int_baseILi128ELb1ELb0EE7to_charEv", metadata !34, i32 2601, metadata !191, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2601} ; [ DW_TAG_subprogram ]
!195 = metadata !{i32 786478, i32 0, metadata !33, metadata !"to_ushort", metadata !"to_ushort", metadata !"_ZNK11ap_int_baseILi128ELb1ELb0EE9to_ushortEv", metadata !34, i32 2602, metadata !191, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2602} ; [ DW_TAG_subprogram ]
!196 = metadata !{i32 786478, i32 0, metadata !33, metadata !"to_short", metadata !"to_short", metadata !"_ZNK11ap_int_baseILi128ELb1ELb0EE8to_shortEv", metadata !34, i32 2603, metadata !191, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2603} ; [ DW_TAG_subprogram ]
!197 = metadata !{i32 786478, i32 0, metadata !33, metadata !"to_int", metadata !"to_int", metadata !"_ZNK11ap_int_baseILi128ELb1ELb0EE6to_intEv", metadata !34, i32 2604, metadata !198, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2604} ; [ DW_TAG_subprogram ]
!198 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !199, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!199 = metadata !{metadata !50, metadata !189}
!200 = metadata !{i32 786478, i32 0, metadata !33, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK11ap_int_baseILi128ELb1ELb0EE7to_uintEv", metadata !34, i32 2605, metadata !201, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2605} ; [ DW_TAG_subprogram ]
!201 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !202, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!202 = metadata !{metadata !96, metadata !189}
!203 = metadata !{i32 786478, i32 0, metadata !33, metadata !"to_long", metadata !"to_long", metadata !"_ZNK11ap_int_baseILi128ELb1ELb0EE7to_longEv", metadata !34, i32 2606, metadata !204, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2606} ; [ DW_TAG_subprogram ]
!204 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !205, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!205 = metadata !{metadata !100, metadata !189}
!206 = metadata !{i32 786478, i32 0, metadata !33, metadata !"to_ulong", metadata !"to_ulong", metadata !"_ZNK11ap_int_baseILi128ELb1ELb0EE8to_ulongEv", metadata !34, i32 2607, metadata !207, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2607} ; [ DW_TAG_subprogram ]
!207 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !208, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!208 = metadata !{metadata !104, metadata !189}
!209 = metadata !{i32 786478, i32 0, metadata !33, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK11ap_int_baseILi128ELb1ELb0EE8to_int64Ev", metadata !34, i32 2608, metadata !210, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2608} ; [ DW_TAG_subprogram ]
!210 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !211, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!211 = metadata !{metadata !108, metadata !189}
!212 = metadata !{i32 786478, i32 0, metadata !33, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK11ap_int_baseILi128ELb1ELb0EE9to_uint64Ev", metadata !34, i32 2609, metadata !213, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2609} ; [ DW_TAG_subprogram ]
!213 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !214, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!214 = metadata !{metadata !113, metadata !189}
!215 = metadata !{i32 786478, i32 0, metadata !33, metadata !"to_double", metadata !"to_double", metadata !"_ZNK11ap_int_baseILi128ELb1ELb0EE9to_doubleEv", metadata !34, i32 2610, metadata !216, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2610} ; [ DW_TAG_subprogram ]
!216 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !217, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!217 = metadata !{metadata !122, metadata !189}
!218 = metadata !{i32 786478, i32 0, metadata !33, metadata !"length", metadata !"length", metadata !"_ZNK11ap_int_baseILi128ELb1ELb0EE6lengthEv", metadata !34, i32 2623, metadata !198, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2623} ; [ DW_TAG_subprogram ]
!219 = metadata !{i32 786478, i32 0, metadata !33, metadata !"length", metadata !"length", metadata !"_ZNVK11ap_int_baseILi128ELb1ELb0EE6lengthEv", metadata !34, i32 2624, metadata !220, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2624} ; [ DW_TAG_subprogram ]
!220 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !221, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!221 = metadata !{metadata !50, metadata !222}
!222 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !69} ; [ DW_TAG_pointer_type ]
!223 = metadata !{i32 786478, i32 0, metadata !33, metadata !"reverse", metadata !"reverse", metadata !"_ZN11ap_int_baseILi128ELb1ELb0EE7reverseEv", metadata !34, i32 2629, metadata !224, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2629} ; [ DW_TAG_subprogram ]
!224 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !225, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!225 = metadata !{metadata !146, metadata !56}
!226 = metadata !{i32 786478, i32 0, metadata !33, metadata !"iszero", metadata !"iszero", metadata !"_ZNK11ap_int_baseILi128ELb1ELb0EE6iszeroEv", metadata !34, i32 2635, metadata !191, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2635} ; [ DW_TAG_subprogram ]
!227 = metadata !{i32 786478, i32 0, metadata !33, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK11ap_int_baseILi128ELb1ELb0EE7is_zeroEv", metadata !34, i32 2640, metadata !191, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2640} ; [ DW_TAG_subprogram ]
!228 = metadata !{i32 786478, i32 0, metadata !33, metadata !"sign", metadata !"sign", metadata !"_ZNK11ap_int_baseILi128ELb1ELb0EE4signEv", metadata !34, i32 2645, metadata !191, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2645} ; [ DW_TAG_subprogram ]
!229 = metadata !{i32 786478, i32 0, metadata !33, metadata !"clear", metadata !"clear", metadata !"_ZN11ap_int_baseILi128ELb1ELb0EE5clearEi", metadata !34, i32 2653, metadata !91, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2653} ; [ DW_TAG_subprogram ]
!230 = metadata !{i32 786478, i32 0, metadata !33, metadata !"invert", metadata !"invert", metadata !"_ZN11ap_int_baseILi128ELb1ELb0EE6invertEi", metadata !34, i32 2659, metadata !91, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2659} ; [ DW_TAG_subprogram ]
!231 = metadata !{i32 786478, i32 0, metadata !33, metadata !"test", metadata !"test", metadata !"_ZNK11ap_int_baseILi128ELb1ELb0EE4testEi", metadata !34, i32 2667, metadata !232, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2667} ; [ DW_TAG_subprogram ]
!232 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !233, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!233 = metadata !{metadata !52, metadata !189, metadata !50}
!234 = metadata !{i32 786478, i32 0, metadata !33, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi128ELb1ELb0EE3setEi", metadata !34, i32 2673, metadata !91, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2673} ; [ DW_TAG_subprogram ]
!235 = metadata !{i32 786478, i32 0, metadata !33, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi128ELb1ELb0EE3setEib", metadata !34, i32 2679, metadata !236, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2679} ; [ DW_TAG_subprogram ]
!236 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !237, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!237 = metadata !{null, metadata !56, metadata !50, metadata !52}
!238 = metadata !{i32 786478, i32 0, metadata !33, metadata !"lrotate", metadata !"lrotate", metadata !"_ZN11ap_int_baseILi128ELb1ELb0EE7lrotateEi", metadata !34, i32 2686, metadata !91, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2686} ; [ DW_TAG_subprogram ]
!239 = metadata !{i32 786478, i32 0, metadata !33, metadata !"rrotate", metadata !"rrotate", metadata !"_ZN11ap_int_baseILi128ELb1ELb0EE7rrotateEi", metadata !34, i32 2695, metadata !91, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2695} ; [ DW_TAG_subprogram ]
!240 = metadata !{i32 786478, i32 0, metadata !33, metadata !"set_bit", metadata !"set_bit", metadata !"_ZN11ap_int_baseILi128ELb1ELb0EE7set_bitEib", metadata !34, i32 2703, metadata !236, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2703} ; [ DW_TAG_subprogram ]
!241 = metadata !{i32 786478, i32 0, metadata !33, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK11ap_int_baseILi128ELb1ELb0EE7get_bitEi", metadata !34, i32 2708, metadata !232, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2708} ; [ DW_TAG_subprogram ]
!242 = metadata !{i32 786478, i32 0, metadata !33, metadata !"b_not", metadata !"b_not", metadata !"_ZN11ap_int_baseILi128ELb1ELb0EE5b_notEv", metadata !34, i32 2713, metadata !54, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2713} ; [ DW_TAG_subprogram ]
!243 = metadata !{i32 786478, i32 0, metadata !33, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN11ap_int_baseILi128ELb1ELb0EE17countLeadingZerosEv", metadata !34, i32 2720, metadata !244, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2720} ; [ DW_TAG_subprogram ]
!244 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !245, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!245 = metadata !{metadata !50, metadata !56}
!246 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi128ELb1ELb0EEppEv", metadata !34, i32 2777, metadata !224, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2777} ; [ DW_TAG_subprogram ]
!247 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi128ELb1ELb0EEmmEv", metadata !34, i32 2781, metadata !224, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2781} ; [ DW_TAG_subprogram ]
!248 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi128ELb1ELb0EEppEi", metadata !34, i32 2789, metadata !249, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2789} ; [ DW_TAG_subprogram ]
!249 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !250, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!250 = metadata !{metadata !61, metadata !56, metadata !50}
!251 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi128ELb1ELb0EEmmEi", metadata !34, i32 2794, metadata !249, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2794} ; [ DW_TAG_subprogram ]
!252 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator+", metadata !"operator+", metadata !"_ZNK11ap_int_baseILi128ELb1ELb0EEpsEv", metadata !34, i32 2803, metadata !253, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2803} ; [ DW_TAG_subprogram ]
!253 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !254, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!254 = metadata !{metadata !33, metadata !189}
!255 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator-", metadata !"operator-", metadata !"_ZNK11ap_int_baseILi128ELb1ELb0EEngEv", metadata !34, i32 2807, metadata !256, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2807} ; [ DW_TAG_subprogram ]
!256 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !257, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!257 = metadata !{metadata !258, metadata !189}
!258 = metadata !{i32 786454, metadata !259, metadata !"minus", metadata !34, i32 2366, i64 0, i64 0, i64 0, i32 0, metadata !263} ; [ DW_TAG_typedef ]
!259 = metadata !{i32 786434, metadata !33, metadata !"RType<1, false>", metadata !34, i32 2348, i64 8, i64 8, i32 0, i32 0, null, metadata !186, i32 0, null, metadata !260} ; [ DW_TAG_class_type ]
!260 = metadata !{metadata !261, metadata !262}
!261 = metadata !{i32 786480, null, metadata !"_AP_W2", metadata !50, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!262 = metadata !{i32 786480, null, metadata !"_AP_S2", metadata !52, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!263 = metadata !{i32 786434, null, metadata !"ap_int_base<129, true, false>", metadata !34, i32 649, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!264 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator!", metadata !"operator!", metadata !"_ZNK11ap_int_baseILi128ELb1ELb0EEntEv", metadata !34, i32 2814, metadata !191, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2814} ; [ DW_TAG_subprogram ]
!265 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator~", metadata !"operator~", metadata !"_ZNK11ap_int_baseILi128ELb1ELb0EEcoEv", metadata !34, i32 2821, metadata !253, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2821} ; [ DW_TAG_subprogram ]
!266 = metadata !{i32 786478, i32 0, metadata !33, metadata !"range", metadata !"range", metadata !"_ZN11ap_int_baseILi128ELb1ELb0EE5rangeEii", metadata !34, i32 2948, metadata !267, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2948} ; [ DW_TAG_subprogram ]
!267 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !268, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!268 = metadata !{metadata !269, metadata !56, metadata !50, metadata !50}
!269 = metadata !{i32 786434, null, metadata !"ap_range_ref<128, true>", metadata !34, i32 922, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!270 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator()", metadata !"operator()", metadata !"_ZN11ap_int_baseILi128ELb1ELb0EEclEii", metadata !34, i32 2954, metadata !267, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2954} ; [ DW_TAG_subprogram ]
!271 = metadata !{i32 786478, i32 0, metadata !33, metadata !"range", metadata !"range", metadata !"_ZNK11ap_int_baseILi128ELb1ELb0EE5rangeEii", metadata !34, i32 2960, metadata !272, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2960} ; [ DW_TAG_subprogram ]
!272 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !273, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!273 = metadata !{metadata !269, metadata !189, metadata !50, metadata !50}
!274 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator()", metadata !"operator()", metadata !"_ZNK11ap_int_baseILi128ELb1ELb0EEclEii", metadata !34, i32 2966, metadata !272, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2966} ; [ DW_TAG_subprogram ]
!275 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN11ap_int_baseILi128ELb1ELb0EEixEi", metadata !34, i32 2986, metadata !276, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2986} ; [ DW_TAG_subprogram ]
!276 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !277, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!277 = metadata !{metadata !278, metadata !56, metadata !50}
!278 = metadata !{i32 786434, null, metadata !"ap_bit_ref<128, true>", metadata !34, i32 1192, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!279 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK11ap_int_baseILi128ELb1ELb0EEixEi", metadata !34, i32 3000, metadata !232, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 3000} ; [ DW_TAG_subprogram ]
!280 = metadata !{i32 786478, i32 0, metadata !33, metadata !"bit", metadata !"bit", metadata !"_ZN11ap_int_baseILi128ELb1ELb0EE3bitEi", metadata !34, i32 3014, metadata !276, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 3014} ; [ DW_TAG_subprogram ]
!281 = metadata !{i32 786478, i32 0, metadata !33, metadata !"bit", metadata !"bit", metadata !"_ZNK11ap_int_baseILi128ELb1ELb0EE3bitEi", metadata !34, i32 3028, metadata !232, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 3028} ; [ DW_TAG_subprogram ]
!282 = metadata !{i32 786478, i32 0, metadata !33, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZN11ap_int_baseILi128ELb1ELb0EE10and_reduceEv", metadata !34, i32 3208, metadata !283, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 3208} ; [ DW_TAG_subprogram ]
!283 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !284, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!284 = metadata !{metadata !52, metadata !56}
!285 = metadata !{i32 786478, i32 0, metadata !33, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZN11ap_int_baseILi128ELb1ELb0EE11nand_reduceEv", metadata !34, i32 3211, metadata !283, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 3211} ; [ DW_TAG_subprogram ]
!286 = metadata !{i32 786478, i32 0, metadata !33, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZN11ap_int_baseILi128ELb1ELb0EE9or_reduceEv", metadata !34, i32 3214, metadata !283, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 3214} ; [ DW_TAG_subprogram ]
!287 = metadata !{i32 786478, i32 0, metadata !33, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZN11ap_int_baseILi128ELb1ELb0EE10nor_reduceEv", metadata !34, i32 3217, metadata !283, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 3217} ; [ DW_TAG_subprogram ]
!288 = metadata !{i32 786478, i32 0, metadata !33, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZN11ap_int_baseILi128ELb1ELb0EE10xor_reduceEv", metadata !34, i32 3220, metadata !283, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 3220} ; [ DW_TAG_subprogram ]
!289 = metadata !{i32 786478, i32 0, metadata !33, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZN11ap_int_baseILi128ELb1ELb0EE11xnor_reduceEv", metadata !34, i32 3223, metadata !283, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 3223} ; [ DW_TAG_subprogram ]
!290 = metadata !{i32 786478, i32 0, metadata !33, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZNK11ap_int_baseILi128ELb1ELb0EE10and_reduceEv", metadata !34, i32 3227, metadata !191, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 3227} ; [ DW_TAG_subprogram ]
!291 = metadata !{i32 786478, i32 0, metadata !33, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZNK11ap_int_baseILi128ELb1ELb0EE11nand_reduceEv", metadata !34, i32 3230, metadata !191, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 3230} ; [ DW_TAG_subprogram ]
!292 = metadata !{i32 786478, i32 0, metadata !33, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZNK11ap_int_baseILi128ELb1ELb0EE9or_reduceEv", metadata !34, i32 3233, metadata !191, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 3233} ; [ DW_TAG_subprogram ]
!293 = metadata !{i32 786478, i32 0, metadata !33, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZNK11ap_int_baseILi128ELb1ELb0EE10nor_reduceEv", metadata !34, i32 3236, metadata !191, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 3236} ; [ DW_TAG_subprogram ]
!294 = metadata !{i32 786478, i32 0, metadata !33, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZNK11ap_int_baseILi128ELb1ELb0EE10xor_reduceEv", metadata !34, i32 3239, metadata !191, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 3239} ; [ DW_TAG_subprogram ]
!295 = metadata !{i32 786478, i32 0, metadata !33, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZNK11ap_int_baseILi128ELb1ELb0EE11xnor_reduceEv", metadata !34, i32 3242, metadata !191, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 3242} ; [ DW_TAG_subprogram ]
!296 = metadata !{i32 786478, i32 0, metadata !33, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi128ELb1ELb0EE9to_stringEPci8BaseModeb", metadata !34, i32 3249, metadata !297, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 3249} ; [ DW_TAG_subprogram ]
!297 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !298, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!298 = metadata !{null, metadata !189, metadata !299, metadata !50, metadata !300, metadata !52}
!299 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !128} ; [ DW_TAG_pointer_type ]
!300 = metadata !{i32 786436, null, metadata !"BaseMode", metadata !34, i32 601, i64 5, i64 8, i32 0, i32 0, null, metadata !301, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!301 = metadata !{metadata !302, metadata !303, metadata !304, metadata !305}
!302 = metadata !{i32 786472, metadata !"SC_BIN", i64 2} ; [ DW_TAG_enumerator ]
!303 = metadata !{i32 786472, metadata !"SC_OCT", i64 8} ; [ DW_TAG_enumerator ]
!304 = metadata !{i32 786472, metadata !"SC_DEC", i64 10} ; [ DW_TAG_enumerator ]
!305 = metadata !{i32 786472, metadata !"SC_HEX", i64 16} ; [ DW_TAG_enumerator ]
!306 = metadata !{i32 786478, i32 0, metadata !33, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi128ELb1ELb0EE9to_stringE8BaseModeb", metadata !34, i32 3276, metadata !307, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 3276} ; [ DW_TAG_subprogram ]
!307 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !308, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!308 = metadata !{metadata !299, metadata !189, metadata !300, metadata !52}
!309 = metadata !{i32 786478, i32 0, metadata !33, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi128ELb1ELb0EE9to_stringEab", metadata !34, i32 3280, metadata !310, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 3280} ; [ DW_TAG_subprogram ]
!310 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !311, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!311 = metadata !{metadata !299, metadata !189, metadata !77, metadata !52}
!312 = metadata !{metadata !313, metadata !51, metadata !314}
!313 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !50, i64 128, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!314 = metadata !{i32 786480, null, metadata !"_AP_C", metadata !52, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!315 = metadata !{i32 786478, i32 0, metadata !29, metadata !"ap_int", metadata !"ap_int", metadata !"", metadata !30, i32 76, metadata !316, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 76} ; [ DW_TAG_subprogram ]
!316 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !317, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!317 = metadata !{null, metadata !318}
!318 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !29} ; [ DW_TAG_pointer_type ]
!319 = metadata !{i32 786478, i32 0, metadata !29, metadata !"ap_int", metadata !"ap_int", metadata !"", metadata !30, i32 139, metadata !320, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 139} ; [ DW_TAG_subprogram ]
!320 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !321, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!321 = metadata !{null, metadata !318, metadata !52}
!322 = metadata !{i32 786478, i32 0, metadata !29, metadata !"ap_int", metadata !"ap_int", metadata !"", metadata !30, i32 140, metadata !323, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 140} ; [ DW_TAG_subprogram ]
!323 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !324, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!324 = metadata !{null, metadata !318, metadata !77}
!325 = metadata !{i32 786478, i32 0, metadata !29, metadata !"ap_int", metadata !"ap_int", metadata !"", metadata !30, i32 141, metadata !326, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 141} ; [ DW_TAG_subprogram ]
!326 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !327, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!327 = metadata !{null, metadata !318, metadata !81}
!328 = metadata !{i32 786478, i32 0, metadata !29, metadata !"ap_int", metadata !"ap_int", metadata !"", metadata !30, i32 142, metadata !329, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 142} ; [ DW_TAG_subprogram ]
!329 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !330, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!330 = metadata !{null, metadata !318, metadata !85}
!331 = metadata !{i32 786478, i32 0, metadata !29, metadata !"ap_int", metadata !"ap_int", metadata !"", metadata !30, i32 143, metadata !332, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 143} ; [ DW_TAG_subprogram ]
!332 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !333, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!333 = metadata !{null, metadata !318, metadata !89}
!334 = metadata !{i32 786478, i32 0, metadata !29, metadata !"ap_int", metadata !"ap_int", metadata !"", metadata !30, i32 144, metadata !335, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 144} ; [ DW_TAG_subprogram ]
!335 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !336, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!336 = metadata !{null, metadata !318, metadata !50}
!337 = metadata !{i32 786478, i32 0, metadata !29, metadata !"ap_int", metadata !"ap_int", metadata !"", metadata !30, i32 145, metadata !338, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 145} ; [ DW_TAG_subprogram ]
!338 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !339, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!339 = metadata !{null, metadata !318, metadata !96}
!340 = metadata !{i32 786478, i32 0, metadata !29, metadata !"ap_int", metadata !"ap_int", metadata !"", metadata !30, i32 146, metadata !341, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 146} ; [ DW_TAG_subprogram ]
!341 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !342, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!342 = metadata !{null, metadata !318, metadata !100}
!343 = metadata !{i32 786478, i32 0, metadata !29, metadata !"ap_int", metadata !"ap_int", metadata !"", metadata !30, i32 147, metadata !344, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 147} ; [ DW_TAG_subprogram ]
!344 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !345, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!345 = metadata !{null, metadata !318, metadata !104}
!346 = metadata !{i32 786478, i32 0, metadata !29, metadata !"ap_int", metadata !"ap_int", metadata !"", metadata !30, i32 148, metadata !347, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 148} ; [ DW_TAG_subprogram ]
!347 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !348, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!348 = metadata !{null, metadata !318, metadata !114}
!349 = metadata !{i32 786478, i32 0, metadata !29, metadata !"ap_int", metadata !"ap_int", metadata !"", metadata !30, i32 149, metadata !350, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 149} ; [ DW_TAG_subprogram ]
!350 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !351, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!351 = metadata !{null, metadata !318, metadata !109}
!352 = metadata !{i32 786478, i32 0, metadata !29, metadata !"ap_int", metadata !"ap_int", metadata !"", metadata !30, i32 150, metadata !353, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 150} ; [ DW_TAG_subprogram ]
!353 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !354, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!354 = metadata !{null, metadata !318, metadata !118}
!355 = metadata !{i32 786478, i32 0, metadata !29, metadata !"ap_int", metadata !"ap_int", metadata !"", metadata !30, i32 151, metadata !356, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 151} ; [ DW_TAG_subprogram ]
!356 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !357, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!357 = metadata !{null, metadata !318, metadata !122}
!358 = metadata !{i32 786478, i32 0, metadata !29, metadata !"ap_int", metadata !"ap_int", metadata !"", metadata !30, i32 153, metadata !359, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 153} ; [ DW_TAG_subprogram ]
!359 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !360, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!360 = metadata !{null, metadata !318, metadata !126}
!361 = metadata !{i32 786478, i32 0, metadata !29, metadata !"ap_int", metadata !"ap_int", metadata !"", metadata !30, i32 154, metadata !362, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 154} ; [ DW_TAG_subprogram ]
!362 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !363, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!363 = metadata !{null, metadata !318, metadata !126, metadata !77}
!364 = metadata !{i32 786478, i32 0, metadata !29, metadata !"operator=", metadata !"operator=", metadata !"_ZNV6ap_intILi128EEaSERKS0_", metadata !30, i32 158, metadata !365, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 158} ; [ DW_TAG_subprogram ]
!365 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !366, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!366 = metadata !{null, metadata !367, metadata !369}
!367 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !368} ; [ DW_TAG_pointer_type ]
!368 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_volatile_type ]
!369 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !370} ; [ DW_TAG_reference_type ]
!370 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_const_type ]
!371 = metadata !{i32 786478, i32 0, metadata !29, metadata !"operator=", metadata !"operator=", metadata !"_ZNV6ap_intILi128EEaSERVKS0_", metadata !30, i32 162, metadata !372, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 162} ; [ DW_TAG_subprogram ]
!372 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !373, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!373 = metadata !{null, metadata !367, metadata !374}
!374 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !375} ; [ DW_TAG_reference_type ]
!375 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !368} ; [ DW_TAG_const_type ]
!376 = metadata !{i32 786478, i32 0, metadata !29, metadata !"operator=", metadata !"operator=", metadata !"_ZN6ap_intILi128EEaSERVKS0_", metadata !30, i32 166, metadata !377, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 166} ; [ DW_TAG_subprogram ]
!377 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !378, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!378 = metadata !{metadata !379, metadata !318, metadata !374}
!379 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_reference_type ]
!380 = metadata !{i32 786478, i32 0, metadata !29, metadata !"operator=", metadata !"operator=", metadata !"_ZN6ap_intILi128EEaSERKS0_", metadata !30, i32 171, metadata !381, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 171} ; [ DW_TAG_subprogram ]
!381 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !382, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!382 = metadata !{metadata !379, metadata !318, metadata !369}
!383 = metadata !{metadata !313}
!384 = metadata !{i32 786478, i32 0, metadata !24, metadata !"stream", metadata !"stream", metadata !"", metadata !26, i32 83, metadata !385, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 83} ; [ DW_TAG_subprogram ]
!385 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !386, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!386 = metadata !{null, metadata !387}
!387 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !24} ; [ DW_TAG_pointer_type ]
!388 = metadata !{i32 786478, i32 0, metadata !24, metadata !"stream", metadata !"stream", metadata !"", metadata !26, i32 86, metadata !389, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 86} ; [ DW_TAG_subprogram ]
!389 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !390, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!390 = metadata !{null, metadata !387, metadata !126}
!391 = metadata !{i32 786478, i32 0, metadata !24, metadata !"stream", metadata !"stream", metadata !"", metadata !26, i32 91, metadata !392, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !46, i32 91} ; [ DW_TAG_subprogram ]
!392 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !393, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!393 = metadata !{null, metadata !387, metadata !394}
!394 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !395} ; [ DW_TAG_reference_type ]
!395 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !24} ; [ DW_TAG_const_type ]
!396 = metadata !{i32 786478, i32 0, metadata !24, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamI6ap_intILi128EEEaSERKS3_", metadata !26, i32 94, metadata !397, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !46, i32 94} ; [ DW_TAG_subprogram ]
!397 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !398, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!398 = metadata !{metadata !23, metadata !387, metadata !394}
!399 = metadata !{i32 786478, i32 0, metadata !24, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamI6ap_intILi128EEErsERS2_", metadata !26, i32 101, metadata !400, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 101} ; [ DW_TAG_subprogram ]
!400 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !401, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!401 = metadata !{null, metadata !387, metadata !379}
!402 = metadata !{i32 786478, i32 0, metadata !24, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamI6ap_intILi128EEElsERKS2_", metadata !26, i32 105, metadata !403, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 105} ; [ DW_TAG_subprogram ]
!403 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !404, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!404 = metadata !{null, metadata !387, metadata !369}
!405 = metadata !{i32 786478, i32 0, metadata !24, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamI6ap_intILi128EEE5emptyEv", metadata !26, i32 112, metadata !406, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 112} ; [ DW_TAG_subprogram ]
!406 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !407, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!407 = metadata !{metadata !52, metadata !408}
!408 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !395} ; [ DW_TAG_pointer_type ]
!409 = metadata !{i32 786478, i32 0, metadata !24, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamI6ap_intILi128EEE4fullEv", metadata !26, i32 117, metadata !406, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 117} ; [ DW_TAG_subprogram ]
!410 = metadata !{i32 786478, i32 0, metadata !24, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamI6ap_intILi128EEE4readERS2_", metadata !26, i32 123, metadata !400, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 123} ; [ DW_TAG_subprogram ]
!411 = metadata !{i32 786478, i32 0, metadata !24, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamI6ap_intILi128EEE4readEv", metadata !26, i32 129, metadata !412, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 129} ; [ DW_TAG_subprogram ]
!412 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !413, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!413 = metadata !{metadata !29, metadata !387}
!414 = metadata !{i32 786478, i32 0, metadata !24, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamI6ap_intILi128EEE7read_nbERS2_", metadata !26, i32 136, metadata !415, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 136} ; [ DW_TAG_subprogram ]
!415 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !416, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!416 = metadata !{metadata !52, metadata !387, metadata !379}
!417 = metadata !{i32 786478, i32 0, metadata !24, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamI6ap_intILi128EEE5writeERKS2_", metadata !26, i32 144, metadata !403, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 144} ; [ DW_TAG_subprogram ]
!418 = metadata !{i32 786478, i32 0, metadata !24, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamI6ap_intILi128EEE8write_nbERKS2_", metadata !26, i32 150, metadata !419, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 150} ; [ DW_TAG_subprogram ]
!419 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !420, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!420 = metadata !{metadata !52, metadata !387, metadata !369}
!421 = metadata !{i32 786478, i32 0, metadata !24, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamI6ap_intILi128EEE4sizeEv", metadata !26, i32 157, metadata !422, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 157} ; [ DW_TAG_subprogram ]
!422 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !423, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!423 = metadata !{metadata !96, metadata !387}
!424 = metadata !{metadata !425}
!425 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !29, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!426 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !427} ; [ DW_TAG_pointer_type ]
!427 = metadata !{i32 786438, metadata !25, metadata !"stream<ap_int<128> >", metadata !26, i32 79, i64 128, i64 128, i32 0, i32 0, null, metadata !428, i32 0, null, metadata !424} ; [ DW_TAG_class_field_type ]
!428 = metadata !{metadata !429}
!429 = metadata !{i32 786438, null, metadata !"ap_int<128>", metadata !30, i32 73, i64 128, i64 128, i32 0, i32 0, null, metadata !430, i32 0, null, metadata !383} ; [ DW_TAG_class_field_type ]
!430 = metadata !{metadata !431}
!431 = metadata !{i32 786438, null, metadata !"ap_int_base<128, true, false>", metadata !34, i32 2339, i64 128, i64 128, i32 0, i32 0, null, metadata !432, i32 0, null, metadata !312} ; [ DW_TAG_class_field_type ]
!432 = metadata !{metadata !433}
!433 = metadata !{i32 786438, null, metadata !"ssdm_int<128 + 1024 * 0, true>", metadata !38, i32 136, i64 128, i64 128, i32 0, i32 0, null, metadata !434, i32 0, null, metadata !48} ; [ DW_TAG_class_field_type ]
!434 = metadata !{metadata !40}
!435 = metadata !{i32 5, i32 25, metadata !19, null}
!436 = metadata !{i32 790531, metadata !437, metadata !"out.V.V", null, i32 6, metadata !426, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!437 = metadata !{i32 786689, metadata !19, metadata !"out", metadata !20, i32 33554438, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!438 = metadata !{i32 6, i32 25, metadata !19, null}
!439 = metadata !{i32 8, i32 1, metadata !440, null}
!440 = metadata !{i32 786443, metadata !19, i32 7, i32 3, metadata !20, i32 0} ; [ DW_TAG_lexical_block ]
!441 = metadata !{i32 9, i32 1, metadata !440, null}
!442 = metadata !{i32 10, i32 1, metadata !440, null}
!443 = metadata !{i32 11, i32 1, metadata !440, null}
!444 = metadata !{i32 12, i32 1, metadata !440, null}
!445 = metadata !{i32 790531, metadata !446, metadata !"stream<ap_int<128> >.V.V", null, i32 123, metadata !449, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!446 = metadata !{i32 786689, metadata !447, metadata !"this", metadata !26, i32 16777339, metadata !448, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!447 = metadata !{i32 786478, i32 0, metadata !25, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamI6ap_intILi128EEE4readERS2_", metadata !26, i32 123, metadata !400, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !410, metadata !46, i32 123} ; [ DW_TAG_subprogram ]
!448 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ]
!449 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !427} ; [ DW_TAG_pointer_type ]
!450 = metadata !{i32 123, i32 48, metadata !447, metadata !451}
!451 = metadata !{i32 16, i32 2, metadata !440, null}
!452 = metadata !{i32 125, i32 9, metadata !453, metadata !451}
!453 = metadata !{i32 786443, metadata !447, i32 123, i32 73, metadata !26, i32 2} ; [ DW_TAG_lexical_block ]
!454 = metadata !{i32 790529, metadata !455, metadata !"tmp.V", null, i32 124, metadata !429, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!455 = metadata !{i32 786688, metadata !453, metadata !"tmp", metadata !26, i32 124, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!456 = metadata !{i32 790529, metadata !457, metadata !"value.V", null, i32 14, metadata !429, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!457 = metadata !{i32 786688, metadata !440, metadata !"value", metadata !20, i32 14, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!458 = metadata !{i32 172, i32 10, metadata !459, metadata !461}
!459 = metadata !{i32 786443, metadata !460, i32 171, i32 90, metadata !30, i32 3} ; [ DW_TAG_lexical_block ]
!460 = metadata !{i32 786478, i32 0, null, metadata !"operator=", metadata !"operator=", metadata !"_ZN6ap_intILi128EEaSERKS0_", metadata !30, i32 171, metadata !381, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !380, metadata !46, i32 171} ; [ DW_TAG_subprogram ]
!461 = metadata !{i32 126, i32 9, metadata !453, metadata !451}
!462 = metadata !{i32 790531, metadata !463, metadata !"stream<ap_int<128> >.V.V", null, i32 144, metadata !449, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!463 = metadata !{i32 786689, metadata !464, metadata !"this", metadata !26, i32 16777360, metadata !448, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!464 = metadata !{i32 786478, i32 0, metadata !25, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamI6ap_intILi128EEE5writeERKS2_", metadata !26, i32 144, metadata !403, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !417, metadata !46, i32 144} ; [ DW_TAG_subprogram ]
!465 = metadata !{i32 144, i32 48, metadata !464, metadata !466}
!466 = metadata !{i32 17, i32 2, metadata !440, null}
!467 = metadata !{i32 790529, metadata !468, metadata !"tmp.V", null, i32 145, metadata !429, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!468 = metadata !{i32 786688, metadata !469, metadata !"tmp", metadata !26, i32 145, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!469 = metadata !{i32 786443, metadata !464, i32 144, i32 79, metadata !26, i32 1} ; [ DW_TAG_lexical_block ]
!470 = metadata !{i32 145, i32 31, metadata !469, metadata !466}
!471 = metadata !{i32 146, i32 9, metadata !469, metadata !466}
!472 = metadata !{i32 18, i32 1, metadata !440, null}
