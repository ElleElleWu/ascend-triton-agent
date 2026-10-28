// -----// IR Dump After InjectSync (hivm-inject-sync) //----- //
func.func @_etab_dft_kernel(%arg0: i64 {hacc.arg_type = #hacc.arg_type<ffts_base_address>}, %arg1: memref<?xi8, #hivm.address_space<gm>> {hacc.arg_type = #hacc.arg_type<sync_block_lock>}, %arg2: memref<?xi8, #hivm.address_space<gm>> {hacc.arg_type = #hacc.arg_type<workspace>}, %arg3: memref<?xf32, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 1 : i32}, %arg4: memref<?xf32, #hivm.address_space<gm>> {tt.divisibility = 16 : i32, tt.tensor_kind = 1 : i32}, %arg5: i32 {tt.divisibility = 16 : i32}, %arg6: i32 {tt.divisibility = 16 : i32}, %arg7: i32 {tt.divisibility = 16 : i32}, %arg8: i32, %arg9: i32, %arg10: f32, %arg11: f32, %arg12: f32, %arg13: i32, %arg14: i32, %arg15: i32) attributes {SyncBlockLockArgIdx = 0 : i64, WorkspaceArgIdx = 1 : i64, func_dyn_memref_args = dense<[false, true, true, true, true, false, false, false, false, false, false, false, false, false, false, false]> : vector<16xi1>, hacc.entry, hacc.function_kind = #hacc.function_kind<DEVICE>, hivm.func_core_type = #hivm.func_core_type<AIV>, hivm.storage_aligned, mix_mode = "aiv", parallel_mode = "simd"} {
  %c1024 = arith.constant 1024 : index
  %c172128_i64 = arith.constant 172128 : i64
  %c168032_i64 = arith.constant 168032 : i64
  %c163936_i64 = arith.constant 163936 : i64
  %c159840_i64 = arith.constant 159840 : i64
  %c155744_i64 = arith.constant 155744 : i64
  %c151648_i64 = arith.constant 151648 : i64
  %c147552_i64 = arith.constant 147552 : i64
  %c143456_i64 = arith.constant 143456 : i64
  %c143424_i64 = arith.constant 143424 : i64
  %c139328_i64 = arith.constant 139328 : i64
  %c135232_i64 = arith.constant 135232 : i64
  %c131136_i64 = arith.constant 131136 : i64
  %c127040_i64 = arith.constant 127040 : i64
  %c122944_i64 = arith.constant 122944 : i64
  %c118848_i64 = arith.constant 118848 : i64
  %c114752_i64 = arith.constant 114752 : i64
  %c110656_i64 = arith.constant 110656 : i64
  %c106560_i64 = arith.constant 106560 : i64
  %c102464_i64 = arith.constant 102464 : i64
  %c98368_i64 = arith.constant 98368 : i64
  %c94272_i64 = arith.constant 94272 : i64
  %c90176_i64 = arith.constant 90176 : i64
  %c86080_i64 = arith.constant 86080 : i64
  %c81984_i64 = arith.constant 81984 : i64
  %c81952_i64 = arith.constant 81952 : i64
  %c77856_i64 = arith.constant 77856 : i64
  %c75808_i64 = arith.constant 75808 : i64
  %c73760_i64 = arith.constant 73760 : i64
  %c65568_i64 = arith.constant 65568 : i64
  %c57376_i64 = arith.constant 57376 : i64
  %c55328_i64 = arith.constant 55328 : i64
  %c53280_i64 = arith.constant 53280 : i64
  %c45088_i64 = arith.constant 45088 : i64
  %c36896_i64 = arith.constant 36896 : i64
  %c32800_i64 = arith.constant 32800 : i64
  %c32768_i64 = arith.constant 32768 : i64
  %c28672_i64 = arith.constant 28672 : i64
  %c24576_i64 = arith.constant 24576 : i64
  %c26624_i64 = arith.constant 26624 : i64
  %c16384_i64 = arith.constant 16384 : i64
  %c8192_i64 = arith.constant 8192 : i64
  %c4096_i64 = arith.constant 4096 : i64
  %c0_i64 = arith.constant 0 : i64
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
  %7 = hivm.hir.pointer_cast(%c0_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vbrc ins(%cst_18 : f32) outs(%7 : memref<1024xf32, #hivm.address_space<ub>>)
  %8 = arith.muli %6, %c1024_i32 : i32
  %9 = hivm.hir.pointer_cast(%c4096_i64) : memref<1024xi32, #hivm.address_space<ub>>
  hivm.hir.varange offset[%c0] strides[%c1] outs(%9 : memref<1024xi32, #hivm.address_space<ub>>)
  %10 = hivm.hir.pointer_cast(%c4096_i64) : memref<1024xi32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vadd ins(%9, %8 : memref<1024xi32, #hivm.address_space<ub>>, i32) outs(%10 : memref<1024xi32, #hivm.address_space<ub>>)
  %11 = hivm.hir.pointer_cast(%c8192_i64) : memref<1024xi64, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vcast ins(%10 : memref<1024xi32, #hivm.address_space<ub>>) outs(%11 : memref<1024xi64, #hivm.address_space<ub>>)
  %12 = arith.extsi %arg5 : i32 to i64
  %13 = hivm.hir.pointer_cast(%c16384_i64) : memref<1024xi64, #hivm.address_space<ub>>
  hivm.hir.vbrc ins(%12 : i64) outs(%13 : memref<1024xi64, #hivm.address_space<ub>>)
  hivm.hir.set_flag[<PIPE_V>, <PIPE_S>, <EVENT_ID0>]
  %14 = hivm.hir.pointer_cast(%c26624_i64) : memref<1024xi1, #hivm.address_space<ub>>
  %15 = hivm.hir.pointer_cast(%c8192_i64) : memref<1024xi8, #hivm.address_space<ub>>
  hivm.hir.wait_flag[<PIPE_V>, <PIPE_S>, <EVENT_ID0>]
  scf.for %arg16 = %c0 to %c1024 step %c1 {
    %138 = memref.load %11[%arg16] : memref<1024xi64, #hivm.address_space<ub>>
    %139 = memref.load %13[%arg16] : memref<1024xi64, #hivm.address_space<ub>>
    %140 = arith.cmpi slt, %138, %139 : i64
    %141 = arith.extui %140 : i1 to i8
    memref.store %141, %15[%arg16] : memref<1024xi8, #hivm.address_space<ub>>
  }
  hivm.hir.set_flag[<PIPE_S>, <PIPE_V>, <EVENT_ID0>]
  %16 = hivm.hir.pointer_cast(%c24576_i64) : memref<1024xf16, #hivm.address_space<ub>>
  hivm.hir.wait_flag[<PIPE_S>, <PIPE_V>, <EVENT_ID0>]
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vcast ins(%15 : memref<1024xi8, #hivm.address_space<ub>>) outs(%16 : memref<1024xf16, #hivm.address_space<ub>>)
  %17 = hivm.hir.pointer_cast(%c26624_i64) : memref<1024xf16, #hivm.address_space<ub>>
  hivm.hir.vbrc ins(%cst : f16) outs(%17 : memref<1024xf16, #hivm.address_space<ub>>)
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vcmp ins(%16, %17 : memref<1024xf16, #hivm.address_space<ub>>, memref<1024xf16, #hivm.address_space<ub>>) outs(%14 : memref<1024xi1, #hivm.address_space<ub>>) compare_mode = <ne>
  %18 = hivm.hir.pointer_cast(%c28672_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vcast ins(%10 : memref<1024xi32, #hivm.address_space<ub>>) outs(%18 : memref<1024xf32, #hivm.address_space<ub>>)
  %19 = arith.sitofp %arg7 : i32 to f32
  %20 = hivm.hir.pointer_cast(%c28672_i64) : memref<1024xf32, #hivm.address_space<ub>>
  %21 = hivm.hir.pointer_cast(%c32768_i64) : memref<8xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vdiv ins(%18, %19 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%20 : memref<1024xf32, #hivm.address_space<ub>>) temp_buffer(%21 : memref<8xf32, #hivm.address_space<ub>>)
  %22 = hivm.hir.pointer_cast(%c28672_i64) : memref<1024xi32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vcast ins(%20 : memref<1024xf32, #hivm.address_space<ub>>) outs(%22 : memref<1024xi32, #hivm.address_space<ub>>) round_mode = <trunc>
  %23 = hivm.hir.pointer_cast(%c32800_i64) : memref<1024xi32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%22, %arg7 : memref<1024xi32, #hivm.address_space<ub>>, i32) outs(%23 : memref<1024xi32, #hivm.address_space<ub>>)
  %24 = hivm.hir.pointer_cast(%c4096_i64) : memref<1024xi32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%10, %23 : memref<1024xi32, #hivm.address_space<ub>>, memref<1024xi32, #hivm.address_space<ub>>) outs(%24 : memref<1024xi32, #hivm.address_space<ub>>)
  %25 = hivm.hir.pointer_cast(%c36896_i64) : memref<1024xi64, #hivm.address_space<ub>>
  hivm.hir.vcast ins(%22 : memref<1024xi32, #hivm.address_space<ub>>) outs(%25 : memref<1024xi64, #hivm.address_space<ub>>)
  %26 = arith.extsi %arg8 : i32 to i64
  %27 = hivm.hir.pointer_cast(%c45088_i64) : memref<1024xi64, #hivm.address_space<ub>>
  hivm.hir.vbrc ins(%26 : i64) outs(%27 : memref<1024xi64, #hivm.address_space<ub>>)
  hivm.hir.set_flag[<PIPE_V>, <PIPE_S>, <EVENT_ID1>]
  %28 = hivm.hir.pointer_cast(%c53280_i64) : memref<1024xi1, #hivm.address_space<ub>>
  %29 = hivm.hir.pointer_cast(%c36896_i64) : memref<1024xi8, #hivm.address_space<ub>>
  hivm.hir.wait_flag[<PIPE_V>, <PIPE_S>, <EVENT_ID1>]
  scf.for %arg16 = %c0 to %c1024 step %c1 {
    %138 = memref.load %25[%arg16] : memref<1024xi64, #hivm.address_space<ub>>
    %139 = memref.load %27[%arg16] : memref<1024xi64, #hivm.address_space<ub>>
    %140 = arith.cmpi slt, %138, %139 : i64
    %141 = arith.extui %140 : i1 to i8
    memref.store %141, %29[%arg16] : memref<1024xi8, #hivm.address_space<ub>>
  }
  hivm.hir.set_flag[<PIPE_S>, <PIPE_V>, <EVENT_ID1>]
  %30 = hivm.hir.pointer_cast(%c53280_i64) : memref<1024xf16, #hivm.address_space<ub>>
  hivm.hir.wait_flag[<PIPE_S>, <PIPE_V>, <EVENT_ID1>]
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vcast ins(%29 : memref<1024xi8, #hivm.address_space<ub>>) outs(%30 : memref<1024xf16, #hivm.address_space<ub>>)
  %31 = hivm.hir.pointer_cast(%c55328_i64) : memref<1024xf16, #hivm.address_space<ub>>
  hivm.hir.vbrc ins(%cst : f16) outs(%31 : memref<1024xf16, #hivm.address_space<ub>>)
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vcmp ins(%30, %31 : memref<1024xf16, #hivm.address_space<ub>>, memref<1024xf16, #hivm.address_space<ub>>) outs(%28 : memref<1024xi1, #hivm.address_space<ub>>) compare_mode = <ne>
  %32 = hivm.hir.pointer_cast(%c26624_i64) : memref<1024xi1, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vand ins(%14, %28 : memref<1024xi1, #hivm.address_space<ub>>, memref<1024xi1, #hivm.address_space<ub>>) outs(%32 : memref<1024xi1, #hivm.address_space<ub>>)
  %33 = hivm.hir.pointer_cast(%c57376_i64) : memref<1024xi64, #hivm.address_space<ub>>
  hivm.hir.vcast ins(%24 : memref<1024xi32, #hivm.address_space<ub>>) outs(%33 : memref<1024xi64, #hivm.address_space<ub>>)
  %34 = arith.extsi %arg9 : i32 to i64
  %35 = hivm.hir.pointer_cast(%c65568_i64) : memref<1024xi64, #hivm.address_space<ub>>
  hivm.hir.vbrc ins(%34 : i64) outs(%35 : memref<1024xi64, #hivm.address_space<ub>>)
  hivm.hir.set_flag[<PIPE_V>, <PIPE_S>, <EVENT_ID2>]
  %36 = hivm.hir.pointer_cast(%c73760_i64) : memref<1024xi1, #hivm.address_space<ub>>
  %37 = hivm.hir.pointer_cast(%c65568_i64) : memref<1024xi8, #hivm.address_space<ub>>
  hivm.hir.wait_flag[<PIPE_V>, <PIPE_S>, <EVENT_ID2>]
  scf.for %arg16 = %c0 to %c1024 step %c1 {
    %138 = memref.load %33[%arg16] : memref<1024xi64, #hivm.address_space<ub>>
    %139 = memref.load %35[%arg16] : memref<1024xi64, #hivm.address_space<ub>>
    %140 = arith.cmpi slt, %138, %139 : i64
    %141 = arith.extui %140 : i1 to i8
    memref.store %141, %37[%arg16] : memref<1024xi8, #hivm.address_space<ub>>
  }
  hivm.hir.set_flag[<PIPE_S>, <PIPE_V>, <EVENT_ID2>]
  %38 = hivm.hir.pointer_cast(%c73760_i64) : memref<1024xf16, #hivm.address_space<ub>>
  hivm.hir.wait_flag[<PIPE_S>, <PIPE_V>, <EVENT_ID2>]
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vcast ins(%37 : memref<1024xi8, #hivm.address_space<ub>>) outs(%38 : memref<1024xf16, #hivm.address_space<ub>>)
  %39 = hivm.hir.pointer_cast(%c75808_i64) : memref<1024xf16, #hivm.address_space<ub>>
  hivm.hir.vbrc ins(%cst : f16) outs(%39 : memref<1024xf16, #hivm.address_space<ub>>)
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vcmp ins(%38, %39 : memref<1024xf16, #hivm.address_space<ub>>, memref<1024xf16, #hivm.address_space<ub>>) outs(%36 : memref<1024xi1, #hivm.address_space<ub>>) compare_mode = <ne>
  %40 = hivm.hir.pointer_cast(%c26624_i64) : memref<1024xi1, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vand ins(%32, %36 : memref<1024xi1, #hivm.address_space<ub>>, memref<1024xi1, #hivm.address_space<ub>>) outs(%40 : memref<1024xi1, #hivm.address_space<ub>>)
  %41 = hivm.hir.pointer_cast(%c28672_i64) : memref<1024xi32, #hivm.address_space<ub>>
  hivm.hir.vmul ins(%22, %24 : memref<1024xi32, #hivm.address_space<ub>>, memref<1024xi32, #hivm.address_space<ub>>) outs(%41 : memref<1024xi32, #hivm.address_space<ub>>)
  %42 = hivm.hir.pointer_cast(%c77856_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vcast ins(%41 : memref<1024xi32, #hivm.address_space<ub>>) outs(%42 : memref<1024xf32, #hivm.address_space<ub>>)
  %43 = arith.sitofp %arg9 : i32 to f32
  %44 = hivm.hir.pointer_cast(%c77856_i64) : memref<1024xf32, #hivm.address_space<ub>>
  %45 = hivm.hir.pointer_cast(%c81952_i64) : memref<8xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vdiv ins(%42, %43 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%44 : memref<1024xf32, #hivm.address_space<ub>>) temp_buffer(%45 : memref<8xf32, #hivm.address_space<ub>>)
  %46 = hivm.hir.pointer_cast(%c77856_i64) : memref<1024xi32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vcast ins(%44 : memref<1024xf32, #hivm.address_space<ub>>) outs(%46 : memref<1024xi32, #hivm.address_space<ub>>) round_mode = <trunc>
  %47 = hivm.hir.pointer_cast(%c77856_i64) : memref<1024xi32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%46, %arg9 : memref<1024xi32, #hivm.address_space<ub>>, i32) outs(%47 : memref<1024xi32, #hivm.address_space<ub>>)
  %48 = hivm.hir.pointer_cast(%c77856_i64) : memref<1024xi32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%41, %47 : memref<1024xi32, #hivm.address_space<ub>>, memref<1024xi32, #hivm.address_space<ub>>) outs(%48 : memref<1024xi32, #hivm.address_space<ub>>)
  %49 = hivm.hir.pointer_cast(%c77856_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vcast ins(%48 : memref<1024xi32, #hivm.address_space<ub>>) outs(%49 : memref<1024xf32, #hivm.address_space<ub>>)
  %50 = hivm.hir.pointer_cast(%c77856_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%49, %cst_19 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%50 : memref<1024xf32, #hivm.address_space<ub>>)
  %51 = hivm.hir.pointer_cast(%c77856_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%50, %arg12 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%51 : memref<1024xf32, #hivm.address_space<ub>>)
  %52 = hivm.hir.pointer_cast(%c81984_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%51, %cst_17 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%52 : memref<1024xf32, #hivm.address_space<ub>>)
  %53 = hivm.hir.pointer_cast(%c86080_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vadd ins(%52, %cst_16 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%53 : memref<1024xf32, #hivm.address_space<ub>>)
  %54 = hivm.hir.pointer_cast(%c90176_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vmul ins(%52, %cst_15 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%54 : memref<1024xf32, #hivm.address_space<ub>>)
  %55 = hivm.hir.pointer_cast(%c86080_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vcast ins(%53 : memref<1024xf32, #hivm.address_space<ub>>) outs(%55 : memref<1024xf32, #hivm.address_space<ub>>) round_mode = <round>
  %56 = hivm.hir.pointer_cast(%c90176_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vcast ins(%54 : memref<1024xf32, #hivm.address_space<ub>>) outs(%56 : memref<1024xf32, #hivm.address_space<ub>>) round_mode = <round>
  %57 = hivm.hir.pointer_cast(%c90176_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%56, %cst_14 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%57 : memref<1024xf32, #hivm.address_space<ub>>)
  %58 = hivm.hir.pointer_cast(%c94272_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%55, %57 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%58 : memref<1024xf32, #hivm.address_space<ub>>)
  %59 = hivm.hir.pointer_cast(%c98368_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vmul ins(%57, %cst_13 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%59 : memref<1024xf32, #hivm.address_space<ub>>)
  %60 = hivm.hir.pointer_cast(%c77856_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%51, %59 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%60 : memref<1024xf32, #hivm.address_space<ub>>)
  %61 = hivm.hir.pointer_cast(%c102464_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vmul ins(%58, %cst_13 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%61 : memref<1024xf32, #hivm.address_space<ub>>)
  %62 = hivm.hir.pointer_cast(%c102464_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%60, %61 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%62 : memref<1024xf32, #hivm.address_space<ub>>)
  %63 = hivm.hir.pointer_cast(%c106560_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vmul ins(%57, %cst_12 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%63 : memref<1024xf32, #hivm.address_space<ub>>)
  %64 = hivm.hir.pointer_cast(%c102464_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%62, %63 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%64 : memref<1024xf32, #hivm.address_space<ub>>)
  %65 = hivm.hir.pointer_cast(%c102464_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vadd ins(%64, %cst_11 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%65 : memref<1024xf32, #hivm.address_space<ub>>)
  %66 = hivm.hir.pointer_cast(%c110656_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vmul ins(%58, %cst_12 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%66 : memref<1024xf32, #hivm.address_space<ub>>)
  %67 = hivm.hir.pointer_cast(%c102464_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%65, %66 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%67 : memref<1024xf32, #hivm.address_space<ub>>)
  %68 = hivm.hir.pointer_cast(%c114752_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vmul ins(%57, %cst_10 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%68 : memref<1024xf32, #hivm.address_space<ub>>)
  %69 = hivm.hir.pointer_cast(%c102464_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%67, %68 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%69 : memref<1024xf32, #hivm.address_space<ub>>)
  %70 = hivm.hir.pointer_cast(%c118848_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vmul ins(%58, %cst_10 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%70 : memref<1024xf32, #hivm.address_space<ub>>)
  %71 = hivm.hir.pointer_cast(%c118848_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%69, %70 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%71 : memref<1024xf32, #hivm.address_space<ub>>)
  %72 = hivm.hir.pointer_cast(%c122944_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vmul ins(%57, %cst_9 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%72 : memref<1024xf32, #hivm.address_space<ub>>)
  %73 = hivm.hir.pointer_cast(%c118848_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%71, %72 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%73 : memref<1024xf32, #hivm.address_space<ub>>)
  %74 = hivm.hir.pointer_cast(%c94272_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vmul ins(%58, %cst_9 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%74 : memref<1024xf32, #hivm.address_space<ub>>)
  %75 = hivm.hir.pointer_cast(%c118848_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%73, %74 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%75 : memref<1024xf32, #hivm.address_space<ub>>)
  %76 = hivm.hir.pointer_cast(%c118848_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vadd ins(%75, %cst_8 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%76 : memref<1024xf32, #hivm.address_space<ub>>)
  %77 = hivm.hir.pointer_cast(%c127040_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vmul ins(%55, %cst_16 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%77 : memref<1024xf32, #hivm.address_space<ub>>)
  %78 = hivm.hir.pointer_cast(%c127040_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vcast ins(%77 : memref<1024xf32, #hivm.address_space<ub>>) outs(%78 : memref<1024xf32, #hivm.address_space<ub>>) round_mode = <floor>
  %79 = hivm.hir.pointer_cast(%c127040_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%78, %cst_7 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%79 : memref<1024xf32, #hivm.address_space<ub>>)
  %80 = hivm.hir.pointer_cast(%c86080_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vmul ins(%55, %cst_6 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%80 : memref<1024xf32, #hivm.address_space<ub>>)
  %81 = hivm.hir.pointer_cast(%c127040_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vadd ins(%79, %80 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%81 : memref<1024xf32, #hivm.address_space<ub>>)
  %82 = hivm.hir.pointer_cast(%c127040_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vadd ins(%81, %cst_5 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%82 : memref<1024xf32, #hivm.address_space<ub>>)
  %83 = hivm.hir.pointer_cast(%c131136_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vmul ins(%76, %76 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%83 : memref<1024xf32, #hivm.address_space<ub>>)
  %84 = hivm.hir.pointer_cast(%c135232_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%83, %cst_4 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%84 : memref<1024xf32, #hivm.address_space<ub>>)
  %85 = hivm.hir.pointer_cast(%c135232_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vadd ins(%84, %cst_3 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%85 : memref<1024xf32, #hivm.address_space<ub>>)
  %86 = hivm.hir.pointer_cast(%c135232_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%85, %83 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%86 : memref<1024xf32, #hivm.address_space<ub>>)
  %87 = hivm.hir.pointer_cast(%c135232_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vadd ins(%86, %cst_2 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%87 : memref<1024xf32, #hivm.address_space<ub>>)
  %88 = hivm.hir.pointer_cast(%c135232_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%87, %83 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%88 : memref<1024xf32, #hivm.address_space<ub>>)
  %89 = hivm.hir.pointer_cast(%c135232_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vadd ins(%88, %cst_1 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%89 : memref<1024xf32, #hivm.address_space<ub>>)
  %90 = hivm.hir.pointer_cast(%c131136_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%89, %83 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%90 : memref<1024xf32, #hivm.address_space<ub>>)
  %91 = hivm.hir.pointer_cast(%c131136_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vadd ins(%90, %cst_5 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%91 : memref<1024xf32, #hivm.address_space<ub>>)
  %92 = hivm.hir.pointer_cast(%c131136_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%91, %76 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%92 : memref<1024xf32, #hivm.address_space<ub>>)
  %93 = hivm.hir.pointer_cast(%c131136_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%92, %82 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%93 : memref<1024xf32, #hivm.address_space<ub>>)
  %94 = hivm.hir.pointer_cast(%c131136_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmin ins(%93, %cst_5 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%94 : memref<1024xf32, #hivm.address_space<ub>>)
  %95 = hivm.hir.pointer_cast(%c131136_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmax ins(%94, %cst_0 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%95 : memref<1024xf32, #hivm.address_space<ub>>)
  %96 = hivm.hir.pointer_cast(%c131136_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%95, %arg10 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%96 : memref<1024xf32, #hivm.address_space<ub>>)
  %97 = hivm.hir.pointer_cast(%c139328_i64) : memref<1024xf32, #hivm.address_space<ub>>
  %98 = hivm.hir.pointer_cast(%c143424_i64) : memref<8xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsel ins(%40, %96, %7 : memref<1024xi1, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%97 : memref<1024xf32, #hivm.address_space<ub>>) temp_buffer(%98 : memref<8xf32, #hivm.address_space<ub>>)
  hivm.hir.set_flag[<PIPE_V>, <PIPE_MTE3>, <EVENT_ID0>]
  %99 = hivm.hir.pointer_cast(%c81984_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vcast ins(%52 : memref<1024xf32, #hivm.address_space<ub>>) outs(%99 : memref<1024xf32, #hivm.address_space<ub>>) round_mode = <round>
  %100 = hivm.hir.pointer_cast(%c90176_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%99, %57 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%100 : memref<1024xf32, #hivm.address_space<ub>>)
  %101 = hivm.hir.pointer_cast(%c143456_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%100, %cst_13 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%101 : memref<1024xf32, #hivm.address_space<ub>>)
  %102 = hivm.hir.pointer_cast(%c143456_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%60, %101 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%102 : memref<1024xf32, #hivm.address_space<ub>>)
  %103 = hivm.hir.pointer_cast(%c143456_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%102, %63 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%103 : memref<1024xf32, #hivm.address_space<ub>>)
  %104 = hivm.hir.pointer_cast(%c147552_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vmul ins(%100, %cst_12 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%104 : memref<1024xf32, #hivm.address_space<ub>>)
  %105 = hivm.hir.pointer_cast(%c147552_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%103, %104 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%105 : memref<1024xf32, #hivm.address_space<ub>>)
  %106 = hivm.hir.pointer_cast(%c114752_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%105, %68 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%106 : memref<1024xf32, #hivm.address_space<ub>>)
  %107 = hivm.hir.pointer_cast(%c151648_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vmul ins(%100, %cst_10 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%107 : memref<1024xf32, #hivm.address_space<ub>>)
  %108 = hivm.hir.pointer_cast(%c151648_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%106, %107 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%108 : memref<1024xf32, #hivm.address_space<ub>>)
  %109 = hivm.hir.pointer_cast(%c151648_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%108, %72 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%109 : memref<1024xf32, #hivm.address_space<ub>>)
  %110 = hivm.hir.pointer_cast(%c90176_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vmul ins(%100, %cst_9 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%110 : memref<1024xf32, #hivm.address_space<ub>>)
  %111 = hivm.hir.pointer_cast(%c151648_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsub ins(%109, %110 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%111 : memref<1024xf32, #hivm.address_space<ub>>)
  %112 = hivm.hir.pointer_cast(%c155744_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vmul ins(%99, %cst_16 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%112 : memref<1024xf32, #hivm.address_space<ub>>)
  %113 = hivm.hir.pointer_cast(%c155744_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vcast ins(%112 : memref<1024xf32, #hivm.address_space<ub>>) outs(%113 : memref<1024xf32, #hivm.address_space<ub>>) round_mode = <floor>
  %114 = hivm.hir.pointer_cast(%c155744_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%113, %cst_7 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%114 : memref<1024xf32, #hivm.address_space<ub>>)
  %115 = hivm.hir.pointer_cast(%c81984_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vmul ins(%99, %cst_6 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%115 : memref<1024xf32, #hivm.address_space<ub>>)
  %116 = hivm.hir.pointer_cast(%c81984_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vadd ins(%114, %115 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%116 : memref<1024xf32, #hivm.address_space<ub>>)
  %117 = hivm.hir.pointer_cast(%c81984_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vadd ins(%116, %cst_5 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%117 : memref<1024xf32, #hivm.address_space<ub>>)
  %118 = hivm.hir.pointer_cast(%c159840_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.vmul ins(%111, %111 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%118 : memref<1024xf32, #hivm.address_space<ub>>)
  %119 = hivm.hir.pointer_cast(%c163936_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%118, %cst_4 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%119 : memref<1024xf32, #hivm.address_space<ub>>)
  %120 = hivm.hir.pointer_cast(%c163936_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vadd ins(%119, %cst_3 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%120 : memref<1024xf32, #hivm.address_space<ub>>)
  %121 = hivm.hir.pointer_cast(%c163936_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%120, %118 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%121 : memref<1024xf32, #hivm.address_space<ub>>)
  %122 = hivm.hir.pointer_cast(%c163936_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vadd ins(%121, %cst_2 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%122 : memref<1024xf32, #hivm.address_space<ub>>)
  %123 = hivm.hir.pointer_cast(%c163936_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%122, %118 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%123 : memref<1024xf32, #hivm.address_space<ub>>)
  %124 = hivm.hir.pointer_cast(%c163936_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vadd ins(%123, %cst_1 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%124 : memref<1024xf32, #hivm.address_space<ub>>)
  %125 = hivm.hir.pointer_cast(%c159840_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%124, %118 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%125 : memref<1024xf32, #hivm.address_space<ub>>)
  %126 = hivm.hir.pointer_cast(%c159840_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vadd ins(%125, %cst_5 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%126 : memref<1024xf32, #hivm.address_space<ub>>)
  %127 = hivm.hir.pointer_cast(%c151648_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%126, %111 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%127 : memref<1024xf32, #hivm.address_space<ub>>)
  %128 = hivm.hir.pointer_cast(%c81984_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%127, %117 : memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%128 : memref<1024xf32, #hivm.address_space<ub>>)
  %129 = hivm.hir.pointer_cast(%c81984_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%128, %arg10 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%129 : memref<1024xf32, #hivm.address_space<ub>>)
  %130 = hivm.hir.pointer_cast(%c81984_i64) : memref<1024xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vmul ins(%129, %arg11 : memref<1024xf32, #hivm.address_space<ub>>, f32) outs(%130 : memref<1024xf32, #hivm.address_space<ub>>)
  %131 = hivm.hir.pointer_cast(%c168032_i64) : memref<1024xf32, #hivm.address_space<ub>>
  %132 = hivm.hir.pointer_cast(%c172128_i64) : memref<8xf32, #hivm.address_space<ub>>
  hivm.hir.pipe_barrier[<PIPE_V>]
  hivm.hir.vsel ins(%40, %130, %7 : memref<1024xi1, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>, memref<1024xf32, #hivm.address_space<ub>>) outs(%131 : memref<1024xf32, #hivm.address_space<ub>>) temp_buffer(%132 : memref<8xf32, #hivm.address_space<ub>>)
  hivm.hir.set_flag[<PIPE_V>, <PIPE_MTE3>, <EVENT_ID1>]
  %133 = arith.index_cast %8 : i32 to index
  %reinterpret_cast = memref.reinterpret_cast %arg3 to offset: [%133], sizes: [1024], strides: [1] : memref<?xf32, #hivm.address_space<gm>> to memref<1024xf32, strided<[1], offset: ?>, #hivm.address_space<gm>>
  %134 = arith.index_cast %arg5 : i32 to index
  %135 = affine.max affine_map<()[s0, s1] -> (s1, s0)>()[%133, %134]
  %136 = affine.min affine_map<()[s0, s1] -> (s1 + 1024, s0)>()[%135, %133]
  %137 = affine.apply affine_map<()[s0, s1] -> (s0 - s1)>()[%136, %133]
  %subview = memref.subview %97[0] [%137] [1] : memref<1024xf32, #hivm.address_space<ub>> to memref<?xf32, strided<[1]>, #hivm.address_space<ub>>
  %subview_20 = memref.subview %reinterpret_cast[0] [%137] [1] : memref<1024xf32, strided<[1], offset: ?>, #hivm.address_space<gm>> to memref<?xf32, strided<[1], offset: ?>, #hivm.address_space<gm>>
  hivm.hir.wait_flag[<PIPE_V>, <PIPE_MTE3>, <EVENT_ID0>]
  hivm.hir.store ins(%subview : memref<?xf32, strided<[1]>, #hivm.address_space<ub>>) outs(%subview_20 : memref<?xf32, strided<[1], offset: ?>, #hivm.address_space<gm>>)
  %reinterpret_cast_21 = memref.reinterpret_cast %arg4 to offset: [%133], sizes: [1024], strides: [1] : memref<?xf32, #hivm.address_space<gm>> to memref<1024xf32, strided<[1], offset: ?>, #hivm.address_space<gm>>
  %subview_22 = memref.subview %131[0] [%137] [1] : memref<1024xf32, #hivm.address_space<ub>> to memref<?xf32, strided<[1]>, #hivm.address_space<ub>>
  %subview_23 = memref.subview %reinterpret_cast_21[0] [%137] [1] : memref<1024xf32, strided<[1], offset: ?>, #hivm.address_space<gm>> to memref<?xf32, strided<[1], offset: ?>, #hivm.address_space<gm>>
  hivm.hir.wait_flag[<PIPE_V>, <PIPE_MTE3>, <EVENT_ID1>]
  hivm.hir.store ins(%subview_22 : memref<?xf32, strided<[1]>, #hivm.address_space<ub>>) outs(%subview_23 : memref<?xf32, strided<[1], offset: ?>, #hivm.address_space<gm>>)
  hivm.hir.pipe_barrier[<PIPE_ALL>]
  return
}

warning: overriding the module target triple with x86_64-unknown-linux-gnu [-Woverride-module]
1 warning generated.
warning: overriding the module target triple with x86_64-unknown-linux-gnu [-Woverride-module]
1 warning generated.
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":70:14): warning: Op 'hivm.hir.vcmp' will execute by scalar instruction with low effiency
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":73:18): warning: Op 'hivm.hir.vcmp' will execute by scalar instruction with low effiency
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":73:31): warning: Op 'hivm.hir.vcmp' will execute by scalar instruction with low effiency
loc("/home/w00934874/agent/code/run_batch/triton_ascend_output/1014/level4/85_GlobalFilter/output/opt_iter_3/verify/85_GlobalFilter_triton_optimized.py":63:0): warning: Overwriting the target by the pass option...
