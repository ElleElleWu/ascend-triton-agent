// -----// IR Dump After InjectSync (hivm-inject-sync) //----- //
func.func @_etab_inv_w2_kernel(%arg0: i64 {hacc.arg_type = #hacc.arg_type<ffts_base_address>}, %arg1: memref<?xi8, #hivm.address_space<gm>> {hacc.arg_type = #hacc.arg_type<sync_block_lock>}, %arg2: memref<?xi8, #hivm.address_space<gm>> {hacc.arg_type = #hacc.arg_type<workspace>}, %arg3: memref<?xf32, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 1 : i32}, %arg4: i32 {tt.divisibility = 16 : i32}, %arg5: i32 {tt.divisibility = 16 : i32}, %arg6: i32 {tt.divisibility = 16 : i32}, %arg7: i32, %arg8: i32, %arg9: i32, %arg10: f32, %arg11: f32, %arg12: i32, %arg13: i32, %arg14: i32) attributes {SyncBlockLockArgIdx = 0 : i64, WorkspaceArgIdx = 1 : i64, func_dyn_memref_args = dense<[false, true, true, true, false, false, false, false, false, false, false, false, false, false, false]> : vector<15xi1>, hacc.entry, hacc.function_kind = #hacc.function_kind<DEVICE>, hivm.func_core_type = #hivm.func_core_type<AIV>, hivm.storage_aligned, mix_mode = "aiv", parallel_mode = "simd"} {
  %c1024 = arith.constant 1024 : index
  %c0_i64 = arith.constant 0 : i64
  %c55296_i64 = arith.constant 55296 : i64
  %c51200_i64 = arith.constant 51200 : i64
  %c47104_i64 = arith.constant 47104 : i64
  %c43008_i64 = arith.constant 43008 : i64
  %c22528_i64 = arith.constant 22528 : i64
  %c38912_i64 = arith.constant 38912 : i64
  %c34816_i64 = arith.constant 34816 : i64
  %c32768_i64 = arith.constant 32768 : i64
  %c30720_i64 = arith.constant 30720 : i64
  %c26624_i64 = arith.constant 26624 : i64
  %c24576_i64 = arith.constant 24576 : i64
  %c67584_i64 = arith.constant 67584 : i64
  %c59392_i64 = arith.constant 59392 : i64
  %c20480_i64 = arith.constant 20480 : i64
  %c16384_i64 = arith.constant 16384 : i64
  %c12288_i64 = arith.constant 12288 : i64
  %c8192_i64 = arith.constant 8192 : i64
  %c4096_i64 = arith.constant 4096 : i64
  %cst = arith.constant 0.000000e+00 : f16
  %cst_0 = arith.constant -1.000000e+00 : f32
  %cst_1 = arith.constant -0.166666582 : f32
  %cst_2 = arith.constant 8.333050e-03 : f32
  %cst_3 = arith.constant -1.98089445E-4 : f32
  %cst_4 = arith.constant 2.60492652E-6 : f32
  %cst_5 = arith.constant -2.000000e+00 : f32
  %cst_6 = arith.constant 4.000000e+00 : f32
  %cst_7 = arith.constant -4.37113883E-8 : f32
  %cst_8 = arith.constant 1.24467439E-13 : f32
  %cst_9 = arith.constant -1.74122761E-9 : f32
  %cst_10 = arith.constant 1.57079637 : f32
  %cst_11 = arith.constant -8.9071691E-6 : f32
  %cst_12 = arith.constant 3.14160156 : f32
  %cst_13 = arith.constant 2.048000e+03 : f32
  %cst_14 = arith.constant 4.8828125E-4 : f32
  %cst_15 = arith.constant 5.000000e-01 : f32
  %cst_16 = arith.constant 0.318309873 : f32
  %c0 = arith.constant 0 : index
  %c1 = arith.constant 1 : index
  %cst_17 = arith.constant 0.000000e+00 : f32
  %cst_18 = arith.constant 2.000000e+00 : f32
  %cst_19 = arith.constant 1.000000e+00 : f32
  %c0_i32 = arith.constant 0 : i32
  %c1024_i32 = arith.constant 1024 : i32
  %c2_i32 = arith.constant 2 : i32
  %cst_20 = arith.constant 6.28318548 : f32
  hivm.hir.set_mask_norm
  %0 = arith.muli %arg12, %arg13 : i32
  %1 = arith.muli %0, %arg14 : i32
  annotation.mark %1 {logical_block_num} : i32
  %2 = hivm.hir.get_block_idx -> i64
  %3 = arith.trunci %2 : i64 to i32
  %4 = arith.muli %arg14, %arg13 : i32
  %5 = arith.divsi %3, %4 : i32
  %6 = arith.remsi %5, %arg12 : i32
  %7 = hivm.hir.pointer_cast(%c4096_i64) : memref<1024xi32, #hivm.address_space<ub>>
  hivm.hir.vbrc ins(%c0_i32 : i32) outs(%7 : memref<1024xi32, #hivm.address_space<ub>>)
  %8 = hivm.hir.pointer_cast(%c8192_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vbrc ins(%cst_19 : f32) outs(%8 : memref<1024xf32, #hivm.address_space<ub>>)
  %9 = hivm.hir.pointer_cast(%c12288_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vbrc ins(%cst_18 : f32) outs(%9 : memref<1024xf32, #hivm.address_space<ub>>)
  %10 = hivm.hir.pointer_cast(%c16384_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vbrc ins(%cst_17 : f32) outs(%10 : memref<1024xf32, #hivm.address_space<ub>>)
  %11 = arith.muli %6, %c1024_i32 : i32
  %12 = hivm.hir.pointer_cast(%c20480_i64) : memref<1024xi32, #hivm.address_space<ub>>
  hivm.hir.varange offset[%c0] strides[%c1] outs(%12 : memref<1024xi32, #hivm.address_space<ub>>)
  %13 = hivm.hir.pointer_cast(%c20480_i64) : memref<1024xi32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vadd ins(%12, %11 : memref<1024xi32, #hivm.address_space<ub>>, i32) outs(%13 : memref<1024xi32, #hivm.address_space<ub>>)
  %14 = hivm.hir.pointer_cast(%c59392_i64) : memref<1024xi64, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vcast ins(%13 : memref<1024xi32, #hivm.address_space<ub>>) outs(%14 : memref<1024xi64, #hivm.address_space<ub>>)
  %15 = arith.extsi %arg4 : i32 to i64
  %16 = hivm.hir.pointer_cast(%c67584_i64) : memref<1024xi64, #hivm.address_space<ub>>
  hivm.hir.vbrc ins(%15 : i64) outs(%16 : memref<1024xi64, #hivm.address_space<ub>>)
  hivm.hir.set_flag[<PIPE_V>, <PIPE_S>, <EVENT_ID0>]
  %17 = hivm.hir.pointer_cast(%c24576_i64) : memref<1024xi1, #hivm.address_space<ub>>
  %18 = hivm.hir.pointer_cast(%c67584_i64) : memref<1024xi8, #hivm.address_space<ub>>
  hivm.hir.wait_flag[<PIPE_V>, <PIPE_S>, <EVENT_ID0>]
  scf.for %arg15 = %c0 to %c1024 step %c1 {
    %163 = memref.load %14[%arg15] : memref<1024xi64, #hivm.address_space<ub>>
    %164 = memref.load %16[%arg15] : memref<1024xi64, #hivm.address_space<ub>>
    %165 = arith.cmpi slt, %163, %164 : i64
    %166 = arith.extui %165 : i1 to i8
    memref.store %166, %18[%arg15] : memref<1024xi8, #hivm.address_space<ub>>
  }
  hivm.hir.set_flag[<PIPE_S>, <PIPE_V>, <EVENT_ID0>]
  %19 = hivm.hir.pointer_cast(%c24576_i64) : memref<1024xf16, #hivm.address_space<ub>>
  hivm.hir.wait_flag[<PIPE_S>, <PIPE_V>, <EVENT_ID0>]
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vcast ins(%18 : memref<1024xi8, #hivm.address_space<ub>>) outs(%19 : memref<1024xf16, #hivm.address_space<ub>>)
  %20 = hivm.hir.pointer_cast(%c26624_i64) : memref<1024xf16, #hivm.address_space<ub>>
  hivm.hir.vbrc ins(%cst : f16) outs(%20 : memref<1024xf16, #hivm.address_space<ub>>)
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vcmp ins(%19, %20 : memref<1024xf16, #hivm.address_space<ub>>, memref<1024xf16, #hivm.address_space<ub>>) outs(%17 : memref<1024xi1, #hivm.address_space<ub>>) compare_mode = <ne>
  %21 = hivm.hir.pointer_cast(%c26624_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vcast ins(%13 : memref<1024xi32, #hivm.address_space<ub>>) outs(%21 : memref<1024xf32, #hivm.address_space<ub>>)
  %22 = arith.sitofp %arg6 : i32 to f32
  %23 = hivm.hir.pointer_cast(%c26624_i64) : memref<1024xf32, #hivm.address_space<ub>>
  %24 = hivm.hir.pointer_cast(%c30720_i64) : memref<8xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vdiv ins(%21, %22 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%23 : memref<1024xf32, #hivm.address_space<ub>>) temp_buffer(%24 : memref<8xf32, #hivm.address_space<ub>>)
  %25 = hivm.hir.pointer_cast(%c26624_i64) : memref<1024xi32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vcast ins(%23 : memref<1024xf32, #hivm.address_space<ub>>) outs(%25 : memref<1024xi32, #hivm.address_space<ub>>) round_mode = <trunc>
  %26 = hivm.hir.pointer_cast(%c30720_i64) : memref<1024xi32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%25, %arg6 : memref<1024xi32, #hivm.address_space<ub>>, i32) outs(%26 : memref<1024xi32, #hivm.address_space<ub>>)
  %27 = hivm.hir.pointer_cast(%c20480_i64) : memref<1024xi32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%13, %26 : memref<1024xi32, #hivm.address_space<ub>>, memref<1024xi32, #hivm.address_space<ub>>) outs(%27 : memref<1024xi32, #hivm.address_space<ub>>)
  %28 = arith.divsi %arg6, %c2_i32 : i32
  %29 = hivm.hir.pointer_cast(%c59392_i64) : memref<1024xi64, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vcast ins(%27 : memref<1024xi32, #hivm.address_space<ub>>) outs(%29 : memref<1024xi64, #hivm.address_space<ub>>)
  %30 = arith.extsi %28 : i32 to i64
  %31 = hivm.hir.pointer_cast(%c67584_i64) : memref<1024xi64, #hivm.address_space<ub>>
  hivm.hir.vbrc ins(%30 : i64) outs(%31 : memref<1024xi64, #hivm.address_space<ub>>)
  hivm.hir.set_flag[<PIPE_V>, <PIPE_S>, <EVENT_ID1>]
  %32 = hivm.hir.pointer_cast(%c32768_i64) : memref<1024xi1, #hivm.address_space<ub>>
  %33 = hivm.hir.pointer_cast(%c67584_i64) : memref<1024xi8, #hivm.address_space<ub>>
  hivm.hir.wait_flag[<PIPE_V>, <PIPE_S>, <EVENT_ID1>]
  scf.for %arg15 = %c0 to %c1024 step %c1 {
    %163 = memref.load %29[%arg15] : memref<1024xi64, #hivm.address_space<ub>>
    %164 = memref.load %31[%arg15] : memref<1024xi64, #hivm.address_space<ub>>
    %165 = arith.cmpi sge, %163, %164 : i64
    %166 = arith.extui %165 : i1 to i8
    memref.store %166, %33[%arg15] : memref<1024xi8, #hivm.address_space<ub>>
  }
  hivm.hir.set_flag[<PIPE_S>, <PIPE_V>, <EVENT_ID1>]
  %34 = hivm.hir.pointer_cast(%c30720_i64) : memref<1024xf16, #hivm.address_space<ub>>
  hivm.hir.wait_flag[<PIPE_S>, <PIPE_V>, <EVENT_ID1>]
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vcast ins(%33 : memref<1024xi8, #hivm.address_space<ub>>) outs(%34 : memref<1024xf16, #hivm.address_space<ub>>)
  %35 = hivm.hir.pointer_cast(%c32768_i64) : memref<1024xf16, #hivm.address_space<ub>>
  hivm.hir.vbrc ins(%cst : f16) outs(%35 : memref<1024xf16, #hivm.address_space<ub>>)
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vcmp ins(%34, %35 : memref<1024xf16, #hivm.address_space<ub>>, memref<1024xf16, #hivm.address_space<ub>>) outs(%32 : memref<1024xi1, #hivm.address_space<ub>>) compare_mode = <ne>
  %36 = hivm.hir.pointer_cast(%c34816_i64) : memref<1024xi32, #hivm.address_space<ub>>
  %37 = arith.subi %c0_i32, %28 : i32
  hivm.hir.vadd ins(%27, %37 : memref<1024xi32, #hivm.address_space<ub>>, i32) outs(%36 : memref<1024xi32, #hivm.address_space<ub>>)
  %38 = hivm.hir.pointer_cast(%c38912_i64) : memref<1024xi32, #hivm.address_space<ub>>
  %39 = hivm.hir.pointer_cast(%c30720_i64) : memref<8xi32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsel ins(%32, %36, %27 : memref<1024xi1, #hivm.address_space<ub>>, memref<1024xi32, #hivm.address_space<ub>>, memref<1024xi32, #hivm.address_space<ub>>) outs(%38 : memref<1024xi32, #hivm.address_space<ub>>) temp_buffer(%39 : memref<8xi32, #hivm.address_space<ub>>)
  %40 = hivm.hir.pointer_cast(%c59392_i64) : memref<1024xi64, #hivm.address_space<ub>>
  hivm.hir.vcast ins(%25 : memref<1024xi32, #hivm.address_space<ub>>) outs(%40 : memref<1024xi64, #hivm.address_space<ub>>)
  %41 = arith.extsi %arg7 : i32 to i64
  %42 = hivm.hir.pointer_cast(%c67584_i64) : memref<1024xi64, #hivm.address_space<ub>>
  hivm.hir.vbrc ins(%41 : i64) outs(%42 : memref<1024xi64, #hivm.address_space<ub>>)
  hivm.hir.set_flag[<PIPE_V>, <PIPE_S>, <EVENT_ID2>]
  %43 = hivm.hir.pointer_cast(%c22528_i64) : memref<1024xi1, #hivm.address_space<ub>>
  %44 = hivm.hir.pointer_cast(%c59392_i64) : memref<1024xi8, #hivm.address_space<ub>>
  hivm.hir.wait_flag[<PIPE_V>, <PIPE_S>, <EVENT_ID2>]
  scf.for %arg15 = %c0 to %c1024 step %c1 {
    %163 = memref.load %40[%arg15] : memref<1024xi64, #hivm.address_space<ub>>
    %164 = memref.load %42[%arg15] : memref<1024xi64, #hivm.address_space<ub>>
    %165 = arith.cmpi slt, %163, %164 : i64
    %166 = arith.extui %165 : i1 to i8
    memref.store %166, %44[%arg15] : memref<1024xi8, #hivm.address_space<ub>>
  }
  hivm.hir.set_flag[<PIPE_S>, <PIPE_V>, <EVENT_ID2>]
  %45 = hivm.hir.pointer_cast(%c20480_i64) : memref<1024xf16, #hivm.address_space<ub>>
  hivm.hir.wait_flag[<PIPE_S>, <PIPE_V>, <EVENT_ID2>]
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vcast ins(%44 : memref<1024xi8, #hivm.address_space<ub>>) outs(%45 : memref<1024xf16, #hivm.address_space<ub>>)
  %46 = hivm.hir.pointer_cast(%c22528_i64) : memref<1024xf16, #hivm.address_space<ub>>
  hivm.hir.vbrc ins(%cst : f16) outs(%46 : memref<1024xf16, #hivm.address_space<ub>>)
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vcmp ins(%45, %46 : memref<1024xf16, #hivm.address_space<ub>>, memref<1024xf16, #hivm.address_space<ub>>) outs(%43 : memref<1024xi1, #hivm.address_space<ub>>) compare_mode = <ne>
  %47 = hivm.hir.pointer_cast(%c22528_i64) : memref<1024xi1, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vand ins(%17, %43 : memref<1024xi1, #hivm.address_space<ub>>, memref<1024xi1, #hivm.address_space<ub>>) outs(%47 : memref<1024xi1, #hivm.address_space<ub>>)
  %48 = hivm.hir.pointer_cast(%c59392_i64) : memref<1024xi64, #hivm.address_space<ub>>
  hivm.hir.vcast ins(%38 : memref<1024xi32, #hivm.address_space<ub>>) outs(%48 : memref<1024xi64, #hivm.address_space<ub>>)
  %49 = arith.extsi %arg8 : i32 to i64
  %50 = hivm.hir.pointer_cast(%c67584_i64) : memref<1024xi64, #hivm.address_space<ub>>
  hivm.hir.vbrc ins(%49 : i64) outs(%50 : memref<1024xi64, #hivm.address_space<ub>>)
  hivm.hir.set_flag[<PIPE_V>, <PIPE_S>, <EVENT_ID3>]
  %51 = hivm.hir.pointer_cast(%c24576_i64) : memref<1024xi1, #hivm.address_space<ub>>
  %52 = hivm.hir.pointer_cast(%c67584_i64) : memref<1024xi8, #hivm.address_space<ub>>
  hivm.hir.wait_flag[<PIPE_V>, <PIPE_S>, <EVENT_ID3>]
  scf.for %arg15 = %c0 to %c1024 step %c1 {
    %163 = memref.load %48[%arg15] : memref<1024xi64, #hivm.address_space<ub>>
    %164 = memref.load %50[%arg15] : memref<1024xi64, #hivm.address_space<ub>>
    %165 = arith.cmpi slt, %163, %164 : i64
    %166 = arith.extui %165 : i1 to i8
    memref.store %166, %52[%arg15] : memref<1024xi8, #hivm.address_space<ub>>
  }
  hivm.hir.set_flag[<PIPE_S>, <PIPE_V>, <EVENT_ID3>]
  %53 = hivm.hir.pointer_cast(%c20480_i64) : memref<1024xf16, #hivm.address_space<ub>>
  hivm.hir.wait_flag[<PIPE_S>, <PIPE_V>, <EVENT_ID3>]
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vcast ins(%52 : memref<1024xi8, #hivm.address_space<ub>>) outs(%53 : memref<1024xf16, #hivm.address_space<ub>>)
  %54 = hivm.hir.pointer_cast(%c24576_i64) : memref<1024xf16, #hivm.address_space<ub>>
  hivm.hir.vbrc ins(%cst : f16) outs(%54 : memref<1024xf16, #hivm.address_space<ub>>)
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vcmp ins(%53, %54 : memref<1024xf16, #hivm.address_space<ub>>, memref<1024xf16, #hivm.address_space<ub>>) outs(%51 : memref<1024xi1, #hivm.address_space<ub>>) compare_mode = <ne>
  %55 = hivm.hir.pointer_cast(%c24576_i64) : memref<1024xi1, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vand ins(%47, %51 : memref<1024xi1, #hivm.address_space<ub>>, memref<1024xi1, #hivm.address_space<ub>>) outs(%55 : memref<1024xi1, #hivm.address_space<ub>>)
  %56 = hivm.hir.pointer_cast(%c26624_i64) : memref<1024xi32, #hivm.address_space<ub>>
  hivm.hir.vmul ins(%25, %38 : memref<1024xi32, #hivm.address_space<ub>>, memref<1024xi32, #hivm.address_space<ub>>) outs(%56 : memref<1024xi32, #hivm.address_space<ub>>)
  %57 = hivm.hir.pointer_cast(%c20480_i64) : memref<1024xi32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vbrc ins(%arg9 : i32) outs(%57 : memref<1024xi32, #hivm.address_space<ub>>)
  %58 = hivm.hir.pointer_cast(%c34816_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vcast ins(%56 : memref<1024xi32, #hivm.address_space<ub>>) outs(%58 : memref<1024xf32, #hivm.address_space<ub>>)
  %59 = arith.sitofp %arg9 : i32 to f32
  %60 = hivm.hir.pointer_cast(%c34816_i64) : memref<1024xf32, #hivm.address_space<ub>>
  %61 = hivm.hir.pointer_cast(%c30720_i64) : memref<8xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vdiv ins(%58, %59 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%60 : memref<1024xf32, #hivm.address_space<ub>>) temp_buffer(%61 : memref<8xf32, #hivm.address_space<ub>>)
  %62 = hivm.hir.pointer_cast(%c34816_i64) : memref<1024xi32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vcast ins(%60 : memref<1024xf32, #hivm.address_space<ub>>) outs(%62 : memref<1024xi32, #hivm.address_space<ub>>) round_mode = <trunc>
  %63 = hivm.hir.pointer_cast(%c34816_i64) : memref<1024xi32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%62, %arg9 : memref<1024xi32, #hivm.address_space<ub>>, i32) outs(%63 : memref<1024xi32, #hivm.address_space<ub>>)
  %64 = hivm.hir.pointer_cast(%c34816_i64) : memref<1024xi32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%56, %63 : memref<1024xi32, #hivm.address_space<ub>>, memref<1024xi32, #hivm.address_space<ub>>) outs(%64 : memref<1024xi32, #hivm.address_space<ub>>)
  %65 = hivm.hir.pointer_cast(%c34816_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vcast ins(%64 : memref<1024xi32, #hivm.address_space<ub>>) outs(%65 : memref<1024xf32, #hivm.address_space<ub>>)
  %66 = hivm.hir.pointer_cast(%c34816_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%65, %cst_20 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%66 : memref<1024xf32, #hivm.address_space<ub>>)
  %67 = hivm.hir.pointer_cast(%c34816_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%66, %arg11 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%67 : memref<1024xf32, #hivm.address_space<ub>>)
  %68 = hivm.hir.pointer_cast(%c4096_i64) : memref<1024xi1, #hivm.address_space<ub>>
  hivm.hir.vcmp ins(%38, %7 : memref<1024xi32, #hivm.address_space<ub>>, memref<1024xi32, #hivm.address_space<ub>>) outs(%68 : memref<1024xi1, #hivm.address_space<ub>>)
  %69 = hivm.hir.pointer_cast(%c38912_i64) : memref<1024xi32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vadd ins(%38, %38 : memref<1024xi32, #hivm.address_space<ub>>, memref<1024xi32, #hivm.address_space<ub>>) outs(%69 : memref<1024xi32, #hivm.address_space<ub>>)
  %70 = hivm.hir.pointer_cast(%c20480_i64) : memref<1024xi1, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vcmp ins(%69, %57 : memref<1024xi32, #hivm.address_space<ub>>, memref<1024xi32, #hivm.address_space<ub>>) outs(%70 : memref<1024xi1, #hivm.address_space<ub>>)
  %71 = hivm.hir.pointer_cast(%c4096_i64) : memref<1024xi1, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vor ins(%68, %70 : memref<1024xi1, #hivm.address_space<ub>>, memref<1024xi1, #hivm.address_space<ub>>) outs(%71 : memref<1024xi1, #hivm.address_space<ub>>)
  %72 = hivm.hir.pointer_cast(%c20480_i64) : memref<1024xf32, #hivm.address_space<ub>>
  %73 = hivm.hir.pointer_cast(%c26624_i64) : memref<8xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsel ins(%71, %8, %9 : memref<1024xi1, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%72 : memref<1024xf32, #hivm.address_space<ub>>) temp_buffer(%73 : memref<8xf32, #hivm.address_space<ub>>)
  %74 = hivm.hir.pointer_cast(%c4096_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%67, %cst_16 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%74 : memref<1024xf32, #hivm.address_space<ub>>)
  %75 = hivm.hir.pointer_cast(%c8192_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vadd ins(%74, %cst_15 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%75 : memref<1024xf32, #hivm.address_space<ub>>)
  %76 = hivm.hir.pointer_cast(%c12288_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vmul ins(%74, %cst_14 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%76 : memref<1024xf32, #hivm.address_space<ub>>)
  %77 = hivm.hir.pointer_cast(%c8192_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vcast ins(%75 : memref<1024xf32, #hivm.address_space<ub>>) outs(%77 : memref<1024xf32, #hivm.address_space<ub>>) round_mode = <round>
  %78 = hivm.hir.pointer_cast(%c12288_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vcast ins(%76 : memref<1024xf32, #hivm.address_space<ub>>) outs(%78 : memref<1024xf32, #hivm.address_space<ub>>) round_mode = <round>
  %79 = hivm.hir.pointer_cast(%c12288_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%78, %cst_13 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%79 : memref<1024xf32, #hivm.address_space<ub>>)
  %80 = hivm.hir.pointer_cast(%c26624_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%77, %79 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%80 : memref<1024xf32, #hivm.address_space<ub>>)
  %81 = hivm.hir.pointer_cast(%c38912_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vmul ins(%79, %cst_12 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%81 : memref<1024xf32, #hivm.address_space<ub>>)
  %82 = hivm.hir.pointer_cast(%c34816_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%67, %81 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%82 : memref<1024xf32, #hivm.address_space<ub>>)
  %83 = hivm.hir.pointer_cast(%c38912_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%80, %cst_12 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%83 : memref<1024xf32, #hivm.address_space<ub>>)
  %84 = hivm.hir.pointer_cast(%c38912_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%82, %83 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%84 : memref<1024xf32, #hivm.address_space<ub>>)
  %85 = hivm.hir.pointer_cast(%c43008_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vmul ins(%79, %cst_11 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%85 : memref<1024xf32, #hivm.address_space<ub>>)
  %86 = hivm.hir.pointer_cast(%c38912_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%84, %85 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%86 : memref<1024xf32, #hivm.address_space<ub>>)
  %87 = hivm.hir.pointer_cast(%c38912_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vadd ins(%86, %cst_10 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%87 : memref<1024xf32, #hivm.address_space<ub>>)
  %88 = hivm.hir.pointer_cast(%c47104_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vmul ins(%80, %cst_11 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%88 : memref<1024xf32, #hivm.address_space<ub>>)
  %89 = hivm.hir.pointer_cast(%c47104_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%87, %88 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%89 : memref<1024xf32, #hivm.address_space<ub>>)
  %90 = hivm.hir.pointer_cast(%c38912_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%79, %cst_9 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%90 : memref<1024xf32, #hivm.address_space<ub>>)
  %91 = hivm.hir.pointer_cast(%c47104_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%89, %90 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%91 : memref<1024xf32, #hivm.address_space<ub>>)
  %92 = hivm.hir.pointer_cast(%c51200_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vmul ins(%80, %cst_9 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%92 : memref<1024xf32, #hivm.address_space<ub>>)
  %93 = hivm.hir.pointer_cast(%c47104_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%91, %92 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%93 : memref<1024xf32, #hivm.address_space<ub>>)
  %94 = hivm.hir.pointer_cast(%c51200_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%79, %cst_8 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%94 : memref<1024xf32, #hivm.address_space<ub>>)
  %95 = hivm.hir.pointer_cast(%c47104_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%93, %94 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%95 : memref<1024xf32, #hivm.address_space<ub>>)
  %96 = hivm.hir.pointer_cast(%c26624_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vmul ins(%80, %cst_8 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%96 : memref<1024xf32, #hivm.address_space<ub>>)
  %97 = hivm.hir.pointer_cast(%c47104_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%95, %96 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%97 : memref<1024xf32, #hivm.address_space<ub>>)
  %98 = hivm.hir.pointer_cast(%c47104_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vadd ins(%97, %cst_7 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%98 : memref<1024xf32, #hivm.address_space<ub>>)
  %99 = hivm.hir.pointer_cast(%c26624_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vmul ins(%77, %cst_15 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%99 : memref<1024xf32, #hivm.address_space<ub>>)
  %100 = hivm.hir.pointer_cast(%c26624_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vcast ins(%99 : memref<1024xf32, #hivm.address_space<ub>>) outs(%100 : memref<1024xf32, #hivm.address_space<ub>>) round_mode = <floor>
  %101 = hivm.hir.pointer_cast(%c26624_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%100, %cst_6 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%101 : memref<1024xf32, #hivm.address_space<ub>>)
  %102 = hivm.hir.pointer_cast(%c8192_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vmul ins(%77, %cst_5 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%102 : memref<1024xf32, #hivm.address_space<ub>>)
  %103 = hivm.hir.pointer_cast(%c26624_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vadd ins(%101, %102 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%103 : memref<1024xf32, #hivm.address_space<ub>>)
  %104 = hivm.hir.pointer_cast(%c26624_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vadd ins(%103, %cst_19 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%104 : memref<1024xf32, #hivm.address_space<ub>>)
  %105 = hivm.hir.pointer_cast(%c8192_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vmul ins(%98, %98 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%105 : memref<1024xf32, #hivm.address_space<ub>>)
  %106 = hivm.hir.pointer_cast(%c55296_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%105, %cst_4 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%106 : memref<1024xf32, #hivm.address_space<ub>>)
  %107 = hivm.hir.pointer_cast(%c55296_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vadd ins(%106, %cst_3 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%107 : memref<1024xf32, #hivm.address_space<ub>>)
  %108 = hivm.hir.pointer_cast(%c55296_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%107, %105 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%108 : memref<1024xf32, #hivm.address_space<ub>>)
  %109 = hivm.hir.pointer_cast(%c55296_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vadd ins(%108, %cst_2 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%109 : memref<1024xf32, #hivm.address_space<ub>>)
  %110 = hivm.hir.pointer_cast(%c55296_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%109, %105 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%110 : memref<1024xf32, #hivm.address_space<ub>>)
  %111 = hivm.hir.pointer_cast(%c55296_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vadd ins(%110, %cst_1 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%111 : memref<1024xf32, #hivm.address_space<ub>>)
  %112 = hivm.hir.pointer_cast(%c55296_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%111, %105 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%112 : memref<1024xf32, #hivm.address_space<ub>>)
  %113 = hivm.hir.pointer_cast(%c55296_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vadd ins(%112, %cst_19 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%113 : memref<1024xf32, #hivm.address_space<ub>>)
  %114 = hivm.hir.pointer_cast(%c47104_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%113, %98 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%114 : memref<1024xf32, #hivm.address_space<ub>>)
  %115 = hivm.hir.pointer_cast(%c47104_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%114, %104 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%115 : memref<1024xf32, #hivm.address_space<ub>>)
  %116 = hivm.hir.pointer_cast(%c47104_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmin ins(%115, %cst_19 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%116 : memref<1024xf32, #hivm.address_space<ub>>)
  %117 = hivm.hir.pointer_cast(%c47104_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmax ins(%116, %cst_0 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%117 : memref<1024xf32, #hivm.address_space<ub>>)
  %118 = hivm.hir.pointer_cast(%c47104_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%72, %117 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%118 : memref<1024xf32, #hivm.address_space<ub>>)
  %119 = hivm.hir.pointer_cast(%c47104_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%118, %arg10 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%119 : memref<1024xf32, #hivm.address_space<ub>>)
  %120 = hivm.hir.pointer_cast(%c20480_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vmul ins(%72, %cst_0 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%120 : memref<1024xf32, #hivm.address_space<ub>>)
  %121 = hivm.hir.pointer_cast(%c20480_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vadd ins(%120, %cst_17 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%121 : memref<1024xf32, #hivm.address_space<ub>>)
  %122 = hivm.hir.pointer_cast(%c4096_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vcast ins(%74 : memref<1024xf32, #hivm.address_space<ub>>) outs(%122 : memref<1024xf32, #hivm.address_space<ub>>) round_mode = <round>
  %123 = hivm.hir.pointer_cast(%c12288_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%122, %79 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%123 : memref<1024xf32, #hivm.address_space<ub>>)
  %124 = hivm.hir.pointer_cast(%c8192_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%123, %cst_12 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%124 : memref<1024xf32, #hivm.address_space<ub>>)
  %125 = hivm.hir.pointer_cast(%c34816_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%82, %124 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%125 : memref<1024xf32, #hivm.address_space<ub>>)
  %126 = hivm.hir.pointer_cast(%c34816_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%125, %85 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%126 : memref<1024xf32, #hivm.address_space<ub>>)
  %127 = hivm.hir.pointer_cast(%c8192_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vmul ins(%123, %cst_11 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%127 : memref<1024xf32, #hivm.address_space<ub>>)
  %128 = hivm.hir.pointer_cast(%c34816_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%126, %127 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%128 : memref<1024xf32, #hivm.address_space<ub>>)
  %129 = hivm.hir.pointer_cast(%c34816_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%128, %90 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%129 : memref<1024xf32, #hivm.address_space<ub>>)
  %130 = hivm.hir.pointer_cast(%c8192_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vmul ins(%123, %cst_9 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%130 : memref<1024xf32, #hivm.address_space<ub>>)
  %131 = hivm.hir.pointer_cast(%c8192_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%129, %130 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%131 : memref<1024xf32, #hivm.address_space<ub>>)
  %132 = hivm.hir.pointer_cast(%c51200_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%131, %94 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%132 : memref<1024xf32, #hivm.address_space<ub>>)
  %133 = hivm.hir.pointer_cast(%c12288_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vmul ins(%123, %cst_8 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%133 : memref<1024xf32, #hivm.address_space<ub>>)
  %134 = hivm.hir.pointer_cast(%c12288_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%132, %133 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%134 : memref<1024xf32, #hivm.address_space<ub>>)
  %135 = hivm.hir.pointer_cast(%c8192_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vmul ins(%122, %cst_15 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%135 : memref<1024xf32, #hivm.address_space<ub>>)
  %136 = hivm.hir.pointer_cast(%c8192_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vcast ins(%135 : memref<1024xf32, #hivm.address_space<ub>>) outs(%136 : memref<1024xf32, #hivm.address_space<ub>>) round_mode = <floor>
  %137 = hivm.hir.pointer_cast(%c8192_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%136, %cst_6 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%137 : memref<1024xf32, #hivm.address_space<ub>>)
  %138 = hivm.hir.pointer_cast(%c4096_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vmul ins(%122, %cst_5 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%138 : memref<1024xf32, #hivm.address_space<ub>>)
  %139 = hivm.hir.pointer_cast(%c8192_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vadd ins(%137, %138 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%139 : memref<1024xf32, #hivm.address_space<ub>>)
  %140 = hivm.hir.pointer_cast(%c8192_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vadd ins(%139, %cst_19 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%140 : memref<1024xf32, #hivm.address_space<ub>>)
  %141 = hivm.hir.pointer_cast(%c4096_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vmul ins(%134, %134 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%141 : memref<1024xf32, #hivm.address_space<ub>>)
  %142 = hivm.hir.pointer_cast(%c26624_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%141, %cst_4 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%142 : memref<1024xf32, #hivm.address_space<ub>>)
  %143 = hivm.hir.pointer_cast(%c26624_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vadd ins(%142, %cst_3 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%143 : memref<1024xf32, #hivm.address_space<ub>>)
  %144 = hivm.hir.pointer_cast(%c26624_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%143, %141 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%144 : memref<1024xf32, #hivm.address_space<ub>>)
  %145 = hivm.hir.pointer_cast(%c26624_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vadd ins(%144, %cst_2 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%145 : memref<1024xf32, #hivm.address_space<ub>>)
  %146 = hivm.hir.pointer_cast(%c26624_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%145, %141 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%146 : memref<1024xf32, #hivm.address_space<ub>>)
  %147 = hivm.hir.pointer_cast(%c26624_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vadd ins(%146, %cst_1 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%147 : memref<1024xf32, #hivm.address_space<ub>>)
  %148 = hivm.hir.pointer_cast(%c4096_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%147, %141 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%148 : memref<1024xf32, #hivm.address_space<ub>>)
  %149 = hivm.hir.pointer_cast(%c4096_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vadd ins(%148, %cst_19 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%149 : memref<1024xf32, #hivm.address_space<ub>>)
  %150 = hivm.hir.pointer_cast(%c12288_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%149, %134 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%150 : memref<1024xf32, #hivm.address_space<ub>>)
  %151 = hivm.hir.pointer_cast(%c8192_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%150, %140 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%151 : memref<1024xf32, #hivm.address_space<ub>>)
  %152 = hivm.hir.pointer_cast(%c20480_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%121, %151 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%152 : memref<1024xf32, #hivm.address_space<ub>>)
  %153 = hivm.hir.pointer_cast(%c20480_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%152, %arg10 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%153 : memref<1024xf32, #hivm.address_space<ub>>)
  %154 = hivm.hir.pointer_cast(%c4096_i64) : memref<1024xf32, #hivm.address_space<ub>>
  %155 = hivm.hir.pointer_cast(%c8192_i64) : memref<8xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsel ins(%32, %153, %119 : memref<1024xi1, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%154 : memref<1024xf32, #hivm.address_space<ub>>) temp_buffer(%155 : memref<8xf32, #hivm.address_space<ub>>)
  %156 = arith.index_cast %11 : i32 to index
  %reinterpret_cast = memref.reinterpret_cast %arg3 to offset: [%156], sizes: [1024], strides: [1] : memref<?xf32, #hivm.address_space<gm>> to memref<1024xf32, strided<[1], offset: ?>, #hivm.address_space<gm>>
  %157 = hivm.hir.pointer_cast(%c0_i64) : memref<1024xf32, #hivm.address_space<ub>>
  %158 = hivm.hir.pointer_cast(%c8192_i64) : memref<8xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsel ins(%55, %154, %10 : memref<1024xi1, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%157 : memref<1024xf32, #hivm.address_space<ub>>) temp_buffer(%158 : memref<8xf32, #hivm.address_space<ub>>)
  hivm.hir.set_flag[<PIPE_V>, <PIPE_MTE3>, <EVENT_ID0>]
  %159 = arith.index_cast %arg4 : i32 to index
  %160 = affine.max affine_map<()[s0, s1] -> (s1, s0)>()[%156, %159]
  %161 = affine.min affine_map<()[s0, s1] -> (s1 + 1024, s0)>()[%160, %156]
  %162 = affine.apply affine_map<()[s0, s1] -> (s0 - s1)>()[%161, %156]
  %subview = memref.subview %157[0] [%162] [1] : memref<1024xf32, #hivm.address_space<ub>> to memref<?xf32, strided<[1]>, #hivm.address_space<ub>>
  %subview_21 = memref.subview %reinterpret_cast[0] [%162] [1] : memref<1024xf32, strided<[1], offset: ?>, #hivm.address_space<gm>> to memref<?xf32, strided<[1], offset: ?>, #hivm.address_space<gm>>
  hivm.hir.wait_flag[<PIPE_V>, <PIPE_MTE3>, <EVENT_ID0>]
  hivm.hir.store ins(%subview : memref<?xf32, strided<[1]>, #hivm.address_space<ub>>) outs(%subview_21 : memref<?xf32, strided<[1], offset: ?>, #hivm.address_space<gm>>)
  hivm.hir.pipe_barrier[<PIPE_ALL>]
  return
}

warning: overriding the module target triple with x86_64-unknown-linux-gnu [-Woverride-module]
1 warning generated.
warning: overriding the module target triple with x86_64-unknown-linux-gnu [-Woverride-module]
1 warning generated.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":132:14): warning: Op 'hivm.hir.vcmp' will execute by scalar instruction with low effiency
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":136:18): warning: Op 'hivm.hir.vcmp' will execute by scalar instruction with low effiency
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":138:18): warning: Op 'hivm.hir.vcmp' will execute by scalar instruction with low effiency
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":138:31): warning: Op 'hivm.hir.vcmp' will execute by scalar instruction with low effiency
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":120:0): warning: Overwriting the target by the pass option...
