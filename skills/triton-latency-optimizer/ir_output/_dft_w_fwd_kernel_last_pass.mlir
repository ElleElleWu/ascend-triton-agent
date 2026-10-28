// -----// IR Dump After InjectSync (hivm-inject-sync) //----- //
func.func @_dft_w_fwd_kernel_mix_aiv(%arg0: i64 {hacc.arg_type = #hacc.arg_type<ffts_base_address>}, %arg1: memref<?xi8, #hivm.address_space<gm>> {hacc.arg_type = #hacc.arg_type<sync_block_lock>}, %arg2: memref<?xi8, #hivm.address_space<gm>> {hacc.arg_type = #hacc.arg_type<workspace>}, %arg3: memref<?xbf16, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg4: memref<?xf32, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg5: memref<?xf32, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg6: memref<?xf32, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 1 : i32}, %arg7: i32, %arg8: i32, %arg9: i32, %arg10: i32 {tt.divisibility = 16 : i32}, %arg11: i32 {tt.divisibility = 16 : i32}, %arg12: i32 {tt.divisibility = 16 : i32}, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32) attributes {SyncBlockLockArgIdx = 0 : i64, WorkspaceArgIdx = 1 : i64, func_dyn_memref_args = dense<[false, true, true, true, true, true, true, false, false, false, false, false, false, false, false, false, false]> : vector<17xi1>, hacc.entry, hacc.function_kind = #hacc.function_kind<DEVICE>, hivm.func_core_type = #hivm.func_core_type<AIV>, hivm.part_of_mix, hivm.storage_aligned, mix_mode = "mix", parallel_mode = "simd"} {
  %c2048_i64 = arith.constant 2048 : i64
  %c0_i64 = arith.constant 0 : i64
  %c32_i32 = arith.constant 32 : i32
  %c0_i32 = arith.constant 0 : i32
  %c31_i32 = arith.constant 31 : i32
  %c32 = arith.constant 32 : index
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : bf16
  hivm.hir.set_ffts_base_addr %arg0
  hivm.hir.set_mask_norm
  %0 = arith.muli %arg14, %arg15 : i32
  %1 = arith.muli %0, %arg16 : i32
  annotation.mark %1 {logical_block_num} : i32
  %2 = hivm.hir.get_block_idx -> i64
  %3 = arith.trunci %2 : i64 to i32
  %4 = arith.muli %arg16, %arg15 : i32
  %5 = arith.divsi %3, %4 : i32
  %6 = arith.remsi %5, %arg14 : i32
  %7 = arith.addi %arg10, %c31_i32 : i32
  %8 = arith.divsi %7, %c32_i32 : i32
  %9 = arith.divsi %6, %8 : i32
  %10 = arith.muli %9, %8 : i32
  %11 = arith.subi %6, %10 : i32
  %12 = arith.muli %11, %c32_i32 : i32
  %13 = arith.muli %9, %arg8 : i32
  %14 = arith.muli %13, %arg10 : i32
  %15 = arith.index_cast %14 : i32 to index
  %16 = arith.index_cast %arg10 : i32 to index
  %17 = arith.index_cast %12 : i32 to index
  %18 = arith.index_cast %arg8 : i32 to index
  %19 = affine.max affine_map<()[s0, s1] -> (s1, s0)>()[%17, %16]
  %20 = affine.min affine_map<()[s0, s1] -> (s1 + 32, s0)>()[%19, %17]
  %21 = affine.min affine_map<()[s0, s1] -> (32, s0 - s1)>()[%20, %17]
  %22 = affine.max affine_map<()[s0] -> (0, s0)>()[%21]
  %23 = arith.cmpi slt, %22, %c32 : index
  %24 = arith.index_cast %2 : i64 to index
  %25 = affine.apply affine_map<()[s0] -> (s0 * 8192)>()[%24]
  %view = memref.view %arg2[%25][] : memref<?xi8, #hivm.address_space<gm>> to memref<32x32xf32, #hivm.address_space<gm>>
  %26 = hivm.hir.get_sub_block_idx -> i64
  %27 = arith.index_cast %26 : i64 to index
  %28 = arith.cmpi eq, %27, %c0 : index
  %29 = affine.apply affine_map<()[s0] -> (s0 * 8192 + 4096)>()[%24]
  %view_0 = memref.view %arg2[%29][] : memref<?xi8, #hivm.address_space<gm>> to memref<32x32xf32, #hivm.address_space<gm>>
  hivm.hir.set_flag[<PIPE_MTE3>, <PIPE_V>, <EVENT_ID0>]
  scf.for %arg17 = %c0_i32 to %arg11 step %c32_i32  : i32 {
    %30 = arith.index_cast %arg17 : i32 to index
    %31 = affine.apply affine_map<()[s0, s1, s2, s3] -> (s0 + s1 + s2 * s3)>()[%17, %15, %30, %16]
    %reinterpret_cast = memref.reinterpret_cast %arg3 to offset: [%31], sizes: [32, 32], strides: [%16, 1] : memref<?xbf16, #hivm.address_space<gm>> to memref<32x32xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
    %32 = hivm.hir.pointer_cast(%c0_i64) : memref<32x32xbf16, #hivm.address_space<ub>>
    %33 = affine.max affine_map<()[s0, s1] -> (s1, s0)>()[%30, %18]
    %34 = affine.min affine_map<()[s0, s1] -> (s1 + 32, s0)>()[%33, %30]
    %35 = affine.min affine_map<()[s0, s1] -> (32, s0 - s1)>()[%34, %30]
    %36 = affine.max affine_map<()[s0] -> (0, s0)>()[%35]
    %37 = arith.cmpi slt, %36, %c32 : index
    %38 = arith.ori %37, %23 : i1
    %subview = memref.subview %reinterpret_cast[0, 0] [%36, %22] [1, 1] : memref<32x32xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>> to memref<?x?xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
    %subview_1 = memref.subview %32[0, 0] [%36, %22] [1, 1] : memref<32x32xbf16, #hivm.address_space<ub>> to memref<?x?xbf16, strided<[32, 1]>, #hivm.address_space<ub>>
    scf.if %38 {
      %collapse_shape_3 = memref.collapse_shape %32 [[0, 1]] : memref<32x32xbf16, #hivm.address_space<ub>> into memref<1024xbf16, #hivm.address_space<ub>>
      hivm.hir.pipe_barrier[<PIPE_V>]
      hivm.hir.vbrc ins(%cst : bf16) outs(%collapse_shape_3 : memref<1024xbf16, #hivm.address_space<ub>>)
    }
    hivm.hir.set_flag[<PIPE_V>, <PIPE_MTE2>, <EVENT_ID0>]
    hivm.hir.wait_flag[<PIPE_V>, <PIPE_MTE2>, <EVENT_ID0>]
    hivm.hir.load ins(%subview : memref<?x?xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>) outs(%subview_1 : memref<?x?xbf16, strided<[32, 1]>, #hivm.address_space<ub>>) pad_mode = <PadValue> pad_value = %cst : bf16 left_padding_num = %c0 : index init_out_buffer = false may_implicit_transpose_with_last_axis = false
    hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_V>, <EVENT_ID0>]
    %39 = hivm.hir.pointer_cast(%c2048_i64) : memref<32x32xf32, #hivm.address_space<ub>>
    %collapse_shape = memref.collapse_shape %32 [[0, 1]] : memref<32x32xbf16, #hivm.address_space<ub>> into memref<1024xbf16, #hivm.address_space<ub>>
    %collapse_shape_2 = memref.collapse_shape %39 [[0, 1]] : memref<32x32xf32, #hivm.address_space<ub>> into memref<1024xf32, #hivm.address_space<ub>>
    hivm.hir.wait_flag[<PIPE_MTE2>, <PIPE_V>, <EVENT_ID0>]
    hivm.hir.wait_flag[<PIPE_MTE3>, <PIPE_V>, <EVENT_ID0>]
    hivm.hir.vcast ins(%collapse_shape : memref<1024xbf16, #hivm.address_space<ub>>) outs(%collapse_shape_2 : memref<1024xf32, #hivm.address_space<ub>>)
    hivm.hir.set_flag[<PIPE_V>, <PIPE_MTE3>, <EVENT_ID0>]
    hivm.hir.sync_block_wait[<VECTOR>, <PIPE_MTE2>, <PIPE_S>] flag = 0
    hivm.hir.wait_flag[<PIPE_V>, <PIPE_MTE3>, <EVENT_ID0>]
    scf.if %28 {
      %collapse_shape_3 = memref.collapse_shape %view [[0, 1]] : memref<32x32xf32, #hivm.address_space<gm>> into memref<1024xf32, #hivm.address_space<gm>>
      hivm.hir.store ins(%collapse_shape_2 : memref<1024xf32, #hivm.address_space<ub>>) outs(%collapse_shape_3 : memref<1024xf32, #hivm.address_space<gm>>)
    }
    annotation.mark %view : memref<32x32xf32, #hivm.address_space<gm>>
    hivm.hir.sync_block_set[<VECTOR>, <PIPE_MTE3>, <PIPE_S>] flag = 1
    hivm.hir.sync_block_wait[<VECTOR>, <PIPE_MTE2>, <PIPE_S>] flag = 2
    scf.if %28 {
      %collapse_shape_3 = memref.collapse_shape %view_0 [[0, 1]] : memref<32x32xf32, #hivm.address_space<gm>> into memref<1024xf32, #hivm.address_space<gm>>
      hivm.hir.store ins(%collapse_shape_2 : memref<1024xf32, #hivm.address_space<ub>>) outs(%collapse_shape_3 : memref<1024xf32, #hivm.address_space<gm>>)
    }
    hivm.hir.set_flag[<PIPE_MTE3>, <PIPE_V>, <EVENT_ID0>]
    annotation.mark %view_0 : memref<32x32xf32, #hivm.address_space<gm>>
    hivm.hir.sync_block_set[<VECTOR>, <PIPE_MTE3>, <PIPE_S>] flag = 1
  }
  hivm.hir.pipe_barrier[<PIPE_ALL>]
  hivm.hir.wait_flag[<PIPE_MTE3>, <PIPE_V>, <EVENT_ID0>]
  hivm.hir.sync_block_wait[<VECTOR>, <PIPE_MTE2>, <PIPE_S>] flag = 0
  hivm.hir.sync_block_wait[<VECTOR>, <PIPE_MTE2>, <PIPE_S>] flag = 2
  return
}

// -----// IR Dump After InjectSync (hivm-inject-sync) //----- //
func.func @_dft_w_fwd_kernel_mix_aic(%arg0: i64 {hacc.arg_type = #hacc.arg_type<ffts_base_address>}, %arg1: memref<?xi8, #hivm.address_space<gm>> {hacc.arg_type = #hacc.arg_type<sync_block_lock>}, %arg2: memref<?xi8, #hivm.address_space<gm>> {hacc.arg_type = #hacc.arg_type<workspace>}, %arg3: memref<?xbf16, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg4: memref<?xf32, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg5: memref<?xf32, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg6: memref<?xf32, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 1 : i32}, %arg7: i32, %arg8: i32, %arg9: i32, %arg10: i32 {tt.divisibility = 16 : i32}, %arg11: i32 {tt.divisibility = 16 : i32}, %arg12: i32 {tt.divisibility = 16 : i32}, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32) attributes {SyncBlockLockArgIdx = 0 : i64, WorkspaceArgIdx = 1 : i64, func_dyn_memref_args = dense<[false, true, true, true, true, true, true, false, false, false, false, false, false, false, false, false, false]> : vector<17xi1>, hacc.entry, hacc.function_kind = #hacc.function_kind<DEVICE>, hivm.func_core_type = #hivm.func_core_type<AIC>, hivm.part_of_mix, hivm.storage_aligned, mix_mode = "mix", parallel_mode = "simd"} {
  %c3_i64 = arith.constant 3 : i64
  %c1_i64 = arith.constant 1 : i64
  %c3_i64_0 = arith.constant 3 : i64
  %c2_i64 = arith.constant 2 : i64
  %c2_i64_1 = arith.constant 2 : i64
  %c0_i64 = arith.constant 0 : i64
  %c1_i64_2 = arith.constant 1 : i64
  %c0_i64_3 = arith.constant 0 : i64
  %c1_i64_4 = arith.constant 1 : i64
  %c-1_i64 = arith.constant -1 : i64
  %c1_i64_5 = arith.constant 1 : i64
  %c-1_i64_6 = arith.constant -1 : i64
  %c10240_i64 = arith.constant 10240 : i64
  %c8192_i64 = arith.constant 8192 : i64
  %c4096_i64 = arith.constant 4096 : i64
  %c0_i64_7 = arith.constant 0 : i64
  %c2048_i64 = arith.constant 2048 : i64
  %c32_i32 = arith.constant 32 : i32
  %c2_i32 = arith.constant 2 : i32
  %c0_i32 = arith.constant 0 : i32
  %c31_i32 = arith.constant 31 : i32
  %c32 = arith.constant 32 : index
  %c16 = arith.constant 16 : index
  hivm.hir.set_ffts_base_addr %arg0
  hivm.hir.set_mask_norm
  %0 = arith.muli %arg14, %arg15 : i32
  %1 = arith.muli %0, %arg16 : i32
  annotation.mark %1 {logical_block_num} : i32
  %2 = hivm.hir.get_block_idx -> i64
  %3 = arith.trunci %2 : i64 to i32
  %4 = arith.muli %arg16, %arg15 : i32
  %5 = arith.divsi %3, %4 : i32
  %6 = arith.remsi %5, %arg14 : i32
  %7 = arith.addi %arg10, %c31_i32 : i32
  %8 = arith.divsi %7, %c32_i32 : i32
  %9 = arith.divsi %6, %8 : i32
  %10 = arith.muli %9, %8 : i32
  %11 = arith.subi %6, %10 : i32
  %12 = arith.divsi %9, %arg7 : i32
  %13 = arith.muli %12, %arg7 : i32
  %14 = arith.subi %9, %13 : i32
  %15 = arith.muli %11, %c32_i32 : i32
  hivm.hir.sync_block_set[<CUBE>, <PIPE_MTE2>, <PIPE_S>] flag = 0
  hivm.hir.sync_block_set[<CUBE>, <PIPE_MTE2>, <PIPE_S>] flag = 2
  %16 = arith.index_cast %2 : i64 to index
  %17 = affine.apply affine_map<()[s0] -> (s0 * 8192)>()[%16]
  %view = memref.view %arg2[%17][] : memref<?xi8, #hivm.address_space<gm>> to memref<32x32xf32, #hivm.address_space<gm>>
  %18 = affine.apply affine_map<()[s0] -> (s0 * 8192 + 4096)>()[%16]
  %view_8 = memref.view %arg2[%18][] : memref<?xi8, #hivm.address_space<gm>> to memref<32x32xf32, #hivm.address_space<gm>>
  %19 = arith.index_cast %arg11 : i32 to index
  %20 = hivm.hir.pointer_cast(%c2048_i64) : memref<2x1x16x16xf32, #hivm.address_space<cc>>
  %cast = memref.cast %20 : memref<2x1x16x16xf32, #hivm.address_space<cc>> to memref<?x?x?x?xf32, #hivm.address_space<cc>>
  %21 = hivm.hir.pointer_cast(%c0_i64_7) : memref<2x1x16x16xf32, #hivm.address_space<cc>>
  %cast_9 = memref.cast %21 : memref<2x1x16x16xf32, #hivm.address_space<cc>> to memref<?x?x?x?xf32, #hivm.address_space<cc>>
  hivm.hir.set_flag[<PIPE_M>, <PIPE_MTE1>, <EVENT_ID0>]
  hivm.hir.set_flag[<PIPE_M>, <PIPE_MTE1>, <EVENT_ID1>]
  hivm.hir.set_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID0>]
  hivm.hir.set_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID1>]
  hivm.hir.set_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID2>]
  hivm.hir.set_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID3>]
  scf.for %arg17 = %c0_i32 to %arg11 step %c32_i32  : i32 {
    %45 = arith.index_cast %arg17 : i32 to index
    %46 = arith.index_cast %c0_i32 : i32 to index
    %47 = arith.index_cast %arg11 : i32 to index
    %48 = arith.index_cast %c32_i32 : i32 to index
    %49 = affine.apply affine_map<()[s0, s1, s2] -> ((s0 - s1) floordiv s2)>()[%45, %46, %48]
    %50 = arith.index_cast %49 : index to i64
    %c0_i64_16 = arith.constant 0 : i64
    %51 = arith.index_cast %arg17 : i32 to index
    %52 = arith.index_cast %c0_i32 : i32 to index
    %53 = arith.index_cast %arg11 : i32 to index
    %54 = arith.index_cast %c32_i32 : i32 to index
    %55 = affine.apply affine_map<()[s0, s1, s2] -> ((s0 - s1) floordiv s2)>()[%51, %52, %54]
    %56 = arith.index_cast %55 : index to i64
    %c0_i64_17 = arith.constant 0 : i64
    %57 = arith.index_cast %arg17 : i32 to index
    hivm.hir.sync_block_wait[<CUBE>, <PIPE_MTE3>, <PIPE_S>] flag = 1
    %58 = hivm.hir.pointer_cast(%c0_i64_7) : memref<4x2x16x8xf32, #hivm.address_space<cbuf>>
    %cast_18 = memref.cast %58 : memref<4x2x16x8xf32, #hivm.address_space<cbuf>> to memref<?x?x?x?xf32, #hivm.address_space<cbuf>>
    hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID0>]
    hivm.hir.nd2nz {dst_continuous} ins(%view : memref<32x32xf32, #hivm.address_space<gm>>) outs(%cast_18 : memref<?x?x?x?xf32, #hivm.address_space<cbuf>>) init_out_buffer = false
    hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_MTE1>, <EVENT_ID1>]
    hivm.hir.sync_block_set[<CUBE>, <PIPE_MTE2>, <PIPE_S>] flag = 0
    hivm.hir.sync_block_wait[<CUBE>, <PIPE_MTE3>, <PIPE_S>] flag = 1
    %59 = hivm.hir.pointer_cast(%c4096_i64) : memref<4x2x16x8xf32, #hivm.address_space<cbuf>>
    %cast_19 = memref.cast %59 : memref<4x2x16x8xf32, #hivm.address_space<cbuf>> to memref<?x?x?x?xf32, #hivm.address_space<cbuf>>
    hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID1>]
    hivm.hir.nd2nz {dst_continuous} ins(%view_8 : memref<32x32xf32, #hivm.address_space<gm>>) outs(%cast_19 : memref<?x?x?x?xf32, #hivm.address_space<cbuf>>) init_out_buffer = false
    hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_MTE1>, <EVENT_ID3>]
    hivm.hir.sync_block_set[<CUBE>, <PIPE_MTE2>, <PIPE_S>] flag = 2
    %reinterpret_cast_20 = memref.reinterpret_cast %arg4 to offset: [%57], sizes: [16, 32], strides: [%19, 1] : memref<?xf32, #hivm.address_space<gm>> to memref<16x32xf32, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
    %60 = hivm.hir.pointer_cast(%c8192_i64) : memref<4x1x16x8xf32, #hivm.address_space<cbuf>>
    %cast_21 = memref.cast %60 : memref<4x1x16x8xf32, #hivm.address_space<cbuf>> to memref<?x?x?x?xf32, #hivm.address_space<cbuf>>
    hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID2>]
    hivm.hir.nd2nz {dst_continuous} ins(%reinterpret_cast_20 : memref<16x32xf32, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>) outs(%cast_21 : memref<?x?x?x?xf32, #hivm.address_space<cbuf>>) init_out_buffer = false
    hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_MTE1>, <EVENT_ID0>]
    %reinterpret_cast_22 = memref.reinterpret_cast %arg5 to offset: [%57], sizes: [16, 32], strides: [%19, 1] : memref<?xf32, #hivm.address_space<gm>> to memref<16x32xf32, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
    %61 = hivm.hir.pointer_cast(%c10240_i64) : memref<4x1x16x8xf32, #hivm.address_space<cbuf>>
    %cast_23 = memref.cast %61 : memref<4x1x16x8xf32, #hivm.address_space<cbuf>> to memref<?x?x?x?xf32, #hivm.address_space<cbuf>>
    hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID3>]
    hivm.hir.nd2nz {dst_continuous} ins(%reinterpret_cast_22 : memref<16x32xf32, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>) outs(%cast_23 : memref<?x?x?x?xf32, #hivm.address_space<cbuf>>) init_out_buffer = false
    hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_MTE1>, <EVENT_ID2>]
    %62 = arith.cmpi eq, %arg17, %c0_i32 : i32
    hivm.hir.mmadL1 {fixpipe_already_inserted = true} ins(%cast_21, %cast_18, %62, %c16, %c32, %c32 : memref<?x?x?x?xf32, #hivm.address_space<cbuf>>, memref<?x?x?x?xf32, #hivm.address_space<cbuf>>, i1, index, index, index) outs(%cast : memref<?x?x?x?xf32, #hivm.address_space<cc>>) sync_related_args(%c0_i64_3, %c1_i64_2, %c2_i64_1, %c0_i64, %56, %c0_i64_17, %c1_i64_5 : i64, i64, i64, i64, i64, i64, i64)
    hivm.hir.mmadL1 {fixpipe_already_inserted = true} ins(%cast_23, %cast_19, %62, %c16, %c32, %c32 : memref<?x?x?x?xf32, #hivm.address_space<cbuf>>, memref<?x?x?x?xf32, #hivm.address_space<cbuf>>, i1, index, index, index) outs(%cast_9 : memref<?x?x?x?xf32, #hivm.address_space<cc>>) sync_related_args(%c2_i64, %c3_i64_0, %c3_i64, %c1_i64, %50, %c0_i64_16, %c1_i64_4 : i64, i64, i64, i64, i64, i64, i64)
  }
  hivm.hir.set_flag[<PIPE_M>, <PIPE_FIX>, <EVENT_ID0>]
  %22 = arith.muli %12, %arg9 : i32
  %23 = arith.muli %arg12, %c2_i32 : i32
  %24 = arith.muli %23, %arg10 : i32
  %25 = arith.muli %14, %arg10 : i32
  %26 = arith.index_cast %22 : i32 to index
  %27 = arith.index_cast %24 : i32 to index
  %28 = arith.index_cast %25 : i32 to index
  %29 = arith.index_cast %15 : i32 to index
  %30 = affine.apply affine_map<()[s0, s1, s2, s3] -> (s0 + s1 + s2 * s3)>()[%29, %28, %26, %27]
  %reinterpret_cast = memref.reinterpret_cast %arg6 to offset: [%30], sizes: [16, 32], strides: [%27, 1] : memref<?xf32, #hivm.address_space<gm>> to memref<16x32xf32, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
  %31 = arith.index_cast %arg9 : i32 to index
  %32 = affine.max affine_map<()[s0] -> (0, s0)>()[%31]
  %33 = arith.index_cast %arg10 : i32 to index
  %34 = affine.max affine_map<()[s0, s1] -> (s1, s0)>()[%29, %33]
  %35 = affine.min affine_map<()[s0, s1] -> (s1 + 32, s0)>()[%34, %29]
  %36 = affine.min affine_map<()[s0] -> (16, s0)>()[%32]
  %37 = affine.max affine_map<()[s0] -> (0, s0)>()[%36]
  %38 = affine.min affine_map<()[s0, s1] -> (32, s0 - s1)>()[%35, %29]
  %39 = affine.max affine_map<()[s0] -> (0, s0)>()[%38]
  %40 = affine.apply affine_map<()[s0] -> ((s0 + 15) floordiv 16)>()[%37]
  %41 = affine.apply affine_map<()[s0] -> ((s0 + 15) floordiv 16)>()[%39]
  %subview = memref.subview %20[0, 0, 0, 0] [%41, %40, 16, 16] [1, 1, 1, 1] : memref<2x1x16x16xf32, #hivm.address_space<cc>> to memref<?x?x16x16xf32, strided<[256, 256, 16, 1]>, #hivm.address_space<cc>>
  %cast_10 = memref.cast %subview : memref<?x?x16x16xf32, strided<[256, 256, 16, 1]>, #hivm.address_space<cc>> to memref<?x?x?x?xf32, strided<[?, ?, ?, 1], offset: ?>, #hivm.address_space<cc>>
  %subview_11 = memref.subview %reinterpret_cast[0, 0] [%37, %39] [1, 1] : memref<16x32xf32, strided<[?, 1], offset: ?>, #hivm.address_space<gm>> to memref<?x?xf32, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
  hivm.hir.wait_flag[<PIPE_M>, <PIPE_FIX>, <EVENT_ID0>]
  hivm.hir.fixpipe {enable_nz2nd} ins(%cast_10 : memref<?x?x?x?xf32, strided<[?, ?, ?, 1], offset: ?>, #hivm.address_space<cc>>) outs(%subview_11 : memref<?x?xf32, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>)
  %42 = arith.muli %arg12, %arg10 : i32
  %43 = arith.index_cast %42 : i32 to index
  %44 = affine.apply affine_map<()[s0, s1, s2, s3, s4] -> (s0 + s1 + s2 + s3 * s4)>()[%29, %43, %28, %26, %27]
  %reinterpret_cast_12 = memref.reinterpret_cast %arg6 to offset: [%44], sizes: [16, 32], strides: [%27, 1] : memref<?xf32, #hivm.address_space<gm>> to memref<16x32xf32, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
  %subview_13 = memref.subview %21[0, 0, 0, 0] [%41, %40, 16, 16] [1, 1, 1, 1] : memref<2x1x16x16xf32, #hivm.address_space<cc>> to memref<?x?x16x16xf32, strided<[256, 256, 16, 1]>, #hivm.address_space<cc>>
  %cast_14 = memref.cast %subview_13 : memref<?x?x16x16xf32, strided<[256, 256, 16, 1]>, #hivm.address_space<cc>> to memref<?x?x?x?xf32, strided<[?, ?, ?, 1], offset: ?>, #hivm.address_space<cc>>
  %subview_15 = memref.subview %reinterpret_cast_12[0, 0] [%37, %39] [1, 1] : memref<16x32xf32, strided<[?, 1], offset: ?>, #hivm.address_space<gm>> to memref<?x?xf32, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
  hivm.hir.pipe_barrier[<PIPE_FIX>]
  hivm.hir.fixpipe {enable_nz2nd} ins(%cast_14 : memref<?x?x?x?xf32, strided<[?, ?, ?, 1], offset: ?>, #hivm.address_space<cc>>) outs(%subview_15 : memref<?x?xf32, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>)
  hivm.hir.wait_flag[<PIPE_M>, <PIPE_MTE1>, <EVENT_ID0>]
  hivm.hir.wait_flag[<PIPE_M>, <PIPE_MTE1>, <EVENT_ID1>]
  hivm.hir.pipe_barrier[<PIPE_ALL>]
  hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID0>]
  hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID1>]
  hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID2>]
  hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID3>]
  return
}

loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":179:27): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":178:27): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":179:27): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":178:27): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":179:27): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":178:27): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":179:27): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":178:27): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":179:27): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":178:27): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":179:27): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":178:27): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":179:27): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":178:27): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":179:27): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":178:27): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":179:27): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":178:27): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":179:27): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":178:27): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":175:67): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":175:67): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":175:67): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":175:67): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":175:67): loc("/home/w00934874/agent/code/run_batch/tritld.lld: warning: -z separate-code and -z separate-loadable-segments will be ignored
warning: overriding the module target triple with x86_64-unknown-linux-gnu [-Woverride-module]
1 warning generated.
warning: overriding the module target triple with x86_64-unknown-linux-gnu [-Woverride-module]
1 warning generated.
on_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":175:67): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":175:67): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":175:67): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":175:67): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":175:67): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":175:67): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":175:67): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":175:67): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":175:67): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":175:67): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":175:67): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":175:67): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":175:67): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":175:67): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":175:67): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":151:0): warning: Overwriting the target by the pass option...
