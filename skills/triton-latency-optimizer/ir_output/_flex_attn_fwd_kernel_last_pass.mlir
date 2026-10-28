// -----// IR Dump After InjectSync (hivm-inject-sync) //----- //
func.func @_flex_attn_fwd_kernel_mix_aic(%arg0: i64 {hacc.arg_type = #hacc.arg_type<ffts_base_address>}, %arg1: memref<?xi8, #hivm.address_space<gm>> {hacc.arg_type = #hacc.arg_type<sync_block_lock>}, %arg2: memref<?xi8, #hivm.address_space<gm>> {hacc.arg_type = #hacc.arg_type<workspace>}, %arg3: memref<?xbf16, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg4: memref<?xbf16, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg5: memref<?xbf16, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg6: memref<?xbf16, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 1 : i32}, %arg7: i32, %arg8: i32 {tt.divisibility = 16 : i32}, %arg9: i32 {tt.divisibility = 16 : i32}, %arg10: i32 {tt.divisibility = 16 : i32}, %arg11: i32 {tt.divisibility = 16 : i32}, %arg12: i32 {tt.divisibility = 16 : i32}, %arg13: i32 {tt.divisibility = 16 : i32}, %arg14: f32, %arg15: f32, %arg16: i32 {tt.divisibility = 16 : i32}, %arg17: i32 {tt.divisibility = 16 : i32}, %arg18: i32 {tt.divisibility = 16 : i32}, %arg19: i32 {tt.divisibility = 16 : i32}, %arg20: i32 {tt.divisibility = 16 : i32}, %arg21: i32 {tt.divisibility = 16 : i32}, %arg22: i32 {tt.divisibility = 16 : i32}, %arg23: i32 {tt.divisibility = 16 : i32}, %arg24: i32 {tt.divisibility = 16 : i32}, %arg25: i32 {tt.divisibility = 16 : i32}, %arg26: i32 {tt.divisibility = 16 : i32}, %arg27: i32 {tt.divisibility = 16 : i32}, %arg28: i32, %arg29: i32, %arg30: i32) attributes {SyncBlockLockArgIdx = 0 : i64, WorkspaceArgIdx = 1 : i64, func_dyn_memref_args = dense<[false, true, true, true, true, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false]> : vector<31xi1>, hacc.entry, hacc.function_kind = #hacc.function_kind<DEVICE>, hivm.func_core_type = #hivm.func_core_type<AIC>, hivm.part_of_mix, hivm.storage_aligned, mix_mode = "mix", parallel_mode = "simd"} {
  %c2_i64 = arith.constant 2 : i64
  %c3_i64 = arith.constant 3 : i64
  %c3_i64_0 = arith.constant 3 : i64
  %c2_i64_1 = arith.constant 2 : i64
  %c1_i64 = arith.constant 1 : i64
  %c1_i64_2 = arith.constant 1 : i64
  %c1_i64_3 = arith.constant 1 : i64
  %c-1_i64 = arith.constant -1 : i64
  %c1_i64_4 = arith.constant 1 : i64
  %c-1_i64_5 = arith.constant -1 : i64
  %c98304_i64 = arith.constant 98304 : i64
  %c65536_i64 = arith.constant 65536 : i64
  %c32768_i64 = arith.constant 32768 : i64
  %c0_i64 = arith.constant 0 : i64
  %c128_i32 = arith.constant 128 : i32
  %c128 = arith.constant 128 : index
  %c0_i32 = arith.constant 0 : i32
  %cst = arith.constant 0.000000e+00 : bf16
  %true = arith.constant true
  hivm.hir.set_ffts_base_addr %arg0
  hivm.hir.set_mask_norm
  %0 = arith.muli %arg28, %arg29 : i32
  %1 = arith.muli %0, %arg30 : i32
  annotation.mark %1 {logical_block_num} : i32
  %2 = hivm.hir.get_block_idx -> i64
  %3 = arith.trunci %2 : i64 to i32
  %4 = arith.muli %arg30, %arg29 : i32
  %5 = arith.divsi %3, %4 : i32
  %6 = arith.remsi %5, %arg28 : i32
  %7 = arith.muli %arg7, %arg8 : i32
  %8 = arith.muli %7, %arg12 : i32
  hivm.hir.sync_block_set[<CUBE>, <PIPE_MTE2>, <PIPE_S>] flag = 2
  %9 = arith.index_cast %arg18 : i32 to index
  %10 = arith.index_cast %arg9 : i32 to index
  %11 = arith.index_cast %arg11 : i32 to index
  %12 = affine.max affine_map<()[s0] -> (0, s0)>()[%11]
  %13 = affine.min affine_map<()[s0] -> (128, s0)>()[%12]
  %14 = affine.max affine_map<()[s0] -> (0, s0)>()[%13]
  %15 = arith.cmpi slt, %14, %c128 : index
  %16 = arith.index_cast %arg21 : i32 to index
  %17 = arith.index_cast %arg10 : i32 to index
  %18 = arith.index_cast %arg24 : i32 to index
  %19 = arith.index_cast %2 : i64 to index
  %20 = affine.apply affine_map<()[s0] -> (s0 * 163840)>()[%19]
  %view = memref.view %arg2[%20][] : memref<?xi8, #hivm.address_space<gm>> to memref<128x128xf32, #hivm.address_space<gm>>
  %21 = affine.apply affine_map<()[s0] -> (s0 * 163840 + 65536)>()[%19]
  %view_6 = memref.view %arg2[%21][] : memref<?xi8, #hivm.address_space<gm>> to memref<128x128xbf16, #hivm.address_space<gm>>
  %22 = affine.apply affine_map<()[s0] -> (s0 * 163840 + 98304)>()[%19]
  %view_7 = memref.view %arg2[%22][] : memref<?xi8, #hivm.address_space<gm>> to memref<128x128xf32, #hivm.address_space<gm>>
  hivm.hir.set_flag[<PIPE_M>, <PIPE_MTE1>, <EVENT_ID0>]
  hivm.hir.set_flag[<PIPE_M>, <PIPE_MTE1>, <EVENT_ID1>]
  hivm.hir.set_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID0>]
  hivm.hir.set_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID1>]
  hivm.hir.set_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID2>]
  hivm.hir.set_flag[<PIPE_FIX>, <PIPE_M>, <EVENT_ID0>]
  hivm.hir.set_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID3>]
  scf.for %arg31 = %6 to %8 step %arg28  : i32 {
    %23 = arith.divsi %arg31, %arg12 : i32
    %24 = arith.muli %23, %arg12 : i32
    %25 = arith.subi %arg31, %24 : i32
    %26 = arith.divsi %23, %arg8 : i32
    %27 = arith.muli %26, %arg8 : i32
    %28 = arith.subi %23, %27 : i32
    %29 = arith.muli %25, %c128_i32 : i32
    %30 = arith.muli %26, %arg16 : i32
    %31 = arith.index_cast %30 : i32 to index
    %32 = arith.muli %28, %arg17 : i32
    %33 = arith.index_cast %32 : i32 to index
    %34 = arith.index_cast %29 : i32 to index
    %35 = affine.apply affine_map<()[s0, s1, s2, s3] -> (s0 + s1 + s2 * s3)>()[%31, %33, %34, %9]
    %reinterpret_cast = memref.reinterpret_cast %arg3 to offset: [%35], sizes: [128, 128], strides: [%9, 1] : memref<?xbf16, #hivm.address_space<gm>> to memref<128x128xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
    %36 = hivm.hir.pointer_cast(%c0_i64) : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>>
    %cast = memref.cast %36 : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>> to memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>
    %37 = affine.max affine_map<()[s0, s1] -> (s1, s0)>()[%34, %10]
    %38 = affine.min affine_map<()[s0, s1] -> (s1 + 128, s0)>()[%37, %34]
    %39 = affine.min affine_map<()[s0, s1] -> (128, s0 - s1)>()[%38, %34]
    %40 = affine.max affine_map<()[s0] -> (0, s0)>()[%39]
    %41 = arith.cmpi slt, %40, %c128 : index
    %42 = arith.ori %41, %15 : i1
    %subview = memref.subview %reinterpret_cast[0, 0] [%40, %14] [1, 1] : memref<128x128xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>> to memref<?x?xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
    %43 = affine.apply affine_map<()[s0] -> ((s0 + 15) floordiv 16)>()[%40]
    %44 = affine.apply affine_map<()[s0] -> ((s0 + 15) floordiv 16)>()[%14]
    %subview_8 = memref.subview %36[0, 0, 0, 0] [%44, %43, 16, 16] [1, 1, 1, 1] : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>> to memref<?x?x16x16xbf16, strided<[2048, 256, 16, 1]>, #hivm.address_space<cbuf>>
    %cast_9 = memref.cast %subview_8 : memref<?x?x16x16xbf16, strided<[2048, 256, 16, 1]>, #hivm.address_space<cbuf>> to memref<?x?x?x?xbf16, strided<[?, ?, ?, 1], offset: ?>, #hivm.address_space<cbuf>>
    hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID0>]
    scf.if %42 {
      %collapse_shape = memref.collapse_shape %36 [[0, 1, 2, 3]] : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>> into memref<16384xbf16, #hivm.address_space<cbuf>>
      hivm.hir.pipe_barrier[<PIPE_MTE2>]
      hivm.hir.vbrc ins(%cst : bf16) outs(%collapse_shape : memref<16384xbf16, #hivm.address_space<cbuf>>)
    }
    hivm.hir.pipe_barrier[<PIPE_MTE2>]
    hivm.hir.nd2nz {dst_continuous} ins(%subview : memref<?x?xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>) outs(%cast_9 : memref<?x?x?x?xbf16, strided<[?, ?, ?, 1], offset: ?>, #hivm.address_space<cbuf>>) init_out_buffer = false
    hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_MTE1>, <EVENT_ID0>]
    %45 = arith.muli %26, %arg19 : i32
    %46 = arith.index_cast %45 : i32 to index
    %47 = arith.muli %28, %arg20 : i32
    %48 = arith.index_cast %47 : i32 to index
    %49 = arith.muli %26, %arg22 : i32
    %50 = arith.index_cast %49 : i32 to index
    %51 = arith.muli %28, %arg23 : i32
    %52 = arith.index_cast %51 : i32 to index
    %53 = arith.addi %29, %c128_i32 : i32
    %54 = arith.addi %53, %arg13 : i32
    %55 = arith.minsi %arg10, %54 : i32
    %56 = arith.maxsi %55, %c0_i32 : i32
    hivm.hir.wait_flag[<PIPE_MTE2>, <PIPE_MTE1>, <EVENT_ID0>]
    scf.for %arg32 = %c0_i32 to %56 step %c128_i32  : i32 {
      %57 = arith.index_cast %arg32 : i32 to index
      %58 = arith.index_cast %c0_i32 : i32 to index
      %59 = arith.index_cast %56 : i32 to index
      %60 = arith.index_cast %c128_i32 : i32 to index
      %61 = arith.index_cast %arg31 : i32 to index
      %62 = arith.index_cast %6 : i32 to index
      %63 = arith.index_cast %8 : i32 to index
      %64 = arith.index_cast %arg28 : i32 to index
      %65 = affine.apply affine_map<()[s0, s1, s2, s3, s4, s5, s6] -> ((s0 - s1) floordiv s3 + ((s4 - s5) floordiv s6) * ((-s1 + s2 + s3 - 1) floordiv s3))>()[%57, %58, %59, %60, %61, %62, %64]
      %66 = arith.index_cast %65 : index to i64
      %c0_i64_10 = arith.constant 0 : i64
      %67 = arith.index_cast %arg32 : i32 to index
      %68 = arith.index_cast %c0_i32 : i32 to index
      %69 = arith.index_cast %56 : i32 to index
      %70 = arith.index_cast %c128_i32 : i32 to index
      %71 = arith.index_cast %arg31 : i32 to index
      %72 = arith.index_cast %6 : i32 to index
      %73 = arith.index_cast %8 : i32 to index
      %74 = arith.index_cast %arg28 : i32 to index
      %75 = affine.apply affine_map<()[s0, s1, s2, s3, s4, s5, s6] -> ((s0 - s1) floordiv s3 + ((s4 - s5) floordiv s6) * ((-s1 + s2 + s3 - 1) floordiv s3))>()[%67, %68, %69, %70, %71, %72, %74]
      %76 = arith.index_cast %75 : index to i64
      %c0_i64_11 = arith.constant 0 : i64
      %77 = arith.index_cast %arg32 : i32 to index
      %78 = affine.apply affine_map<()[s0, s1, s2, s3] -> (s0 + s1 + s2 * s3)>()[%46, %48, %77, %16]
      %reinterpret_cast_12 = memref.reinterpret_cast %arg4 to offset: [%78], sizes: [128, 128], strides: [%16, 1] : memref<?xbf16, #hivm.address_space<gm>> to memref<128x128xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
      %79 = hivm.hir.pointer_cast(%c32768_i64) : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>>
      %cast_13 = memref.cast %79 : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>> to memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>
      %80 = affine.max affine_map<()[s0, s1] -> (s1, s0)>()[%77, %17]
      %81 = affine.min affine_map<()[s0, s1] -> (s1 + 128, s0)>()[%80, %77]
      %82 = affine.min affine_map<()[s0, s1] -> (128, s0 - s1)>()[%81, %77]
      %83 = affine.max affine_map<()[s0] -> (0, s0)>()[%82]
      %84 = arith.cmpi slt, %83, %c128 : index
      %85 = arith.ori %84, %15 : i1
      %subview_14 = memref.subview %reinterpret_cast_12[0, 0] [%83, %14] [1, 1] : memref<128x128xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>> to memref<?x?xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
      %86 = affine.apply affine_map<()[s0] -> ((s0 + 15) floordiv 16)>()[%83]
      %subview_15 = memref.subview %79[0, 0, 0, 0] [%44, %86, 16, 16] [1, 1, 1, 1] : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>> to memref<?x?x16x16xbf16, strided<[2048, 256, 16, 1]>, #hivm.address_space<cbuf>>
      %cast_16 = memref.cast %subview_15 : memref<?x?x16x16xbf16, strided<[2048, 256, 16, 1]>, #hivm.address_space<cbuf>> to memref<?x?x?x?xbf16, strided<[?, ?, ?, 1], offset: ?>, #hivm.address_space<cbuf>>
      hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID1>]
      scf.if %85 {
        %collapse_shape = memref.collapse_shape %79 [[0, 1, 2, 3]] : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>> into memref<16384xbf16, #hivm.address_space<cbuf>>
        hivm.hir.vbrc ins(%cst : bf16) outs(%collapse_shape : memref<16384xbf16, #hivm.address_space<cbuf>>)
      }
      hivm.hir.pipe_barrier[<PIPE_MTE2>]
      hivm.hir.nd2nz {dst_continuous} ins(%subview_14 : memref<?x?xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>) outs(%cast_16 : memref<?x?x?x?xbf16, strided<[?, ?, ?, 1], offset: ?>, #hivm.address_space<cbuf>>) init_out_buffer = false
      hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_MTE1>, <EVENT_ID1>]
      %87 = affine.apply affine_map<()[s0, s1, s2, s3] -> (s0 + s1 + s2 * s3)>()[%50, %52, %77, %18]
      %reinterpret_cast_17 = memref.reinterpret_cast %arg5 to offset: [%87], sizes: [128, 128], strides: [%18, 1] : memref<?xbf16, #hivm.address_space<gm>> to memref<128x128xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
      %88 = hivm.hir.pointer_cast(%c65536_i64) : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>>
      %cast_18 = memref.cast %88 : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>> to memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>
      %subview_19 = memref.subview %reinterpret_cast_17[0, 0] [%83, %14] [1, 1] : memref<128x128xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>> to memref<?x?xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
      %subview_20 = memref.subview %88[0, 0, 0, 0] [%44, %86, 16, 16] [1, 1, 1, 1] : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>> to memref<?x?x16x16xbf16, strided<[2048, 256, 16, 1]>, #hivm.address_space<cbuf>>
      %cast_21 = memref.cast %subview_20 : memref<?x?x16x16xbf16, strided<[2048, 256, 16, 1]>, #hivm.address_space<cbuf>> to memref<?x?x?x?xbf16, strided<[?, ?, ?, 1], offset: ?>, #hivm.address_space<cbuf>>
      hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID2>]
      scf.if %85 {
        %collapse_shape = memref.collapse_shape %88 [[0, 1, 2, 3]] : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>> into memref<16384xbf16, #hivm.address_space<cbuf>>
        hivm.hir.vbrc ins(%cst : bf16) outs(%collapse_shape : memref<16384xbf16, #hivm.address_space<cbuf>>)
      }
      hivm.hir.pipe_barrier[<PIPE_MTE2>]
      hivm.hir.nd2nz {dst_continuous} ins(%subview_19 : memref<?x?xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>) outs(%cast_21 : memref<?x?x?x?xbf16, strided<[?, ?, ?, 1], offset: ?>, #hivm.address_space<cbuf>>) init_out_buffer = false
      hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_MTE1>, <EVENT_ID3>]
      %89 = hivm.hir.pointer_cast(%c0_i64) : memref<8x8x16x16xf32, #hivm.address_space<cc>>
      %cast_22 = memref.cast %89 : memref<8x8x16x16xf32, #hivm.address_space<cc>> to memref<?x?x?x?xf32, #hivm.address_space<cc>>
      hivm.hir.wait_flag[<PIPE_FIX>, <PIPE_M>, <EVENT_ID0>]
      hivm.hir.mmadL1 {b_transpose, fixpipe_already_inserted = true} ins(%cast, %cast_13, %true, %40, %14, %83 : memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>, memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>, i1, index, index, index) outs(%cast_22 : memref<?x?x?x?xf32, #hivm.address_space<cc>>) sync_related_args(%c-1_i64_5, %c1_i64_2, %c-1_i64_5, %c1_i64, %76, %c0_i64_11, %c1_i64_4 : i64, i64, i64, i64, i64, i64, i64)
      hivm.hir.set_flag[<PIPE_M>, <PIPE_FIX>, <EVENT_ID0>]
      hivm.hir.sync_block_wait[<CUBE>, <PIPE_MTE2>, <PIPE_S>] flag = 0
      hivm.hir.wait_flag[<PIPE_M>, <PIPE_FIX>, <EVENT_ID0>]
      hivm.hir.fixpipe {enable_nz2nd} ins(%cast_22 : memref<?x?x?x?xf32, #hivm.address_space<cc>>) outs(%view : memref<128x128xf32, #hivm.address_space<gm>>)
      hivm.hir.set_flag[<PIPE_FIX>, <PIPE_M>, <EVENT_ID1>]
      annotation.mark %view : memref<128x128xf32, #hivm.address_space<gm>>
      hivm.hir.sync_block_set[<CUBE>, <PIPE_FIX>, <PIPE_S>] flag = 1
      hivm.hir.sync_block_wait[<CUBE>, <PIPE_MTE3>, <PIPE_S>] flag = 1
      %90 = hivm.hir.pointer_cast(%c98304_i64) : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>>
      %cast_23 = memref.cast %90 : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>> to memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>
      hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID3>]
      hivm.hir.nd2nz {dst_continuous} ins(%view_6 : memref<128x128xbf16, #hivm.address_space<gm>>) outs(%cast_23 : memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>) init_out_buffer = false
      hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_MTE1>, <EVENT_ID2>]
      hivm.hir.sync_block_set[<CUBE>, <PIPE_MTE2>, <PIPE_S>] flag = 2
      %91 = hivm.hir.pointer_cast(%c0_i64) : memref<8x8x16x16xf32, #hivm.address_space<cc>>
      %cast_24 = memref.cast %91 : memref<8x8x16x16xf32, #hivm.address_space<cc>> to memref<?x?x?x?xf32, #hivm.address_space<cc>>
      hivm.hir.wait_flag[<PIPE_FIX>, <PIPE_M>, <EVENT_ID1>]
      hivm.hir.mmadL1 {fixpipe_already_inserted = true} ins(%cast_23, %cast_18, %true, %c128, %c128, %14 : memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>, memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>, i1, index, index, index) outs(%cast_24 : memref<?x?x?x?xf32, #hivm.address_space<cc>>) sync_related_args(%c2_i64_1, %c3_i64_0, %c3_i64, %c2_i64, %66, %c0_i64_10, %c1_i64_3 : i64, i64, i64, i64, i64, i64, i64)
      hivm.hir.set_flag[<PIPE_M>, <PIPE_FIX>, <EVENT_ID1>]
      hivm.hir.sync_block_wait[<CUBE>, <PIPE_MTE2>, <PIPE_S>] flag = 3
      hivm.hir.wait_flag[<PIPE_M>, <PIPE_FIX>, <EVENT_ID1>]
      hivm.hir.fixpipe {enable_nz2nd} ins(%cast_24 : memref<?x?x?x?xf32, #hivm.address_space<cc>>) outs(%view_7 : memref<128x128xf32, #hivm.address_space<gm>>)
      hivm.hir.set_flag[<PIPE_FIX>, <PIPE_M>, <EVENT_ID0>]
      annotation.mark %view_7 : memref<128x128xf32, #hivm.address_space<gm>>
      hivm.hir.sync_block_set[<CUBE>, <PIPE_FIX>, <PIPE_S>] flag = 1
    }
    hivm.hir.set_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID0>]
  }
  hivm.hir.wait_flag[<PIPE_M>, <PIPE_MTE1>, <EVENT_ID0>]
  hivm.hir.wait_flag[<PIPE_M>, <PIPE_MTE1>, <EVENT_ID1>]
  hivm.hir.pipe_barrier[<PIPE_ALL>]
  hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID0>]
  hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID1>]
  hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID2>]
  hivm.hir.wait_flag[<PIPE_FIX>, <PIPE_M>, <EVENT_ID0>]
  hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID3>]
  hivm.hir.sync_block_wait[<CUBE>, <PIPE_MTE2>, <PIPE_S>] flag = 0
  hivm.hir.sync_block_wait[<CUBE>, <PIPE_MTE2>, <PIPE_S>] flag = 3
  return
}

// -----// IR Dump After InjectSync (hivm-inject-sync) //----- //
func.func @_flex_attn_fwd_kernel_mix_aic(%arg0: i64 {hacc.arg_type = #hacc.arg_type<ffts_base_address>}, %arg1: memref<?xi8, #hivm.address_space<gm>> {hacc.arg_type = #hacc.arg_type<sync_block_lock>}, %arg2: memref<?xi8, #hivm.address_space<gm>> {hacc.arg_type = #hacc.arg_type<workspace>}, %arg3: memref<?xbf16, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg4: memref<?xbf16, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg5: memref<?xbf16, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg6: memref<?xbf16, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 1 : i32}, %arg7: i32, %arg8: i32 {tt.divisibility = 16 : i32}, %arg9: i32 {tt.divisibility = 16 : i32}, %arg10: i32 {tt.divisibility = 16 : i32}, %arg11: i32 {tt.divisibility = 16 : i32}, %arg12: i32 {tt.divisibility = 16 : i32}, %arg13: i32 {tt.divisibility = 16 : i32}, %arg14: f32, %arg15: f32, %arg16: i32 {tt.divisibility = 16 : i32}, %arg17: i32 {tt.divisibility = 16 : i32}, %arg18: i32 {tt.divisibility = 16 : i32}, %arg19: i32 {tt.divisibility = 16 : i32}, %arg20: i32 {tt.divisibility = 16 : i32}, %arg21: i32 {tt.divisibility = 16 : i32}, %arg22: i32 {tt.divisibility = 16 : i32}, %arg23: i32 {tt.divisibility = 16 : i32}, %arg24: i32 {tt.divisibility = 16 : i32}, %arg25: i32 {tt.divisibility = 16 : i32}, %arg26: i32 {tt.divisibility = 16 : i32}, %arg27: i32 {tt.divisibility = 16 : i32}, %arg28: i32, %arg29: i32, %arg30: i32) attributes {SyncBlockLockArgIdx = 0 : i64, WorkspaceArgIdx = 1 : i64, func_dyn_memref_args = dense<[false, true, true, true, true, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false]> : vector<31xi1>, hacc.entry, hacc.function_kind = #hacc.function_kind<DEVICE>, hivm.func_core_type = #hivm.func_core_type<AIC>, hivm.part_of_mix, hivm.storage_aligned, mix_mode = "mix", parallel_mode = "simd"} {
  %c2_i64 = arith.constant 2 : i64
  %c3_i64 = arith.constant 3 : i64
  %c3_i64_0 = arith.constant 3 : i64
  %c2_i64_1 = arith.constant 2 : i64
  %c1_i64 = arith.constant 1 : i64
  %c1_i64_2 = arith.constant 1 : i64
  %c1_i64_3 = arith.constant 1 : i64
  %c-1_i64 = arith.constant -1 : i64
  %c1_i64_4 = arith.constant 1 : i64
  %c-1_i64_5 = arith.constant -1 : i64
  %c98304_i64 = arith.constant 98304 : i64
  %c65536_i64 = arith.constant 65536 : i64
  %c32768_i64 = arith.constant 32768 : i64
  %c0_i64 = arith.constant 0 : i64
  %c128_i32 = arith.constant 128 : i32
  %c128 = arith.constant 128 : index
  %c0_i32 = arith.constant 0 : i32
  %cst = arith.constant 0.000000e+00 : bf16
  %true = arith.constant true
  hivm.hir.set_ffts_base_addr %arg0
  hivm.hir.set_mask_norm
  %0 = arith.muli %arg28, %arg29 : i32
  %1 = arith.muli %0, %arg30 : i32
  annotation.mark %1 {logical_block_num} : i32
  %2 = hivm.hir.get_block_idx -> i64
  %3 = arith.trunci %2 : i64 to i32
  %4 = arith.muli %arg30, %arg29 : i32
  %5 = arith.divsi %3, %4 : i32
  %6 = arith.remsi %5, %arg28 : i32
  %7 = arith.muli %arg7, %arg8 : i32
  %8 = arith.muli %7, %arg12 : i32
  hivm.hir.sync_block_set[<CUBE>, <PIPE_MTE2>, <PIPE_S>] flag = 2
  %9 = arith.index_cast %arg18 : i32 to index
  %10 = arith.index_cast %arg9 : i32 to index
  %11 = arith.index_cast %arg11 : i32 to index
  %12 = affine.max affine_map<()[s0] -> (0, s0)>()[%11]
  %13 = affine.min affine_map<()[s0] -> (128, s0)>()[%12]
  %14 = affine.max affine_map<()[s0] -> (0, s0)>()[%13]
  %15 = arith.cmpi slt, %14, %c128 : index
  %16 = arith.index_cast %arg21 : i32 to index
  %17 = arith.index_cast %arg10 : i32 to index
  %18 = arith.index_cast %arg24 : i32 to index
  %19 = arith.index_cast %2 : i64 to index
  %20 = affine.apply affine_map<()[s0] -> (s0 * 163840)>()[%19]
  %view = memref.view %arg2[%20][] : memref<?xi8, #hivm.address_space<gm>> to memref<128x128xf32, #hivm.address_space<gm>>
  %21 = affine.apply affine_map<()[s0] -> (s0 * 163840 + 65536)>()[%19]
  %view_6 = memref.view %arg2[%21][] : memref<?xi8, #hivm.address_space<gm>> to memref<128x128xbf16, #hivm.address_space<gm>>
  %22 = affine.apply affine_map<()[s0] -> (s0 * 163840 + 98304)>()[%19]
  %view_7 = memref.view %arg2[%22][] : memref<?xi8, #hivm.address_space<gm>> to memref<128x128xf32, #hivm.address_space<gm>>
  hivm.hir.set_flag[<PIPE_M>, <PIPE_MTE1>, <EVENT_ID0>]
  hivm.hir.set_flag[<PIPE_M>, <PIPE_MTE1>, <EVENT_ID1>]
  hivm.hir.set_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID0>]
  hivm.hir.set_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID1>]
  hivm.hir.set_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID2>]
  hivm.hir.set_flag[<PIPE_FIX>, <PIPE_M>, <EVENT_ID0>]
  hivm.hir.set_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID3>]
  scf.for %arg31 = %6 to %8 step %arg28  : i32 {
    %23 = arith.divsi %arg31, %arg12 : i32
    %24 = arith.muli %23, %arg12 : i32
    %25 = arith.subi %arg31, %24 : i32
    %26 = arith.divsi %23, %arg8 : i32
    %27 = arith.muli %26, %arg8 : i32
    %28 = arith.subi %23, %27 : i32
    %29 = arith.muli %25, %c128_i32 : i32
    %30 = arith.muli %26, %arg16 : i32
    %31 = arith.index_cast %30 : i32 to index
    %32 = arith.muli %28, %arg17 : i32
    %33 = arith.index_cast %32 : i32 to index
    %34 = arith.index_cast %29 : i32 to index
    %35 = affine.apply affine_map<()[s0, s1, s2, s3] -> (s0 + s1 + s2 * s3)>()[%31, %33, %34, %9]
    %reinterpret_cast = memref.reinterpret_cast %arg3 to offset: [%35], sizes: [128, 128], strides: [%9, 1] : memref<?xbf16, #hivm.address_space<gm>> to memref<128x128xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
    %36 = hivm.hir.pointer_cast(%c0_i64) : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>>
    %cast = memref.cast %36 : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>> to memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>
    %37 = affine.max affine_map<()[s0, s1] -> (s1, s0)>()[%34, %10]
    %38 = affine.min affine_map<()[s0, s1] -> (s1 + 128, s0)>()[%37, %34]
    %39 = affine.min affine_map<()[s0, s1] -> (128, s0 - s1)>()[%38, %34]
    %40 = affine.max affine_map<()[s0] -> (0, s0)>()[%39]
    %41 = arith.cmpi slt, %40, %c128 : index
    %42 = arith.ori %41, %15 : i1
    %subview = memref.subview %reinterpret_cast[0, 0] [%40, %14] [1, 1] : memref<128x128xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>> to memref<?x?xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
    %43 = affine.apply affine_map<()[s0] -> ((s0 + 15) floordiv 16)>()[%40]
    %44 = affine.apply affine_map<()[s0] -> ((s0 + 15) floordiv 16)>()[%14]
    %subview_8 = memref.subview %36[0, 0, 0, 0] [%44, %43, 16, 16] [1, 1, 1, 1] : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>> to memref<?x?x16x16xbf16, strided<[2048, 256, 16, 1]>, #hivm.address_space<cbuf>>
    %cast_9 = memref.cast %subview_8 : memref<?x?x16x16xbf16, strided<[2048, 256, 16, 1]>, #hivm.address_space<cbuf>> to memref<?x?x?x?xbf16, strided<[?, ?, ?, 1], offset: ?>, #hivm.address_space<cbuf>>
    hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID0>]
    scf.if %42 {
      %collapse_shape = memref.collapse_shape %36 [[0, 1, 2, 3]] : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>> into memref<16384xbf16, #hivm.address_space<cbuf>>
      hivm.hir.pipe_barrier[<PIPE_MTE2>]
      hivm.hir.vbrc ins(%cst : bf16) outs(%collapse_shape : memref<16384xbf16, #hivm.address_space<cbuf>>)
    }
    hivm.hir.pipe_barrier[<PIPE_MTE2>]
    hivm.hir.nd2nz {dst_continuous} ins(%subview : memref<?x?xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>) outs(%cast_9 : memref<?x?x?x?xbf16, strided<[?, ?, ?, 1], offset: ?>, #hivm.address_space<cbuf>>) init_out_buffer = false
    hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_MTE1>, <EVENT_ID0>]
    %45 = arith.muli %26, %arg19 : i32
    %46 = arith.index_cast %45 : i32 to index
    %47 = arith.muli %28, %arg20 : i32
    %48 = arith.index_cast %47 : i32 to index
    %49 = arith.muli %26, %arg22 : i32
    %50 = arith.index_cast %49 : i32 to index
    %51 = arith.muli %28, %arg23 : i32
    %52 = arith.index_cast %51 : i32 to index
    %53 = arith.addi %29, %c128_i32 : i32
    %54 = arith.addi %53, %arg13 : i32
    %55 = arith.minsi %arg10, %54 : i32
    %56 = arith.maxsi %55, %c0_i32 : i32
    hivm.hir.wait_flag[<PIPE_MTE2>, <PIPE_MTE1>, <EVENT_ID0>]
    scf.for %arg32 = %c0_i32 to %56 step %c128_i32  : i32 {
      %57 = arith.index_cast %arg32 : i32 to index
      %58 = arith.index_cast %c0_i32 : i32 to index
      %59 = arith.index_cast %56 : i32 to index
      %60 = arith.index_cast %c128_i32 : i32 to index
      %61 = arith.index_cast %arg31 : i32 to index
      %62 = arith.index_cast %6 : i32 to index
      %63 = arith.index_cast %8 : i32 to index
      %64 = arith.index_cast %arg28 : i32 to index
      %65 = affine.apply affine_map<()[s0, s1, s2, s3, s4, s5, s6] -> ((s0 - s1) floordiv s3 + ((s4 - s5) floordiv s6) * ((-s1 + s2 + s3 - 1) floordiv s3))>()[%57, %58, %59, %60, %61, %62, %64]
      %66 = arith.index_cast %65 : index to i64
      %c0_i64_10 = arith.constant 0 : i64
      %67 = arith.index_cast %arg32 : i32 to index
      %68 = arith.index_cast %c0_i32 : i32 to index
      %69 = arith.index_cast %56 : i32 to index
      %70 = arith.index_cast %c128_i32 : i32 to index
      %71 = arith.index_cast %arg31 : i32 to index
      %72 = arith.index_cast %6 : i32 to index
      %73 = arith.index_cast %8 : i32 to index
      %74 = arith.index_cast %arg28 : i32 to index
      %75 = affine.apply affine_map<()[s0, s1, s2, s3, s4, s5, s6] -> ((s0 - s1) floordiv s3 + ((s4 - s5) floordiv s6) * ((-s1 + s2 + s3 - 1) floordiv s3))>()[%67, %68, %69, %70, %71, %72, %74]
      %76 = arith.index_cast %75 : index to i64
      %c0_i64_11 = arith.constant 0 : i64
      %77 = arith.index_cast %arg32 : i32 to index
      %78 = affine.apply affine_map<()[s0, s1, s2, s3] -> (s0 + s1 + s2 * s3)>()[%46, %48, %77, %16]
      %reinterpret_cast_12 = memref.reinterpret_cast %arg4 to offset: [%78], sizes: [128, 128], strides: [%16, 1] : memref<?xbf16, #hivm.address_space<gm>> to memref<128x128xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
      %79 = hivm.hir.pointer_cast(%c32768_i64) : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>>
      %cast_13 = memref.cast %79 : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>> to memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>
      %80 = affine.max affine_map<()[s0, s1] -> (s1, s0)>()[%77, %17]
      %81 = affine.min affine_map<()[s0, s1] -> (s1 + 128, s0)>()[%80, %77]
      %82 = affine.min affine_map<()[s0, s1] -> (128, s0 - s1)>()[%81, %77]
      %83 = affine.max affine_map<()[s0] -> (0, s0)>()[%82]
      %84 = arith.cmpi slt, %83, %c128 : index
      %85 = arith.ori %84, %15 : i1
      %subview_14 = memref.subview %reinterpret_cast_12[0, 0] [%83, %14] [1, 1] : memref<128x128xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>> to memref<?x?xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
      %86 = affine.apply affine_map<()[s0] -> ((s0 + 15) floordiv 16)>()[%83]
      %subview_15 = memref.subview %79[0, 0, 0, 0] [%44, %86, 16, 16] [1, 1, 1, 1] : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>> to memref<?x?x16x16xbf16, strided<[2048, 256, 16, 1]>, #hivm.address_space<cbuf>>
      %cast_16 = memref.cast %subview_15 : memref<?x?x16x16xbf16, strided<[2048, 256, 16, 1]>, #hivm.address_space<cbuf>> to memref<?x?x?x?xbf16, strided<[?, ?, ?, 1], offset: ?>, #hivm.address_space<cbuf>>
      hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID1>]
      scf.if %85 {
        %collapse_shape = memref.collapse_shape %79 [[0, 1, 2, 3]] : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>> into memref<16384xbf16, #hivm.address_space<cbuf>>
        hivm.hir.vbrc ins(%cst : bf16) outs(%collapse_shape : memref<16384xbf16, #hivm.address_space<cbuf>>)
      }
      hivm.hir.pipe_barrier[<PIPE_MTE2>]
      hivm.hir.nd2nz {dst_continuous} ins(%subview_14 : memref<?x?xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>) outs(%cast_16 : memref<?x?x?x?xbf16, strided<[?, ?, ?, 1], offset: ?>, #hivm.address_space<cbuf>>) init_out_buffer = false
      hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_MTE1>, <EVENT_ID1>]
      %87 = affine.apply affine_map<()[s0, s1, s2, s3] -> (s0 + s1 + s2 * s3)>()[%50, %52, %77, %18]
      %reinterpret_cast_17 = memref.reinterpret_cast %arg5 to offset: [%87], sizes: [128, 128], strides: [%18, 1] : memref<?xbf16, #hivm.address_space<gm>> to memref<128x128xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
      %88 = hivm.hir.pointer_cast(%c65536_i64) : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>>
      %cast_18 = memref.cast %88 : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>> to memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>
      %subview_19 = memref.subview %reinterpret_cast_17[0, 0] [%83, %14] [1, 1] : memref<128x128xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>> to memref<?x?xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
      %subview_20 = memref.subview %88[0, 0, 0, 0] [%44, %86, 16, 16] [1, 1, 1, 1] : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>> to memref<?x?x16x16xbf16, strided<[2048, 256, 16, 1]>, #hivm.address_space<cbuf>>
      %cast_21 = memref.cast %subview_20 : memref<?x?x16x16xbf16, strided<[2048, 256, 16, 1]>, #hivm.address_space<cbuf>> to memref<?x?x?x?xbf16, strided<[?, ?, ?, 1], offset: ?>, #hivm.address_space<cbuf>>
      hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID2>]
      scf.if %85 {
        %collapse_shape = memref.collapse_shape %88 [[0, 1, 2, 3]] : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>> into memref<16384xbf16, #hivm.address_space<cbuf>>
        hivm.hir.vbrc ins(%cst : bf16) outs(%collapse_shape : memref<16384xbf16, #hivm.address_space<cbuf>>)
      }
      hivm.hir.pipe_barrier[<PIPE_MTE2>]
      hivm.hir.nd2nz {dst_continuous} ins(%subview_19 : memref<?x?xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>) outs(%cast_21 : memref<?x?x?x?xbf16, strided<[?, ?, ?, 1], offset: ?>, #hivm.address_space<cbuf>>) init_out_buffer = false
      hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_MTE1>, <EVENT_ID3>]
      %89 = hivm.hir.pointer_cast(%c0_i64) : memref<8x8x16x16xf32, #hivm.address_space<cc>>
      %cast_22 = memref.cast %89 : memref<8x8x16x16xf32, #hivm.address_space<cc>> to memref<?x?x?x?xf32, #hivm.address_space<cc>>
      hivm.hir.wait_flag[<PIPE_FIX>, <PIPE_M>, <EVENT_ID0>]
      hivm.hir.mmadL1 {b_transpose, fixpipe_already_inserted = true} ins(%cast, %cast_13, %true, %40, %14, %83 : memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>, memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>, i1, index, index, index) outs(%cast_22 : memref<?x?x?x?xf32, #hivm.address_space<cc>>) sync_related_args(%c-1_i64_5, %c1_i64_2, %c-1_i64_5, %c1_i64, %76, %c0_i64_11, %c1_i64_4 : i64, i64, i64, i64, i64, i64, i64)
      hivm.hir.set_flag[<PIPE_M>, <PIPE_FIX>, <EVENT_ID0>]
      hivm.hir.sync_block_wait[<CUBE>, <PIPE_MTE2>, <PIPE_S>] flag = 0
      hivm.hir.wait_flag[<PIPE_M>, <PIPE_FIX>, <EVENT_ID0>]
      hivm.hir.fixpipe {enable_nz2nd} ins(%cast_22 : memref<?x?x?x?xf32, #hivm.address_space<cc>>) outs(%view : memref<128x128xf32, #hivm.address_space<gm>>)
      hivm.hir.set_flag[<PIPE_FIX>, <PIPE_M>, <EVENT_ID1>]
      annotation.mark %view : memref<128x128xf32, #hivm.address_space<gm>>
      hivm.hir.sync_block_set[<CUBE>, <PIPE_FIX>, <PIPE_S>] flag = 1
      hivm.hir.sync_block_wait[<CUBE>, <PIPE_MTE3>, <PIPE_S>] flag = 1
      %90 = hivm.hir.pointer_cast(%c98304_i64) : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>>
      %cast_23 = memref.cast %90 : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>> to memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>
      hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID3>]
      hivm.hir.nd2nz {dst_continuous} ins(%view_6 : memref<128x128xbf16, #hivm.address_space<gm>>) outs(%cast_23 : memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>) init_out_buffer = false
      hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_MTE1>, <EVENT_ID2>]
      hivm.hir.sync_block_set[<CUBE>, <PIPE_MTE2>, <PIPE_S>] flag = 2
      %91 = hivm.hir.pointer_cast(%c0_i64) : memref<8x8x16x16xf32, #hivm.address_space<cc>>
      %cast_24 = memref.cast %91 : memref<8x8x16x16xf32, #hivm.address_space<cc>> to memref<?x?x?x?xf32, #hivm.address_space<cc>>
      hivm.hir.wait_flag[<PIPE_FIX>, <PIPE_M>, <EVENT_ID1>]
      hivm.hir.mmadL1 {fixpipe_already_inserted = true} ins(%cast_23, %cast_18, %true, %c128, %c128, %14 : memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>, memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>, i1, index, index, index) outs(%cast_24 : memref<?x?x?x?xf32, #hivm.address_space<cc>>) sync_related_args(%c2_i64_1, %c3_i64_0, %c3_i64, %c2_i64, %66, %c0_i64_10, %c1_i64_3 : i64, i64, i64, i64, i64, i64, i64)
      hivm.hir.set_flag[<PIPE_M>, <PIPE_FIX>, <EVENT_ID1>]
      hivm.hir.sync_block_wait[<CUBE>, <PIPE_MTE2>, <PIPE_S>] flag = 3
      hivm.hir.wait_flag[<PIPE_M>, <PIPE_FIX>, <EVENT_ID1>]
      hivm.hir.fixpipe {enable_nz2nd} ins(%cast_24 : memref<?x?x?x?xf32, #hivm.address_space<cc>>) outs(%view_7 : memref<128x128xf32, #hivm.address_space<gm>>)
      hivm.hir.set_flag[<PIPE_FIX>, <PIPE_M>, <EVENT_ID0>]
      annotation.mark %view_7 : memref<128x128xf32, #hivm.address_space<gm>>
      hivm.hir.sync_block_set[<CUBE>, <PIPE_FIX>, <PIPE_S>] flag = 1
    }
    hivm.hir.set_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID0>]
  }
  hivm.hir.wait_flag[<PIPE_M>, <PIPE_MTE1>, <EVENT_ID0>]
  hivm.hir.wait_flag[<PIPE_M>, <PIPE_MTE1>, <EVENT_ID1>]
  hivm.hir.pipe_barrier[<PIPE_ALL>]
  hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID0>]
  hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID1>]
  hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID2>]
  hivm.hir.wait_flag[<PIPE_FIX>, <PIPE_M>, <EVENT_ID0>]
  hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID3>]
  hivm.hir.sync_block_wait[<CUBE>, <PIPE_MTE2>, <PIPE_S>] flag = 0
  hivm.hir.sync_block_wait[<CUBE>, <PIPE_MTE2>, <PIPE_S>] flag = 3
  return
}

// -----// IR Dump After InjectSync (hivm-inject-sync) //----- //
func.func @_flex_attn_fwd_kernel_mix_aic(%arg0: i64 {hacc.arg_type = #hacc.arg_type<ffts_base_address>}, %arg1: memref<?xi8, #hivm.address_space<gm>> {hacc.arg_type = #hacc.arg_type<sync_block_lock>}, %arg2: memref<?xi8, #hivm.address_space<gm>> {hacc.arg_type = #hacc.arg_type<workspace>}, %arg3: memref<?xbf16, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg4: memref<?xbf16, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg5: memref<?xbf16, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg6: memref<?xbf16, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 1 : i32}, %arg7: i32, %arg8: i32 {tt.divisibility = 16 : i32}, %arg9: i32 {tt.divisibility = 16 : i32}, %arg10: i32 {tt.divisibility = 16 : i32}, %arg11: i32 {tt.divisibility = 16 : i32}, %arg12: i32 {tt.divisibility = 16 : i32}, %arg13: i32 {tt.divisibility = 16 : i32}, %arg14: f32, %arg15: f32, %arg16: i32 {tt.divisibility = 16 : i32}, %arg17: i32 {tt.divisibility = 16 : i32}, %arg18: i32 {tt.divisibility = 16 : i32}, %arg19: i32 {tt.divisibility = 16 : i32}, %arg20: i32 {tt.divisibility = 16 : i32}, %arg21: i32 {tt.divisibility = 16 : i32}, %arg22: i32 {tt.divisibility = 16 : i32}, %arg23: i32 {tt.divisibility = 16 : i32}, %arg24: i32 {tt.divisibility = 16 : i32}, %arg25: i32 {tt.divisibility = 16 : i32}, %arg26: i32 {tt.divisibility = 16 : i32}, %arg27: i32 {tt.divisibility = 16 : i32}, %arg28: i32, %arg29: i32, %arg30: i32) attributes {SyncBlockLockArgIdx = 0 : i64, WorkspaceArgIdx = 1 : i64, func_dyn_memref_args = dense<[false, true, true, true, true, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false]> : vector<31xi1>, hacc.entry, hacc.function_kind = #hacc.function_kind<DEVICE>, hivm.func_core_type = #hivm.func_core_type<AIC>, hivm.part_of_mix, hivm.storage_aligned, mix_mode = "mix", parallel_mode = "simd"} {
  %c2_i64 = arith.constant 2 : i64
  %c3_i64 = arith.constant 3 : i64
  %c3_i64_0 = arith.constant 3 : i64
  %c2_i64_1 = arith.constant 2 : i64
  %c1_i64 = arith.constant 1 : i64
  %c1_i64_2 = arith.constant 1 : i64
  %c1_i64_3 = arith.constant 1 : i64
  %c-1_i64 = arith.constant -1 : i64
  %c1_i64_4 = arith.constant 1 : i64
  %c-1_i64_5 = arith.constant -1 : i64
  %c98304_i64 = arith.constant 98304 : i64
  %c65536_i64 = arith.constant 65536 : i64
  %c32768_i64 = arith.constant 32768 : i64
  %c0_i64 = arith.constant 0 : i64
  %c128_i32 = arith.constant 128 : i32
  %c128 = arith.constant 128 : index
  %c0_i32 = arith.constant 0 : i32
  %cst = arith.constant 0.000000e+00 : bf16
  %true = arith.constant true
  hivm.hir.set_ffts_base_addr %arg0
  hivm.hir.set_mask_norm
  %0 = arith.muli %arg28, %arg29 : i32
  %1 = arith.muli %0, %arg30 : i32
  annotation.mark %1 {logical_block_num} : i32
  %2 = hivm.hir.get_block_idx -> i64
  %3 = arith.trunci %2 : i64 to i32
  %4 = arith.muli %arg30, %arg29 : i32
  %5 = arith.divsi %3, %4 : i32
  %6 = arith.remsi %5, %arg28 : i32
  %7 = arith.muli %arg7, %arg8 : i32
  %8 = arith.muli %7, %arg12 : i32
  hivm.hir.sync_block_set[<CUBE>, <PIPE_MTE2>, <PIPE_S>] flag = 2
  %9 = arith.index_cast %arg18 : i32 to index
  %10 = arith.index_cast %arg9 : i32 to index
  %11 = arith.index_cast %arg11 : i32 to index
  %12 = affine.max affine_map<()[s0] -> (0, s0)>()[%11]
  %13 = affine.min affine_map<()[s0] -> (128, s0)>()[%12]
  %14 = affine.max affine_map<()[s0] -> (0, s0)>()[%13]
  %15 = arith.cmpi slt, %14, %c128 : index
  %16 = arith.index_cast %arg21 : i32 to index
  %17 = arith.index_cast %arg10 : i32 to index
  %18 = arith.index_cast %arg24 : i32 to index
  %19 = arith.index_cast %2 : i64 to index
  %20 = affine.apply affine_map<()[s0] -> (s0 * 163840)>()[%19]
  %view = memref.view %arg2[%20][] : memref<?xi8, #hivm.address_space<gm>> to memref<128x128xf32, #hivm.address_space<gm>>
  %21 = affine.apply affine_map<()[s0] -> (s0 * 163840 + 65536)>()[%19]
  %view_6 = memref.view %arg2[%21][] : memref<?xi8, #hivm.address_space<gm>> to memref<128x128xbf16, #hivm.address_space<gm>>
  %22 = affine.apply affine_map<()[s0] -> (s0 * 163840 + 98304)>()[%19]
  %view_7 = memref.view %arg2[%22][] : memref<?xi8, #hivm.address_space<gm>> to memref<128x128xf32, #hivm.address_space<gm>>
  hivm.hir.set_flag[<PIPE_M>, <PIPE_MTE1>, <EVENT_ID0>]
  hivm.hir.set_flag[<PIPE_M>, <PIPE_MTE1>, <EVENT_ID1>]
  hivm.hir.set_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID0>]
  hivm.hir.set_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID1>]
  hivm.hir.set_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID2>]
  hivm.hir.set_flag[<PIPE_FIX>, <PIPE_M>, <EVENT_ID0>]
  hivm.hir.set_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID3>]
  scf.for %arg31 = %6 to %8 step %arg28  : i32 {
    %23 = arith.divsi %arg31, %arg12 : i32
    %24 = arith.muli %23, %arg12 : i32
    %25 = arith.subi %arg31, %24 : i32
    %26 = arith.divsi %23, %arg8 : i32
    %27 = arith.muli %26, %arg8 : i32
    %28 = arith.subi %23, %27 : i32
    %29 = arith.muli %25, %c128_i32 : i32
    %30 = arith.muli %26, %arg16 : i32
    %31 = arith.index_cast %30 : i32 to index
    %32 = arith.muli %28, %arg17 : i32
    %33 = arith.index_cast %32 : i32 to index
    %34 = arith.index_cast %29 : i32 to index
    %35 = affine.apply affine_map<()[s0, s1, s2, s3] -> (s0 + s1 + s2 * s3)>()[%31, %33, %34, %9]
    %reinterpret_cast = memref.reinterpret_cast %arg3 to offset: [%35], sizes: [128, 128], strides: [%9, 1] : memref<?xbf16, #hivm.address_space<gm>> to memref<128x128xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
    %36 = hivm.hir.pointer_cast(%c0_i64) : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>>
    %cast = memref.cast %36 : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>> to memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>
    %37 = affine.max affine_map<()[s0, s1] -> (s1, s0)>()[%34, %10]
    %38 = affine.min affine_map<()[s0, s1] -> (s1 + 128, s0)>()[%37, %34]
    %39 = affine.min affine_map<()[s0, s1] -> (128, s0 - s1)>()[%38, %34]
    %40 = affine.max affine_map<()[s0] -> (0, s0)>()[%39]
    %41 = arith.cmpi slt, %40, %c128 : index
    %42 = arith.ori %41, %15 : i1
    %subview = memref.subview %reinterpret_cast[0, 0] [%40, %14] [1, 1] : memref<128x128xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>> to memref<?x?xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
    %43 = affine.apply affine_map<()[s0] -> ((s0 + 15) floordiv 16)>()[%40]
    %44 = affine.apply affine_map<()[s0] -> ((s0 + 15) floordiv 16)>()[%14]
    %subview_8 = memref.subview %36[0, 0, 0, 0] [%44, %43, 16, 16] [1, 1, 1, 1] : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>> to memref<?x?x16x16xbf16, strided<[2048, 256, 16, 1]>, #hivm.address_space<cbuf>>
    %cast_9 = memref.cast %subview_8 : memref<?x?x16x16xbf16, strided<[2048, 256, 16, 1]>, #hivm.address_space<cbuf>> to memref<?x?x?x?xbf16, strided<[?, ?, ?, 1], offset: ?>, #hivm.address_space<cbuf>>
    hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID0>]
    scf.if %42 {
      %collapse_shape = memref.collapse_shape %36 [[0, 1, 2, 3]] : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>> into memref<16384xbf16, #hivm.address_space<cbuf>>
      hivm.hir.pipe_barrier[<PIPE_MTE2>]
      hivm.hir.vbrc ins(%cst : bf16) outs(%collapse_shape : memref<16384xbf16, #hivm.address_space<cbuf>>)
    }
    hivm.hir.pipe_barrier[<PIPE_MTE2>]
    hivm.hir.nd2nz {dst_continuous} ins(%subview : memref<?x?xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>) outs(%cast_9 : memref<?x?x?x?xbf16, strided<[?, ?, ?, 1], offset: ?>, #hivm.address_space<cbuf>>) init_out_buffer = false
    hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_MTE1>, <EVENT_ID0>]
    %45 = arith.muli %26, %arg19 : i32
    %46 = arith.index_cast %45 : i32 to index
    %47 = arith.muli %28, %arg20 : i32
    %48 = arith.index_cast %47 : i32 to index
    %49 = arith.muli %26, %arg22 : i32
    %50 = arith.index_cast %49 : i32 to index
    %51 = arith.muli %28, %arg23 : i32
    %52 = arith.index_cast %51 : i32 to index
    %53 = arith.addi %29, %c128_i32 : i32
    %54 = arith.addi %53, %arg13 : i32
    %55 = arith.minsi %arg10, %54 : i32
    %56 = arith.maxsi %55, %c0_i32 : i32
    hivm.hir.wait_flag[<PIPE_MTE2>, <PIPE_MTE1>, <EVENT_ID0>]
    scf.for %arg32 = %c0_i32 to %56 step %c128_i32  : i32 {
      %57 = arith.index_cast %arg32 : i32 to index
      %58 = arith.index_cast %c0_i32 : i32 to index
      %59 = arith.index_cast %56 : i32 to index
      %60 = arith.index_cast %c128_i32 : i32 to index
      %61 = arith.index_cast %arg31 : i32 to index
      %62 = arith.index_cast %6 : i32 to index
      %63 = arith.index_cast %8 : i32 to index
      %64 = arith.index_cast %arg28 : i32 to index
      %65 = affine.apply affine_map<()[s0, s1, s2, s3, s4, s5, s6] -> ((s0 - s1) floordiv s3 + ((s4 - s5) floordiv s6) * ((-s1 + s2 + s3 - 1) floordiv s3))>()[%57, %58, %59, %60, %61, %62, %64]
      %66 = arith.index_cast %65 : index to i64
      %c0_i64_10 = arith.constant 0 : i64
      %67 = arith.index_cast %arg32 : i32 to index
      %68 = arith.index_cast %c0_i32 : i32 to index
      %69 = arith.index_cast %56 : i32 to index
      %70 = arith.index_cast %c128_i32 : i32 to index
      %71 = arith.index_cast %arg31 : i32 to index
      %72 = arith.index_cast %6 : i32 to index
      %73 = arith.index_cast %8 : i32 to index
      %74 = arith.index_cast %arg28 : i32 to index
      %75 = affine.apply affine_map<()[s0, s1, s2, s3, s4, s5, s6] -> ((s0 - s1) floordiv s3 + ((s4 - s5) floordiv s6) * ((-s1 + s2 + s3 - 1) floordiv s3))>()[%67, %68, %69, %70, %71, %72, %74]
      %76 = arith.index_cast %75 : index to i64
      %c0_i64_11 = arith.constant 0 : i64
      %77 = arith.index_cast %arg32 : i32 to index
      %78 = affine.apply affine_map<()[s0, s1, s2, s3] -> (s0 + s1 + s2 * s3)>()[%46, %48, %77, %16]
      %reinterpret_cast_12 = memref.reinterpret_cast %arg4 to offset: [%78], sizes: [128, 128], strides: [%16, 1] : memref<?xbf16, #hivm.address_space<gm>> to memref<128x128xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
      %79 = hivm.hir.pointer_cast(%c32768_i64) : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>>
      %cast_13 = memref.cast %79 : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>> to memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>
      %80 = affine.max affine_map<()[s0, s1] -> (s1, s0)>()[%77, %17]
      %81 = affine.min affine_map<()[s0, s1] -> (s1 + 128, s0)>()[%80, %77]
      %82 = affine.min affine_map<()[s0, s1] -> (128, s0 - s1)>()[%81, %77]
      %83 = affine.max affine_map<()[s0] -> (0, s0)>()[%82]
      %84 = arith.cmpi slt, %83, %c128 : index
      %85 = arith.ori %84, %15 : i1
      %subview_14 = memref.subview %reinterpret_cast_12[0, 0] [%83, %14] [1, 1] : memref<128x128xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>> to memref<?x?xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
      %86 = affine.apply affine_map<()[s0] -> ((s0 + 15) floordiv 16)>()[%83]
      %subview_15 = memref.subview %79[0, 0, 0, 0] [%44, %86, 16, 16] [1, 1, 1, 1] : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>> to memref<?x?x16x16xbf16, strided<[2048, 256, 16, 1]>, #hivm.address_space<cbuf>>
      %cast_16 = memref.cast %subview_15 : memref<?x?x16x16xbf16, strided<[2048, 256, 16, 1]>, #hivm.address_space<cbuf>> to memref<?x?x?x?xbf16, strided<[?, ?, ?, 1], offset: ?>, #hivm.address_space<cbuf>>
      hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID1>]
      scf.if %85 {
        %collapse_shape = memref.collapse_shape %79 [[0, 1, 2, 3]] : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>> into memref<16384xbf16, #hivm.address_space<cbuf>>
        hivm.hir.vbrc ins(%cst : bf16) outs(%collapse_shape : memref<16384xbf16, #hivm.address_space<cbuf>>)
      }
      hivm.hir.pipe_barrier[<PIPE_MTE2>]
      hivm.hir.nd2nz {dst_continuous} ins(%subview_14 : memref<?x?xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>) outs(%cast_16 : memref<?x?x?x?xbf16, strided<[?, ?, ?, 1], offset: ?>, #hivm.address_space<cbuf>>) init_out_buffer = false
      hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_MTE1>, <EVENT_ID1>]
      %87 = affine.apply affine_map<()[s0, s1, s2, s3] -> (s0 + s1 + s2 * s3)>()[%50, %52, %77, %18]
      %reinterpret_cast_17 = memref.reinterpret_cast %arg5 to offset: [%87], sizes: [128, 128], strides: [%18, 1] : memref<?xbf16, #hivm.address_space<gm>> to memref<128x128xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
      %88 = hivm.hir.pointer_cast(%c65536_i64) : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>>
      %cast_18 = memref.cast %88 : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>> to memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>
      %subview_19 = memref.subview %reinterpret_cast_17[0, 0] [%83, %14] [1, 1] : memref<128x128xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>> to memref<?x?xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
      %subview_20 = memref.subview %88[0, 0, 0, 0] [%44, %86, 16, 16] [1, 1, 1, 1] : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>> to memref<?x?x16x16xbf16, strided<[2048, 256, 16, 1]>, #hivm.address_space<cbuf>>
      %cast_21 = memref.cast %subview_20 : memref<?x?x16x16xbf16, strided<[2048, 256, 16, 1]>, #hivm.address_space<cbuf>> to memref<?x?x?x?xbf16, strided<[?, ?, ?, 1], offset: ?>, #hivm.address_space<cbuf>>
      hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID2>]
      scf.if %85 {
        %collapse_shape = memref.collapse_shape %88 [[0, 1, 2, 3]] : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>> into memref<16384xbf16, #hivm.address_space<cbuf>>
        hivm.hir.vbrc ins(%cst : bf16) outs(%collapse_shape : memref<16384xbf16, #hivm.address_space<cbuf>>)
      }
      hivm.hir.pipe_barrier[<PIPE_MTE2>]
      hivm.hir.nd2nz {dst_continuous} ins(%subview_19 : memref<?x?xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>) outs(%cast_21 : memref<?x?x?x?xbf16, strided<[?, ?, ?, 1], offset: ?>, #hivm.address_space<cbuf>>) init_out_buffer = false
      hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_MTE1>, <EVENT_ID3>]
      %89 = hivm.hir.pointer_cast(%c0_i64) : memref<8x8x16x16xf32, #hivm.address_space<cc>>
      %cast_22 = memref.cast %89 : memref<8x8x16x16xf32, #hivm.address_space<cc>> to memref<?x?x?x?xf32, #hivm.address_space<cc>>
      hivm.hir.wait_flag[<PIPE_FIX>, <PIPE_M>, <EVENT_ID0>]
      hivm.hir.mmadL1 {b_transpose, fixpipe_already_inserted = true} ins(%cast, %cast_13, %true, %40, %14, %83 : memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>, memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>, i1, index, index, index) outs(%cast_22 : memref<?x?x?x?xf32, #hivm.address_space<cc>>) sync_related_args(%c-1_i64_5, %c1_i64_2, %c-1_i64_5, %c1_i64, %76, %c0_i64_11, %c1_i64_4 : i64, i64, i64, i64, i64, i64, i64)
      hivm.hir.set_flag[<PIPE_M>, <PIPE_FIX>, <EVENT_ID0>]
      hivm.hir.sync_block_wait[<CUBE>, <PIPE_MTE2>, <PIPE_S>] flag = 0
      hivm.hir.wait_flag[<PIPE_M>, <PIPE_FIX>, <EVENT_ID0>]
      hivm.hir.fixpipe {enable_nz2nd} ins(%cast_22 : memref<?x?x?x?xf32, #hivm.address_space<cc>>) outs(%view : memref<128x128xf32, #hivm.address_space<gm>>)
      hivm.hir.set_flag[<PIPE_FIX>, <PIPE_M>, <EVENT_ID1>]
      annotation.mark %view : memref<128x128xf32, #hivm.address_space<gm>>
      hivm.hir.sync_block_set[<CUBE>, <PIPE_FIX>, <PIPE_S>] flag = 1
      hivm.hir.sync_block_wait[<CUBE>, <PIPE_MTE3>, <PIPE_S>] flag = 1
      %90 = hivm.hir.pointer_cast(%c98304_i64) : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>>
      %cast_23 = memref.cast %90 : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>> to memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>
      hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID3>]
      hivm.hir.nd2nz {dst_continuous} ins(%view_6 : memref<128x128xbf16, #hivm.address_space<gm>>) outs(%cast_23 : memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>) init_out_buffer = false
      hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_MTE1>, <EVENT_ID2>]
      hivm.hir.sync_block_set[<CUBE>, <PIPE_MTE2>, <PIPE_S>] flag = 2
      %91 = hivm.hir.pointer_cast(%c0_i64) : memref<8x8x16x16xf32, #hivm.address_space<cc>>
      %cast_24 = memref.cast %91 : memref<8x8x16x16xf32, #hivm.address_space<cc>> to memref<?x?x?x?xf32, #hivm.address_space<cc>>
      hivm.hir.wait_flag[<PIPE_FIX>, <PIPE_M>, <EVENT_ID1>]
      hivm.hir.mmadL1 {fixpipe_already_inserted = true} ins(%cast_23, %cast_18, %true, %c128, %c128, %14 : memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>, memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>, i1, index, index, index) outs(%cast_24 : memref<?x?x?x?xf32, #hivm.address_space<cc>>) sync_related_args(%c2_i64_1, %c3_i64_0, %c3_i64, %c2_i64, %66, %c0_i64_10, %c1_i64_3 : i64, i64, i64, i64, i64, i64, i64)
      hivm.hir.set_flag[<PIPE_M>, <PIPE_FIX>, <EVENT_ID1>]
      hivm.hir.sync_block_wait[<CUBE>, <PIPE_MTE2>, <PIPE_S>] flag = 3
      hivm.hir.wait_flag[<PIPE_M>, <PIPE_FIX>, <EVENT_ID1>]
      hivm.hir.fixpipe {enable_nz2nd} ins(%cast_24 : memref<?x?x?x?xf32, #hivm.address_space<cc>>) outs(%view_7 : memref<128x128xf32, #hivm.address_space<gm>>)
      hivm.hir.set_flag[<PIPE_FIX>, <PIPE_M>, <EVENT_ID0>]
      annotation.mark %view_7 : memref<128x128xf32, #hivm.address_space<gm>>
      hivm.hir.sync_block_set[<CUBE>, <PIPE_FIX>, <PIPE_S>] flag = 1
    }
    hivm.hir.set_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID0>]
  }
  hivm.hir.wait_flag[<PIPE_M>, <PIPE_MTE1>, <EVENT_ID0>]
  hivm.hir.wait_flag[<PIPE_M>, <PIPE_MTE1>, <EVENT_ID1>]
  hivm.hir.pipe_barrier[<PIPE_ALL>]
  hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID0>]
  hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID1>]
  hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID2>]
  hivm.hir.wait_flag[<PIPE_FIX>, <PIPE_M>, <EVENT_ID0>]
  hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID3>]
  hivm.hir.sync_block_wait[<CUBE>, <PIPE_MTE2>, <PIPE_S>] flag = 0
  hivm.hir.sync_block_wait[<CUBE>, <PIPE_MTE2>, <PIPE_S>] flag = 3
  return
}

// -----// IR Dump After InjectSync (hivm-inject-sync) //----- //
func.func @_flex_attn_fwd_kernel_mix_aic(%arg0: i64 {hacc.arg_type = #hacc.arg_type<ffts_base_address>}, %arg1: memref<?xi8, #hivm.address_space<gm>> {hacc.arg_type = #hacc.arg_type<sync_block_lock>}, %arg2: memref<?xi8, #hivm.address_space<gm>> {hacc.arg_type = #hacc.arg_type<workspace>}, %arg3: memref<?xbf16, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg4: memref<?xbf16, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg5: memref<?xbf16, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg6: memref<?xbf16, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 1 : i32}, %arg7: i32, %arg8: i32 {tt.divisibility = 16 : i32}, %arg9: i32 {tt.divisibility = 16 : i32}, %arg10: i32 {tt.divisibility = 16 : i32}, %arg11: i32 {tt.divisibility = 16 : i32}, %arg12: i32 {tt.divisibility = 16 : i32}, %arg13: i32 {tt.divisibility = 16 : i32}, %arg14: f32, %arg15: f32, %arg16: i32 {tt.divisibility = 16 : i32}, %arg17: i32 {tt.divisibility = 16 : i32}, %arg18: i32 {tt.divisibility = 16 : i32}, %arg19: i32 {tt.divisibility = 16 : i32}, %arg20: i32 {tt.divisibility = 16 : i32}, %arg21: i32 {tt.divisibility = 16 : i32}, %arg22: i32 {tt.divisibility = 16 : i32}, %arg23: i32 {tt.divisibility = 16 : i32}, %arg24: i32 {tt.divisibility = 16 : i32}, %arg25: i32 {tt.divisibility = 16 : i32}, %arg26: i32 {tt.divisibility = 16 : i32}, %arg27: i32 {tt.divisibility = 16 : i32}, %arg28: i32, %arg29: i32, %arg30: i32) attributes {SyncBlockLockArgIdx = 0 : i64, WorkspaceArgIdx = 1 : i64, func_dyn_memref_args = dense<[false, true, true, true, true, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false]> : vector<31xi1>, hacc.entry, hacc.function_kind = #hacc.function_kind<DEVICE>, hivm.func_core_type = #hivm.func_core_type<AIC>, hivm.part_of_mix, hivm.storage_aligned, mix_mode = "mix", parallel_mode = "simd"} {
  %c2_i64 = arith.constant 2 : i64
  %c3_i64 = arith.constant 3 : i64
  %c3_i64_0 = arith.constant 3 : i64
  %c2_i64_1 = arith.constant 2 : i64
  %c1_i64 = arith.constant 1 : i64
  %c1_i64_2 = arith.constant 1 : i64
  %c1_i64_3 = arith.constant 1 : i64
  %c-1_i64 = arith.constant -1 : i64
  %c1_i64_4 = arith.constant 1 : i64
  %c-1_i64_5 = arith.constant -1 : i64
  %c98304_i64 = arith.constant 98304 : i64
  %c65536_i64 = arith.constant 65536 : i64
  %c32768_i64 = arith.constant 32768 : i64
  %c0_i64 = arith.constant 0 : i64
  %c128_i32 = arith.constant 128 : i32
  %c128 = arith.constant 128 : index
  %c0_i32 = arith.constant 0 : i32
  %cst = arith.constant 0.000000e+00 : bf16
  %true = arith.constant true
  hivm.hir.set_ffts_base_addr %arg0
  hivm.hir.set_mask_norm
  %0 = arith.muli %arg28, %arg29 : i32
  %1 = arith.muli %0, %arg30 : i32
  annotation.mark %1 {logical_block_num} : i32
  %2 = hivm.hir.get_block_idx -> i64
  %3 = arith.trunci %2 : i64 to i32
  %4 = arith.muli %arg30, %arg29 : i32
  %5 = arith.divsi %3, %4 : i32
  %6 = arith.remsi %5, %arg28 : i32
  %7 = arith.muli %arg7, %arg8 : i32
  %8 = arith.muli %7, %arg12 : i32
  hivm.hir.sync_block_set[<CUBE>, <PIPE_MTE2>, <PIPE_S>] flag = 2
  %9 = arith.index_cast %arg18 : i32 to index
  %10 = arith.index_cast %arg9 : i32 to index
  %11 = arith.index_cast %arg11 : i32 to index
  %12 = affine.max affine_map<()[s0] -> (0, s0)>()[%11]
  %13 = affine.min affine_map<()[s0] -> (128, s0)>()[%12]
  %14 = affine.max affine_map<()[s0] -> (0, s0)>()[%13]
  %15 = arith.cmpi slt, %14, %c128 : index
  %16 = arith.index_cast %arg21 : i32 to index
  %17 = arith.index_cast %arg10 : i32 to index
  %18 = arith.index_cast %arg24 : i32 to index
  %19 = arith.index_cast %2 : i64 to index
  %20 = affine.apply affine_map<()[s0] -> (s0 * 163840)>()[%19]
  %view = memref.view %arg2[%20][] : memref<?xi8, #hivm.address_space<gm>> to memref<128x128xf32, #hivm.address_space<gm>>
  %21 = affine.apply affine_map<()[s0] -> (s0 * 163840 + 65536)>()[%19]
  %view_6 = memref.view %arg2[%21][] : memref<?xi8, #hivm.address_space<gm>> to memref<128x128xbf16, #hivm.address_space<gm>>
  %22 = affine.apply affine_map<()[s0] -> (s0 * 163840 + 98304)>()[%19]
  %view_7 = memref.view %arg2[%22][] : memref<?xi8, #hivm.address_space<gm>> to memref<128x128xf32, #hivm.address_space<gm>>
  hivm.hir.set_flag[<PIPE_M>, <PIPE_MTE1>, <EVENT_ID0>]
  hivm.hir.set_flag[<PIPE_M>, <PIPE_MTE1>, <EVENT_ID1>]
  hivm.hir.set_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID0>]
  hivm.hir.set_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID1>]
  hivm.hir.set_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID2>]
  hivm.hir.set_flag[<PIPE_FIX>, <PIPE_M>, <EVENT_ID0>]
  hivm.hir.set_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID3>]
  scf.for %arg31 = %6 to %8 step %arg28  : i32 {
    %23 = arith.divsi %arg31, %arg12 : i32
    %24 = arith.muli %23, %arg12 : i32
    %25 = arith.subi %arg31, %24 : i32
    %26 = arith.divsi %23, %arg8 : i32
    %27 = arith.muli %26, %arg8 : i32
    %28 = arith.subi %23, %27 : i32
    %29 = arith.muli %25, %c128_i32 : i32
    %30 = arith.muli %26, %arg16 : i32
    %31 = arith.index_cast %30 : i32 to index
    %32 = arith.muli %28, %arg17 : i32
    %33 = arith.index_cast %32 : i32 to index
    %34 = arith.index_cast %29 : i32 to index
    %35 = affine.apply affine_map<()[s0, s1, s2, s3] -> (s0 + s1 + s2 * s3)>()[%31, %33, %34, %9]
    %reinterpret_cast = memref.reinterpret_cast %arg3 to offset: [%35], sizes: [128, 128], strides: [%9, 1] : memref<?xbf16, #hivm.address_space<gm>> to memref<128x128xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
    %36 = hivm.hir.pointer_cast(%c0_i64) : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>>
    %cast = memref.cast %36 : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>> to memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>
    %37 = affine.max affine_map<()[s0, s1] -> (s1, s0)>()[%34, %10]
    %38 = affine.min affine_map<()[s0, s1] -> (s1 + 128, s0)>()[%37, %34]
    %39 = affine.min affine_map<()[s0, s1] -> (128, s0 - s1)>()[%38, %34]
    %40 = affine.max affine_map<()[s0] -> (0, s0)>()[%39]
    %41 = arith.cmpi slt, %40, %c128 : index
    %42 = arith.ori %41, %15 : i1
    %subview = memref.subview %reinterpret_cast[0, 0] [%40, %14] [1, 1] : memref<128x128xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>> to memref<?x?xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
    %43 = affine.apply affine_map<()[s0] -> ((s0 + 15) floordiv 16)>()[%40]
    %44 = affine.apply affine_map<()[s0] -> ((s0 + 15) floordiv 16)>()[%14]
    %subview_8 = memref.subview %36[0, 0, 0, 0] [%44, %43, 16, 16] [1, 1, 1, 1] : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>> to memref<?x?x16x16xbf16, strided<[2048, 256, 16, 1]>, #hivm.address_space<cbuf>>
    %cast_9 = memref.cast %subview_8 : memref<?x?x16x16xbf16, strided<[2048, 256, 16, 1]>, #hivm.address_space<cbuf>> to memref<?x?x?x?xbf16, strided<[?, ?, ?, 1], offset: ?>, #hivm.address_space<cbuf>>
    hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID0>]
    scf.if %42 {
      %collapse_shape = memref.collapse_shape %36 [[0, 1, 2, 3]] : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>> into memref<16384xbf16, #hivm.address_space<cbuf>>
      hivm.hir.pipe_barrier[<PIPE_MTE2>]
      hivm.hir.vbrc ins(%cst : bf16) outs(%collapse_shape : memref<16384xbf16, #hivm.address_space<cbuf>>)
    }
    hivm.hir.pipe_barrier[<PIPE_MTE2>]
    hivm.hir.nd2nz {dst_continuous} ins(%subview : memref<?x?xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>) outs(%cast_9 : memref<?x?x?x?xbf16, strided<[?, ?, ?, 1], offset: ?>, #hivm.address_space<cbuf>>) init_out_buffer = false
    hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_MTE1>, <EVENT_ID0>]
    %45 = arith.muli %26, %arg19 : i32
    %46 = arith.index_cast %45 : i32 to index
    %47 = arith.muli %28, %arg20 : i32
    %48 = arith.index_cast %47 : i32 to index
    %49 = arith.muli %26, %arg22 : i32
    %50 = arith.index_cast %49 : i32 to index
    %51 = arith.muli %28, %arg23 : i32
    %52 = arith.index_cast %51 : i32 to index
    %53 = arith.addi %29, %c128_i32 : i32
    %54 = arith.addi %53, %arg13 : i32
    %55 = arith.minsi %arg10, %54 : i32
    %56 = arith.maxsi %55, %c0_i32 : i32
    hivm.hir.wait_flag[<PIPE_MTE2>, <PIPE_MTE1>, <EVENT_ID0>]
    scf.for %arg32 = %c0_i32 to %56 step %c128_i32  : i32 {
      %57 = arith.index_cast %arg32 : i32 to index
      %58 = arith.index_cast %c0_i32 : i32 to index
      %59 = arith.index_cast %56 : i32 to index
      %60 = arith.index_cast %c128_i32 : i32 to index
      %61 = arith.index_cast %arg31 : i32 to index
      %62 = arith.index_cast %6 : i32 to index
      %63 = arith.index_cast %8 : i32 to index
      %64 = arith.index_cast %arg28 : i32 to index
      %65 = affine.apply affine_map<()[s0, s1, s2, s3, s4, s5, s6] -> ((s0 - s1) floordiv s3 + ((s4 - s5) floordiv s6) * ((-s1 + s2 + s3 - 1) floordiv s3))>()[%57, %58, %59, %60, %61, %62, %64]
      %66 = arith.index_cast %65 : index to i64
      %c0_i64_10 = arith.constant 0 : i64
      %67 = arith.index_cast %arg32 : i32 to index
      %68 = arith.index_cast %c0_i32 : i32 to index
      %69 = arith.index_cast %56 : i32 to index
      %70 = arith.index_cast %c128_i32 : i32 to index
      %71 = arith.index_cast %arg31 : i32 to index
      %72 = arith.index_cast %6 : i32 to index
      %73 = arith.index_cast %8 : i32 to index
      %74 = arith.index_cast %arg28 : i32 to index
      %75 = affine.apply affine_map<()[s0, s1, s2, s3, s4, s5, s6] -> ((s0 - s1) floordiv s3 + ((s4 - s5) floordiv s6) * ((-s1 + s2 + s3 - 1) floordiv s3))>()[%67, %68, %69, %70, %71, %72, %74]
      %76 = arith.index_cast %75 : index to i64
      %c0_i64_11 = arith.constant 0 : i64
      %77 = arith.index_cast %arg32 : i32 to index
      %78 = affine.apply affine_map<()[s0, s1, s2, s3] -> (s0 + s1 + s2 * s3)>()[%46, %48, %77, %16]
      %reinterpret_cast_12 = memref.reinterpret_cast %arg4 to offset: [%78], sizes: [128, 128], strides: [%16, 1] : memref<?xbf16, #hivm.address_space<gm>> to memref<128x128xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
      %79 = hivm.hir.pointer_cast(%c32768_i64) : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>>
      %cast_13 = memref.cast %79 : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>> to memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>
      %80 = affine.max affine_map<()[s0, s1] -> (s1, s0)>()[%77, %17]
      %81 = affine.min affine_map<()[s0, s1] -> (s1 + 128, s0)>()[%80, %77]
      %82 = affine.min affine_map<()[s0, s1] -> (128, s0 - s1)>()[%81, %77]
      %83 = affine.max affine_map<()[s0] -> (0, s0)>()[%82]
      %84 = arith.cmpi slt, %83, %c128 : index
      %85 = arith.ori %84, %15 : i1
      %subview_14 = memref.subview %reinterpret_cast_12[0, 0] [%83, %14] [1, 1] : memref<128x128xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>> to memref<?x?xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
      %86 = affine.apply affine_map<()[s0] -> ((s0 + 15) floordiv 16)>()[%83]
      %subview_15 = memref.subview %79[0, 0, 0, 0] [%44, %86, 16, 16] [1, 1, 1, 1] : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>> to memref<?x?x16x16xbf16, strided<[2048, 256, 16, 1]>, #hivm.address_space<cbuf>>
      %cast_16 = memref.cast %subview_15 : memref<?x?x16x16xbf16, strided<[2048, 256, 16, 1]>, #hivm.address_space<cbuf>> to memref<?x?x?x?xbf16, strided<[?, ?, ?, 1], offset: ?>, #hivm.address_space<cbuf>>
      hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID1>]
      scf.if %85 {
        %collapse_shape = memref.collapse_shape %79 [[0, 1, 2, 3]] : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>> into memref<16384xbf16, #hivm.address_space<cbuf>>
        hivm.hir.vbrc ins(%cst : bf16) outs(%collapse_shape : memref<16384xbf16, #hivm.address_space<cbuf>>)
      }
      hivm.hir.pipe_barrier[<PIPE_MTE2>]
      hivm.hir.nd2nz {dst_continuous} ins(%subview_14 : memref<?x?xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>) outs(%cast_16 : memref<?x?x?x?xbf16, strided<[?, ?, ?, 1], offset: ?>, #hivm.address_space<cbuf>>) init_out_buffer = false
      hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_MTE1>, <EVENT_ID1>]
      %87 = affine.apply affine_map<()[s0, s1, s2, s3] -> (s0 + s1 + s2 * s3)>()[%50, %52, %77, %18]
      %reinterpret_cast_17 = memref.reinterpret_cast %arg5 to offset: [%87], sizes: [128, 128], strides: [%18, 1] : memref<?xbf16, #hivm.address_space<gm>> to memref<128x128xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
      %88 = hivm.hir.pointer_cast(%c65536_i64) : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>>
      %cast_18 = memref.cast %88 : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>> to memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>
      %subview_19 = memref.subview %reinterpret_cast_17[0, 0] [%83, %14] [1, 1] : memref<128x128xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>> to memref<?x?xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
      %subview_20 = memref.subview %88[0, 0, 0, 0] [%44, %86, 16, 16] [1, 1, 1, 1] : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>> to memref<?x?x16x16xbf16, strided<[2048, 256, 16, 1]>, #hivm.address_space<cbuf>>
      %cast_21 = memref.cast %subview_20 : memref<?x?x16x16xbf16, strided<[2048, 256, 16, 1]>, #hivm.address_space<cbuf>> to memref<?x?x?x?xbf16, strided<[?, ?, ?, 1], offset: ?>, #hivm.address_space<cbuf>>
      hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID2>]
      scf.if %85 {
        %collapse_shape = memref.collapse_shape %88 [[0, 1, 2, 3]] : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>> into memref<16384xbf16, #hivm.address_space<cbuf>>
        hivm.hir.vbrc ins(%cst : bf16) outs(%collapse_shape : memref<16384xbf16, #hivm.address_space<cbuf>>)
      }
      hivm.hir.pipe_barrier[<PIPE_MTE2>]
      hivm.hir.nd2nz {dst_continuous} ins(%subview_19 : memref<?x?xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>) outs(%cast_21 : memref<?x?x?x?xbf16, strided<[?, ?, ?, 1], offset: ?>, #hivm.address_space<cbuf>>) init_out_buffer = false
      hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_MTE1>, <EVENT_ID3>]
      %89 = hivm.hir.pointer_cast(%c0_i64) : memref<8x8x16x16xf32, #hivm.address_space<cc>>
      %cast_22 = memref.cast %89 : memref<8x8x16x16xf32, #hivm.address_space<cc>> to memref<?x?x?x?xf32, #hivm.address_space<cc>>
      hivm.hir.wait_flag[<PIPE_FIX>, <PIPE_M>, <EVENT_ID0>]
      hivm.hir.mmadL1 {b_transpose, fixpipe_already_inserted = true} ins(%cast, %cast_13, %true, %40, %14, %83 : memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>, memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>, i1, index, index, index) outs(%cast_22 : memref<?x?x?x?xf32, #hivm.address_space<cc>>) sync_related_args(%c-1_i64_5, %c1_i64_2, %c-1_i64_5, %c1_i64, %76, %c0_i64_11, %c1_i64_4 : i64, i64, i64, i64, i64, i64, i64)
      hivm.hir.set_flag[<PIPE_M>, <PIPE_FIX>, <EVENT_ID0>]
      hivm.hir.sync_block_wait[<CUBE>, <PIPE_MTE2>, <PIPE_S>] flag = 0
      hivm.hir.wait_flag[<PIPE_M>, <PIPE_FIX>, <EVENT_ID0>]
      hivm.hir.fixpipe {enable_nz2nd} ins(%cast_22 : memref<?x?x?x?xf32, #hivm.address_space<cc>>) outs(%view : memref<128x128xf32, #hivm.address_space<gm>>)
      hivm.hir.set_flag[<PIPE_FIX>, <PIPE_M>, <EVENT_ID1>]
      annotation.mark %view : memref<128x128xf32, #hivm.address_space<gm>>
      hivm.hir.sync_block_set[<CUBE>, <PIPE_FIX>, <PIPE_S>] flag = 1
      hivm.hir.sync_block_wait[<CUBE>, <PIPE_MTE3>, <PIPE_S>] flag = 1
      %90 = hivm.hir.pointer_cast(%c98304_i64) : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>>
      %cast_23 = memref.cast %90 : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>> to memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>
      hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID3>]
      hivm.hir.nd2nz {dst_continuous} ins(%view_6 : memref<128x128xbf16, #hivm.address_space<gm>>) outs(%cast_23 : memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>) init_out_buffer = false
      hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_MTE1>, <EVENT_ID2>]
      hivm.hir.sync_block_set[<CUBE>, <PIPE_MTE2>, <PIPE_S>] flag = 2
      %91 = hivm.hir.pointer_cast(%c0_i64) : memref<8x8x16x16xf32, #hivm.address_space<cc>>
      %cast_24 = memref.cast %91 : memref<8x8x16x16xf32, #hivm.address_space<cc>> to memref<?x?x?x?xf32, #hivm.address_space<cc>>
      hivm.hir.wait_flag[<PIPE_FIX>, <PIPE_M>, <EVENT_ID1>]
      hivm.hir.mmadL1 {fixpipe_already_inserted = true} ins(%cast_23, %cast_18, %true, %c128, %c128, %14 : memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>, memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>, i1, index, index, index) outs(%cast_24 : memref<?x?x?x?xf32, #hivm.address_space<cc>>) sync_related_args(%c2_i64_1, %c3_i64_0, %c3_i64, %c2_i64, %66, %c0_i64_10, %c1_i64_3 : i64, i64, i64, i64, i64, i64, i64)
      hivm.hir.set_flag[<PIPE_M>, <PIPE_FIX>, <EVENT_ID1>]
      hivm.hir.sync_block_wait[<CUBE>, <PIPE_MTE2>, <PIPE_S>] flag = 3
      hivm.hir.wait_flag[<PIPE_M>, <PIPE_FIX>, <EVENT_ID1>]
      hivm.hir.fixpipe {enable_nz2nd} ins(%cast_24 : memref<?x?x?x?xf32, #hivm.address_space<cc>>) outs(%view_7 : memref<128x128xf32, #hivm.address_space<gm>>)
      hivm.hir.set_flag[<PIPE_FIX>, <PIPE_M>, <EVENT_ID0>]
      annotation.mark %view_7 : memref<128x128xf32, #hivm.address_space<gm>>
      hivm.hir.sync_block_set[<CUBE>, <PIPE_FIX>, <PIPE_S>] flag = 1
    }
    hivm.hir.set_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID0>]
  }
  hivm.hir.wait_flag[<PIPE_M>, <PIPE_MTE1>, <EVENT_ID0>]
  hivm.hir.wait_flag[<PIPE_M>, <PIPE_MTE1>, <EVENT_ID1>]
  hivm.hir.pipe_barrier[<PIPE_ALL>]
  hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID0>]
  hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID1>]
  hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID2>]
  hivm.hir.wait_flag[<PIPE_FIX>, <PIPE_M>, <EVENT_ID0>]
  hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID3>]
  hivm.hir.sync_block_wait[<CUBE>, <PIPE_MTE2>, <PIPE_S>] flag = 0
  hivm.hir.sync_block_wait[<CUBE>, <PIPE_MTE2>, <PIPE_S>] flag = 3
  return
}

// -----// IR Dump After InjectSync (hivm-inject-sync) //----- //
func.func @_flex_attn_fwd_kernel_mix_aic(%arg0: i64 {hacc.arg_type = #hacc.arg_type<ffts_base_address>}, %arg1: memref<?xi8, #hivm.address_space<gm>> {hacc.arg_type = #hacc.arg_type<sync_block_lock>}, %arg2: memref<?xi8, #hivm.address_space<gm>> {hacc.arg_type = #hacc.arg_type<workspace>}, %arg3: memref<?xbf16, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg4: memref<?xbf16, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg5: memref<?xbf16, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 0 : i32}, %arg6: memref<?xbf16, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 1 : i32}, %arg7: i32, %arg8: i32 {tt.divisibility = 16 : i32}, %arg9: i32 {tt.divisibility = 16 : i32}, %arg10: i32 {tt.divisibility = 16 : i32}, %arg11: i32 {tt.divisibility = 16 : i32}, %arg12: i32 {tt.divisibility = 16 : i32}, %arg13: i32 {tt.divisibility = 16 : i32}, %arg14: f32, %arg15: f32, %arg16: i32 {tt.divisibility = 16 : i32}, %arg17: i32 {tt.divisibility = 16 : i32}, %arg18: i32 {tt.divisibility = 16 : i32}, %arg19: i32 {tt.divisibility = 16 : i32}, %arg20: i32 {tt.divisibility = 16 : i32}, %arg21: i32 {tt.divisibility = 16 : i32}, %arg22: i32 {tt.divisibility = 16 : i32}, %arg23: i32 {tt.divisibility = 16 : i32}, %arg24: i32 {tt.divisibility = 16 : i32}, %arg25: i32 {tt.divisibility = 16 : i32}, %arg26: i32 {tt.divisibility = 16 : i32}, %arg27: i32 {tt.divisibility = 16 : i32}, %arg28: i32, %arg29: i32, %arg30: i32) attributes {SyncBlockLockArgIdx = 0 : i64, WorkspaceArgIdx = 1 : i64, func_dyn_memref_args = dense<[false, true, true, true, true, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false]> : vector<31xi1>, hacc.entry, hacc.function_kind = #hacc.function_kind<DEVICE>, hivm.func_core_type = #hivm.func_core_type<AIC>, hivm.part_of_mix, hivm.storage_aligned, mix_mode = "mix", parallel_mode = "simd"} {
  %c2_i64 = arith.constant 2 : i64
  %c3_i64 = arith.constant 3 : i64
  %c3_i64_0 = arith.constant 3 : i64
  %c2_i64_1 = arith.constant 2 : i64
  %c1_i64 = arith.constant 1 : i64
  %c1_i64_2 = arith.constant 1 : i64
  %c1_i64_3 = arith.constant 1 : i64
  %c-1_i64 = arith.constant -1 : i64
  %c1_i64_4 = arith.constant 1 : i64
  %c-1_i64_5 = arith.constant -1 : i64
  %c98304_i64 = arith.constant 98304 : i64
  %c65536_i64 = arith.constant 65536 : i64
  %c32768_i64 = arith.constant 32768 : i64
  %c0_i64 = arith.constant 0 : i64
  %c128_i32 = arith.constant 128 : i32
  %c128 = arith.constant 128 : index
  %c0_i32 = arith.constant 0 : i32
  %cst = arith.constant 0.000000e+00 : bf16
  %true = arith.constant true
  hivm.hir.set_ffts_base_addr %arg0
  hivm.hir.set_mask_norm
  %0 = arith.muli %arg28, %arg29 : i32
  %1 = arith.muli %0, %arg30 : i32
  annotation.mark %1 {logical_block_num} : i32
  %2 = hivm.hir.get_block_idx -> i64
  %3 = arith.trunci %2 : i64 to i32
  %4 = arith.muli %arg30, %arg29 : i32
  %5 = arith.divsi %3, %4 : i32
  %6 = arith.remsi %5, %arg28 : i32
  %7 = arith.muli %arg7, %arg8 : i32
  %8 = arith.muli %7, %arg12 : i32
  hivm.hir.sync_block_set[<CUBE>, <PIPE_MTE2>, <PIPE_S>] flag = 2
  %9 = arith.index_cast %arg18 : i32 to index
  %10 = arith.index_cast %arg9 : i32 to index
  %11 = arith.index_cast %arg11 : i32 to index
  %12 = affine.max affine_map<()[s0] -> (0, s0)>()[%11]
  %13 = affine.min affine_map<()[s0] -> (128, s0)>()[%12]
  %14 = affine.max affine_map<()[s0] -> (0, s0)>()[%13]
  %15 = arith.cmpi slt, %14, %c128 : index
  %16 = arith.index_cast %arg21 : i32 to index
  %17 = arith.index_cast %arg10 : i32 to index
  %18 = arith.index_cast %arg24 : i32 to index
  %19 = arith.index_cast %2 : i64 to index
  %20 = affine.apply affine_map<()[s0] -> (s0 * 163840)>()[%19]
  %view = memref.view %arg2[%20][] : memref<?xi8, #hivm.address_space<gm>> to memref<128x128xf32, #hivm.address_space<gm>>
  %21 = affine.apply affine_map<()[s0] -> (s0 * 163840 + 65536)>()[%19]
  %view_6 = memref.view %arg2[%21][] : memref<?xi8, #hivm.address_space<gm>> to memref<128x128xbf16, #hivm.address_space<gm>>
  %22 = affine.apply affine_map<()[s0] -> (s0 * 163840 + 98304)>()[%19]
  %view_7 = memref.view %arg2[%22][] : memref<?xi8, #hivm.address_space<gm>> to memref<128x128xf32, #hivm.address_space<gm>>
  hivm.hir.set_flag[<PIPE_M>, <PIPE_MTE1>, <EVENT_ID0>]
  hivm.hir.set_flag[<PIPE_M>, <PIPE_MTE1>, <EVENT_ID1>]
  hivm.hir.set_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID0>]
  hivm.hir.set_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID1>]
  hivm.hir.set_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID2>]
  hivm.hir.set_flag[<PIPE_FIX>, <PIPE_M>, <EVENT_ID0>]
  hivm.hir.set_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID3>]
  scf.for %arg31 = %6 to %8 step %arg28  : i32 {
    %23 = arith.divsi %arg31, %arg12 : i32
    %24 = arith.muli %23, %arg12 : i32
    %25 = arith.subi %arg31, %24 : i32
    %26 = arith.divsi %23, %arg8 : i32
    %27 = arith.muli %26, %arg8 : i32
    %28 = arith.subi %23, %27 : i32
    %29 = arith.muli %25, %c128_i32 : i32
    %30 = arith.muli %26, %arg16 : i32
    %31 = arith.index_cast %30 : i32 to index
    %32 = arith.muli %28, %arg17 : i32
    %33 = arith.index_cast %32 : i32 to index
    %34 = arith.index_cast %29 : i32 to index
    %35 = affine.apply affine_map<()[s0, s1, s2, s3] -> (s0 + s1 + s2 * s3)>()[%31, %33, %34, %9]
    %reinterpret_cast = memref.reinterpret_cast %arg3 to offset: [%35], sizes: [128, 128], strides: [%9, 1] : memref<?xbf16, #hivm.address_space<gm>> to memref<128x128xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
    %36 = hivm.hir.pointer_cast(%c0_i64) : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>>
    %cast = memref.cast %36 : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>> to memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>
    %37 = affine.max affine_map<()[s0, s1] -> (s1, s0)>()[%34, %10]
    %38 = affine.min affine_map<()[s0, s1] -> (s1 + 128, s0)>()[%37, %34]
    %39 = affine.min affine_map<()[s0, s1] -> (128, s0 - s1)>()[%38, %34]
    %40 = affine.max affine_map<()[s0] -> (0, s0)>()[%39]
    %41 = arith.cmpi slt, %40, %c128 : index
    %42 = arith.ori %41, %15 : i1
    %subview = memref.subview %reinterpret_cast[0, 0] [%40, %14] [1, 1] : memref<128x128xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>> to memref<?x?xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
    %43 = affine.apply affine_map<()[s0] -> ((s0 + 15) floordiv 16)>()[%40]
    %44 = affine.apply affine_map<()[s0] -> ((s0 + 15) floordiv 16)>()[%14]
    %subview_8 = memref.subview %36[0, 0, 0, 0] [%44, %43, 16, 16] [1, 1, 1, 1] : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>> to memref<?x?x16x16xbf16, strided<[2048, 256, 16, 1]>, #hivm.address_space<cbuf>>
    %cast_9 = memref.cast %subview_8 : memref<?x?x16x16xbf16, strided<[2048, 256, 16, 1]>, #hivm.address_space<cbuf>> to memref<?x?x?x?xbf16, strided<[?, ?, ?, 1], offset: ?>, #hivm.address_space<cbuf>>
    hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID0>]
    scf.if %42 {
      %collapse_shape = memref.collapse_shape %36 [[0, 1, 2, 3]] : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>> into memref<16384xbf16, #hivm.address_space<cbuf>>
      hivm.hir.pipe_barrier[<PIPE_MTE2>]
      hivm.hir.vbrc ins(%cst : bf16) outs(%collapse_shape : memref<16384xbf16, #hivm.address_space<cbuf>>)
    }
    hivm.hir.pipe_barrier[<PIPE_MTE2>]
    hivm.hir.nd2nz {dst_continuous} ins(%subview : memref<?x?xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>) outs(%cast_9 : memref<?x?x?x?xbf16, strided<[?, ?, ?, 1], offset: ?>, #hivm.address_space<cbuf>>) init_out_buffer = false
    hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_MTE1>, <EVENT_ID0>]
    %45 = arith.muli %26, %arg19 : i32
    %46 = arith.index_cast %45 : i32 to index
    %47 = arith.muli %28, %arg20 : i32
    %48 = arith.index_cast %47 : i32 to index
    %49 = arith.muli %26, %arg22 : i32
    %50 = arith.index_cast %49 : i32 to index
    %51 = arith.muli %28, %arg23 : i32
    %52 = arith.index_cast %51 : i32 to index
    %53 = arith.addi %29, %c128_i32 : i32
    %54 = arith.addi %53, %arg13 : i32
    %55 = arith.minsi %arg10, %54 : i32
    %56 = arith.maxsi %55, %c0_i32 : i32
    hivm.hir.wait_flag[<PIPE_MTE2>, <PIPE_MTE1>, <EVENT_ID0>]
    scf.for %arg32 = %c0_i32 to %56 step %c128_i32  : i32 {
      %57 = arith.index_cast %arg32 : i32 to index
      %58 = arith.index_cast %c0_i32 : i32 to index
      %59 = arith.index_cast %56 : i32 to index
      %60 = arith.index_cast %c128_i32 : i32 to index
      %61 = arith.index_cast %arg31 : i32 to index
      %62 = arith.index_cast %6 : i32 to index
      %63 = arith.index_cast %8 : i32 to index
      %64 = arith.index_cast %arg28 : i32 to index
      %65 = affine.apply affine_map<()[s0, s1, s2, s3, s4, s5, s6] -> ((s0 - s1) floordiv s3 + ((s4 - s5) floordiv s6) * ((-s1 + s2 + s3 - 1) floordiv s3))>()[%57, %58, %59, %60, %61, %62, %64]
      %66 = arith.index_cast %65 : index to i64
      %c0_i64_10 = arith.constant 0 : i64
      %67 = arith.index_cast %arg32 : i32 to index
      %68 = arith.index_cast %c0_i32 : i32 to index
      %69 = arith.index_cast %56 : i32 to index
      %70 = arith.index_cast %c128_i32 : i32 to index
      %71 = arith.index_cast %arg31 : i32 to index
      %72 = arith.index_cast %6 : i32 to index
      %73 = arith.index_cast %8 : i32 to index
      %74 = arith.index_cast %arg28 : i32 to index
      %75 = affine.apply affine_map<()[s0, s1, s2, s3, s4, s5, s6] -> ((s0 - s1) floordiv s3 + ((s4 - s5) floordiv s6) * ((-s1 + s2 + s3 - 1) floordiv s3))>()[%67, %68, %69, %70, %71, %72, %74]
      %76 = arith.index_cast %75 : index to i64
      %c0_i64_11 = arith.constant 0 : i64
      %77 = arith.index_cast %arg32 : i32 to index
      %78 = affine.apply affine_map<()[s0, s1, s2, s3] -> (s0 + s1 + s2 * s3)>()[%46, %48, %77, %16]
      %reinterpret_cast_12 = memref.reinterpret_cast %arg4 to offset: [%78], sizes: [128, 128], strides: [%16, 1] : memref<?xbf16, #hivm.address_space<gm>> to memref<128x128xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
      %79 = hivm.hir.pointer_cast(%c32768_i64) : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>>
      %cast_13 = memref.cast %79 : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>> to memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>
      %80 = affine.max affine_map<()[s0, s1] -> (s1, s0)>()[%77, %17]
      %81 = affine.min affine_map<()[s0, s1] -> (s1 + 128, s0)>()[%80, %77]
      %82 = affine.min affine_map<()[s0, s1] -> (128, s0 - s1)>()[%81, %77]
      %83 = affine.max affine_map<()[s0] -> (0, s0)>()[%82]
      %84 = arith.cmpi slt, %83, %c128 : index
      %85 = arith.ori %84, %15 : i1
      %subview_14 = memref.subview %reinterpret_cast_12[0, 0] [%83, %14] [1, 1] : memref<128x128xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>> to memref<?x?xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
      %86 = affine.apply affine_map<()[s0] -> ((s0 + 15) floordiv 16)>()[%83]
      %subview_15 = memref.subview %79[0, 0, 0, 0] [%44, %86, 16, 16] [1, 1, 1, 1] : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>> to memref<?x?x16x16xbf16, strided<[2048, 256, 16, 1]>, #hivm.address_space<cbuf>>
      %cast_16 = memref.cast %subview_15 : memref<?x?x16x16xbf16, strided<[2048, 256, 16, 1]>, #hivm.address_space<cbuf>> to memref<?x?x?x?xbf16, strided<[?, ?, ?, 1], offset: ?>, #hivm.address_space<cbuf>>
      hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID1>]
      scf.if %85 {
        %collapse_shape = memref.collapse_shape %79 [[0, 1, 2, 3]] : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>> into memref<16384xbf16, #hivm.address_space<cbuf>>
        hivm.hir.vbrc ins(%cst : bf16) outs(%collapse_shape : memref<16384xbf16, #hivm.address_space<cbuf>>)
      }
      hivm.hir.pipe_barrier[<PIPE_MTE2>]
      hivm.hir.nd2nz {dst_continuous} ins(%subview_14 : memref<?x?xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>) outs(%cast_16 : memref<?x?x?x?xbf16, strided<[?, ?, ?, 1], offset: ?>, #hivm.address_space<cbuf>>) init_out_buffer = false
      hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_MTE1>, <EVENT_ID1>]
      %87 = affine.apply affine_map<()[s0, s1, s2, s3] -> (s0 + s1 + s2 * s3)>()[%50, %52, %77, %18]
      %reinterpret_cast_17 = memref.reinterpret_cast %arg5 to offset: [%87], sizes: [128, 128], strides: [%18, 1] : memref<?xbf16, #hivm.address_space<gm>> to memref<128x128xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
      %88 = hivm.hir.pointer_cast(%c65536_i64) : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>>
      %cast_18 = memref.cast %88 : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>> to memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>
      %subview_19 = memref.subview %reinterpret_cast_17[0, 0] [%83, %14] [1, 1] : memref<128x128xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>> to memref<?x?xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>
      %subview_20 = memref.subview %88[0, 0, 0, 0] [%44, %86, 16, 16] [1, 1, 1, 1] : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>> to memref<?x?x16x16xbf16, strided<[2048, 256, 16, 1]>, #hivm.address_space<cbuf>>
      %cast_21 = memref.cast %subview_20 : memref<?x?x16x16xbf16, strided<[2048, 256, 16, 1]>, #hivm.address_space<cbuf>> to memref<?x?x?x?xbf16, strided<[?, ?, ?, 1], offset: ?>, #hivm.address_space<cbuf>>
      hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID2>]
      scf.if %85 {
        %collapse_shape = memref.collapse_shape %88 [[0, 1, 2, 3]] : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>> into memref<16384xbf16, #hivm.address_space<cbuf>>
        hivm.hir.vbrc ins(%cst : bf16) outs(%collapse_shape : memref<16384xbf16, #hivm.address_space<cbuf>>)
      }
      hivm.hir.pipe_barrier[<PIPE_MTE2>]
      hivm.hir.nd2nz {dst_continuous} ins(%subview_19 : memref<?x?xbf16, strided<[?, 1], offset: ?>, #hivm.address_space<gm>>) outs(%cast_21 : memref<?x?x?x?xbf16, strided<[?, ?, ?, 1], offset: ?>, #hivm.address_space<cbuf>>) init_out_buffer = false
      hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_MTE1>, <EVENT_ID3>]
      %89 = hivm.hir.pointer_cast(%c0_i64) : memref<8x8x16x16xf32, #hivm.address_space<cc>>
      %cast_22 = memref.cast %89 : memref<8x8x16x16xf32, #hivm.address_space<cc>> to memref<?x?x?x?xf32, #hivm.address_space<cc>>
      hivm.hir.wait_flag[<PIPE_FIX>, <PIPE_M>, <EVENT_ID0>]
      hivm.hir.mmadL1 {b_transpose, fixpipe_already_inserted = true} ins(%cast, %cast_13, %true, %40, %14, %83 : memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>, memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>, i1, index, index, index) outs(%cast_22 : memref<?x?x?x?xf32, #hivm.address_space<cc>>) sync_related_args(%c-1_i64_5, %c1_i64_2, %c-1_i64_5, %c1_i64, %76, %c0_i64_11, %c1_i64_4 : i64, i64, i64, i64, i64, i64, i64)
      hivm.hir.set_flag[<PIPE_M>, <PIPE_FIX>, <EVENT_ID0>]
      hivm.hir.sync_block_wait[<CUBE>, <PIPE_MTE2>, <PIPE_S>] flag = 0
      hivm.hir.wait_flag[<PIPE_M>, <PIPE_FIX>, <EVENT_ID0>]
      hivm.hir.fixpipe {enable_nz2nd} ins(%cast_22 : memref<?x?x?x?xf32, #hivm.address_space<cc>>) outs(%view : memref<128x128xf32, #hivm.address_space<gm>>)
      hivm.hir.set_flag[<PIPE_FIX>, <PIPE_M>, <EVENT_ID1>]
      annotation.mark %view : memref<128x128xf32, #hivm.address_space<gm>>
      hivm.hir.sync_block_set[<CUBE>, <PIPE_FIX>, <PIPE_S>] flag = 1
      hivm.hir.sync_block_wait[<CUBE>, <PIPE_MTE3>, <PIPE_S>] flag = 1
      %90 = hivm.hir.pointer_cast(%c98304_i64) : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>>
      %cast_23 = memref.cast %90 : memref<8x8x16x16xbf16, #hivm.address_space<cbuf>> to memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>
      hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID3>]
      hivm.hir.nd2nz {dst_continuous} ins(%view_6 : memref<128x128xbf16, #hivm.address_space<gm>>) outs(%cast_23 : memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>) init_out_buffer = false
      hivm.hir.set_flag[<PIPE_MTE2>, <PIPE_MTE1>, <EVENT_ID2>]
      hivm.hir.sync_block_set[<CUBE>, <PIPE_MTE2>, <PIPE_S>] flag = 2
      %91 = hivm.hir.pointer_cast(%c0_i64) : memref<8x8x16x16xf32, #hivm.address_space<cc>>
      %cast_24 = memref.cast %91 : memref<8x8x16x16xf32, #hivm.address_space<cc>> to memref<?x?x?x?xf32, #hivm.address_space<cc>>
      hivm.hir.wait_flag[<PIPE_FIX>, <PIPE_M>, <EVENT_ID1>]
      hivm.hir.mmadL1 {fixpipe_already_inserted = true} ins(%cast_23, %cast_18, %true, %c128, %c128, %14 : memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>, memref<?x?x?x?xbf16, #hivm.address_space<cbuf>>, i1, index, index, index) outs(%cast_24 : memref<?x?x?x?xf32, #hivm.address_space<cc>>) sync_related_args(%c2_i64_1, %c3_i64_0, %c3_i64, %c2_i64, %66, %c0_i64_10, %c1_i64_3 : i64, i64, i64, i64, i64, i64, i64)
      hivm.hir.set_flag[<PIPE_M>, <PIPE_FIX>, <EVENT_ID1>]
      hivm.hir.sync_block_wait[<CUBE>, <PIPE_MTE2>, <PIPE_S>] flag = 3
      hivm.hir.wait_flag[<PIPE_M>, <PIPE_FIX>, <EVENT_ID1>]
      hivm.hir.fixpipe {enable_nz2nd} ins(%cast_24 : memref<?x?x?x?xf32, #hivm.address_space<cc>>) outs(%view_7 : memref<128x128xf32, #hivm.address_space<gm>>)
      hivm.hir.set_flag[<PIPE_FIX>, <PIPE_M>, <EVENT_ID0>]
      annotation.mark %view_7 : memref<128x128xf32, #hivm.address_space<gm>>
      hivm.hir.sync_block_set[<CUBE>, <PIPE_FIX>, <PIPE_S>] flag = 1
    }
    hivm.hir.set_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID0>]
  }
  hivm.hir.wait_flag[<PIPE_M>, <PIPE_MTE1>, <EVENT_ID0>]
  hivm.hir.wait_flag[<PIPE_M>, <PIPE_MTE1>, <EVENT_ID1>]
  hivm.hir.pipe_barrier[<PIPE_ALL>]
  hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID0>]
  hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID1>]
  hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID2>]
  hivm.hir.wait_flag[<PIPE_FIX>, <PIPE_M>, <EVENT_ID0>]
  hivm.hir.wait_flag[<PIPE_MTE1>, <PIPE_MTE2>, <EVENT_ID3>]
  hivm.hir.sync_block_wait[<CUBE>, <PIPE_MTE2>, <PIPE_S>] flag = 0
  hivm.hir.sync_block_wait[<CUBE>, <PIPE_MTE2>, <PIPE_S>] flag = 3
  return
}

loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":74:0): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":74:0): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":74:0): warning: Overwriting the target by the pass option...
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":74:0): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":74:0): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":74:0): warning: Overwriting the target by the pass option...
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":74:0): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":74:0): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":74:0): warning: Overwriting the target by the pass option...
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":74:0): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":74:0): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":74:0): warning: Overwriting the target by the pass option...
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":74:0): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":74:0): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): loc("/holoc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":74:0): error: Failed to run BiShengHIR pipeline

loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":74:0): error: ub overflow, requires 3477504 bits while 1572864 bits available! (possible reason: tiling basic block is too large or block number is more than what user expect due to multi-buffer feature is enabled and some ops need extra local buffer.)
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): error: 'hivm.hir.load' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): error: 'hivm.hir.load' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): error: 'hivm.hir.load' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): error: 'hivm.hir.load' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): error: 'hivm.hir.load' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): error: 'hivm.hir.load' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): error: 'hivm.hir.load' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): error: 'hivm.hir.load' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): error: 'hivm.hir.load' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): error: 'hivm.hir.load' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): error: 'hivm.hir.vcast' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): error: 'hivm.hir.vcast' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): error: 'hivm.hir.vcast' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): error: 'hivm.hir.vcast' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): error: 'hivm.hir.vcast' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): error: 'hivm.hir.vcast' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): error: 'hivm.hir.vcast' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): error: 'hivm.hir.vcast' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): error: 'hivm.hir.vcast' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): error: 'hivm.hir.vcast' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":74:0): error: Failed to run BiShengHIR pipeline

loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":74:0): error: ub overflow, requires 3477504 bits while 1572864 bits available! (possible reason: tiling basic block is too large or block number is more than what user expect due to multi-buffer feature is enabled and some ops need extra local buffer.)
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): error: 'hivm.hir.load' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): error: 'hivm.hir.load' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): error: 'hivm.hir.load' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): error: 'hivm.hir.load' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): error: 'hivm.hir.load' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): error: 'hivm.hir.load' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): error: 'hivm.hir.load' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): error: 'hivm.hir.load' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): error: 'hivm.hir.load' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): error: 'hivm.hir.load' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): error: 'hivm.hir.vcast' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): error: 'hivm.hir.vcast' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): error: 'hivm.hir.vcast' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): error: 'hivm.hir.vcast' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): error: 'hivm.hir.vcast' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): error: 'hivm.hir.vcast' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): error: 'hivm.hir.vcast' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): error: 'hivm.hir.vcast' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): error: 'hivm.hir.vcast' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): error: 'hivm.hir.vcast' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":74:0): error: Failed to run BiShengHIR pipeline

loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":74:0): error: ub overflow, requires 3477504 bits while 1572864 bits available! (possible reason: tiling basic block is too large or block number is more than what user expect due to multi-buffer feature is enabled and some ops need extra local buffer.)
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): error: 'hivm.hir.load' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): error: 'hivm.hir.load' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): error: 'hivm.hir.load' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): error: 'hivm.hir.load' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): error: 'hivm.hir.load' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): error: 'hivm.hir.load' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): error: 'hivm.hir.load' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): error: 'hivm.hir.load' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): error: 'hivm.hir.load' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): error: 'hivm.hir.load' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): error: 'hivm.hir.vcast' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): error: 'hivm.hir.vcast' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): error: 'hivm.hir.vcast' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): error: 'hivm.hir.vcast' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): error: 'hivm.hir.vcast' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): error: 'hivm.hir.vcast' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): error: 'hivm.hir.vcast' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): error: 'hivm.hir.vcast' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): error: 'hivm.hir.vcast' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): error: 'hivm.hir.vcast' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":74:0): error: Failed to run BiShengHIR pipeline

loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":74:0): error: ub overflow, requires 3477504 bits while 1572864 bits available! (possible reason: tiling basic block is too large or block number is more than what user expect due to multi-buffer feature is enabled and some ops need extra local buffer.)
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): error: 'hivm.hir.load' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): error: 'hivm.hir.load' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): error: 'hivm.hir.load' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): error: 'hivm.hir.load' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): error: 'hivm.hir.load' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): error: 'hivm.hir.load' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): error: 'hivm.hir.load' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): error: 'hivm.hir.load' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): error: 'hivm.hir.load' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): error: 'hivm.hir.load' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): error: 'hivm.hir.vcast' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): error: 'hivm.hir.vcast' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): error: 'hivm.hir.vcast' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): error: 'hivm.hir.vcast' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): error: 'hivm.hir.vcast' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): error: 'hivm.hir.vcast' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): error: 'hivm.hir.vcast' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): error: 'hivm.hir.vcast' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): error: 'hivm.hir.vcast' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): error: 'hivm.hir.vcast' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":74:0): error: Failed to run BiShengHIR pipeline

loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":74:0): error: ub overflow, requires 3477504 bits while 1572864 bits available! (possible reason: tiling basic block is too large or block number is more than what user expect due to multi-buffer feature is enabled and some ops need extra local buffer.)
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): error: 'hivm.hir.load' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): error: 'hivm.hir.load' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): error: 'hivm.hir.load' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): error: 'hivm.hir.load' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): error: 'hivm.hir.load' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): error: 'hivm.hir.load' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): error: 'hivm.hir.load' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): error: 'hivm.hir.load' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): error: 'hivm.hir.load' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:39): error: 'hivm.hir.load' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): error: 'hivm.hir.vcast' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): error: 'hivm.hir.vcast' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): error: 'hivm.hir.vcast' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): error: 'hivm.hir.vcast' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): error: 'hivm.hir.vcast' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): error: 'hivm.hir.vcast' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): error: 'hivm.hir.vcast' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): error: 'hivm.hir.vcast' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): error: 'hivm.hir.vcast' op Unsupported op for finding the root alloc.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":150:29): error: 'hivm.hir.vcast' op Unsupported op for finding the root alloc.
[ERROR] Failed to run BiShengIR pipeline
me/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/103_FlexAttentionFwd/output/opt_iter_0/optimized_code.py":74:0): warning: Overwriting the target by the pass option...
