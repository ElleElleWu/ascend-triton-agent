// -----// IR Dump After InjectSync (hivm-inject-sync) //----- //
func.func @_etab_dft2_kernel(%arg0: i64 {hacc.arg_type = #hacc.arg_type<ffts_base_address>}, %arg1: memref<?xi8, #hivm.address_space<gm>> {hacc.arg_type = #hacc.arg_type<sync_block_lock>}, %arg2: memref<?xi8, #hivm.address_space<gm>> {hacc.arg_type = #hacc.arg_type<workspace>}, %arg3: memref<?xf32, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 1 : i32}, %arg4: memref<?xf32, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 1 : i32}, %arg5: i32 {tt.divisibility = 16 : i32}, %arg6: i32 {tt.divisibility = 16 : i32}, %arg7: i32 {tt.divisibility = 16 : i32}, %arg8: i32, %arg9: i32, %arg10: f32, %arg11: f32, %arg12: f32, %arg13: i32, %arg14: i32, %arg15: i32) attributes {SyncBlockLockArgIdx = 0 : i64, WorkspaceArgIdx = 1 : i64, func_dyn_memref_args = dense<[false, true, true, true, true, false, false, false, false, false, false, false, false, false, false, false]> : vector<16xi1>, hacc.entry, hacc.function_kind = #hacc.function_kind<DEVICE>, hivm.func_core_type = #hivm.func_core_type<AIV>, hivm.storage_aligned, mix_mode = "aiv", parallel_mode = "simd"} {
  %c1024 = arith.constant 1024 : index
  %c4096_i64 = arith.constant 4096 : i64
  %c0_i64 = arith.constant 0 : i64
  %c57344_i64 = arith.constant 57344 : i64
  %c53248_i64 = arith.constant 53248 : i64
  %c49152_i64 = arith.constant 49152 : i64
  %c45056_i64 = arith.constant 45056 : i64
  %c40960_i64 = arith.constant 40960 : i64
  %c36864_i64 = arith.constant 36864 : i64
  %c32768_i64 = arith.constant 32768 : i64
  %c28672_i64 = arith.constant 28672 : i64
  %c14336_i64 = arith.constant 14336 : i64
  %c24576_i64 = arith.constant 24576 : i64
  %c20480_i64 = arith.constant 20480 : i64
  %c16384_i64 = arith.constant 16384 : i64
  %c18432_i64 = arith.constant 18432 : i64
  %c69632_i64 = arith.constant 69632 : i64
  %c61440_i64 = arith.constant 61440 : i64
  %c12288_i64 = arith.constant 12288 : i64
  %c8192_i64 = arith.constant 8192 : i64
  %c0_i32 = arith.constant 0 : i32
  %cst = arith.constant 0.000000e+00 : f16
  %cst_0 = arith.constant -1.000000e+00 : f32
  %cst_1 = arith.constant -0.166666582 : f32
  %cst_2 = arith.constant 8.333050e-03 : f32
  %cst_3 = arith.constant -1.98089445E-4 : f32
  %cst_4 = arith.constant 2.60492652E-6 : f32
  %cst_5 = arith.constant 1.000000e+00 : f32
  %cst_6 = arith.constant -2.000000e+00 : f32
  %cst_7 = arith.constant 4.000000e+00 : f32
  %cst_8 = arith.constant -4.37113883E-8 : f32
  %cst_9 = arith.constant 1.24467439E-13 : f32
  %cst_10 = arith.constant -1.74122761E-9 : f32
  %cst_11 = arith.constant 1.57079637 : f32
  %cst_12 = arith.constant -8.9071691E-6 : f32
  %cst_13 = arith.constant 3.14160156 : f32
  %cst_14 = arith.constant 2.048000e+03 : f32
  %cst_15 = arith.constant 4.8828125E-4 : f32
  %cst_16 = arith.constant 5.000000e-01 : f32
  %cst_17 = arith.constant 0.318309873 : f32
  %c0 = arith.constant 0 : index
  %c1 = arith.constant 1 : index
  %cst_18 = arith.constant 0.000000e+00 : f32
  %c1024_i32 = arith.constant 1024 : i32
  %c2_i32 = arith.constant 2 : i32
  %cst_19 = arith.constant 6.28318548 : f32
  hivm.hir.set_mask_norm
  %0 = arith.muli %arg13, %arg14 : i32
  %1 = arith.muli %0, %arg15 : i32
  annotation.mark %1 {logical_block_num} : i32
  %2 = hivm.hir.get_block_idx -> i64
  %3 = arith.trunci %2 : i64 to i32
  %4 = arith.muli %arg15, %arg14 : i32
  %5 = arith.divsi %3, %4 : i32
  %6 = arith.remsi %5, %arg13 : i32
  %7 = hivm.hir.pointer_cast(%c8192_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vbrc ins(%cst_18 : f32) outs(%7 : memref<1024xf32, #hivm.address_space<ub>>)
  %8 = arith.muli %6, %c1024_i32 : i32
  %9 = hivm.hir.pointer_cast(%c12288_i64) : memref<1024xi32, #hivm.address_space<ub>>
  hivm.hir.varange offset[%c0] strides[%c1] outs(%9 : memref<1024xi32, #hivm.address_space<ub>>)
  %10 = hivm.hir.pointer_cast(%c12288_i64) : memref<1024xi32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vadd ins(%9, %8 : memref<1024xi32, #hivm.address_space<ub>>, i32) outs(%10 : memref<1024xi32, #hivm.address_space<ub>>)
  %11 = hivm.hir.pointer_cast(%c61440_i64) : memref<1024xi64, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vcast ins(%10 : memref<1024xi32, #hivm.address_space<ub>>) outs(%11 : memref<1024xi64, #hivm.address_space<ub>>)
  %12 = arith.extsi %arg5 : i32 to i64
  %13 = hivm.hir.pointer_cast(%c69632_i64) : memref<1024xi64, #hivm.address_space<ub>>
  hivm.hir.vbrc ins(%12 : i64) outs(%13 : memref<1024xi64, #hivm.address_space<ub>>)
  hivm.hir.set_flag[<PIPE_V>, <PIPE_S>, <EVENT_ID0>]
  %14 = hivm.hir.pointer_cast(%c18432_i64) : memref<1024xi1, #hivm.address_space<ub>>
  %15 = hivm.hir.pointer_cast(%c61440_i64) : memref<1024xi8, #hivm.address_space<ub>>
  hivm.hir.wait_flag[<PIPE_V>, <PIPE_S>, <EVENT_ID0>]
  scf.for %arg16 = %c0 to %c1024 step %c1 {
    %156 = memref.load %11[%arg16] : memref<1024xi64, #hivm.address_space<ub>>
    %157 = memref.load %13[%arg16] : memref<1024xi64, #hivm.address_space<ub>>
    %158 = arith.cmpi slt, %156, %157 : i64
    %159 = arith.extui %158 : i1 to i8
    memref.store %159, %15[%arg16] : memref<1024xi8, #hivm.address_space<ub>>
  }
  hivm.hir.set_flag[<PIPE_S>, <PIPE_V>, <EVENT_ID0>]
  %16 = hivm.hir.pointer_cast(%c16384_i64) : memref<1024xf16, #hivm.address_space<ub>>
  hivm.hir.wait_flag[<PIPE_S>, <PIPE_V>, <EVENT_ID0>]
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vcast ins(%15 : memref<1024xi8, #hivm.address_space<ub>>) outs(%16 : memref<1024xf16, #hivm.address_space<ub>>)
  %17 = hivm.hir.pointer_cast(%c18432_i64) : memref<1024xf16, #hivm.address_space<ub>>
  hivm.hir.vbrc ins(%cst : f16) outs(%17 : memref<1024xf16, #hivm.address_space<ub>>)
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vcmp ins(%16, %17 : memref<1024xf16, #hivm.address_space<ub>>, memref<1024xf16, #hivm.address_space<ub>>) outs(%14 : memref<1024xi1, #hivm.address_space<ub>>) compare_mode = <ne>
  %18 = hivm.hir.pointer_cast(%c20480_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vcast ins(%10 : memref<1024xi32, #hivm.address_space<ub>>) outs(%18 : memref<1024xf32, #hivm.address_space<ub>>)
  %19 = arith.sitofp %arg7 : i32 to f32
  %20 = hivm.hir.pointer_cast(%c20480_i64) : memref<1024xf32, #hivm.address_space<ub>>
  %21 = hivm.hir.pointer_cast(%c16384_i64) : memref<8xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vdiv ins(%18, %19 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%20 : memref<1024xf32, #hivm.address_space<ub>>) temp_buffer(%21 : memref<8xf32, #hivm.address_space<ub>>)
  %22 = hivm.hir.pointer_cast(%c20480_i64) : memref<1024xi32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vcast ins(%20 : memref<1024xf32, #hivm.address_space<ub>>) outs(%22 : memref<1024xi32, #hivm.address_space<ub>>) round_mode = <trunc>
  %23 = hivm.hir.pointer_cast(%c24576_i64) : memref<1024xi32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%22, %arg7 : memref<1024xi32, #hivm.address_space<ub>>, i32) outs(%23 : memref<1024xi32, #hivm.address_space<ub>>)
  %24 = hivm.hir.pointer_cast(%c24576_i64) : memref<1024xi32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%10, %23 : memref<1024xi32, #hivm.address_space<ub>>, memref<1024xi32, #hivm.address_space<ub>>) outs(%24 : memref<1024xi32, #hivm.address_space<ub>>)
  %25 = arith.divsi %arg7, %c2_i32 : i32
  %26 = hivm.hir.pointer_cast(%c61440_i64) : memref<1024xi64, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vcast ins(%24 : memref<1024xi32, #hivm.address_space<ub>>) outs(%26 : memref<1024xi64, #hivm.address_space<ub>>)
  %27 = arith.extsi %25 : i32 to i64
  %28 = hivm.hir.pointer_cast(%c69632_i64) : memref<1024xi64, #hivm.address_space<ub>>
  hivm.hir.vbrc ins(%27 : i64) outs(%28 : memref<1024xi64, #hivm.address_space<ub>>)
  hivm.hir.set_flag[<PIPE_V>, <PIPE_S>, <EVENT_ID1>]
  %29 = hivm.hir.pointer_cast(%c14336_i64) : memref<1024xi1, #hivm.address_space<ub>>
  %30 = hivm.hir.pointer_cast(%c69632_i64) : memref<1024xi8, #hivm.address_space<ub>>
  hivm.hir.wait_flag[<PIPE_V>, <PIPE_S>, <EVENT_ID1>]
  scf.for %arg16 = %c0 to %c1024 step %c1 {
    %156 = memref.load %26[%arg16] : memref<1024xi64, #hivm.address_space<ub>>
    %157 = memref.load %28[%arg16] : memref<1024xi64, #hivm.address_space<ub>>
    %158 = arith.cmpi sge, %156, %157 : i64
    %159 = arith.extui %158 : i1 to i8
    memref.store %159, %30[%arg16] : memref<1024xi8, #hivm.address_space<ub>>
  }
  hivm.hir.set_flag[<PIPE_S>, <PIPE_V>, <EVENT_ID1>]
  %31 = hivm.hir.pointer_cast(%c12288_i64) : memref<1024xf16, #hivm.address_space<ub>>
  hivm.hir.wait_flag[<PIPE_S>, <PIPE_V>, <EVENT_ID1>]
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vcast ins(%30 : memref<1024xi8, #hivm.address_space<ub>>) outs(%31 : memref<1024xf16, #hivm.address_space<ub>>)
  %32 = hivm.hir.pointer_cast(%c14336_i64) : memref<1024xf16, #hivm.address_space<ub>>
  hivm.hir.vbrc ins(%cst : f16) outs(%32 : memref<1024xf16, #hivm.address_space<ub>>)
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vcmp ins(%31, %32 : memref<1024xf16, #hivm.address_space<ub>>, memref<1024xf16, #hivm.address_space<ub>>) outs(%29 : memref<1024xi1, #hivm.address_space<ub>>) compare_mode = <ne>
  %33 = hivm.hir.pointer_cast(%c28672_i64) : memref<1024xi32, #hivm.address_space<ub>>
  %34 = arith.subi %c0_i32, %25 : i32
  hivm.hir.vadd ins(%24, %34 : memref<1024xi32, #hivm.address_space<ub>>, i32) outs(%33 : memref<1024xi32, #hivm.address_space<ub>>)
  %35 = hivm.hir.pointer_cast(%c32768_i64) : memref<1024xi32, #hivm.address_space<ub>>
  %36 = hivm.hir.pointer_cast(%c12288_i64) : memref<8xi32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsel ins(%29, %33, %24 : memref<1024xi1, #hivm.address_space<ub>>, memref<1024xi32, #hivm.address_space<ub>>, memref<1024xi32, #hivm.address_space<ub>>) outs(%35 : memref<1024xi32, #hivm.address_space<ub>>) temp_buffer(%36 : memref<8xi32, #hivm.address_space<ub>>)
  %37 = hivm.hir.pointer_cast(%c61440_i64) : memref<1024xi64, #hivm.address_space<ub>>
  hivm.hir.vcast ins(%22 : memref<1024xi32, #hivm.address_space<ub>>) outs(%37 : memref<1024xi64, #hivm.address_space<ub>>)
  %38 = arith.extsi %arg8 : i32 to i64
  %39 = hivm.hir.pointer_cast(%c69632_i64) : memref<1024xi64, #hivm.address_space<ub>>
  hivm.hir.vbrc ins(%38 : i64) outs(%39 : memref<1024xi64, #hivm.address_space<ub>>)
  hivm.hir.set_flag[<PIPE_V>, <PIPE_S>, <EVENT_ID2>]
  %40 = hivm.hir.pointer_cast(%c12288_i64) : memref<1024xi1, #hivm.address_space<ub>>
  %41 = hivm.hir.pointer_cast(%c69632_i64) : memref<1024xi8, #hivm.address_space<ub>>
  hivm.hir.wait_flag[<PIPE_V>, <PIPE_S>, <EVENT_ID2>]
  scf.for %arg16 = %c0 to %c1024 step %c1 {
    %156 = memref.load %37[%arg16] : memref<1024xi64, #hivm.address_space<ub>>
    %157 = memref.load %39[%arg16] : memref<1024xi64, #hivm.address_space<ub>>
    %158 = arith.cmpi slt, %156, %157 : i64
    %159 = arith.extui %158 : i1 to i8
    memref.store %159, %41[%arg16] : memref<1024xi8, #hivm.address_space<ub>>
  }
  hivm.hir.set_flag[<PIPE_S>, <PIPE_V>, <EVENT_ID2>]
  %42 = hivm.hir.pointer_cast(%c12288_i64) : memref<1024xf16, #hivm.address_space<ub>>
  hivm.hir.wait_flag[<PIPE_S>, <PIPE_V>, <EVENT_ID2>]
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vcast ins(%41 : memref<1024xi8, #hivm.address_space<ub>>) outs(%42 : memref<1024xf16, #hivm.address_space<ub>>)
  %43 = hivm.hir.pointer_cast(%c16384_i64) : memref<1024xf16, #hivm.address_space<ub>>
  hivm.hir.vbrc ins(%cst : f16) outs(%43 : memref<1024xf16, #hivm.address_space<ub>>)
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vcmp ins(%42, %43 : memref<1024xf16, #hivm.address_space<ub>>, memref<1024xf16, #hivm.address_space<ub>>) outs(%40 : memref<1024xi1, #hivm.address_space<ub>>) compare_mode = <ne>
  %44 = hivm.hir.pointer_cast(%c12288_i64) : memref<1024xi1, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vand ins(%14, %40 : memref<1024xi1, #hivm.address_space<ub>>, memref<1024xi1, #hivm.address_space<ub>>) outs(%44 : memref<1024xi1, #hivm.address_space<ub>>)
  %45 = hivm.hir.pointer_cast(%c61440_i64) : memref<1024xi64, #hivm.address_space<ub>>
  hivm.hir.vcast ins(%35 : memref<1024xi32, #hivm.address_space<ub>>) outs(%45 : memref<1024xi64, #hivm.address_space<ub>>)
  %46 = arith.extsi %arg9 : i32 to i64
  %47 = hivm.hir.pointer_cast(%c69632_i64) : memref<1024xi64, #hivm.address_space<ub>>
  hivm.hir.vbrc ins(%46 : i64) outs(%47 : memref<1024xi64, #hivm.address_space<ub>>)
  hivm.hir.set_flag[<PIPE_V>, <PIPE_S>, <EVENT_ID3>]
  %48 = hivm.hir.pointer_cast(%c16384_i64) : memref<1024xi1, #hivm.address_space<ub>>
  %49 = hivm.hir.pointer_cast(%c61440_i64) : memref<1024xi8, #hivm.address_space<ub>>
  hivm.hir.wait_flag[<PIPE_V>, <PIPE_S>, <EVENT_ID3>]
  scf.for %arg16 = %c0 to %c1024 step %c1 {
    %156 = memref.load %45[%arg16] : memref<1024xi64, #hivm.address_space<ub>>
    %157 = memref.load %47[%arg16] : memref<1024xi64, #hivm.address_space<ub>>
    %158 = arith.cmpi slt, %156, %157 : i64
    %159 = arith.extui %158 : i1 to i8
    memref.store %159, %49[%arg16] : memref<1024xi8, #hivm.address_space<ub>>
  }
  hivm.hir.set_flag[<PIPE_S>, <PIPE_V>, <EVENT_ID3>]
  %50 = hivm.hir.pointer_cast(%c16384_i64) : memref<1024xf16, #hivm.address_space<ub>>
  hivm.hir.wait_flag[<PIPE_S>, <PIPE_V>, <EVENT_ID3>]
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vcast ins(%49 : memref<1024xi8, #hivm.address_space<ub>>) outs(%50 : memref<1024xf16, #hivm.address_space<ub>>)
  %51 = hivm.hir.pointer_cast(%c18432_i64) : memref<1024xf16, #hivm.address_space<ub>>
  hivm.hir.vbrc ins(%cst : f16) outs(%51 : memref<1024xf16, #hivm.address_space<ub>>)
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vcmp ins(%50, %51 : memref<1024xf16, #hivm.address_space<ub>>, memref<1024xf16, #hivm.address_space<ub>>) outs(%48 : memref<1024xi1, #hivm.address_space<ub>>) compare_mode = <ne>
  %52 = hivm.hir.pointer_cast(%c16384_i64) : memref<1024xi1, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vand ins(%44, %48 : memref<1024xi1, #hivm.address_space<ub>>, memref<1024xi1, #hivm.address_space<ub>>) outs(%52 : memref<1024xi1, #hivm.address_space<ub>>)
  %53 = hivm.hir.pointer_cast(%c20480_i64) : memref<1024xi32, #hivm.address_space<ub>>
  hivm.hir.vmul ins(%22, %35 : memref<1024xi32, #hivm.address_space<ub>>, memref<1024xi32, #hivm.address_space<ub>>) outs(%53 : memref<1024xi32, #hivm.address_space<ub>>)
  %54 = hivm.hir.pointer_cast(%c24576_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vcast ins(%53 : memref<1024xi32, #hivm.address_space<ub>>) outs(%54 : memref<1024xf32, #hivm.address_space<ub>>)
  %55 = arith.sitofp %arg9 : i32 to f32
  %56 = hivm.hir.pointer_cast(%c24576_i64) : memref<1024xf32, #hivm.address_space<ub>>
  %57 = hivm.hir.pointer_cast(%c12288_i64) : memref<8xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vdiv ins(%54, %55 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%56 : memref<1024xf32, #hivm.address_space<ub>>) temp_buffer(%57 : memref<8xf32, #hivm.address_space<ub>>)
  %58 = hivm.hir.pointer_cast(%c24576_i64) : memref<1024xi32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vcast ins(%56 : memref<1024xf32, #hivm.address_space<ub>>) outs(%58 : memref<1024xi32, #hivm.address_space<ub>>) round_mode = <trunc>
  %59 = hivm.hir.pointer_cast(%c24576_i64) : memref<1024xi32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%58, %arg9 : memref<1024xi32, #hivm.address_space<ub>>, i32) outs(%59 : memref<1024xi32, #hivm.address_space<ub>>)
  %60 = hivm.hir.pointer_cast(%c20480_i64) : memref<1024xi32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%53, %59 : memref<1024xi32, #hivm.address_space<ub>>, memref<1024xi32, #hivm.address_space<ub>>) outs(%60 : memref<1024xi32, #hivm.address_space<ub>>)
  %61 = hivm.hir.pointer_cast(%c20480_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vcast ins(%60 : memref<1024xi32, #hivm.address_space<ub>>) outs(%61 : memref<1024xf32, #hivm.address_space<ub>>)
  %62 = hivm.hir.pointer_cast(%c20480_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%61, %cst_19 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%62 : memref<1024xf32, #hivm.address_space<ub>>)
  %63 = hivm.hir.pointer_cast(%c20480_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%62, %arg12 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%63 : memref<1024xf32, #hivm.address_space<ub>>)
  %64 = hivm.hir.pointer_cast(%c24576_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%63, %cst_17 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%64 : memref<1024xf32, #hivm.address_space<ub>>)
  %65 = hivm.hir.pointer_cast(%c28672_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vadd ins(%64, %cst_16 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%65 : memref<1024xf32, #hivm.address_space<ub>>)
  %66 = hivm.hir.pointer_cast(%c32768_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vmul ins(%64, %cst_15 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%66 : memref<1024xf32, #hivm.address_space<ub>>)
  %67 = hivm.hir.pointer_cast(%c28672_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vcast ins(%65 : memref<1024xf32, #hivm.address_space<ub>>) outs(%67 : memref<1024xf32, #hivm.address_space<ub>>) round_mode = <round>
  %68 = hivm.hir.pointer_cast(%c32768_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vcast ins(%66 : memref<1024xf32, #hivm.address_space<ub>>) outs(%68 : memref<1024xf32, #hivm.address_space<ub>>) round_mode = <round>
  %69 = hivm.hir.pointer_cast(%c32768_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%68, %cst_14 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%69 : memref<1024xf32, #hivm.address_space<ub>>)
  %70 = hivm.hir.pointer_cast(%c36864_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%67, %69 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%70 : memref<1024xf32, #hivm.address_space<ub>>)
  %71 = hivm.hir.pointer_cast(%c40960_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vmul ins(%69, %cst_13 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%71 : memref<1024xf32, #hivm.address_space<ub>>)
  %72 = hivm.hir.pointer_cast(%c40960_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%63, %71 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%72 : memref<1024xf32, #hivm.address_space<ub>>)
  %73 = hivm.hir.pointer_cast(%c18432_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%70, %cst_13 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%73 : memref<1024xf32, #hivm.address_space<ub>>)
  %74 = hivm.hir.pointer_cast(%c18432_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%72, %73 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%74 : memref<1024xf32, #hivm.address_space<ub>>)
  %75 = hivm.hir.pointer_cast(%c45056_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vmul ins(%69, %cst_12 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%75 : memref<1024xf32, #hivm.address_space<ub>>)
  %76 = hivm.hir.pointer_cast(%c18432_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%74, %75 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%76 : memref<1024xf32, #hivm.address_space<ub>>)
  %77 = hivm.hir.pointer_cast(%c18432_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vadd ins(%76, %cst_11 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%77 : memref<1024xf32, #hivm.address_space<ub>>)
  %78 = hivm.hir.pointer_cast(%c49152_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vmul ins(%70, %cst_12 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%78 : memref<1024xf32, #hivm.address_space<ub>>)
  %79 = hivm.hir.pointer_cast(%c49152_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%77, %78 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%79 : memref<1024xf32, #hivm.address_space<ub>>)
  %80 = hivm.hir.pointer_cast(%c18432_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%69, %cst_10 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%80 : memref<1024xf32, #hivm.address_space<ub>>)
  %81 = hivm.hir.pointer_cast(%c49152_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%79, %80 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%81 : memref<1024xf32, #hivm.address_space<ub>>)
  %82 = hivm.hir.pointer_cast(%c53248_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vmul ins(%70, %cst_10 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%82 : memref<1024xf32, #hivm.address_space<ub>>)
  %83 = hivm.hir.pointer_cast(%c49152_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%81, %82 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%83 : memref<1024xf32, #hivm.address_space<ub>>)
  %84 = hivm.hir.pointer_cast(%c53248_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%69, %cst_9 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%84 : memref<1024xf32, #hivm.address_space<ub>>)
  %85 = hivm.hir.pointer_cast(%c49152_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%83, %84 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%85 : memref<1024xf32, #hivm.address_space<ub>>)
  %86 = hivm.hir.pointer_cast(%c36864_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vmul ins(%70, %cst_9 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%86 : memref<1024xf32, #hivm.address_space<ub>>)
  %87 = hivm.hir.pointer_cast(%c36864_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%85, %86 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%87 : memref<1024xf32, #hivm.address_space<ub>>)
  %88 = hivm.hir.pointer_cast(%c36864_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vadd ins(%87, %cst_8 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%88 : memref<1024xf32, #hivm.address_space<ub>>)
  %89 = hivm.hir.pointer_cast(%c49152_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vmul ins(%67, %cst_16 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%89 : memref<1024xf32, #hivm.address_space<ub>>)
  %90 = hivm.hir.pointer_cast(%c49152_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vcast ins(%89 : memref<1024xf32, #hivm.address_space<ub>>) outs(%90 : memref<1024xf32, #hivm.address_space<ub>>) round_mode = <floor>
  %91 = hivm.hir.pointer_cast(%c49152_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%90, %cst_7 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%91 : memref<1024xf32, #hivm.address_space<ub>>)
  %92 = hivm.hir.pointer_cast(%c28672_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vmul ins(%67, %cst_6 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%92 : memref<1024xf32, #hivm.address_space<ub>>)
  %93 = hivm.hir.pointer_cast(%c28672_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vadd ins(%91, %92 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%93 : memref<1024xf32, #hivm.address_space<ub>>)
  %94 = hivm.hir.pointer_cast(%c28672_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vadd ins(%93, %cst_5 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%94 : memref<1024xf32, #hivm.address_space<ub>>)
  %95 = hivm.hir.pointer_cast(%c49152_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vmul ins(%88, %88 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%95 : memref<1024xf32, #hivm.address_space<ub>>)
  %96 = hivm.hir.pointer_cast(%c57344_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%95, %cst_4 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%96 : memref<1024xf32, #hivm.address_space<ub>>)
  %97 = hivm.hir.pointer_cast(%c57344_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vadd ins(%96, %cst_3 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%97 : memref<1024xf32, #hivm.address_space<ub>>)
  %98 = hivm.hir.pointer_cast(%c57344_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%97, %95 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%98 : memref<1024xf32, #hivm.address_space<ub>>)
  %99 = hivm.hir.pointer_cast(%c57344_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vadd ins(%98, %cst_2 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%99 : memref<1024xf32, #hivm.address_space<ub>>)
  %100 = hivm.hir.pointer_cast(%c57344_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%99, %95 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%100 : memref<1024xf32, #hivm.address_space<ub>>)
  %101 = hivm.hir.pointer_cast(%c57344_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vadd ins(%100, %cst_1 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%101 : memref<1024xf32, #hivm.address_space<ub>>)
  %102 = hivm.hir.pointer_cast(%c57344_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%101, %95 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%102 : memref<1024xf32, #hivm.address_space<ub>>)
  %103 = hivm.hir.pointer_cast(%c57344_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vadd ins(%102, %cst_5 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%103 : memref<1024xf32, #hivm.address_space<ub>>)
  %104 = hivm.hir.pointer_cast(%c57344_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%103, %88 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%104 : memref<1024xf32, #hivm.address_space<ub>>)
  %105 = hivm.hir.pointer_cast(%c28672_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%104, %94 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%105 : memref<1024xf32, #hivm.address_space<ub>>)
  %106 = hivm.hir.pointer_cast(%c28672_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmin ins(%105, %cst_5 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%106 : memref<1024xf32, #hivm.address_space<ub>>)
  %107 = hivm.hir.pointer_cast(%c28672_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmax ins(%106, %cst_0 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%107 : memref<1024xf32, #hivm.address_space<ub>>)
  %108 = hivm.hir.pointer_cast(%c28672_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%107, %arg10 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%108 : memref<1024xf32, #hivm.address_space<ub>>)
  %109 = hivm.hir.pointer_cast(%c24576_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vcast ins(%64 : memref<1024xf32, #hivm.address_space<ub>>) outs(%109 : memref<1024xf32, #hivm.address_space<ub>>) round_mode = <round>
  %110 = hivm.hir.pointer_cast(%c32768_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%109, %69 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%110 : memref<1024xf32, #hivm.address_space<ub>>)
  %111 = hivm.hir.pointer_cast(%c36864_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%110, %cst_13 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%111 : memref<1024xf32, #hivm.address_space<ub>>)
  %112 = hivm.hir.pointer_cast(%c36864_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%72, %111 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%112 : memref<1024xf32, #hivm.address_space<ub>>)
  %113 = hivm.hir.pointer_cast(%c45056_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%112, %75 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%113 : memref<1024xf32, #hivm.address_space<ub>>)
  %114 = hivm.hir.pointer_cast(%c36864_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%110, %cst_12 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%114 : memref<1024xf32, #hivm.address_space<ub>>)
  %115 = hivm.hir.pointer_cast(%c36864_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%113, %114 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%115 : memref<1024xf32, #hivm.address_space<ub>>)
  %116 = hivm.hir.pointer_cast(%c18432_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%115, %80 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%116 : memref<1024xf32, #hivm.address_space<ub>>)
  %117 = hivm.hir.pointer_cast(%c36864_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%110, %cst_10 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%117 : memref<1024xf32, #hivm.address_space<ub>>)
  %118 = hivm.hir.pointer_cast(%c36864_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%116, %117 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%118 : memref<1024xf32, #hivm.address_space<ub>>)
  %119 = hivm.hir.pointer_cast(%c36864_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%118, %84 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%119 : memref<1024xf32, #hivm.address_space<ub>>)
  %120 = hivm.hir.pointer_cast(%c32768_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vmul ins(%110, %cst_9 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%120 : memref<1024xf32, #hivm.address_space<ub>>)
  %121 = hivm.hir.pointer_cast(%c32768_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%119, %120 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%121 : memref<1024xf32, #hivm.address_space<ub>>)
  %122 = hivm.hir.pointer_cast(%c18432_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vmul ins(%109, %cst_16 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%122 : memref<1024xf32, #hivm.address_space<ub>>)
  %123 = hivm.hir.pointer_cast(%c18432_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vcast ins(%122 : memref<1024xf32, #hivm.address_space<ub>>) outs(%123 : memref<1024xf32, #hivm.address_space<ub>>) round_mode = <floor>
  %124 = hivm.hir.pointer_cast(%c18432_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%123, %cst_7 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%124 : memref<1024xf32, #hivm.address_space<ub>>)
  %125 = hivm.hir.pointer_cast(%c24576_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vmul ins(%109, %cst_6 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%125 : memref<1024xf32, #hivm.address_space<ub>>)
  %126 = hivm.hir.pointer_cast(%c24576_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vadd ins(%124, %125 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%126 : memref<1024xf32, #hivm.address_space<ub>>)
  %127 = hivm.hir.pointer_cast(%c24576_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vadd ins(%126, %cst_5 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%127 : memref<1024xf32, #hivm.address_space<ub>>)
  %128 = hivm.hir.pointer_cast(%c18432_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vmul ins(%121, %121 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%128 : memref<1024xf32, #hivm.address_space<ub>>)
  %129 = hivm.hir.pointer_cast(%c36864_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%128, %cst_4 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%129 : memref<1024xf32, #hivm.address_space<ub>>)
  %130 = hivm.hir.pointer_cast(%c36864_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vadd ins(%129, %cst_3 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%130 : memref<1024xf32, #hivm.address_space<ub>>)
  %131 = hivm.hir.pointer_cast(%c36864_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%130, %128 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%131 : memref<1024xf32, #hivm.address_space<ub>>)
  %132 = hivm.hir.pointer_cast(%c36864_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vadd ins(%131, %cst_2 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%132 : memref<1024xf32, #hivm.address_space<ub>>)
  %133 = hivm.hir.pointer_cast(%c36864_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%132, %128 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%133 : memref<1024xf32, #hivm.address_space<ub>>)
  %134 = hivm.hir.pointer_cast(%c36864_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vadd ins(%133, %cst_1 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%134 : memref<1024xf32, #hivm.address_space<ub>>)
  %135 = hivm.hir.pointer_cast(%c18432_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%134, %128 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%135 : memref<1024xf32, #hivm.address_space<ub>>)
  %136 = hivm.hir.pointer_cast(%c18432_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vadd ins(%135, %cst_5 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%136 : memref<1024xf32, #hivm.address_space<ub>>)
  %137 = hivm.hir.pointer_cast(%c32768_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%136, %121 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%137 : memref<1024xf32, #hivm.address_space<ub>>)
  %138 = hivm.hir.pointer_cast(%c24576_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%137, %127 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%138 : memref<1024xf32, #hivm.address_space<ub>>)
  %139 = hivm.hir.pointer_cast(%c24576_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%138, %arg10 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%139 : memref<1024xf32, #hivm.address_space<ub>>)
  %140 = hivm.hir.pointer_cast(%c24576_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%139, %arg11 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%140 : memref<1024xf32, #hivm.address_space<ub>>)
  %141 = hivm.hir.pointer_cast(%c18432_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%140, %cst_0 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%141 : memref<1024xf32, #hivm.address_space<ub>>)
  %142 = hivm.hir.pointer_cast(%c18432_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vadd ins(%141, %cst_18 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%142 : memref<1024xf32, #hivm.address_space<ub>>)
  %143 = hivm.hir.pointer_cast(%c32768_i64) : memref<1024xf32, #hivm.address_space<ub>>
  %144 = hivm.hir.pointer_cast(%c12288_i64) : memref<8xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsel ins(%29, %142, %108 : memref<1024xi1, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%143 : memref<1024xf32, #hivm.address_space<ub>>) temp_buffer(%144 : memref<8xf32, #hivm.address_space<ub>>)
  %145 = hivm.hir.pointer_cast(%c18432_i64) : memref<1024xf32, #hivm.address_space<ub>>
  %146 = hivm.hir.pointer_cast(%c12288_i64) : memref<8xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsel ins(%29, %108, %140 : memref<1024xi1, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%145 : memref<1024xf32, #hivm.address_space<ub>>) temp_buffer(%146 : memref<8xf32, #hivm.address_space<ub>>)
  %147 = arith.index_cast %8 : i32 to index
  %reinterpret_cast = memref.reinterpret_cast %arg3 to offset: [%147], sizes: [1024], strides: [1] : memref<?xf32, #hivm.address_space<gm>> to memref<1024xf32, strided<[1], offset: ?>, #hivm.address_space<gm>>
  %148 = hivm.hir.pointer_cast(%c0_i64) : memref<1024xf32, #hivm.address_space<ub>>
  %149 = hivm.hir.pointer_cast(%c12288_i64) : memref<8xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsel ins(%52, %143, %7 : memref<1024xi1, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%148 : memref<1024xf32, #hivm.address_space<ub>>) temp_buffer(%149 : memref<8xf32, #hivm.address_space<ub>>)
  hivm.hir.set_flag[<PIPE_V>, <PIPE_MTE3>, <EVENT_ID0>]
  %150 = arith.index_cast %arg5 : i32 to index
  %151 = affine.max affine_map<()[s0, s1] -> (s1, s0)>()[%147, %150]
  %152 = affine.min affine_map<()[s0, s1] -> (s1 + 1024, s0)>()[%151, %147]
  %153 = affine.apply affine_map<()[s0, s1] -> (s0 - s1)>()[%152, %147]
  %subview = memref.subview %148[0] [%153] [1] : memref<1024xf32, #hivm.address_space<ub>> to memref<?xf32, strided<[1]>, #hivm.address_space<ub>>
  %subview_20 = memref.subview %reinterpret_cast[0] [%153] [1] : memref<1024xf32, strided<[1], offset: ?>, #hivm.address_space<gm>> to memref<?xf32, strided<[1], offset: ?>, #hivm.address_space<gm>>
  hivm.hir.wait_flag[<PIPE_V>, <PIPE_MTE3>, <EVENT_ID0>]
  hivm.hir.store ins(%subview : memref<?xf32, strided<[1]>, #hivm.address_space<ub>>) outs(%subview_20 : memref<?xf32, strided<[1], offset: ?>, #hivm.address_space<gm>>)
  %reinterpret_cast_21 = memref.reinterpret_cast %arg4 to offset: [%147], sizes: [1024], strides: [1] : memref<?xf32, #hivm.address_space<gm>> to memref<1024xf32, strided<[1], offset: ?>, #hivm.address_space<gm>>
  %154 = hivm.hir.pointer_cast(%c4096_i64) : memref<1024xf32, #hivm.address_space<ub>>
  %155 = hivm.hir.pointer_cast(%c12288_i64) : memref<8xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsel ins(%52, %145, %7 : memref<1024xi1, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%154 : memref<1024xf32, #hivm.address_space<ub>>) temp_buffer(%155 : memref<8xf32, #hivm.address_space<ub>>)
  hivm.hir.set_flag[<PIPE_V>, <PIPE_MTE3>, <EVENT_ID1>]
  %subview_22 = memref.subview %154[0] [%153] [1] : memref<1024xf32, #hivm.address_space<ub>> to memref<?xf32, strided<[1]>, #hivm.address_space<ub>>
  %subview_23 = memref.subview %reinterpret_cast_21[0] [%153] [1] : memref<1024xf32, strided<[1], offset: ?>, #hivm.address_space<gm>> to memref<?xf32, strided<[1], offset: ?>, #hivm.address_space<gm>>
  hivm.hir.wait_flag[<PIPE_V>, <PIPE_MTE3>, <EVENT_ID1>]
  hivm.hir.store ins(%subview_22 : memref<?xf32, strided<[1]>, #hivm.address_space<ub>>) outs(%subview_23 : memref<?xf32, strided<[1], offset: ?>, #hivm.address_space<gm>>)
  hivm.hir.pipe_barrier[<PIPE_ALL>]
  return
}

warning: overriding the module target triple with x86_64-unknown-linux-gnu [-Woverride-module]
1 warning generated.
warning: overriding the module target triple with x86_64-unknown-linux-gnu [-Woverride-module]
1 warning generated.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":101:14): warning: Op 'hivm.hir.vcmp' will execute by scalar instruction with low effiency
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":105:18): warning: Op 'hivm.hir.vcmp' will execute by scalar instruction with low effiency
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":107:18): warning: Op 'hivm.hir.vcmp' will execute by scalar instruction with low effiency
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":107:32): warning: Op 'hivm.hir.vcmp' will execute by scalar instruction with low effiency
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":84:0): warning: Overwriting the target by the pass option...
