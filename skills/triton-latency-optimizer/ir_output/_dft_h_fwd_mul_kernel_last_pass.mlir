// -----// IR Dump After InjectSync (hivm-inject-sync) //----- //
func.func @_dft_h_fwd_mul_kernel_mix_aic(%arg0: i64 {hacc.arg_type = #hacc.arg_type<ffts_base_address>}, %arg1: memref<?xi8, #hivm.address_space<gm>> {hacc.arg_type = #hacc.arg_type<sync_block_lock>}, %arg2: memref<?xi8, #hivm.address_space<gm>> {hacc.arg_type = #hacc.arg_type<workspace>}, %arg3: memref<?xf32, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg4: memref<?xf32, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg5: memref<?xf32, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg6: memref<?xf32, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg7: memref<?xf32, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg8: memref<?xf32, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 1 : i32}, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32 {tt.divisibility = 16 : i32}, %arg13: i32 {tt.divisibility = 16 : i32}, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32) attributes {SyncBlockLockArgIdx = 0 : i64, WorkspaceArgIdx = 1 : i64, func_dyn_memref_args = dense<[false, true, true, true, true, true, true, true, true, false, false, false, false, false, false, false, false, false]> : vector<18xi1>, hacc.entry, hacc.function_kind = #hacc.function_kind<DEVICE>, hivm.func_core_type = #hivm.func_core_type<AIC>, hivm.part_of_mix, hivm.storage_aligned, mix_mode = "mix", parallel_mode = "simd"} {
  %c2_i64 = arith.constant 2 : i64
  %c0_i64 = arith.constant 0 : i64
  %c2_i64_0 = arith.constant 2 : i64
  %c1_i64 = arith.constant 1 : i64
  %c1_i64_1 = arith.constant 1 : i64
  %c0_i64_2 = arith.constant 0 : i64
  %c1_i64_3 = arith.constant 1 : i64
  %c-1_i64 = arith.constant -1 : i64
  %c1_i64_4 = arith.constant 1 : i64
  %c-1_i64_5 = arith.constant -1 : i64
  %c12288_i64 = arith.constant 12288 : i64
  %c8192_i64 = arith.constant 8192 : i64
  %c0_i64_6 = arith.constant 0 : i64
  %c2048_i64 = arith.constant 2048 : i64
  %cst = arith.constant 0.000000e+00 : f32
  %c2_i32 = arith.constant 2 : i32
  %c32_i32 = arith.constant 32 : i32
  %c0_i32 = arith.constant 0 : i32
  %c64_i32 = arith.constant 64 : i32
  %c31_i32 = arith.constant 31 : i32
  %c32 = arith.constant 32 : index
  %c16 = arith.constant 16 : index
  %c64 = arith.constant 64 : index
  hivm.hir.set_ffts_base_addr %arg0
  hivm.hir.set_mask_norm
  %0 = arith.muli %arg15, %arg16 : i32
  %1 = arith.muli %0, %arg17 : i32
  annotation.mark %1 {logical_block_num} : i32
  %2 = hivm.hir.get_block_idx -> i64
  %3 = arith.trunci %2 : i64 to i32
  %4 = arith.muli %arg17, %arg16 : i32
  %5 = arith.divsi %3, %4 : i32
  %6 = arith.remsi %5, %arg15 : i32
  %7 = arith.addi %arg12, %c31_i32 : i32
  %8 = arith.divsi %7, %c32_i32 : i32
  %9 = arith.divsi %6, %8 : i32
  %10 = arith.muli %9, %8 : i32
  %11 = arith.subi %6, %10 : i32
  %12 = arith.muli %11, %c32_i32 : i32
  %13 = arith.muli %arg13, %c2_i32 : i32
  %14 = arith.muli %9, %13 : i32
  %15 = arith.index_cast %14 : i32 to index
  %16 = arith.index_cast %arg12 : i32 to index
  %17 = arith.index_cast %12 : i32 to index
  %18 = affine.max affine_map<()[s0, s1] -> (s1, s0)>()[%17, %16]
  %19 = affine.min affine_map<()[s0, s1] -> (s1 + 32, s0)>()[%18, %17]
  %20 = affine.apply affine_map<()[s0, s1] -> (s0 - s1)>()[%19, %17]
  %21 = arith.cmpi slt, %20, %c32 : index
  %22 = arith.index_cast %13 : i32 to index
  %23 = hivm.hir.pointer_cast(%c2048_i64) : memref<2x1x16x16xf32, #hivm.address_space<cc>>
  %cast = memref.cast %23 : memref<2x1x16x16xf32, #hivm.address_space<cc>> to memref<?x?x?x?xf32, #hivm.address_space<cc>>
  %24 = hivm.hir.pointer_cast(%c0_i64_6) : memref<2x1x16x16xf32, #hivm.address_space<cc>>
  %cast_7 = memref.cast %24 : memref<2x1x16x16xf32, #hivm.address_space<cc>> to memref<?x?x?x?xf32, #hivm.address_space<cc>>
  hivm.hir.set_flag[<PIPE_M>, <PIPE_MTE1>, <EVENT_ID0>]
  hivm.hir.set_flag[<PIPE_M>, <PIPE_MTE1>, <EVENT_ID1>]
  hivm.hir.set_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID0>]
  hivm.hir.set_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID1>]
  hivm.hir.set_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID2>]
  scf.for %arg18 = %c0_i32 to %13 step %c64_i32  : i32 {
    %28 = arith.index_cast %arg18 : i32 to index
    %29 = arith.index_cast %c0_i32 : i32 to index
    %30 = arith.index_cast %13 : i32 to index
    %31 = arith.index_cast %c64_i32 : i32 to index
    %32 = affine.apply affine_map<()[s0, s1, s2] -> ((s0 - s1) floordiv s2)>()[%28, %29, %31]
    %33 = arith.index_cast %32 : index to i64
    %c0_i64_9 = arith.constant 0 : i64
    %34 = arith.index_cast %arg18 : i32 to index
    %35 = arith.index_cast %c0_i32 : i32 to index
    %36 = arith.index_cast %13 : i32 to index
    %37 = arith.index_cast %c64_i32 : i32 to index
    %38 = affine.apply affine_map<()[s0, s1, s2] -> ((s0 - s1) floordiv s2)>()[%34, %35, %37]
    %39 = arith.index_cast %38 : index to i64
    %c0_i64_10 = arith.constant 0 : i64
    %40 = arith.index_cast %arg18 : i32 to index
    %41 = affine.apply affine_map<()[s0, s1, s2, s3] -> (s0 + (s2 + s3) * s1)>()[%17, %16, %15, %40]
    %reinterpret_cast = memref.reinterpret_cast %arg3 to offset: [%41], sizes: [64, 32], strides: [%16, 1] : memref<?xf32, #hivm.address_space<gm>> to memref<64x32xf32, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
    %42 = hivm.hir.pointer_cast(%c0_i64_6) : memref<4x4x16x8xf32, #hivm.address_space<cbuf>>
    %cast_11 = memref.cast %42 : memref<4x4x16x8xf32, #hivm.address_space<cbuf>> to memref<?x?x?x?xf32, #hivm.address_space<cbuf>>
    %subview = memref.subview %reinterpret_cast[0, 0] [64, %20] [1, 1] : memref<64x32xf32, strided<[?, 1], offset: ?>, #hivm.address_space<gm>> to memref<64x?xf32, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
    %43 = affine.apply affine_map<()[s0, s1] -> ((s0 - s1 + 7) floordiv 8)>()[%19, %17]
    %subview_12 = memref.subview %42[0, 0, 0, 0] [%43, 4, 16, 8] [1, 1, 1, 1] : memref<4x4x16x8xf32, #hivm.address_space<cbuf>> to memref<?x4x16x8xf32, strided<[512, 128, 8, 1]>, #hivm.address_space<cbuf>>
    %cast_13 = memref.cast %subview_12 : memref<?x4x16x8xf32, strided<[512, 128, 8, 1]>, #hivm.address_space<cbuf>> to memref<?x?x?x?xf32, strided<[?, ?, ?, 1], offset: ?>, #hivm.address_space<cbuf>>
    hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID0>]
    scf.if %21 {
      %collapse_shape = memref.collapse_shape %42 [[0, 1, 2, 3]] : memref<4x4x16x8xf32, #hivm.address_space<cbuf>> into memref<2048xf32, #hivm.address_space<cbuf>>
      hivm.hir.vbrc ins(%cst : f32) outs(%collapse_shape : memref<2048xf32, #hivm.address_space<cbuf>>)
    }
    hivm.hir.pipe_barrier[<PIPE_MTE2>]
    hivm.hir.nd2nz {dst_continuous} ins(%subview : memref<64x?xf32, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>) outs(%cast_13 : memref<?x?x?x?xf32, strided<[?, ?, ?, 1], offset: ?>, #hivm.address_space<cbuf>>) init_out_buffer = false
    hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_MTE1>, <EVENT_ID1>]
    %reinterpret_cast_14 = memref.reinterpret_cast %arg4 to offset: [%40], sizes: [16, 64], strides: [%22, 1] : memref<?xf32, #hivm.address_space<gm>> to memref<16x64xf32, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
    %44 = hivm.hir.pointer_cast(%c8192_i64) : memref<8x1x16x8xf32, #hivm.address_space<cbuf>>
    %cast_15 = memref.cast %44 : memref<8x1x16x8xf32, #hivm.address_space<cbuf>> to memref<?x?x?x?xf32, #hivm.address_space<cbuf>>
    hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID1>]
    hivm.hir.nd2nz {dst_continuous} ins(%reinterpret_cast_14 : memref<16x64xf32, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>) outs(%cast_15 : memref<?x?x?x?xf32, #hivm.address_space<cbuf>>) init_out_buffer = false
    hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_MTE1>, <EVENT_ID0>]
    %reinterpret_cast_16 = memref.reinterpret_cast %arg5 to offset: [%40], sizes: [16, 64], strides: [%22, 1] : memref<?xf32, #hivm.address_space<gm>> to memref<16x64xf32, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
    %45 = hivm.hir.pointer_cast(%c12288_i64) : memref<8x1x16x8xf32, #hivm.address_space<cbuf>>
    %cast_17 = memref.cast %45 : memref<8x1x16x8xf32, #hivm.address_space<cbuf>> to memref<?x?x?x?xf32, #hivm.address_space<cbuf>>
    hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID2>]
    hivm.hir.nd2nz {dst_continuous} ins(%reinterpret_cast_16 : memref<16x64xf32, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>) outs(%cast_17 : memref<?x?x?x?xf32, #hivm.address_space<cbuf>>) init_out_buffer = false
    hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_MTE1>, <EVENT_ID2>]
    %46 = arith.cmpi eq, %arg18, %c0_i32 : i32
    hivm.hir.mmadL1 {fixpipe_already_inserted = true} ins(%cast_15, %cast_11, %46, %c16, %c64, %20 : memref<?x?x?x?xf32, #hivm.address_space<cbuf>>, memref<?x?x?x?xf32, #hivm.address_space<cbuf>>, i1, index, index, index) outs(%cast : memref<?x?x?x?xf32, #hivm.address_space<cc>>) sync_related_args(%c0_i64_2, %c1_i64_1, %c1_i64, %c-1_i64_5, %39, %c0_i64_10, %c1_i64_4 : i64, i64, i64, i64, i64, i64, i64)
    hivm.hir.mmadL1 {fixpipe_already_inserted = true} ins(%cast_17, %cast_11, %46, %c16, %c64, %20 : memref<?x?x?x?xf32, #hivm.address_space<cbuf>>, memref<?x?x?x?xf32, #hivm.address_space<cbuf>>, i1, index, index, index) outs(%cast_7 : memref<?x?x?x?xf32, #hivm.address_space<cc>>) sync_related_args(%c2_i64_0, %c-1_i64, %c2_i64, %c0_i64, %33, %c0_i64_9, %c1_i64_3 : i64, i64, i64, i64, i64, i64, i64)
  }
  hivm.hir.set_flag[<PIPE_M>, <PIPE_FIX>, <EVENT_ID0>]
  %25 = arith.index_cast %2 : i64 to index
  %26 = affine.apply affine_map<()[s0] -> (s0 * 4096)>()[%25]
  %view = memref.view %arg2[%26][] : memref<?xi8, #hivm.address_space<gm>> to memref<16x32xf32, #hivm.address_space<gm>>
  hivm.hir.wait_flag[<PIPE_M>, <PIPE_FIX>, <EVENT_ID0>]
  hivm.hir.fixpipe {enable_nz2nd} ins(%cast : memref<?x?x?x?xf32, #hivm.address_space<cc>>) outs(%view : memref<16x32xf32, #hivm.address_space<gm>>)
  annotation.mark %view : memref<16x32xf32, #hivm.address_space<gm>>
  annotation.mark %view : memref<16x32xf32, #hivm.address_space<gm>>
  hivm.hir.sync_block_set[<CUBE>, <PIPE_FIX>, <PIPE_S>] flag = 0
  %27 = affine.apply affine_map<()[s0] -> (s0 * 4096 + 2048)>()[%25]
  %view_8 = memref.view %arg2[%27][] : memref<?xi8, #hivm.address_space<gm>> to memref<16x32xf32, #hivm.address_space<gm>>
  hivm.hir.fixpipe {enable_nz2nd} ins(%cast_7 : memref<?x?x?x?xf32, #hivm.address_space<cc>>) outs(%view_8 : memref<16x32xf32, #hivm.address_space<gm>>)
  hivm.hir.wait_flag[<PIPE_M>, <PIPE_MTE1>, <EVENT_ID0>]
  hivm.hir.wait_flag[<PIPE_M>, <PIPE_MTE1>, <EVENT_ID1>]
  hivm.hir.pipe_barrier[<PIPE_ALL>]
  hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID0>]
  hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID1>]
  hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID2>]
  annotation.mark %view_8 : memref<16x32xf32, #hivm.address_space<gm>>
  annotation.mark %view_8 : memref<16x32xf32, #hivm.address_space<gm>>
  hivm.hir.sync_block_set[<CUBE>, <PIPE_FIX>, <PIPE_S>] flag = 0
  return
}

// -----// IR Dump After InjectSync (hivm-inject-sync) //----- //
func.func @_dft_h_fwd_mul_kernel_mix_aiv(%arg0: i64 {hacc.arg_type = #hacc.arg_type<ffts_base_address>}, %arg1: memref<?xi8, #hivm.address_space<gm>> {hacc.arg_type = #hacc.arg_type<sync_block_lock>}, %arg2: memref<?xi8, #hivm.address_space<gm>> {hacc.arg_type = #hacc.arg_type<workspace>}, %arg3: memref<?xf32, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg4: memref<?xf32, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg5: memref<?xf32, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg6: memref<?xf32, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg7: memref<?xf32, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg8: memref<?xf32, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 1 : i32}, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32 {tt.divisibility = 16 : i32}, %arg13: i32 {tt.divisibility = 16 : i32}, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32) attributes {SyncBlockLockArgIdx = 0 : i64, WorkspaceArgIdx = 1 : i64, func_dyn_memref_args = dense<[false, true, true, true, true, true, true, true, true, false, false, false, false, false, false, false, false, false]> : vector<18xi1>, hacc.entry, hacc.function_kind = #hacc.function_kind<DEVICE>, hivm.func_core_type = #hivm.func_core_type<AIV>, hivm.part_of_mix, hivm.storage_aligned, mix_mode = "mix", parallel_mode = "simd"} {
  %c10240_i64 = arith.constant 10240 : i64
  %c8192_i64 = arith.constant 8192 : i64
  %c6144_i64 = arith.constant 6144 : i64
  %c4096_i64 = arith.constant 4096 : i64
  %c2048_i64 = arith.constant 2048 : i64
  %c0_i64 = arith.constant 0 : i64
  %cst = arith.constant 0.000000e+00 : f32
  %c2_i32 = arith.constant 2 : i32
  %c32_i32 = arith.constant 32 : i32
  %c31_i32 = arith.constant 31 : i32
  %c32 = arith.constant 32 : index
  %c0 = arith.constant 0 : index
  %c16 = arith.constant 16 : index
  hivm.hir.set_ffts_base_addr %arg0
  hivm.hir.set_mask_norm
  %0 = arith.muli %arg15, %arg16 : i32
  %1 = arith.muli %0, %arg17 : i32
  annotation.mark %1 {logical_block_num} : i32
  %2 = hivm.hir.get_block_idx -> i64
  %3 = arith.trunci %2 : i64 to i32
  %4 = arith.muli %arg17, %arg16 : i32
  %5 = arith.divsi %3, %4 : i32
  %6 = arith.remsi %5, %arg15 : i32
  %7 = arith.addi %arg12, %c31_i32 : i32
  %8 = arith.divsi %7, %c32_i32 : i32
  %9 = arith.divsi %6, %8 : i32
  %10 = arith.muli %9, %8 : i32
  %11 = arith.subi %6, %10 : i32
  %12 = arith.divsi %9, %arg11 : i32
  %13 = arith.muli %12, %arg11 : i32
  %14 = arith.subi %9, %13 : i32
  %15 = arith.muli %11, %c32_i32 : i32
  %16 = arith.muli %arg13, %c2_i32 : i32
  %17 = arith.muli %9, %16 : i32
  %18 = arith.index_cast %2 : i64 to index
  %19 = affine.apply affine_map<()[s0] -> (s0 * 4096)>()[%18]
  %view = memref.view %arg2[%19][] : memref<?xi8, #hivm.address_space<gm>> to memref<16x32xf32, #hivm.address_space<gm>>
  hivm.hir.sync_block_wait[<VECTOR>, <PIPE_FIX>, <PIPE_S>] flag = 0
  %20 = hivm.hir.pointer_cast(%c0_i64) : memref<16x32xf32, #hivm.address_space<ub>>
  %collapse_shape = memref.collapse_shape %view [[0, 1]] : memref<16x32xf32, #hivm.address_space<gm>> into memref<512xf32, #hivm.address_space<gm>>
  %collapse_shape_0 = memref.collapse_shape %20 [[0, 1]] : memref<16x32xf32, #hivm.address_space<ub>> into memref<512xf32, #hivm.address_space<ub>>
  hivm.hir.load ins(%collapse_shape : memref<512xf32, #hivm.address_space<gm>>) outs(%collapse_shape_0 : memref<512xf32, #hivm.address_space<ub>>) init_out_buffer = false may_implicit_transpose_with_last_axis = false
  %21 = affine.apply affine_map<()[s0] -> (s0 * 4096 + 2048)>()[%18]
  %view_1 = memref.view %arg2[%21][] : memref<?xi8, #hivm.address_space<gm>> to memref<16x32xf32, #hivm.address_space<gm>>
  hivm.hir.sync_block_wait[<VECTOR>, <PIPE_FIX>, <PIPE_S>] flag = 0
  %22 = hivm.hir.pointer_cast(%c2048_i64) : memref<16x32xf32, #hivm.address_space<ub>>
  %collapse_shape_2 = memref.collapse_shape %view_1 [[0, 1]] : memref<16x32xf32, #hivm.address_space<gm>> into memref<512xf32, #hivm.address_space<gm>>
  %collapse_shape_3 = memref.collapse_shape %22 [[0, 1]] : memref<16x32xf32, #hivm.address_space<ub>> into memref<512xf32, #hivm.address_space<ub>>
  hivm.hir.load ins(%collapse_shape_2 : memref<512xf32, #hivm.address_space<gm>>) outs(%collapse_shape_3 : memref<512xf32, #hivm.address_space<ub>>) init_out_buffer = false may_implicit_transpose_with_last_axis = false
  %23 = arith.index_cast %arg11 : i32 to index
  %24 = arith.index_cast %14 : i32 to index
  %25 = arith.index_cast %arg12 : i32 to index
  %26 = affine.apply affine_map<()[s0, s1] -> (s0 * s1)>()[%23, %25]
  %27 = arith.index_cast %15 : i32 to index
  %28 = affine.apply affine_map<()[s0, s1, s2] -> (s0 + s1 * s2)>()[%27, %24, %25]
  %reinterpret_cast = memref.reinterpret_cast %arg6 to offset: [%28], sizes: [16, 32], strides: [%26, 1] : memref<?xf32, #hivm.address_space<gm>> to memref<16x32xf32, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
  %29 = hivm.hir.pointer_cast(%c4096_i64) : memref<16x32xf32, #hivm.address_space<ub>>
  %30 = arith.index_cast %arg9 : i32 to index
  %31 = affine.max affine_map<()[s0] -> (0, s0)>()[%30]
  %32 = affine.max affine_map<()[s0, s1] -> (s1, s0)>()[%27, %25]
  %33 = affine.min affine_map<()[s0, s1] -> (s1 + 32, s0)>()[%32, %27]
  %34 = affine.min affine_map<()[s0] -> (16, s0)>()[%31]
  %35 = affine.max affine_map<()[s0] -> (0, s0)>()[%34]
  %36 = affine.min affine_map<()[s0, s1] -> (32, s0 - s1)>()[%33, %27]
  %37 = affine.max affine_map<()[s0] -> (0, s0)>()[%36]
  %38 = arith.cmpi slt, %35, %c16 : index
  %39 = arith.cmpi slt, %37, %c32 : index
  %40 = arith.ori %38, %39 : i1
  %subview = memref.subview %reinterpret_cast[0, 0] [%35, %37] [1, 1] : memref<16x32xf32, strided<[?, 1], offset: ?>, #hivm.address_space<gm>> to memref<?x?xf32, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
  %subview_4 = memref.subview %29[0, 0] [%35, %37] [1, 1] : memref<16x32xf32, #hivm.address_space<ub>> to memref<?x?xf32, strided<[32, 1]>, #hivm.address_space<ub>>
  scf.if %40 {
    %collapse_shape_22 = memref.collapse_shape %29 [[0, 1]] : memref<16x32xf32, #hivm.address_space<ub>> into memref<512xf32, #hivm.address_space<ub>>
    hivm.hir.vbrc ins(%cst : f32) outs(%collapse_shape_22 : memref<512xf32, #hivm.address_space<ub>>)
  }
  hivm.hir.set_flag[<PIPE_V>, <PIPE_MTE2>, <EVENT_ID0>]
  hivm.hir.wait_flag[<PIPE_V>, <PIPE_MTE2>, <EVENT_ID0>]
  hivm.hir.load ins(%subview : memref<?x?xf32, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>) outs(%subview_4 : memref<?x?xf32, strided<[32, 1]>, #hivm.address_space<ub>>) pad_mode = <PadValue> pad_value = %cst : f32 left_padding_num = %c0 : index init_out_buffer = false may_implicit_transpose_with_last_axis = false
  hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_V>, <EVENT_ID0>]
  %reinterpret_cast_5 = memref.reinterpret_cast %arg7 to offset: [%28], sizes: [16, 32], strides: [%26, 1] : memref<?xf32, #hivm.address_space<gm>> to memref<16x32xf32, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
  %41 = hivm.hir.pointer_cast(%c6144_i64) : memref<16x32xf32, #hivm.address_space<ub>>
  %subview_6 = memref.subview %reinterpret_cast_5[0, 0] [%35, %37] [1, 1] : memref<16x32xf32, strided<[?, 1], offset: ?>, #hivm.address_space<gm>> to memref<?x?xf32, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
  %subview_7 = memref.subview %41[0, 0] [%35, %37] [1, 1] : memref<16x32xf32, #hivm.address_space<ub>> to memref<?x?xf32, strided<[32, 1]>, #hivm.address_space<ub>>
  scf.if %40 {
    %collapse_shape_22 = memref.collapse_shape %41 [[0, 1]] : memref<16x32xf32, #hivm.address_space<ub>> into memref<512xf32, #hivm.address_space<ub>>
    hivm.hir.vbrc ins(%cst : f32) outs(%collapse_shape_22 : memref<512xf32, #hivm.address_space<ub>>)
  }
  hivm.hir.set_flag[<PIPE_V>, <PIPE_MTE2>, <EVENT_ID1>]
  hivm.hir.wait_flag[<PIPE_V>, <PIPE_MTE2>, <EVENT_ID1>]
  hivm.hir.load ins(%subview_6 : memref<?x?xf32, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>) outs(%subview_7 : memref<?x?xf32, strided<[32, 1]>, #hivm.address_space<ub>>) pad_mode = <PadValue> pad_value = %cst : f32 left_padding_num = %c0 : index init_out_buffer = false may_implicit_transpose_with_last_axis = false
  hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_V>, <EVENT_ID1>]
  %42 = hivm.hir.pointer_cast(%c8192_i64) : memref<16x32xf32, #hivm.address_space<ub>>
  %collapse_shape_8 = memref.collapse_shape %29 [[0, 1]] : memref<16x32xf32, #hivm.address_space<ub>> into memref<512xf32, #hivm.address_space<ub>>
  %collapse_shape_9 = memref.collapse_shape %42 [[0, 1]] : memref<16x32xf32, #hivm.address_space<ub>> into memref<512xf32, #hivm.address_space<ub>>
  hivm.hir.wait_flag[<PIPE_MTE2>, <PIPE_V>, <EVENT_ID0>]
  hivm.hir.vmul ins(%collapse_shape_0, %collapse_shape_8 : memref<512xf32, #hivm.address_space<ub>>, memref<512xf32, #hivm.address_space<ub>>) outs(%collapse_shape_9 : memref<512xf32, #hivm.address_space<ub>>)
  %43 = hivm.hir.pointer_cast(%c10240_i64) : memref<16x32xf32, #hivm.address_space<ub>>
  %collapse_shape_10 = memref.collapse_shape %41 [[0, 1]] : memref<16x32xf32, #hivm.address_space<ub>> into memref<512xf32, #hivm.address_space<ub>>
  %collapse_shape_11 = memref.collapse_shape %43 [[0, 1]] : memref<16x32xf32, #hivm.address_space<ub>> into memref<512xf32, #hivm.address_space<ub>>
  hivm.hir.wait_flag[<PIPE_MTE2>, <PIPE_V>, <EVENT_ID1>]
  hivm.hir.vmul ins(%collapse_shape_3, %collapse_shape_10 : memref<512xf32, #hivm.address_space<ub>>, memref<512xf32, #hivm.address_space<ub>>) outs(%collapse_shape_11 : memref<512xf32, #hivm.address_space<ub>>)
  %44 = hivm.hir.pointer_cast(%c8192_i64) : memref<16x32xf32, #hivm.address_space<ub>>
  %collapse_shape_12 = memref.collapse_shape %44 [[0, 1]] : memref<16x32xf32, #hivm.address_space<ub>> into memref<512xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%collapse_shape_9, %collapse_shape_11 : memref<512xf32, #hivm.address_space<ub>>, memref<512xf32, #hivm.address_space<ub>>) outs(%collapse_shape_12 : memref<512xf32, #hivm.address_space<ub>>)
  hivm.hir.set_flag[<PIPE_V>, <PIPE_MTE3>, <EVENT_ID0>]
  %45 = hivm.hir.pointer_cast(%c0_i64) : memref<16x32xf32, #hivm.address_space<ub>>
  %collapse_shape_13 = memref.collapse_shape %45 [[0, 1]] : memref<16x32xf32, #hivm.address_space<ub>> into memref<512xf32, #hivm.address_space<ub>>
  hivm.hir.vmul ins(%collapse_shape_0, %collapse_shape_10 : memref<512xf32, #hivm.address_space<ub>>, memref<512xf32, #hivm.address_space<ub>>) outs(%collapse_shape_13 : memref<512xf32, #hivm.address_space<ub>>)
  %46 = hivm.hir.pointer_cast(%c2048_i64) : memref<16x32xf32, #hivm.address_space<ub>>
  %collapse_shape_14 = memref.collapse_shape %46 [[0, 1]] : memref<16x32xf32, #hivm.address_space<ub>> into memref<512xf32, #hivm.address_space<ub>>
  hivm.hir.vmul ins(%collapse_shape_3, %collapse_shape_8 : memref<512xf32, #hivm.address_space<ub>>, memref<512xf32, #hivm.address_space<ub>>) outs(%collapse_shape_14 : memref<512xf32, #hivm.address_space<ub>>)
  %47 = hivm.hir.pointer_cast(%c0_i64) : memref<16x32xf32, #hivm.address_space<ub>>
  %collapse_shape_15 = memref.collapse_shape %47 [[0, 1]] : memref<16x32xf32, #hivm.address_space<ub>> into memref<512xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vadd ins(%collapse_shape_13, %collapse_shape_14 : memref<512xf32, #hivm.address_space<ub>>, memref<512xf32, #hivm.address_space<ub>>) outs(%collapse_shape_15 : memref<512xf32, #hivm.address_space<ub>>)
  hivm.hir.set_flag[<PIPE_V>, <PIPE_MTE3>, <EVENT_ID1>]
  %48 = arith.index_cast %17 : i32 to index
  %49 = affine.apply affine_map<()[s0, s1, s2] -> (s0 + s1 * s2)>()[%27, %48, %25]
  %reinterpret_cast_16 = memref.reinterpret_cast %arg8 to offset: [%49], sizes: [16, 32], strides: [%25, 1] : memref<?xf32, #hivm.address_space<gm>> to memref<16x32xf32, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
  %subview_17 = memref.subview %44[0, 0] [%35, %37] [1, 1] : memref<16x32xf32, #hivm.address_space<ub>> to memref<?x?xf32, strided<[32, 1]>, #hivm.address_space<ub>>
  %subview_18 = memref.subview %reinterpret_cast_16[0, 0] [%35, %37] [1, 1] : memref<16x32xf32, strided<[?, 1], offset: ?>, #hivm.address_space<gm>> to memref<?x?xf32, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
  %50 = hivm.hir.get_sub_block_idx -> i64
  %51 = arith.index_cast %50 : i64 to index
  %52 = arith.cmpi eq, %51, %c0 : index
  hivm.hir.wait_flag[<PIPE_V>, <PIPE_MTE3>, <EVENT_ID0>]
  scf.if %52 {
    hivm.hir.store ins(%subview_17 : memref<?x?xf32, strided<[32, 1]>, #hivm.address_space<ub>>) outs(%subview_18 : memref<?x?xf32, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>)
  } {limit_sub_block_id0}
  %53 = arith.muli %arg13, %arg12 : i32
  %54 = arith.index_cast %53 : i32 to index
  %55 = affine.apply affine_map<()[s0, s1, s2, s3] -> (s0 + s1 + s2 * s3)>()[%27, %54, %48, %25]
  %reinterpret_cast_19 = memref.reinterpret_cast %arg8 to offset: [%55], sizes: [16, 32], strides: [%25, 1] : memref<?xf32, #hivm.address_space<gm>> to memref<16x32xf32, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
  %subview_20 = memref.subview %47[0, 0] [%35, %37] [1, 1] : memref<16x32xf32, #hivm.address_space<ub>> to memref<?x?xf32, strided<[32, 1]>, #hivm.address_space<ub>>
  %subview_21 = memref.subview %reinterpret_cast_19[0, 0] [%35, %37] [1, 1] : memref<16x32xf32, strided<[?, 1], offset: ?>, #hivm.address_space<gm>> to memref<?x?xf32, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
  hivm.hir.wait_flag[<PIPE_V>, <PIPE_MTE3>, <EVENT_ID1>]
  scf.if %52 {
    hivm.hir.pipe_barrier[<PIPE_MTE3>]
    hivm.hir.store ins(%subview_20 : memref<?x?xf32, strided<[32, 1]>, #hivm.address_space<ub>>) outs(%subview_21 : memref<?x?xf32, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>)
  } {limit_sub_block_id0}
  hivm.hir.pipe_barrier[<PIPE_ALL>]
  return
}

ld.lld: warning: -z separate-code and -z separate-loadable-segments will be ignored
warning: overriding the module target triple with x86_64-unknown-linux-gnu [-Woverride-module]
1 warning generated.
warning: overriding the module target triple with x86_64-unknown-linux-gnu [-Woverride-module]
1 warning generated.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":189:0): warning: Overwriting the target by the pass option...
