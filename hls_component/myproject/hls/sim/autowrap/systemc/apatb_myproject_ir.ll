; ModuleID = 'D:/hls/hls_component/myproject/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_fixed<16, 6>" = type { %"struct.ap_fixed_base<16, 6>" }
%"struct.ap_fixed_base<16, 6>" = type { %"struct.ssdm_int<16, true>" }
%"struct.ssdm_int<16, true>" = type { i16 }

; Function Attrs: inaccessiblemem_or_argmemonly noinline willreturn
define void @apatb_myproject_ir(%"struct.ap_fixed<16, 6>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="784" %input_layer, %"struct.ap_fixed<16, 6>"* noalias nocapture nonnull "fpga.decayed.dim.hint"="10" "partition" %layer11_out) local_unnamed_addr #0 {
entry:
  %0 = bitcast %"struct.ap_fixed<16, 6>"* %input_layer to [784 x %"struct.ap_fixed<16, 6>"]*
  %input_layer_copy3 = alloca i12544, align 512
  %1 = bitcast %"struct.ap_fixed<16, 6>"* %layer11_out to [10 x %"struct.ap_fixed<16, 6>"]*
  %layer11_out_copy_0 = alloca i16, align 512
  %layer11_out_copy_1 = alloca i16, align 512
  %layer11_out_copy_2 = alloca i16, align 512
  %layer11_out_copy_3 = alloca i16, align 512
  %layer11_out_copy_4 = alloca i16, align 512
  %layer11_out_copy_5 = alloca i16, align 512
  %layer11_out_copy_6 = alloca i16, align 512
  %layer11_out_copy_7 = alloca i16, align 512
  %layer11_out_copy_8 = alloca i16, align 512
  %layer11_out_copy_9 = alloca i16, align 512
  call void @copy_in([784 x %"struct.ap_fixed<16, 6>"]* nonnull %0, i12544* nonnull align 512 %input_layer_copy3, [10 x %"struct.ap_fixed<16, 6>"]* nonnull %1, i16* nonnull align 512 %layer11_out_copy_0, i16* nonnull align 512 %layer11_out_copy_1, i16* nonnull align 512 %layer11_out_copy_2, i16* nonnull align 512 %layer11_out_copy_3, i16* nonnull align 512 %layer11_out_copy_4, i16* nonnull align 512 %layer11_out_copy_5, i16* nonnull align 512 %layer11_out_copy_6, i16* nonnull align 512 %layer11_out_copy_7, i16* nonnull align 512 %layer11_out_copy_8, i16* nonnull align 512 %layer11_out_copy_9)
  call void @apatb_myproject_hw(i12544* %input_layer_copy3, i16* %layer11_out_copy_0, i16* %layer11_out_copy_1, i16* %layer11_out_copy_2, i16* %layer11_out_copy_3, i16* %layer11_out_copy_4, i16* %layer11_out_copy_5, i16* %layer11_out_copy_6, i16* %layer11_out_copy_7, i16* %layer11_out_copy_8, i16* %layer11_out_copy_9)
  call void @copy_back([784 x %"struct.ap_fixed<16, 6>"]* %0, i12544* %input_layer_copy3, [10 x %"struct.ap_fixed<16, 6>"]* %1, i16* %layer11_out_copy_0, i16* %layer11_out_copy_1, i16* %layer11_out_copy_2, i16* %layer11_out_copy_3, i16* %layer11_out_copy_4, i16* %layer11_out_copy_5, i16* %layer11_out_copy_6, i16* %layer11_out_copy_7, i16* %layer11_out_copy_8, i16* %layer11_out_copy_9)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a10struct.ap_fixed<16, 6>"(i16* nocapture "orig.arg.no"="0" "unpacked"="0.0.0" %dst_0, i16* nocapture "orig.arg.no"="0" "unpacked"="0.0.1" %dst_1, i16* nocapture "orig.arg.no"="0" "unpacked"="0.0.2" %dst_2, i16* nocapture "orig.arg.no"="0" "unpacked"="0.0.3" %dst_3, i16* nocapture "orig.arg.no"="0" "unpacked"="0.0.4" %dst_4, i16* nocapture "orig.arg.no"="0" "unpacked"="0.0.5" %dst_5, i16* nocapture "orig.arg.no"="0" "unpacked"="0.0.6" %dst_6, i16* nocapture "orig.arg.no"="0" "unpacked"="0.0.7" %dst_7, i16* nocapture "orig.arg.no"="0" "unpacked"="0.0.8" %dst_8, i16* nocapture "orig.arg.no"="0" "unpacked"="0.0.9" %dst_9, [10 x %"struct.ap_fixed<16, 6>"]* readonly "orig.arg.no"="1" "unpacked"="1" %src, i64 "orig.arg.no"="2" "unpacked"="2" %num) #1 {
entry:
  %0 = icmp eq [10 x %"struct.ap_fixed<16, 6>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.0.0.06.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %dst.addr.0.0.06.exit ]
  %src.addr.0.0.05 = getelementptr [10 x %"struct.ap_fixed<16, 6>"], [10 x %"struct.ap_fixed<16, 6>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = load i16, i16* %src.addr.0.0.05, align 2
  switch i64 %for.loop.idx2, label %dst.addr.0.0.06.exit [
    i64 0, label %dst.addr.0.0.06.case.0
    i64 1, label %dst.addr.0.0.06.case.1
    i64 2, label %dst.addr.0.0.06.case.2
    i64 3, label %dst.addr.0.0.06.case.3
    i64 4, label %dst.addr.0.0.06.case.4
    i64 5, label %dst.addr.0.0.06.case.5
    i64 6, label %dst.addr.0.0.06.case.6
    i64 7, label %dst.addr.0.0.06.case.7
    i64 8, label %dst.addr.0.0.06.case.8
    i64 9, label %dst.addr.0.0.06.case.9
  ]

dst.addr.0.0.06.case.0:                           ; preds = %for.loop
  store i16 %1, i16* %dst_0, align 2
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.1:                           ; preds = %for.loop
  store i16 %1, i16* %dst_1, align 2
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.2:                           ; preds = %for.loop
  store i16 %1, i16* %dst_2, align 2
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.3:                           ; preds = %for.loop
  store i16 %1, i16* %dst_3, align 2
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.4:                           ; preds = %for.loop
  store i16 %1, i16* %dst_4, align 2
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.5:                           ; preds = %for.loop
  store i16 %1, i16* %dst_5, align 2
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.6:                           ; preds = %for.loop
  store i16 %1, i16* %dst_6, align 2
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.7:                           ; preds = %for.loop
  store i16 %1, i16* %dst_7, align 2
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.8:                           ; preds = %for.loop
  store i16 %1, i16* %dst_8, align 2
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.9:                           ; preds = %for.loop
  store i16 %1, i16* %dst_9, align 2
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.exit:                             ; preds = %dst.addr.0.0.06.case.9, %dst.addr.0.0.06.case.8, %dst.addr.0.0.06.case.7, %dst.addr.0.0.06.case.6, %dst.addr.0.0.06.case.5, %dst.addr.0.0.06.case.4, %dst.addr.0.0.06.case.3, %dst.addr.0.0.06.case.2, %dst.addr.0.0.06.case.1, %dst.addr.0.0.06.case.0, %for.loop
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %dst.addr.0.0.06.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @"onebyonecpy_hls.p0a10struct.ap_fixed<16, 6>"(i16* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.0" %dst_0, i16* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.1" %dst_1, i16* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.2" %dst_2, i16* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.3" %dst_3, i16* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.4" %dst_4, i16* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.5" %dst_5, i16* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.6" %dst_6, i16* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.7" %dst_7, i16* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.8" %dst_8, i16* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.9" %dst_9, [10 x %"struct.ap_fixed<16, 6>"]* noalias readonly "orig.arg.no"="1" "unpacked"="1" %src) #2 {
entry:
  %0 = icmp eq [10 x %"struct.ap_fixed<16, 6>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a10struct.ap_fixed<16, 6>"(i16* %dst_0, i16* %dst_1, i16* %dst_2, i16* %dst_3, i16* %dst_4, i16* %dst_5, i16* %dst_6, i16* %dst_7, i16* %dst_8, i16* %dst_9, [10 x %"struct.ap_fixed<16, 6>"]* nonnull %src, i64 10)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a10struct.ap_fixed<16, 6>.133"([10 x %"struct.ap_fixed<16, 6>"]* "orig.arg.no"="0" "unpacked"="0" %dst, i16* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.0" %src_0, i16* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.1" %src_1, i16* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.2" %src_2, i16* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.3" %src_3, i16* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.4" %src_4, i16* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.5" %src_5, i16* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.6" %src_6, i16* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.7" %src_7, i16* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.8" %src_8, i16* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.9" %src_9, i64 "orig.arg.no"="2" "unpacked"="2" %num) #1 {
entry:
  %0 = icmp eq [10 x %"struct.ap_fixed<16, 6>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %src.addr.0.0.05.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %src.addr.0.0.05.exit ]
  %dst.addr.0.0.06 = getelementptr [10 x %"struct.ap_fixed<16, 6>"], [10 x %"struct.ap_fixed<16, 6>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  switch i64 %for.loop.idx2, label %src.addr.0.0.05.exit [
    i64 0, label %src.addr.0.0.05.case.0
    i64 1, label %src.addr.0.0.05.case.1
    i64 2, label %src.addr.0.0.05.case.2
    i64 3, label %src.addr.0.0.05.case.3
    i64 4, label %src.addr.0.0.05.case.4
    i64 5, label %src.addr.0.0.05.case.5
    i64 6, label %src.addr.0.0.05.case.6
    i64 7, label %src.addr.0.0.05.case.7
    i64 8, label %src.addr.0.0.05.case.8
    i64 9, label %src.addr.0.0.05.case.9
  ]

src.addr.0.0.05.case.0:                           ; preds = %for.loop
  %_0 = load i16, i16* %src_0, align 2
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.1:                           ; preds = %for.loop
  %_1 = load i16, i16* %src_1, align 2
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.2:                           ; preds = %for.loop
  %_2 = load i16, i16* %src_2, align 2
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.3:                           ; preds = %for.loop
  %_3 = load i16, i16* %src_3, align 2
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.4:                           ; preds = %for.loop
  %_4 = load i16, i16* %src_4, align 2
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.5:                           ; preds = %for.loop
  %_5 = load i16, i16* %src_5, align 2
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.6:                           ; preds = %for.loop
  %_6 = load i16, i16* %src_6, align 2
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.7:                           ; preds = %for.loop
  %_7 = load i16, i16* %src_7, align 2
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.8:                           ; preds = %for.loop
  %_8 = load i16, i16* %src_8, align 2
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.9:                           ; preds = %for.loop
  %_9 = load i16, i16* %src_9, align 2
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.exit:                             ; preds = %src.addr.0.0.05.case.9, %src.addr.0.0.05.case.8, %src.addr.0.0.05.case.7, %src.addr.0.0.05.case.6, %src.addr.0.0.05.case.5, %src.addr.0.0.05.case.4, %src.addr.0.0.05.case.3, %src.addr.0.0.05.case.2, %src.addr.0.0.05.case.1, %src.addr.0.0.05.case.0, %for.loop
  %1 = phi i16 [ %_0, %src.addr.0.0.05.case.0 ], [ %_1, %src.addr.0.0.05.case.1 ], [ %_2, %src.addr.0.0.05.case.2 ], [ %_3, %src.addr.0.0.05.case.3 ], [ %_4, %src.addr.0.0.05.case.4 ], [ %_5, %src.addr.0.0.05.case.5 ], [ %_6, %src.addr.0.0.05.case.6 ], [ %_7, %src.addr.0.0.05.case.7 ], [ %_8, %src.addr.0.0.05.case.8 ], [ %_9, %src.addr.0.0.05.case.9 ], [ undef, %for.loop ]
  store i16 %1, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %src.addr.0.0.05.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @"onebyonecpy_hls.p0a10struct.ap_fixed<16, 6>.130"([10 x %"struct.ap_fixed<16, 6>"]* noalias "orig.arg.no"="0" "unpacked"="0" %dst, i16* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.0" %src_0, i16* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.1" %src_1, i16* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.2" %src_2, i16* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.3" %src_3, i16* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.4" %src_4, i16* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.5" %src_5, i16* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.6" %src_6, i16* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.7" %src_7, i16* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.8" %src_8, i16* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.9" %src_9) #2 {
entry:
  %0 = icmp eq [10 x %"struct.ap_fixed<16, 6>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a10struct.ap_fixed<16, 6>.133"([10 x %"struct.ap_fixed<16, 6>"]* nonnull %dst, i16* %src_0, i16* %src_1, i16* %src_2, i16* %src_3, i16* %src_4, i16* %src_5, i16* %src_6, i16* %src_7, i16* %src_8, i16* %src_9, i64 10)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a784struct.ap_fixed<16, 6>.143"(i12544* nocapture "orig.arg.no"="0" "unpacked"="0.0" %dst, i64 %dst_shift, [784 x %"struct.ap_fixed<16, 6>"]* readonly "orig.arg.no"="1" "unpacked"="1" %src, i64 "orig.arg.no"="2" "unpacked"="2" %num) #1 {
entry:
  %0 = icmp eq [784 x %"struct.ap_fixed<16, 6>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [784 x %"struct.ap_fixed<16, 6>"], [784 x %"struct.ap_fixed<16, 6>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = mul i64 16, %for.loop.idx2
  %2 = add i64 %dst_shift, %1
  %3 = load i16, i16* %src.addr.0.0.05, align 2
  %4 = load i12544, i12544* %dst, align 512
  %5 = zext i64 %2 to i12544
  %6 = shl i12544 65535, %5
  %7 = zext i16 %3 to i12544
  %8 = shl i12544 %7, %5
  %thr.xor1 = xor i12544 %6, -1
  %thr.and2 = and i12544 %4, %thr.xor1
  %thr.or3 = or i12544 %8, %thr.and2
  store i12544 %thr.or3, i12544* %dst, align 512
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @"onebyonecpy_hls.p0a784struct.ap_fixed<16, 6>.140"(i12544* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0" %dst, [784 x %"struct.ap_fixed<16, 6>"]* noalias readonly "orig.arg.no"="1" "unpacked"="1" %src) #2 {
entry:
  %0 = icmp eq [784 x %"struct.ap_fixed<16, 6>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a784struct.ap_fixed<16, 6>.143"(i12544* %dst, i64 0, [784 x %"struct.ap_fixed<16, 6>"]* nonnull %src, i64 784)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_in([784 x %"struct.ap_fixed<16, 6>"]* noalias readonly "orig.arg.no"="0" "unpacked"="0", i12544* noalias nocapture align 512 "orig.arg.no"="1" "unpacked"="1.0", [10 x %"struct.ap_fixed<16, 6>"]* noalias readonly "orig.arg.no"="2" "unpacked"="2", i16* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.0" %_0, i16* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.1" %_1, i16* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.2" %_2, i16* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.3" %_3, i16* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.4" %_4, i16* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.5" %_5, i16* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.6" %_6, i16* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.7" %_7, i16* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.8" %_8, i16* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.9" %_9) #3 {
entry:
  call void @"onebyonecpy_hls.p0a784struct.ap_fixed<16, 6>.140"(i12544* align 512 %1, [784 x %"struct.ap_fixed<16, 6>"]* %0)
  call void @"onebyonecpy_hls.p0a10struct.ap_fixed<16, 6>"(i16* align 512 %_0, i16* align 512 %_1, i16* align 512 %_2, i16* align 512 %_3, i16* align 512 %_4, i16* align 512 %_5, i16* align 512 %_6, i16* align 512 %_7, i16* align 512 %_8, i16* align 512 %_9, [10 x %"struct.ap_fixed<16, 6>"]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a784struct.ap_fixed<16, 6>"([784 x %"struct.ap_fixed<16, 6>"]* "orig.arg.no"="0" "unpacked"="0" %dst, i12544* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0" %src, i64 %src_shift, i64 "orig.arg.no"="2" "unpacked"="2" %num) #1 {
entry:
  %0 = icmp eq [784 x %"struct.ap_fixed<16, 6>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %1 = mul i64 16, %for.loop.idx2
  %2 = add i64 %src_shift, %1
  %dst.addr.0.0.06 = getelementptr [784 x %"struct.ap_fixed<16, 6>"], [784 x %"struct.ap_fixed<16, 6>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %3 = load i12544, i12544* %src, align 512
  %4 = zext i64 %2 to i12544
  %5 = lshr i12544 %3, %4
  %6 = trunc i12544 %5 to i16
  store i16 %6, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @"onebyonecpy_hls.p0a784struct.ap_fixed<16, 6>"([784 x %"struct.ap_fixed<16, 6>"]* noalias "orig.arg.no"="0" "unpacked"="0" %dst, i12544* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0" %src) #2 {
entry:
  %0 = icmp eq [784 x %"struct.ap_fixed<16, 6>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a784struct.ap_fixed<16, 6>"([784 x %"struct.ap_fixed<16, 6>"]* nonnull %dst, i12544* %src, i64 0, i64 784)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_out([784 x %"struct.ap_fixed<16, 6>"]* noalias "orig.arg.no"="0" "unpacked"="0", i12544* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0", [10 x %"struct.ap_fixed<16, 6>"]* noalias "orig.arg.no"="2" "unpacked"="2", i16* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.0" %_0, i16* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.1" %_1, i16* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.2" %_2, i16* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.3" %_3, i16* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.4" %_4, i16* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.5" %_5, i16* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.6" %_6, i16* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.7" %_7, i16* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.8" %_8, i16* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.9" %_9) #4 {
entry:
  call void @"onebyonecpy_hls.p0a784struct.ap_fixed<16, 6>"([784 x %"struct.ap_fixed<16, 6>"]* %0, i12544* align 512 %1)
  call void @"onebyonecpy_hls.p0a10struct.ap_fixed<16, 6>.130"([10 x %"struct.ap_fixed<16, 6>"]* %2, i16* align 512 %_0, i16* align 512 %_1, i16* align 512 %_2, i16* align 512 %_3, i16* align 512 %_4, i16* align 512 %_5, i16* align 512 %_6, i16* align 512 %_7, i16* align 512 %_8, i16* align 512 %_9)
  ret void
}

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @apatb_myproject_hw(i12544*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_back([784 x %"struct.ap_fixed<16, 6>"]* noalias "orig.arg.no"="0" "unpacked"="0", i12544* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0", [10 x %"struct.ap_fixed<16, 6>"]* noalias "orig.arg.no"="2" "unpacked"="2", i16* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.0" %_0, i16* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.1" %_1, i16* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.2" %_2, i16* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.3" %_3, i16* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.4" %_4, i16* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.5" %_5, i16* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.6" %_6, i16* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.7" %_7, i16* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.8" %_8, i16* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.9" %_9) #4 {
entry:
  call void @"onebyonecpy_hls.p0a10struct.ap_fixed<16, 6>.130"([10 x %"struct.ap_fixed<16, 6>"]* %2, i16* align 512 %_0, i16* align 512 %_1, i16* align 512 %_2, i16* align 512 %_3, i16* align 512 %_4, i16* align 512 %_5, i16* align 512 %_6, i16* align 512 %_7, i16* align 512 %_8, i16* align 512 %_9)
  ret void
}

declare void @myproject_hw_stub(%"struct.ap_fixed<16, 6>"* noalias nocapture nonnull readonly, %"struct.ap_fixed<16, 6>"* noalias nocapture nonnull)

define void @myproject_hw_stub_wrapper(i12544*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*) #5 {
entry:
  %11 = call i8* @malloc(i64 1568)
  %12 = bitcast i8* %11 to [784 x %"struct.ap_fixed<16, 6>"]*
  %13 = call i8* @malloc(i64 20)
  %14 = bitcast i8* %13 to [10 x %"struct.ap_fixed<16, 6>"]*
  call void @copy_out([784 x %"struct.ap_fixed<16, 6>"]* %12, i12544* %0, [10 x %"struct.ap_fixed<16, 6>"]* %14, i16* %1, i16* %2, i16* %3, i16* %4, i16* %5, i16* %6, i16* %7, i16* %8, i16* %9, i16* %10)
  %15 = bitcast [784 x %"struct.ap_fixed<16, 6>"]* %12 to %"struct.ap_fixed<16, 6>"*
  %16 = bitcast [10 x %"struct.ap_fixed<16, 6>"]* %14 to %"struct.ap_fixed<16, 6>"*
  call void @myproject_hw_stub(%"struct.ap_fixed<16, 6>"* %15, %"struct.ap_fixed<16, 6>"* %16)
  call void @copy_in([784 x %"struct.ap_fixed<16, 6>"]* %12, i12544* %0, [10 x %"struct.ap_fixed<16, 6>"]* %14, i16* %1, i16* %2, i16* %3, i16* %4, i16* %5, i16* %6, i16* %7, i16* %8, i16* %9, i16* %10)
  call void @free(i8* %11)
  call void @free(i8* %13)
  ret void
}

attributes #0 = { inaccessiblemem_or_argmemonly noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1}
!llvm.module.flags = !{!2, !3, !4}
!blackbox_cfg = !{!5}
!datalayout.transforms.on.top = !{!6}

!0 = !{!"AMD/Xilinx clang version 16.0.6"}
!1 = !{!"clang version 7.0.0 "}
!2 = !{i32 2, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{}
!6 = !{!7, !9, !11}
!7 = !{!8}
!8 = !{!"1.0", [10 x i16]* null}
!9 = !{!10}
!10 = !{!"array_partition", !"type=Complete", !"dim=1"}
!11 = !{!12, !13, !14, !15, !16, !17, !18, !19, !20, !21}
!12 = !{!"1.0.0", i16* null}
!13 = !{!"1.0.1", i16* null}
!14 = !{!"1.0.2", i16* null}
!15 = !{!"1.0.3", i16* null}
!16 = !{!"1.0.4", i16* null}
!17 = !{!"1.0.5", i16* null}
!18 = !{!"1.0.6", i16* null}
!19 = !{!"1.0.7", i16* null}
!20 = !{!"1.0.8", i16* null}
!21 = !{!"1.0.9", i16* null}
