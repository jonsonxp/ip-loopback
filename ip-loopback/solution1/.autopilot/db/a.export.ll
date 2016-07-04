; ModuleID = '/home/cho/hCODE/IPs/ip-loopback/ip-loopback/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@ip_loopback_str = internal unnamed_addr constant [12 x i8] c"ip_loopback\00"
@p_str2 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@p_str1 = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @ip_loopback(i128* %in_V_V, i128* %out_V_V) {
  call void (...)* @_ssdm_op_SpecBitsMap(i128* %in_V_V), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i128* %out_V_V), !map !13
  call void (...)* @_ssdm_op_SpecTopModule([12 x i8]* @ip_loopback_str) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 0, i32 2, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecLatency(i32 0, i32 0, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i128* %in_V_V, [8 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 100, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i128* %out_V_V, [8 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 100, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  %tmp_V = call i128 @_ssdm_op_Read.ap_fifo.volatile.i128P(i128* %in_V_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.i128P(i128* %out_V_V, i128 %tmp_V)
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i128P(i128*, i128) {
entry:
  %empty = call i128 @_autotb_FifoWrite_i128(i128* %0, i128 %1)
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecLatency(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i128 @_ssdm_op_Read.ap_fifo.volatile.i128P(i128*) {
entry:
  %empty = call i128 @_autotb_FifoRead_i128(i128* %0)
  ret i128 %empty
}

declare i16 @_ssdm_op_HSub(...)

declare i16 @_ssdm_op_HMul(...)

declare i16 @_ssdm_op_HDiv(...)

declare i16 @_ssdm_op_HAdd(...)

declare i128 @_autotb_FifoWrite_i128(i128*, i128)

declare i128 @_autotb_FifoRead_i128(i128*)

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
