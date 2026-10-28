// -----// IR Dump After InjectSync (hivm-inject-sync) //----- //
func.func @_dsa_attn_kernel_mix_aic(%arg0: i64 {hacc.arg_type = #hacc.arg_type<ffts_base_address>}, %arg1: memref<?xi8, #hivm.address_space<gm>> {hacc.arg_type = #hacc.arg_type<sync_block_lock>}, %arg2: memref<?xi8, #hivm.address_space<gm>> {hacc.arg_type = #hacc.arg_type<workspace>}, %arg3: memref<?xbf16, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg4: memref<?xbf16, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg5: memref<?xi32, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg6: memref<?xbf16, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 1 : i32}, %arg7: i32, %arg8: i32, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: f32, %arg13: i32, %arg14: i32, %arg15: i32) attributes {SyncBlockLockArgIdx = 0 : i64, WorkspaceArgIdx = 1 : i64, func_dyn_memref_args = dense<[false, true, true, true, true, true, true, false, false, false, false, false, false, false, false, false]> : vector<16xi1>, hacc.entry, hacc.function_kind = #hacc.function_kind<DEVICE>, hivm.func_core_type = #hivm.func_core_type<AIC>, hivm.part_of_mix, hivm.storage_aligned, mix_mode = "mix", parallel_mode = "simd"} {
  %c2_i64 = arith.constant 2 : i64
  %c3_i64 = arith.constant 3 : i64
  %c1_i64 = arith.constant 1 : i64
  %c0_i64 = arith.constant 0 : i64
  %c1_i64_0 = arith.constant 1 : i64
  %c0_i64_1 = arith.constant 0 : i64
  %c1_i64_2 = arith.constant 1 : i64
  %c-1_i64 = arith.constant -1 : i64
  %c1_i64_3 = arith.constant 1 : i64
  %c-1_i64_4 = arith.constant -1 : i64
  %c40960_i64 = arith.constant 40960 : i64
  %c32768_i64 = arith.constant 32768 : i64
  %c16384_i64 = arith.constant 16384 : i64
  %c0_i64_5 = arith.constant 0 : i64
  %c0_i32 = arith.constant 0 : i32
  %c64 = arith.constant 64 : index
  %c128 = arith.constant 128 : index
  %c128_i32 = arith.constant 128 : i32
  %true = arith.constant true
  hivm.hir.set_ffts_base_addr %arg0
  hivm.hir.set_mask_norm
  %0 = arith.muli %arg13, %arg14 : i32
  %1 = arith.muli %0, %arg15 : i32
  annotation.mark %1 {logical_block_num} : i32
  %2 = hivm.hir.get_block_idx -> i64
  %3 = arith.trunci %2 : i64 to i32
  %4 = arith.muli %arg15, %arg14 : i32
  %5 = arith.divsi %3, %4 : i32
  %6 = arith.remsi %5, %arg13 : i32
  %7 = arith.divsi %6, %arg7 : i32
  %8 = arith.remsi %6, %arg7 : i32
  %9 = arith.muli %7, %arg7 : i32
  %10 = arith.addi %9, %8 : i32
  hivm.hir.sync_block_set[<CUBE>, <PIPE_MTE2>, <PIPE_S>] flag = 0
  hivm.hir.sync_block_set[<CUBE>, <PIPE_MTE2>, <PIPE_S>] flag = 2
  hivm.hir.sync_block_set[<CUBE>, <PIPE_MTE2>, <PIPE_S>] flag = 3
  %11 = arith.muli %10, %arg8 : i32
  %12 = arith.index_cast %2 : i64 to index
  %13 = affine.apply affine_map<()[s0] -> (s0 * 73728)>()[%12]
  %view = memref.view %arg2[%13][] : memref<?xi8, #hivm.address_space<gm>> to memref<64x128xbf16, #hivm.address_space<gm>>
  %14 = affine.apply affine_map<()[s0] -> (s0 * 73728 + 16384)>()[%12]
  %view_6 = memref.view %arg2[%14][] : memref<?xi8, #hivm.address_space<gm>> to memref<64x128xbf16, #hivm.address_space<gm>>
  %15 = hivm.hir.pointer_cast(%c0_i64_5) : memref<4x4x16x16xf32, #hivm.address_space<cc>>
  %cast = memref.cast %15 : memref<4x4x16x16xf32, #hivm.address_space<cc>> to memref<?x?x?x?xf32, #hivm.address_space<cc>>
  hivm.hir.set_flag[<PIPE_M>, <PIPE_MTE1>, <EVENT_ID0>]
  hivm.hir.set_flag[<PIPE_M>, <PIPE_MTE1>, <EVENT_ID1>]
  hivm.hir.set_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID0>]
  hivm.hir.set_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID1>]
  hivm.hir.set_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID2>]
  hivm.hir.set_flag[<PIPE_FIX>, <PIPE_M>, <EVENT_ID0>]
  scf.for %arg16 = %c0_i32 to %arg9 step %c128_i32  : i32 {
    %27 = arith.index_cast %arg16 : i32 to index
    %28 = arith.index_cast %c0_i32 : i32 to index
    %29 = arith.index_cast %arg9 : i32 to index
    %30 = arith.index_cast %c128_i32 : i32 to index
    %31 = affine.apply affine_map<()[s0, s1, s2] -> ((s0 - s1) floordiv s2)>()[%27, %28, %30]
    %32 = arith.index_cast %31 : index to i64
    %c0_i64_11 = arith.constant 0 : i64
    hivm.hir.sync_block_wait[<CUBE>, <PIPE_MTE3>, <PIPE_S>] flag = 1
    %33 = hivm.hir.pointer_cast(%c0_i64_5) : memref<8x4x16x16xbf16, #hivm.address_space<cbuf>>
    %cast_12 = memref.cast %33 : memref<8x4x16x16xbf16, #hivm.address_space<cbuf>> to memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>
    hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID0>]
    hivm.hir.nd2nz {dst_continuous} ins(%view : memref<64x128xbf16, #hivm.address_space<gm>>) outs(%cast_12 : memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>) init_out_buffer = false
    hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_MTE1>, <EVENT_ID1>]
    hivm.hir.sync_block_set[<CUBE>, <PIPE_MTE2>, <PIPE_S>] flag = 0
    hivm.hir.sync_block_wait[<CUBE>, <PIPE_MTE3>, <PIPE_S>] flag = 1
    %34 = hivm.hir.pointer_cast(%c16384_i64) : memref<8x4x16x16xbf16, #hivm.address_space<cbuf>>
    %cast_13 = memref.cast %34 : memref<8x4x16x16xbf16, #hivm.address_space<cbuf>> to memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>
    hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID1>]
    hivm.hir.nd2nz {dst_continuous} ins(%view_6 : memref<64x128xbf16, #hivm.address_space<gm>>) outs(%cast_13 : memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>) init_out_buffer = false
    hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_MTE1>, <EVENT_ID0>]
    hivm.hir.sync_block_set[<CUBE>, <PIPE_MTE2>, <PIPE_S>] flag = 2
    %35 = arith.cmpi eq, %arg16, %c0_i32 : i32
    hivm.hir.mmadL1 {b_transpose, fixpipe_already_inserted = true} ins(%cast_12, %cast_13, %35, %c64, %c128, %c64 : memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>, memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>, i1, index, index, index) outs(%cast : memref<?x?x?x?xf32, #hivm.address_space<cc>>) sync_related_args(%c1_i64_0, %c0_i64_1, %c0_i64, %c1_i64, %32, %c0_i64_11, %c1_i64_3 : i64, i64, i64, i64, i64, i64, i64)
  }
  hivm.hir.set_flag[<PIPE_M>, <PIPE_FIX>, <EVENT_ID0>]
  %16 = affine.apply affine_map<()[s0] -> (s0 * 73728 + 32768)>()[%12]
  %view_7 = memref.view %arg2[%16][] : memref<?xi8, #hivm.address_space<gm>> to memref<64x64xf32, #hivm.address_space<gm>>
  hivm.hir.wait_flag[<PIPE_M>, <PIPE_FIX>, <EVENT_ID0>]
  hivm.hir.fixpipe {enable_nz2nd} ins(%cast : memref<?x?x?x?xf32, #hivm.address_space<cc>>) outs(%view_7 : memref<64x64xf32, #hivm.address_space<gm>>)
  annotation.mark %view_7 : memref<64x64xf32, #hivm.address_space<gm>>
  hivm.hir.sync_block_set[<CUBE>, <PIPE_FIX>, <PIPE_S>] flag = 1
  %17 = affine.apply affine_map<()[s0] -> (s0 * 73728 + 49152)>()[%12]
  %view_8 = memref.view %arg2[%17][] : memref<?xi8, #hivm.address_space<gm>> to memref<64x64xbf16, #hivm.address_space<gm>>
  hivm.hir.sync_block_wait[<CUBE>, <PIPE_MTE3>, <PIPE_S>] flag = 1
  %18 = hivm.hir.pointer_cast(%c32768_i64) : memref<4x4x16x16xbf16, #hivm.address_space<cbuf>>
  %cast_9 = memref.cast %18 : memref<4x4x16x16xbf16, #hivm.address_space<cbuf>> to memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>
  hivm.hir.nd2nz {dst_continuous} ins(%view_8 : memref<64x64xbf16, #hivm.address_space<gm>>) outs(%cast_9 : memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>) init_out_buffer = false
  hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_MTE1>, <EVENT_ID2>]
  %19 = arith.muli %11, %arg10 : i32
  %20 = arith.index_cast %arg10 : i32 to index
  %21 = affine.apply affine_map<()[s0] -> (s0 * 73728 + 57344)>()[%12]
  %view_10 = memref.view %arg2[%21][] : memref<?xi8, #hivm.address_space<gm>> to memref<64x128xbf16, #hivm.address_space<gm>>
  %22 = arith.index_cast %19 : i32 to index
  %23 = arith.index_cast %arg8 : i32 to index
  %24 = affine.max affine_map<()[s0] -> (0, s0)>()[%23]
  %25 = affine.min affine_map<()[s0] -> (64, s0)>()[%24]
  %26 = affine.max affine_map<()[s0] -> (0, s0)>()[%25]
  hivm.hir.wait_flag[<PIPE_MTE2>, <PIPE_MTE1>, <EVENT_ID2>]
  scf.for %arg16 = %c0_i32 to %arg10 step %c128_i32  : i32 {
    %27 = arith.index_cast %arg16 : i32 to index
    %28 = arith.index_cast %c0_i32 : i32 to index
    %29 = arith.index_cast %arg10 : i32 to index
    %30 = arith.index_cast %c128_i32 : i32 to index
    %31 = affine.apply affine_map<()[s0, s1, s2] -> ((s0 - s1) floordiv s2)>()[%27, %28, %30]
    %32 = arith.index_cast %31 : index to i64
    %c0_i64_11 = arith.constant 0 : i64
    %33 = arith.index_cast %arg16 : i32 to index
    %34 = affine.max affine_map<()[s0, s1] -> (s1, s0)>()[%33, %20]
    %35 = affine.min affine_map<()[s0, s1] -> (s1 + 128, s0)>()[%34, %33]
    %36 = affine.min affine_map<()[s0, s1] -> (128, s0 - s1)>()[%35, %33]
    %37 = affine.max affine_map<()[s0] -> (0, s0)>()[%36]
    hivm.hir.sync_block_wait[<CUBE>, <PIPE_MTE3>, <PIPE_S>] flag = 1
    %38 = hivm.hir.pointer_cast(%c40960_i64) : memref<8x4x16x16xbf16, #hivm.address_space<cbuf>>
    %cast_12 = memref.cast %38 : memref<8x4x16x16xbf16, #hivm.address_space<cbuf>> to memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>
    hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID2>]
    hivm.hir.nd2nz {dst_continuous} ins(%view_10 : memref<64x128xbf16, #hivm.address_space<gm>>) outs(%cast_12 : memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>) init_out_buffer = false
    hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_MTE1>, <EVENT_ID3>]
    hivm.hir.sync_block_set[<CUBE>, <PIPE_MTE2>, <PIPE_S>] flag = 3
    %39 = hivm.hir.pointer_cast(%c16384_i64) : memref<8x4x16x16xf32, #hivm.address_space<cc>>
    %cast_13 = memref.cast %39 : memref<8x4x16x16xf32, #hivm.address_space<cc>> to memref<?x?x?x?xf32, #hivm.address_space<cc>>
    hivm.hir.wait_flag[<PIPE_FIX>, <PIPE_M>, <EVENT_ID0>]
    hivm.hir.mmadL1 {fixpipe_already_inserted = true} ins(%cast_9, %cast_12, %true, %c64, %c64, %c128 : memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>, memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>, i1, index, index, index) outs(%cast_13 : memref<?x?x?x?xf32, #hivm.address_space<cc>>) sync_related_args(%c-1_i64, %c3_i64, %c-1_i64, %c2_i64, %32, %c0_i64_11, %c1_i64_2 : i64, i64, i64, i64, i64, i64, i64)
    hivm.hir.set_flag[<PIPE_M>, <PIPE_FIX>, <EVENT_ID1>]
    %40 = affine.apply affine_map<()[s0, s1] -> (s0 + s1)>()[%22, %33]
    %reinterpret_cast = memref.reinterpret_cast %arg6 to offset: [%40], sizes: [64, 128], strides: [%20, 1] : memref<?xbf16, #hivm.address_space<gm>> to memref<64x128xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
    %41 = affine.apply affine_map<()[s0] -> ((s0 + 15) floordiv 16)>()[%26]
    %42 = affine.apply affine_map<()[s0] -> ((s0 + 15) floordiv 16)>()[%37]
    %subview = memref.subview %39[0, 0, 0, 0] [%42, %41, 16, 16] [1, 1, 1, 1] : memref<8x4x16x16xf32, #hivm.address_space<cc>> to memref<?x?x16x16xf32, strided<[1024, 256, 16, 1]>, #hivm.address_space<cc>>
    %cast_14 = memref.cast %subview : memref<?x?x16x16xf32, strided<[1024, 256, 16, 1]>, #hivm.address_space<cc>> to memref<?x?x?x?xf32, strided<[?, ?, ?, 1], offset: ?>, #hivm.address_space<cc>>
    %subview_15 = memref.subview %reinterpret_cast[0, 0] [%26, %37] [1, 1] : memref<64x128xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>> to memref<?x?xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
    hivm.hir.wait_flag[<PIPE_M>, <PIPE_FIX>, <EVENT_ID1>]
    hivm.hir.fixpipe {enable_nz2nd, pre_quant = #hivm.fixpipe_pre_quant_mode<F322BF16>} ins(%cast_14 : memref<?x?x?x?xf32, strided<[?, ?, ?, 1], offset: ?>, #hivm.address_space<cc>>) outs(%subview_15 : memref<?x?xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>)
    hivm.hir.set_flag[<PIPE_FIX>, <PIPE_M>, <EVENT_ID0>]
  }
  hivm.hir.wait_flag[<PIPE_M>, <PIPE_MTE1>, <EVENT_ID0>]
  hivm.hir.wait_flag[<PIPE_M>, <PIPE_MTE1>, <EVENT_ID1>]
  hivm.hir.pipe_barrier[<PIPE_ALL>]
  hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID0>]
  hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID1>]
  hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID2>]
  hivm.hir.wait_flag[<PIPE_FIX>, <PIPE_M>, <EVENT_ID0>]
  return
}

// -----// IR Dump After InjectSync (hivm-inject-sync) //----- //
func.func @_dsa_attn_kernel_mix_aiv(%arg0: i64 {hacc.arg_type = #hacc.arg_type<ffts_base_address>}, %arg1: memref<?xi8, #hivm.address_space<gm>> {hacc.arg_type = #hacc.arg_type<sync_block_lock>}, %arg2: memref<?xi8, #hivm.address_space<gm>> {hacc.arg_type = #hacc.arg_type<workspace>}, %arg3: memref<?xbf16, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg4: memref<?xbf16, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg5: memref<?xi32, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg6: memref<?xbf16, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 1 : i32}, %arg7: i32, %arg8: i32, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: f32, %arg13: i32, %arg14: i32, %arg15: i32) attributes {SyncBlockLockArgIdx = 0 : i64, WorkspaceArgIdx = 1 : i64, func_dyn_memref_args = dense<[false, true, true, true, true, true, true, false, false, false, false, false, false, false, false, false]> : vector<16xi1>, hacc.entry, hacc.function_kind = #hacc.function_kind<DEVICE>, hivm.func_core_type = #hivm.func_core_type<AIV>, hivm.part_of_mix, hivm.storage_aligned, mix_mode = "mix", parallel_mode = "simd"} {
  %c119552_i64 = arith.constant 119552 : i64
  %c103168_i64 = arith.constant 103168 : i64
  %c101120_i64 = arith.constant 101120 : i64
  %c100864_i64 = arith.constant 100864 : i64
  %c98816_i64 = arith.constant 98816 : i64
  %c98560_i64 = arith.constant 98560 : i64
  %c82176_i64 = arith.constant 82176 : i64
  %c65792_i64 = arith.constant 65792 : i64
  %c49408_i64 = arith.constant 49408 : i64
  %c33024_i64 = arith.constant 33024 : i64
  %c16640_i64 = arith.constant 16640 : i64
  %c256_i64 = arith.constant 256 : i64
  %c0_i64 = arith.constant 0 : i64
  %c0_i32 = arith.constant 0 : i32
  %c0 = arith.constant 0 : index
  %c1 = arith.constant 1 : index
  %cst = arith.constant 0.000000e+00 : bf16
  %cst_0 = arith.constant -1.000000e+30 : f32
  %c128_i32 = arith.constant 128 : i32
  hivm.hir.set_ffts_base_addr %arg0
  hivm.hir.set_mask_norm
  %0 = arith.muli %arg13, %arg14 : i32
  %1 = arith.muli %0, %arg15 : i32
  annotation.mark %1 {logical_block_num} : i32
  %2 = hivm.hir.get_block_idx -> i64
  %3 = arith.trunci %2 : i64 to i32
  %4 = arith.muli %arg15, %arg14 : i32
  %5 = arith.divsi %3, %4 : i32
  %6 = arith.remsi %5, %arg13 : i32
  %7 = hivm.hir.pointer_cast(%c0_i64) : memref<64xi32, #hivm.address_space<ub>>
  hivm.hir.set_flag[<PIPE_MTE3>, <PIPE_V>, <EVENT_ID0>]
  hivm.hir.set_flag[<PIPE_MTE3>, <PIPE_V>, <EVENT_ID1>]
  hivm.hir.set_flag[<PIPE_V>, <PIPE_MTE2>, <EVENT_ID2>]
  hivm.hir.set_flag[<PIPE_MTE3>, <PIPE_V>, <EVENT_ID2>]
  hivm.hir.vbrc ins(%c0_i32 : i32) outs(%7 : memref<64xi32, #hivm.address_space<ub>>)
  hivm.hir.set_flag[<PIPE_V>, <PIPE_MTE2>, <EVENT_ID0>]
  %8 = hivm.hir.pointer_cast(%c256_i64) : memref<64x128xbf16, #hivm.address_space<ub>>
  %collapse_shape = memref.collapse_shape %8 [[0, 1]] : memref<64x128xbf16, #hivm.address_space<ub>> into memref<8192xbf16, #hivm.address_space<ub>>
  hivm.hir.vbrc ins(%cst : bf16) outs(%collapse_shape : memref<8192xbf16, #hivm.address_space<ub>>)
  %9 = hivm.hir.pointer_cast(%c16640_i64) : memref<64x64xf32, #hivm.address_space<ub>>
  %collapse_shape_1 = memref.collapse_shape %9 [[0, 1]] : memref<64x64xf32, #hivm.address_space<ub>> into memref<4096xf32, #hivm.address_space<ub>>
  hivm.hir.vbrc ins(%cst_0 : f32) outs(%collapse_shape_1 : memref<4096xf32, #hivm.address_space<ub>>)
  %10 = arith.divsi %6, %arg7 : i32
  %11 = arith.remsi %6, %arg7 : i32
  %12 = arith.muli %10, %arg7 : i32
  %13 = arith.addi %12, %11 : i32
  %14 = arith.muli %13, %arg11 : i32
  %15 = arith.index_cast %14 : i32 to index
  %reinterpret_cast = memref.reinterpret_cast %arg5 to offset: [%15], sizes: [64], strides: [1] : memref<?xi32, #hivm.address_space<gm>> to memref<64xi32, strided<[1], offset: ?>, #hivm.address_space<gm>>
  %16 = arith.index_cast %arg11 : i32 to index
  %17 = affine.max affine_map<()[s0] -> (0, s0)>()[%16]
  %18 = affine.min affine_map<()[s0] -> (64, s0)>()[%17]
  %subview = memref.subview %reinterpret_cast[0] [%18] [1] : memref<64xi32, strided<[1], offset: ?>, #hivm.address_space<gm>> to memref<?xi32, strided<[1], offset: ?>, #hivm.address_space<gm>>
  %subview_2 = memref.subview %7[0] [%18] [1] : memref<64xi32, #hivm.address_space<ub>> to memref<?xi32, strided<[1]>, #hivm.address_space<ub>>
  hivm.hir.wait_flag[<PIPE_V>, <PIPE_MTE2>, <EVENT_ID0>]
  hivm.hir.load ins(%subview : memref<?xi32, strided<[1], offset: ?>, #hivm.address_space<gm>>) outs(%subview_2 : memref<?xi32, strided<[1]>, #hivm.address_space<ub>>) left_padding_num = %c0 : index init_out_buffer = false may_implicit_transpose_with_last_axis = false
  hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_S>, <EVENT_ID0>]
  %19 = arith.muli %13, %arg8 : i32
  %20 = arith.muli %19, %arg9 : i32
  %21 = arith.index_cast %20 : i32 to index
  %22 = arith.index_cast %arg9 : i32 to index
  %23 = arith.index_cast %arg8 : i32 to index
  %24 = affine.max affine_map<()[s0] -> (0, s0)>()[%23]
  %25 = affine.min affine_map<()[s0] -> (64, s0)>()[%24]
  %26 = affine.max affine_map<()[s0] -> (0, s0)>()[%25]
  %27 = arith.index_cast %2 : i64 to index
  %28 = affine.apply affine_map<()[s0] -> (s0 * 73728)>()[%27]
  %view = memref.view %arg2[%28][] : memref<?xi8, #hivm.address_space<gm>> to memref<64x128xbf16, #hivm.address_space<gm>>
  %29 = hivm.hir.get_sub_block_idx -> i64
  %30 = arith.index_cast %29 : i64 to index
  %31 = arith.cmpi eq, %30, %c0 : index
  %32 = affine.max affine_map<()[s0] -> (0, s0)>()[%18]
  %33 = affine.min affine_map<()[s0] -> (64, s0)>()[%32]
  %34 = affine.apply affine_map<()[s0] -> (s0 * 73728 + 16384)>()[%27]
  %view_3 = memref.view %arg2[%34][] : memref<?xi8, #hivm.address_space<gm>> to memref<64x128xbf16, #hivm.address_space<gm>>
  hivm.hir.wait_flag[<PIPE_MTE2>, <PIPE_S>, <EVENT_ID0>]
  scf.for %arg16 = %c0_i32 to %arg9 step %c128_i32  : i32 {
    %49 = arith.index_cast %arg16 : i32 to index
    %50 = affine.apply affine_map<()[s0, s1] -> (s0 + s1)>()[%21, %49]
    %reinterpret_cast_16 = memref.reinterpret_cast %arg3 to offset: [%50], sizes: [64, 128], strides: [%22, 1] : memref<?xbf16, #hivm.address_space<gm>> to memref<64x128xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
    %51 = affine.max affine_map<()[s0, s1] -> (s1, s0)>()[%49, %22]
    %52 = affine.min affine_map<()[s0, s1] -> (s1 + 128, s0)>()[%51, %49]
    %53 = affine.min affine_map<()[s0, s1] -> (128, s0 - s1)>()[%52, %49]
    %54 = affine.max affine_map<()[s0] -> (0, s0)>()[%53]
    %subview_17 = memref.subview %reinterpret_cast_16[0, 0] [%26, %54] [1, 1] : memref<64x128xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>> to memref<?x?xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
    %55 = hivm.hir.pointer_cast(%c33024_i64) : memref<64x128xbf16, #hivm.address_space<ub>>
    %collapse_shape_18 = memref.collapse_shape %55 [[0, 1]] : memref<64x128xbf16, #hivm.address_space<ub>> into memref<8192xbf16, #hivm.address_space<ub>>
    hivm.hir.pipe_barrier[<PIPE_V>]
    hivm.hir.wait_flag[<PIPE_MTE3>, <PIPE_V>, <EVENT_ID0>]
    hivm.hir.copy ins(%collapse_shape : memref<8192xbf16, #hivm.address_space<ub>>) outs(%collapse_shape_18 : memref<8192xbf16, #hivm.address_space<ub>>)
    hivm.hir.set_flag[<PIPE_V>, <PIPE_MTE2>, <EVENT_ID1>]
    %subview_19 = memref.subview %55[0, 0] [%26, %54] [1, 1] : memref<64x128xbf16, #hivm.address_space<ub>> to memref<?x?xbf16, strided<[128, 1]>, #hivm.address_space<ub>>
    hivm.hir.wait_flag[<PIPE_V>, <PIPE_MTE2>, <EVENT_ID1>]
    hivm.hir.load ins(%subview_17 : memref<?x?xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>) outs(%subview_19 : memref<?x?xbf16, strided<[128, 1]>, #hivm.address_space<ub>>) left_padding_num = %c0 : index init_out_buffer = false may_implicit_transpose_with_last_axis = false
    hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_MTE3>, <EVENT_ID0>]
    hivm.hir.sync_block_wait[<VECTOR>, <PIPE_MTE2>, <PIPE_S>] flag = 0
    hivm.hir.wait_flag[<PIPE_MTE2>, <PIPE_MTE3>, <EVENT_ID0>]
    scf.if %31 {
      %collapse_shape_23 = memref.collapse_shape %view [[0, 1]] : memref<64x128xbf16, #hivm.address_space<gm>> into memref<8192xbf16, #hivm.address_space<gm>>
      hivm.hir.store ins(%collapse_shape_18 : memref<8192xbf16, #hivm.address_space<ub>>) outs(%collapse_shape_23 : memref<8192xbf16, #hivm.address_space<gm>>)
    }
    hivm.hir.set_flag[<PIPE_MTE3>, <PIPE_V>, <EVENT_ID0>]
    annotation.mark %view : memref<64x128xbf16, #hivm.address_space<gm>>
    hivm.hir.sync_block_set[<VECTOR>, <PIPE_MTE3>, <PIPE_S>] flag = 1
    %56 = hivm.hir.pointer_cast(%c49408_i64) : memref<64x128xbf16, #hivm.address_space<ub>>
    scf.for %arg17 = %c0 to %33 step %c1 {
      %58 = memref.load %7[%arg17] : memref<64xi32, #hivm.address_space<ub>>
      %59 = arith.muli %58, %arg9 : i32
      %60 = arith.index_cast %59 : i32 to index
      %61 = affine.apply affine_map<()[s0, s1] -> (s0 + s1)>()[%60, %49]
      %reinterpret_cast_23 = memref.reinterpret_cast %arg4 to offset: [%61], sizes: [1, 128], strides: [128, 1] : memref<?xbf16, #hivm.address_space<gm>> to memref<1x128xbf16, strided<[128, 1], offset: ?>, #hivm.address_space<gm>>
      %subview_24 = memref.subview %56[%arg17, 0] [1, 128] [1, 1] : memref<64x128xbf16, #hivm.address_space<ub>> to memref<1x128xbf16, strided<[128, 1], offset: ?>, #hivm.address_space<ub>>
      %collapse_shape_25 = memref.collapse_shape %reinterpret_cast_23 [[0, 1]] : memref<1x128xbf16, strided<[128, 1], offset: ?>, #hivm.address_space<gm>> into memref<128xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>
      %collapse_shape_26 = memref.collapse_shape %subview_24 [[0, 1]] : memref<1x128xbf16, strided<[128, 1], offset: ?>, #hivm.address_space<ub>> into memref<128xbf16, strided<[1], offset: ?>, #hivm.address_space<ub>>
      hivm.hir.load ins(%collapse_shape_25 : memref<128xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>) outs(%collapse_shape_26 : memref<128xbf16, strided<[1], offset: ?>, #hivm.address_space<ub>>) left_padding_num = %c0 : index init_out_buffer = false may_implicit_transpose_with_last_axis = false
    } {ExtractedLoadOrStore, hivm.parallel_loop}
    hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_V>, <EVENT_ID0>]
    %subview_20 = memref.subview %56[0, 0] [%32, %54] [1, 1] : memref<64x128xbf16, #hivm.address_space<ub>> to memref<?x?xbf16, strided<[128, 1]>, #hivm.address_space<ub>>
    %57 = hivm.hir.pointer_cast(%c65792_i64) : memref<64x128xbf16, #hivm.address_space<ub>>
    %collapse_shape_21 = memref.collapse_shape %57 [[0, 1]] : memref<64x128xbf16, #hivm.address_space<ub>> into memref<8192xbf16, #hivm.address_space<ub>>
    hivm.hir.wait_flag[<PIPE_MTE3>, <PIPE_V>, <EVENT_ID1>]
    hivm.hir.copy ins(%collapse_shape : memref<8192xbf16, #hivm.address_space<ub>>) outs(%collapse_shape_21 : memref<8192xbf16, #hivm.address_space<ub>>)
    %subview_22 = memref.subview %57[0, 0] [%32, %54] [1, 1] : memref<64x128xbf16, #hivm.address_space<ub>> to memref<?x?xbf16, strided<[128, 1]>, #hivm.address_space<ub>>
    hivm.hir.pipe_barrier[<PIPE_V>]
    hivm.hir.wait_flag[<PIPE_MTE2>, <PIPE_V>, <EVENT_ID0>]
    hivm.hir.copy ins(%subview_20 : memref<?x?xbf16, strided<[128, 1]>, #hivm.address_space<ub>>) outs(%subview_22 : memref<?x?xbf16, strided<[128, 1]>, #hivm.address_space<ub>>)
    hivm.hir.set_flag[<PIPE_V>, <PIPE_MTE3>, <EVENT_ID0>]
    hivm.hir.sync_block_wait[<VECTOR>, <PIPE_MTE2>, <PIPE_S>] flag = 2
    hivm.hir.wait_flag[<PIPE_V>, <PIPE_MTE3>, <EVENT_ID0>]
    scf.if %31 {
      %collapse_shape_23 = memref.collapse_shape %view_3 [[0, 1]] : memref<64x128xbf16, #hivm.address_space<gm>> into memref<8192xbf16, #hivm.address_space<gm>>
      hivm.hir.store ins(%collapse_shape_21 : memref<8192xbf16, #hivm.address_space<ub>>) outs(%collapse_shape_23 : memref<8192xbf16, #hivm.address_space<gm>>)
    }
    hivm.hir.set_flag[<PIPE_MTE3>, <PIPE_V>, <EVENT_ID1>]
    annotation.mark %view_3 : memref<64x128xbf16, #hivm.address_space<gm>>
    hivm.hir.sync_block_set[<VECTOR>, <PIPE_MTE3>, <PIPE_S>] flag = 1
  }
  %35 = affine.apply affine_map<()[s0] -> (s0 * 73728 + 32768)>()[%27]
  %view_4 = memref.view %arg2[%35][] : memref<?xi8, #hivm.address_space<gm>> to memref<64x64xf32, #hivm.address_space<gm>>
  hivm.hir.sync_block_wait[<VECTOR>, <PIPE_FIX>, <PIPE_S>] flag = 1
  %36 = hivm.hir.pointer_cast(%c82176_i64) : memref<64x64xf32, #hivm.address_space<ub>>
  %collapse_shape_5 = memref.collapse_shape %view_4 [[0, 1]] : memref<64x64xf32, #hivm.address_space<gm>> into memref<4096xf32, #hivm.address_space<gm>>
  %collapse_shape_6 = memref.collapse_shape %36 [[0, 1]] : memref<64x64xf32, #hivm.address_space<ub>> into memref<4096xf32, #hivm.address_space<ub>>
  hivm.hir.load ins(%collapse_shape_5 : memref<4096xf32, #hivm.address_space<gm>>) outs(%collapse_shape_6 : memref<4096xf32, #hivm.address_space<ub>>) init_out_buffer = false may_implicit_transpose_with_last_axis = false
  hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_V>, <EVENT_ID1>]
  %37 = hivm.hir.pointer_cast(%c82176_i64) : memref<64x64xf32, #hivm.address_space<ub>>
  %collapse_shape_7 = memref.collapse_shape %37 [[0, 1]] : memref<64x64xf32, #hivm.address_space<ub>> into memref<4096xf32, #hivm.address_space<ub>>
  hivm.hir.wait_flag[<PIPE_MTE2>, <PIPE_V>, <EVENT_ID1>]
  hivm.hir.vmul ins(%collapse_shape_6, %arg12 : memref<4096xf32, #hivm.address_space<ub>>, f32) outs(%collapse_shape_7 : memref<4096xf32, #hivm.address_space<ub>>)
  %subview_8 = memref.subview %37[0, 0] [64, %18] [1, 1] : memref<64x64xf32, #hivm.address_space<ub>> to memref<64x?xf32, strided<[64, 1]>, #hivm.address_space<ub>>
  %subview_9 = memref.subview %9[0, 0] [64, %18] [1, 1] : memref<64x64xf32, #hivm.address_space<ub>> to memref<64x?xf32, strided<[64, 1]>, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.copy ins(%subview_8 : memref<64x?xf32, strided<[64, 1]>, #hivm.address_space<ub>>) outs(%subview_9 : memref<64x?xf32, strided<[64, 1]>, #hivm.address_space<ub>>)
  %38 = hivm.hir.pointer_cast(%c98560_i64) : memref<64x1xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vreduce <max> ins(%9 : memref<64x64xf32, #hivm.address_space<ub>>) outs(%38 : memref<64x1xf32, #hivm.address_space<ub>>) reduce_dims = [1]
  %39 = hivm.hir.pointer_cast(%c16640_i64) : memref<64x64xf32, #hivm.address_space<ub>>
  %40 = hivm.hir.pointer_cast(%c98816_i64) : memref<512xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%9, %38 : memref<64x64xf32, #hivm.address_space<ub>>, memref<64x1xf32, #hivm.address_space<ub>>) outs(%39 : memref<64x64xf32, #hivm.address_space<ub>>) temp_buffer(%40 : memref<512xf32, #hivm.address_space<ub>>) broadcast = [1]
  %41 = hivm.hir.pointer_cast(%c16640_i64) : memref<64x64xf32, #hivm.address_space<ub>>
  %collapse_shape_10 = memref.collapse_shape %39 [[0, 1]] : memref<64x64xf32, #hivm.address_space<ub>> into memref<4096xf32, #hivm.address_space<ub>>
  %collapse_shape_11 = memref.collapse_shape %41 [[0, 1]] : memref<64x64xf32, #hivm.address_space<ub>> into memref<4096xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vexp ins(%collapse_shape_10 : memref<4096xf32, #hivm.address_space<ub>>) outs(%collapse_shape_11 : memref<4096xf32, #hivm.address_space<ub>>)
  %42 = hivm.hir.pointer_cast(%c100864_i64) : memref<64x1xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vreduce <sum> ins(%41 : memref<64x64xf32, #hivm.address_space<ub>>) outs(%42 : memref<64x1xf32, #hivm.address_space<ub>>) reduce_dims = [1]
  %43 = hivm.hir.pointer_cast(%c16640_i64) : memref<64x64xf32, #hivm.address_space<ub>>
  %44 = hivm.hir.pointer_cast(%c101120_i64) : memref<512xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vdiv ins(%41, %42 : memref<64x64xf32, #hivm.address_space<ub>>, memref<64x1xf32, #hivm.address_space<ub>>) outs(%43 : memref<64x64xf32, #hivm.address_space<ub>>) temp_buffer(%44 : memref<512xf32, #hivm.address_space<ub>>) broadcast = [1]
  %45 = hivm.hir.pointer_cast(%c16640_i64) : memref<64x64xbf16, #hivm.address_space<ub>>
  %collapse_shape_12 = memref.collapse_shape %43 [[0, 1]] : memref<64x64xf32, #hivm.address_space<ub>> into memref<4096xf32, #hivm.address_space<ub>>
  %collapse_shape_13 = memref.collapse_shape %45 [[0, 1]] : memref<64x64xbf16, #hivm.address_space<ub>> into memref<4096xbf16, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vcast ins(%collapse_shape_12 : memref<4096xf32, #hivm.address_space<ub>>) outs(%collapse_shape_13 : memref<4096xbf16, #hivm.address_space<ub>>)
  hivm.hir.set_flag[<PIPE_V>, <PIPE_MTE3>, <EVENT_ID1>]
  %46 = affine.apply affine_map<()[s0] -> (s0 * 73728 + 49152)>()[%27]
  %view_14 = memref.view %arg2[%46][] : memref<?xi8, #hivm.address_space<gm>> to memref<64x64xbf16, #hivm.address_space<gm>>
  hivm.hir.wait_flag[<PIPE_V>, <PIPE_MTE3>, <EVENT_ID1>]
  scf.if %31 {
    %collapse_shape_16 = memref.collapse_shape %view_14 [[0, 1]] : memref<64x64xbf16, #hivm.address_space<gm>> into memref<4096xbf16, #hivm.address_space<gm>>
    hivm.hir.store ins(%collapse_shape_13 : memref<4096xbf16, #hivm.address_space<ub>>) outs(%collapse_shape_16 : memref<4096xbf16, #hivm.address_space<gm>>)
  }
  annotation.mark %view_14 : memref<64x64xbf16, #hivm.address_space<gm>>
  hivm.hir.sync_block_set[<VECTOR>, <PIPE_MTE3>, <PIPE_S>] flag = 1
  %47 = arith.index_cast %arg10 : i32 to index
  %48 = affine.apply affine_map<()[s0] -> (s0 * 73728 + 57344)>()[%27]
  %view_15 = memref.view %arg2[%48][] : memref<?xi8, #hivm.address_space<gm>> to memref<64x128xbf16, #hivm.address_space<gm>>
  scf.for %arg16 = %c0_i32 to %arg10 step %c128_i32  : i32 {
    %49 = hivm.hir.pointer_cast(%c103168_i64) : memref<64x128xbf16, #hivm.address_space<ub>>
    %50 = arith.index_cast %arg16 : i32 to index
    hivm.hir.wait_flag[<PIPE_V>, <PIPE_MTE2>, <EVENT_ID2>]
    scf.for %arg17 = %c0 to %33 step %c1 {
      %56 = memref.load %7[%arg17] : memref<64xi32, #hivm.address_space<ub>>
      %57 = arith.muli %56, %arg9 : i32
      %58 = arith.index_cast %57 : i32 to index
      %59 = affine.apply affine_map<()[s0, s1] -> (s0 + s1)>()[%58, %50]
      %reinterpret_cast_19 = memref.reinterpret_cast %arg4 to offset: [%59], sizes: [1, 128], strides: [128, 1] : memref<?xbf16, #hivm.address_space<gm>> to memref<1x128xbf16, strided<[128, 1], offset: ?>, #hivm.address_space<gm>>
      %subview_20 = memref.subview %49[%arg17, 0] [1, 128] [1, 1] : memref<64x128xbf16, #hivm.address_space<ub>> to memref<1x128xbf16, strided<[128, 1], offset: ?>, #hivm.address_space<ub>>
      %collapse_shape_21 = memref.collapse_shape %reinterpret_cast_19 [[0, 1]] : memref<1x128xbf16, strided<[128, 1], offset: ?>, #hivm.address_space<gm>> into memref<128xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>
      %collapse_shape_22 = memref.collapse_shape %subview_20 [[0, 1]] : memref<1x128xbf16, strided<[128, 1], offset: ?>, #hivm.address_space<ub>> into memref<128xbf16, strided<[1], offset: ?>, #hivm.address_space<ub>>
      hivm.hir.load ins(%collapse_shape_21 : memref<128xbf16, strided<[1], offset: ?>, #hivm.address_space<gm>>) outs(%collapse_shape_22 : memref<128xbf16, strided<[1], offset: ?>, #hivm.address_space<ub>>) left_padding_num = %c0 : index init_out_buffer = false may_implicit_transpose_with_last_axis = false
    } {ExtractedLoadOrStore, hivm.parallel_loop}
    hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_V>, <EVENT_ID2>]
    %51 = affine.max affine_map<()[s0, s1] -> (s1, s0)>()[%50, %47]
    %52 = affine.min affine_map<()[s0, s1] -> (s1 + 128, s0)>()[%51, %50]
    %53 = affine.min affine_map<()[s0, s1] -> (128, s0 - s1)>()[%52, %50]
    %54 = affine.max affine_map<()[s0] -> (0, s0)>()[%53]
    %subview_16 = memref.subview %49[0, 0] [%32, %54] [1, 1] : memref<64x128xbf16, #hivm.address_space<ub>> to memref<?x?xbf16, strided<[128, 1]>, #hivm.address_space<ub>>
    %55 = hivm.hir.pointer_cast(%c119552_i64) : memref<64x128xbf16, #hivm.address_space<ub>>
    %collapse_shape_17 = memref.collapse_shape %55 [[0, 1]] : memref<64x128xbf16, #hivm.address_space<ub>> into memref<8192xbf16, #hivm.address_space<ub>>
    hivm.hir.wait_flag[<PIPE_MTE3>, <PIPE_V>, <EVENT_ID2>]
    hivm.hir.pipe_barrier[<PIPE_V>]
    hivm.hir.copy ins(%collapse_shape : memref<8192xbf16, #hivm.address_space<ub>>) outs(%collapse_shape_17 : memref<8192xbf16, #hivm.address_space<ub>>)
    %subview_18 = memref.subview %55[0, 0] [%32, %54] [1, 1] : memref<64x128xbf16, #hivm.address_space<ub>> to memref<?x?xbf16, strided<[128, 1]>, #hivm.address_space<ub>>
    hivm.hir.pipe_barrier[<PIPE_V>]
    hivm.hir.wait_flag[<PIPE_MTE2>, <PIPE_V>, <EVENT_ID2>]
    hivm.hir.copy ins(%subview_16 : memref<?x?xbf16, strided<[128, 1]>, #hivm.address_space<ub>>) outs(%subview_18 : memref<?x?xbf16, strided<[128, 1]>, #hivm.address_space<ub>>)
    hivm.hir.set_flag[<PIPE_V>, <PIPE_MTE2>, <EVENT_ID2>]
    hivm.hir.set_flag[<PIPE_V>, <PIPE_MTE3>, <EVENT_ID2>]
    hivm.hir.sync_block_wait[<VECTOR>, <PIPE_MTE2>, <PIPE_S>] flag = 3
    hivm.hir.wait_flag[<PIPE_V>, <PIPE_MTE3>, <EVENT_ID2>]
    scf.if %31 {
      %collapse_shape_19 = memref.collapse_shape %view_15 [[0, 1]] : memref<64x128xbf16, #hivm.address_space<gm>> into memref<8192xbf16, #hivm.address_space<gm>>
      hivm.hir.store ins(%collapse_shape_17 : memref<8192xbf16, #hivm.address_space<ub>>) outs(%collapse_shape_19 : memref<8192xbf16, #hivm.address_space<gm>>)
    }
    hivm.hir.set_flag[<PIPE_MTE3>, <PIPE_V>, <EVENT_ID2>]
    annotation.mark %view_15 : memref<64x128xbf16, #hivm.address_space<gm>>
    hivm.hir.sync_block_set[<VECTOR>, <PIPE_MTE3>, <PIPE_S>] flag = 1
  }
  hivm.hir.pipe_barrier[<PIPE_ALL>]
  hivm.hir.wait_flag[<PIPE_MTE3>, <PIPE_V>, <EVENT_ID0>]
  hivm.hir.wait_flag[<PIPE_MTE3>, <PIPE_V>, <EVENT_ID1>]
  hivm.hir.wait_flag[<PIPE_V>, <PIPE_MTE2>, <EVENT_ID2>]
  hivm.hir.wait_flag[<PIPE_MTE3>, <PIPE_V>, <EVENT_ID2>]
  hivm.hir.sync_block_wait[<VECTOR>, <PIPE_MTE2>, <PIPE_S>] flag = 0
  hivm.hir.sync_block_wait[<VECTOR>, <PIPE_MTE2>, <PIPE_S>] flag = 2
  hivm.hir.sync_block_wait[<VECTOR>, <PIPE_MTE2>, <PIPE_S>] flag = 3
  return
}

loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":76:26): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":76:26): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":58:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":58:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":76:26): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":76:26): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":58:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":58:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":76:26): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":76:26): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":58:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":58:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":76:26): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":76:26): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":58:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":58:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":76:26): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":76:26): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":58:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":58:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":76:26): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":76:26): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":58:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":58:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":76:26): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":76:26): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":58:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":58:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":76:26): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":76:26): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":58:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":58:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":76:26): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":76:26): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":58:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":58:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":76:26): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":76:26): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":58:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":58:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":75:30): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":66:32): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":57:30): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":54:30): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":75:30): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":66:32): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":57:30): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":54:30): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":75:30): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":66:32): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":57:30): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":54:30): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":75:30): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":66:32): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":57:30): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":54:30): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":75:30): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":66:32): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/leveld.lld: warning: -z separate-code and -z separate-loadable-segments will be ignored
warning: overriding the module target triple with x86_64-unknown-linux-gnu [-Woverride-module]
1 warning generated.
warning: overriding the module target triple with x86_64-unknown-linux-gnu [-Woverride-module]
1 warning generated.
l4/73_DenseSparseAttention/output/iter_0/generated_code.py":57:30): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":54:30): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":75:30): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":66:32): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":57:30): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":54:30): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":75:30): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":66:32): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":57:30): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":54:30): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":75:30): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":66:32): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":57:30): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":54:30): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":75:30): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":66:32): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":57:30): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":54:30): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":75:30): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":66:32): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":57:30): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":54:30): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/73_DenseSparseAttention/output/iter_0/generated_code.py":28:0): warning: Overwriting the target by the pass option...
