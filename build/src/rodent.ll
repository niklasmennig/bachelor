; ModuleID = '/home/niklas/repos/anydsl/rodent/build/src/./rodent'
source_filename = "/home/niklas/repos/anydsl/rodent/build/src/./rodent"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { %1, %1, %1, %1, %1, i1, i1 }
%1 = type { %2, %3, %3, [0 x i32]*, [0 x i32]*, [0 x float]*, i32, [0 x float]*, [0 x float]*, [0 x float]*, [0 x i32]* }
%2 = type { i32, i32 }
%3 = type { float, float }
%4 = type { float, float, float }
%5 = type { %4, %4, float }
%6 = type { %3, float }
%7 = type { %4, %4, %4, %4, float, float }
%8 = type { %9, [0 x i32]*, [0 x i32]*, [0 x float]*, [0 x float]*, [0 x float]*, [0 x i32]*, [0 x float]*, [0 x float]*, [0 x float]*, [0 x float]*, [0 x i32]*, i32, i32 }
%9 = type { [0 x i32]*, [0 x float]*, [0 x float]*, [0 x float]*, [0 x float]*, [0 x float]*, [0 x float]*, [0 x float]*, [0 x float]* }
%10 = type { %9, [0 x i32]*, [0 x float]*, [0 x float]*, [0 x float]*, i32, i32 }
%11 = type { [3 x float], i32, [3 x float], i32, [3 x float], i32 }
%12 = type { [12 x float], [2 x i32], [2 x i32] }
%13 = type { float, float, float }

@_4082070 = internal constant [18 x i8] c"data/vertices.bin\00"
@_4082079 = internal constant [17 x i8] c"data/normals.bin\00"
@_4082087 = internal constant [22 x i8] c"data/face_normals.bin\00"
@_4082093 = internal constant [17 x i8] c"data/indices.bin\00"
@_4082100 = internal constant [19 x i8] c"data/texcoords.bin\00"
@_4082114 = internal constant [13 x i8] c"data/bvh.bin\00"
@_4082134 = internal constant [47 x i8] c"data/brdf_acrylic_felt_green_rgb_luminance.bin\00"
@_4082140 = internal constant [43 x i8] c"data/brdf_acrylic_felt_green_rgb_sigma.bin\00"
@_4082146 = internal constant [41 x i8] c"data/brdf_acrylic_felt_green_rgb_ndf.bin\00"
@_4082152 = internal constant [42 x i8] c"data/brdf_acrylic_felt_green_rgb_vndf.bin\00"
@_4082158 = internal constant [41 x i8] c"data/brdf_acrylic_felt_green_rgb_rgb.bin\00"
@_4082164 = internal constant [21 x i8] c"data/light_verts.bin\00"
@_4082170 = internal constant [21 x i8] c"data/light_areas.bin\00"
@_4082176 = internal constant [21 x i8] c"data/light_norms.bin\00"
@_4082182 = internal constant [22 x i8] c"data/light_colors.bin\00"
@_4082188 = internal constant [19 x i8] c"data/light_ids.bin\00"
@0 = private unnamed_addr constant [15 x i8] c"lambda_4082328\00", align 1
@1 = private unnamed_addr constant [15 x i8] c"lambda_4082691\00", align 1
@2 = private unnamed_addr constant [15 x i8] c"lambda_4083362\00", align 1
@3 = private unnamed_addr constant [15 x i8] c"lambda_4083412\00", align 1
@4 = private unnamed_addr constant [15 x i8] c"lambda_4083528\00", align 1
@5 = private unnamed_addr constant [15 x i8] c"lambda_4098921\00", align 1
@6 = private unnamed_addr constant [15 x i8] c"lambda_4087297\00", align 1
@7 = private unnamed_addr constant [15 x i8] c"lambda_4086455\00", align 1
@8 = private unnamed_addr constant [15 x i8] c"lambda_4085618\00", align 1
@9 = private unnamed_addr constant [15 x i8] c"lambda_4084754\00", align 1
@10 = private unnamed_addr constant [15 x i8] c"lambda_4083825\00", align 1
@11 = private unnamed_addr constant [15 x i8] c"lambda_4084527\00", align 1
@12 = private unnamed_addr constant [59 x i8] c"/home/niklas/repos/anydsl/rodent/build/src/./rodent.amdgpu\00", align 1

define void @test_sample_brdf(%0* %sampler_4100391, %3* %u_4100392, %4* %incoming_4100393, %5* %result_4100394) local_unnamed_addr !dbg !4 {
test_sample_brdf:
  %dim_param_4100508 = alloca float, align 4
  %dim_param_4101369 = alloca float, align 4
  %dim_param_4102310 = alloca float, align 4
  %dim_param_4102516 = alloca float, align 4
  %dim_param_4103449 = alloca float, align 4
  %dim_4103409 = alloca i32, align 4
  %slice_offset_4103539 = alloca i32, align 4
  %param_weight_4103431 = alloca [6 x float], align 4
  %dim_4102476 = alloca i32, align 4
  %slice_offset_4102606 = alloca i32, align 4
  %param_weight_4102498 = alloca [6 x float], align 4
  %dim_4102268 = alloca i32, align 4
  %slice_offset_4102403 = alloca i32, align 4
  %param_weight_4102292 = alloca [6 x float], align 4
  %fr_4102445 = alloca %4, align 8
  %phi_m_4102202 = alloca float, align 4
  %first_4101763 = alloca i32, align 4
  %size_4101755 = alloca i32, align 4
  %first_4101495 = alloca i32, align 4
  %size_4101487 = alloca i32, align 4
  %offset_4101515 = alloca i32, align 4
  %dim_4101327 = alloca i32, align 4
  %slice_offset_4101462 = alloca i32, align 4
  %param_weight_4101351 = alloca [4 x float], align 4
  %n_sample_4101517 = alloca %3, align 8
  %first_4100902 = alloca i32, align 4
  %size_4100894 = alloca i32, align 4
  %first_4100634 = alloca i32, align 4
  %size_4100626 = alloca i32, align 4
  %offset_4100654 = alloca i32, align 4
  %dim_4100466 = alloca i32, align 4
  %slice_offset_4100601 = alloca i32, align 4
  %param_weight_4100490 = alloca [4 x float], align 4
  %n_sample_4100656 = alloca %3, align 8
  %sample_4102447 = alloca %3, align 8
  %.elt = getelementptr inbounds %3, %3* %u_4100392, i64 0, i32 0, !dbg !7
  %.unpack = load float, float* %.elt, align 4, !dbg !7
  %.elt370 = getelementptr inbounds %3, %3* %u_4100392, i64 0, i32 1, !dbg !7
  %.unpack371 = load float, float* %.elt370, align 4, !dbg !7
  %.elt372 = getelementptr inbounds %4, %4* %incoming_4100393, i64 0, i32 0, !dbg !7
  %.unpack373 = load float, float* %.elt372, align 4, !dbg !7
  %.elt376 = getelementptr inbounds %4, %4* %incoming_4100393, i64 0, i32 2, !dbg !7
  %.unpack377 = load float, float* %.elt376, align 4, !dbg !7
  %0 = fcmp ugt float %.unpack377, 0.000000e+00, !dbg !7
  br i1 %0, label %expr_false, label %sample_brdf_cont, !dbg !7

expr_false:                                       ; preds = %test_sample_brdf
  %.elt374 = getelementptr inbounds %4, %4* %incoming_4100393, i64 0, i32 1, !dbg !7
  %.unpack375 = load float, float* %.elt374, align 4, !dbg !7
  %1 = fadd float %.unpack377, -1.000000e+00, !dbg !8
  %2 = fmul float %.unpack373, %.unpack373, !dbg !8
  %3 = fmul float %.unpack375, %.unpack375, !dbg !8
  %4 = fadd float %2, %3, !dbg !8
  %5 = fmul float %1, %1, !dbg !8
  %6 = fadd float %4, %5, !dbg !8
  %7 = call float @llvm.sqrt.f32(float %6), !dbg !8
  %8 = fmul float %7, 5.000000e-01, !dbg !9
  %9 = call float @asinf(float %8), !dbg !9
  %10 = call float @atan2f(float %.unpack375, float %.unpack373), !dbg !10
  %11 = fmul float %9, 2.000000e+00, !dbg !11
  %12 = fmul float %11, 0x3FE45F3060000000, !dbg !11
  %13 = call float @llvm.sqrt.f32(float %12), !dbg !11
  %sample_4102447.repack = getelementptr inbounds %3, %3* %sample_4102447, i64 0, i32 0, !dbg !12
  store float %.unpack371, float* %sample_4102447.repack, align 8, !dbg !12
  %sample_4102447.repack379 = getelementptr inbounds %3, %3* %sample_4102447, i64 0, i32 1, !dbg !12
  store float %.unpack, float* %sample_4102447.repack379, align 4, !dbg !12
  %n_sample_4100656.repack = getelementptr inbounds %3, %3* %n_sample_4100656, i64 0, i32 0, !dbg !12
  store float %.unpack371, float* %n_sample_4100656.repack, align 8, !dbg !12
  %n_sample_4100656.repack382 = getelementptr inbounds %3, %3* %n_sample_4100656, i64 0, i32 1, !dbg !12
  store float %.unpack, float* %n_sample_4100656.repack382, align 4, !dbg !12
  %param_weight_4100490.repack = getelementptr inbounds [4 x float], [4 x float]* %param_weight_4100490, i64 0, i64 0, !dbg !12
  store float 0.000000e+00, float* %param_weight_4100490.repack, align 4, !dbg !12
  %param_weight_4100490.repack384 = getelementptr inbounds [4 x float], [4 x float]* %param_weight_4100490, i64 0, i64 1, !dbg !12
  store float 0.000000e+00, float* %param_weight_4100490.repack384, align 4, !dbg !12
  %param_weight_4100490.repack385 = getelementptr inbounds [4 x float], [4 x float]* %param_weight_4100490, i64 0, i64 2, !dbg !12
  store float 0.000000e+00, float* %param_weight_4100490.repack385, align 4, !dbg !12
  %param_weight_4100490.repack386 = getelementptr inbounds [4 x float], [4 x float]* %param_weight_4100490, i64 0, i64 3, !dbg !12
  store float 0.000000e+00, float* %param_weight_4100490.repack386, align 4, !dbg !12
  store i32 0, i32* %slice_offset_4100601, align 4, !dbg !12
  store i32 0, i32* %dim_4100466, align 4, !dbg !12
  %14 = getelementptr inbounds %0, %0* %sampler_4100391, i64 0, i32 3, !dbg !12
  %15 = getelementptr inbounds %0, %0* %sampler_4100391, i64 0, i32 3, i32 4, !dbg !12
  %16 = getelementptr inbounds %0, %0* %sampler_4100391, i64 0, i32 3, i32 3, !dbg !12
  %17 = getelementptr inbounds %0, %0* %sampler_4100391, i64 0, i32 3, i32 5, !dbg !12
  %18 = getelementptr inbounds %0, %0* %sampler_4100391, i64 0, i32 3, i32 6, !dbg !12
  br label %expr_true212, !dbg !13

expr_false7:                                      ; preds = %continue226
  %19 = load i32, i32* %slice_offset_4100601, align 4, !dbg !14
  %20 = getelementptr inbounds %0, %0* %sampler_4100391, i64 0, i32 3, i32 0, i32 1, !dbg !14
  %21 = load i32, i32* %20, align 4, !dbg !14
  %offset = mul nsw i32 %19, %21, !dbg !14
  store i32 %offset, i32* %offset_4100654, align 4, !dbg !14
  %22 = getelementptr inbounds %3, %3* %n_sample_4100656, i64 0, i32 1, !dbg !14
  %23 = load float, float* %22, align 4, !dbg !14
  %24 = load i32, i32* %20, align 4, !dbg !14
  %size = add nsw i32 %24, -2, !dbg !14
  store i32 %size, i32* %size_4100626, align 4, !dbg !14
  store i32 1, i32* %first_4100634, align 4, !dbg !14
  %25 = bitcast [4 x float]* %param_weight_4100490 to [0 x float]*, !dbg !14
  %26 = icmp sgt i32 %24, 2, !dbg !15
  br i1 %26, label %expr_true206, label %expr_false9, !dbg !15

expr_false9:                                      ; preds = %if_join211, %expr_false7
  %27 = load i32, i32* %first_4100634, align 4, !dbg !16
  %28 = add nsw i32 %27, -1, !dbg !16
  %29 = icmp slt i32 %size, %28, !dbg !16
  %size. = select i1 %29, i32 %size, i32 %28, !dbg !16
  %.inv = icmp sgt i32 %27, 0, !dbg !16
  %clamp_cont13 = select i1 %.inv, i32 %size., i32 0, !dbg !16
  %30 = load i32, i32* %offset_4100654, align 4, !dbg !17
  %31 = call fastcc float @fetch_marginal_warp2D2_4088477(%1* nonnull %14, i32 %30, i32 %clamp_cont13, [0 x float]* nonnull %25), !dbg !17
  %32 = load float, float* %22, align 4, !dbg !18
  %33 = fsub float %32, %31, !dbg !18
  store float %33, float* %22, align 4, !dbg !18
  %34 = getelementptr inbounds %1, %1* %14, i64 0, i32 0, i32 0, !dbg !18
  %35 = load i32, i32* %34, align 4, !dbg !18
  %36 = load i32, i32* %20, align 4, !dbg !18
  %37 = mul nsw i32 %clamp_cont13, %35, !dbg !18
  store i32 %37, i32* %offset_4100654, align 4, !dbg !18
  %38 = load i32, i32* %slice_offset_4100601, align 4, !dbg !18
  %slice_size = mul nsw i32 %35, %36, !dbg !18
  %39 = mul nsw i32 %38, %slice_size, !dbg !18
  %40 = add nsw i32 %37, %39, !dbg !18
  store i32 %40, i32* %offset_4100654, align 4, !dbg !18
  %41 = getelementptr inbounds %0, %0* %sampler_4100391, i64 0, i32 3, i32 9, !dbg !18
  %42 = load [0 x float]*, [0 x float]** %41, align 8, !dbg !18
  %43 = load i32, i32* %34, align 4, !dbg !18
  %44 = load [0 x i32]*, [0 x i32]** %15, align 8, !dbg !18
  %45 = getelementptr inbounds [0 x i32], [0 x i32]* %44, i64 0, i64 1, !dbg !18
  %46 = load i32, i32* %45, align 4, !dbg !18
  %47 = getelementptr inbounds [4 x float], [4 x float]* %param_weight_4100490, i64 0, i64 2, !dbg !18
  %48 = load float, float* %47, align 4, !dbg !18
  %49 = getelementptr inbounds [4 x float], [4 x float]* %param_weight_4100490, i64 0, i64 3, !dbg !18
  %50 = load float, float* %49, align 4, !dbg !18
  %51 = load [0 x i32]*, [0 x i32]** %15, align 8, !dbg !18
  %52 = getelementptr inbounds [0 x i32], [0 x i32]* %51, i64 0, i64 0, !dbg !18
  %53 = load i32, i32* %52, align 4, !dbg !18
  %54 = getelementptr inbounds [4 x float], [4 x float]* %param_weight_4100490, i64 0, i64 0, !dbg !18
  %55 = load float, float* %54, align 4, !dbg !18
  %56 = getelementptr inbounds [4 x float], [4 x float]* %param_weight_4100490, i64 0, i64 1, !dbg !18
  %57 = load float, float* %56, align 4, !dbg !18
  %58 = add nsw i32 %40, %43, !dbg !18
  %59 = add nsw i32 %58, -1, !dbg !18
  %60 = sext i32 %59 to i64, !dbg !18
  %61 = getelementptr inbounds [0 x float], [0 x float]* %42, i64 0, i64 %60, !dbg !18
  %62 = load float, float* %61, align 4, !dbg !18
  %63 = fmul float %62, %55, !dbg !18
  %64 = mul nsw i32 %53, %slice_size, !dbg !18
  %i1 = add nsw i32 %59, %64, !dbg !18
  %65 = sext i32 %i1 to i64, !dbg !18
  %66 = getelementptr inbounds [0 x float], [0 x float]* %42, i64 0, i64 %65, !dbg !18
  %67 = load float, float* %66, align 4, !dbg !18
  %68 = fmul float %67, %57, !dbg !18
  %69 = fadd float %63, %68, !dbg !18
  %70 = fmul float %69, %48, !dbg !18
  %71 = load [0 x i32]*, [0 x i32]** %15, align 8, !dbg !18
  %72 = getelementptr inbounds [0 x i32], [0 x i32]* %71, i64 0, i64 0, !dbg !18
  %73 = load i32, i32* %72, align 4, !dbg !18
  %74 = load float, float* %54, align 4, !dbg !18
  %75 = load float, float* %56, align 4, !dbg !18
  %76 = mul nsw i32 %46, %slice_size, !dbg !18
  %i1228 = add nsw i32 %59, %76, !dbg !18
  %77 = sext i32 %i1228 to i64, !dbg !18
  %78 = getelementptr inbounds [0 x float], [0 x float]* %42, i64 0, i64 %77, !dbg !18
  %79 = load float, float* %78, align 4, !dbg !18
  %80 = fmul float %79, %74, !dbg !18
  %81 = mul nsw i32 %73, %slice_size, !dbg !18
  %i1229 = add nsw i32 %i1228, %81, !dbg !18
  %82 = sext i32 %i1229 to i64, !dbg !18
  %83 = getelementptr inbounds [0 x float], [0 x float]* %42, i64 0, i64 %82, !dbg !18
  %84 = load float, float* %83, align 4, !dbg !18
  %85 = fmul float %84, %75, !dbg !18
  %86 = fadd float %80, %85, !dbg !18
  %87 = fmul float %86, %50, !dbg !18
  %88 = fadd float %70, %87, !dbg !18
  %89 = load [0 x float]*, [0 x float]** %41, align 8, !dbg !18
  %90 = load i32, i32* %34, align 4, !dbg !18
  %91 = load [0 x i32]*, [0 x i32]** %15, align 8, !dbg !18
  %92 = getelementptr inbounds [0 x i32], [0 x i32]* %91, i64 0, i64 1, !dbg !18
  %93 = load i32, i32* %92, align 4, !dbg !18
  %94 = load float, float* %47, align 4, !dbg !18
  %95 = load float, float* %49, align 4, !dbg !18
  %96 = getelementptr inbounds [0 x i32], [0 x i32]* %91, i64 0, i64 0, !dbg !18
  %97 = load i32, i32* %96, align 4, !dbg !18
  %98 = load float, float* %54, align 4, !dbg !18
  %99 = load float, float* %56, align 4, !dbg !18
  %100 = shl nsw i32 %90, 1, !dbg !18
  %101 = add nsw i32 %100, -1, !dbg !18
  %102 = add nsw i32 %40, %101, !dbg !18
  %103 = sext i32 %102 to i64, !dbg !18
  %104 = getelementptr inbounds [0 x float], [0 x float]* %89, i64 0, i64 %103, !dbg !18
  %105 = load float, float* %104, align 4, !dbg !18
  %106 = fmul float %105, %98, !dbg !18
  %107 = mul nsw i32 %97, %slice_size, !dbg !18
  %i1230 = add nsw i32 %102, %107, !dbg !18
  %108 = sext i32 %i1230 to i64, !dbg !18
  %109 = getelementptr inbounds [0 x float], [0 x float]* %89, i64 0, i64 %108, !dbg !18
  %110 = load float, float* %109, align 4, !dbg !18
  %111 = fmul float %110, %99, !dbg !18
  %112 = fadd float %106, %111, !dbg !18
  %113 = fmul float %112, %94, !dbg !18
  %114 = load [0 x i32]*, [0 x i32]** %15, align 8, !dbg !18
  %115 = getelementptr inbounds [0 x i32], [0 x i32]* %114, i64 0, i64 0, !dbg !18
  %116 = load i32, i32* %115, align 4, !dbg !18
  %117 = load float, float* %54, align 4, !dbg !18
  %118 = load float, float* %56, align 4, !dbg !18
  %119 = mul nsw i32 %93, %slice_size, !dbg !18
  %i1231 = add nsw i32 %102, %119, !dbg !18
  %120 = sext i32 %i1231 to i64, !dbg !18
  %121 = getelementptr inbounds [0 x float], [0 x float]* %89, i64 0, i64 %120, !dbg !18
  %122 = load float, float* %121, align 4, !dbg !18
  %123 = fmul float %122, %117, !dbg !18
  %124 = mul nsw i32 %116, %slice_size, !dbg !18
  %i1232 = add nsw i32 %i1231, %124, !dbg !18
  %125 = sext i32 %i1232 to i64, !dbg !18
  %126 = getelementptr inbounds [0 x float], [0 x float]* %89, i64 0, i64 %125, !dbg !18
  %127 = load float, float* %126, align 4, !dbg !18
  %128 = fmul float %127, %118, !dbg !18
  %129 = fadd float %123, %128, !dbg !18
  %130 = fmul float %129, %95, !dbg !18
  %131 = fadd float %113, %130, !dbg !18
  %132 = fsub float %88, %131, !dbg !18
  %133 = fcmp olt float %132, 0.000000e+00, !dbg !18
  %134 = fneg float %132, !dbg !18
  %absf_cont17 = select i1 %133, float %134, float %132, !dbg !18
  %135 = fadd float %88, %131, !dbg !19
  %136 = fmul float %135, 0x3F1A36E2E0000000, !dbg !19
  %is_const = fcmp olt float %absf_cont17, %136, !dbg !19
  br i1 %is_const, label %expr_true21, label %_cont19, !dbg !19

_cont19:                                          ; preds = %expr_false9
  %137 = fmul float %88, %88, !dbg !20
  %138 = load float, float* %22, align 4, !dbg !20
  %139 = fmul float %138, 2.000000e+00, !dbg !20
  %140 = fmul float %139, %132, !dbg !20
  %141 = fsub float %137, %140, !dbg !20
  %142 = call float @llvm.sqrt.f32(float %141), !dbg !20
  %143 = fsub float %88, %142, !dbg !21
  %144 = fdiv float %143, %132, !dbg !21
  br label %if_join, !dbg !21

expr_true21:                                      ; preds = %expr_false9
  %145 = load float, float* %22, align 4, !dbg !20
  %146 = fmul float %145, 2.000000e+00, !dbg !20
  store float %146, float* %22, align 4, !dbg !20
  %147 = fdiv float %146, %135, !dbg !20
  br label %if_join, !dbg !20

if_join:                                          ; preds = %expr_true21, %_cont19
  %storemerge = phi float [ %144, %_cont19 ], [ %147, %expr_true21 ], !dbg !22
  store float %storemerge, float* %22, align 4, !dbg !22
  %148 = getelementptr inbounds %3, %3* %n_sample_4100656, i64 0, i32 0, !dbg !23
  %149 = load float, float* %148, align 8, !dbg !23
  %150 = fsub float 1.000000e+00, %storemerge, !dbg !23
  %151 = fmul float %150, %88, !dbg !23
  %152 = fmul float %storemerge, %131, !dbg !23
  %153 = fadd float %151, %152, !dbg !23
  %154 = fmul float %149, %153, !dbg !23
  store float %154, float* %148, align 8, !dbg !23
  %155 = load i32, i32* %offset_4100654, align 4, !dbg !23
  %156 = insertvalue %3 undef, float %154, 0, !dbg !23
  %.elt389 = getelementptr inbounds %3, %3* %n_sample_4100656, i64 0, i32 1, !dbg !23
  %.unpack390 = load float, float* %.elt389, align 4, !dbg !23
  %157 = insertvalue %3 %156, float %.unpack390, 1, !dbg !23
  %158 = load i32, i32* %34, align 4, !dbg !23
  %size233 = add nsw i32 %158, -2, !dbg !23
  store i32 %size233, i32* %size_4100894, align 4, !dbg !23
  store i32 1, i32* %first_4100902, align 4, !dbg !23
  %159 = icmp sgt i32 %158, 2, !dbg !24
  br i1 %159, label %expr_true200, label %expr_false23, !dbg !24

expr_false23:                                     ; preds = %if_join205, %if_join
  %160 = load i32, i32* %first_4100902, align 4, !dbg !25
  %161 = add nsw i32 %160, -1, !dbg !25
  %162 = icmp slt i32 %size233, %161, !dbg !25
  %size233. = select i1 %162, i32 %size233, i32 %161, !dbg !25
  %.inv547 = icmp sgt i32 %160, 0, !dbg !25
  %clamp_cont29 = select i1 %.inv547, i32 %size233., i32 0, !dbg !25
  %163 = load float, float* %148, align 8, !dbg !26
  %164 = load i32, i32* %offset_4100654, align 4, !dbg !26
  %165 = insertvalue %3 undef, float %163, 0, !dbg !26
  %.elt393 = getelementptr inbounds %3, %3* %n_sample_4100656, i64 0, i32 1, !dbg !26
  %.unpack394 = load float, float* %.elt393, align 4, !dbg !26
  %166 = insertvalue %3 %165, float %.unpack394, 1, !dbg !26
  %167 = call fastcc float @fetch_conditional_warp2D2_4088841(%1* nonnull %14, i32 %164, i32 %clamp_cont29, i32 %slice_size, %3 %166, [0 x float]* nonnull %25), !dbg !26
  %168 = fsub float %163, %167, !dbg !27
  store float %168, float* %148, align 8, !dbg !27
  %169 = load i32, i32* %offset_4100654, align 4, !dbg !27
  %170 = add nsw i32 %169, %clamp_cont29, !dbg !27
  store i32 %170, i32* %offset_4100654, align 4, !dbg !27
  %171 = getelementptr inbounds %0, %0* %sampler_4100391, i64 0, i32 3, i32 7, !dbg !27
  %172 = load [0 x float]*, [0 x float]** %171, align 8, !dbg !27
  %173 = load [0 x i32]*, [0 x i32]** %15, align 8, !dbg !27
  %174 = getelementptr inbounds [0 x i32], [0 x i32]* %173, i64 0, i64 1, !dbg !27
  %175 = load i32, i32* %174, align 4, !dbg !27
  %176 = load float, float* %47, align 4, !dbg !27
  %177 = load float, float* %49, align 4, !dbg !27
  %178 = getelementptr inbounds [0 x i32], [0 x i32]* %173, i64 0, i64 0, !dbg !27
  %179 = load i32, i32* %178, align 4, !dbg !27
  %180 = load float, float* %54, align 4, !dbg !27
  %181 = load float, float* %56, align 4, !dbg !27
  %182 = sext i32 %170 to i64, !dbg !27
  %183 = getelementptr inbounds [0 x float], [0 x float]* %172, i64 0, i64 %182, !dbg !27
  %184 = load float, float* %183, align 4, !dbg !27
  %185 = mul nsw i32 %179, %slice_size, !dbg !27
  %i1234 = add nsw i32 %170, %185, !dbg !27
  %186 = sext i32 %i1234 to i64, !dbg !27
  %187 = getelementptr inbounds [0 x float], [0 x float]* %172, i64 0, i64 %186, !dbg !27
  %188 = load float, float* %187, align 4, !dbg !27
  %189 = load [0 x i32]*, [0 x i32]** %15, align 8, !dbg !27
  %190 = getelementptr inbounds [0 x i32], [0 x i32]* %189, i64 0, i64 0, !dbg !27
  %191 = load i32, i32* %190, align 4, !dbg !27
  %192 = load float, float* %54, align 4, !dbg !27
  %193 = load float, float* %56, align 4, !dbg !27
  %194 = mul nsw i32 %175, %slice_size, !dbg !27
  %i1235 = add nsw i32 %170, %194, !dbg !27
  %195 = sext i32 %i1235 to i64, !dbg !27
  %196 = getelementptr inbounds [0 x float], [0 x float]* %172, i64 0, i64 %195, !dbg !27
  %197 = load float, float* %196, align 4, !dbg !27
  %198 = mul nsw i32 %191, %slice_size, !dbg !27
  %i1236 = add nsw i32 %i1235, %198, !dbg !27
  %199 = sext i32 %i1236 to i64, !dbg !27
  %200 = getelementptr inbounds [0 x float], [0 x float]* %172, i64 0, i64 %199, !dbg !27
  %201 = load float, float* %200, align 4, !dbg !27
  %202 = load [0 x float]*, [0 x float]** %171, align 8, !dbg !27
  %203 = load [0 x i32]*, [0 x i32]** %15, align 8, !dbg !27
  %204 = getelementptr inbounds [0 x i32], [0 x i32]* %203, i64 0, i64 1, !dbg !27
  %205 = load i32, i32* %204, align 4, !dbg !27
  %206 = load float, float* %47, align 4, !dbg !27
  %207 = load float, float* %49, align 4, !dbg !27
  %208 = getelementptr inbounds [0 x i32], [0 x i32]* %203, i64 0, i64 0, !dbg !27
  %209 = load i32, i32* %208, align 4, !dbg !27
  %210 = load float, float* %54, align 4, !dbg !27
  %211 = load float, float* %56, align 4, !dbg !27
  %212 = getelementptr inbounds [0 x float], [0 x float]* %202, i64 0, i64 1, !dbg !27
  %213 = sext i32 %170 to i64, !dbg !27
  %214 = getelementptr inbounds float, float* %212, i64 %213, !dbg !27
  %215 = load float, float* %214, align 4, !dbg !27
  %216 = mul nsw i32 %209, %slice_size, !dbg !27
  %i1237 = add nsw i32 %170, %216, !dbg !27
  %217 = sext i32 %i1237 to i64, !dbg !27
  %218 = getelementptr inbounds float, float* %212, i64 %217, !dbg !27
  %219 = load float, float* %218, align 4, !dbg !27
  %220 = load [0 x i32]*, [0 x i32]** %15, align 8, !dbg !27
  %221 = getelementptr inbounds [0 x i32], [0 x i32]* %220, i64 0, i64 0, !dbg !27
  %222 = load i32, i32* %221, align 4, !dbg !27
  %223 = load float, float* %54, align 4, !dbg !27
  %224 = load float, float* %56, align 4, !dbg !27
  %225 = mul nsw i32 %205, %slice_size, !dbg !27
  %i1238 = add nsw i32 %170, %225, !dbg !27
  %226 = sext i32 %i1238 to i64, !dbg !27
  %227 = getelementptr inbounds float, float* %212, i64 %226, !dbg !27
  %228 = load float, float* %227, align 4, !dbg !27
  %229 = mul nsw i32 %222, %slice_size, !dbg !27
  %i1239 = add nsw i32 %i1238, %229, !dbg !27
  %230 = sext i32 %i1239 to i64, !dbg !27
  %231 = getelementptr inbounds float, float* %212, i64 %230, !dbg !27
  %232 = load float, float* %231, align 4, !dbg !27
  %233 = load [0 x float]*, [0 x float]** %171, align 8, !dbg !27
  %234 = load i32, i32* %34, align 4, !dbg !27
  %235 = load [0 x i32]*, [0 x i32]** %15, align 8, !dbg !27
  %236 = getelementptr inbounds [0 x i32], [0 x i32]* %235, i64 0, i64 1, !dbg !27
  %237 = load i32, i32* %236, align 4, !dbg !27
  %238 = load float, float* %47, align 4, !dbg !27
  %239 = load float, float* %49, align 4, !dbg !27
  %240 = getelementptr inbounds [0 x i32], [0 x i32]* %235, i64 0, i64 0, !dbg !27
  %241 = load i32, i32* %240, align 4, !dbg !27
  %242 = load float, float* %54, align 4, !dbg !27
  %243 = load float, float* %56, align 4, !dbg !27
  %244 = sext i32 %234 to i64, !dbg !27
  %245 = getelementptr inbounds [0 x float], [0 x float]* %233, i64 0, i64 %244, !dbg !27
  %246 = sext i32 %170 to i64, !dbg !27
  %247 = getelementptr inbounds float, float* %245, i64 %246, !dbg !27
  %248 = load float, float* %247, align 4, !dbg !27
  %249 = mul nsw i32 %241, %slice_size, !dbg !27
  %i1240 = add nsw i32 %170, %249, !dbg !27
  %250 = sext i32 %i1240 to i64, !dbg !27
  %251 = getelementptr inbounds float, float* %245, i64 %250, !dbg !27
  %252 = load float, float* %251, align 4, !dbg !27
  %253 = load [0 x i32]*, [0 x i32]** %15, align 8, !dbg !27
  %254 = getelementptr inbounds [0 x i32], [0 x i32]* %253, i64 0, i64 0, !dbg !27
  %255 = load i32, i32* %254, align 4, !dbg !27
  %256 = load float, float* %54, align 4, !dbg !27
  %257 = load float, float* %56, align 4, !dbg !27
  %258 = mul nsw i32 %237, %slice_size, !dbg !27
  %i1241 = add nsw i32 %170, %258, !dbg !27
  %259 = sext i32 %i1241 to i64, !dbg !27
  %260 = getelementptr inbounds float, float* %245, i64 %259, !dbg !27
  %261 = load float, float* %260, align 4, !dbg !27
  %262 = mul nsw i32 %255, %slice_size, !dbg !27
  %i1242 = add nsw i32 %i1241, %262, !dbg !27
  %263 = sext i32 %i1242 to i64, !dbg !27
  %264 = getelementptr inbounds float, float* %245, i64 %263, !dbg !27
  %265 = load float, float* %264, align 4, !dbg !27
  %266 = load [0 x float]*, [0 x float]** %171, align 8, !dbg !27
  %267 = load i32, i32* %34, align 4, !dbg !27
  %268 = load [0 x i32]*, [0 x i32]** %15, align 8, !dbg !27
  %269 = getelementptr inbounds [0 x i32], [0 x i32]* %268, i64 0, i64 1, !dbg !27
  %270 = load i32, i32* %269, align 4, !dbg !27
  %271 = load float, float* %47, align 4, !dbg !27
  %272 = load float, float* %49, align 4, !dbg !27
  %273 = getelementptr inbounds [0 x i32], [0 x i32]* %268, i64 0, i64 0, !dbg !27
  %274 = load i32, i32* %273, align 4, !dbg !27
  %275 = load float, float* %54, align 4, !dbg !27
  %276 = load float, float* %56, align 4, !dbg !27
  %277 = add nsw i32 %267, 1, !dbg !27
  %278 = sext i32 %277 to i64, !dbg !27
  %279 = getelementptr inbounds [0 x float], [0 x float]* %266, i64 0, i64 %278, !dbg !27
  %280 = sext i32 %170 to i64, !dbg !27
  %281 = getelementptr inbounds float, float* %279, i64 %280, !dbg !27
  %282 = load float, float* %281, align 4, !dbg !27
  %283 = mul nsw i32 %274, %slice_size, !dbg !27
  %i1243 = add nsw i32 %170, %283, !dbg !27
  %284 = sext i32 %i1243 to i64, !dbg !27
  %285 = getelementptr inbounds float, float* %279, i64 %284, !dbg !27
  %286 = load float, float* %285, align 4, !dbg !27
  %287 = load [0 x i32]*, [0 x i32]** %15, align 8, !dbg !27
  %288 = getelementptr inbounds [0 x i32], [0 x i32]* %287, i64 0, i64 0, !dbg !27
  %289 = load i32, i32* %288, align 4, !dbg !27
  %290 = load float, float* %54, align 4, !dbg !27
  %291 = load float, float* %56, align 4, !dbg !27
  %292 = mul nsw i32 %270, %slice_size, !dbg !27
  %i1244 = add nsw i32 %170, %292, !dbg !27
  %293 = sext i32 %i1244 to i64, !dbg !27
  %294 = getelementptr inbounds float, float* %279, i64 %293, !dbg !27
  %295 = load float, float* %294, align 4, !dbg !27
  %296 = mul nsw i32 %289, %slice_size, !dbg !27
  %i1245 = add nsw i32 %i1244, %296, !dbg !27
  %297 = sext i32 %i1245 to i64, !dbg !27
  %298 = getelementptr inbounds float, float* %279, i64 %297, !dbg !27
  %299 = load float, float* %298, align 4, !dbg !27
  %300 = load float, float* %22, align 4, !dbg !27
  %301 = fsub float 1.000000e+00, %300, !dbg !27
  %302 = fmul float %184, %180, !dbg !27
  %303 = fmul float %188, %181, !dbg !27
  %304 = fadd float %302, %303, !dbg !27
  %305 = fmul float %304, %176, !dbg !27
  %306 = fmul float %197, %192, !dbg !27
  %307 = fmul float %201, %193, !dbg !27
  %308 = fadd float %306, %307, !dbg !27
  %309 = fmul float %308, %177, !dbg !27
  %310 = fadd float %305, %309, !dbg !27
  %311 = fmul float %301, %310, !dbg !27
  %312 = load float, float* %22, align 4, !dbg !27
  %313 = fmul float %248, %242, !dbg !27
  %314 = fmul float %252, %243, !dbg !27
  %315 = fadd float %313, %314, !dbg !27
  %316 = fmul float %315, %238, !dbg !27
  %317 = fmul float %261, %256, !dbg !27
  %318 = fmul float %265, %257, !dbg !27
  %319 = fadd float %317, %318, !dbg !27
  %320 = fmul float %319, %239, !dbg !27
  %321 = fadd float %316, %320, !dbg !27
  %322 = fmul float %312, %321, !dbg !27
  %323 = fadd float %311, %322, !dbg !27
  %324 = load float, float* %22, align 4, !dbg !27
  %325 = fsub float 1.000000e+00, %324, !dbg !27
  %326 = fmul float %215, %210, !dbg !27
  %327 = fmul float %219, %211, !dbg !27
  %328 = fadd float %326, %327, !dbg !27
  %329 = fmul float %328, %206, !dbg !27
  %330 = fmul float %228, %223, !dbg !27
  %331 = fmul float %232, %224, !dbg !27
  %332 = fadd float %330, %331, !dbg !27
  %333 = fmul float %332, %207, !dbg !27
  %334 = fadd float %329, %333, !dbg !27
  %335 = fmul float %325, %334, !dbg !27
  %336 = load float, float* %22, align 4, !dbg !27
  %337 = fmul float %282, %275, !dbg !27
  %338 = fmul float %286, %276, !dbg !27
  %339 = fadd float %337, %338, !dbg !27
  %340 = fmul float %339, %271, !dbg !27
  %341 = fmul float %295, %290, !dbg !27
  %342 = fmul float %299, %291, !dbg !27
  %343 = fadd float %341, %342, !dbg !27
  %344 = fmul float %343, %272, !dbg !27
  %345 = fadd float %340, %344, !dbg !27
  %346 = fmul float %336, %345, !dbg !27
  %347 = fadd float %335, %346, !dbg !27
  %348 = fsub float %323, %347, !dbg !27
  %349 = fcmp olt float %348, 0.000000e+00, !dbg !27
  %350 = fneg float %348, !dbg !27
  %absf_cont34 = select i1 %349, float %350, float %348, !dbg !27
  %351 = fadd float %323, %347, !dbg !28
  %352 = fmul float %351, 0x3F1A36E2E0000000, !dbg !28
  %353 = fcmp olt float %absf_cont34, %352, !dbg !28
  br i1 %353, label %expr_true38, label %_cont36, !dbg !28

_cont36:                                          ; preds = %expr_false23
  %354 = fmul float %323, %323, !dbg !29
  %355 = load float, float* %148, align 8, !dbg !29
  %356 = fmul float %355, 2.000000e+00, !dbg !29
  %357 = fmul float %356, %348, !dbg !29
  %358 = fsub float %354, %357, !dbg !29
  %359 = call float @llvm.sqrt.f32(float %358), !dbg !29
  %360 = fsub float %323, %359, !dbg !30
  %361 = fdiv float %360, %348, !dbg !30
  br label %if_join39, !dbg !30

expr_true38:                                      ; preds = %expr_false23
  %362 = load float, float* %148, align 8, !dbg !29
  %363 = fmul float %362, 2.000000e+00, !dbg !29
  %364 = fdiv float %363, %351, !dbg !29
  br label %if_join39, !dbg !29

if_join39:                                        ; preds = %expr_true38, %_cont36
  %storemerge536 = phi float [ %364, %expr_true38 ], [ %361, %_cont36 ], !dbg !22
  store float %storemerge536, float* %148, align 8, !dbg !22
  %.elt397 = getelementptr inbounds %3, %3* %n_sample_4100656, i64 0, i32 1, !dbg !31
  %.unpack398 = load float, float* %.elt397, align 4, !dbg !31
  %.elt399 = getelementptr inbounds %0, %0* %sampler_4100391, i64 0, i32 3, i32 1, i32 0, !dbg !31
  %.unpack400 = load float, float* %.elt399, align 4, !dbg !31
  %.elt401 = getelementptr inbounds %0, %0* %sampler_4100391, i64 0, i32 3, i32 1, i32 1, !dbg !31
  %.unpack402 = load float, float* %.elt401, align 4, !dbg !31
  %365 = load float, float* %148, align 8, !dbg !31
  %366 = getelementptr inbounds %0, %0* %sampler_4100391, i64 0, i32 3, i32 2, i32 0, !dbg !31
  %367 = load float, float* %366, align 4, !dbg !31
  %368 = getelementptr inbounds %0, %0* %sampler_4100391, i64 0, i32 3, i32 2, i32 1, !dbg !31
  %369 = load float, float* %368, align 4, !dbg !31
  %370 = sitofp i32 %clamp_cont29 to float, !dbg !31
  %371 = fadd float %storemerge536, %370, !dbg !31
  %372 = fmul float %371, %.unpack400, !dbg !31
  %373 = sitofp i32 %clamp_cont13 to float, !dbg !31
  %374 = fadd float %.unpack398, %373, !dbg !31
  %375 = fmul float %374, %.unpack402, !dbg !31
  %sample_4102447.repack403 = getelementptr inbounds %3, %3* %sample_4102447, i64 0, i32 0, !dbg !31
  store float %372, float* %sample_4102447.repack403, align 8, !dbg !31
  %sample_4102447.repack405 = getelementptr inbounds %3, %3* %sample_4102447, i64 0, i32 1, !dbg !31
  store float %375, float* %sample_4102447.repack405, align 4, !dbg !31
  %n_sample_4101517.repack = getelementptr inbounds %3, %3* %n_sample_4101517, i64 0, i32 0, !dbg !31
  store float %372, float* %n_sample_4101517.repack, align 8, !dbg !31
  %n_sample_4101517.repack408 = getelementptr inbounds %3, %3* %n_sample_4101517, i64 0, i32 1, !dbg !31
  store float %375, float* %n_sample_4101517.repack408, align 4, !dbg !31
  %param_weight_4101351.repack = getelementptr inbounds [4 x float], [4 x float]* %param_weight_4101351, i64 0, i64 0, !dbg !31
  store float 0.000000e+00, float* %param_weight_4101351.repack, align 4, !dbg !31
  %param_weight_4101351.repack410 = getelementptr inbounds [4 x float], [4 x float]* %param_weight_4101351, i64 0, i64 1, !dbg !31
  store float 0.000000e+00, float* %param_weight_4101351.repack410, align 4, !dbg !31
  %param_weight_4101351.repack411 = getelementptr inbounds [4 x float], [4 x float]* %param_weight_4101351, i64 0, i64 2, !dbg !31
  store float 0.000000e+00, float* %param_weight_4101351.repack411, align 4, !dbg !31
  %param_weight_4101351.repack412 = getelementptr inbounds [4 x float], [4 x float]* %param_weight_4101351, i64 0, i64 3, !dbg !31
  store float 0.000000e+00, float* %param_weight_4101351.repack412, align 4, !dbg !31
  store i32 0, i32* %slice_offset_4101462, align 4, !dbg !31
  store i32 0, i32* %dim_4101327, align 4, !dbg !31
  %376 = getelementptr inbounds %0, %0* %sampler_4100391, i64 0, i32 2, !dbg !31
  %377 = getelementptr inbounds %0, %0* %sampler_4100391, i64 0, i32 2, i32 4, !dbg !31
  %378 = getelementptr inbounds %0, %0* %sampler_4100391, i64 0, i32 2, i32 3, !dbg !31
  %379 = getelementptr inbounds %0, %0* %sampler_4100391, i64 0, i32 2, i32 5, !dbg !31
  %380 = getelementptr inbounds %0, %0* %sampler_4100391, i64 0, i32 2, i32 6, !dbg !31
  br label %expr_true185, !dbg !13

expr_false41:                                     ; preds = %continue199
  %381 = load i32, i32* %slice_offset_4101462, align 4, !dbg !14
  %382 = getelementptr inbounds %0, %0* %sampler_4100391, i64 0, i32 2, i32 0, i32 1, !dbg !14
  %383 = load i32, i32* %382, align 4, !dbg !14
  %offset246 = mul nsw i32 %381, %383, !dbg !14
  store i32 %offset246, i32* %offset_4101515, align 4, !dbg !14
  %384 = getelementptr inbounds %3, %3* %n_sample_4101517, i64 0, i32 1, !dbg !14
  %385 = load float, float* %384, align 4, !dbg !14
  %386 = load i32, i32* %382, align 4, !dbg !14
  %size247 = add nsw i32 %386, -2, !dbg !14
  store i32 %size247, i32* %size_4101487, align 4, !dbg !14
  store i32 1, i32* %first_4101495, align 4, !dbg !14
  %387 = bitcast [4 x float]* %param_weight_4101351 to [0 x float]*, !dbg !14
  %388 = icmp sgt i32 %386, 2, !dbg !15
  br i1 %388, label %expr_true179, label %expr_false43, !dbg !15

expr_false43:                                     ; preds = %if_join184, %expr_false41
  %389 = load i32, i32* %first_4101495, align 4, !dbg !16
  %390 = add nsw i32 %389, -1, !dbg !16
  %391 = icmp slt i32 %size247, %390, !dbg !16
  %size247. = select i1 %391, i32 %size247, i32 %390, !dbg !16
  %.inv548 = icmp sgt i32 %389, 0, !dbg !16
  %clamp_cont49 = select i1 %.inv548, i32 %size247., i32 0, !dbg !16
  %392 = load i32, i32* %offset_4101515, align 4, !dbg !17
  %393 = call fastcc float @fetch_marginal_warp2D2_4088477(%1* nonnull %376, i32 %392, i32 %clamp_cont49, [0 x float]* nonnull %387), !dbg !17
  %394 = load float, float* %384, align 4, !dbg !18
  %395 = fsub float %394, %393, !dbg !18
  store float %395, float* %384, align 4, !dbg !18
  %396 = getelementptr inbounds %1, %1* %376, i64 0, i32 0, i32 0, !dbg !18
  %397 = load i32, i32* %396, align 4, !dbg !18
  %398 = load i32, i32* %382, align 4, !dbg !18
  %399 = mul nsw i32 %clamp_cont49, %397, !dbg !18
  store i32 %399, i32* %offset_4101515, align 4, !dbg !18
  %400 = load i32, i32* %slice_offset_4101462, align 4, !dbg !18
  %slice_size248 = mul nsw i32 %397, %398, !dbg !18
  %401 = mul nsw i32 %400, %slice_size248, !dbg !18
  %402 = add nsw i32 %399, %401, !dbg !18
  store i32 %402, i32* %offset_4101515, align 4, !dbg !18
  %403 = getelementptr inbounds %0, %0* %sampler_4100391, i64 0, i32 2, i32 9, !dbg !18
  %404 = load [0 x float]*, [0 x float]** %403, align 8, !dbg !18
  %405 = load i32, i32* %396, align 4, !dbg !18
  %406 = load [0 x i32]*, [0 x i32]** %377, align 8, !dbg !18
  %407 = getelementptr inbounds [0 x i32], [0 x i32]* %406, i64 0, i64 1, !dbg !18
  %408 = load i32, i32* %407, align 4, !dbg !18
  %409 = getelementptr inbounds [4 x float], [4 x float]* %param_weight_4101351, i64 0, i64 2, !dbg !18
  %410 = load float, float* %409, align 4, !dbg !18
  %411 = getelementptr inbounds [4 x float], [4 x float]* %param_weight_4101351, i64 0, i64 3, !dbg !18
  %412 = load float, float* %411, align 4, !dbg !18
  %413 = load [0 x i32]*, [0 x i32]** %377, align 8, !dbg !18
  %414 = getelementptr inbounds [0 x i32], [0 x i32]* %413, i64 0, i64 0, !dbg !18
  %415 = load i32, i32* %414, align 4, !dbg !18
  %416 = getelementptr inbounds [4 x float], [4 x float]* %param_weight_4101351, i64 0, i64 0, !dbg !18
  %417 = load float, float* %416, align 4, !dbg !18
  %418 = getelementptr inbounds [4 x float], [4 x float]* %param_weight_4101351, i64 0, i64 1, !dbg !18
  %419 = load float, float* %418, align 4, !dbg !18
  %420 = add nsw i32 %402, %405, !dbg !18
  %421 = add nsw i32 %420, -1, !dbg !18
  %422 = sext i32 %421 to i64, !dbg !18
  %423 = getelementptr inbounds [0 x float], [0 x float]* %404, i64 0, i64 %422, !dbg !18
  %424 = load float, float* %423, align 4, !dbg !18
  %425 = fmul float %424, %417, !dbg !18
  %426 = mul nsw i32 %415, %slice_size248, !dbg !18
  %i1249 = add nsw i32 %421, %426, !dbg !18
  %427 = sext i32 %i1249 to i64, !dbg !18
  %428 = getelementptr inbounds [0 x float], [0 x float]* %404, i64 0, i64 %427, !dbg !18
  %429 = load float, float* %428, align 4, !dbg !18
  %430 = fmul float %429, %419, !dbg !18
  %431 = fadd float %425, %430, !dbg !18
  %432 = fmul float %431, %410, !dbg !18
  %433 = load [0 x i32]*, [0 x i32]** %377, align 8, !dbg !18
  %434 = getelementptr inbounds [0 x i32], [0 x i32]* %433, i64 0, i64 0, !dbg !18
  %435 = load i32, i32* %434, align 4, !dbg !18
  %436 = load float, float* %416, align 4, !dbg !18
  %437 = load float, float* %418, align 4, !dbg !18
  %438 = mul nsw i32 %408, %slice_size248, !dbg !18
  %i1250 = add nsw i32 %421, %438, !dbg !18
  %439 = sext i32 %i1250 to i64, !dbg !18
  %440 = getelementptr inbounds [0 x float], [0 x float]* %404, i64 0, i64 %439, !dbg !18
  %441 = load float, float* %440, align 4, !dbg !18
  %442 = fmul float %441, %436, !dbg !18
  %443 = mul nsw i32 %435, %slice_size248, !dbg !18
  %i1251 = add nsw i32 %i1250, %443, !dbg !18
  %444 = sext i32 %i1251 to i64, !dbg !18
  %445 = getelementptr inbounds [0 x float], [0 x float]* %404, i64 0, i64 %444, !dbg !18
  %446 = load float, float* %445, align 4, !dbg !18
  %447 = fmul float %446, %437, !dbg !18
  %448 = fadd float %442, %447, !dbg !18
  %449 = fmul float %448, %412, !dbg !18
  %450 = fadd float %432, %449, !dbg !18
  %451 = load [0 x float]*, [0 x float]** %403, align 8, !dbg !18
  %452 = load i32, i32* %396, align 4, !dbg !18
  %453 = load [0 x i32]*, [0 x i32]** %377, align 8, !dbg !18
  %454 = getelementptr inbounds [0 x i32], [0 x i32]* %453, i64 0, i64 1, !dbg !18
  %455 = load i32, i32* %454, align 4, !dbg !18
  %456 = load float, float* %409, align 4, !dbg !18
  %457 = load float, float* %411, align 4, !dbg !18
  %458 = getelementptr inbounds [0 x i32], [0 x i32]* %453, i64 0, i64 0, !dbg !18
  %459 = load i32, i32* %458, align 4, !dbg !18
  %460 = load float, float* %416, align 4, !dbg !18
  %461 = load float, float* %418, align 4, !dbg !18
  %462 = shl nsw i32 %452, 1, !dbg !18
  %463 = add nsw i32 %462, -1, !dbg !18
  %464 = add nsw i32 %402, %463, !dbg !18
  %465 = sext i32 %464 to i64, !dbg !18
  %466 = getelementptr inbounds [0 x float], [0 x float]* %451, i64 0, i64 %465, !dbg !18
  %467 = load float, float* %466, align 4, !dbg !18
  %468 = fmul float %467, %460, !dbg !18
  %469 = mul nsw i32 %459, %slice_size248, !dbg !18
  %i1252 = add nsw i32 %464, %469, !dbg !18
  %470 = sext i32 %i1252 to i64, !dbg !18
  %471 = getelementptr inbounds [0 x float], [0 x float]* %451, i64 0, i64 %470, !dbg !18
  %472 = load float, float* %471, align 4, !dbg !18
  %473 = fmul float %472, %461, !dbg !18
  %474 = fadd float %468, %473, !dbg !18
  %475 = fmul float %474, %456, !dbg !18
  %476 = load [0 x i32]*, [0 x i32]** %377, align 8, !dbg !18
  %477 = getelementptr inbounds [0 x i32], [0 x i32]* %476, i64 0, i64 0, !dbg !18
  %478 = load i32, i32* %477, align 4, !dbg !18
  %479 = load float, float* %416, align 4, !dbg !18
  %480 = load float, float* %418, align 4, !dbg !18
  %481 = mul nsw i32 %455, %slice_size248, !dbg !18
  %i1253 = add nsw i32 %464, %481, !dbg !18
  %482 = sext i32 %i1253 to i64, !dbg !18
  %483 = getelementptr inbounds [0 x float], [0 x float]* %451, i64 0, i64 %482, !dbg !18
  %484 = load float, float* %483, align 4, !dbg !18
  %485 = fmul float %484, %479, !dbg !18
  %486 = mul nsw i32 %478, %slice_size248, !dbg !18
  %i1254 = add nsw i32 %i1253, %486, !dbg !18
  %487 = sext i32 %i1254 to i64, !dbg !18
  %488 = getelementptr inbounds [0 x float], [0 x float]* %451, i64 0, i64 %487, !dbg !18
  %489 = load float, float* %488, align 4, !dbg !18
  %490 = fmul float %489, %480, !dbg !18
  %491 = fadd float %485, %490, !dbg !18
  %492 = fmul float %491, %457, !dbg !18
  %493 = fadd float %475, %492, !dbg !18
  %494 = fsub float %450, %493, !dbg !18
  %495 = fcmp olt float %494, 0.000000e+00, !dbg !18
  %496 = fneg float %494, !dbg !18
  %absf_cont55 = select i1 %495, float %496, float %494, !dbg !18
  %497 = fadd float %450, %493, !dbg !19
  %498 = fmul float %497, 0x3F1A36E2E0000000, !dbg !19
  %is_const255 = fcmp olt float %absf_cont55, %498, !dbg !19
  br i1 %is_const255, label %expr_true59, label %_cont57, !dbg !19

_cont57:                                          ; preds = %expr_false43
  %499 = fmul float %450, %450, !dbg !20
  %500 = load float, float* %384, align 4, !dbg !20
  %501 = fmul float %500, 2.000000e+00, !dbg !20
  %502 = fmul float %501, %494, !dbg !20
  %503 = fsub float %499, %502, !dbg !20
  %504 = call float @llvm.sqrt.f32(float %503), !dbg !20
  %505 = fsub float %450, %504, !dbg !21
  %506 = fdiv float %505, %494, !dbg !21
  br label %if_join60, !dbg !21

expr_true59:                                      ; preds = %expr_false43
  %507 = load float, float* %384, align 4, !dbg !20
  %508 = fmul float %507, 2.000000e+00, !dbg !20
  store float %508, float* %384, align 4, !dbg !20
  %509 = fdiv float %508, %497, !dbg !20
  br label %if_join60, !dbg !20

if_join60:                                        ; preds = %expr_true59, %_cont57
  %storemerge413 = phi float [ %506, %_cont57 ], [ %509, %expr_true59 ], !dbg !22
  store float %storemerge413, float* %384, align 4, !dbg !22
  %510 = getelementptr inbounds %3, %3* %n_sample_4101517, i64 0, i32 0, !dbg !23
  %511 = load float, float* %510, align 8, !dbg !23
  %512 = fsub float 1.000000e+00, %storemerge413, !dbg !23
  %513 = fmul float %512, %450, !dbg !23
  %514 = fmul float %storemerge413, %493, !dbg !23
  %515 = fadd float %513, %514, !dbg !23
  %516 = fmul float %511, %515, !dbg !23
  store float %516, float* %510, align 8, !dbg !23
  %517 = load i32, i32* %offset_4101515, align 4, !dbg !23
  %518 = insertvalue %3 undef, float %516, 0, !dbg !23
  %.elt416 = getelementptr inbounds %3, %3* %n_sample_4101517, i64 0, i32 1, !dbg !23
  %.unpack417 = load float, float* %.elt416, align 4, !dbg !23
  %519 = insertvalue %3 %518, float %.unpack417, 1, !dbg !23
  %520 = load i32, i32* %396, align 4, !dbg !23
  %size256 = add nsw i32 %520, -2, !dbg !23
  store i32 %size256, i32* %size_4101755, align 4, !dbg !23
  store i32 1, i32* %first_4101763, align 4, !dbg !23
  %521 = icmp sgt i32 %520, 2, !dbg !24
  br i1 %521, label %expr_true173, label %expr_false62, !dbg !24

expr_false62:                                     ; preds = %if_join178, %if_join60
  %522 = load i32, i32* %first_4101763, align 4, !dbg !25
  %523 = add nsw i32 %522, -1, !dbg !25
  %524 = icmp slt i32 %size256, %523, !dbg !25
  %size256. = select i1 %524, i32 %size256, i32 %523, !dbg !25
  %.inv549 = icmp sgt i32 %522, 0, !dbg !25
  %clamp_cont68 = select i1 %.inv549, i32 %size256., i32 0, !dbg !25
  %525 = load float, float* %510, align 8, !dbg !26
  %526 = load i32, i32* %offset_4101515, align 4, !dbg !26
  %527 = insertvalue %3 undef, float %525, 0, !dbg !26
  %.elt420 = getelementptr inbounds %3, %3* %n_sample_4101517, i64 0, i32 1, !dbg !26
  %.unpack421 = load float, float* %.elt420, align 4, !dbg !26
  %528 = insertvalue %3 %527, float %.unpack421, 1, !dbg !26
  %529 = call fastcc float @fetch_conditional_warp2D2_4088841(%1* nonnull %376, i32 %526, i32 %clamp_cont68, i32 %slice_size248, %3 %528, [0 x float]* nonnull %387), !dbg !26
  %530 = fsub float %525, %529, !dbg !27
  store float %530, float* %510, align 8, !dbg !27
  %531 = load i32, i32* %offset_4101515, align 4, !dbg !27
  %532 = add nsw i32 %531, %clamp_cont68, !dbg !27
  store i32 %532, i32* %offset_4101515, align 4, !dbg !27
  %533 = getelementptr inbounds %0, %0* %sampler_4100391, i64 0, i32 2, i32 7, !dbg !27
  %534 = load [0 x float]*, [0 x float]** %533, align 8, !dbg !27
  %535 = load [0 x i32]*, [0 x i32]** %377, align 8, !dbg !27
  %536 = getelementptr inbounds [0 x i32], [0 x i32]* %535, i64 0, i64 1, !dbg !27
  %537 = load i32, i32* %536, align 4, !dbg !27
  %538 = load float, float* %409, align 4, !dbg !27
  %539 = load float, float* %411, align 4, !dbg !27
  %540 = getelementptr inbounds [0 x i32], [0 x i32]* %535, i64 0, i64 0, !dbg !27
  %541 = load i32, i32* %540, align 4, !dbg !27
  %542 = load float, float* %416, align 4, !dbg !27
  %543 = load float, float* %418, align 4, !dbg !27
  %544 = sext i32 %532 to i64, !dbg !27
  %545 = getelementptr inbounds [0 x float], [0 x float]* %534, i64 0, i64 %544, !dbg !27
  %546 = load float, float* %545, align 4, !dbg !27
  %547 = mul nsw i32 %541, %slice_size248, !dbg !27
  %i1257 = add nsw i32 %532, %547, !dbg !27
  %548 = sext i32 %i1257 to i64, !dbg !27
  %549 = getelementptr inbounds [0 x float], [0 x float]* %534, i64 0, i64 %548, !dbg !27
  %550 = load float, float* %549, align 4, !dbg !27
  %551 = load [0 x i32]*, [0 x i32]** %377, align 8, !dbg !27
  %552 = getelementptr inbounds [0 x i32], [0 x i32]* %551, i64 0, i64 0, !dbg !27
  %553 = load i32, i32* %552, align 4, !dbg !27
  %554 = load float, float* %416, align 4, !dbg !27
  %555 = load float, float* %418, align 4, !dbg !27
  %556 = mul nsw i32 %537, %slice_size248, !dbg !27
  %i1258 = add nsw i32 %532, %556, !dbg !27
  %557 = sext i32 %i1258 to i64, !dbg !27
  %558 = getelementptr inbounds [0 x float], [0 x float]* %534, i64 0, i64 %557, !dbg !27
  %559 = load float, float* %558, align 4, !dbg !27
  %560 = mul nsw i32 %553, %slice_size248, !dbg !27
  %i1259 = add nsw i32 %i1258, %560, !dbg !27
  %561 = sext i32 %i1259 to i64, !dbg !27
  %562 = getelementptr inbounds [0 x float], [0 x float]* %534, i64 0, i64 %561, !dbg !27
  %563 = load float, float* %562, align 4, !dbg !27
  %564 = load [0 x float]*, [0 x float]** %533, align 8, !dbg !27
  %565 = load [0 x i32]*, [0 x i32]** %377, align 8, !dbg !27
  %566 = getelementptr inbounds [0 x i32], [0 x i32]* %565, i64 0, i64 1, !dbg !27
  %567 = load i32, i32* %566, align 4, !dbg !27
  %568 = load float, float* %409, align 4, !dbg !27
  %569 = load float, float* %411, align 4, !dbg !27
  %570 = getelementptr inbounds [0 x i32], [0 x i32]* %565, i64 0, i64 0, !dbg !27
  %571 = load i32, i32* %570, align 4, !dbg !27
  %572 = load float, float* %416, align 4, !dbg !27
  %573 = load float, float* %418, align 4, !dbg !27
  %574 = getelementptr inbounds [0 x float], [0 x float]* %564, i64 0, i64 1, !dbg !27
  %575 = sext i32 %532 to i64, !dbg !27
  %576 = getelementptr inbounds float, float* %574, i64 %575, !dbg !27
  %577 = load float, float* %576, align 4, !dbg !27
  %578 = mul nsw i32 %571, %slice_size248, !dbg !27
  %i1260 = add nsw i32 %532, %578, !dbg !27
  %579 = sext i32 %i1260 to i64, !dbg !27
  %580 = getelementptr inbounds float, float* %574, i64 %579, !dbg !27
  %581 = load float, float* %580, align 4, !dbg !27
  %582 = load [0 x i32]*, [0 x i32]** %377, align 8, !dbg !27
  %583 = getelementptr inbounds [0 x i32], [0 x i32]* %582, i64 0, i64 0, !dbg !27
  %584 = load i32, i32* %583, align 4, !dbg !27
  %585 = load float, float* %416, align 4, !dbg !27
  %586 = load float, float* %418, align 4, !dbg !27
  %587 = mul nsw i32 %567, %slice_size248, !dbg !27
  %i1261 = add nsw i32 %532, %587, !dbg !27
  %588 = sext i32 %i1261 to i64, !dbg !27
  %589 = getelementptr inbounds float, float* %574, i64 %588, !dbg !27
  %590 = load float, float* %589, align 4, !dbg !27
  %591 = mul nsw i32 %584, %slice_size248, !dbg !27
  %i1262 = add nsw i32 %i1261, %591, !dbg !27
  %592 = sext i32 %i1262 to i64, !dbg !27
  %593 = getelementptr inbounds float, float* %574, i64 %592, !dbg !27
  %594 = load float, float* %593, align 4, !dbg !27
  %595 = load [0 x float]*, [0 x float]** %533, align 8, !dbg !27
  %596 = load i32, i32* %396, align 4, !dbg !27
  %597 = load [0 x i32]*, [0 x i32]** %377, align 8, !dbg !27
  %598 = getelementptr inbounds [0 x i32], [0 x i32]* %597, i64 0, i64 1, !dbg !27
  %599 = load i32, i32* %598, align 4, !dbg !27
  %600 = load float, float* %409, align 4, !dbg !27
  %601 = load float, float* %411, align 4, !dbg !27
  %602 = getelementptr inbounds [0 x i32], [0 x i32]* %597, i64 0, i64 0, !dbg !27
  %603 = load i32, i32* %602, align 4, !dbg !27
  %604 = load float, float* %416, align 4, !dbg !27
  %605 = load float, float* %418, align 4, !dbg !27
  %606 = sext i32 %596 to i64, !dbg !27
  %607 = getelementptr inbounds [0 x float], [0 x float]* %595, i64 0, i64 %606, !dbg !27
  %608 = sext i32 %532 to i64, !dbg !27
  %609 = getelementptr inbounds float, float* %607, i64 %608, !dbg !27
  %610 = load float, float* %609, align 4, !dbg !27
  %611 = mul nsw i32 %603, %slice_size248, !dbg !27
  %i1263 = add nsw i32 %532, %611, !dbg !27
  %612 = sext i32 %i1263 to i64, !dbg !27
  %613 = getelementptr inbounds float, float* %607, i64 %612, !dbg !27
  %614 = load float, float* %613, align 4, !dbg !27
  %615 = load [0 x i32]*, [0 x i32]** %377, align 8, !dbg !27
  %616 = getelementptr inbounds [0 x i32], [0 x i32]* %615, i64 0, i64 0, !dbg !27
  %617 = load i32, i32* %616, align 4, !dbg !27
  %618 = load float, float* %416, align 4, !dbg !27
  %619 = load float, float* %418, align 4, !dbg !27
  %620 = mul nsw i32 %599, %slice_size248, !dbg !27
  %i1264 = add nsw i32 %532, %620, !dbg !27
  %621 = sext i32 %i1264 to i64, !dbg !27
  %622 = getelementptr inbounds float, float* %607, i64 %621, !dbg !27
  %623 = load float, float* %622, align 4, !dbg !27
  %624 = mul nsw i32 %617, %slice_size248, !dbg !27
  %i1265 = add nsw i32 %i1264, %624, !dbg !27
  %625 = sext i32 %i1265 to i64, !dbg !27
  %626 = getelementptr inbounds float, float* %607, i64 %625, !dbg !27
  %627 = load float, float* %626, align 4, !dbg !27
  %628 = load [0 x float]*, [0 x float]** %533, align 8, !dbg !27
  %629 = load i32, i32* %396, align 4, !dbg !27
  %630 = load [0 x i32]*, [0 x i32]** %377, align 8, !dbg !27
  %631 = getelementptr inbounds [0 x i32], [0 x i32]* %630, i64 0, i64 1, !dbg !27
  %632 = load i32, i32* %631, align 4, !dbg !27
  %633 = load float, float* %409, align 4, !dbg !27
  %634 = load float, float* %411, align 4, !dbg !27
  %635 = getelementptr inbounds [0 x i32], [0 x i32]* %630, i64 0, i64 0, !dbg !27
  %636 = load i32, i32* %635, align 4, !dbg !27
  %637 = load float, float* %416, align 4, !dbg !27
  %638 = load float, float* %418, align 4, !dbg !27
  %639 = add nsw i32 %629, 1, !dbg !27
  %640 = sext i32 %639 to i64, !dbg !27
  %641 = getelementptr inbounds [0 x float], [0 x float]* %628, i64 0, i64 %640, !dbg !27
  %642 = sext i32 %532 to i64, !dbg !27
  %643 = getelementptr inbounds float, float* %641, i64 %642, !dbg !27
  %644 = load float, float* %643, align 4, !dbg !27
  %645 = mul nsw i32 %636, %slice_size248, !dbg !27
  %i1266 = add nsw i32 %532, %645, !dbg !27
  %646 = sext i32 %i1266 to i64, !dbg !27
  %647 = getelementptr inbounds float, float* %641, i64 %646, !dbg !27
  %648 = load float, float* %647, align 4, !dbg !27
  %649 = load [0 x i32]*, [0 x i32]** %377, align 8, !dbg !27
  %650 = getelementptr inbounds [0 x i32], [0 x i32]* %649, i64 0, i64 0, !dbg !27
  %651 = load i32, i32* %650, align 4, !dbg !27
  %652 = load float, float* %416, align 4, !dbg !27
  %653 = load float, float* %418, align 4, !dbg !27
  %654 = mul nsw i32 %632, %slice_size248, !dbg !27
  %i1267 = add nsw i32 %532, %654, !dbg !27
  %655 = sext i32 %i1267 to i64, !dbg !27
  %656 = getelementptr inbounds float, float* %641, i64 %655, !dbg !27
  %657 = load float, float* %656, align 4, !dbg !27
  %658 = mul nsw i32 %651, %slice_size248, !dbg !27
  %i1268 = add nsw i32 %i1267, %658, !dbg !27
  %659 = sext i32 %i1268 to i64, !dbg !27
  %660 = getelementptr inbounds float, float* %641, i64 %659, !dbg !27
  %661 = load float, float* %660, align 4, !dbg !27
  %662 = load float, float* %384, align 4, !dbg !27
  %663 = fsub float 1.000000e+00, %662, !dbg !27
  %664 = fmul float %546, %542, !dbg !27
  %665 = fmul float %550, %543, !dbg !27
  %666 = fadd float %664, %665, !dbg !27
  %667 = fmul float %666, %538, !dbg !27
  %668 = fmul float %559, %554, !dbg !27
  %669 = fmul float %563, %555, !dbg !27
  %670 = fadd float %668, %669, !dbg !27
  %671 = fmul float %670, %539, !dbg !27
  %672 = fadd float %667, %671, !dbg !27
  %673 = fmul float %663, %672, !dbg !27
  %674 = load float, float* %384, align 4, !dbg !27
  %675 = fmul float %610, %604, !dbg !27
  %676 = fmul float %614, %605, !dbg !27
  %677 = fadd float %675, %676, !dbg !27
  %678 = fmul float %677, %600, !dbg !27
  %679 = fmul float %623, %618, !dbg !27
  %680 = fmul float %627, %619, !dbg !27
  %681 = fadd float %679, %680, !dbg !27
  %682 = fmul float %681, %601, !dbg !27
  %683 = fadd float %678, %682, !dbg !27
  %684 = fmul float %674, %683, !dbg !27
  %685 = fadd float %673, %684, !dbg !27
  %686 = load float, float* %384, align 4, !dbg !27
  %687 = fsub float 1.000000e+00, %686, !dbg !27
  %688 = fmul float %577, %572, !dbg !27
  %689 = fmul float %581, %573, !dbg !27
  %690 = fadd float %688, %689, !dbg !27
  %691 = fmul float %690, %568, !dbg !27
  %692 = fmul float %590, %585, !dbg !27
  %693 = fmul float %594, %586, !dbg !27
  %694 = fadd float %692, %693, !dbg !27
  %695 = fmul float %694, %569, !dbg !27
  %696 = fadd float %691, %695, !dbg !27
  %697 = fmul float %687, %696, !dbg !27
  %698 = load float, float* %384, align 4, !dbg !27
  %699 = fmul float %644, %637, !dbg !27
  %700 = fmul float %648, %638, !dbg !27
  %701 = fadd float %699, %700, !dbg !27
  %702 = fmul float %701, %633, !dbg !27
  %703 = fmul float %657, %652, !dbg !27
  %704 = fmul float %661, %653, !dbg !27
  %705 = fadd float %703, %704, !dbg !27
  %706 = fmul float %705, %634, !dbg !27
  %707 = fadd float %702, %706, !dbg !27
  %708 = fmul float %698, %707, !dbg !27
  %709 = fadd float %697, %708, !dbg !27
  %710 = fsub float %685, %709, !dbg !27
  %711 = fcmp olt float %710, 0.000000e+00, !dbg !27
  %712 = fneg float %710, !dbg !27
  %absf_cont74 = select i1 %711, float %712, float %710, !dbg !27
  %713 = fadd float %685, %709, !dbg !28
  %714 = fmul float %713, 0x3F1A36E2E0000000, !dbg !28
  %715 = fcmp olt float %absf_cont74, %714, !dbg !28
  br i1 %715, label %expr_true78, label %_cont76, !dbg !28

_cont76:                                          ; preds = %expr_false62
  %716 = fmul float %685, %685, !dbg !29
  %717 = load float, float* %510, align 8, !dbg !29
  %718 = fmul float %717, 2.000000e+00, !dbg !29
  %719 = fmul float %718, %710, !dbg !29
  %720 = fsub float %716, %719, !dbg !29
  %721 = call float @llvm.sqrt.f32(float %720), !dbg !29
  %722 = fsub float %685, %721, !dbg !30
  %723 = fdiv float %722, %710, !dbg !30
  br label %if_join79, !dbg !30

expr_true78:                                      ; preds = %expr_false62
  %724 = load float, float* %510, align 8, !dbg !29
  %725 = fmul float %724, 2.000000e+00, !dbg !29
  %726 = fdiv float %725, %713, !dbg !29
  br label %if_join79, !dbg !29

if_join79:                                        ; preds = %expr_true78, %_cont76
  %storemerge531 = phi float [ %726, %expr_true78 ], [ %723, %_cont76 ], !dbg !22
  store float %storemerge531, float* %510, align 8, !dbg !22
  %.elt424 = getelementptr inbounds %3, %3* %n_sample_4101517, i64 0, i32 1, !dbg !31
  %.unpack425 = load float, float* %.elt424, align 4, !dbg !31
  %.elt426 = getelementptr inbounds %0, %0* %sampler_4100391, i64 0, i32 2, i32 1, i32 0, !dbg !31
  %.unpack427 = load float, float* %.elt426, align 4, !dbg !31
  %.elt428 = getelementptr inbounds %0, %0* %sampler_4100391, i64 0, i32 2, i32 1, i32 1, !dbg !31
  %.unpack429 = load float, float* %.elt428, align 4, !dbg !31
  %727 = load float, float* %510, align 8, !dbg !31
  %728 = getelementptr inbounds %0, %0* %sampler_4100391, i64 0, i32 2, i32 2, i32 0, !dbg !31
  %729 = load float, float* %728, align 4, !dbg !31
  %730 = getelementptr inbounds %0, %0* %sampler_4100391, i64 0, i32 2, i32 2, i32 1, !dbg !31
  %731 = load float, float* %730, align 4, !dbg !31
  %732 = sitofp i32 %clamp_cont49 to float, !dbg !31
  %733 = fadd float %.unpack425, %732, !dbg !31
  %734 = fmul float %733, %.unpack429, !dbg !31
  %735 = fmul float %734, 2.000000e+00, !dbg !31
  %736 = fadd float %735, -1.000000e+00, !dbg !31
  %737 = fmul float %736, 0x400921FB60000000, !dbg !31
  store float %737, float* %phi_m_4102202, align 4, !dbg !31
  %738 = getelementptr inbounds %0, %0* %sampler_4100391, i64 0, i32 5, !dbg !31
  %739 = load i1, i1* %738, align 1, !dbg !31
  br i1 %739, label %expr_true81, label %if_join82, !dbg !31

expr_true81:                                      ; preds = %if_join79
  %740 = fadd float %737, %10, !dbg !32
  store float %740, float* %phi_m_4102202, align 4, !dbg !32
  br label %if_join82, !dbg !32

if_join82:                                        ; preds = %if_join79, %expr_true81
  %741 = load float, float* %phi_m_4102202, align 4, !dbg !33
  %742 = call float @llvm.sin.f32(float %741), !dbg !33
  %743 = call float @llvm.cos.f32(float %741), !dbg !34
  %744 = sitofp i32 %clamp_cont68 to float, !dbg !35
  %745 = fadd float %storemerge531, %744, !dbg !35
  %746 = fmul float %745, %.unpack427, !dbg !35
  %747 = fmul float %746, %746, !dbg !35
  %748 = fmul float %747, 0x3FF921FB60000000, !dbg !35
  %749 = call float @llvm.sin.f32(float %748), !dbg !35
  %750 = call float @llvm.cos.f32(float %748), !dbg !36
  %751 = fmul float %743, %749, !dbg !37
  %752 = fmul float %751, %.unpack373, !dbg !37
  %753 = fmul float %742, %749, !dbg !37
  %754 = fmul float %753, %.unpack375, !dbg !37
  %755 = fadd float %752, %754, !dbg !37
  %756 = fmul float %750, %.unpack377, !dbg !37
  %757 = fadd float %755, %756, !dbg !37
  %758 = fmul float %757, 2.000000e+00, !dbg !37
  %759 = fmul float %750, %758, !dbg !37
  %760 = fsub float %759, %.unpack377, !dbg !37
  %761 = fcmp ugt float %760, 0.000000e+00, !dbg !37
  br i1 %761, label %expr_false91, label %sample_brdf_cont, !dbg !37

expr_false91:                                     ; preds = %if_join82
  %fr_4102445.repack = getelementptr inbounds %4, %4* %fr_4102445, i64 0, i32 0, !dbg !38
  store float 0.000000e+00, float* %fr_4102445.repack, align 8, !dbg !38
  %fr_4102445.repack430 = getelementptr inbounds %4, %4* %fr_4102445, i64 0, i32 1, !dbg !38
  store float 0.000000e+00, float* %fr_4102445.repack430, align 4, !dbg !38
  %fr_4102445.repack431 = getelementptr inbounds %4, %4* %fr_4102445, i64 0, i32 2, !dbg !38
  store float 0.000000e+00, float* %fr_4102445.repack431, align 8, !dbg !38
  %.elt432 = getelementptr inbounds %3, %3* %sample_4102447, i64 0, i32 0, !dbg !38
  %.unpack433 = load float, float* %.elt432, align 8, !dbg !38
  %.elt434 = getelementptr inbounds %3, %3* %sample_4102447, i64 0, i32 1, !dbg !38
  %.unpack435 = load float, float* %.elt434, align 4, !dbg !38
  %param_weight_4102292.repack = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4102292, i64 0, i64 0, !dbg !38
  store float 0.000000e+00, float* %param_weight_4102292.repack, align 4, !dbg !38
  %param_weight_4102292.repack436 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4102292, i64 0, i64 1, !dbg !38
  store float 0.000000e+00, float* %param_weight_4102292.repack436, align 4, !dbg !38
  %param_weight_4102292.repack437 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4102292, i64 0, i64 2, !dbg !38
  store float 0.000000e+00, float* %param_weight_4102292.repack437, align 4, !dbg !38
  %param_weight_4102292.repack438 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4102292, i64 0, i64 3, !dbg !38
  store float 0.000000e+00, float* %param_weight_4102292.repack438, align 4, !dbg !38
  %param_weight_4102292.repack439 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4102292, i64 0, i64 4, !dbg !38
  store float 0.000000e+00, float* %param_weight_4102292.repack439, align 4, !dbg !38
  %param_weight_4102292.repack440 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4102292, i64 0, i64 5, !dbg !38
  store float 0.000000e+00, float* %param_weight_4102292.repack440, align 4, !dbg !38
  store i32 0, i32* %slice_offset_4102403, align 4, !dbg !38
  store i32 0, i32* %dim_4102268, align 4, !dbg !38
  %762 = getelementptr inbounds %0, %0* %sampler_4100391, i64 0, i32 4, !dbg !38
  %763 = getelementptr inbounds %0, %0* %sampler_4100391, i64 0, i32 4, i32 4, !dbg !38
  %764 = getelementptr inbounds %0, %0* %sampler_4100391, i64 0, i32 4, i32 3, !dbg !38
  %765 = getelementptr inbounds %0, %0* %sampler_4100391, i64 0, i32 4, i32 5, !dbg !38
  %766 = getelementptr inbounds %0, %0* %sampler_4100391, i64 0, i32 4, i32 6, !dbg !38
  br label %expr_true154, !dbg !39

expr_false93:                                     ; preds = %continue171
  %767 = getelementptr inbounds %0, %0* %sampler_4100391, i64 0, i32 4, i32 2, !dbg !40
  %.elt441 = getelementptr inbounds %3, %3* %767, i64 0, i32 0, !dbg !40
  %.unpack442 = load float, float* %.elt441, align 4, !dbg !40
  %.elt445 = getelementptr inbounds %1, %1* %762, i64 0, i32 0, i32 0, !dbg !40
  %.unpack446 = load i32, i32* %.elt445, align 4, !dbg !40
  %768 = fmul float %.unpack433, %.unpack442, !dbg !40
  %769 = sitofp i32 %.unpack446 to float, !dbg !40
  %770 = fadd float %769, -2.000000e+00, !dbg !40
  %771 = fcmp olt float %768, %770, !dbg !40
  %772 = select i1 %771, float %768, float %770, !dbg !40
  %773 = call float @llvm.floor.f32(float %772), !dbg !40
  %.elt447 = getelementptr inbounds %0, %0* %sampler_4100391, i64 0, i32 4, i32 0, i32 1, !dbg !40
  %.unpack448 = load i32, i32* %.elt447, align 4, !dbg !40
  %.elt443 = getelementptr inbounds %0, %0* %sampler_4100391, i64 0, i32 4, i32 2, i32 1, !dbg !40
  %.unpack444 = load float, float* %.elt443, align 4, !dbg !40
  %774 = fmul float %.unpack435, %.unpack444, !dbg !41
  %775 = sitofp i32 %.unpack448 to float, !dbg !41
  %776 = fadd float %775, -2.000000e+00, !dbg !41
  %777 = fcmp olt float %774, %776, !dbg !41
  %778 = select i1 %777, float %774, float %776, !dbg !41
  %779 = call float @llvm.floor.f32(float %778), !dbg !41
  %780 = getelementptr inbounds %1, %1* %762, i64 0, i32 0, i32 0, !dbg !42
  %781 = load i32, i32* %780, align 4, !dbg !42
  %782 = getelementptr inbounds %0, %0* %sampler_4100391, i64 0, i32 4, i32 0, i32 1, !dbg !42
  %783 = load i32, i32* %782, align 4, !dbg !42
  %784 = load i32, i32* %slice_offset_4102403, align 4, !dbg !42
  %785 = getelementptr inbounds %0, %0* %sampler_4100391, i64 0, i32 4, i32 7, !dbg !42
  %786 = load [0 x float]*, [0 x float]** %785, align 8, !dbg !42
  %787 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %788 = getelementptr inbounds [0 x i32], [0 x i32]* %787, i64 0, i64 2, !dbg !42
  %789 = load i32, i32* %788, align 4, !dbg !42
  %790 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4102292, i64 0, i64 4, !dbg !42
  %791 = load float, float* %790, align 4, !dbg !42
  %792 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4102292, i64 0, i64 5, !dbg !42
  %793 = load float, float* %792, align 4, !dbg !42
  %794 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %795 = getelementptr inbounds [0 x i32], [0 x i32]* %794, i64 0, i64 1, !dbg !42
  %796 = load i32, i32* %795, align 4, !dbg !42
  %797 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4102292, i64 0, i64 2, !dbg !42
  %798 = load float, float* %797, align 4, !dbg !42
  %799 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4102292, i64 0, i64 3, !dbg !42
  %800 = load float, float* %799, align 4, !dbg !42
  %801 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %802 = getelementptr inbounds [0 x i32], [0 x i32]* %801, i64 0, i64 0, !dbg !42
  %803 = load i32, i32* %802, align 4, !dbg !42
  %804 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4102292, i64 0, i64 0, !dbg !42
  %805 = load float, float* %804, align 4, !dbg !42
  %806 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4102292, i64 0, i64 1, !dbg !42
  %807 = load float, float* %806, align 4, !dbg !42
  %808 = fptosi float %773 to i32, !dbg !42
  %809 = fptosi float %779 to i32, !dbg !42
  %810 = mul nsw i32 %781, %809, !dbg !42
  %index = add nsw i32 %810, %808, !dbg !42
  %size269 = mul nsw i32 %781, %783, !dbg !42
  %811 = mul nsw i32 %784, %size269, !dbg !42
  %812 = add nsw i32 %index, %811, !dbg !42
  %813 = sext i32 %812 to i64, !dbg !42
  %814 = getelementptr inbounds [0 x float], [0 x float]* %786, i64 0, i64 %813, !dbg !42
  %815 = load float, float* %814, align 4, !dbg !42
  %816 = mul nsw i32 %803, %size269, !dbg !42
  %i1270 = add nsw i32 %812, %816, !dbg !42
  %817 = sext i32 %i1270 to i64, !dbg !42
  %818 = getelementptr inbounds [0 x float], [0 x float]* %786, i64 0, i64 %817, !dbg !42
  %819 = load float, float* %818, align 4, !dbg !42
  %820 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %821 = getelementptr inbounds [0 x i32], [0 x i32]* %820, i64 0, i64 0, !dbg !42
  %822 = load i32, i32* %821, align 4, !dbg !42
  %823 = load float, float* %804, align 4, !dbg !42
  %824 = load float, float* %806, align 4, !dbg !42
  %825 = mul nsw i32 %796, %size269, !dbg !42
  %i1271 = add nsw i32 %812, %825, !dbg !42
  %826 = sext i32 %i1271 to i64, !dbg !42
  %827 = getelementptr inbounds [0 x float], [0 x float]* %786, i64 0, i64 %826, !dbg !42
  %828 = load float, float* %827, align 4, !dbg !42
  %829 = mul nsw i32 %822, %size269, !dbg !42
  %i1272 = add nsw i32 %i1271, %829, !dbg !42
  %830 = sext i32 %i1272 to i64, !dbg !42
  %831 = getelementptr inbounds [0 x float], [0 x float]* %786, i64 0, i64 %830, !dbg !42
  %832 = load float, float* %831, align 4, !dbg !42
  %833 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %834 = getelementptr inbounds [0 x i32], [0 x i32]* %833, i64 0, i64 1, !dbg !42
  %835 = load i32, i32* %834, align 4, !dbg !42
  %836 = load float, float* %797, align 4, !dbg !42
  %837 = load float, float* %799, align 4, !dbg !42
  %838 = getelementptr inbounds [0 x i32], [0 x i32]* %833, i64 0, i64 0, !dbg !42
  %839 = load i32, i32* %838, align 4, !dbg !42
  %840 = load float, float* %804, align 4, !dbg !42
  %841 = load float, float* %806, align 4, !dbg !42
  %842 = mul nsw i32 %789, %size269, !dbg !42
  %i1273 = add nsw i32 %812, %842, !dbg !42
  %843 = sext i32 %i1273 to i64, !dbg !42
  %844 = getelementptr inbounds [0 x float], [0 x float]* %786, i64 0, i64 %843, !dbg !42
  %845 = load float, float* %844, align 4, !dbg !42
  %846 = mul nsw i32 %839, %size269, !dbg !42
  %i1274 = add nsw i32 %i1273, %846, !dbg !42
  %847 = sext i32 %i1274 to i64, !dbg !42
  %848 = getelementptr inbounds [0 x float], [0 x float]* %786, i64 0, i64 %847, !dbg !42
  %849 = load float, float* %848, align 4, !dbg !42
  %850 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %851 = getelementptr inbounds [0 x i32], [0 x i32]* %850, i64 0, i64 0, !dbg !42
  %852 = load i32, i32* %851, align 4, !dbg !42
  %853 = load float, float* %804, align 4, !dbg !42
  %854 = load float, float* %806, align 4, !dbg !42
  %855 = mul nsw i32 %835, %size269, !dbg !42
  %i1275 = add nsw i32 %i1273, %855, !dbg !42
  %856 = sext i32 %i1275 to i64, !dbg !42
  %857 = getelementptr inbounds [0 x float], [0 x float]* %786, i64 0, i64 %856, !dbg !42
  %858 = load float, float* %857, align 4, !dbg !42
  %859 = mul nsw i32 %852, %size269, !dbg !42
  %i1276 = add nsw i32 %i1275, %859, !dbg !42
  %860 = sext i32 %i1276 to i64, !dbg !42
  %861 = getelementptr inbounds [0 x float], [0 x float]* %786, i64 0, i64 %860, !dbg !42
  %862 = load float, float* %861, align 4, !dbg !42
  %863 = load [0 x float]*, [0 x float]** %785, align 8, !dbg !42
  %864 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %865 = getelementptr inbounds [0 x i32], [0 x i32]* %864, i64 0, i64 2, !dbg !42
  %866 = load i32, i32* %865, align 4, !dbg !42
  %867 = load float, float* %790, align 4, !dbg !42
  %868 = load float, float* %792, align 4, !dbg !42
  %869 = getelementptr inbounds [0 x i32], [0 x i32]* %864, i64 0, i64 1, !dbg !42
  %870 = load i32, i32* %869, align 4, !dbg !42
  %871 = load float, float* %797, align 4, !dbg !42
  %872 = load float, float* %799, align 4, !dbg !42
  %873 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %874 = getelementptr inbounds [0 x i32], [0 x i32]* %873, i64 0, i64 0, !dbg !42
  %875 = load i32, i32* %874, align 4, !dbg !42
  %876 = load float, float* %804, align 4, !dbg !42
  %877 = load float, float* %806, align 4, !dbg !42
  %878 = getelementptr inbounds [0 x float], [0 x float]* %863, i64 0, i64 1, !dbg !42
  %879 = sext i32 %812 to i64, !dbg !42
  %880 = getelementptr inbounds float, float* %878, i64 %879, !dbg !42
  %881 = load float, float* %880, align 4, !dbg !42
  %882 = mul nsw i32 %875, %size269, !dbg !42
  %i1277 = add nsw i32 %812, %882, !dbg !42
  %883 = sext i32 %i1277 to i64, !dbg !42
  %884 = getelementptr inbounds float, float* %878, i64 %883, !dbg !42
  %885 = load float, float* %884, align 4, !dbg !42
  %886 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %887 = getelementptr inbounds [0 x i32], [0 x i32]* %886, i64 0, i64 0, !dbg !42
  %888 = load i32, i32* %887, align 4, !dbg !42
  %889 = load float, float* %804, align 4, !dbg !42
  %890 = load float, float* %806, align 4, !dbg !42
  %891 = mul nsw i32 %870, %size269, !dbg !42
  %i1278 = add nsw i32 %812, %891, !dbg !42
  %892 = sext i32 %i1278 to i64, !dbg !42
  %893 = getelementptr inbounds float, float* %878, i64 %892, !dbg !42
  %894 = load float, float* %893, align 4, !dbg !42
  %895 = mul nsw i32 %888, %size269, !dbg !42
  %i1279 = add nsw i32 %i1278, %895, !dbg !42
  %896 = sext i32 %i1279 to i64, !dbg !42
  %897 = getelementptr inbounds float, float* %878, i64 %896, !dbg !42
  %898 = load float, float* %897, align 4, !dbg !42
  %899 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %900 = getelementptr inbounds [0 x i32], [0 x i32]* %899, i64 0, i64 1, !dbg !42
  %901 = load i32, i32* %900, align 4, !dbg !42
  %902 = load float, float* %797, align 4, !dbg !42
  %903 = load float, float* %799, align 4, !dbg !42
  %904 = getelementptr inbounds [0 x i32], [0 x i32]* %899, i64 0, i64 0, !dbg !42
  %905 = load i32, i32* %904, align 4, !dbg !42
  %906 = load float, float* %804, align 4, !dbg !42
  %907 = load float, float* %806, align 4, !dbg !42
  %908 = mul nsw i32 %866, %size269, !dbg !42
  %i1280 = add nsw i32 %812, %908, !dbg !42
  %909 = sext i32 %i1280 to i64, !dbg !42
  %910 = getelementptr inbounds float, float* %878, i64 %909, !dbg !42
  %911 = load float, float* %910, align 4, !dbg !42
  %912 = mul nsw i32 %905, %size269, !dbg !42
  %i1281 = add nsw i32 %i1280, %912, !dbg !42
  %913 = sext i32 %i1281 to i64, !dbg !42
  %914 = getelementptr inbounds float, float* %878, i64 %913, !dbg !42
  %915 = load float, float* %914, align 4, !dbg !42
  %916 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %917 = getelementptr inbounds [0 x i32], [0 x i32]* %916, i64 0, i64 0, !dbg !42
  %918 = load i32, i32* %917, align 4, !dbg !42
  %919 = load float, float* %804, align 4, !dbg !42
  %920 = load float, float* %806, align 4, !dbg !42
  %921 = mul nsw i32 %901, %size269, !dbg !42
  %i1282 = add nsw i32 %i1280, %921, !dbg !42
  %922 = sext i32 %i1282 to i64, !dbg !42
  %923 = getelementptr inbounds float, float* %878, i64 %922, !dbg !42
  %924 = load float, float* %923, align 4, !dbg !42
  %925 = mul nsw i32 %918, %size269, !dbg !42
  %i1283 = add nsw i32 %i1282, %925, !dbg !42
  %926 = sext i32 %i1283 to i64, !dbg !42
  %927 = getelementptr inbounds float, float* %878, i64 %926, !dbg !42
  %928 = load float, float* %927, align 4, !dbg !42
  %929 = load [0 x float]*, [0 x float]** %785, align 8, !dbg !42
  %930 = load i32, i32* %780, align 4, !dbg !42
  %931 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %932 = getelementptr inbounds [0 x i32], [0 x i32]* %931, i64 0, i64 2, !dbg !42
  %933 = load i32, i32* %932, align 4, !dbg !42
  %934 = load float, float* %790, align 4, !dbg !42
  %935 = load float, float* %792, align 4, !dbg !42
  %936 = getelementptr inbounds [0 x i32], [0 x i32]* %931, i64 0, i64 1, !dbg !42
  %937 = load i32, i32* %936, align 4, !dbg !42
  %938 = load float, float* %797, align 4, !dbg !42
  %939 = load float, float* %799, align 4, !dbg !42
  %940 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %941 = getelementptr inbounds [0 x i32], [0 x i32]* %940, i64 0, i64 0, !dbg !42
  %942 = load i32, i32* %941, align 4, !dbg !42
  %943 = load float, float* %804, align 4, !dbg !42
  %944 = load float, float* %806, align 4, !dbg !42
  %945 = sext i32 %930 to i64, !dbg !42
  %946 = getelementptr inbounds [0 x float], [0 x float]* %929, i64 0, i64 %945, !dbg !42
  %947 = sext i32 %812 to i64, !dbg !42
  %948 = getelementptr inbounds float, float* %946, i64 %947, !dbg !42
  %949 = load float, float* %948, align 4, !dbg !42
  %950 = mul nsw i32 %942, %size269, !dbg !42
  %i1284 = add nsw i32 %812, %950, !dbg !42
  %951 = sext i32 %i1284 to i64, !dbg !42
  %952 = getelementptr inbounds float, float* %946, i64 %951, !dbg !42
  %953 = load float, float* %952, align 4, !dbg !42
  %954 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %955 = getelementptr inbounds [0 x i32], [0 x i32]* %954, i64 0, i64 0, !dbg !42
  %956 = load i32, i32* %955, align 4, !dbg !42
  %957 = load float, float* %804, align 4, !dbg !42
  %958 = load float, float* %806, align 4, !dbg !42
  %959 = mul nsw i32 %937, %size269, !dbg !42
  %i1285 = add nsw i32 %812, %959, !dbg !42
  %960 = sext i32 %i1285 to i64, !dbg !42
  %961 = getelementptr inbounds float, float* %946, i64 %960, !dbg !42
  %962 = load float, float* %961, align 4, !dbg !42
  %963 = mul nsw i32 %956, %size269, !dbg !42
  %i1286 = add nsw i32 %i1285, %963, !dbg !42
  %964 = sext i32 %i1286 to i64, !dbg !42
  %965 = getelementptr inbounds float, float* %946, i64 %964, !dbg !42
  %966 = load float, float* %965, align 4, !dbg !42
  %967 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %968 = getelementptr inbounds [0 x i32], [0 x i32]* %967, i64 0, i64 1, !dbg !42
  %969 = load i32, i32* %968, align 4, !dbg !42
  %970 = load float, float* %797, align 4, !dbg !42
  %971 = load float, float* %799, align 4, !dbg !42
  %972 = getelementptr inbounds [0 x i32], [0 x i32]* %967, i64 0, i64 0, !dbg !42
  %973 = load i32, i32* %972, align 4, !dbg !42
  %974 = load float, float* %804, align 4, !dbg !42
  %975 = load float, float* %806, align 4, !dbg !42
  %976 = mul nsw i32 %933, %size269, !dbg !42
  %i1287 = add nsw i32 %812, %976, !dbg !42
  %977 = sext i32 %i1287 to i64, !dbg !42
  %978 = getelementptr inbounds float, float* %946, i64 %977, !dbg !42
  %979 = load float, float* %978, align 4, !dbg !42
  %980 = mul nsw i32 %973, %size269, !dbg !42
  %i1288 = add nsw i32 %i1287, %980, !dbg !42
  %981 = sext i32 %i1288 to i64, !dbg !42
  %982 = getelementptr inbounds float, float* %946, i64 %981, !dbg !42
  %983 = load float, float* %982, align 4, !dbg !42
  %984 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %985 = getelementptr inbounds [0 x i32], [0 x i32]* %984, i64 0, i64 0, !dbg !42
  %986 = load i32, i32* %985, align 4, !dbg !42
  %987 = load float, float* %804, align 4, !dbg !42
  %988 = load float, float* %806, align 4, !dbg !42
  %989 = mul nsw i32 %969, %size269, !dbg !42
  %i1289 = add nsw i32 %i1287, %989, !dbg !42
  %990 = sext i32 %i1289 to i64, !dbg !42
  %991 = getelementptr inbounds float, float* %946, i64 %990, !dbg !42
  %992 = load float, float* %991, align 4, !dbg !42
  %993 = mul nsw i32 %986, %size269, !dbg !42
  %i1290 = add nsw i32 %i1289, %993, !dbg !42
  %994 = sext i32 %i1290 to i64, !dbg !42
  %995 = getelementptr inbounds float, float* %946, i64 %994, !dbg !42
  %996 = load float, float* %995, align 4, !dbg !42
  %997 = load [0 x float]*, [0 x float]** %785, align 8, !dbg !42
  %998 = load i32, i32* %780, align 4, !dbg !42
  %999 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %1000 = getelementptr inbounds [0 x i32], [0 x i32]* %999, i64 0, i64 2, !dbg !42
  %1001 = load i32, i32* %1000, align 4, !dbg !42
  %1002 = load float, float* %790, align 4, !dbg !42
  %1003 = load float, float* %792, align 4, !dbg !42
  %1004 = getelementptr inbounds [0 x i32], [0 x i32]* %999, i64 0, i64 1, !dbg !42
  %1005 = load i32, i32* %1004, align 4, !dbg !42
  %1006 = load float, float* %797, align 4, !dbg !42
  %1007 = load float, float* %799, align 4, !dbg !42
  %1008 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %1009 = getelementptr inbounds [0 x i32], [0 x i32]* %1008, i64 0, i64 0, !dbg !42
  %1010 = load i32, i32* %1009, align 4, !dbg !42
  %1011 = load float, float* %804, align 4, !dbg !42
  %1012 = load float, float* %806, align 4, !dbg !42
  %1013 = add nsw i32 %998, 1, !dbg !42
  %1014 = sext i32 %1013 to i64, !dbg !42
  %1015 = getelementptr inbounds [0 x float], [0 x float]* %997, i64 0, i64 %1014, !dbg !42
  %1016 = sext i32 %812 to i64, !dbg !42
  %1017 = getelementptr inbounds float, float* %1015, i64 %1016, !dbg !42
  %1018 = load float, float* %1017, align 4, !dbg !42
  %1019 = mul nsw i32 %1010, %size269, !dbg !42
  %i1291 = add nsw i32 %812, %1019, !dbg !42
  %1020 = sext i32 %i1291 to i64, !dbg !42
  %1021 = getelementptr inbounds float, float* %1015, i64 %1020, !dbg !42
  %1022 = load float, float* %1021, align 4, !dbg !42
  %1023 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %1024 = getelementptr inbounds [0 x i32], [0 x i32]* %1023, i64 0, i64 0, !dbg !42
  %1025 = load i32, i32* %1024, align 4, !dbg !42
  %1026 = load float, float* %804, align 4, !dbg !42
  %1027 = load float, float* %806, align 4, !dbg !42
  %1028 = mul nsw i32 %1005, %size269, !dbg !42
  %i1292 = add nsw i32 %812, %1028, !dbg !42
  %1029 = sext i32 %i1292 to i64, !dbg !42
  %1030 = getelementptr inbounds float, float* %1015, i64 %1029, !dbg !42
  %1031 = load float, float* %1030, align 4, !dbg !42
  %1032 = mul nsw i32 %1025, %size269, !dbg !42
  %i1293 = add nsw i32 %i1292, %1032, !dbg !42
  %1033 = sext i32 %i1293 to i64, !dbg !42
  %1034 = getelementptr inbounds float, float* %1015, i64 %1033, !dbg !42
  %1035 = load float, float* %1034, align 4, !dbg !42
  %1036 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %1037 = getelementptr inbounds [0 x i32], [0 x i32]* %1036, i64 0, i64 1, !dbg !42
  %1038 = load i32, i32* %1037, align 4, !dbg !42
  %1039 = load float, float* %797, align 4, !dbg !42
  %1040 = load float, float* %799, align 4, !dbg !42
  %1041 = getelementptr inbounds [0 x i32], [0 x i32]* %1036, i64 0, i64 0, !dbg !42
  %1042 = load i32, i32* %1041, align 4, !dbg !42
  %1043 = load float, float* %804, align 4, !dbg !42
  %1044 = load float, float* %806, align 4, !dbg !42
  %1045 = mul nsw i32 %1001, %size269, !dbg !42
  %i1294 = add nsw i32 %812, %1045, !dbg !42
  %1046 = sext i32 %i1294 to i64, !dbg !42
  %1047 = getelementptr inbounds float, float* %1015, i64 %1046, !dbg !42
  %1048 = load float, float* %1047, align 4, !dbg !42
  %1049 = mul nsw i32 %1042, %size269, !dbg !42
  %i1295 = add nsw i32 %i1294, %1049, !dbg !42
  %1050 = sext i32 %i1295 to i64, !dbg !42
  %1051 = getelementptr inbounds float, float* %1015, i64 %1050, !dbg !42
  %1052 = load float, float* %1051, align 4, !dbg !42
  %1053 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %1054 = getelementptr inbounds [0 x i32], [0 x i32]* %1053, i64 0, i64 0, !dbg !42
  %1055 = load i32, i32* %1054, align 4, !dbg !42
  %1056 = load float, float* %804, align 4, !dbg !42
  %1057 = load float, float* %806, align 4, !dbg !42
  %1058 = mul nsw i32 %1038, %size269, !dbg !42
  %i1296 = add nsw i32 %i1294, %1058, !dbg !42
  %1059 = sext i32 %i1296 to i64, !dbg !42
  %1060 = getelementptr inbounds float, float* %1015, i64 %1059, !dbg !42
  %1061 = load float, float* %1060, align 4, !dbg !42
  %1062 = mul nsw i32 %1055, %size269, !dbg !42
  %i1297 = add nsw i32 %i1296, %1062, !dbg !42
  %1063 = sext i32 %i1297 to i64, !dbg !42
  %1064 = getelementptr inbounds float, float* %1015, i64 %1063, !dbg !42
  %1065 = load float, float* %1064, align 4, !dbg !42
  %1066 = getelementptr inbounds %3, %3* %767, i64 0, i32 0, !dbg !42
  %1067 = load float, float* %1066, align 4, !dbg !42
  %1068 = getelementptr inbounds %0, %0* %sampler_4100391, i64 0, i32 4, i32 2, i32 1, !dbg !42
  %1069 = load float, float* %1068, align 4, !dbg !42
  %1070 = getelementptr inbounds %4, %4* %fr_4102445, i64 0, i32 0, !dbg !42
  %1071 = fsub float %774, %779, !dbg !42
  %1072 = fsub float 1.000000e+00, %1071, !dbg !42
  %1073 = fsub float %768, %773, !dbg !42
  %1074 = fsub float 1.000000e+00, %1073, !dbg !42
  %1075 = fmul float %815, %805, !dbg !42
  %1076 = fmul float %819, %807, !dbg !42
  %1077 = fadd float %1075, %1076, !dbg !42
  %1078 = fmul float %1077, %798, !dbg !42
  %1079 = fmul float %828, %823, !dbg !42
  %1080 = fmul float %832, %824, !dbg !42
  %1081 = fadd float %1079, %1080, !dbg !42
  %1082 = fmul float %1081, %800, !dbg !42
  %1083 = fadd float %1078, %1082, !dbg !42
  %1084 = fmul float %1083, %791, !dbg !42
  %1085 = fmul float %845, %840, !dbg !42
  %1086 = fmul float %849, %841, !dbg !42
  %1087 = fadd float %1085, %1086, !dbg !42
  %1088 = fmul float %1087, %836, !dbg !42
  %1089 = fmul float %858, %853, !dbg !42
  %1090 = fmul float %862, %854, !dbg !42
  %1091 = fadd float %1089, %1090, !dbg !42
  %1092 = fmul float %1091, %837, !dbg !42
  %1093 = fadd float %1088, %1092, !dbg !42
  %1094 = fmul float %1093, %793, !dbg !42
  %1095 = fadd float %1084, %1094, !dbg !42
  %1096 = fmul float %1074, %1095, !dbg !42
  %1097 = fmul float %881, %876, !dbg !42
  %1098 = fmul float %885, %877, !dbg !42
  %1099 = fadd float %1097, %1098, !dbg !42
  %1100 = fmul float %1099, %871, !dbg !42
  %1101 = fmul float %894, %889, !dbg !42
  %1102 = fmul float %898, %890, !dbg !42
  %1103 = fadd float %1101, %1102, !dbg !42
  %1104 = fmul float %1103, %872, !dbg !42
  %1105 = fadd float %1100, %1104, !dbg !42
  %1106 = fmul float %1105, %867, !dbg !42
  %1107 = fmul float %911, %906, !dbg !42
  %1108 = fmul float %915, %907, !dbg !42
  %1109 = fadd float %1107, %1108, !dbg !42
  %1110 = fmul float %1109, %902, !dbg !42
  %1111 = fmul float %924, %919, !dbg !42
  %1112 = fmul float %928, %920, !dbg !42
  %1113 = fadd float %1111, %1112, !dbg !42
  %1114 = fmul float %1113, %903, !dbg !42
  %1115 = fadd float %1110, %1114, !dbg !42
  %1116 = fmul float %1115, %868, !dbg !42
  %1117 = fadd float %1106, %1116, !dbg !42
  %1118 = fmul float %1073, %1117, !dbg !42
  %1119 = fadd float %1096, %1118, !dbg !42
  %1120 = fmul float %1072, %1119, !dbg !42
  %1121 = fmul float %949, %943, !dbg !42
  %1122 = fmul float %953, %944, !dbg !42
  %1123 = fadd float %1121, %1122, !dbg !42
  %1124 = fmul float %1123, %938, !dbg !42
  %1125 = fmul float %962, %957, !dbg !42
  %1126 = fmul float %966, %958, !dbg !42
  %1127 = fadd float %1125, %1126, !dbg !42
  %1128 = fmul float %1127, %939, !dbg !42
  %1129 = fadd float %1124, %1128, !dbg !42
  %1130 = fmul float %1129, %934, !dbg !42
  %1131 = fmul float %979, %974, !dbg !42
  %1132 = fmul float %983, %975, !dbg !42
  %1133 = fadd float %1131, %1132, !dbg !42
  %1134 = fmul float %1133, %970, !dbg !42
  %1135 = fmul float %992, %987, !dbg !42
  %1136 = fmul float %996, %988, !dbg !42
  %1137 = fadd float %1135, %1136, !dbg !42
  %1138 = fmul float %1137, %971, !dbg !42
  %1139 = fadd float %1134, %1138, !dbg !42
  %1140 = fmul float %1139, %935, !dbg !42
  %1141 = fadd float %1130, %1140, !dbg !42
  %1142 = fmul float %1074, %1141, !dbg !42
  %1143 = fmul float %1018, %1011, !dbg !42
  %1144 = fmul float %1022, %1012, !dbg !42
  %1145 = fadd float %1143, %1144, !dbg !42
  %1146 = fmul float %1145, %1006, !dbg !42
  %1147 = fmul float %1031, %1026, !dbg !42
  %1148 = fmul float %1035, %1027, !dbg !42
  %1149 = fadd float %1147, %1148, !dbg !42
  %1150 = fmul float %1149, %1007, !dbg !42
  %1151 = fadd float %1146, %1150, !dbg !42
  %1152 = fmul float %1151, %1002, !dbg !42
  %1153 = fmul float %1048, %1043, !dbg !42
  %1154 = fmul float %1052, %1044, !dbg !42
  %1155 = fadd float %1153, %1154, !dbg !42
  %1156 = fmul float %1155, %1039, !dbg !42
  %1157 = fmul float %1061, %1056, !dbg !42
  %1158 = fmul float %1065, %1057, !dbg !42
  %1159 = fadd float %1157, %1158, !dbg !42
  %1160 = fmul float %1159, %1040, !dbg !42
  %1161 = fadd float %1156, %1160, !dbg !42
  %1162 = fmul float %1161, %1003, !dbg !42
  %1163 = fadd float %1152, %1162, !dbg !42
  %1164 = fmul float %1073, %1163, !dbg !42
  %1165 = fadd float %1142, %1164, !dbg !42
  %1166 = fmul float %1071, %1165, !dbg !42
  %1167 = fadd float %1120, %1166, !dbg !42
  %hprod = fmul float %1067, %1069, !dbg !42
  %1168 = fmul float %1167, %hprod, !dbg !42
  store float %1168, float* %1070, align 8, !dbg !42
  %.elt449 = getelementptr inbounds %3, %3* %sample_4102447, i64 0, i32 0, !dbg !42
  %.unpack450 = load float, float* %.elt449, align 8, !dbg !42
  %.elt451 = getelementptr inbounds %3, %3* %sample_4102447, i64 0, i32 1, !dbg !42
  %.unpack452 = load float, float* %.elt451, align 4, !dbg !42
  %param_weight_4102498.repack = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4102498, i64 0, i64 0, !dbg !42
  store float 0.000000e+00, float* %param_weight_4102498.repack, align 4, !dbg !42
  %param_weight_4102498.repack453 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4102498, i64 0, i64 1, !dbg !42
  store float 0.000000e+00, float* %param_weight_4102498.repack453, align 4, !dbg !42
  %param_weight_4102498.repack454 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4102498, i64 0, i64 2, !dbg !42
  store float 0.000000e+00, float* %param_weight_4102498.repack454, align 4, !dbg !42
  %param_weight_4102498.repack455 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4102498, i64 0, i64 3, !dbg !42
  store float 0.000000e+00, float* %param_weight_4102498.repack455, align 4, !dbg !42
  %param_weight_4102498.repack456 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4102498, i64 0, i64 4, !dbg !42
  store float 0.000000e+00, float* %param_weight_4102498.repack456, align 4, !dbg !42
  %param_weight_4102498.repack457 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4102498, i64 0, i64 5, !dbg !42
  store float 0.000000e+00, float* %param_weight_4102498.repack457, align 4, !dbg !42
  store i32 0, i32* %slice_offset_4102606, align 4, !dbg !42
  store i32 0, i32* %dim_4102476, align 4, !dbg !42
  br label %expr_true136, !dbg !39

expr_false99:                                     ; preds = %continue153
  %.elt458 = getelementptr inbounds %3, %3* %767, i64 0, i32 0, !dbg !40
  %.unpack459 = load float, float* %.elt458, align 4, !dbg !40
  %.elt462 = getelementptr inbounds %1, %1* %762, i64 0, i32 0, i32 0, !dbg !40
  %.unpack463 = load i32, i32* %.elt462, align 4, !dbg !40
  %1169 = fmul float %.unpack450, %.unpack459, !dbg !40
  %1170 = sitofp i32 %.unpack463 to float, !dbg !40
  %1171 = fadd float %1170, -2.000000e+00, !dbg !40
  %1172 = fcmp olt float %1169, %1171, !dbg !40
  %1173 = select i1 %1172, float %1169, float %1171, !dbg !40
  %1174 = call float @llvm.floor.f32(float %1173), !dbg !40
  %.elt464 = getelementptr inbounds %0, %0* %sampler_4100391, i64 0, i32 4, i32 0, i32 1, !dbg !40
  %.unpack465 = load i32, i32* %.elt464, align 4, !dbg !40
  %.elt460 = getelementptr inbounds %0, %0* %sampler_4100391, i64 0, i32 4, i32 2, i32 1, !dbg !40
  %.unpack461 = load float, float* %.elt460, align 4, !dbg !40
  %1175 = fmul float %.unpack452, %.unpack461, !dbg !41
  %1176 = sitofp i32 %.unpack465 to float, !dbg !41
  %1177 = fadd float %1176, -2.000000e+00, !dbg !41
  %1178 = fcmp olt float %1175, %1177, !dbg !41
  %1179 = select i1 %1178, float %1175, float %1177, !dbg !41
  %1180 = call float @llvm.floor.f32(float %1179), !dbg !41
  %1181 = load i32, i32* %780, align 4, !dbg !42
  %1182 = load i32, i32* %782, align 4, !dbg !42
  %1183 = load i32, i32* %slice_offset_4102606, align 4, !dbg !42
  %1184 = load [0 x float]*, [0 x float]** %785, align 8, !dbg !42
  %1185 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %1186 = getelementptr inbounds [0 x i32], [0 x i32]* %1185, i64 0, i64 2, !dbg !42
  %1187 = load i32, i32* %1186, align 4, !dbg !42
  %1188 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4102498, i64 0, i64 4, !dbg !42
  %1189 = load float, float* %1188, align 4, !dbg !42
  %1190 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4102498, i64 0, i64 5, !dbg !42
  %1191 = load float, float* %1190, align 4, !dbg !42
  %1192 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %1193 = getelementptr inbounds [0 x i32], [0 x i32]* %1192, i64 0, i64 1, !dbg !42
  %1194 = load i32, i32* %1193, align 4, !dbg !42
  %1195 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4102498, i64 0, i64 2, !dbg !42
  %1196 = load float, float* %1195, align 4, !dbg !42
  %1197 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4102498, i64 0, i64 3, !dbg !42
  %1198 = load float, float* %1197, align 4, !dbg !42
  %1199 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %1200 = getelementptr inbounds [0 x i32], [0 x i32]* %1199, i64 0, i64 0, !dbg !42
  %1201 = load i32, i32* %1200, align 4, !dbg !42
  %1202 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4102498, i64 0, i64 0, !dbg !42
  %1203 = load float, float* %1202, align 4, !dbg !42
  %1204 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4102498, i64 0, i64 1, !dbg !42
  %1205 = load float, float* %1204, align 4, !dbg !42
  %1206 = fptosi float %1174 to i32, !dbg !42
  %1207 = fptosi float %1180 to i32, !dbg !42
  %1208 = mul nsw i32 %1181, %1207, !dbg !42
  %index298 = add nsw i32 %1208, %1206, !dbg !42
  %size299 = mul nsw i32 %1181, %1182, !dbg !42
  %1209 = mul nsw i32 %1183, %size299, !dbg !42
  %1210 = add nsw i32 %index298, %1209, !dbg !42
  %1211 = sext i32 %1210 to i64, !dbg !42
  %1212 = getelementptr inbounds [0 x float], [0 x float]* %1184, i64 0, i64 %1211, !dbg !42
  %1213 = load float, float* %1212, align 4, !dbg !42
  %1214 = mul nsw i32 %1201, %size299, !dbg !42
  %i1300 = add nsw i32 %1210, %1214, !dbg !42
  %1215 = sext i32 %i1300 to i64, !dbg !42
  %1216 = getelementptr inbounds [0 x float], [0 x float]* %1184, i64 0, i64 %1215, !dbg !42
  %1217 = load float, float* %1216, align 4, !dbg !42
  %1218 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %1219 = getelementptr inbounds [0 x i32], [0 x i32]* %1218, i64 0, i64 0, !dbg !42
  %1220 = load i32, i32* %1219, align 4, !dbg !42
  %1221 = load float, float* %1202, align 4, !dbg !42
  %1222 = load float, float* %1204, align 4, !dbg !42
  %1223 = mul nsw i32 %1194, %size299, !dbg !42
  %i1301 = add nsw i32 %1210, %1223, !dbg !42
  %1224 = sext i32 %i1301 to i64, !dbg !42
  %1225 = getelementptr inbounds [0 x float], [0 x float]* %1184, i64 0, i64 %1224, !dbg !42
  %1226 = load float, float* %1225, align 4, !dbg !42
  %1227 = mul nsw i32 %1220, %size299, !dbg !42
  %i1302 = add nsw i32 %i1301, %1227, !dbg !42
  %1228 = sext i32 %i1302 to i64, !dbg !42
  %1229 = getelementptr inbounds [0 x float], [0 x float]* %1184, i64 0, i64 %1228, !dbg !42
  %1230 = load float, float* %1229, align 4, !dbg !42
  %1231 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %1232 = getelementptr inbounds [0 x i32], [0 x i32]* %1231, i64 0, i64 1, !dbg !42
  %1233 = load i32, i32* %1232, align 4, !dbg !42
  %1234 = load float, float* %1195, align 4, !dbg !42
  %1235 = load float, float* %1197, align 4, !dbg !42
  %1236 = getelementptr inbounds [0 x i32], [0 x i32]* %1231, i64 0, i64 0, !dbg !42
  %1237 = load i32, i32* %1236, align 4, !dbg !42
  %1238 = load float, float* %1202, align 4, !dbg !42
  %1239 = load float, float* %1204, align 4, !dbg !42
  %1240 = mul nsw i32 %1187, %size299, !dbg !42
  %i1303 = add nsw i32 %1210, %1240, !dbg !42
  %1241 = sext i32 %i1303 to i64, !dbg !42
  %1242 = getelementptr inbounds [0 x float], [0 x float]* %1184, i64 0, i64 %1241, !dbg !42
  %1243 = load float, float* %1242, align 4, !dbg !42
  %1244 = mul nsw i32 %1237, %size299, !dbg !42
  %i1304 = add nsw i32 %i1303, %1244, !dbg !42
  %1245 = sext i32 %i1304 to i64, !dbg !42
  %1246 = getelementptr inbounds [0 x float], [0 x float]* %1184, i64 0, i64 %1245, !dbg !42
  %1247 = load float, float* %1246, align 4, !dbg !42
  %1248 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %1249 = getelementptr inbounds [0 x i32], [0 x i32]* %1248, i64 0, i64 0, !dbg !42
  %1250 = load i32, i32* %1249, align 4, !dbg !42
  %1251 = load float, float* %1202, align 4, !dbg !42
  %1252 = load float, float* %1204, align 4, !dbg !42
  %1253 = mul nsw i32 %1233, %size299, !dbg !42
  %i1305 = add nsw i32 %i1303, %1253, !dbg !42
  %1254 = sext i32 %i1305 to i64, !dbg !42
  %1255 = getelementptr inbounds [0 x float], [0 x float]* %1184, i64 0, i64 %1254, !dbg !42
  %1256 = load float, float* %1255, align 4, !dbg !42
  %1257 = mul nsw i32 %1250, %size299, !dbg !42
  %i1306 = add nsw i32 %i1305, %1257, !dbg !42
  %1258 = sext i32 %i1306 to i64, !dbg !42
  %1259 = getelementptr inbounds [0 x float], [0 x float]* %1184, i64 0, i64 %1258, !dbg !42
  %1260 = load float, float* %1259, align 4, !dbg !42
  %1261 = load [0 x float]*, [0 x float]** %785, align 8, !dbg !42
  %1262 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %1263 = getelementptr inbounds [0 x i32], [0 x i32]* %1262, i64 0, i64 2, !dbg !42
  %1264 = load i32, i32* %1263, align 4, !dbg !42
  %1265 = load float, float* %1188, align 4, !dbg !42
  %1266 = load float, float* %1190, align 4, !dbg !42
  %1267 = getelementptr inbounds [0 x i32], [0 x i32]* %1262, i64 0, i64 1, !dbg !42
  %1268 = load i32, i32* %1267, align 4, !dbg !42
  %1269 = load float, float* %1195, align 4, !dbg !42
  %1270 = load float, float* %1197, align 4, !dbg !42
  %1271 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %1272 = getelementptr inbounds [0 x i32], [0 x i32]* %1271, i64 0, i64 0, !dbg !42
  %1273 = load i32, i32* %1272, align 4, !dbg !42
  %1274 = load float, float* %1202, align 4, !dbg !42
  %1275 = load float, float* %1204, align 4, !dbg !42
  %1276 = getelementptr inbounds [0 x float], [0 x float]* %1261, i64 0, i64 1, !dbg !42
  %1277 = sext i32 %1210 to i64, !dbg !42
  %1278 = getelementptr inbounds float, float* %1276, i64 %1277, !dbg !42
  %1279 = load float, float* %1278, align 4, !dbg !42
  %1280 = mul nsw i32 %1273, %size299, !dbg !42
  %i1307 = add nsw i32 %1210, %1280, !dbg !42
  %1281 = sext i32 %i1307 to i64, !dbg !42
  %1282 = getelementptr inbounds float, float* %1276, i64 %1281, !dbg !42
  %1283 = load float, float* %1282, align 4, !dbg !42
  %1284 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %1285 = getelementptr inbounds [0 x i32], [0 x i32]* %1284, i64 0, i64 0, !dbg !42
  %1286 = load i32, i32* %1285, align 4, !dbg !42
  %1287 = load float, float* %1202, align 4, !dbg !42
  %1288 = load float, float* %1204, align 4, !dbg !42
  %1289 = mul nsw i32 %1268, %size299, !dbg !42
  %i1308 = add nsw i32 %1210, %1289, !dbg !42
  %1290 = sext i32 %i1308 to i64, !dbg !42
  %1291 = getelementptr inbounds float, float* %1276, i64 %1290, !dbg !42
  %1292 = load float, float* %1291, align 4, !dbg !42
  %1293 = mul nsw i32 %1286, %size299, !dbg !42
  %i1309 = add nsw i32 %i1308, %1293, !dbg !42
  %1294 = sext i32 %i1309 to i64, !dbg !42
  %1295 = getelementptr inbounds float, float* %1276, i64 %1294, !dbg !42
  %1296 = load float, float* %1295, align 4, !dbg !42
  %1297 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %1298 = getelementptr inbounds [0 x i32], [0 x i32]* %1297, i64 0, i64 1, !dbg !42
  %1299 = load i32, i32* %1298, align 4, !dbg !42
  %1300 = load float, float* %1195, align 4, !dbg !42
  %1301 = load float, float* %1197, align 4, !dbg !42
  %1302 = getelementptr inbounds [0 x i32], [0 x i32]* %1297, i64 0, i64 0, !dbg !42
  %1303 = load i32, i32* %1302, align 4, !dbg !42
  %1304 = load float, float* %1202, align 4, !dbg !42
  %1305 = load float, float* %1204, align 4, !dbg !42
  %1306 = mul nsw i32 %1264, %size299, !dbg !42
  %i1310 = add nsw i32 %1210, %1306, !dbg !42
  %1307 = sext i32 %i1310 to i64, !dbg !42
  %1308 = getelementptr inbounds float, float* %1276, i64 %1307, !dbg !42
  %1309 = load float, float* %1308, align 4, !dbg !42
  %1310 = mul nsw i32 %1303, %size299, !dbg !42
  %i1311 = add nsw i32 %i1310, %1310, !dbg !42
  %1311 = sext i32 %i1311 to i64, !dbg !42
  %1312 = getelementptr inbounds float, float* %1276, i64 %1311, !dbg !42
  %1313 = load float, float* %1312, align 4, !dbg !42
  %1314 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %1315 = getelementptr inbounds [0 x i32], [0 x i32]* %1314, i64 0, i64 0, !dbg !42
  %1316 = load i32, i32* %1315, align 4, !dbg !42
  %1317 = load float, float* %1202, align 4, !dbg !42
  %1318 = load float, float* %1204, align 4, !dbg !42
  %1319 = mul nsw i32 %1299, %size299, !dbg !42
  %i1312 = add nsw i32 %i1310, %1319, !dbg !42
  %1320 = sext i32 %i1312 to i64, !dbg !42
  %1321 = getelementptr inbounds float, float* %1276, i64 %1320, !dbg !42
  %1322 = load float, float* %1321, align 4, !dbg !42
  %1323 = mul nsw i32 %1316, %size299, !dbg !42
  %i1313 = add nsw i32 %i1312, %1323, !dbg !42
  %1324 = sext i32 %i1313 to i64, !dbg !42
  %1325 = getelementptr inbounds float, float* %1276, i64 %1324, !dbg !42
  %1326 = load float, float* %1325, align 4, !dbg !42
  %1327 = load [0 x float]*, [0 x float]** %785, align 8, !dbg !42
  %1328 = load i32, i32* %780, align 4, !dbg !42
  %1329 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %1330 = getelementptr inbounds [0 x i32], [0 x i32]* %1329, i64 0, i64 2, !dbg !42
  %1331 = load i32, i32* %1330, align 4, !dbg !42
  %1332 = load float, float* %1188, align 4, !dbg !42
  %1333 = load float, float* %1190, align 4, !dbg !42
  %1334 = getelementptr inbounds [0 x i32], [0 x i32]* %1329, i64 0, i64 1, !dbg !42
  %1335 = load i32, i32* %1334, align 4, !dbg !42
  %1336 = load float, float* %1195, align 4, !dbg !42
  %1337 = load float, float* %1197, align 4, !dbg !42
  %1338 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %1339 = getelementptr inbounds [0 x i32], [0 x i32]* %1338, i64 0, i64 0, !dbg !42
  %1340 = load i32, i32* %1339, align 4, !dbg !42
  %1341 = load float, float* %1202, align 4, !dbg !42
  %1342 = load float, float* %1204, align 4, !dbg !42
  %1343 = sext i32 %1328 to i64, !dbg !42
  %1344 = getelementptr inbounds [0 x float], [0 x float]* %1327, i64 0, i64 %1343, !dbg !42
  %1345 = sext i32 %1210 to i64, !dbg !42
  %1346 = getelementptr inbounds float, float* %1344, i64 %1345, !dbg !42
  %1347 = load float, float* %1346, align 4, !dbg !42
  %1348 = mul nsw i32 %1340, %size299, !dbg !42
  %i1314 = add nsw i32 %1210, %1348, !dbg !42
  %1349 = sext i32 %i1314 to i64, !dbg !42
  %1350 = getelementptr inbounds float, float* %1344, i64 %1349, !dbg !42
  %1351 = load float, float* %1350, align 4, !dbg !42
  %1352 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %1353 = getelementptr inbounds [0 x i32], [0 x i32]* %1352, i64 0, i64 0, !dbg !42
  %1354 = load i32, i32* %1353, align 4, !dbg !42
  %1355 = load float, float* %1202, align 4, !dbg !42
  %1356 = load float, float* %1204, align 4, !dbg !42
  %1357 = mul nsw i32 %1335, %size299, !dbg !42
  %i1315 = add nsw i32 %1210, %1357, !dbg !42
  %1358 = sext i32 %i1315 to i64, !dbg !42
  %1359 = getelementptr inbounds float, float* %1344, i64 %1358, !dbg !42
  %1360 = load float, float* %1359, align 4, !dbg !42
  %1361 = mul nsw i32 %1354, %size299, !dbg !42
  %i1316 = add nsw i32 %i1315, %1361, !dbg !42
  %1362 = sext i32 %i1316 to i64, !dbg !42
  %1363 = getelementptr inbounds float, float* %1344, i64 %1362, !dbg !42
  %1364 = load float, float* %1363, align 4, !dbg !42
  %1365 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %1366 = getelementptr inbounds [0 x i32], [0 x i32]* %1365, i64 0, i64 1, !dbg !42
  %1367 = load i32, i32* %1366, align 4, !dbg !42
  %1368 = load float, float* %1195, align 4, !dbg !42
  %1369 = load float, float* %1197, align 4, !dbg !42
  %1370 = getelementptr inbounds [0 x i32], [0 x i32]* %1365, i64 0, i64 0, !dbg !42
  %1371 = load i32, i32* %1370, align 4, !dbg !42
  %1372 = load float, float* %1202, align 4, !dbg !42
  %1373 = load float, float* %1204, align 4, !dbg !42
  %1374 = mul nsw i32 %1331, %size299, !dbg !42
  %i1317 = add nsw i32 %1210, %1374, !dbg !42
  %1375 = sext i32 %i1317 to i64, !dbg !42
  %1376 = getelementptr inbounds float, float* %1344, i64 %1375, !dbg !42
  %1377 = load float, float* %1376, align 4, !dbg !42
  %1378 = mul nsw i32 %1371, %size299, !dbg !42
  %i1318 = add nsw i32 %i1317, %1378, !dbg !42
  %1379 = sext i32 %i1318 to i64, !dbg !42
  %1380 = getelementptr inbounds float, float* %1344, i64 %1379, !dbg !42
  %1381 = load float, float* %1380, align 4, !dbg !42
  %1382 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %1383 = getelementptr inbounds [0 x i32], [0 x i32]* %1382, i64 0, i64 0, !dbg !42
  %1384 = load i32, i32* %1383, align 4, !dbg !42
  %1385 = load float, float* %1202, align 4, !dbg !42
  %1386 = load float, float* %1204, align 4, !dbg !42
  %1387 = mul nsw i32 %1367, %size299, !dbg !42
  %i1319 = add nsw i32 %i1317, %1387, !dbg !42
  %1388 = sext i32 %i1319 to i64, !dbg !42
  %1389 = getelementptr inbounds float, float* %1344, i64 %1388, !dbg !42
  %1390 = load float, float* %1389, align 4, !dbg !42
  %1391 = mul nsw i32 %1384, %size299, !dbg !42
  %i1320 = add nsw i32 %i1319, %1391, !dbg !42
  %1392 = sext i32 %i1320 to i64, !dbg !42
  %1393 = getelementptr inbounds float, float* %1344, i64 %1392, !dbg !42
  %1394 = load float, float* %1393, align 4, !dbg !42
  %1395 = load [0 x float]*, [0 x float]** %785, align 8, !dbg !42
  %1396 = load i32, i32* %780, align 4, !dbg !42
  %1397 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %1398 = getelementptr inbounds [0 x i32], [0 x i32]* %1397, i64 0, i64 2, !dbg !42
  %1399 = load i32, i32* %1398, align 4, !dbg !42
  %1400 = load float, float* %1188, align 4, !dbg !42
  %1401 = load float, float* %1190, align 4, !dbg !42
  %1402 = getelementptr inbounds [0 x i32], [0 x i32]* %1397, i64 0, i64 1, !dbg !42
  %1403 = load i32, i32* %1402, align 4, !dbg !42
  %1404 = load float, float* %1195, align 4, !dbg !42
  %1405 = load float, float* %1197, align 4, !dbg !42
  %1406 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %1407 = getelementptr inbounds [0 x i32], [0 x i32]* %1406, i64 0, i64 0, !dbg !42
  %1408 = load i32, i32* %1407, align 4, !dbg !42
  %1409 = load float, float* %1202, align 4, !dbg !42
  %1410 = load float, float* %1204, align 4, !dbg !42
  %1411 = add nsw i32 %1396, 1, !dbg !42
  %1412 = sext i32 %1411 to i64, !dbg !42
  %1413 = getelementptr inbounds [0 x float], [0 x float]* %1395, i64 0, i64 %1412, !dbg !42
  %1414 = sext i32 %1210 to i64, !dbg !42
  %1415 = getelementptr inbounds float, float* %1413, i64 %1414, !dbg !42
  %1416 = load float, float* %1415, align 4, !dbg !42
  %1417 = mul nsw i32 %1408, %size299, !dbg !42
  %i1321 = add nsw i32 %1210, %1417, !dbg !42
  %1418 = sext i32 %i1321 to i64, !dbg !42
  %1419 = getelementptr inbounds float, float* %1413, i64 %1418, !dbg !42
  %1420 = load float, float* %1419, align 4, !dbg !42
  %1421 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %1422 = getelementptr inbounds [0 x i32], [0 x i32]* %1421, i64 0, i64 0, !dbg !42
  %1423 = load i32, i32* %1422, align 4, !dbg !42
  %1424 = load float, float* %1202, align 4, !dbg !42
  %1425 = load float, float* %1204, align 4, !dbg !42
  %1426 = mul nsw i32 %1403, %size299, !dbg !42
  %i1322 = add nsw i32 %1210, %1426, !dbg !42
  %1427 = sext i32 %i1322 to i64, !dbg !42
  %1428 = getelementptr inbounds float, float* %1413, i64 %1427, !dbg !42
  %1429 = load float, float* %1428, align 4, !dbg !42
  %1430 = mul nsw i32 %1423, %size299, !dbg !42
  %i1323 = add nsw i32 %i1322, %1430, !dbg !42
  %1431 = sext i32 %i1323 to i64, !dbg !42
  %1432 = getelementptr inbounds float, float* %1413, i64 %1431, !dbg !42
  %1433 = load float, float* %1432, align 4, !dbg !42
  %1434 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %1435 = getelementptr inbounds [0 x i32], [0 x i32]* %1434, i64 0, i64 1, !dbg !42
  %1436 = load i32, i32* %1435, align 4, !dbg !42
  %1437 = load float, float* %1195, align 4, !dbg !42
  %1438 = load float, float* %1197, align 4, !dbg !42
  %1439 = getelementptr inbounds [0 x i32], [0 x i32]* %1434, i64 0, i64 0, !dbg !42
  %1440 = load i32, i32* %1439, align 4, !dbg !42
  %1441 = load float, float* %1202, align 4, !dbg !42
  %1442 = load float, float* %1204, align 4, !dbg !42
  %1443 = mul nsw i32 %1399, %size299, !dbg !42
  %i1324 = add nsw i32 %1210, %1443, !dbg !42
  %1444 = sext i32 %i1324 to i64, !dbg !42
  %1445 = getelementptr inbounds float, float* %1413, i64 %1444, !dbg !42
  %1446 = load float, float* %1445, align 4, !dbg !42
  %1447 = mul nsw i32 %1440, %size299, !dbg !42
  %i1325 = add nsw i32 %i1324, %1447, !dbg !42
  %1448 = sext i32 %i1325 to i64, !dbg !42
  %1449 = getelementptr inbounds float, float* %1413, i64 %1448, !dbg !42
  %1450 = load float, float* %1449, align 4, !dbg !42
  %1451 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %1452 = getelementptr inbounds [0 x i32], [0 x i32]* %1451, i64 0, i64 0, !dbg !42
  %1453 = load i32, i32* %1452, align 4, !dbg !42
  %1454 = load float, float* %1202, align 4, !dbg !42
  %1455 = load float, float* %1204, align 4, !dbg !42
  %1456 = mul nsw i32 %1436, %size299, !dbg !42
  %i1326 = add nsw i32 %i1324, %1456, !dbg !42
  %1457 = sext i32 %i1326 to i64, !dbg !42
  %1458 = getelementptr inbounds float, float* %1413, i64 %1457, !dbg !42
  %1459 = load float, float* %1458, align 4, !dbg !42
  %1460 = mul nsw i32 %1453, %size299, !dbg !42
  %i1327 = add nsw i32 %i1326, %1460, !dbg !42
  %1461 = sext i32 %i1327 to i64, !dbg !42
  %1462 = getelementptr inbounds float, float* %1413, i64 %1461, !dbg !42
  %1463 = load float, float* %1462, align 4, !dbg !42
  %1464 = load float, float* %1066, align 4, !dbg !42
  %1465 = load float, float* %1068, align 4, !dbg !42
  %1466 = getelementptr inbounds %4, %4* %fr_4102445, i64 0, i32 1, !dbg !42
  %1467 = fsub float %1175, %1180, !dbg !42
  %1468 = fsub float 1.000000e+00, %1467, !dbg !42
  %1469 = fsub float %1169, %1174, !dbg !42
  %1470 = fsub float 1.000000e+00, %1469, !dbg !42
  %1471 = fmul float %1213, %1203, !dbg !42
  %1472 = fmul float %1217, %1205, !dbg !42
  %1473 = fadd float %1471, %1472, !dbg !42
  %1474 = fmul float %1473, %1196, !dbg !42
  %1475 = fmul float %1226, %1221, !dbg !42
  %1476 = fmul float %1230, %1222, !dbg !42
  %1477 = fadd float %1475, %1476, !dbg !42
  %1478 = fmul float %1477, %1198, !dbg !42
  %1479 = fadd float %1474, %1478, !dbg !42
  %1480 = fmul float %1479, %1189, !dbg !42
  %1481 = fmul float %1243, %1238, !dbg !42
  %1482 = fmul float %1247, %1239, !dbg !42
  %1483 = fadd float %1481, %1482, !dbg !42
  %1484 = fmul float %1483, %1234, !dbg !42
  %1485 = fmul float %1256, %1251, !dbg !42
  %1486 = fmul float %1260, %1252, !dbg !42
  %1487 = fadd float %1485, %1486, !dbg !42
  %1488 = fmul float %1487, %1235, !dbg !42
  %1489 = fadd float %1484, %1488, !dbg !42
  %1490 = fmul float %1489, %1191, !dbg !42
  %1491 = fadd float %1480, %1490, !dbg !42
  %1492 = fmul float %1470, %1491, !dbg !42
  %1493 = fmul float %1279, %1274, !dbg !42
  %1494 = fmul float %1283, %1275, !dbg !42
  %1495 = fadd float %1493, %1494, !dbg !42
  %1496 = fmul float %1495, %1269, !dbg !42
  %1497 = fmul float %1292, %1287, !dbg !42
  %1498 = fmul float %1296, %1288, !dbg !42
  %1499 = fadd float %1497, %1498, !dbg !42
  %1500 = fmul float %1499, %1270, !dbg !42
  %1501 = fadd float %1496, %1500, !dbg !42
  %1502 = fmul float %1501, %1265, !dbg !42
  %1503 = fmul float %1309, %1304, !dbg !42
  %1504 = fmul float %1313, %1305, !dbg !42
  %1505 = fadd float %1503, %1504, !dbg !42
  %1506 = fmul float %1505, %1300, !dbg !42
  %1507 = fmul float %1322, %1317, !dbg !42
  %1508 = fmul float %1326, %1318, !dbg !42
  %1509 = fadd float %1507, %1508, !dbg !42
  %1510 = fmul float %1509, %1301, !dbg !42
  %1511 = fadd float %1506, %1510, !dbg !42
  %1512 = fmul float %1511, %1266, !dbg !42
  %1513 = fadd float %1502, %1512, !dbg !42
  %1514 = fmul float %1469, %1513, !dbg !42
  %1515 = fadd float %1492, %1514, !dbg !42
  %1516 = fmul float %1468, %1515, !dbg !42
  %1517 = fmul float %1347, %1341, !dbg !42
  %1518 = fmul float %1351, %1342, !dbg !42
  %1519 = fadd float %1517, %1518, !dbg !42
  %1520 = fmul float %1519, %1336, !dbg !42
  %1521 = fmul float %1360, %1355, !dbg !42
  %1522 = fmul float %1364, %1356, !dbg !42
  %1523 = fadd float %1521, %1522, !dbg !42
  %1524 = fmul float %1523, %1337, !dbg !42
  %1525 = fadd float %1520, %1524, !dbg !42
  %1526 = fmul float %1525, %1332, !dbg !42
  %1527 = fmul float %1377, %1372, !dbg !42
  %1528 = fmul float %1381, %1373, !dbg !42
  %1529 = fadd float %1527, %1528, !dbg !42
  %1530 = fmul float %1529, %1368, !dbg !42
  %1531 = fmul float %1390, %1385, !dbg !42
  %1532 = fmul float %1394, %1386, !dbg !42
  %1533 = fadd float %1531, %1532, !dbg !42
  %1534 = fmul float %1533, %1369, !dbg !42
  %1535 = fadd float %1530, %1534, !dbg !42
  %1536 = fmul float %1535, %1333, !dbg !42
  %1537 = fadd float %1526, %1536, !dbg !42
  %1538 = fmul float %1470, %1537, !dbg !42
  %1539 = fmul float %1416, %1409, !dbg !42
  %1540 = fmul float %1420, %1410, !dbg !42
  %1541 = fadd float %1539, %1540, !dbg !42
  %1542 = fmul float %1541, %1404, !dbg !42
  %1543 = fmul float %1429, %1424, !dbg !42
  %1544 = fmul float %1433, %1425, !dbg !42
  %1545 = fadd float %1543, %1544, !dbg !42
  %1546 = fmul float %1545, %1405, !dbg !42
  %1547 = fadd float %1542, %1546, !dbg !42
  %1548 = fmul float %1547, %1400, !dbg !42
  %1549 = fmul float %1446, %1441, !dbg !42
  %1550 = fmul float %1450, %1442, !dbg !42
  %1551 = fadd float %1549, %1550, !dbg !42
  %1552 = fmul float %1551, %1437, !dbg !42
  %1553 = fmul float %1459, %1454, !dbg !42
  %1554 = fmul float %1463, %1455, !dbg !42
  %1555 = fadd float %1553, %1554, !dbg !42
  %1556 = fmul float %1555, %1438, !dbg !42
  %1557 = fadd float %1552, %1556, !dbg !42
  %1558 = fmul float %1557, %1401, !dbg !42
  %1559 = fadd float %1548, %1558, !dbg !42
  %1560 = fmul float %1469, %1559, !dbg !42
  %1561 = fadd float %1538, %1560, !dbg !42
  %1562 = fmul float %1467, %1561, !dbg !42
  %1563 = fadd float %1516, %1562, !dbg !42
  %hprod328 = fmul float %1464, %1465, !dbg !42
  %1564 = fmul float %1563, %hprod328, !dbg !42
  store float %1564, float* %1466, align 4, !dbg !42
  %.elt466 = getelementptr inbounds %3, %3* %sample_4102447, i64 0, i32 0, !dbg !42
  %.unpack467 = load float, float* %.elt466, align 8, !dbg !42
  %.elt468 = getelementptr inbounds %3, %3* %sample_4102447, i64 0, i32 1, !dbg !42
  %.unpack469 = load float, float* %.elt468, align 4, !dbg !42
  %param_weight_4103431.repack = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4103431, i64 0, i64 0, !dbg !42
  store float 0.000000e+00, float* %param_weight_4103431.repack, align 4, !dbg !42
  %param_weight_4103431.repack470 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4103431, i64 0, i64 1, !dbg !42
  store float 0.000000e+00, float* %param_weight_4103431.repack470, align 4, !dbg !42
  %param_weight_4103431.repack471 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4103431, i64 0, i64 2, !dbg !42
  store float 0.000000e+00, float* %param_weight_4103431.repack471, align 4, !dbg !42
  %param_weight_4103431.repack472 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4103431, i64 0, i64 3, !dbg !42
  store float 0.000000e+00, float* %param_weight_4103431.repack472, align 4, !dbg !42
  %param_weight_4103431.repack473 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4103431, i64 0, i64 4, !dbg !42
  store float 0.000000e+00, float* %param_weight_4103431.repack473, align 4, !dbg !42
  %param_weight_4103431.repack474 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4103431, i64 0, i64 5, !dbg !42
  store float 0.000000e+00, float* %param_weight_4103431.repack474, align 4, !dbg !42
  store i32 0, i32* %slice_offset_4103539, align 4, !dbg !42
  store i32 0, i32* %dim_4103409, align 4, !dbg !42
  br label %expr_true121, !dbg !39

expr_false105:                                    ; preds = %continue
  %.elt475 = getelementptr inbounds %3, %3* %767, i64 0, i32 0, !dbg !40
  %.unpack476 = load float, float* %.elt475, align 4, !dbg !40
  %.elt479 = getelementptr inbounds %1, %1* %762, i64 0, i32 0, i32 0, !dbg !40
  %.unpack480 = load i32, i32* %.elt479, align 4, !dbg !40
  %1565 = fmul float %.unpack467, %.unpack476, !dbg !40
  %1566 = sitofp i32 %.unpack480 to float, !dbg !40
  %1567 = fadd float %1566, -2.000000e+00, !dbg !40
  %1568 = fcmp olt float %1565, %1567, !dbg !40
  %1569 = select i1 %1568, float %1565, float %1567, !dbg !40
  %1570 = call float @llvm.floor.f32(float %1569), !dbg !40
  %.elt481 = getelementptr inbounds %0, %0* %sampler_4100391, i64 0, i32 4, i32 0, i32 1, !dbg !40
  %.unpack482 = load i32, i32* %.elt481, align 4, !dbg !40
  %.elt477 = getelementptr inbounds %0, %0* %sampler_4100391, i64 0, i32 4, i32 2, i32 1, !dbg !40
  %.unpack478 = load float, float* %.elt477, align 4, !dbg !40
  %1571 = fmul float %.unpack469, %.unpack478, !dbg !41
  %1572 = sitofp i32 %.unpack482 to float, !dbg !41
  %1573 = fadd float %1572, -2.000000e+00, !dbg !41
  %1574 = fcmp olt float %1571, %1573, !dbg !41
  %1575 = select i1 %1574, float %1571, float %1573, !dbg !41
  %1576 = call float @llvm.floor.f32(float %1575), !dbg !41
  %1577 = load i32, i32* %780, align 4, !dbg !42
  %1578 = load i32, i32* %782, align 4, !dbg !42
  %1579 = load i32, i32* %slice_offset_4103539, align 4, !dbg !42
  %1580 = load [0 x float]*, [0 x float]** %785, align 8, !dbg !42
  %1581 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %1582 = getelementptr inbounds [0 x i32], [0 x i32]* %1581, i64 0, i64 2, !dbg !42
  %1583 = load i32, i32* %1582, align 4, !dbg !42
  %1584 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4103431, i64 0, i64 4, !dbg !42
  %1585 = load float, float* %1584, align 4, !dbg !42
  %1586 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4103431, i64 0, i64 5, !dbg !42
  %1587 = load float, float* %1586, align 4, !dbg !42
  %1588 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %1589 = getelementptr inbounds [0 x i32], [0 x i32]* %1588, i64 0, i64 1, !dbg !42
  %1590 = load i32, i32* %1589, align 4, !dbg !42
  %1591 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4103431, i64 0, i64 2, !dbg !42
  %1592 = load float, float* %1591, align 4, !dbg !42
  %1593 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4103431, i64 0, i64 3, !dbg !42
  %1594 = load float, float* %1593, align 4, !dbg !42
  %1595 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %1596 = getelementptr inbounds [0 x i32], [0 x i32]* %1595, i64 0, i64 0, !dbg !42
  %1597 = load i32, i32* %1596, align 4, !dbg !42
  %1598 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4103431, i64 0, i64 0, !dbg !42
  %1599 = load float, float* %1598, align 4, !dbg !42
  %1600 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4103431, i64 0, i64 1, !dbg !42
  %1601 = load float, float* %1600, align 4, !dbg !42
  %1602 = fptosi float %1570 to i32, !dbg !42
  %1603 = fptosi float %1576 to i32, !dbg !42
  %1604 = mul nsw i32 %1577, %1603, !dbg !42
  %index329 = add nsw i32 %1604, %1602, !dbg !42
  %size330 = mul nsw i32 %1577, %1578, !dbg !42
  %1605 = mul nsw i32 %1579, %size330, !dbg !42
  %1606 = add nsw i32 %index329, %1605, !dbg !42
  %1607 = sext i32 %1606 to i64, !dbg !42
  %1608 = getelementptr inbounds [0 x float], [0 x float]* %1580, i64 0, i64 %1607, !dbg !42
  %1609 = load float, float* %1608, align 4, !dbg !42
  %1610 = mul nsw i32 %1597, %size330, !dbg !42
  %i1331 = add nsw i32 %1606, %1610, !dbg !42
  %1611 = sext i32 %i1331 to i64, !dbg !42
  %1612 = getelementptr inbounds [0 x float], [0 x float]* %1580, i64 0, i64 %1611, !dbg !42
  %1613 = load float, float* %1612, align 4, !dbg !42
  %1614 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %1615 = getelementptr inbounds [0 x i32], [0 x i32]* %1614, i64 0, i64 0, !dbg !42
  %1616 = load i32, i32* %1615, align 4, !dbg !42
  %1617 = load float, float* %1598, align 4, !dbg !42
  %1618 = load float, float* %1600, align 4, !dbg !42
  %1619 = mul nsw i32 %1590, %size330, !dbg !42
  %i1332 = add nsw i32 %1606, %1619, !dbg !42
  %1620 = sext i32 %i1332 to i64, !dbg !42
  %1621 = getelementptr inbounds [0 x float], [0 x float]* %1580, i64 0, i64 %1620, !dbg !42
  %1622 = load float, float* %1621, align 4, !dbg !42
  %1623 = mul nsw i32 %1616, %size330, !dbg !42
  %i1333 = add nsw i32 %i1332, %1623, !dbg !42
  %1624 = sext i32 %i1333 to i64, !dbg !42
  %1625 = getelementptr inbounds [0 x float], [0 x float]* %1580, i64 0, i64 %1624, !dbg !42
  %1626 = load float, float* %1625, align 4, !dbg !42
  %1627 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %1628 = getelementptr inbounds [0 x i32], [0 x i32]* %1627, i64 0, i64 1, !dbg !42
  %1629 = load i32, i32* %1628, align 4, !dbg !42
  %1630 = load float, float* %1591, align 4, !dbg !42
  %1631 = load float, float* %1593, align 4, !dbg !42
  %1632 = getelementptr inbounds [0 x i32], [0 x i32]* %1627, i64 0, i64 0, !dbg !42
  %1633 = load i32, i32* %1632, align 4, !dbg !42
  %1634 = load float, float* %1598, align 4, !dbg !42
  %1635 = load float, float* %1600, align 4, !dbg !42
  %1636 = mul nsw i32 %1583, %size330, !dbg !42
  %i1334 = add nsw i32 %1606, %1636, !dbg !42
  %1637 = sext i32 %i1334 to i64, !dbg !42
  %1638 = getelementptr inbounds [0 x float], [0 x float]* %1580, i64 0, i64 %1637, !dbg !42
  %1639 = load float, float* %1638, align 4, !dbg !42
  %1640 = mul nsw i32 %1633, %size330, !dbg !42
  %i1335 = add nsw i32 %i1334, %1640, !dbg !42
  %1641 = sext i32 %i1335 to i64, !dbg !42
  %1642 = getelementptr inbounds [0 x float], [0 x float]* %1580, i64 0, i64 %1641, !dbg !42
  %1643 = load float, float* %1642, align 4, !dbg !42
  %1644 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %1645 = getelementptr inbounds [0 x i32], [0 x i32]* %1644, i64 0, i64 0, !dbg !42
  %1646 = load i32, i32* %1645, align 4, !dbg !42
  %1647 = load float, float* %1598, align 4, !dbg !42
  %1648 = load float, float* %1600, align 4, !dbg !42
  %1649 = mul nsw i32 %1629, %size330, !dbg !42
  %i1336 = add nsw i32 %i1334, %1649, !dbg !42
  %1650 = sext i32 %i1336 to i64, !dbg !42
  %1651 = getelementptr inbounds [0 x float], [0 x float]* %1580, i64 0, i64 %1650, !dbg !42
  %1652 = load float, float* %1651, align 4, !dbg !42
  %1653 = mul nsw i32 %1646, %size330, !dbg !42
  %i1337 = add nsw i32 %i1336, %1653, !dbg !42
  %1654 = sext i32 %i1337 to i64, !dbg !42
  %1655 = getelementptr inbounds [0 x float], [0 x float]* %1580, i64 0, i64 %1654, !dbg !42
  %1656 = load float, float* %1655, align 4, !dbg !42
  %1657 = load [0 x float]*, [0 x float]** %785, align 8, !dbg !42
  %1658 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %1659 = getelementptr inbounds [0 x i32], [0 x i32]* %1658, i64 0, i64 2, !dbg !42
  %1660 = load i32, i32* %1659, align 4, !dbg !42
  %1661 = load float, float* %1584, align 4, !dbg !42
  %1662 = load float, float* %1586, align 4, !dbg !42
  %1663 = getelementptr inbounds [0 x i32], [0 x i32]* %1658, i64 0, i64 1, !dbg !42
  %1664 = load i32, i32* %1663, align 4, !dbg !42
  %1665 = load float, float* %1591, align 4, !dbg !42
  %1666 = load float, float* %1593, align 4, !dbg !42
  %1667 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %1668 = getelementptr inbounds [0 x i32], [0 x i32]* %1667, i64 0, i64 0, !dbg !42
  %1669 = load i32, i32* %1668, align 4, !dbg !42
  %1670 = load float, float* %1598, align 4, !dbg !42
  %1671 = load float, float* %1600, align 4, !dbg !42
  %1672 = getelementptr inbounds [0 x float], [0 x float]* %1657, i64 0, i64 1, !dbg !42
  %1673 = sext i32 %1606 to i64, !dbg !42
  %1674 = getelementptr inbounds float, float* %1672, i64 %1673, !dbg !42
  %1675 = load float, float* %1674, align 4, !dbg !42
  %1676 = mul nsw i32 %1669, %size330, !dbg !42
  %i1338 = add nsw i32 %1606, %1676, !dbg !42
  %1677 = sext i32 %i1338 to i64, !dbg !42
  %1678 = getelementptr inbounds float, float* %1672, i64 %1677, !dbg !42
  %1679 = load float, float* %1678, align 4, !dbg !42
  %1680 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %1681 = getelementptr inbounds [0 x i32], [0 x i32]* %1680, i64 0, i64 0, !dbg !42
  %1682 = load i32, i32* %1681, align 4, !dbg !42
  %1683 = load float, float* %1598, align 4, !dbg !42
  %1684 = load float, float* %1600, align 4, !dbg !42
  %1685 = mul nsw i32 %1664, %size330, !dbg !42
  %i1339 = add nsw i32 %1606, %1685, !dbg !42
  %1686 = sext i32 %i1339 to i64, !dbg !42
  %1687 = getelementptr inbounds float, float* %1672, i64 %1686, !dbg !42
  %1688 = load float, float* %1687, align 4, !dbg !42
  %1689 = mul nsw i32 %1682, %size330, !dbg !42
  %i1340 = add nsw i32 %i1339, %1689, !dbg !42
  %1690 = sext i32 %i1340 to i64, !dbg !42
  %1691 = getelementptr inbounds float, float* %1672, i64 %1690, !dbg !42
  %1692 = load float, float* %1691, align 4, !dbg !42
  %1693 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %1694 = getelementptr inbounds [0 x i32], [0 x i32]* %1693, i64 0, i64 1, !dbg !42
  %1695 = load i32, i32* %1694, align 4, !dbg !42
  %1696 = load float, float* %1591, align 4, !dbg !42
  %1697 = load float, float* %1593, align 4, !dbg !42
  %1698 = getelementptr inbounds [0 x i32], [0 x i32]* %1693, i64 0, i64 0, !dbg !42
  %1699 = load i32, i32* %1698, align 4, !dbg !42
  %1700 = load float, float* %1598, align 4, !dbg !42
  %1701 = load float, float* %1600, align 4, !dbg !42
  %1702 = mul nsw i32 %1660, %size330, !dbg !42
  %i1341 = add nsw i32 %1606, %1702, !dbg !42
  %1703 = sext i32 %i1341 to i64, !dbg !42
  %1704 = getelementptr inbounds float, float* %1672, i64 %1703, !dbg !42
  %1705 = load float, float* %1704, align 4, !dbg !42
  %1706 = mul nsw i32 %1699, %size330, !dbg !42
  %i1342 = add nsw i32 %i1341, %1706, !dbg !42
  %1707 = sext i32 %i1342 to i64, !dbg !42
  %1708 = getelementptr inbounds float, float* %1672, i64 %1707, !dbg !42
  %1709 = load float, float* %1708, align 4, !dbg !42
  %1710 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %1711 = getelementptr inbounds [0 x i32], [0 x i32]* %1710, i64 0, i64 0, !dbg !42
  %1712 = load i32, i32* %1711, align 4, !dbg !42
  %1713 = load float, float* %1598, align 4, !dbg !42
  %1714 = load float, float* %1600, align 4, !dbg !42
  %1715 = mul nsw i32 %1695, %size330, !dbg !42
  %i1343 = add nsw i32 %i1341, %1715, !dbg !42
  %1716 = sext i32 %i1343 to i64, !dbg !42
  %1717 = getelementptr inbounds float, float* %1672, i64 %1716, !dbg !42
  %1718 = load float, float* %1717, align 4, !dbg !42
  %1719 = mul nsw i32 %1712, %size330, !dbg !42
  %i1344 = add nsw i32 %i1343, %1719, !dbg !42
  %1720 = sext i32 %i1344 to i64, !dbg !42
  %1721 = getelementptr inbounds float, float* %1672, i64 %1720, !dbg !42
  %1722 = load float, float* %1721, align 4, !dbg !42
  %1723 = load [0 x float]*, [0 x float]** %785, align 8, !dbg !42
  %1724 = load i32, i32* %780, align 4, !dbg !42
  %1725 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %1726 = getelementptr inbounds [0 x i32], [0 x i32]* %1725, i64 0, i64 2, !dbg !42
  %1727 = load i32, i32* %1726, align 4, !dbg !42
  %1728 = load float, float* %1584, align 4, !dbg !42
  %1729 = load float, float* %1586, align 4, !dbg !42
  %1730 = getelementptr inbounds [0 x i32], [0 x i32]* %1725, i64 0, i64 1, !dbg !42
  %1731 = load i32, i32* %1730, align 4, !dbg !42
  %1732 = load float, float* %1591, align 4, !dbg !42
  %1733 = load float, float* %1593, align 4, !dbg !42
  %1734 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %1735 = getelementptr inbounds [0 x i32], [0 x i32]* %1734, i64 0, i64 0, !dbg !42
  %1736 = load i32, i32* %1735, align 4, !dbg !42
  %1737 = load float, float* %1598, align 4, !dbg !42
  %1738 = load float, float* %1600, align 4, !dbg !42
  %1739 = sext i32 %1724 to i64, !dbg !42
  %1740 = getelementptr inbounds [0 x float], [0 x float]* %1723, i64 0, i64 %1739, !dbg !42
  %1741 = sext i32 %1606 to i64, !dbg !42
  %1742 = getelementptr inbounds float, float* %1740, i64 %1741, !dbg !42
  %1743 = load float, float* %1742, align 4, !dbg !42
  %1744 = mul nsw i32 %1736, %size330, !dbg !42
  %i1345 = add nsw i32 %1606, %1744, !dbg !42
  %1745 = sext i32 %i1345 to i64, !dbg !42
  %1746 = getelementptr inbounds float, float* %1740, i64 %1745, !dbg !42
  %1747 = load float, float* %1746, align 4, !dbg !42
  %1748 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %1749 = getelementptr inbounds [0 x i32], [0 x i32]* %1748, i64 0, i64 0, !dbg !42
  %1750 = load i32, i32* %1749, align 4, !dbg !42
  %1751 = load float, float* %1598, align 4, !dbg !42
  %1752 = load float, float* %1600, align 4, !dbg !42
  %1753 = mul nsw i32 %1731, %size330, !dbg !42
  %i1346 = add nsw i32 %1606, %1753, !dbg !42
  %1754 = sext i32 %i1346 to i64, !dbg !42
  %1755 = getelementptr inbounds float, float* %1740, i64 %1754, !dbg !42
  %1756 = load float, float* %1755, align 4, !dbg !42
  %1757 = mul nsw i32 %1750, %size330, !dbg !42
  %i1347 = add nsw i32 %i1346, %1757, !dbg !42
  %1758 = sext i32 %i1347 to i64, !dbg !42
  %1759 = getelementptr inbounds float, float* %1740, i64 %1758, !dbg !42
  %1760 = load float, float* %1759, align 4, !dbg !42
  %1761 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %1762 = getelementptr inbounds [0 x i32], [0 x i32]* %1761, i64 0, i64 1, !dbg !42
  %1763 = load i32, i32* %1762, align 4, !dbg !42
  %1764 = load float, float* %1591, align 4, !dbg !42
  %1765 = load float, float* %1593, align 4, !dbg !42
  %1766 = getelementptr inbounds [0 x i32], [0 x i32]* %1761, i64 0, i64 0, !dbg !42
  %1767 = load i32, i32* %1766, align 4, !dbg !42
  %1768 = load float, float* %1598, align 4, !dbg !42
  %1769 = load float, float* %1600, align 4, !dbg !42
  %1770 = mul nsw i32 %1727, %size330, !dbg !42
  %i1348 = add nsw i32 %1606, %1770, !dbg !42
  %1771 = sext i32 %i1348 to i64, !dbg !42
  %1772 = getelementptr inbounds float, float* %1740, i64 %1771, !dbg !42
  %1773 = load float, float* %1772, align 4, !dbg !42
  %1774 = mul nsw i32 %1767, %size330, !dbg !42
  %i1349 = add nsw i32 %i1348, %1774, !dbg !42
  %1775 = sext i32 %i1349 to i64, !dbg !42
  %1776 = getelementptr inbounds float, float* %1740, i64 %1775, !dbg !42
  %1777 = load float, float* %1776, align 4, !dbg !42
  %1778 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %1779 = getelementptr inbounds [0 x i32], [0 x i32]* %1778, i64 0, i64 0, !dbg !42
  %1780 = load i32, i32* %1779, align 4, !dbg !42
  %1781 = load float, float* %1598, align 4, !dbg !42
  %1782 = load float, float* %1600, align 4, !dbg !42
  %1783 = mul nsw i32 %1763, %size330, !dbg !42
  %i1350 = add nsw i32 %i1348, %1783, !dbg !42
  %1784 = sext i32 %i1350 to i64, !dbg !42
  %1785 = getelementptr inbounds float, float* %1740, i64 %1784, !dbg !42
  %1786 = load float, float* %1785, align 4, !dbg !42
  %1787 = mul nsw i32 %1780, %size330, !dbg !42
  %i1351 = add nsw i32 %i1350, %1787, !dbg !42
  %1788 = sext i32 %i1351 to i64, !dbg !42
  %1789 = getelementptr inbounds float, float* %1740, i64 %1788, !dbg !42
  %1790 = load float, float* %1789, align 4, !dbg !42
  %1791 = load [0 x float]*, [0 x float]** %785, align 8, !dbg !42
  %1792 = load i32, i32* %780, align 4, !dbg !42
  %1793 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %1794 = getelementptr inbounds [0 x i32], [0 x i32]* %1793, i64 0, i64 2, !dbg !42
  %1795 = load i32, i32* %1794, align 4, !dbg !42
  %1796 = load float, float* %1584, align 4, !dbg !42
  %1797 = load float, float* %1586, align 4, !dbg !42
  %1798 = getelementptr inbounds [0 x i32], [0 x i32]* %1793, i64 0, i64 1, !dbg !42
  %1799 = load i32, i32* %1798, align 4, !dbg !42
  %1800 = load float, float* %1591, align 4, !dbg !42
  %1801 = load float, float* %1593, align 4, !dbg !42
  %1802 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %1803 = getelementptr inbounds [0 x i32], [0 x i32]* %1802, i64 0, i64 0, !dbg !42
  %1804 = load i32, i32* %1803, align 4, !dbg !42
  %1805 = load float, float* %1598, align 4, !dbg !42
  %1806 = load float, float* %1600, align 4, !dbg !42
  %1807 = add nsw i32 %1792, 1, !dbg !42
  %1808 = sext i32 %1807 to i64, !dbg !42
  %1809 = getelementptr inbounds [0 x float], [0 x float]* %1791, i64 0, i64 %1808, !dbg !42
  %1810 = sext i32 %1606 to i64, !dbg !42
  %1811 = getelementptr inbounds float, float* %1809, i64 %1810, !dbg !42
  %1812 = load float, float* %1811, align 4, !dbg !42
  %1813 = mul nsw i32 %1804, %size330, !dbg !42
  %i1352 = add nsw i32 %1606, %1813, !dbg !42
  %1814 = sext i32 %i1352 to i64, !dbg !42
  %1815 = getelementptr inbounds float, float* %1809, i64 %1814, !dbg !42
  %1816 = load float, float* %1815, align 4, !dbg !42
  %1817 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %1818 = getelementptr inbounds [0 x i32], [0 x i32]* %1817, i64 0, i64 0, !dbg !42
  %1819 = load i32, i32* %1818, align 4, !dbg !42
  %1820 = load float, float* %1598, align 4, !dbg !42
  %1821 = load float, float* %1600, align 4, !dbg !42
  %1822 = mul nsw i32 %1799, %size330, !dbg !42
  %i1353 = add nsw i32 %1606, %1822, !dbg !42
  %1823 = sext i32 %i1353 to i64, !dbg !42
  %1824 = getelementptr inbounds float, float* %1809, i64 %1823, !dbg !42
  %1825 = load float, float* %1824, align 4, !dbg !42
  %1826 = mul nsw i32 %1819, %size330, !dbg !42
  %i1354 = add nsw i32 %i1353, %1826, !dbg !42
  %1827 = sext i32 %i1354 to i64, !dbg !42
  %1828 = getelementptr inbounds float, float* %1809, i64 %1827, !dbg !42
  %1829 = load float, float* %1828, align 4, !dbg !42
  %1830 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %1831 = getelementptr inbounds [0 x i32], [0 x i32]* %1830, i64 0, i64 1, !dbg !42
  %1832 = load i32, i32* %1831, align 4, !dbg !42
  %1833 = load float, float* %1591, align 4, !dbg !42
  %1834 = load float, float* %1593, align 4, !dbg !42
  %1835 = getelementptr inbounds [0 x i32], [0 x i32]* %1830, i64 0, i64 0, !dbg !42
  %1836 = load i32, i32* %1835, align 4, !dbg !42
  %1837 = load float, float* %1598, align 4, !dbg !42
  %1838 = load float, float* %1600, align 4, !dbg !42
  %1839 = mul nsw i32 %1795, %size330, !dbg !42
  %i1355 = add nsw i32 %1606, %1839, !dbg !42
  %1840 = sext i32 %i1355 to i64, !dbg !42
  %1841 = getelementptr inbounds float, float* %1809, i64 %1840, !dbg !42
  %1842 = load float, float* %1841, align 4, !dbg !42
  %1843 = mul nsw i32 %1836, %size330, !dbg !42
  %i1356 = add nsw i32 %i1355, %1843, !dbg !42
  %1844 = sext i32 %i1356 to i64, !dbg !42
  %1845 = getelementptr inbounds float, float* %1809, i64 %1844, !dbg !42
  %1846 = load float, float* %1845, align 4, !dbg !42
  %1847 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !42
  %1848 = getelementptr inbounds [0 x i32], [0 x i32]* %1847, i64 0, i64 0, !dbg !42
  %1849 = load i32, i32* %1848, align 4, !dbg !42
  %1850 = load float, float* %1598, align 4, !dbg !42
  %1851 = load float, float* %1600, align 4, !dbg !42
  %1852 = mul nsw i32 %1832, %size330, !dbg !42
  %i1357 = add nsw i32 %i1355, %1852, !dbg !42
  %1853 = sext i32 %i1357 to i64, !dbg !42
  %1854 = getelementptr inbounds float, float* %1809, i64 %1853, !dbg !42
  %1855 = load float, float* %1854, align 4, !dbg !42
  %1856 = mul nsw i32 %1849, %size330, !dbg !42
  %i1358 = add nsw i32 %i1357, %1856, !dbg !42
  %1857 = sext i32 %i1358 to i64, !dbg !42
  %1858 = getelementptr inbounds float, float* %1809, i64 %1857, !dbg !42
  %1859 = load float, float* %1858, align 4, !dbg !42
  %1860 = load float, float* %1066, align 4, !dbg !42
  %1861 = load float, float* %1068, align 4, !dbg !42
  %1862 = getelementptr inbounds %4, %4* %fr_4102445, i64 0, i32 2, !dbg !42
  %1863 = fsub float %1571, %1576, !dbg !42
  %1864 = fsub float 1.000000e+00, %1863, !dbg !42
  %1865 = fsub float %1565, %1570, !dbg !42
  %1866 = fsub float 1.000000e+00, %1865, !dbg !42
  %1867 = fmul float %1609, %1599, !dbg !42
  %1868 = fmul float %1613, %1601, !dbg !42
  %1869 = fadd float %1867, %1868, !dbg !42
  %1870 = fmul float %1869, %1592, !dbg !42
  %1871 = fmul float %1622, %1617, !dbg !42
  %1872 = fmul float %1626, %1618, !dbg !42
  %1873 = fadd float %1871, %1872, !dbg !42
  %1874 = fmul float %1873, %1594, !dbg !42
  %1875 = fadd float %1870, %1874, !dbg !42
  %1876 = fmul float %1875, %1585, !dbg !42
  %1877 = fmul float %1639, %1634, !dbg !42
  %1878 = fmul float %1643, %1635, !dbg !42
  %1879 = fadd float %1877, %1878, !dbg !42
  %1880 = fmul float %1879, %1630, !dbg !42
  %1881 = fmul float %1652, %1647, !dbg !42
  %1882 = fmul float %1656, %1648, !dbg !42
  %1883 = fadd float %1881, %1882, !dbg !42
  %1884 = fmul float %1883, %1631, !dbg !42
  %1885 = fadd float %1880, %1884, !dbg !42
  %1886 = fmul float %1885, %1587, !dbg !42
  %1887 = fadd float %1876, %1886, !dbg !42
  %1888 = fmul float %1866, %1887, !dbg !42
  %1889 = fmul float %1675, %1670, !dbg !42
  %1890 = fmul float %1679, %1671, !dbg !42
  %1891 = fadd float %1889, %1890, !dbg !42
  %1892 = fmul float %1891, %1665, !dbg !42
  %1893 = fmul float %1688, %1683, !dbg !42
  %1894 = fmul float %1692, %1684, !dbg !42
  %1895 = fadd float %1893, %1894, !dbg !42
  %1896 = fmul float %1895, %1666, !dbg !42
  %1897 = fadd float %1892, %1896, !dbg !42
  %1898 = fmul float %1897, %1661, !dbg !42
  %1899 = fmul float %1705, %1700, !dbg !42
  %1900 = fmul float %1709, %1701, !dbg !42
  %1901 = fadd float %1899, %1900, !dbg !42
  %1902 = fmul float %1901, %1696, !dbg !42
  %1903 = fmul float %1718, %1713, !dbg !42
  %1904 = fmul float %1722, %1714, !dbg !42
  %1905 = fadd float %1903, %1904, !dbg !42
  %1906 = fmul float %1905, %1697, !dbg !42
  %1907 = fadd float %1902, %1906, !dbg !42
  %1908 = fmul float %1907, %1662, !dbg !42
  %1909 = fadd float %1898, %1908, !dbg !42
  %1910 = fmul float %1865, %1909, !dbg !42
  %1911 = fadd float %1888, %1910, !dbg !42
  %1912 = fmul float %1864, %1911, !dbg !42
  %1913 = fmul float %1743, %1737, !dbg !42
  %1914 = fmul float %1747, %1738, !dbg !42
  %1915 = fadd float %1913, %1914, !dbg !42
  %1916 = fmul float %1915, %1732, !dbg !42
  %1917 = fmul float %1756, %1751, !dbg !42
  %1918 = fmul float %1760, %1752, !dbg !42
  %1919 = fadd float %1917, %1918, !dbg !42
  %1920 = fmul float %1919, %1733, !dbg !42
  %1921 = fadd float %1916, %1920, !dbg !42
  %1922 = fmul float %1921, %1728, !dbg !42
  %1923 = fmul float %1773, %1768, !dbg !42
  %1924 = fmul float %1777, %1769, !dbg !42
  %1925 = fadd float %1923, %1924, !dbg !42
  %1926 = fmul float %1925, %1764, !dbg !42
  %1927 = fmul float %1786, %1781, !dbg !42
  %1928 = fmul float %1790, %1782, !dbg !42
  %1929 = fadd float %1927, %1928, !dbg !42
  %1930 = fmul float %1929, %1765, !dbg !42
  %1931 = fadd float %1926, %1930, !dbg !42
  %1932 = fmul float %1931, %1729, !dbg !42
  %1933 = fadd float %1922, %1932, !dbg !42
  %1934 = fmul float %1866, %1933, !dbg !42
  %1935 = fmul float %1812, %1805, !dbg !42
  %1936 = fmul float %1816, %1806, !dbg !42
  %1937 = fadd float %1935, %1936, !dbg !42
  %1938 = fmul float %1937, %1800, !dbg !42
  %1939 = fmul float %1825, %1820, !dbg !42
  %1940 = fmul float %1829, %1821, !dbg !42
  %1941 = fadd float %1939, %1940, !dbg !42
  %1942 = fmul float %1941, %1801, !dbg !42
  %1943 = fadd float %1938, %1942, !dbg !42
  %1944 = fmul float %1943, %1796, !dbg !42
  %1945 = fmul float %1842, %1837, !dbg !42
  %1946 = fmul float %1846, %1838, !dbg !42
  %1947 = fadd float %1945, %1946, !dbg !42
  %1948 = fmul float %1947, %1833, !dbg !42
  %1949 = fmul float %1855, %1850, !dbg !42
  %1950 = fmul float %1859, %1851, !dbg !42
  %1951 = fadd float %1949, %1950, !dbg !42
  %1952 = fmul float %1951, %1834, !dbg !42
  %1953 = fadd float %1948, %1952, !dbg !42
  %1954 = fmul float %1953, %1797, !dbg !42
  %1955 = fadd float %1944, %1954, !dbg !42
  %1956 = fmul float %1865, %1955, !dbg !42
  %1957 = fadd float %1934, %1956, !dbg !42
  %1958 = fmul float %1863, %1957, !dbg !42
  %1959 = fadd float %1912, %1958, !dbg !42
  %hprod359 = fmul float %1860, %1861, !dbg !42
  %1960 = fmul float %1959, %hprod359, !dbg !42
  store float %1960, float* %1862, align 8, !dbg !42
  %1961 = getelementptr inbounds %0, %0* %sampler_4100391, i64 0, i32 0, i32 2, !dbg !42
  %.elt483 = getelementptr inbounds %3, %3* %1961, i64 0, i32 0, !dbg !42
  %.unpack484 = load float, float* %.elt483, align 4, !dbg !42
  %.elt487 = getelementptr inbounds %0, %0* %sampler_4100391, i64 0, i32 0, i32 0, i32 0, !dbg !42
  %.unpack488 = load i32, i32* %.elt487, align 4, !dbg !42
  %1962 = fmul float %746, %.unpack484, !dbg !42
  %1963 = sitofp i32 %.unpack488 to float, !dbg !42
  %1964 = fadd float %1963, -2.000000e+00, !dbg !42
  %1965 = fcmp olt float %1962, %1964, !dbg !42
  %1966 = select i1 %1965, float %1962, float %1964, !dbg !42
  %1967 = call float @llvm.floor.f32(float %1966), !dbg !42
  %.elt489 = getelementptr inbounds %0, %0* %sampler_4100391, i64 0, i32 0, i32 0, i32 1, !dbg !42
  %.unpack490 = load i32, i32* %.elt489, align 4, !dbg !42
  %.elt485 = getelementptr inbounds %0, %0* %sampler_4100391, i64 0, i32 0, i32 2, i32 1, !dbg !42
  %.unpack486 = load float, float* %.elt485, align 4, !dbg !42
  %1968 = fmul float %734, %.unpack486, !dbg !41
  %1969 = sitofp i32 %.unpack490 to float, !dbg !41
  %1970 = fadd float %1969, -2.000000e+00, !dbg !41
  %1971 = fcmp olt float %1968, %1970, !dbg !41
  %1972 = select i1 %1971, float %1968, float %1970, !dbg !41
  %1973 = call float @llvm.floor.f32(float %1972), !dbg !41
  %1974 = getelementptr inbounds %0, %0* %sampler_4100391, i64 0, i32 0, i32 0, i32 0, !dbg !42
  %1975 = load i32, i32* %1974, align 4, !dbg !42
  %1976 = getelementptr inbounds %0, %0* %sampler_4100391, i64 0, i32 0, i32 7, !dbg !42
  %1977 = load [0 x float]*, [0 x float]** %1976, align 8, !dbg !42
  %1978 = fptosi float %1967 to i32, !dbg !42
  %1979 = fptosi float %1973 to i32, !dbg !42
  %1980 = mul nsw i32 %1975, %1979, !dbg !42
  %index360 = add nsw i32 %1980, %1978, !dbg !42
  %1981 = sext i32 %index360 to i64, !dbg !42
  %1982 = getelementptr inbounds [0 x float], [0 x float]* %1977, i64 0, i64 %1981, !dbg !42
  %1983 = load float, float* %1982, align 4, !dbg !42
  %1984 = load [0 x float]*, [0 x float]** %1976, align 8, !dbg !42
  %1985 = getelementptr inbounds [0 x float], [0 x float]* %1984, i64 0, i64 1, !dbg !42
  %1986 = sext i32 %index360 to i64, !dbg !42
  %1987 = getelementptr inbounds float, float* %1985, i64 %1986, !dbg !42
  %1988 = load float, float* %1987, align 4, !dbg !42
  %1989 = load i32, i32* %1974, align 4, !dbg !42
  %1990 = sext i32 %1989 to i64, !dbg !42
  %1991 = getelementptr inbounds [0 x float], [0 x float]* %1984, i64 0, i64 %1990, !dbg !42
  %1992 = sext i32 %index360 to i64, !dbg !42
  %1993 = getelementptr inbounds float, float* %1991, i64 %1992, !dbg !42
  %1994 = load float, float* %1993, align 4, !dbg !42
  %1995 = load [0 x float]*, [0 x float]** %1976, align 8, !dbg !42
  %1996 = load i32, i32* %1974, align 4, !dbg !42
  %1997 = add nsw i32 %1996, 1, !dbg !42
  %1998 = sext i32 %1997 to i64, !dbg !42
  %1999 = getelementptr inbounds [0 x float], [0 x float]* %1995, i64 0, i64 %1998, !dbg !42
  %2000 = sext i32 %index360 to i64, !dbg !42
  %2001 = getelementptr inbounds float, float* %1999, i64 %2000, !dbg !42
  %2002 = load float, float* %2001, align 4, !dbg !42
  %2003 = getelementptr inbounds %3, %3* %1961, i64 0, i32 0, !dbg !42
  %2004 = load float, float* %2003, align 4, !dbg !42
  %2005 = getelementptr inbounds %0, %0* %sampler_4100391, i64 0, i32 0, i32 2, i32 1, !dbg !42
  %2006 = load float, float* %2005, align 4, !dbg !42
  %2007 = getelementptr inbounds %0, %0* %sampler_4100391, i64 0, i32 1, !dbg !42
  %2008 = getelementptr inbounds %0, %0* %sampler_4100391, i64 0, i32 1, i32 2, !dbg !42
  %.elt491 = getelementptr inbounds %3, %3* %2008, i64 0, i32 0, !dbg !42
  %.unpack492 = load float, float* %.elt491, align 4, !dbg !42
  %.elt495 = getelementptr inbounds %1, %1* %2007, i64 0, i32 0, i32 0, !dbg !42
  %.unpack496 = load i32, i32* %.elt495, align 4, !dbg !42
  %2009 = fmul float %13, %.unpack492, !dbg !42
  %2010 = sitofp i32 %.unpack496 to float, !dbg !42
  %2011 = fadd float %2010, -2.000000e+00, !dbg !42
  %2012 = fcmp olt float %2009, %2011, !dbg !42
  %2013 = select i1 %2012, float %2009, float %2011, !dbg !42
  %2014 = call float @llvm.floor.f32(float %2013), !dbg !42
  %.elt497 = getelementptr inbounds %0, %0* %sampler_4100391, i64 0, i32 1, i32 0, i32 1, !dbg !42
  %.unpack498 = load i32, i32* %.elt497, align 4, !dbg !42
  %.elt493 = getelementptr inbounds %0, %0* %sampler_4100391, i64 0, i32 1, i32 2, i32 1, !dbg !42
  %.unpack494 = load float, float* %.elt493, align 4, !dbg !42
  %2015 = fadd float %10, 0x400921FB60000000, !dbg !41
  %2016 = fdiv float %2015, 0x401921FB60000000, !dbg !41
  %2017 = fmul float %2016, %.unpack494, !dbg !41
  %2018 = sitofp i32 %.unpack498 to float, !dbg !41
  %2019 = fadd float %2018, -2.000000e+00, !dbg !41
  %2020 = fcmp olt float %2017, %2019, !dbg !41
  %2021 = select i1 %2020, float %2017, float %2019, !dbg !41
  %2022 = call float @llvm.floor.f32(float %2021), !dbg !41
  %2023 = fmul float %746, 0x4033BD3CE0000000, !dbg !42
  %2024 = fmul float %2023, %749, !dbg !42
  %2025 = fcmp ogt float %2024, 0x3EB0C6F7A0000000, !dbg !42
  %2026 = getelementptr inbounds %1, %1* %2007, i64 0, i32 0, i32 0, !dbg !42
  %2027 = load i32, i32* %2026, align 4, !dbg !42
  %2028 = getelementptr inbounds %0, %0* %sampler_4100391, i64 0, i32 1, i32 7, !dbg !42
  %2029 = load [0 x float]*, [0 x float]** %2028, align 8, !dbg !42
  %2030 = fptosi float %2014 to i32, !dbg !42
  %2031 = fptosi float %2022 to i32, !dbg !42
  %2032 = mul nsw i32 %2027, %2031, !dbg !42
  %index361 = add nsw i32 %2032, %2030, !dbg !42
  %2033 = sext i32 %index361 to i64, !dbg !42
  %2034 = getelementptr inbounds [0 x float], [0 x float]* %2029, i64 0, i64 %2033, !dbg !42
  %2035 = load float, float* %2034, align 4, !dbg !42
  %2036 = load [0 x float]*, [0 x float]** %2028, align 8, !dbg !42
  %2037 = getelementptr inbounds [0 x float], [0 x float]* %2036, i64 0, i64 1, !dbg !42
  %2038 = sext i32 %index361 to i64, !dbg !42
  %2039 = getelementptr inbounds float, float* %2037, i64 %2038, !dbg !42
  %2040 = load float, float* %2039, align 4, !dbg !42
  %2041 = load i32, i32* %2026, align 4, !dbg !42
  %2042 = sext i32 %2041 to i64, !dbg !42
  %2043 = getelementptr inbounds [0 x float], [0 x float]* %2036, i64 0, i64 %2042, !dbg !42
  %2044 = sext i32 %index361 to i64, !dbg !42
  %2045 = getelementptr inbounds float, float* %2043, i64 %2044, !dbg !42
  %2046 = load float, float* %2045, align 4, !dbg !42
  %2047 = load [0 x float]*, [0 x float]** %2028, align 8, !dbg !42
  %2048 = load i32, i32* %2026, align 4, !dbg !42
  %2049 = add nsw i32 %2048, 1, !dbg !42
  %2050 = sext i32 %2049 to i64, !dbg !42
  %2051 = getelementptr inbounds [0 x float], [0 x float]* %2047, i64 0, i64 %2050, !dbg !42
  %2052 = sext i32 %index361 to i64, !dbg !42
  %2053 = getelementptr inbounds float, float* %2051, i64 %2052, !dbg !42
  %2054 = load float, float* %2053, align 4, !dbg !42
  %2055 = getelementptr inbounds %3, %3* %2008, i64 0, i32 0, !dbg !42
  %2056 = load float, float* %2055, align 4, !dbg !42
  %2057 = getelementptr inbounds %0, %0* %sampler_4100391, i64 0, i32 1, i32 2, i32 1, !dbg !42
  %2058 = load float, float* %2057, align 4, !dbg !42
  %.elt499 = getelementptr inbounds %4, %4* %fr_4102445, i64 0, i32 0, !dbg !42
  %.unpack500 = load float, float* %.elt499, align 8, !dbg !42
  %.elt501 = getelementptr inbounds %4, %4* %fr_4102445, i64 0, i32 1, !dbg !42
  %.unpack502 = load float, float* %.elt501, align 4, !dbg !42
  %.elt503 = getelementptr inbounds %4, %4* %fr_4102445, i64 0, i32 2, !dbg !42
  %.unpack504 = load float, float* %.elt503, align 8, !dbg !42
  %2059 = fsub float %1968, %1973, !dbg !42
  %2060 = fsub float 1.000000e+00, %2059, !dbg !42
  %2061 = fsub float %1962, %1967, !dbg !42
  %2062 = fsub float 1.000000e+00, %2061, !dbg !42
  %2063 = fmul float %2062, %1983, !dbg !42
  %2064 = fmul float %2061, %1988, !dbg !42
  %2065 = fadd float %2063, %2064, !dbg !42
  %2066 = fmul float %2060, %2065, !dbg !42
  %2067 = fmul float %2062, %1994, !dbg !42
  %2068 = fmul float %2061, %2002, !dbg !42
  %2069 = fadd float %2067, %2068, !dbg !42
  %2070 = fmul float %2059, %2069, !dbg !42
  %2071 = fadd float %2066, %2070, !dbg !42
  %hprod362 = fmul float %2004, %2006, !dbg !42
  %2072 = fmul float %2071, %hprod362, !dbg !42
  %2073 = fsub float %2017, %2022, !dbg !42
  %2074 = fsub float 1.000000e+00, %2073, !dbg !42
  %2075 = fsub float %2009, %2014, !dbg !42
  %2076 = fsub float 1.000000e+00, %2075, !dbg !42
  %2077 = fmul float %2076, %2035, !dbg !42
  %2078 = fmul float %2075, %2040, !dbg !42
  %2079 = fadd float %2077, %2078, !dbg !42
  %2080 = fmul float %2074, %2079, !dbg !42
  %2081 = fmul float %2076, %2046, !dbg !42
  %2082 = fmul float %2075, %2054, !dbg !42
  %2083 = fadd float %2081, %2082, !dbg !42
  %2084 = fmul float %2073, %2083, !dbg !42
  %2085 = fadd float %2080, %2084, !dbg !42
  %hprod363 = fmul float %2056, %2058, !dbg !42
  %2086 = fmul float %2085, %hprod363, !dbg !42
  %2087 = fmul float %2086, 4.000000e+00, !dbg !42
  %2088 = fdiv float %2072, %2087, !dbg !42
  %2089 = fmul float %.unpack500, %2088, !dbg !42
  %2090 = fmul float %.unpack502, %2088, !dbg !42
  %2091 = fmul float %.unpack504, %2088, !dbg !42
  %fr_4102445.repack505 = getelementptr inbounds %4, %4* %fr_4102445, i64 0, i32 0, !dbg !42
  store float %2089, float* %fr_4102445.repack505, align 8, !dbg !42
  %fr_4102445.repack507 = getelementptr inbounds %4, %4* %fr_4102445, i64 0, i32 1, !dbg !42
  store float %2090, float* %fr_4102445.repack507, align 4, !dbg !42
  %fr_4102445.repack509 = getelementptr inbounds %4, %4* %fr_4102445, i64 0, i32 2, !dbg !42
  store float %2091, float* %fr_4102445.repack509, align 8, !dbg !42
  %phi.bo = fmul float %2024, 4.000000e+00, !dbg !42
  %maxf_cont120 = select i1 %2025, float %phi.bo, float 0x3ED0C6F7A0000000, !dbg !42
  %.elt511 = getelementptr inbounds %4, %4* %fr_4102445, i64 0, i32 0, !dbg !43
  %.unpack512 = load float, float* %.elt511, align 8, !dbg !43
  %.elt513 = getelementptr inbounds %4, %4* %fr_4102445, i64 0, i32 1, !dbg !43
  %.unpack514 = load float, float* %.elt513, align 4, !dbg !43
  %.elt515 = getelementptr inbounds %4, %4* %fr_4102445, i64 0, i32 2, !dbg !43
  %.unpack516 = load float, float* %.elt515, align 8, !dbg !43
  %2092 = fsub float 1.000000e+00, %727, !dbg !43
  %2093 = fmul float %2092, %685, !dbg !43
  %2094 = fmul float %727, %709, !dbg !43
  %2095 = fadd float %2093, %2094, !dbg !43
  %2096 = fmul float %729, %731, !dbg !43
  %2097 = fmul float %2095, %2096, !dbg !43
  %2098 = fsub float 1.000000e+00, %365, !dbg !43
  %2099 = fmul float %2098, %323, !dbg !43
  %2100 = fmul float %365, %347, !dbg !43
  %2101 = fadd float %2099, %2100, !dbg !43
  %2102 = fmul float %367, %369, !dbg !43
  %2103 = fmul float %2101, %2102, !dbg !43
  %2104 = fmul float %2097, %2103, !dbg !43
  %2105 = fmul float %.unpack373, %751, !dbg !43
  %2106 = fmul float %.unpack375, %753, !dbg !43
  %2107 = fadd float %2105, %2106, !dbg !43
  %2108 = fmul float %.unpack377, %750, !dbg !43
  %2109 = fadd float %2107, %2108, !dbg !43
  %jacobian = fmul float %maxf_cont120, %2109, !dbg !43
  %pdf = fdiv float %2104, %jacobian, !dbg !43
  %2110 = fdiv float 1.000000e+00, %pdf, !dbg !43
  %2111 = fmul float %.unpack512, %2110, !dbg !43
  %2112 = insertvalue %4 undef, float %2111, 0, !dbg !43
  %2113 = fmul float %.unpack514, %2110, !dbg !43
  %2114 = insertvalue %4 %2112, float %2113, 1, !dbg !43
  %2115 = fmul float %.unpack516, %2110, !dbg !43
  %2116 = insertvalue %4 %2114, float %2115, 2, !dbg !43
  %fr_4102445.repack517 = getelementptr inbounds %4, %4* %fr_4102445, i64 0, i32 0, !dbg !43
  store float %2111, float* %fr_4102445.repack517, align 8, !dbg !43
  %fr_4102445.repack519 = getelementptr inbounds %4, %4* %fr_4102445, i64 0, i32 1, !dbg !43
  store float %2113, float* %fr_4102445.repack519, align 4, !dbg !43
  %fr_4102445.repack521 = getelementptr inbounds %4, %4* %fr_4102445, i64 0, i32 2, !dbg !43
  store float %2115, float* %fr_4102445.repack521, align 8, !dbg !43
  %2117 = insertvalue %5 undef, %4 %2116, 0, !dbg !43
  %2118 = fmul float %751, %758, !dbg !43
  %2119 = fsub float %2118, %.unpack373, !dbg !43
  %2120 = insertvalue %4 undef, float %2119, 0, !dbg !43
  %2121 = fmul float %753, %758, !dbg !43
  %2122 = fsub float %2121, %.unpack375, !dbg !43
  %2123 = insertvalue %4 %2120, float %2122, 1, !dbg !43
  %2124 = insertvalue %4 %2123, float %760, 2, !dbg !43
  %2125 = insertvalue %5 %2117, %4 %2124, 1, !dbg !43
  %2126 = insertvalue %5 %2125, float %pdf, 2, !dbg !43
  br label %sample_brdf_cont, !dbg !43

expr_true121:                                     ; preds = %expr_false99, %continue
  %2127 = load [0 x i32]*, [0 x i32]** %764, align 8, !dbg !40
  %2128 = load i32, i32* %dim_4103409, align 4, !dbg !40
  %2129 = sext i32 %2128 to i64, !dbg !40
  %2130 = getelementptr inbounds [0 x i32], [0 x i32]* %2127, i64 0, i64 %2129, !dbg !40
  %2131 = load i32, i32* %2130, align 4, !dbg !40
  %2132 = icmp eq i32 %2131, 1, !dbg !40
  br i1 %2132, label %expr_true135, label %expr_false122, !dbg !40

expr_false122:                                    ; preds = %expr_true121
  store float %10, float* %dim_param_4103449, align 4, !dbg !44
  %2133 = load i32, i32* %dim_4103409, align 4, !dbg !44
  %2134 = icmp eq i32 %2133, 1, !dbg !44
  br i1 %2134, label %expr_true127, label %expr_false123, !dbg !44

expr_false123:                                    ; preds = %expr_false122
  %2135 = load i32, i32* %dim_4103409, align 4, !dbg !45
  %2136 = icmp eq i32 %2135, 2, !dbg !45
  br i1 %2136, label %expr_true125, label %if_join128, !dbg !45

expr_true125:                                     ; preds = %expr_false123
  store float 2.000000e+00, float* %dim_param_4103449, align 4, !dbg !46
  br label %if_join128, !dbg !46

expr_true127:                                     ; preds = %expr_false122
  store float %11, float* %dim_param_4103449, align 4, !dbg !45
  br label %if_join128, !dbg !45

if_join128:                                       ; preds = %expr_true125, %expr_false123, %expr_true127
  %2137 = load i32, i32* %dim_4103409, align 4, !dbg !47
  %2138 = load float, float* %dim_param_4103449, align 4, !dbg !47
  %2139 = call fastcc i32 @find_interval_eval_4088285(%1* nonnull %762, i32 %2137, float %2138), !dbg !47
  %2140 = load [0 x float]*, [0 x float]** %765, align 8, !dbg !48
  %2141 = load i32, i32* %dim_4103409, align 4, !dbg !48
  %2142 = load i32, i32* %766, align 4, !dbg !48
  %2143 = mul nsw i32 %2141, %2142, !dbg !48
  %2144 = add nsw i32 %2143, %2139, !dbg !48
  %2145 = sext i32 %2144 to i64, !dbg !48
  %2146 = getelementptr inbounds [0 x float], [0 x float]* %2140, i64 0, i64 %2145, !dbg !48
  %2147 = load float, float* %2146, align 4, !dbg !48
  %2148 = load [0 x float]*, [0 x float]** %765, align 8, !dbg !48
  %2149 = load i32, i32* %dim_4103409, align 4, !dbg !48
  %2150 = load i32, i32* %766, align 4, !dbg !48
  %2151 = mul nsw i32 %2149, %2150, !dbg !48
  %2152 = add nsw i32 %2151, %2139, !dbg !48
  %2153 = add nsw i32 %2152, 1, !dbg !48
  %2154 = sext i32 %2153 to i64, !dbg !48
  %2155 = getelementptr inbounds [0 x float], [0 x float]* %2148, i64 0, i64 %2154, !dbg !48
  %2156 = load float, float* %2155, align 4, !dbg !48
  %2157 = load i32, i32* %dim_4103409, align 4, !dbg !48
  %2158 = load float, float* %dim_param_4103449, align 4, !dbg !48
  %2159 = fsub float %2158, %2147, !dbg !48
  %2160 = fsub float %2156, %2147, !dbg !48
  %2161 = fdiv float %2159, %2160, !dbg !48
  %2162 = fcmp olt float %2161, 0.000000e+00, !dbg !48
  %2163 = fcmp ogt float %2161, 1.000000e+00, !dbg !48
  %. = select i1 %2163, float 1.000000e+00, float %2161, !dbg !48
  %clampf_cont134 = select i1 %2162, float 0.000000e+00, float %., !dbg !48
  %2164 = shl nsw i32 %2157, 1, !dbg !49
  %2165 = or i32 %2164, 1, !dbg !49
  %2166 = sext i32 %2165 to i64, !dbg !49
  %2167 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4103431, i64 0, i64 %2166, !dbg !49
  store float %clampf_cont134, float* %2167, align 4, !dbg !49
  %2168 = load i32, i32* %dim_4103409, align 4, !dbg !49
  %2169 = shl nsw i32 %2168, 1, !dbg !49
  %2170 = or i32 %2169, 1, !dbg !49
  %2171 = sext i32 %2170 to i64, !dbg !49
  %2172 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4103431, i64 0, i64 %2171, !dbg !49
  %2173 = load float, float* %2172, align 4, !dbg !49
  %2174 = shl nsw i32 %2168, 1, !dbg !49
  %2175 = sext i32 %2174 to i64, !dbg !49
  %2176 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4103431, i64 0, i64 %2175, !dbg !49
  %2177 = fsub float 1.000000e+00, %2173, !dbg !49
  store float %2177, float* %2176, align 4, !dbg !49
  %2178 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !49
  %2179 = load i32, i32* %dim_4103409, align 4, !dbg !49
  %2180 = sext i32 %2179 to i64, !dbg !49
  %2181 = getelementptr inbounds [0 x i32], [0 x i32]* %2178, i64 0, i64 %2180, !dbg !49
  %2182 = load i32, i32* %2181, align 4, !dbg !49
  %2183 = load i32, i32* %slice_offset_4103539, align 4, !dbg !49
  %2184 = mul nsw i32 %2182, %2139, !dbg !49
  %2185 = add nsw i32 %2183, %2184, !dbg !49
  store i32 %2185, i32* %slice_offset_4103539, align 4, !dbg !49
  %2186 = load i32, i32* %dim_4103409, align 4, !dbg !49
  br label %continue, !dbg !49

expr_true135:                                     ; preds = %expr_true121
  %2187 = load i32, i32* %dim_4103409, align 4, !dbg !44
  %2188 = shl nsw i32 %2187, 1, !dbg !44
  %2189 = sext i32 %2188 to i64, !dbg !44
  %2190 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4103431, i64 0, i64 %2189, !dbg !44
  store float 1.000000e+00, float* %2190, align 4, !dbg !44
  %2191 = load i32, i32* %dim_4103409, align 4, !dbg !44
  %2192 = shl nsw i32 %2191, 1, !dbg !44
  %2193 = or i32 %2192, 1, !dbg !44
  %2194 = sext i32 %2193 to i64, !dbg !44
  %2195 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4103431, i64 0, i64 %2194, !dbg !44
  store float 0.000000e+00, float* %2195, align 4, !dbg !44
  %2196 = load i32, i32* %dim_4103409, align 4, !dbg !44
  br label %continue, !dbg !44

continue:                                         ; preds = %expr_true135, %if_join128
  %storemerge528.in = phi i32 [ %2186, %if_join128 ], [ %2196, %expr_true135 ]
  %storemerge528 = add nsw i32 %storemerge528.in, 1, !dbg !22
  store i32 %storemerge528, i32* %dim_4103409, align 4, !dbg !22
  %2197 = icmp slt i32 %storemerge528.in, 2, !dbg !39
  br i1 %2197, label %expr_true121, label %expr_false105, !dbg !39

expr_true136:                                     ; preds = %expr_false93, %continue153
  %2198 = load [0 x i32]*, [0 x i32]** %764, align 8, !dbg !40
  %2199 = load i32, i32* %dim_4102476, align 4, !dbg !40
  %2200 = sext i32 %2199 to i64, !dbg !40
  %2201 = getelementptr inbounds [0 x i32], [0 x i32]* %2198, i64 0, i64 %2200, !dbg !40
  %2202 = load i32, i32* %2201, align 4, !dbg !40
  %2203 = icmp eq i32 %2202, 1, !dbg !40
  br i1 %2203, label %expr_true152, label %expr_false137, !dbg !40

expr_false137:                                    ; preds = %expr_true136
  store float %10, float* %dim_param_4102516, align 4, !dbg !44
  %2204 = load i32, i32* %dim_4102476, align 4, !dbg !44
  %2205 = icmp eq i32 %2204, 1, !dbg !44
  br i1 %2205, label %expr_true142, label %expr_false138, !dbg !44

expr_false138:                                    ; preds = %expr_false137
  %2206 = load i32, i32* %dim_4102476, align 4, !dbg !45
  %2207 = icmp eq i32 %2206, 2, !dbg !45
  br i1 %2207, label %expr_true140, label %if_join143, !dbg !45

expr_true140:                                     ; preds = %expr_false138
  store float 1.000000e+00, float* %dim_param_4102516, align 4, !dbg !46
  br label %if_join143, !dbg !46

expr_true142:                                     ; preds = %expr_false137
  store float %11, float* %dim_param_4102516, align 4, !dbg !45
  br label %if_join143, !dbg !45

if_join143:                                       ; preds = %expr_true140, %expr_false138, %expr_true142
  %2208 = load i32, i32* %dim_4102476, align 4, !dbg !47
  %2209 = load float, float* %dim_param_4102516, align 4, !dbg !47
  %2210 = call fastcc i32 @find_interval_eval_4088285(%1* nonnull %762, i32 %2208, float %2209), !dbg !47
  %2211 = load [0 x float]*, [0 x float]** %765, align 8, !dbg !48
  %2212 = load i32, i32* %dim_4102476, align 4, !dbg !48
  %2213 = load i32, i32* %766, align 4, !dbg !48
  %2214 = mul nsw i32 %2212, %2213, !dbg !48
  %2215 = add nsw i32 %2214, %2210, !dbg !48
  %2216 = sext i32 %2215 to i64, !dbg !48
  %2217 = getelementptr inbounds [0 x float], [0 x float]* %2211, i64 0, i64 %2216, !dbg !48
  %2218 = load float, float* %2217, align 4, !dbg !48
  %2219 = load [0 x float]*, [0 x float]** %765, align 8, !dbg !48
  %2220 = load i32, i32* %dim_4102476, align 4, !dbg !48
  %2221 = load i32, i32* %766, align 4, !dbg !48
  %2222 = mul nsw i32 %2220, %2221, !dbg !48
  %2223 = add nsw i32 %2222, %2210, !dbg !48
  %2224 = add nsw i32 %2223, 1, !dbg !48
  %2225 = sext i32 %2224 to i64, !dbg !48
  %2226 = getelementptr inbounds [0 x float], [0 x float]* %2219, i64 0, i64 %2225, !dbg !48
  %2227 = load float, float* %2226, align 4, !dbg !48
  %2228 = load i32, i32* %dim_4102476, align 4, !dbg !48
  %2229 = load float, float* %dim_param_4102516, align 4, !dbg !48
  %2230 = fsub float %2229, %2218, !dbg !48
  %2231 = fsub float %2227, %2218, !dbg !48
  %2232 = fdiv float %2230, %2231, !dbg !48
  %2233 = fcmp olt float %2232, 0.000000e+00, !dbg !48
  %2234 = fcmp ogt float %2232, 1.000000e+00, !dbg !48
  %.542 = select i1 %2234, float 1.000000e+00, float %2232, !dbg !48
  %clampf_cont151 = select i1 %2233, float 0.000000e+00, float %.542, !dbg !48
  %2235 = shl nsw i32 %2228, 1, !dbg !49
  %2236 = or i32 %2235, 1, !dbg !49
  %2237 = sext i32 %2236 to i64, !dbg !49
  %2238 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4102498, i64 0, i64 %2237, !dbg !49
  store float %clampf_cont151, float* %2238, align 4, !dbg !49
  %2239 = load i32, i32* %dim_4102476, align 4, !dbg !49
  %2240 = shl nsw i32 %2239, 1, !dbg !49
  %2241 = or i32 %2240, 1, !dbg !49
  %2242 = sext i32 %2241 to i64, !dbg !49
  %2243 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4102498, i64 0, i64 %2242, !dbg !49
  %2244 = load float, float* %2243, align 4, !dbg !49
  %2245 = shl nsw i32 %2239, 1, !dbg !49
  %2246 = sext i32 %2245 to i64, !dbg !49
  %2247 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4102498, i64 0, i64 %2246, !dbg !49
  %2248 = fsub float 1.000000e+00, %2244, !dbg !49
  store float %2248, float* %2247, align 4, !dbg !49
  %2249 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !49
  %2250 = load i32, i32* %dim_4102476, align 4, !dbg !49
  %2251 = sext i32 %2250 to i64, !dbg !49
  %2252 = getelementptr inbounds [0 x i32], [0 x i32]* %2249, i64 0, i64 %2251, !dbg !49
  %2253 = load i32, i32* %2252, align 4, !dbg !49
  %2254 = load i32, i32* %slice_offset_4102606, align 4, !dbg !49
  %2255 = mul nsw i32 %2253, %2210, !dbg !49
  %2256 = add nsw i32 %2254, %2255, !dbg !49
  store i32 %2256, i32* %slice_offset_4102606, align 4, !dbg !49
  %2257 = load i32, i32* %dim_4102476, align 4, !dbg !49
  br label %continue153, !dbg !49

expr_true152:                                     ; preds = %expr_true136
  %2258 = load i32, i32* %dim_4102476, align 4, !dbg !44
  %2259 = shl nsw i32 %2258, 1, !dbg !44
  %2260 = sext i32 %2259 to i64, !dbg !44
  %2261 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4102498, i64 0, i64 %2260, !dbg !44
  store float 1.000000e+00, float* %2261, align 4, !dbg !44
  %2262 = load i32, i32* %dim_4102476, align 4, !dbg !44
  %2263 = shl nsw i32 %2262, 1, !dbg !44
  %2264 = or i32 %2263, 1, !dbg !44
  %2265 = sext i32 %2264 to i64, !dbg !44
  %2266 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4102498, i64 0, i64 %2265, !dbg !44
  store float 0.000000e+00, float* %2266, align 4, !dbg !44
  %2267 = load i32, i32* %dim_4102476, align 4, !dbg !44
  br label %continue153, !dbg !44

continue153:                                      ; preds = %expr_true152, %if_join143
  %storemerge529.in = phi i32 [ %2257, %if_join143 ], [ %2267, %expr_true152 ]
  %storemerge529 = add nsw i32 %storemerge529.in, 1, !dbg !22
  store i32 %storemerge529, i32* %dim_4102476, align 4, !dbg !22
  %2268 = icmp slt i32 %storemerge529.in, 2, !dbg !39
  br i1 %2268, label %expr_true136, label %expr_false99, !dbg !39

expr_true154:                                     ; preds = %expr_false91, %continue171
  %2269 = load [0 x i32]*, [0 x i32]** %764, align 8, !dbg !40
  %2270 = load i32, i32* %dim_4102268, align 4, !dbg !40
  %2271 = sext i32 %2270 to i64, !dbg !40
  %2272 = getelementptr inbounds [0 x i32], [0 x i32]* %2269, i64 0, i64 %2271, !dbg !40
  %2273 = load i32, i32* %2272, align 4, !dbg !40
  %2274 = icmp eq i32 %2273, 1, !dbg !40
  br i1 %2274, label %expr_true170, label %expr_false155, !dbg !40

expr_false155:                                    ; preds = %expr_true154
  store float %10, float* %dim_param_4102310, align 4, !dbg !44
  %2275 = load i32, i32* %dim_4102268, align 4, !dbg !44
  %2276 = icmp eq i32 %2275, 1, !dbg !44
  br i1 %2276, label %expr_true160, label %expr_false156, !dbg !44

expr_false156:                                    ; preds = %expr_false155
  %2277 = load i32, i32* %dim_4102268, align 4, !dbg !45
  %2278 = icmp eq i32 %2277, 2, !dbg !45
  br i1 %2278, label %expr_true158, label %if_join161, !dbg !45

expr_true158:                                     ; preds = %expr_false156
  store float 0.000000e+00, float* %dim_param_4102310, align 4, !dbg !46
  br label %if_join161, !dbg !46

expr_true160:                                     ; preds = %expr_false155
  store float %11, float* %dim_param_4102310, align 4, !dbg !45
  br label %if_join161, !dbg !45

if_join161:                                       ; preds = %expr_true158, %expr_false156, %expr_true160
  %2279 = load i32, i32* %dim_4102268, align 4, !dbg !47
  %2280 = load float, float* %dim_param_4102310, align 4, !dbg !47
  %2281 = call fastcc i32 @find_interval_eval_4088285(%1* nonnull %762, i32 %2279, float %2280), !dbg !47
  %2282 = load [0 x float]*, [0 x float]** %765, align 8, !dbg !48
  %2283 = load i32, i32* %dim_4102268, align 4, !dbg !48
  %2284 = load i32, i32* %766, align 4, !dbg !48
  %2285 = mul nsw i32 %2283, %2284, !dbg !48
  %2286 = add nsw i32 %2285, %2281, !dbg !48
  %2287 = sext i32 %2286 to i64, !dbg !48
  %2288 = getelementptr inbounds [0 x float], [0 x float]* %2282, i64 0, i64 %2287, !dbg !48
  %2289 = load float, float* %2288, align 4, !dbg !48
  %2290 = load [0 x float]*, [0 x float]** %765, align 8, !dbg !48
  %2291 = load i32, i32* %dim_4102268, align 4, !dbg !48
  %2292 = load i32, i32* %766, align 4, !dbg !48
  %2293 = mul nsw i32 %2291, %2292, !dbg !48
  %2294 = add nsw i32 %2293, %2281, !dbg !48
  %2295 = add nsw i32 %2294, 1, !dbg !48
  %2296 = sext i32 %2295 to i64, !dbg !48
  %2297 = getelementptr inbounds [0 x float], [0 x float]* %2290, i64 0, i64 %2296, !dbg !48
  %2298 = load float, float* %2297, align 4, !dbg !48
  %2299 = load i32, i32* %dim_4102268, align 4, !dbg !48
  %2300 = load float, float* %dim_param_4102310, align 4, !dbg !48
  %2301 = fsub float %2300, %2289, !dbg !48
  %2302 = fsub float %2298, %2289, !dbg !48
  %2303 = fdiv float %2301, %2302, !dbg !48
  %2304 = fcmp olt float %2303, 0.000000e+00, !dbg !48
  %2305 = fcmp ogt float %2303, 1.000000e+00, !dbg !48
  %.543 = select i1 %2305, float 1.000000e+00, float %2303, !dbg !48
  %clampf_cont169 = select i1 %2304, float 0.000000e+00, float %.543, !dbg !48
  %2306 = shl nsw i32 %2299, 1, !dbg !49
  %2307 = or i32 %2306, 1, !dbg !49
  %2308 = sext i32 %2307 to i64, !dbg !49
  %2309 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4102292, i64 0, i64 %2308, !dbg !49
  store float %clampf_cont169, float* %2309, align 4, !dbg !49
  %2310 = load i32, i32* %dim_4102268, align 4, !dbg !49
  %2311 = shl nsw i32 %2310, 1, !dbg !49
  %2312 = or i32 %2311, 1, !dbg !49
  %2313 = sext i32 %2312 to i64, !dbg !49
  %2314 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4102292, i64 0, i64 %2313, !dbg !49
  %2315 = load float, float* %2314, align 4, !dbg !49
  %2316 = shl nsw i32 %2310, 1, !dbg !49
  %2317 = sext i32 %2316 to i64, !dbg !49
  %2318 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4102292, i64 0, i64 %2317, !dbg !49
  %2319 = fsub float 1.000000e+00, %2315, !dbg !49
  store float %2319, float* %2318, align 4, !dbg !49
  %2320 = load [0 x i32]*, [0 x i32]** %763, align 8, !dbg !49
  %2321 = load i32, i32* %dim_4102268, align 4, !dbg !49
  %2322 = sext i32 %2321 to i64, !dbg !49
  %2323 = getelementptr inbounds [0 x i32], [0 x i32]* %2320, i64 0, i64 %2322, !dbg !49
  %2324 = load i32, i32* %2323, align 4, !dbg !49
  %2325 = load i32, i32* %slice_offset_4102403, align 4, !dbg !49
  %2326 = mul nsw i32 %2324, %2281, !dbg !49
  %2327 = add nsw i32 %2325, %2326, !dbg !49
  store i32 %2327, i32* %slice_offset_4102403, align 4, !dbg !49
  %2328 = load i32, i32* %dim_4102268, align 4, !dbg !49
  br label %continue171, !dbg !49

expr_true170:                                     ; preds = %expr_true154
  %2329 = load i32, i32* %dim_4102268, align 4, !dbg !44
  %2330 = shl nsw i32 %2329, 1, !dbg !44
  %2331 = sext i32 %2330 to i64, !dbg !44
  %2332 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4102292, i64 0, i64 %2331, !dbg !44
  store float 1.000000e+00, float* %2332, align 4, !dbg !44
  %2333 = load i32, i32* %dim_4102268, align 4, !dbg !44
  %2334 = shl nsw i32 %2333, 1, !dbg !44
  %2335 = or i32 %2334, 1, !dbg !44
  %2336 = sext i32 %2335 to i64, !dbg !44
  %2337 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4102292, i64 0, i64 %2336, !dbg !44
  store float 0.000000e+00, float* %2337, align 4, !dbg !44
  %2338 = load i32, i32* %dim_4102268, align 4, !dbg !44
  br label %continue171, !dbg !44

continue171:                                      ; preds = %expr_true170, %if_join161
  %storemerge530.in = phi i32 [ %2328, %if_join161 ], [ %2338, %expr_true170 ]
  %storemerge530 = add nsw i32 %storemerge530.in, 1, !dbg !22
  store i32 %storemerge530, i32* %dim_4102268, align 4, !dbg !22
  %2339 = icmp slt i32 %storemerge530.in, 2, !dbg !39
  br i1 %2339, label %expr_true154, label %expr_false93, !dbg !39

expr_true173:                                     ; preds = %if_join60, %if_join178
  %2340 = load i32, i32* %size_4101755, align 4, !dbg !25
  %2341 = load i32, i32* %first_4101763, align 4, !dbg !25
  %h = ashr i32 %2340, 1, !dbg !25
  %middle = add nsw i32 %2341, %h, !dbg !25
  %2342 = call fastcc float @fetch_conditional_warp2D2_4088841(%1* nonnull %376, i32 %517, i32 %middle, i32 %slice_size248, %3 %519, [0 x float]* nonnull %387), !dbg !25
  %2343 = fcmp olt float %2342, %516, !dbg !50
  br i1 %2343, label %expr_true177, label %if_join178, !dbg !50

expr_true177:                                     ; preds = %expr_true173
  %2344 = add nsw i32 %middle, 1, !dbg !51
  store i32 %2344, i32* %first_4101763, align 4, !dbg !51
  %2345 = load i32, i32* %size_4101755, align 4, !dbg !51
  %.neg = xor i32 %h, -1, !dbg !51
  %2346 = add i32 %2345, %.neg, !dbg !51
  br label %if_join178, !dbg !51

if_join178:                                       ; preds = %expr_true173, %expr_true177
  %storemerge532 = phi i32 [ %2346, %expr_true177 ], [ %h, %expr_true173 ], !dbg !51
  store i32 %storemerge532, i32* %size_4101755, align 4, !dbg !51
  %2347 = icmp sgt i32 %storemerge532, 0, !dbg !24
  br i1 %2347, label %expr_true173, label %expr_false62, !dbg !24

expr_true179:                                     ; preds = %expr_false41, %if_join184
  %2348 = load i32, i32* %size_4101487, align 4, !dbg !16
  %2349 = load i32, i32* %first_4101495, align 4, !dbg !16
  %h364 = ashr i32 %2348, 1, !dbg !16
  %middle365 = add nsw i32 %2349, %h364, !dbg !16
  %2350 = call fastcc float @fetch_marginal_warp2D2_4088477(%1* nonnull %376, i32 %offset246, i32 %middle365, [0 x float]* nonnull %387), !dbg !16
  %2351 = fcmp olt float %2350, %385, !dbg !52
  br i1 %2351, label %expr_true183, label %if_join184, !dbg !52

expr_true183:                                     ; preds = %expr_true179
  %2352 = add nsw i32 %middle365, 1, !dbg !53
  store i32 %2352, i32* %first_4101495, align 4, !dbg !53
  %2353 = load i32, i32* %size_4101487, align 4, !dbg !53
  %.neg534 = xor i32 %h364, -1, !dbg !53
  %2354 = add i32 %2353, %.neg534, !dbg !53
  br label %if_join184, !dbg !53

if_join184:                                       ; preds = %expr_true179, %expr_true183
  %storemerge533 = phi i32 [ %2354, %expr_true183 ], [ %h364, %expr_true179 ], !dbg !53
  store i32 %storemerge533, i32* %size_4101487, align 4, !dbg !53
  %2355 = icmp sgt i32 %storemerge533, 0, !dbg !15
  br i1 %2355, label %expr_true179, label %expr_false43, !dbg !15

expr_true185:                                     ; preds = %if_join39, %continue199
  %2356 = load [0 x i32]*, [0 x i32]** %378, align 8, !dbg !14
  %2357 = load i32, i32* %dim_4101327, align 4, !dbg !14
  %2358 = sext i32 %2357 to i64, !dbg !14
  %2359 = getelementptr inbounds [0 x i32], [0 x i32]* %2356, i64 0, i64 %2358, !dbg !14
  %2360 = load i32, i32* %2359, align 4, !dbg !14
  %2361 = icmp eq i32 %2360, 1, !dbg !14
  br i1 %2361, label %expr_true198, label %expr_false186, !dbg !14

expr_false186:                                    ; preds = %expr_true185
  store float %10, float* %dim_param_4101369, align 4, !dbg !54
  %2362 = load i32, i32* %dim_4101327, align 4, !dbg !54
  %2363 = icmp eq i32 %2362, 1, !dbg !54
  %spec.store.select = select i1 %2363, float %11, float %10, !dbg !54
  store float %spec.store.select, float* %dim_param_4101369, align 4, !dbg !22
  %2364 = call fastcc i32 @find_interval_eval_4088285(%1* nonnull %376, i32 %2362, float %spec.store.select), !dbg !55
  %2365 = load [0 x float]*, [0 x float]** %379, align 8, !dbg !56
  %2366 = load i32, i32* %dim_4101327, align 4, !dbg !56
  %2367 = load i32, i32* %380, align 4, !dbg !56
  %2368 = mul nsw i32 %2366, %2367, !dbg !56
  %2369 = add nsw i32 %2368, %2364, !dbg !56
  %2370 = sext i32 %2369 to i64, !dbg !56
  %2371 = getelementptr inbounds [0 x float], [0 x float]* %2365, i64 0, i64 %2370, !dbg !56
  %2372 = load float, float* %2371, align 4, !dbg !56
  %2373 = load [0 x float]*, [0 x float]** %379, align 8, !dbg !56
  %2374 = load i32, i32* %dim_4101327, align 4, !dbg !56
  %2375 = load i32, i32* %380, align 4, !dbg !56
  %2376 = mul nsw i32 %2374, %2375, !dbg !56
  %2377 = add nsw i32 %2376, %2364, !dbg !56
  %2378 = add nsw i32 %2377, 1, !dbg !56
  %2379 = sext i32 %2378 to i64, !dbg !56
  %2380 = getelementptr inbounds [0 x float], [0 x float]* %2373, i64 0, i64 %2379, !dbg !56
  %2381 = load float, float* %2380, align 4, !dbg !56
  %2382 = load i32, i32* %dim_4101327, align 4, !dbg !56
  %2383 = load float, float* %dim_param_4101369, align 4, !dbg !56
  %2384 = fsub float %2383, %2372, !dbg !56
  %2385 = fsub float %2381, %2372, !dbg !56
  %2386 = fdiv float %2384, %2385, !dbg !56
  %2387 = fcmp olt float %2386, 0.000000e+00, !dbg !56
  %2388 = fcmp ogt float %2386, 1.000000e+00, !dbg !56
  %.544 = select i1 %2388, float 1.000000e+00, float %2386, !dbg !56
  %clampf_cont197 = select i1 %2387, float 0.000000e+00, float %.544, !dbg !56
  %2389 = shl nsw i32 %2382, 1, !dbg !57
  %2390 = or i32 %2389, 1, !dbg !57
  %2391 = sext i32 %2390 to i64, !dbg !57
  %2392 = getelementptr inbounds [4 x float], [4 x float]* %param_weight_4101351, i64 0, i64 %2391, !dbg !57
  store float %clampf_cont197, float* %2392, align 4, !dbg !57
  %2393 = load i32, i32* %dim_4101327, align 4, !dbg !57
  %2394 = shl nsw i32 %2393, 1, !dbg !57
  %2395 = or i32 %2394, 1, !dbg !57
  %2396 = sext i32 %2395 to i64, !dbg !57
  %2397 = getelementptr inbounds [4 x float], [4 x float]* %param_weight_4101351, i64 0, i64 %2396, !dbg !57
  %2398 = load float, float* %2397, align 4, !dbg !57
  %2399 = shl nsw i32 %2393, 1, !dbg !57
  %2400 = sext i32 %2399 to i64, !dbg !57
  %2401 = getelementptr inbounds [4 x float], [4 x float]* %param_weight_4101351, i64 0, i64 %2400, !dbg !57
  %2402 = fsub float 1.000000e+00, %2398, !dbg !57
  store float %2402, float* %2401, align 4, !dbg !57
  %2403 = load [0 x i32]*, [0 x i32]** %377, align 8, !dbg !57
  %2404 = load i32, i32* %dim_4101327, align 4, !dbg !57
  %2405 = sext i32 %2404 to i64, !dbg !57
  %2406 = getelementptr inbounds [0 x i32], [0 x i32]* %2403, i64 0, i64 %2405, !dbg !57
  %2407 = load i32, i32* %2406, align 4, !dbg !57
  %2408 = load i32, i32* %slice_offset_4101462, align 4, !dbg !57
  %2409 = mul nsw i32 %2407, %2364, !dbg !57
  %2410 = add nsw i32 %2408, %2409, !dbg !57
  store i32 %2410, i32* %slice_offset_4101462, align 4, !dbg !57
  %2411 = load i32, i32* %dim_4101327, align 4, !dbg !57
  br label %continue199, !dbg !57

expr_true198:                                     ; preds = %expr_true185
  %2412 = load i32, i32* %dim_4101327, align 4, !dbg !54
  %2413 = shl nsw i32 %2412, 1, !dbg !54
  %2414 = sext i32 %2413 to i64, !dbg !54
  %2415 = getelementptr inbounds [4 x float], [4 x float]* %param_weight_4101351, i64 0, i64 %2414, !dbg !54
  store float 1.000000e+00, float* %2415, align 4, !dbg !54
  %2416 = load i32, i32* %dim_4101327, align 4, !dbg !54
  %2417 = shl nsw i32 %2416, 1, !dbg !54
  %2418 = or i32 %2417, 1, !dbg !54
  %2419 = sext i32 %2418 to i64, !dbg !54
  %2420 = getelementptr inbounds [4 x float], [4 x float]* %param_weight_4101351, i64 0, i64 %2419, !dbg !54
  store float 0.000000e+00, float* %2420, align 4, !dbg !54
  %2421 = load i32, i32* %dim_4101327, align 4, !dbg !54
  br label %continue199, !dbg !54

continue199:                                      ; preds = %expr_true198, %expr_false186
  %storemerge535.in = phi i32 [ %2411, %expr_false186 ], [ %2421, %expr_true198 ]
  %storemerge535 = add nsw i32 %storemerge535.in, 1, !dbg !22
  store i32 %storemerge535, i32* %dim_4101327, align 4, !dbg !22
  %2422 = icmp slt i32 %storemerge535.in, 1, !dbg !13
  br i1 %2422, label %expr_true185, label %expr_false41, !dbg !13

expr_true200:                                     ; preds = %if_join, %if_join205
  %2423 = load i32, i32* %size_4100894, align 4, !dbg !25
  %2424 = load i32, i32* %first_4100902, align 4, !dbg !25
  %h366 = ashr i32 %2423, 1, !dbg !25
  %middle367 = add nsw i32 %2424, %h366, !dbg !25
  %2425 = call fastcc float @fetch_conditional_warp2D2_4088841(%1* nonnull %14, i32 %155, i32 %middle367, i32 %slice_size, %3 %157, [0 x float]* nonnull %25), !dbg !25
  %2426 = fcmp olt float %2425, %154, !dbg !50
  br i1 %2426, label %expr_true204, label %if_join205, !dbg !50

expr_true204:                                     ; preds = %expr_true200
  %2427 = add nsw i32 %middle367, 1, !dbg !51
  store i32 %2427, i32* %first_4100902, align 4, !dbg !51
  %2428 = load i32, i32* %size_4100894, align 4, !dbg !51
  %.neg538 = xor i32 %h366, -1, !dbg !51
  %2429 = add i32 %2428, %.neg538, !dbg !51
  br label %if_join205, !dbg !51

if_join205:                                       ; preds = %expr_true200, %expr_true204
  %storemerge537 = phi i32 [ %2429, %expr_true204 ], [ %h366, %expr_true200 ], !dbg !51
  store i32 %storemerge537, i32* %size_4100894, align 4, !dbg !51
  %2430 = icmp sgt i32 %storemerge537, 0, !dbg !24
  br i1 %2430, label %expr_true200, label %expr_false23, !dbg !24

expr_true206:                                     ; preds = %expr_false7, %if_join211
  %2431 = load i32, i32* %size_4100626, align 4, !dbg !16
  %2432 = load i32, i32* %first_4100634, align 4, !dbg !16
  %h368 = ashr i32 %2431, 1, !dbg !16
  %middle369 = add nsw i32 %2432, %h368, !dbg !16
  %2433 = call fastcc float @fetch_marginal_warp2D2_4088477(%1* nonnull %14, i32 %offset, i32 %middle369, [0 x float]* nonnull %25), !dbg !16
  %2434 = fcmp olt float %2433, %23, !dbg !52
  br i1 %2434, label %expr_true210, label %if_join211, !dbg !52

expr_true210:                                     ; preds = %expr_true206
  %2435 = add nsw i32 %middle369, 1, !dbg !53
  store i32 %2435, i32* %first_4100634, align 4, !dbg !53
  %2436 = load i32, i32* %size_4100626, align 4, !dbg !53
  %.neg540 = xor i32 %h368, -1, !dbg !53
  %2437 = add i32 %2436, %.neg540, !dbg !53
  br label %if_join211, !dbg !53

if_join211:                                       ; preds = %expr_true206, %expr_true210
  %storemerge539 = phi i32 [ %2437, %expr_true210 ], [ %h368, %expr_true206 ], !dbg !53
  store i32 %storemerge539, i32* %size_4100626, align 4, !dbg !53
  %2438 = icmp sgt i32 %storemerge539, 0, !dbg !15
  br i1 %2438, label %expr_true206, label %expr_false9, !dbg !15

expr_true212:                                     ; preds = %expr_false, %continue226
  %2439 = load [0 x i32]*, [0 x i32]** %16, align 8, !dbg !14
  %2440 = load i32, i32* %dim_4100466, align 4, !dbg !14
  %2441 = sext i32 %2440 to i64, !dbg !14
  %2442 = getelementptr inbounds [0 x i32], [0 x i32]* %2439, i64 0, i64 %2441, !dbg !14
  %2443 = load i32, i32* %2442, align 4, !dbg !14
  %2444 = icmp eq i32 %2443, 1, !dbg !14
  br i1 %2444, label %expr_true225, label %expr_false213, !dbg !14

expr_false213:                                    ; preds = %expr_true212
  store float %10, float* %dim_param_4100508, align 4, !dbg !54
  %2445 = load i32, i32* %dim_4100466, align 4, !dbg !54
  %2446 = icmp eq i32 %2445, 1, !dbg !54
  %spec.store.select546 = select i1 %2446, float %11, float %10, !dbg !54
  store float %spec.store.select546, float* %dim_param_4100508, align 4, !dbg !22
  %2447 = call fastcc i32 @find_interval_eval_4088285(%1* nonnull %14, i32 %2445, float %spec.store.select546), !dbg !55
  %2448 = load [0 x float]*, [0 x float]** %17, align 8, !dbg !56
  %2449 = load i32, i32* %dim_4100466, align 4, !dbg !56
  %2450 = load i32, i32* %18, align 4, !dbg !56
  %2451 = mul nsw i32 %2449, %2450, !dbg !56
  %2452 = add nsw i32 %2451, %2447, !dbg !56
  %2453 = sext i32 %2452 to i64, !dbg !56
  %2454 = getelementptr inbounds [0 x float], [0 x float]* %2448, i64 0, i64 %2453, !dbg !56
  %2455 = load float, float* %2454, align 4, !dbg !56
  %2456 = load [0 x float]*, [0 x float]** %17, align 8, !dbg !56
  %2457 = load i32, i32* %dim_4100466, align 4, !dbg !56
  %2458 = load i32, i32* %18, align 4, !dbg !56
  %2459 = mul nsw i32 %2457, %2458, !dbg !56
  %2460 = add nsw i32 %2459, %2447, !dbg !56
  %2461 = add nsw i32 %2460, 1, !dbg !56
  %2462 = sext i32 %2461 to i64, !dbg !56
  %2463 = getelementptr inbounds [0 x float], [0 x float]* %2456, i64 0, i64 %2462, !dbg !56
  %2464 = load float, float* %2463, align 4, !dbg !56
  %2465 = load i32, i32* %dim_4100466, align 4, !dbg !56
  %2466 = load float, float* %dim_param_4100508, align 4, !dbg !56
  %2467 = fsub float %2466, %2455, !dbg !56
  %2468 = fsub float %2464, %2455, !dbg !56
  %2469 = fdiv float %2467, %2468, !dbg !56
  %2470 = fcmp olt float %2469, 0.000000e+00, !dbg !56
  %2471 = fcmp ogt float %2469, 1.000000e+00, !dbg !56
  %.545 = select i1 %2471, float 1.000000e+00, float %2469, !dbg !56
  %clampf_cont224 = select i1 %2470, float 0.000000e+00, float %.545, !dbg !56
  %2472 = shl nsw i32 %2465, 1, !dbg !57
  %2473 = or i32 %2472, 1, !dbg !57
  %2474 = sext i32 %2473 to i64, !dbg !57
  %2475 = getelementptr inbounds [4 x float], [4 x float]* %param_weight_4100490, i64 0, i64 %2474, !dbg !57
  store float %clampf_cont224, float* %2475, align 4, !dbg !57
  %2476 = load i32, i32* %dim_4100466, align 4, !dbg !57
  %2477 = shl nsw i32 %2476, 1, !dbg !57
  %2478 = or i32 %2477, 1, !dbg !57
  %2479 = sext i32 %2478 to i64, !dbg !57
  %2480 = getelementptr inbounds [4 x float], [4 x float]* %param_weight_4100490, i64 0, i64 %2479, !dbg !57
  %2481 = load float, float* %2480, align 4, !dbg !57
  %2482 = shl nsw i32 %2476, 1, !dbg !57
  %2483 = sext i32 %2482 to i64, !dbg !57
  %2484 = getelementptr inbounds [4 x float], [4 x float]* %param_weight_4100490, i64 0, i64 %2483, !dbg !57
  %2485 = fsub float 1.000000e+00, %2481, !dbg !57
  store float %2485, float* %2484, align 4, !dbg !57
  %2486 = load [0 x i32]*, [0 x i32]** %15, align 8, !dbg !57
  %2487 = load i32, i32* %dim_4100466, align 4, !dbg !57
  %2488 = sext i32 %2487 to i64, !dbg !57
  %2489 = getelementptr inbounds [0 x i32], [0 x i32]* %2486, i64 0, i64 %2488, !dbg !57
  %2490 = load i32, i32* %2489, align 4, !dbg !57
  %2491 = load i32, i32* %slice_offset_4100601, align 4, !dbg !57
  %2492 = mul nsw i32 %2490, %2447, !dbg !57
  %2493 = add nsw i32 %2491, %2492, !dbg !57
  store i32 %2493, i32* %slice_offset_4100601, align 4, !dbg !57
  %2494 = load i32, i32* %dim_4100466, align 4, !dbg !57
  br label %continue226, !dbg !57

expr_true225:                                     ; preds = %expr_true212
  %2495 = load i32, i32* %dim_4100466, align 4, !dbg !54
  %2496 = shl nsw i32 %2495, 1, !dbg !54
  %2497 = sext i32 %2496 to i64, !dbg !54
  %2498 = getelementptr inbounds [4 x float], [4 x float]* %param_weight_4100490, i64 0, i64 %2497, !dbg !54
  store float 1.000000e+00, float* %2498, align 4, !dbg !54
  %2499 = load i32, i32* %dim_4100466, align 4, !dbg !54
  %2500 = shl nsw i32 %2499, 1, !dbg !54
  %2501 = or i32 %2500, 1, !dbg !54
  %2502 = sext i32 %2501 to i64, !dbg !54
  %2503 = getelementptr inbounds [4 x float], [4 x float]* %param_weight_4100490, i64 0, i64 %2502, !dbg !54
  store float 0.000000e+00, float* %2503, align 4, !dbg !54
  %2504 = load i32, i32* %dim_4100466, align 4, !dbg !54
  br label %continue226, !dbg !54

continue226:                                      ; preds = %expr_true225, %expr_false213
  %storemerge541.in = phi i32 [ %2494, %expr_false213 ], [ %2504, %expr_true225 ]
  %storemerge541 = add nsw i32 %storemerge541.in, 1, !dbg !22
  store i32 %storemerge541, i32* %dim_4100466, align 4, !dbg !22
  %2505 = icmp slt i32 %storemerge541.in, 1, !dbg !13
  br i1 %2505, label %expr_true212, label %expr_false7, !dbg !13

sample_brdf_cont:                                 ; preds = %test_sample_brdf, %if_join82, %expr_false105
  %res = phi %5 [ %2126, %expr_false105 ], [ zeroinitializer, %if_join82 ], [ zeroinitializer, %test_sample_brdf ], !dbg !58
  %2506 = getelementptr inbounds %5, %5* %result_4100394, i64 0, i32 0, i32 0, !dbg !58
  %2507 = extractvalue %5 %res, 0, !dbg !58
  %2508 = extractvalue %4 %2507, 0, !dbg !58
  store float %2508, float* %2506, align 4, !dbg !58
  %2509 = getelementptr inbounds %5, %5* %result_4100394, i64 0, i32 0, i32 1, !dbg !58
  %2510 = extractvalue %4 %2507, 1, !dbg !58
  store float %2510, float* %2509, align 4, !dbg !58
  %2511 = getelementptr inbounds %5, %5* %result_4100394, i64 0, i32 0, i32 2, !dbg !58
  %2512 = extractvalue %4 %2507, 2, !dbg !58
  store float %2512, float* %2511, align 4, !dbg !58
  %2513 = extractvalue %5 %res, 1, !dbg !58
  %.repack = getelementptr inbounds %5, %5* %result_4100394, i64 0, i32 1, i32 0, !dbg !58
  %.elt523 = extractvalue %4 %2513, 0, !dbg !58
  store float %.elt523, float* %.repack, align 4, !dbg !58
  %.repack524 = getelementptr inbounds %5, %5* %result_4100394, i64 0, i32 1, i32 1, !dbg !58
  %.elt525 = extractvalue %4 %2513, 1, !dbg !58
  store float %.elt525, float* %.repack524, align 4, !dbg !58
  %.repack526 = getelementptr inbounds %5, %5* %result_4100394, i64 0, i32 1, i32 2, !dbg !58
  %.elt527 = extractvalue %4 %2513, 2, !dbg !58
  store float %.elt527, float* %.repack526, align 4, !dbg !58
  %2514 = getelementptr inbounds %5, %5* %result_4100394, i64 0, i32 2, !dbg !58
  %2515 = extractvalue %5 %res, 2, !dbg !58
  store float %2515, float* %2514, align 4, !dbg !58
  ret void, !dbg !58
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.sqrt.f32(float) #0

declare float @asinf(float) local_unnamed_addr

declare float @atan2f(float, float) local_unnamed_addr

define internal fastcc float @fetch_marginal_warp2D2_4088477(%1* %warp_4088479, i32 %offset_4088480, i32 %idx_4088481, [0 x float]* %param_weight_4088482) unnamed_addr !dbg !59 {
fetch_marginal_warp2D2:
  %0 = getelementptr inbounds %1, %1* %warp_4088479, i64 0, i32 8, !dbg !61
  %1 = load [0 x float]*, [0 x float]** %0, align 8, !dbg !61
  %2 = getelementptr inbounds %1, %1* %warp_4088479, i64 0, i32 0, i32 1, !dbg !61
  %3 = load i32, i32* %2, align 4, !dbg !61
  %4 = getelementptr inbounds %1, %1* %warp_4088479, i64 0, i32 4, !dbg !61
  %5 = load [0 x i32]*, [0 x i32]** %4, align 8, !dbg !61
  %6 = getelementptr inbounds [0 x i32], [0 x i32]* %5, i64 0, i64 1, !dbg !61
  %7 = load i32, i32* %6, align 4, !dbg !61
  %8 = getelementptr inbounds [0 x float], [0 x float]* %param_weight_4088482, i64 0, i64 2, !dbg !61
  %9 = load float, float* %8, align 4, !dbg !61
  %10 = getelementptr inbounds [0 x float], [0 x float]* %param_weight_4088482, i64 0, i64 3, !dbg !61
  %11 = load float, float* %10, align 4, !dbg !61
  %12 = load [0 x i32]*, [0 x i32]** %4, align 8, !dbg !61
  %13 = getelementptr inbounds [0 x i32], [0 x i32]* %12, i64 0, i64 0, !dbg !61
  %14 = load i32, i32* %13, align 4, !dbg !61
  %15 = getelementptr inbounds [0 x float], [0 x float]* %param_weight_4088482, i64 0, i64 0, !dbg !61
  %16 = load float, float* %15, align 4, !dbg !61
  %17 = getelementptr inbounds [0 x float], [0 x float]* %param_weight_4088482, i64 0, i64 1, !dbg !61
  %18 = load float, float* %17, align 4, !dbg !61
  %19 = add nsw i32 %offset_4088480, %idx_4088481, !dbg !61
  %20 = sext i32 %19 to i64, !dbg !61
  %21 = getelementptr inbounds [0 x float], [0 x float]* %1, i64 0, i64 %20, !dbg !61
  %22 = load float, float* %21, align 4, !dbg !61
  %23 = mul nsw i32 %14, %3, !dbg !61
  %i1 = add nsw i32 %19, %23, !dbg !61
  %24 = sext i32 %i1 to i64, !dbg !61
  %25 = getelementptr inbounds [0 x float], [0 x float]* %1, i64 0, i64 %24, !dbg !61
  %26 = load float, float* %25, align 4, !dbg !61
  %27 = load [0 x i32]*, [0 x i32]** %4, align 8, !dbg !61
  %28 = getelementptr inbounds [0 x i32], [0 x i32]* %27, i64 0, i64 0, !dbg !61
  %29 = load i32, i32* %28, align 4, !dbg !61
  %30 = load float, float* %15, align 4, !dbg !61
  %31 = load float, float* %17, align 4, !dbg !61
  %32 = mul nsw i32 %7, %3, !dbg !61
  %i11 = add nsw i32 %19, %32, !dbg !61
  %33 = sext i32 %i11 to i64, !dbg !61
  %34 = getelementptr inbounds [0 x float], [0 x float]* %1, i64 0, i64 %33, !dbg !61
  %35 = load float, float* %34, align 4, !dbg !61
  %36 = mul nsw i32 %29, %3, !dbg !61
  %i12 = add nsw i32 %i11, %36, !dbg !61
  %37 = sext i32 %i12 to i64, !dbg !61
  %38 = getelementptr inbounds [0 x float], [0 x float]* %1, i64 0, i64 %37, !dbg !61
  %39 = load float, float* %38, align 4, !dbg !61
  %40 = fmul float %22, %16, !dbg !61
  %41 = fmul float %26, %18, !dbg !61
  %42 = fadd float %40, %41, !dbg !61
  %43 = fmul float %42, %9, !dbg !61
  %44 = fmul float %35, %30, !dbg !61
  %45 = fmul float %39, %31, !dbg !61
  %46 = fadd float %44, %45, !dbg !61
  %47 = fmul float %46, %11, !dbg !61
  %48 = fadd float %43, %47, !dbg !61
  ret float %48, !dbg !61
}

define internal fastcc float @fetch_conditional_warp2D2_4088841(%1* %warp_4088843, i32 %offset_4088844, i32 %idx_4088845, i32 %slice_size_4088846, %3 %sample_4088847, [0 x float]* %param_weight_4088848) unnamed_addr !dbg !62 {
fetch_conditional_warp2D2:
  %0 = getelementptr inbounds %1, %1* %warp_4088843, i64 0, i32 9, !dbg !64
  %1 = load [0 x float]*, [0 x float]** %0, align 8, !dbg !64
  %2 = getelementptr inbounds %1, %1* %warp_4088843, i64 0, i32 4, !dbg !64
  %3 = load [0 x i32]*, [0 x i32]** %2, align 8, !dbg !64
  %4 = getelementptr inbounds [0 x i32], [0 x i32]* %3, i64 0, i64 1, !dbg !64
  %5 = load i32, i32* %4, align 4, !dbg !64
  %6 = getelementptr inbounds [0 x float], [0 x float]* %param_weight_4088848, i64 0, i64 2, !dbg !64
  %7 = load float, float* %6, align 4, !dbg !64
  %8 = getelementptr inbounds [0 x float], [0 x float]* %param_weight_4088848, i64 0, i64 3, !dbg !64
  %9 = load float, float* %8, align 4, !dbg !64
  %10 = load [0 x i32]*, [0 x i32]** %2, align 8, !dbg !64
  %11 = getelementptr inbounds [0 x i32], [0 x i32]* %10, i64 0, i64 0, !dbg !64
  %12 = load i32, i32* %11, align 4, !dbg !64
  %13 = getelementptr inbounds [0 x float], [0 x float]* %param_weight_4088848, i64 0, i64 0, !dbg !64
  %14 = load float, float* %13, align 4, !dbg !64
  %15 = getelementptr inbounds [0 x float], [0 x float]* %param_weight_4088848, i64 0, i64 1, !dbg !64
  %16 = load float, float* %15, align 4, !dbg !64
  %17 = add nsw i32 %offset_4088844, %idx_4088845, !dbg !64
  %18 = sext i32 %17 to i64, !dbg !64
  %19 = getelementptr inbounds [0 x float], [0 x float]* %1, i64 0, i64 %18, !dbg !64
  %20 = load float, float* %19, align 4, !dbg !64
  %21 = mul nsw i32 %12, %slice_size_4088846, !dbg !64
  %i1 = add nsw i32 %17, %21, !dbg !64
  %22 = sext i32 %i1 to i64, !dbg !64
  %23 = getelementptr inbounds [0 x float], [0 x float]* %1, i64 0, i64 %22, !dbg !64
  %24 = load float, float* %23, align 4, !dbg !64
  %25 = load [0 x i32]*, [0 x i32]** %2, align 8, !dbg !64
  %26 = getelementptr inbounds [0 x i32], [0 x i32]* %25, i64 0, i64 0, !dbg !64
  %27 = load i32, i32* %26, align 4, !dbg !64
  %28 = load float, float* %13, align 4, !dbg !64
  %29 = load float, float* %15, align 4, !dbg !64
  %30 = mul nsw i32 %5, %slice_size_4088846, !dbg !64
  %i11 = add nsw i32 %17, %30, !dbg !64
  %31 = sext i32 %i11 to i64, !dbg !64
  %32 = getelementptr inbounds [0 x float], [0 x float]* %1, i64 0, i64 %31, !dbg !64
  %33 = load float, float* %32, align 4, !dbg !64
  %34 = mul nsw i32 %27, %slice_size_4088846, !dbg !64
  %i12 = add nsw i32 %i11, %34, !dbg !64
  %35 = sext i32 %i12 to i64, !dbg !64
  %36 = getelementptr inbounds [0 x float], [0 x float]* %1, i64 0, i64 %35, !dbg !64
  %37 = load float, float* %36, align 4, !dbg !64
  %38 = load [0 x float]*, [0 x float]** %0, align 8, !dbg !64
  %39 = getelementptr inbounds %1, %1* %warp_4088843, i64 0, i32 0, i32 0, !dbg !64
  %40 = load i32, i32* %39, align 4, !dbg !64
  %41 = load [0 x i32]*, [0 x i32]** %2, align 8, !dbg !64
  %42 = getelementptr inbounds [0 x i32], [0 x i32]* %41, i64 0, i64 1, !dbg !64
  %43 = load i32, i32* %42, align 4, !dbg !64
  %44 = load float, float* %6, align 4, !dbg !64
  %45 = load float, float* %8, align 4, !dbg !64
  %46 = getelementptr inbounds [0 x i32], [0 x i32]* %41, i64 0, i64 0, !dbg !64
  %47 = load i32, i32* %46, align 4, !dbg !64
  %48 = load float, float* %13, align 4, !dbg !64
  %49 = load float, float* %15, align 4, !dbg !64
  %50 = sext i32 %40 to i64, !dbg !64
  %51 = getelementptr inbounds [0 x float], [0 x float]* %38, i64 0, i64 %50, !dbg !64
  %52 = sext i32 %17 to i64, !dbg !64
  %53 = getelementptr inbounds float, float* %51, i64 %52, !dbg !64
  %54 = load float, float* %53, align 4, !dbg !64
  %55 = mul nsw i32 %47, %slice_size_4088846, !dbg !64
  %i13 = add nsw i32 %17, %55, !dbg !64
  %56 = sext i32 %i13 to i64, !dbg !64
  %57 = getelementptr inbounds float, float* %51, i64 %56, !dbg !64
  %58 = load float, float* %57, align 4, !dbg !64
  %59 = load [0 x i32]*, [0 x i32]** %2, align 8, !dbg !64
  %60 = getelementptr inbounds [0 x i32], [0 x i32]* %59, i64 0, i64 0, !dbg !64
  %61 = load i32, i32* %60, align 4, !dbg !64
  %62 = load float, float* %13, align 4, !dbg !64
  %63 = load float, float* %15, align 4, !dbg !64
  %64 = mul nsw i32 %43, %slice_size_4088846, !dbg !64
  %i14 = add nsw i32 %17, %64, !dbg !64
  %65 = sext i32 %i14 to i64, !dbg !64
  %66 = getelementptr inbounds float, float* %51, i64 %65, !dbg !64
  %67 = load float, float* %66, align 4, !dbg !64
  %68 = mul nsw i32 %61, %slice_size_4088846, !dbg !64
  %i15 = add nsw i32 %i14, %68, !dbg !64
  %69 = sext i32 %i15 to i64, !dbg !64
  %70 = getelementptr inbounds float, float* %51, i64 %69, !dbg !64
  %71 = load float, float* %70, align 4, !dbg !64
  %72 = extractvalue %3 %sample_4088847, 1, !dbg !64
  %73 = fsub float 1.000000e+00, %72, !dbg !64
  %74 = fmul float %20, %14, !dbg !64
  %75 = fmul float %24, %16, !dbg !64
  %76 = fadd float %74, %75, !dbg !64
  %77 = fmul float %76, %7, !dbg !64
  %78 = fmul float %33, %28, !dbg !64
  %79 = fmul float %37, %29, !dbg !64
  %80 = fadd float %78, %79, !dbg !64
  %81 = fmul float %80, %9, !dbg !64
  %82 = fadd float %77, %81, !dbg !64
  %83 = fmul float %73, %82, !dbg !64
  %84 = fmul float %54, %48, !dbg !64
  %85 = fmul float %58, %49, !dbg !64
  %86 = fadd float %84, %85, !dbg !64
  %87 = fmul float %86, %44, !dbg !64
  %88 = fmul float %67, %62, !dbg !64
  %89 = fmul float %71, %63, !dbg !64
  %90 = fadd float %88, %89, !dbg !64
  %91 = fmul float %90, %45, !dbg !64
  %92 = fadd float %87, %91, !dbg !64
  %93 = fmul float %72, %92, !dbg !64
  %94 = fadd float %83, %93, !dbg !64
  ret float %94, !dbg !64
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.sin.f32(float) #0

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.cos.f32(float) #0

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.floor.f32(float) #0

define internal fastcc i32 @find_interval_eval_4088285(%1* %warp_4088287, i32 %dim_4088288, float %param_val_4088289) unnamed_addr !dbg !65 {
find_interval_eval:
  %first_4088303 = alloca i32, align 4
  %size_4088295 = alloca i32, align 4
  %0 = getelementptr inbounds %1, %1* %warp_4088287, i64 0, i32 3, !dbg !67
  %1 = load [0 x i32]*, [0 x i32]** %0, align 8, !dbg !67
  %2 = sext i32 %dim_4088288 to i64, !dbg !67
  %3 = getelementptr inbounds [0 x i32], [0 x i32]* %1, i64 0, i64 %2, !dbg !67
  %4 = load i32, i32* %3, align 4, !dbg !67
  %size = add nsw i32 %4, -2, !dbg !67
  store i32 %size, i32* %size_4088295, align 4, !dbg !67
  store i32 1, i32* %first_4088303, align 4, !dbg !67
  %5 = getelementptr inbounds %1, %1* %warp_4088287, i64 0, i32 5, !dbg !67
  %6 = getelementptr inbounds %1, %1* %warp_4088287, i64 0, i32 6, !dbg !67
  %7 = icmp sgt i32 %4, 2, !dbg !68
  br i1 %7, label %expr_true4, label %expr_false, !dbg !68

expr_false:                                       ; preds = %if_join, %find_interval_eval
  %8 = load i32, i32* %first_4088303, align 4, !dbg !69
  %9 = add nsw i32 %8, -1, !dbg !69
  %10 = icmp slt i32 %size, %9, !dbg !69
  %spec.select = select i1 %10, i32 %size, i32 %9, !dbg !69
  %.inv = icmp sgt i32 %8, 0, !dbg !69
  %merge = select i1 %.inv, i32 %spec.select, i32 0, !dbg !69
  ret i32 %merge, !dbg !70

expr_true4:                                       ; preds = %find_interval_eval, %if_join
  %11 = load i32, i32* %size_4088295, align 4, !dbg !69
  %12 = load i32, i32* %first_4088303, align 4, !dbg !69
  %13 = load [0 x float]*, [0 x float]** %5, align 8, !dbg !69
  %14 = load i32, i32* %6, align 4, !dbg !69
  %15 = mul nsw i32 %14, %dim_4088288, !dbg !69
  %h = ashr i32 %11, 1, !dbg !69
  %middle = add nsw i32 %12, %h, !dbg !69
  %16 = add nsw i32 %15, %middle, !dbg !69
  %17 = sext i32 %16 to i64, !dbg !69
  %18 = getelementptr inbounds [0 x float], [0 x float]* %13, i64 0, i64 %17, !dbg !69
  %19 = load float, float* %18, align 4, !dbg !69
  %20 = fcmp ugt float %19, %param_val_4088289, !dbg !69
  br i1 %20, label %if_join, label %expr_true6, !dbg !69

expr_true6:                                       ; preds = %expr_true4
  %21 = add nsw i32 %middle, 1, !dbg !71
  store i32 %21, i32* %first_4088303, align 4, !dbg !71
  %22 = load i32, i32* %size_4088295, align 4, !dbg !71
  %.neg = xor i32 %h, -1, !dbg !71
  %23 = add i32 %22, %.neg, !dbg !71
  br label %if_join, !dbg !71

if_join:                                          ; preds = %expr_true4, %expr_true6
  %storemerge = phi i32 [ %23, %expr_true6 ], [ %h, %expr_true4 ], !dbg !71
  store i32 %storemerge, i32* %size_4088295, align 4, !dbg !71
  %24 = icmp sgt i32 %storemerge, 0, !dbg !68
  br i1 %24, label %expr_true4, label %expr_false, !dbg !68
}

define void @test_pdf_brdf(%0* %sampler_4105552, %4* %incoming_4105553, %4* %outgoing_4105554, float* %result_4105555) local_unnamed_addr !dbg !72 {
test_pdf_brdf:
  %dim_param_4105711 = alloca float, align 4
  %dim_4105669 = alloca i32, align 4
  %slice_offset_4105804 = alloca i32, align 4
  %param_weight_4105693 = alloca [4 x float], align 4
  %u_wm_4105637 = alloca %3, align 8
  %.elt = getelementptr inbounds %4, %4* %incoming_4105553, i64 0, i32 0, !dbg !74
  %.unpack = load float, float* %.elt, align 4, !dbg !74
  %.elt49 = getelementptr inbounds %4, %4* %incoming_4105553, i64 0, i32 1, !dbg !74
  %.unpack50 = load float, float* %.elt49, align 4, !dbg !74
  %.elt51 = getelementptr inbounds %4, %4* %incoming_4105553, i64 0, i32 2, !dbg !74
  %.unpack52 = load float, float* %.elt51, align 4, !dbg !74
  %0 = fcmp ugt float %.unpack52, 0.000000e+00, !dbg !74
  %.elt57 = getelementptr inbounds %4, %4* %outgoing_4105554, i64 0, i32 2, !dbg !74
  %.unpack58 = load float, float* %.elt57, align 4, !dbg !74
  %1 = fcmp ugt float %.unpack58, 0.000000e+00
  %or.cond = and i1 %0, %1, !dbg !74
  br i1 %or.cond, label %expr_false1, label %pdf_brdf_cont, !dbg !74

expr_false1:                                      ; preds = %test_pdf_brdf
  %.elt55 = getelementptr inbounds %4, %4* %outgoing_4105554, i64 0, i32 1, !dbg !74
  %.unpack56 = load float, float* %.elt55, align 4, !dbg !74
  %.elt53 = getelementptr inbounds %4, %4* %outgoing_4105554, i64 0, i32 0, !dbg !74
  %.unpack54 = load float, float* %.elt53, align 4, !dbg !74
  %2 = insertvalue %4 undef, float %.unpack, 0, !dbg !74
  %3 = insertvalue %4 %2, float %.unpack50, 1, !dbg !74
  %4 = insertvalue %4 %3, float %.unpack52, 2, !dbg !74
  %5 = fadd float %.unpack, %.unpack54, !dbg !75
  %6 = fmul float %5, %5, !dbg !75
  %7 = fadd float %.unpack50, %.unpack56, !dbg !75
  %8 = fmul float %7, %7, !dbg !75
  %9 = fadd float %6, %8, !dbg !75
  %10 = fadd float %.unpack52, %.unpack58, !dbg !75
  %11 = fmul float %10, %10, !dbg !75
  %12 = fadd float %9, %11, !dbg !75
  %13 = call float @llvm.sqrt.f32(float %12), !dbg !75
  %14 = call fastcc float @elevation_4105594(%4 %4), !dbg !76
  %15 = call float @atan2f(float %.unpack50, float %.unpack), !dbg !77
  %16 = fdiv float 1.000000e+00, %13, !dbg !78
  %17 = fmul float %5, %16, !dbg !78
  %18 = insertvalue %4 undef, float %17, 0, !dbg !78
  %19 = fmul float %7, %16, !dbg !78
  %20 = insertvalue %4 %18, float %19, 1, !dbg !78
  %21 = fmul float %10, %16, !dbg !78
  %22 = insertvalue %4 %20, float %21, 2, !dbg !78
  %23 = call fastcc float @elevation_4105594(%4 %22), !dbg !78
  %24 = call float @atan2f(float %19, float %17), !dbg !79
  %25 = fmul float %23, 0x3FE45F3060000000, !dbg !80
  %26 = call float @llvm.sqrt.f32(float %25), !dbg !80
  %27 = fadd float %24, 0x400921FB60000000, !dbg !81
  %28 = fdiv float %27, 0x401921FB60000000, !dbg !81
  %u_wm_4105637.repack = getelementptr inbounds %3, %3* %u_wm_4105637, i64 0, i32 0, !dbg !81
  store float %26, float* %u_wm_4105637.repack, align 8, !dbg !81
  %u_wm_4105637.repack60 = getelementptr inbounds %3, %3* %u_wm_4105637, i64 0, i32 1, !dbg !81
  store float %28, float* %u_wm_4105637.repack60, align 4, !dbg !81
  %29 = getelementptr inbounds %0, %0* %sampler_4105552, i64 0, i32 5, !dbg !81
  %30 = load i1, i1* %29, align 1, !dbg !81
  %31 = getelementptr inbounds %3, %3* %u_wm_4105637, i64 0, i32 1, !dbg !81
  br i1 %30, label %expr_true, label %_cont11, !dbg !81

expr_true:                                        ; preds = %expr_false1
  %32 = fsub float %24, %15, !dbg !82
  %33 = fadd float %32, 0x400921FB60000000, !dbg !82
  %34 = fdiv float %33, 0x401921FB60000000, !dbg !82
  store float %34, float* %31, align 4, !dbg !82
  br label %_cont11, !dbg !82

_cont11:                                          ; preds = %expr_true, %expr_false1
  %35 = load float, float* %31, align 4, !dbg !83
  %36 = call float @llvm.floor.f32(float %35), !dbg !83
  %37 = fsub float %35, %36, !dbg !84
  store float %37, float* %31, align 4, !dbg !84
  %.elt62 = getelementptr inbounds %3, %3* %u_wm_4105637, i64 0, i32 0, !dbg !84
  %.unpack63 = load float, float* %.elt62, align 8, !dbg !84
  %38 = insertvalue %3 undef, float %.unpack63, 0, !dbg !84
  %39 = insertvalue %3 %38, float %37, 1, !dbg !84
  %40 = getelementptr inbounds %0, %0* %sampler_4105552, i64 0, i32 2, !dbg !84
  %41 = call fastcc %6 @invert_warp2D2_4093932(%1* nonnull %40, %3 %39, float %15, float %14), !dbg !84
  %param_weight_4105693.repack = getelementptr inbounds [4 x float], [4 x float]* %param_weight_4105693, i64 0, i64 0, !dbg !85
  store float 0.000000e+00, float* %param_weight_4105693.repack, align 4, !dbg !85
  %param_weight_4105693.repack66 = getelementptr inbounds [4 x float], [4 x float]* %param_weight_4105693, i64 0, i64 1, !dbg !85
  store float 0.000000e+00, float* %param_weight_4105693.repack66, align 4, !dbg !85
  %param_weight_4105693.repack67 = getelementptr inbounds [4 x float], [4 x float]* %param_weight_4105693, i64 0, i64 2, !dbg !85
  store float 0.000000e+00, float* %param_weight_4105693.repack67, align 4, !dbg !85
  %param_weight_4105693.repack68 = getelementptr inbounds [4 x float], [4 x float]* %param_weight_4105693, i64 0, i64 3, !dbg !85
  store float 0.000000e+00, float* %param_weight_4105693.repack68, align 4, !dbg !85
  store i32 0, i32* %slice_offset_4105804, align 4, !dbg !85
  store i32 0, i32* %dim_4105669, align 4, !dbg !85
  %42 = getelementptr inbounds %0, %0* %sampler_4105552, i64 0, i32 3, !dbg !85
  %43 = getelementptr inbounds %0, %0* %sampler_4105552, i64 0, i32 3, i32 4, !dbg !85
  %44 = getelementptr inbounds %0, %0* %sampler_4105552, i64 0, i32 3, i32 3, !dbg !85
  %45 = getelementptr inbounds %0, %0* %sampler_4105552, i64 0, i32 3, i32 5, !dbg !85
  %46 = getelementptr inbounds %0, %0* %sampler_4105552, i64 0, i32 3, i32 6, !dbg !85
  br label %expr_true24, !dbg !86

expr_false14:                                     ; preds = %continue
  %47 = getelementptr inbounds %0, %0* %sampler_4105552, i64 0, i32 3, i32 2, !dbg !87
  %.elt69 = getelementptr inbounds %3, %3* %47, i64 0, i32 0, !dbg !87
  %.unpack70 = load float, float* %.elt69, align 4, !dbg !87
  %.elt73 = getelementptr inbounds %1, %1* %42, i64 0, i32 0, i32 0, !dbg !87
  %.unpack74 = load i32, i32* %.elt73, align 4, !dbg !87
  %48 = extractvalue %6 %41, 0, !dbg !87
  %49 = extractvalue %3 %48, 0, !dbg !87
  %50 = fmul float %49, %.unpack70, !dbg !87
  %51 = sitofp i32 %.unpack74 to float, !dbg !87
  %52 = fadd float %51, -2.000000e+00, !dbg !87
  %53 = fcmp olt float %50, %52, !dbg !87
  %54 = select i1 %53, float %50, float %52, !dbg !87
  %55 = call float @llvm.floor.f32(float %54), !dbg !87
  %.elt75 = getelementptr inbounds %0, %0* %sampler_4105552, i64 0, i32 3, i32 0, i32 1, !dbg !87
  %.unpack76 = load i32, i32* %.elt75, align 4, !dbg !87
  %.elt71 = getelementptr inbounds %0, %0* %sampler_4105552, i64 0, i32 3, i32 2, i32 1, !dbg !87
  %.unpack72 = load float, float* %.elt71, align 4, !dbg !87
  %56 = extractvalue %3 %48, 1, !dbg !88
  %57 = fmul float %56, %.unpack72, !dbg !88
  %58 = sitofp i32 %.unpack76 to float, !dbg !88
  %59 = fadd float %58, -2.000000e+00, !dbg !88
  %60 = fcmp olt float %57, %59, !dbg !88
  %61 = select i1 %60, float %57, float %59, !dbg !88
  %62 = call float @llvm.floor.f32(float %61), !dbg !88
  %63 = getelementptr inbounds %1, %1* %42, i64 0, i32 0, i32 0, !dbg !89
  %64 = load i32, i32* %63, align 4, !dbg !89
  %65 = getelementptr inbounds %0, %0* %sampler_4105552, i64 0, i32 3, i32 0, i32 1, !dbg !89
  %66 = load i32, i32* %65, align 4, !dbg !89
  %67 = load i32, i32* %slice_offset_4105804, align 4, !dbg !89
  %68 = getelementptr inbounds %0, %0* %sampler_4105552, i64 0, i32 3, i32 7, !dbg !89
  %69 = load [0 x float]*, [0 x float]** %68, align 8, !dbg !89
  %70 = load [0 x i32]*, [0 x i32]** %43, align 8, !dbg !89
  %71 = getelementptr inbounds [0 x i32], [0 x i32]* %70, i64 0, i64 1, !dbg !89
  %72 = load i32, i32* %71, align 4, !dbg !89
  %73 = getelementptr inbounds [4 x float], [4 x float]* %param_weight_4105693, i64 0, i64 2, !dbg !89
  %74 = load float, float* %73, align 4, !dbg !89
  %75 = getelementptr inbounds [4 x float], [4 x float]* %param_weight_4105693, i64 0, i64 3, !dbg !89
  %76 = load float, float* %75, align 4, !dbg !89
  %77 = load [0 x i32]*, [0 x i32]** %43, align 8, !dbg !89
  %78 = getelementptr inbounds [0 x i32], [0 x i32]* %77, i64 0, i64 0, !dbg !89
  %79 = load i32, i32* %78, align 4, !dbg !89
  %80 = getelementptr inbounds [4 x float], [4 x float]* %param_weight_4105693, i64 0, i64 0, !dbg !89
  %81 = load float, float* %80, align 4, !dbg !89
  %82 = getelementptr inbounds [4 x float], [4 x float]* %param_weight_4105693, i64 0, i64 1, !dbg !89
  %83 = load float, float* %82, align 4, !dbg !89
  %84 = fptosi float %55 to i32, !dbg !89
  %85 = fptosi float %62 to i32, !dbg !89
  %86 = mul nsw i32 %64, %85, !dbg !89
  %index = add nsw i32 %86, %84, !dbg !89
  %size = mul nsw i32 %64, %66, !dbg !89
  %87 = mul nsw i32 %67, %size, !dbg !89
  %88 = add nsw i32 %index, %87, !dbg !89
  %89 = sext i32 %88 to i64, !dbg !89
  %90 = getelementptr inbounds [0 x float], [0 x float]* %69, i64 0, i64 %89, !dbg !89
  %91 = load float, float* %90, align 4, !dbg !89
  %92 = mul nsw i32 %79, %size, !dbg !89
  %i1 = add nsw i32 %88, %92, !dbg !89
  %93 = sext i32 %i1 to i64, !dbg !89
  %94 = getelementptr inbounds [0 x float], [0 x float]* %69, i64 0, i64 %93, !dbg !89
  %95 = load float, float* %94, align 4, !dbg !89
  %96 = load [0 x i32]*, [0 x i32]** %43, align 8, !dbg !89
  %97 = getelementptr inbounds [0 x i32], [0 x i32]* %96, i64 0, i64 0, !dbg !89
  %98 = load i32, i32* %97, align 4, !dbg !89
  %99 = load float, float* %80, align 4, !dbg !89
  %100 = load float, float* %82, align 4, !dbg !89
  %101 = mul nsw i32 %72, %size, !dbg !89
  %i138 = add nsw i32 %88, %101, !dbg !89
  %102 = sext i32 %i138 to i64, !dbg !89
  %103 = getelementptr inbounds [0 x float], [0 x float]* %69, i64 0, i64 %102, !dbg !89
  %104 = load float, float* %103, align 4, !dbg !89
  %105 = mul nsw i32 %98, %size, !dbg !89
  %i139 = add nsw i32 %i138, %105, !dbg !89
  %106 = sext i32 %i139 to i64, !dbg !89
  %107 = getelementptr inbounds [0 x float], [0 x float]* %69, i64 0, i64 %106, !dbg !89
  %108 = load float, float* %107, align 4, !dbg !89
  %109 = load [0 x float]*, [0 x float]** %68, align 8, !dbg !89
  %110 = load [0 x i32]*, [0 x i32]** %43, align 8, !dbg !89
  %111 = getelementptr inbounds [0 x i32], [0 x i32]* %110, i64 0, i64 1, !dbg !89
  %112 = load i32, i32* %111, align 4, !dbg !89
  %113 = load float, float* %73, align 4, !dbg !89
  %114 = load float, float* %75, align 4, !dbg !89
  %115 = getelementptr inbounds [0 x i32], [0 x i32]* %110, i64 0, i64 0, !dbg !89
  %116 = load i32, i32* %115, align 4, !dbg !89
  %117 = load float, float* %80, align 4, !dbg !89
  %118 = load float, float* %82, align 4, !dbg !89
  %119 = getelementptr inbounds [0 x float], [0 x float]* %109, i64 0, i64 1, !dbg !89
  %120 = sext i32 %88 to i64, !dbg !89
  %121 = getelementptr inbounds float, float* %119, i64 %120, !dbg !89
  %122 = load float, float* %121, align 4, !dbg !89
  %123 = mul nsw i32 %116, %size, !dbg !89
  %i140 = add nsw i32 %88, %123, !dbg !89
  %124 = sext i32 %i140 to i64, !dbg !89
  %125 = getelementptr inbounds float, float* %119, i64 %124, !dbg !89
  %126 = load float, float* %125, align 4, !dbg !89
  %127 = load [0 x i32]*, [0 x i32]** %43, align 8, !dbg !89
  %128 = getelementptr inbounds [0 x i32], [0 x i32]* %127, i64 0, i64 0, !dbg !89
  %129 = load i32, i32* %128, align 4, !dbg !89
  %130 = load float, float* %80, align 4, !dbg !89
  %131 = load float, float* %82, align 4, !dbg !89
  %132 = mul nsw i32 %112, %size, !dbg !89
  %i141 = add nsw i32 %88, %132, !dbg !89
  %133 = sext i32 %i141 to i64, !dbg !89
  %134 = getelementptr inbounds float, float* %119, i64 %133, !dbg !89
  %135 = load float, float* %134, align 4, !dbg !89
  %136 = mul nsw i32 %129, %size, !dbg !89
  %i142 = add nsw i32 %i141, %136, !dbg !89
  %137 = sext i32 %i142 to i64, !dbg !89
  %138 = getelementptr inbounds float, float* %119, i64 %137, !dbg !89
  %139 = load float, float* %138, align 4, !dbg !89
  %140 = load [0 x float]*, [0 x float]** %68, align 8, !dbg !89
  %141 = load i32, i32* %63, align 4, !dbg !89
  %142 = load [0 x i32]*, [0 x i32]** %43, align 8, !dbg !89
  %143 = getelementptr inbounds [0 x i32], [0 x i32]* %142, i64 0, i64 1, !dbg !89
  %144 = load i32, i32* %143, align 4, !dbg !89
  %145 = load float, float* %73, align 4, !dbg !89
  %146 = load float, float* %75, align 4, !dbg !89
  %147 = getelementptr inbounds [0 x i32], [0 x i32]* %142, i64 0, i64 0, !dbg !89
  %148 = load i32, i32* %147, align 4, !dbg !89
  %149 = load float, float* %80, align 4, !dbg !89
  %150 = load float, float* %82, align 4, !dbg !89
  %151 = sext i32 %141 to i64, !dbg !89
  %152 = getelementptr inbounds [0 x float], [0 x float]* %140, i64 0, i64 %151, !dbg !89
  %153 = sext i32 %88 to i64, !dbg !89
  %154 = getelementptr inbounds float, float* %152, i64 %153, !dbg !89
  %155 = load float, float* %154, align 4, !dbg !89
  %156 = mul nsw i32 %148, %size, !dbg !89
  %i143 = add nsw i32 %88, %156, !dbg !89
  %157 = sext i32 %i143 to i64, !dbg !89
  %158 = getelementptr inbounds float, float* %152, i64 %157, !dbg !89
  %159 = load float, float* %158, align 4, !dbg !89
  %160 = load [0 x i32]*, [0 x i32]** %43, align 8, !dbg !89
  %161 = getelementptr inbounds [0 x i32], [0 x i32]* %160, i64 0, i64 0, !dbg !89
  %162 = load i32, i32* %161, align 4, !dbg !89
  %163 = load float, float* %80, align 4, !dbg !89
  %164 = load float, float* %82, align 4, !dbg !89
  %165 = mul nsw i32 %144, %size, !dbg !89
  %i144 = add nsw i32 %88, %165, !dbg !89
  %166 = sext i32 %i144 to i64, !dbg !89
  %167 = getelementptr inbounds float, float* %152, i64 %166, !dbg !89
  %168 = load float, float* %167, align 4, !dbg !89
  %169 = mul nsw i32 %162, %size, !dbg !89
  %i145 = add nsw i32 %i144, %169, !dbg !89
  %170 = sext i32 %i145 to i64, !dbg !89
  %171 = getelementptr inbounds float, float* %152, i64 %170, !dbg !89
  %172 = load float, float* %171, align 4, !dbg !89
  %173 = load [0 x float]*, [0 x float]** %68, align 8, !dbg !89
  %174 = load i32, i32* %63, align 4, !dbg !89
  %175 = load [0 x i32]*, [0 x i32]** %43, align 8, !dbg !89
  %176 = getelementptr inbounds [0 x i32], [0 x i32]* %175, i64 0, i64 1, !dbg !89
  %177 = load i32, i32* %176, align 4, !dbg !89
  %178 = load float, float* %73, align 4, !dbg !89
  %179 = load float, float* %75, align 4, !dbg !89
  %180 = getelementptr inbounds [0 x i32], [0 x i32]* %175, i64 0, i64 0, !dbg !89
  %181 = load i32, i32* %180, align 4, !dbg !89
  %182 = load float, float* %80, align 4, !dbg !89
  %183 = load float, float* %82, align 4, !dbg !89
  %184 = add nsw i32 %174, 1, !dbg !89
  %185 = sext i32 %184 to i64, !dbg !89
  %186 = getelementptr inbounds [0 x float], [0 x float]* %173, i64 0, i64 %185, !dbg !89
  %187 = sext i32 %88 to i64, !dbg !89
  %188 = getelementptr inbounds float, float* %186, i64 %187, !dbg !89
  %189 = load float, float* %188, align 4, !dbg !89
  %190 = mul nsw i32 %181, %size, !dbg !89
  %i146 = add nsw i32 %88, %190, !dbg !89
  %191 = sext i32 %i146 to i64, !dbg !89
  %192 = getelementptr inbounds float, float* %186, i64 %191, !dbg !89
  %193 = load float, float* %192, align 4, !dbg !89
  %194 = load [0 x i32]*, [0 x i32]** %43, align 8, !dbg !89
  %195 = getelementptr inbounds [0 x i32], [0 x i32]* %194, i64 0, i64 0, !dbg !89
  %196 = load i32, i32* %195, align 4, !dbg !89
  %197 = load float, float* %80, align 4, !dbg !89
  %198 = load float, float* %82, align 4, !dbg !89
  %199 = mul nsw i32 %177, %size, !dbg !89
  %i147 = add nsw i32 %88, %199, !dbg !89
  %200 = sext i32 %i147 to i64, !dbg !89
  %201 = getelementptr inbounds float, float* %186, i64 %200, !dbg !89
  %202 = load float, float* %201, align 4, !dbg !89
  %203 = mul nsw i32 %196, %size, !dbg !89
  %i148 = add nsw i32 %i147, %203, !dbg !89
  %204 = sext i32 %i148 to i64, !dbg !89
  %205 = getelementptr inbounds float, float* %186, i64 %204, !dbg !89
  %206 = load float, float* %205, align 4, !dbg !89
  %207 = getelementptr inbounds %3, %3* %47, i64 0, i32 0, !dbg !89
  %208 = load float, float* %207, align 4, !dbg !89
  %209 = getelementptr inbounds %0, %0* %sampler_4105552, i64 0, i32 3, i32 2, i32 1, !dbg !89
  %210 = load float, float* %209, align 4, !dbg !89
  %211 = fmul float %17, %17, !dbg !89
  %212 = fmul float %19, %19, !dbg !89
  %213 = fadd float %211, %212, !dbg !89
  %214 = call float @llvm.sqrt.f32(float %213), !dbg !89
  %215 = getelementptr inbounds %3, %3* %u_wm_4105637, i64 0, i32 0, !dbg !90
  %216 = load float, float* %215, align 8, !dbg !90
  %217 = fmul float %216, 0x4033BD3CE0000000, !dbg !90
  %218 = fmul float %217, %214, !dbg !90
  %219 = fcmp ogt float %218, 0x3EB0C6F7A0000000, !dbg !90
  %phi.bo = fmul float %218, 4.000000e+00, !dbg !90
  %maxf_cont23 = select i1 %219, float %phi.bo, float 0x3ED0C6F7A0000000, !dbg !90
  %220 = extractvalue %6 %41, 1, !dbg !91
  %221 = fsub float %57, %62, !dbg !91
  %222 = fsub float 1.000000e+00, %221, !dbg !91
  %223 = fsub float %50, %55, !dbg !91
  %224 = fsub float 1.000000e+00, %223, !dbg !91
  %225 = fmul float %91, %81, !dbg !91
  %226 = fmul float %95, %83, !dbg !91
  %227 = fadd float %225, %226, !dbg !91
  %228 = fmul float %227, %74, !dbg !91
  %229 = fmul float %104, %99, !dbg !91
  %230 = fmul float %108, %100, !dbg !91
  %231 = fadd float %229, %230, !dbg !91
  %232 = fmul float %231, %76, !dbg !91
  %233 = fadd float %228, %232, !dbg !91
  %234 = fmul float %224, %233, !dbg !91
  %235 = fmul float %122, %117, !dbg !91
  %236 = fmul float %126, %118, !dbg !91
  %237 = fadd float %235, %236, !dbg !91
  %238 = fmul float %237, %113, !dbg !91
  %239 = fmul float %135, %130, !dbg !91
  %240 = fmul float %139, %131, !dbg !91
  %241 = fadd float %239, %240, !dbg !91
  %242 = fmul float %241, %114, !dbg !91
  %243 = fadd float %238, %242, !dbg !91
  %244 = fmul float %223, %243, !dbg !91
  %245 = fadd float %234, %244, !dbg !91
  %246 = fmul float %222, %245, !dbg !91
  %247 = fmul float %155, %149, !dbg !91
  %248 = fmul float %159, %150, !dbg !91
  %249 = fadd float %247, %248, !dbg !91
  %250 = fmul float %249, %145, !dbg !91
  %251 = fmul float %168, %163, !dbg !91
  %252 = fmul float %172, %164, !dbg !91
  %253 = fadd float %251, %252, !dbg !91
  %254 = fmul float %253, %146, !dbg !91
  %255 = fadd float %250, %254, !dbg !91
  %256 = fmul float %224, %255, !dbg !91
  %257 = fmul float %189, %182, !dbg !91
  %258 = fmul float %193, %183, !dbg !91
  %259 = fadd float %257, %258, !dbg !91
  %260 = fmul float %259, %178, !dbg !91
  %261 = fmul float %202, %197, !dbg !91
  %262 = fmul float %206, %198, !dbg !91
  %263 = fadd float %261, %262, !dbg !91
  %264 = fmul float %263, %179, !dbg !91
  %265 = fadd float %260, %264, !dbg !91
  %266 = fmul float %223, %265, !dbg !91
  %267 = fadd float %256, %266, !dbg !91
  %268 = fmul float %221, %267, !dbg !91
  %269 = fadd float %246, %268, !dbg !91
  %hprod = fmul float %208, %210, !dbg !91
  %270 = fmul float %269, %hprod, !dbg !91
  %271 = fmul float %220, %270, !dbg !91
  %272 = fmul float %.unpack, %17, !dbg !91
  %273 = fmul float %.unpack50, %19, !dbg !91
  %274 = fadd float %272, %273, !dbg !91
  %275 = fmul float %.unpack52, %21, !dbg !91
  %276 = fadd float %274, %275, !dbg !91
  %jacobian = fmul float %maxf_cont23, %276, !dbg !91
  %277 = fdiv float %271, %jacobian, !dbg !91
  br label %pdf_brdf_cont, !dbg !91

expr_true24:                                      ; preds = %_cont11, %continue
  %278 = load [0 x i32]*, [0 x i32]** %44, align 8, !dbg !87
  %279 = load i32, i32* %dim_4105669, align 4, !dbg !87
  %280 = sext i32 %279 to i64, !dbg !87
  %281 = getelementptr inbounds [0 x i32], [0 x i32]* %278, i64 0, i64 %280, !dbg !87
  %282 = load i32, i32* %281, align 4, !dbg !87
  %283 = icmp eq i32 %282, 1, !dbg !87
  br i1 %283, label %expr_true35, label %expr_false25, !dbg !87

expr_false25:                                     ; preds = %expr_true24
  store float %15, float* %dim_param_4105711, align 4, !dbg !92
  %284 = load i32, i32* %dim_4105669, align 4, !dbg !92
  %285 = icmp eq i32 %284, 1, !dbg !92
  %spec.store.select = select i1 %285, float %14, float %15, !dbg !92
  store float %spec.store.select, float* %dim_param_4105711, align 4, !dbg !93
  %286 = call fastcc i32 @find_interval_eval_4088285(%1* nonnull %42, i32 %284, float %spec.store.select), !dbg !94
  %287 = load [0 x float]*, [0 x float]** %45, align 8, !dbg !95
  %288 = load i32, i32* %dim_4105669, align 4, !dbg !95
  %289 = load i32, i32* %46, align 4, !dbg !95
  %290 = mul nsw i32 %288, %289, !dbg !95
  %291 = add nsw i32 %290, %286, !dbg !95
  %292 = sext i32 %291 to i64, !dbg !95
  %293 = getelementptr inbounds [0 x float], [0 x float]* %287, i64 0, i64 %292, !dbg !95
  %294 = load float, float* %293, align 4, !dbg !95
  %295 = load [0 x float]*, [0 x float]** %45, align 8, !dbg !95
  %296 = load i32, i32* %dim_4105669, align 4, !dbg !95
  %297 = load i32, i32* %46, align 4, !dbg !95
  %298 = mul nsw i32 %296, %297, !dbg !95
  %299 = add nsw i32 %298, %286, !dbg !95
  %300 = add nsw i32 %299, 1, !dbg !95
  %301 = sext i32 %300 to i64, !dbg !95
  %302 = getelementptr inbounds [0 x float], [0 x float]* %295, i64 0, i64 %301, !dbg !95
  %303 = load float, float* %302, align 4, !dbg !95
  %304 = load i32, i32* %dim_4105669, align 4, !dbg !95
  %305 = load float, float* %dim_param_4105711, align 4, !dbg !95
  %306 = fsub float %305, %294, !dbg !95
  %307 = fsub float %303, %294, !dbg !95
  %308 = fdiv float %306, %307, !dbg !95
  %309 = fcmp olt float %308, 0.000000e+00, !dbg !95
  %310 = fcmp ogt float %308, 1.000000e+00, !dbg !95
  %. = select i1 %310, float 1.000000e+00, float %308, !dbg !95
  %clampf_cont34 = select i1 %309, float 0.000000e+00, float %., !dbg !95
  %311 = shl nsw i32 %304, 1, !dbg !96
  %312 = or i32 %311, 1, !dbg !96
  %313 = sext i32 %312 to i64, !dbg !96
  %314 = getelementptr inbounds [4 x float], [4 x float]* %param_weight_4105693, i64 0, i64 %313, !dbg !96
  store float %clampf_cont34, float* %314, align 4, !dbg !96
  %315 = load i32, i32* %dim_4105669, align 4, !dbg !96
  %316 = shl nsw i32 %315, 1, !dbg !96
  %317 = or i32 %316, 1, !dbg !96
  %318 = sext i32 %317 to i64, !dbg !96
  %319 = getelementptr inbounds [4 x float], [4 x float]* %param_weight_4105693, i64 0, i64 %318, !dbg !96
  %320 = load float, float* %319, align 4, !dbg !96
  %321 = shl nsw i32 %315, 1, !dbg !96
  %322 = sext i32 %321 to i64, !dbg !96
  %323 = getelementptr inbounds [4 x float], [4 x float]* %param_weight_4105693, i64 0, i64 %322, !dbg !96
  %324 = fsub float 1.000000e+00, %320, !dbg !96
  store float %324, float* %323, align 4, !dbg !96
  %325 = load [0 x i32]*, [0 x i32]** %43, align 8, !dbg !96
  %326 = load i32, i32* %dim_4105669, align 4, !dbg !96
  %327 = sext i32 %326 to i64, !dbg !96
  %328 = getelementptr inbounds [0 x i32], [0 x i32]* %325, i64 0, i64 %327, !dbg !96
  %329 = load i32, i32* %328, align 4, !dbg !96
  %330 = load i32, i32* %slice_offset_4105804, align 4, !dbg !96
  %331 = mul nsw i32 %329, %286, !dbg !96
  %332 = add nsw i32 %330, %331, !dbg !96
  store i32 %332, i32* %slice_offset_4105804, align 4, !dbg !96
  %333 = load i32, i32* %dim_4105669, align 4, !dbg !96
  br label %continue, !dbg !96

expr_true35:                                      ; preds = %expr_true24
  %334 = load i32, i32* %dim_4105669, align 4, !dbg !92
  %335 = shl nsw i32 %334, 1, !dbg !92
  %336 = sext i32 %335 to i64, !dbg !92
  %337 = getelementptr inbounds [4 x float], [4 x float]* %param_weight_4105693, i64 0, i64 %336, !dbg !92
  store float 1.000000e+00, float* %337, align 4, !dbg !92
  %338 = load i32, i32* %dim_4105669, align 4, !dbg !92
  %339 = shl nsw i32 %338, 1, !dbg !92
  %340 = or i32 %339, 1, !dbg !92
  %341 = sext i32 %340 to i64, !dbg !92
  %342 = getelementptr inbounds [4 x float], [4 x float]* %param_weight_4105693, i64 0, i64 %341, !dbg !92
  store float 0.000000e+00, float* %342, align 4, !dbg !92
  %343 = load i32, i32* %dim_4105669, align 4, !dbg !92
  br label %continue, !dbg !92

continue:                                         ; preds = %expr_true35, %expr_false25
  %storemerge.in = phi i32 [ %333, %expr_false25 ], [ %343, %expr_true35 ]
  %storemerge = add nsw i32 %storemerge.in, 1, !dbg !93
  store i32 %storemerge, i32* %dim_4105669, align 4, !dbg !93
  %344 = icmp slt i32 %storemerge.in, 1, !dbg !86
  br i1 %344, label %expr_true24, label %expr_false14, !dbg !86

pdf_brdf_cont:                                    ; preds = %test_pdf_brdf, %expr_false14
  %res = phi float [ %277, %expr_false14 ], [ 0.000000e+00, %test_pdf_brdf ], !dbg !97
  store float %res, float* %result_4105555, align 4, !dbg !97
  ret void, !dbg !97
}

define internal fastcc float @elevation_4105594(%4 %v_4105596) unnamed_addr !dbg !98 {
elevation:
  %0 = extractvalue %4 %v_4105596, 0, !dbg !100
  %1 = extractvalue %4 %v_4105596, 1, !dbg !100
  %2 = extractvalue %4 %v_4105596, 2, !dbg !100
  %3 = fadd float %2, -1.000000e+00, !dbg !100
  %4 = fmul float %0, %0, !dbg !100
  %5 = fmul float %1, %1, !dbg !100
  %6 = fadd float %4, %5, !dbg !100
  %7 = fmul float %3, %3, !dbg !100
  %8 = fadd float %6, %7, !dbg !100
  %9 = call float @llvm.sqrt.f32(float %8), !dbg !100
  %10 = fmul float %9, 5.000000e-01, !dbg !101
  %11 = call float @asinf(float %10), !dbg !101
  %12 = fmul float %11, 2.000000e+00, !dbg !102
  ret float %12, !dbg !102
}

define internal fastcc %6 @invert_warp2D2_4093932(%1* %warp_4093934, %3 %sample_4093935, float %dim_param_4093936, float %theta_i_4093937) unnamed_addr !dbg !103 {
invert_warp2D2:
  %dim_param_4093984 = alloca float, align 4
  %sample_n_4094103 = alloca %3, align 8
  %dim_4093943 = alloca i32, align 4
  %slice_offset_4094077 = alloca i32, align 4
  %param_weight_4093966 = alloca [4 x float], align 4
  %param_weight_4093966.repack = getelementptr inbounds [4 x float], [4 x float]* %param_weight_4093966, i64 0, i64 0, !dbg !105
  store float 0.000000e+00, float* %param_weight_4093966.repack, align 4, !dbg !105
  %param_weight_4093966.repack35 = getelementptr inbounds [4 x float], [4 x float]* %param_weight_4093966, i64 0, i64 1, !dbg !105
  store float 0.000000e+00, float* %param_weight_4093966.repack35, align 4, !dbg !105
  %param_weight_4093966.repack36 = getelementptr inbounds [4 x float], [4 x float]* %param_weight_4093966, i64 0, i64 2, !dbg !105
  store float 0.000000e+00, float* %param_weight_4093966.repack36, align 4, !dbg !105
  %param_weight_4093966.repack37 = getelementptr inbounds [4 x float], [4 x float]* %param_weight_4093966, i64 0, i64 3, !dbg !105
  store float 0.000000e+00, float* %param_weight_4093966.repack37, align 4, !dbg !105
  store i32 0, i32* %slice_offset_4094077, align 4, !dbg !105
  store i32 0, i32* %dim_4093943, align 4, !dbg !105
  %0 = getelementptr inbounds %1, %1* %warp_4093934, i64 0, i32 4, !dbg !105
  %1 = getelementptr inbounds %1, %1* %warp_4093934, i64 0, i32 3, !dbg !105
  %2 = getelementptr inbounds %1, %1* %warp_4093934, i64 0, i32 5, !dbg !105
  %3 = getelementptr inbounds %1, %1* %warp_4093934, i64 0, i32 6, !dbg !105
  br label %expr_true, !dbg !106

expr_false:                                       ; preds = %continue
  %4 = getelementptr inbounds %1, %1* %warp_4093934, i64 0, i32 2, !dbg !107
  %.elt = getelementptr inbounds %3, %3* %4, i64 0, i32 0, !dbg !107
  %.unpack = load float, float* %.elt, align 4, !dbg !107
  %.elt38 = getelementptr inbounds %1, %1* %warp_4093934, i64 0, i32 2, i32 1, !dbg !107
  %.unpack39 = load float, float* %.elt38, align 4, !dbg !107
  %5 = extractvalue %3 %sample_4093935, 0, !dbg !107
  %6 = fmul float %5, %.unpack, !dbg !107
  %7 = extractvalue %3 %sample_4093935, 1, !dbg !107
  %8 = fmul float %7, %.unpack39, !dbg !107
  %sample_n_4094103.repack = getelementptr inbounds %3, %3* %sample_n_4094103, i64 0, i32 0, !dbg !107
  store float %6, float* %sample_n_4094103.repack, align 8, !dbg !107
  %sample_n_4094103.repack41 = getelementptr inbounds %3, %3* %sample_n_4094103, i64 0, i32 1, !dbg !107
  store float %8, float* %sample_n_4094103.repack41, align 4, !dbg !107
  %.elt43 = getelementptr inbounds %1, %1* %warp_4093934, i64 0, i32 0, i32 0, !dbg !107
  %.unpack44 = load i32, i32* %.elt43, align 4, !dbg !107
  %.elt45 = getelementptr inbounds %1, %1* %warp_4093934, i64 0, i32 0, i32 1, !dbg !107
  %.unpack46 = load i32, i32* %.elt45, align 4, !dbg !107
  %9 = sitofp i32 %.unpack44 to float, !dbg !107
  %10 = fadd float %9, -2.000000e+00, !dbg !107
  %11 = fcmp olt float %6, %10, !dbg !107
  %12 = select i1 %11, float %6, float %10, !dbg !107
  %13 = fptosi float %12 to i32, !dbg !107
  %14 = sitofp i32 %13 to float, !dbg !107
  %15 = fsub float %6, %14, !dbg !107
  %16 = sitofp i32 %.unpack46 to float, !dbg !107
  %17 = fadd float %16, -2.000000e+00, !dbg !107
  %18 = fcmp olt float %8, %17, !dbg !107
  %19 = select i1 %18, float %8, float %17, !dbg !107
  %20 = fptosi float %19 to i32, !dbg !107
  %21 = sitofp i32 %20 to float, !dbg !107
  %22 = fsub float %8, %21, !dbg !107
  %sample_n_4094103.repack47 = getelementptr inbounds %3, %3* %sample_n_4094103, i64 0, i32 0, !dbg !107
  store float %15, float* %sample_n_4094103.repack47, align 8, !dbg !107
  %sample_n_4094103.repack49 = getelementptr inbounds %3, %3* %sample_n_4094103, i64 0, i32 1, !dbg !107
  store float %22, float* %sample_n_4094103.repack49, align 4, !dbg !107
  %23 = getelementptr inbounds %1, %1* %warp_4093934, i64 0, i32 0, i32 0, !dbg !107
  %24 = load i32, i32* %23, align 4, !dbg !107
  %25 = getelementptr inbounds %1, %1* %warp_4093934, i64 0, i32 0, i32 1, !dbg !107
  %26 = load i32, i32* %25, align 4, !dbg !107
  %27 = load i32, i32* %slice_offset_4094077, align 4, !dbg !107
  %28 = getelementptr inbounds %1, %1* %warp_4093934, i64 0, i32 7, !dbg !107
  %29 = load [0 x float]*, [0 x float]** %28, align 8, !dbg !107
  %30 = load [0 x i32]*, [0 x i32]** %0, align 8, !dbg !107
  %31 = getelementptr inbounds [0 x i32], [0 x i32]* %30, i64 0, i64 1, !dbg !107
  %32 = load i32, i32* %31, align 4, !dbg !107
  %33 = getelementptr inbounds [4 x float], [4 x float]* %param_weight_4093966, i64 0, i64 2, !dbg !107
  %34 = load float, float* %33, align 4, !dbg !107
  %35 = getelementptr inbounds [4 x float], [4 x float]* %param_weight_4093966, i64 0, i64 3, !dbg !107
  %36 = load float, float* %35, align 4, !dbg !107
  %37 = load [0 x i32]*, [0 x i32]** %0, align 8, !dbg !107
  %38 = getelementptr inbounds [0 x i32], [0 x i32]* %37, i64 0, i64 0, !dbg !107
  %39 = load i32, i32* %38, align 4, !dbg !107
  %40 = getelementptr inbounds [4 x float], [4 x float]* %param_weight_4093966, i64 0, i64 0, !dbg !107
  %41 = load float, float* %40, align 4, !dbg !107
  %42 = getelementptr inbounds [4 x float], [4 x float]* %param_weight_4093966, i64 0, i64 1, !dbg !107
  %43 = load float, float* %42, align 4, !dbg !107
  %44 = mul nsw i32 %24, %20, !dbg !107
  %offset = add nsw i32 %44, %13, !dbg !107
  %slice_size = mul nsw i32 %24, %26, !dbg !107
  %45 = mul nsw i32 %27, %slice_size, !dbg !107
  %46 = add nsw i32 %offset, %45, !dbg !107
  %47 = sext i32 %46 to i64, !dbg !107
  %48 = getelementptr inbounds [0 x float], [0 x float]* %29, i64 0, i64 %47, !dbg !107
  %49 = load float, float* %48, align 4, !dbg !107
  %50 = mul nsw i32 %39, %slice_size, !dbg !107
  %i1 = add nsw i32 %46, %50, !dbg !107
  %51 = sext i32 %i1 to i64, !dbg !107
  %52 = getelementptr inbounds [0 x float], [0 x float]* %29, i64 0, i64 %51, !dbg !107
  %53 = load float, float* %52, align 4, !dbg !107
  %54 = load [0 x i32]*, [0 x i32]** %0, align 8, !dbg !107
  %55 = getelementptr inbounds [0 x i32], [0 x i32]* %54, i64 0, i64 0, !dbg !107
  %56 = load i32, i32* %55, align 4, !dbg !107
  %57 = load float, float* %40, align 4, !dbg !107
  %58 = load float, float* %42, align 4, !dbg !107
  %59 = mul nsw i32 %32, %slice_size, !dbg !107
  %i19 = add nsw i32 %46, %59, !dbg !107
  %60 = sext i32 %i19 to i64, !dbg !107
  %61 = getelementptr inbounds [0 x float], [0 x float]* %29, i64 0, i64 %60, !dbg !107
  %62 = load float, float* %61, align 4, !dbg !107
  %63 = mul nsw i32 %56, %slice_size, !dbg !107
  %i110 = add nsw i32 %i19, %63, !dbg !107
  %64 = sext i32 %i110 to i64, !dbg !107
  %65 = getelementptr inbounds [0 x float], [0 x float]* %29, i64 0, i64 %64, !dbg !107
  %66 = load float, float* %65, align 4, !dbg !107
  %67 = load [0 x float]*, [0 x float]** %28, align 8, !dbg !107
  %68 = load [0 x i32]*, [0 x i32]** %0, align 8, !dbg !107
  %69 = getelementptr inbounds [0 x i32], [0 x i32]* %68, i64 0, i64 1, !dbg !107
  %70 = load i32, i32* %69, align 4, !dbg !107
  %71 = load float, float* %33, align 4, !dbg !107
  %72 = load float, float* %35, align 4, !dbg !107
  %73 = getelementptr inbounds [0 x i32], [0 x i32]* %68, i64 0, i64 0, !dbg !107
  %74 = load i32, i32* %73, align 4, !dbg !107
  %75 = load float, float* %40, align 4, !dbg !107
  %76 = load float, float* %42, align 4, !dbg !107
  %77 = getelementptr inbounds [0 x float], [0 x float]* %67, i64 0, i64 1, !dbg !107
  %78 = sext i32 %46 to i64, !dbg !107
  %79 = getelementptr inbounds float, float* %77, i64 %78, !dbg !107
  %80 = load float, float* %79, align 4, !dbg !107
  %81 = mul nsw i32 %74, %slice_size, !dbg !107
  %i111 = add nsw i32 %46, %81, !dbg !107
  %82 = sext i32 %i111 to i64, !dbg !107
  %83 = getelementptr inbounds float, float* %77, i64 %82, !dbg !107
  %84 = load float, float* %83, align 4, !dbg !107
  %85 = load [0 x i32]*, [0 x i32]** %0, align 8, !dbg !107
  %86 = getelementptr inbounds [0 x i32], [0 x i32]* %85, i64 0, i64 0, !dbg !107
  %87 = load i32, i32* %86, align 4, !dbg !107
  %88 = load float, float* %40, align 4, !dbg !107
  %89 = load float, float* %42, align 4, !dbg !107
  %90 = mul nsw i32 %70, %slice_size, !dbg !107
  %i112 = add nsw i32 %46, %90, !dbg !107
  %91 = sext i32 %i112 to i64, !dbg !107
  %92 = getelementptr inbounds float, float* %77, i64 %91, !dbg !107
  %93 = load float, float* %92, align 4, !dbg !107
  %94 = mul nsw i32 %87, %slice_size, !dbg !107
  %i113 = add nsw i32 %i112, %94, !dbg !107
  %95 = sext i32 %i113 to i64, !dbg !107
  %96 = getelementptr inbounds float, float* %77, i64 %95, !dbg !107
  %97 = load float, float* %96, align 4, !dbg !107
  %98 = load [0 x float]*, [0 x float]** %28, align 8, !dbg !107
  %99 = load i32, i32* %23, align 4, !dbg !107
  %100 = load [0 x i32]*, [0 x i32]** %0, align 8, !dbg !107
  %101 = getelementptr inbounds [0 x i32], [0 x i32]* %100, i64 0, i64 1, !dbg !107
  %102 = load i32, i32* %101, align 4, !dbg !107
  %103 = load float, float* %33, align 4, !dbg !107
  %104 = load float, float* %35, align 4, !dbg !107
  %105 = getelementptr inbounds [0 x i32], [0 x i32]* %100, i64 0, i64 0, !dbg !107
  %106 = load i32, i32* %105, align 4, !dbg !107
  %107 = load float, float* %40, align 4, !dbg !107
  %108 = load float, float* %42, align 4, !dbg !107
  %109 = sext i32 %99 to i64, !dbg !107
  %110 = getelementptr inbounds [0 x float], [0 x float]* %98, i64 0, i64 %109, !dbg !107
  %111 = sext i32 %46 to i64, !dbg !107
  %112 = getelementptr inbounds float, float* %110, i64 %111, !dbg !107
  %113 = load float, float* %112, align 4, !dbg !107
  %114 = mul nsw i32 %106, %slice_size, !dbg !107
  %i114 = add nsw i32 %46, %114, !dbg !107
  %115 = sext i32 %i114 to i64, !dbg !107
  %116 = getelementptr inbounds float, float* %110, i64 %115, !dbg !107
  %117 = load float, float* %116, align 4, !dbg !107
  %118 = load [0 x i32]*, [0 x i32]** %0, align 8, !dbg !107
  %119 = getelementptr inbounds [0 x i32], [0 x i32]* %118, i64 0, i64 0, !dbg !107
  %120 = load i32, i32* %119, align 4, !dbg !107
  %121 = load float, float* %40, align 4, !dbg !107
  %122 = load float, float* %42, align 4, !dbg !107
  %123 = mul nsw i32 %102, %slice_size, !dbg !107
  %i115 = add nsw i32 %46, %123, !dbg !107
  %124 = sext i32 %i115 to i64, !dbg !107
  %125 = getelementptr inbounds float, float* %110, i64 %124, !dbg !107
  %126 = load float, float* %125, align 4, !dbg !107
  %127 = mul nsw i32 %120, %slice_size, !dbg !107
  %i116 = add nsw i32 %i115, %127, !dbg !107
  %128 = sext i32 %i116 to i64, !dbg !107
  %129 = getelementptr inbounds float, float* %110, i64 %128, !dbg !107
  %130 = load float, float* %129, align 4, !dbg !107
  %131 = load [0 x float]*, [0 x float]** %28, align 8, !dbg !107
  %132 = load i32, i32* %23, align 4, !dbg !107
  %133 = load [0 x i32]*, [0 x i32]** %0, align 8, !dbg !107
  %134 = getelementptr inbounds [0 x i32], [0 x i32]* %133, i64 0, i64 1, !dbg !107
  %135 = load i32, i32* %134, align 4, !dbg !107
  %136 = load float, float* %33, align 4, !dbg !107
  %137 = load float, float* %35, align 4, !dbg !107
  %138 = getelementptr inbounds [0 x i32], [0 x i32]* %133, i64 0, i64 0, !dbg !107
  %139 = load i32, i32* %138, align 4, !dbg !107
  %140 = load float, float* %40, align 4, !dbg !107
  %141 = load float, float* %42, align 4, !dbg !107
  %142 = add nsw i32 %132, 1, !dbg !107
  %143 = sext i32 %142 to i64, !dbg !107
  %144 = getelementptr inbounds [0 x float], [0 x float]* %131, i64 0, i64 %143, !dbg !107
  %145 = sext i32 %46 to i64, !dbg !107
  %146 = getelementptr inbounds float, float* %144, i64 %145, !dbg !107
  %147 = load float, float* %146, align 4, !dbg !107
  %148 = mul nsw i32 %139, %slice_size, !dbg !107
  %i117 = add nsw i32 %46, %148, !dbg !107
  %149 = sext i32 %i117 to i64, !dbg !107
  %150 = getelementptr inbounds float, float* %144, i64 %149, !dbg !107
  %151 = load float, float* %150, align 4, !dbg !107
  %152 = load [0 x i32]*, [0 x i32]** %0, align 8, !dbg !107
  %153 = getelementptr inbounds [0 x i32], [0 x i32]* %152, i64 0, i64 0, !dbg !107
  %154 = load i32, i32* %153, align 4, !dbg !107
  %155 = load float, float* %40, align 4, !dbg !107
  %156 = load float, float* %42, align 4, !dbg !107
  %157 = mul nsw i32 %135, %slice_size, !dbg !107
  %i118 = add nsw i32 %46, %157, !dbg !107
  %158 = sext i32 %i118 to i64, !dbg !107
  %159 = getelementptr inbounds float, float* %144, i64 %158, !dbg !107
  %160 = load float, float* %159, align 4, !dbg !107
  %161 = mul nsw i32 %154, %slice_size, !dbg !107
  %i119 = add nsw i32 %i118, %161, !dbg !107
  %162 = sext i32 %i119 to i64, !dbg !107
  %163 = getelementptr inbounds float, float* %144, i64 %162, !dbg !107
  %164 = load float, float* %163, align 4, !dbg !107
  %165 = getelementptr inbounds %3, %3* %sample_n_4094103, i64 0, i32 0, !dbg !107
  %166 = fsub float 1.000000e+00, %22, !dbg !107
  %167 = fmul float %49, %41, !dbg !107
  %168 = fmul float %53, %43, !dbg !107
  %169 = fadd float %167, %168, !dbg !107
  %170 = fmul float %169, %34, !dbg !107
  %171 = fmul float %62, %57, !dbg !107
  %172 = fmul float %66, %58, !dbg !107
  %173 = fadd float %171, %172, !dbg !107
  %174 = fmul float %173, %36, !dbg !107
  %175 = fadd float %170, %174, !dbg !107
  %176 = fmul float %166, %175, !dbg !107
  %177 = fmul float %113, %107, !dbg !107
  %178 = fmul float %117, %108, !dbg !107
  %179 = fadd float %177, %178, !dbg !107
  %180 = fmul float %179, %103, !dbg !107
  %181 = fmul float %126, %121, !dbg !107
  %182 = fmul float %130, %122, !dbg !107
  %183 = fadd float %181, %182, !dbg !107
  %184 = fmul float %183, %104, !dbg !107
  %185 = fadd float %180, %184, !dbg !107
  %186 = fmul float %22, %185, !dbg !107
  %187 = fadd float %176, %186, !dbg !107
  %188 = fmul float %15, 5.000000e-01, !dbg !107
  %189 = fmul float %80, %75, !dbg !107
  %190 = fmul float %84, %76, !dbg !107
  %191 = fadd float %189, %190, !dbg !107
  %192 = fmul float %191, %71, !dbg !107
  %193 = fmul float %93, %88, !dbg !107
  %194 = fmul float %97, %89, !dbg !107
  %195 = fadd float %193, %194, !dbg !107
  %196 = fmul float %195, %72, !dbg !107
  %197 = fadd float %192, %196, !dbg !107
  %198 = fmul float %166, %197, !dbg !107
  %199 = fmul float %147, %140, !dbg !107
  %200 = fmul float %151, %141, !dbg !107
  %201 = fadd float %199, %200, !dbg !107
  %202 = fmul float %201, %136, !dbg !107
  %203 = fmul float %160, %155, !dbg !107
  %204 = fmul float %164, %156, !dbg !107
  %205 = fadd float %203, %204, !dbg !107
  %206 = fmul float %205, %137, !dbg !107
  %207 = fadd float %202, %206, !dbg !107
  %208 = fmul float %22, %207, !dbg !107
  %209 = fadd float %198, %208, !dbg !107
  %210 = fsub float %209, %187, !dbg !107
  %211 = fmul float %188, %210, !dbg !107
  %212 = fadd float %187, %211, !dbg !107
  %213 = fmul float %15, %212, !dbg !107
  store float %213, float* %165, align 8, !dbg !107
  %214 = getelementptr inbounds %1, %1* %warp_4093934, i64 0, i32 9, !dbg !107
  %215 = load [0 x float]*, [0 x float]** %214, align 8, !dbg !107
  %216 = load [0 x i32]*, [0 x i32]** %0, align 8, !dbg !107
  %217 = getelementptr inbounds [0 x i32], [0 x i32]* %216, i64 0, i64 1, !dbg !107
  %218 = load i32, i32* %217, align 4, !dbg !107
  %219 = load float, float* %33, align 4, !dbg !107
  %220 = load float, float* %35, align 4, !dbg !107
  %221 = getelementptr inbounds [0 x i32], [0 x i32]* %216, i64 0, i64 0, !dbg !107
  %222 = load i32, i32* %221, align 4, !dbg !107
  %223 = load float, float* %40, align 4, !dbg !107
  %224 = load float, float* %42, align 4, !dbg !107
  %225 = sext i32 %46 to i64, !dbg !107
  %226 = getelementptr inbounds [0 x float], [0 x float]* %215, i64 0, i64 %225, !dbg !107
  %227 = load float, float* %226, align 4, !dbg !107
  %228 = mul nsw i32 %222, %slice_size, !dbg !107
  %i120 = add nsw i32 %46, %228, !dbg !107
  %229 = sext i32 %i120 to i64, !dbg !107
  %230 = getelementptr inbounds [0 x float], [0 x float]* %215, i64 0, i64 %229, !dbg !107
  %231 = load float, float* %230, align 4, !dbg !107
  %232 = load [0 x i32]*, [0 x i32]** %0, align 8, !dbg !107
  %233 = getelementptr inbounds [0 x i32], [0 x i32]* %232, i64 0, i64 0, !dbg !107
  %234 = load i32, i32* %233, align 4, !dbg !107
  %235 = load float, float* %40, align 4, !dbg !107
  %236 = load float, float* %42, align 4, !dbg !107
  %237 = mul nsw i32 %218, %slice_size, !dbg !107
  %i121 = add nsw i32 %46, %237, !dbg !107
  %238 = sext i32 %i121 to i64, !dbg !107
  %239 = getelementptr inbounds [0 x float], [0 x float]* %215, i64 0, i64 %238, !dbg !107
  %240 = load float, float* %239, align 4, !dbg !107
  %241 = mul nsw i32 %234, %slice_size, !dbg !107
  %i122 = add nsw i32 %i121, %241, !dbg !107
  %242 = sext i32 %i122 to i64, !dbg !107
  %243 = getelementptr inbounds [0 x float], [0 x float]* %215, i64 0, i64 %242, !dbg !107
  %244 = load float, float* %243, align 4, !dbg !107
  %245 = load [0 x float]*, [0 x float]** %214, align 8, !dbg !107
  %246 = load i32, i32* %23, align 4, !dbg !107
  %247 = load [0 x i32]*, [0 x i32]** %0, align 8, !dbg !107
  %248 = getelementptr inbounds [0 x i32], [0 x i32]* %247, i64 0, i64 1, !dbg !107
  %249 = load i32, i32* %248, align 4, !dbg !107
  %250 = load float, float* %33, align 4, !dbg !107
  %251 = load float, float* %35, align 4, !dbg !107
  %252 = getelementptr inbounds [0 x i32], [0 x i32]* %247, i64 0, i64 0, !dbg !107
  %253 = load i32, i32* %252, align 4, !dbg !107
  %254 = load float, float* %40, align 4, !dbg !107
  %255 = load float, float* %42, align 4, !dbg !107
  %256 = sext i32 %246 to i64, !dbg !107
  %257 = getelementptr inbounds [0 x float], [0 x float]* %245, i64 0, i64 %256, !dbg !107
  %258 = sext i32 %46 to i64, !dbg !107
  %259 = getelementptr inbounds float, float* %257, i64 %258, !dbg !107
  %260 = load float, float* %259, align 4, !dbg !107
  %261 = mul nsw i32 %253, %slice_size, !dbg !107
  %i123 = add nsw i32 %46, %261, !dbg !107
  %262 = sext i32 %i123 to i64, !dbg !107
  %263 = getelementptr inbounds float, float* %257, i64 %262, !dbg !107
  %264 = load float, float* %263, align 4, !dbg !107
  %265 = load [0 x i32]*, [0 x i32]** %0, align 8, !dbg !107
  %266 = getelementptr inbounds [0 x i32], [0 x i32]* %265, i64 0, i64 0, !dbg !107
  %267 = load i32, i32* %266, align 4, !dbg !107
  %268 = load float, float* %40, align 4, !dbg !107
  %269 = load float, float* %42, align 4, !dbg !107
  %270 = mul nsw i32 %249, %slice_size, !dbg !107
  %i124 = add nsw i32 %46, %270, !dbg !107
  %271 = sext i32 %i124 to i64, !dbg !107
  %272 = getelementptr inbounds float, float* %257, i64 %271, !dbg !107
  %273 = load float, float* %272, align 4, !dbg !107
  %274 = mul nsw i32 %267, %slice_size, !dbg !107
  %i125 = add nsw i32 %i124, %274, !dbg !107
  %275 = sext i32 %i125 to i64, !dbg !107
  %276 = getelementptr inbounds float, float* %257, i64 %275, !dbg !107
  %277 = load float, float* %276, align 4, !dbg !107
  %278 = fmul float %227, %223, !dbg !107
  %279 = fmul float %231, %224, !dbg !107
  %280 = fadd float %278, %279, !dbg !107
  %281 = fmul float %280, %219, !dbg !107
  %282 = fmul float %240, %235, !dbg !107
  %283 = fmul float %244, %236, !dbg !107
  %284 = fadd float %282, %283, !dbg !107
  %285 = fmul float %284, %220, !dbg !107
  %286 = fadd float %281, %285, !dbg !107
  %287 = fmul float %166, %286, !dbg !107
  %288 = fmul float %260, %254, !dbg !107
  %289 = fmul float %264, %255, !dbg !107
  %290 = fadd float %288, %289, !dbg !107
  %291 = fmul float %290, %250, !dbg !107
  %292 = fmul float %273, %268, !dbg !107
  %293 = fmul float %277, %269, !dbg !107
  %294 = fadd float %292, %293, !dbg !107
  %295 = fmul float %294, %251, !dbg !107
  %296 = fadd float %291, %295, !dbg !107
  %297 = fmul float %22, %296, !dbg !107
  %298 = fadd float %287, %297, !dbg !107
  %299 = fadd float %213, %298, !dbg !107
  store float %299, float* %165, align 8, !dbg !107
  %300 = load i32, i32* %23, align 4, !dbg !107
  %301 = load i32, i32* %slice_offset_4094077, align 4, !dbg !107
  %302 = mul nsw i32 %300, %20, !dbg !107
  %303 = mul nsw i32 %301, %slice_size, !dbg !107
  %304 = add nsw i32 %302, %303, !dbg !107
  %305 = load [0 x float]*, [0 x float]** %214, align 8, !dbg !107
  %306 = load [0 x i32]*, [0 x i32]** %0, align 8, !dbg !107
  %307 = getelementptr inbounds [0 x i32], [0 x i32]* %306, i64 0, i64 1, !dbg !107
  %308 = load i32, i32* %307, align 4, !dbg !107
  %309 = load float, float* %33, align 4, !dbg !107
  %310 = load float, float* %35, align 4, !dbg !107
  %311 = getelementptr inbounds [0 x i32], [0 x i32]* %306, i64 0, i64 0, !dbg !107
  %312 = load i32, i32* %311, align 4, !dbg !107
  %313 = load float, float* %40, align 4, !dbg !107
  %314 = load float, float* %42, align 4, !dbg !107
  %315 = add nsw i32 %304, %300, !dbg !107
  %316 = add nsw i32 %315, -1, !dbg !107
  %317 = sext i32 %316 to i64, !dbg !107
  %318 = getelementptr inbounds [0 x float], [0 x float]* %305, i64 0, i64 %317, !dbg !107
  %319 = load float, float* %318, align 4, !dbg !107
  %320 = mul nsw i32 %312, %slice_size, !dbg !107
  %i126 = add nsw i32 %316, %320, !dbg !107
  %321 = sext i32 %i126 to i64, !dbg !107
  %322 = getelementptr inbounds [0 x float], [0 x float]* %305, i64 0, i64 %321, !dbg !107
  %323 = load float, float* %322, align 4, !dbg !107
  %324 = load [0 x i32]*, [0 x i32]** %0, align 8, !dbg !107
  %325 = getelementptr inbounds [0 x i32], [0 x i32]* %324, i64 0, i64 0, !dbg !107
  %326 = load i32, i32* %325, align 4, !dbg !107
  %327 = load float, float* %40, align 4, !dbg !107
  %328 = load float, float* %42, align 4, !dbg !107
  %329 = mul nsw i32 %308, %slice_size, !dbg !107
  %i127 = add nsw i32 %316, %329, !dbg !107
  %330 = sext i32 %i127 to i64, !dbg !107
  %331 = getelementptr inbounds [0 x float], [0 x float]* %305, i64 0, i64 %330, !dbg !107
  %332 = load float, float* %331, align 4, !dbg !107
  %333 = mul nsw i32 %326, %slice_size, !dbg !107
  %i128 = add nsw i32 %i127, %333, !dbg !107
  %334 = sext i32 %i128 to i64, !dbg !107
  %335 = getelementptr inbounds [0 x float], [0 x float]* %305, i64 0, i64 %334, !dbg !107
  %336 = load float, float* %335, align 4, !dbg !107
  %337 = load [0 x float]*, [0 x float]** %214, align 8, !dbg !107
  %338 = load i32, i32* %23, align 4, !dbg !107
  %339 = load [0 x i32]*, [0 x i32]** %0, align 8, !dbg !107
  %340 = getelementptr inbounds [0 x i32], [0 x i32]* %339, i64 0, i64 1, !dbg !107
  %341 = load i32, i32* %340, align 4, !dbg !107
  %342 = load float, float* %33, align 4, !dbg !107
  %343 = load float, float* %35, align 4, !dbg !107
  %344 = getelementptr inbounds [0 x i32], [0 x i32]* %339, i64 0, i64 0, !dbg !107
  %345 = load i32, i32* %344, align 4, !dbg !107
  %346 = load float, float* %40, align 4, !dbg !107
  %347 = load float, float* %42, align 4, !dbg !107
  %348 = shl nsw i32 %338, 1, !dbg !107
  %349 = add nsw i32 %348, -1, !dbg !107
  %350 = add nsw i32 %304, %349, !dbg !107
  %351 = sext i32 %350 to i64, !dbg !107
  %352 = getelementptr inbounds [0 x float], [0 x float]* %337, i64 0, i64 %351, !dbg !107
  %353 = load float, float* %352, align 4, !dbg !107
  %354 = mul nsw i32 %345, %slice_size, !dbg !107
  %i129 = add nsw i32 %350, %354, !dbg !107
  %355 = sext i32 %i129 to i64, !dbg !107
  %356 = getelementptr inbounds [0 x float], [0 x float]* %337, i64 0, i64 %355, !dbg !107
  %357 = load float, float* %356, align 4, !dbg !107
  %358 = load [0 x i32]*, [0 x i32]** %0, align 8, !dbg !107
  %359 = getelementptr inbounds [0 x i32], [0 x i32]* %358, i64 0, i64 0, !dbg !107
  %360 = load i32, i32* %359, align 4, !dbg !107
  %361 = load float, float* %40, align 4, !dbg !107
  %362 = load float, float* %42, align 4, !dbg !107
  %363 = mul nsw i32 %341, %slice_size, !dbg !107
  %i130 = add nsw i32 %350, %363, !dbg !107
  %364 = sext i32 %i130 to i64, !dbg !107
  %365 = getelementptr inbounds [0 x float], [0 x float]* %337, i64 0, i64 %364, !dbg !107
  %366 = load float, float* %365, align 4, !dbg !107
  %367 = mul nsw i32 %360, %slice_size, !dbg !107
  %i131 = add nsw i32 %i130, %367, !dbg !107
  %368 = sext i32 %i131 to i64, !dbg !107
  %369 = getelementptr inbounds [0 x float], [0 x float]* %337, i64 0, i64 %368, !dbg !107
  %370 = load float, float* %369, align 4, !dbg !107
  %371 = getelementptr inbounds %3, %3* %sample_n_4094103, i64 0, i32 1, !dbg !107
  %372 = load float, float* %371, align 4, !dbg !107
  %373 = fsub float 1.000000e+00, %372, !dbg !107
  %374 = fmul float %319, %313, !dbg !107
  %375 = fmul float %323, %314, !dbg !107
  %376 = fadd float %374, %375, !dbg !107
  %377 = fmul float %376, %309, !dbg !107
  %378 = fmul float %332, %327, !dbg !107
  %379 = fmul float %336, %328, !dbg !107
  %380 = fadd float %378, %379, !dbg !107
  %381 = fmul float %380, %310, !dbg !107
  %382 = fadd float %377, %381, !dbg !107
  %383 = fmul float %373, %382, !dbg !107
  %384 = fmul float %353, %346, !dbg !107
  %385 = fmul float %357, %347, !dbg !107
  %386 = fadd float %384, %385, !dbg !107
  %387 = fmul float %386, %342, !dbg !107
  %388 = fmul float %366, %361, !dbg !107
  %389 = fmul float %370, %362, !dbg !107
  %390 = fadd float %388, %389, !dbg !107
  %391 = fmul float %390, %343, !dbg !107
  %392 = fadd float %387, %391, !dbg !107
  %393 = fmul float %372, %392, !dbg !107
  %394 = fadd float %383, %393, !dbg !107
  %395 = fdiv float %299, %394, !dbg !107
  store float %395, float* %165, align 8, !dbg !107
  %396 = load float, float* %371, align 4, !dbg !107
  %397 = fmul float %396, 5.000000e-01, !dbg !107
  %398 = fsub float %392, %382, !dbg !107
  %399 = fmul float %397, %398, !dbg !107
  %400 = fadd float %382, %399, !dbg !107
  %401 = fmul float %396, %400, !dbg !107
  store float %401, float* %371, align 4, !dbg !107
  %402 = load i32, i32* %slice_offset_4094077, align 4, !dbg !107
  %403 = load i32, i32* %25, align 4, !dbg !107
  %404 = mul nsw i32 %402, %403, !dbg !107
  %405 = add nsw i32 %404, %20, !dbg !107
  %406 = getelementptr inbounds %1, %1* %warp_4093934, i64 0, i32 8, !dbg !107
  %407 = load [0 x float]*, [0 x float]** %406, align 8, !dbg !107
  %408 = load [0 x i32]*, [0 x i32]** %0, align 8, !dbg !107
  %409 = getelementptr inbounds [0 x i32], [0 x i32]* %408, i64 0, i64 1, !dbg !107
  %410 = load i32, i32* %409, align 4, !dbg !107
  %411 = load float, float* %33, align 4, !dbg !107
  %412 = load float, float* %35, align 4, !dbg !107
  %413 = getelementptr inbounds [0 x i32], [0 x i32]* %408, i64 0, i64 0, !dbg !107
  %414 = load i32, i32* %413, align 4, !dbg !107
  %415 = load float, float* %40, align 4, !dbg !107
  %416 = load float, float* %42, align 4, !dbg !107
  %417 = sext i32 %405 to i64, !dbg !107
  %418 = getelementptr inbounds [0 x float], [0 x float]* %407, i64 0, i64 %417, !dbg !107
  %419 = load float, float* %418, align 4, !dbg !107
  %420 = mul nsw i32 %414, %403, !dbg !107
  %i132 = add nsw i32 %405, %420, !dbg !107
  %421 = sext i32 %i132 to i64, !dbg !107
  %422 = getelementptr inbounds [0 x float], [0 x float]* %407, i64 0, i64 %421, !dbg !107
  %423 = load float, float* %422, align 4, !dbg !107
  %424 = load [0 x i32]*, [0 x i32]** %0, align 8, !dbg !107
  %425 = getelementptr inbounds [0 x i32], [0 x i32]* %424, i64 0, i64 0, !dbg !107
  %426 = load i32, i32* %425, align 4, !dbg !107
  %427 = load float, float* %40, align 4, !dbg !107
  %428 = load float, float* %42, align 4, !dbg !107
  %429 = mul nsw i32 %410, %403, !dbg !107
  %i133 = add nsw i32 %405, %429, !dbg !107
  %430 = sext i32 %i133 to i64, !dbg !107
  %431 = getelementptr inbounds [0 x float], [0 x float]* %407, i64 0, i64 %430, !dbg !107
  %432 = load float, float* %431, align 4, !dbg !107
  %433 = mul nsw i32 %426, %403, !dbg !107
  %i134 = add nsw i32 %i133, %433, !dbg !107
  %434 = sext i32 %i134 to i64, !dbg !107
  %435 = getelementptr inbounds [0 x float], [0 x float]* %407, i64 0, i64 %434, !dbg !107
  %436 = load float, float* %435, align 4, !dbg !107
  %437 = fmul float %419, %415, !dbg !107
  %438 = fmul float %423, %416, !dbg !107
  %439 = fadd float %437, %438, !dbg !107
  %440 = fmul float %439, %411, !dbg !107
  %441 = fmul float %432, %427, !dbg !107
  %442 = fmul float %436, %428, !dbg !107
  %443 = fadd float %441, %442, !dbg !107
  %444 = fmul float %443, %412, !dbg !107
  %445 = fadd float %440, %444, !dbg !107
  %446 = fadd float %401, %445, !dbg !107
  store float %446, float* %371, align 4, !dbg !107
  %447 = getelementptr inbounds %3, %3* %4, i64 0, i32 0, !dbg !107
  %448 = load float, float* %447, align 4, !dbg !107
  %449 = getelementptr inbounds %1, %1* %warp_4093934, i64 0, i32 2, i32 1, !dbg !107
  %450 = load float, float* %449, align 4, !dbg !107
  %451 = insertvalue %3 undef, float %395, 0, !dbg !107
  %452 = insertvalue %3 %451, float %446, 1, !dbg !107
  %453 = insertvalue %6 undef, %3 %452, 0, !dbg !107
  %454 = fsub float 1.000000e+00, %15, !dbg !107
  %455 = fmul float %454, %187, !dbg !107
  %456 = fmul float %15, %209, !dbg !107
  %457 = fadd float %455, %456, !dbg !107
  %458 = fmul float %448, %450, !dbg !107
  %459 = fmul float %457, %458, !dbg !107
  %460 = insertvalue %6 %453, float %459, 1, !dbg !107
  ret %6 %460, !dbg !107

expr_true:                                        ; preds = %invert_warp2D2, %continue
  %461 = load [0 x i32]*, [0 x i32]** %1, align 8, !dbg !107
  %462 = load i32, i32* %dim_4093943, align 4, !dbg !107
  %463 = sext i32 %462 to i64, !dbg !107
  %464 = getelementptr inbounds [0 x i32], [0 x i32]* %461, i64 0, i64 %463, !dbg !107
  %465 = load i32, i32* %464, align 4, !dbg !107
  %466 = icmp eq i32 %465, 1, !dbg !107
  br i1 %466, label %expr_true8, label %expr_false1, !dbg !107

expr_false1:                                      ; preds = %expr_true
  store float %dim_param_4093936, float* %dim_param_4093984, align 4, !dbg !108
  %467 = load i32, i32* %dim_4093943, align 4, !dbg !108
  %468 = icmp eq i32 %467, 1, !dbg !108
  %spec.store.select = select i1 %468, float %theta_i_4093937, float %dim_param_4093936, !dbg !108
  store float %spec.store.select, float* %dim_param_4093984, align 4, !dbg !109
  %469 = call fastcc i32 @find_interval_eval_4088285(%1* %warp_4093934, i32 %467, float %spec.store.select), !dbg !110
  %470 = load [0 x float]*, [0 x float]** %2, align 8, !dbg !111
  %471 = load i32, i32* %dim_4093943, align 4, !dbg !111
  %472 = load i32, i32* %3, align 4, !dbg !111
  %473 = mul nsw i32 %471, %472, !dbg !111
  %474 = add nsw i32 %473, %469, !dbg !111
  %475 = sext i32 %474 to i64, !dbg !111
  %476 = getelementptr inbounds [0 x float], [0 x float]* %470, i64 0, i64 %475, !dbg !111
  %477 = load float, float* %476, align 4, !dbg !111
  %478 = load [0 x float]*, [0 x float]** %2, align 8, !dbg !111
  %479 = load i32, i32* %dim_4093943, align 4, !dbg !111
  %480 = load i32, i32* %3, align 4, !dbg !111
  %481 = mul nsw i32 %479, %480, !dbg !111
  %482 = add nsw i32 %481, %469, !dbg !111
  %483 = add nsw i32 %482, 1, !dbg !111
  %484 = sext i32 %483 to i64, !dbg !111
  %485 = getelementptr inbounds [0 x float], [0 x float]* %478, i64 0, i64 %484, !dbg !111
  %486 = load float, float* %485, align 4, !dbg !111
  %487 = load i32, i32* %dim_4093943, align 4, !dbg !111
  %488 = load float, float* %dim_param_4093984, align 4, !dbg !111
  %489 = fsub float %488, %477, !dbg !111
  %490 = fsub float %486, %477, !dbg !111
  %491 = fdiv float %489, %490, !dbg !111
  %492 = fcmp olt float %491, 0.000000e+00, !dbg !111
  %493 = fcmp ogt float %491, 1.000000e+00, !dbg !111
  %. = select i1 %493, float 1.000000e+00, float %491, !dbg !111
  %clampf = select i1 %492, float 0.000000e+00, float %., !dbg !111
  %494 = shl nsw i32 %487, 1, !dbg !112
  %495 = or i32 %494, 1, !dbg !112
  %496 = sext i32 %495 to i64, !dbg !112
  %497 = getelementptr inbounds [4 x float], [4 x float]* %param_weight_4093966, i64 0, i64 %496, !dbg !112
  store float %clampf, float* %497, align 4, !dbg !112
  %498 = load i32, i32* %dim_4093943, align 4, !dbg !112
  %499 = shl nsw i32 %498, 1, !dbg !112
  %500 = or i32 %499, 1, !dbg !112
  %501 = sext i32 %500 to i64, !dbg !112
  %502 = getelementptr inbounds [4 x float], [4 x float]* %param_weight_4093966, i64 0, i64 %501, !dbg !112
  %503 = load float, float* %502, align 4, !dbg !112
  %504 = shl nsw i32 %498, 1, !dbg !112
  %505 = sext i32 %504 to i64, !dbg !112
  %506 = getelementptr inbounds [4 x float], [4 x float]* %param_weight_4093966, i64 0, i64 %505, !dbg !112
  %507 = fsub float 1.000000e+00, %503, !dbg !112
  store float %507, float* %506, align 4, !dbg !112
  %508 = load [0 x i32]*, [0 x i32]** %0, align 8, !dbg !112
  %509 = load i32, i32* %dim_4093943, align 4, !dbg !112
  %510 = sext i32 %509 to i64, !dbg !112
  %511 = getelementptr inbounds [0 x i32], [0 x i32]* %508, i64 0, i64 %510, !dbg !112
  %512 = load i32, i32* %511, align 4, !dbg !112
  %513 = load i32, i32* %slice_offset_4094077, align 4, !dbg !112
  %514 = mul nsw i32 %512, %469, !dbg !112
  %515 = add nsw i32 %513, %514, !dbg !112
  store i32 %515, i32* %slice_offset_4094077, align 4, !dbg !112
  %516 = load i32, i32* %dim_4093943, align 4, !dbg !112
  br label %continue, !dbg !112

expr_true8:                                       ; preds = %expr_true
  %517 = load i32, i32* %dim_4093943, align 4, !dbg !108
  %518 = shl nsw i32 %517, 1, !dbg !108
  %519 = sext i32 %518 to i64, !dbg !108
  %520 = getelementptr inbounds [4 x float], [4 x float]* %param_weight_4093966, i64 0, i64 %519, !dbg !108
  store float 1.000000e+00, float* %520, align 4, !dbg !108
  %521 = load i32, i32* %dim_4093943, align 4, !dbg !108
  %522 = shl nsw i32 %521, 1, !dbg !108
  %523 = or i32 %522, 1, !dbg !108
  %524 = sext i32 %523 to i64, !dbg !108
  %525 = getelementptr inbounds [4 x float], [4 x float]* %param_weight_4093966, i64 0, i64 %524, !dbg !108
  store float 0.000000e+00, float* %525, align 4, !dbg !108
  %526 = load i32, i32* %dim_4093943, align 4, !dbg !108
  br label %continue, !dbg !108

continue:                                         ; preds = %expr_true8, %expr_false1
  %storemerge.in = phi i32 [ %516, %expr_false1 ], [ %526, %expr_true8 ]
  %storemerge = add nsw i32 %storemerge.in, 1, !dbg !109
  store i32 %storemerge, i32* %dim_4093943, align 4, !dbg !109
  %527 = icmp slt i32 %storemerge.in, 1, !dbg !106
  br i1 %527, label %expr_true, label %expr_false, !dbg !106
}

define i32 @get_spp() local_unnamed_addr !dbg !113 {
get_spp:
  ret i32 4, !dbg !115
}

define void @render(%7* %settings_4082020, i32 %iter_4082021) local_unnamed_addr !dbg !116 {
render:
  %0 = alloca [3 x i32], align 4
  %1 = alloca [3 x i32], align 4
  %2 = alloca i8*, align 8
  %3 = alloca %8, align 8
  %4 = alloca %8, align 8
  %types203 = alloca [3 x i8], align 1
  %allocs202 = alloca [3 x i32], align 4
  %aligns201 = alloca [3 x i32], align 4
  %sizes200 = alloca [3 x i32], align 4
  %args199 = alloca [3 x i8*], align 8
  %size_4084499 = alloca i32, align 4
  %5 = alloca [3 x i32], align 4
  %6 = alloca [3 x i32], align 4
  %7 = alloca i8*, align 8
  %8 = alloca %10, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %types197 = alloca [4 x i8], align 1
  %allocs196 = alloca [4 x i32], align 4
  %aligns195 = alloca [4 x i32], align 4
  %sizes194 = alloca [4 x i32], align 4
  %args193 = alloca [4 x i8*], align 8
  %11 = alloca [3 x i32], align 4
  %12 = alloca [3 x i32], align 4
  %13 = alloca i8*, align 8
  %14 = alloca %10, align 8
  %last191 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %8, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %types190 = alloca [11 x i8], align 1
  %allocs189 = alloca [11 x i32], align 4
  %aligns188 = alloca [11 x i32], align 4
  %sizes187 = alloca [11 x i32], align 4
  %args186 = alloca [11 x i8*], align 8
  %23 = alloca [3 x i32], align 4
  %24 = alloca [3 x i32], align 4
  %25 = alloca %10, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca %8, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %last183 = alloca i32, align 4
  %31 = alloca i8*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i8*, align 8
  %34 = alloca i8*, align 8
  %types182 = alloca [11 x i8], align 1
  %allocs181 = alloca [11 x i32], align 4
  %aligns180 = alloca [11 x i32], align 4
  %sizes179 = alloca [11 x i32], align 4
  %args178 = alloca [11 x i8*], align 8
  %35 = alloca [3 x i32], align 4
  %36 = alloca [3 x i32], align 4
  %37 = alloca i8*, align 8
  %38 = alloca i8*, align 8
  %39 = alloca %8, align 8
  %40 = alloca i8*, align 8
  %41 = alloca %10, align 8
  %42 = alloca i32, align 4
  %43 = alloca i8*, align 8
  %last175 = alloca i32, align 4
  %44 = alloca i8*, align 8
  %45 = alloca i8*, align 8
  %46 = alloca i8*, align 8
  %types174 = alloca [11 x i8], align 1
  %allocs173 = alloca [11 x i32], align 4
  %aligns172 = alloca [11 x i32], align 4
  %sizes171 = alloca [11 x i32], align 4
  %args170 = alloca [11 x i8*], align 8
  %47 = alloca [3 x i32], align 4
  %48 = alloca [3 x i32], align 4
  %49 = alloca i8*, align 8
  %_cont167 = alloca %1, align 8
  %_cont166 = alloca %1, align 8
  %_cont165 = alloca %1, align 8
  %50 = alloca i8*, align 8
  %51 = alloca i8*, align 8
  %52 = alloca i8*, align 8
  %53 = alloca %10, align 8
  %54 = alloca i32, align 4
  %last164 = alloca i32, align 4
  %55 = alloca %8, align 8
  %56 = alloca i8*, align 8
  %57 = alloca i8*, align 8
  %_cont163 = alloca %1, align 8
  %58 = alloca i8*, align 8
  %_cont162 = alloca %1, align 8
  %types161 = alloca [16 x i8], align 1
  %allocs160 = alloca [16 x i32], align 4
  %aligns159 = alloca [16 x i32], align 4
  %sizes158 = alloca [16 x i32], align 4
  %args157 = alloca [16 x i8*], align 8
  %59 = alloca [3 x i32], align 4
  %60 = alloca [3 x i32], align 4
  %61 = alloca %8, align 8
  %62 = alloca i8*, align 8
  %63 = alloca i8*, align 8
  %64 = alloca i8*, align 8
  %65 = alloca %10, align 8
  %66 = alloca i8*, align 8
  %last = alloca i32, align 4
  %67 = alloca i8*, align 8
  %68 = alloca i8*, align 8
  %69 = alloca i8*, align 8
  %70 = alloca i8*, align 8
  %71 = alloca i8*, align 8
  %types154 = alloca [12 x i8], align 1
  %allocs153 = alloca [12 x i32], align 4
  %aligns152 = alloca [12 x i32], align 4
  %sizes151 = alloca [12 x i32], align 4
  %args150 = alloca [12 x i8*], align 8
  %first_4083738 = alloca i32, align 4
  %72 = alloca [3 x i32], align 4
  %73 = alloca [3 x i32], align 4
  %74 = alloca %8, align 8
  %75 = alloca %8, align 8
  %76 = alloca i8*, align 8
  %types148 = alloca [3 x i8], align 1
  %allocs147 = alloca [3 x i32], align 4
  %aligns146 = alloca [3 x i32], align 4
  %sizes145 = alloca [3 x i32], align 4
  %args144 = alloca [3 x i8*], align 8
  %ray_begins_4083493 = alloca [1024 x i32], align 4
  %n_4083490 = alloca i32, align 4
  %ray_ends_4083478 = alloca [1024 x i32], align 4
  %77 = alloca [3 x i32], align 4
  %78 = alloca [3 x i32], align 4
  %79 = alloca i8*, align 8
  %80 = alloca %8, align 8
  %types143 = alloca [2 x i8], align 1
  %allocs142 = alloca [2 x i32], align 4
  %aligns141 = alloca [2 x i32], align 4
  %sizes140 = alloca [2 x i32], align 4
  %args139 = alloca [2 x i8*], align 8
  %81 = alloca [3 x i32], align 4
  %82 = alloca [3 x i32], align 4
  %83 = alloca i8*, align 8
  %types137 = alloca [1 x i8], align 1
  %allocs136 = alloca [1 x i32], align 4
  %aligns135 = alloca [1 x i32], align 4
  %sizes134 = alloca [1 x i32], align 4
  %args133 = alloca [1 x i8*], align 8
  %84 = alloca [3 x i32], align 4
  %85 = alloca [3 x i32], align 4
  %86 = alloca i8*, align 8
  %87 = alloca %8, align 8
  %88 = alloca i8*, align 8
  %types132 = alloca [3 x i8], align 1
  %allocs131 = alloca [3 x i32], align 4
  %aligns130 = alloca [3 x i32], align 4
  %sizes129 = alloca [3 x i32], align 4
  %args128 = alloca [3 x i8*], align 8
  %89 = alloca [3 x i32], align 4
  %90 = alloca [3 x i32], align 4
  %91 = alloca %8, align 8
  %92 = alloca %4, align 8
  %lambda_cont126 = alloca i32, align 4
  %p125 = alloca i32, align 4
  %93 = alloca float, align 4
  %94 = alloca i32, align 4
  %95 = alloca float, align 4
  %96 = alloca %4, align 8
  %97 = alloca i32, align 4
  %iter = alloca i32, align 4
  %first_ray_id = alloca i32, align 4
  %98 = alloca %4, align 8
  %99 = alloca %4, align 8
  %types = alloca [13 x i8], align 1
  %allocs = alloca [13 x i32], align 4
  %aligns = alloca [13 x i32], align 4
  %sizes = alloca [13 x i32], align 4
  %args = alloca [13 x i8*], align 8
  %id_4082251 = alloca i32, align 4
  %gpu_tmp_4082245 = alloca [0 x i32]*, align 8
  %secondary_4082236 = alloca %10, align 8
  %other_primary_4082227 = alloca %8, align 8
  %primary_4082217 = alloca %8, align 8
  %film_height_4082202 = alloca i32, align 4
  %film_width_4082201 = alloca i32, align 4
  %film_pixels_4082200 = alloca [0 x float]*, align 8
  %tris_4082118 = alloca [0 x %11]*, align 8
  %nodes_4082117 = alloca [0 x %12]*, align 8
  %.elt = getelementptr inbounds %7, %7* %settings_4082020, i64 0, i32 0, i32 0, !dbg !118
  %.unpack = load float, float* %.elt, align 4, !dbg !118
  %.elt205 = getelementptr inbounds %7, %7* %settings_4082020, i64 0, i32 0, i32 1, !dbg !118
  %.unpack206 = load float, float* %.elt205, align 4, !dbg !118
  %.elt207 = getelementptr inbounds %7, %7* %settings_4082020, i64 0, i32 0, i32 2, !dbg !118
  %.unpack208 = load float, float* %.elt207, align 4, !dbg !118
  %.elt209 = getelementptr inbounds %7, %7* %settings_4082020, i64 0, i32 3, i32 0, !dbg !118
  %.unpack210 = load float, float* %.elt209, align 4, !dbg !118
  %.elt211 = getelementptr inbounds %7, %7* %settings_4082020, i64 0, i32 3, i32 1, !dbg !118
  %.unpack212 = load float, float* %.elt211, align 4, !dbg !118
  %.elt213 = getelementptr inbounds %7, %7* %settings_4082020, i64 0, i32 3, i32 2, !dbg !118
  %.unpack214 = load float, float* %.elt213, align 4, !dbg !118
  %.elt215 = getelementptr inbounds %7, %7* %settings_4082020, i64 0, i32 2, i32 0, !dbg !118
  %.unpack216 = load float, float* %.elt215, align 4, !dbg !118
  %.elt217 = getelementptr inbounds %7, %7* %settings_4082020, i64 0, i32 2, i32 1, !dbg !118
  %.unpack218 = load float, float* %.elt217, align 4, !dbg !118
  %.elt219 = getelementptr inbounds %7, %7* %settings_4082020, i64 0, i32 2, i32 2, !dbg !118
  %.unpack220 = load float, float* %.elt219, align 4, !dbg !118
  %.elt221 = getelementptr inbounds %7, %7* %settings_4082020, i64 0, i32 1, i32 0, !dbg !118
  %.unpack222 = load float, float* %.elt221, align 4, !dbg !118
  %.elt223 = getelementptr inbounds %7, %7* %settings_4082020, i64 0, i32 1, i32 1, !dbg !118
  %.unpack224 = load float, float* %.elt223, align 4, !dbg !118
  %.elt225 = getelementptr inbounds %7, %7* %settings_4082020, i64 0, i32 1, i32 2, !dbg !118
  %.unpack226 = load float, float* %.elt225, align 4, !dbg !118
  %100 = getelementptr inbounds %7, %7* %settings_4082020, i64 0, i32 4, !dbg !118
  %101 = load float, float* %100, align 4, !dbg !118
  %102 = getelementptr inbounds %7, %7* %settings_4082020, i64 0, i32 5, !dbg !118
  %103 = load float, float* %102, align 4, !dbg !118
  %104 = call [0 x i8]* @rodent_load_buffer(i32 19, [0 x i8]* bitcast ([18 x i8]* @_4082070 to [0 x i8]*)), !dbg !118
  %105 = call [0 x i8]* @rodent_load_buffer(i32 19, [0 x i8]* bitcast ([17 x i8]* @_4082079 to [0 x i8]*)), !dbg !119
  %106 = call [0 x i8]* @rodent_load_buffer(i32 19, [0 x i8]* bitcast ([22 x i8]* @_4082087 to [0 x i8]*)), !dbg !119
  %107 = call [0 x i8]* @rodent_load_buffer(i32 19, [0 x i8]* bitcast ([17 x i8]* @_4082093 to [0 x i8]*)), !dbg !119
  %108 = call [0 x i8]* @rodent_load_buffer(i32 19, [0 x i8]* bitcast ([19 x i8]* @_4082100 to [0 x i8]*)), !dbg !119
  call void @rodent_load_bvh2_tri1(i32 19, [0 x i8]* bitcast ([13 x i8]* @_4082114 to [0 x i8]*), [0 x %12]** nonnull %nodes_4082117, [0 x %11]** nonnull %tris_4082118), !dbg !119
  %109 = load [0 x %12]*, [0 x %12]** %nodes_4082117, align 8, !dbg !120
  %110 = load [0 x %11]*, [0 x %11]** %tris_4082118, align 8, !dbg !120
  %111 = call %1 @rodent_load_warp(i32 19, [0 x i8]* bitcast ([47 x i8]* @_4082134 to [0 x i8]*)), !dbg !120
  %112 = call %1 @rodent_load_warp(i32 19, [0 x i8]* bitcast ([43 x i8]* @_4082140 to [0 x i8]*)), !dbg !121
  %113 = call %1 @rodent_load_warp(i32 19, [0 x i8]* bitcast ([41 x i8]* @_4082146 to [0 x i8]*)), !dbg !122
  %114 = call %1 @rodent_load_warp(i32 19, [0 x i8]* bitcast ([42 x i8]* @_4082152 to [0 x i8]*)), !dbg !123
  %115 = call %1 @rodent_load_warp(i32 19, [0 x i8]* bitcast ([41 x i8]* @_4082158 to [0 x i8]*)), !dbg !124
  %116 = call [0 x i8]* @rodent_load_buffer(i32 19, [0 x i8]* bitcast ([21 x i8]* @_4082164 to [0 x i8]*)), !dbg !125
  %117 = call [0 x i8]* @rodent_load_buffer(i32 19, [0 x i8]* bitcast ([21 x i8]* @_4082170 to [0 x i8]*)), !dbg !119
  %118 = call [0 x i8]* @rodent_load_buffer(i32 19, [0 x i8]* bitcast ([21 x i8]* @_4082176 to [0 x i8]*)), !dbg !119
  %119 = call [0 x i8]* @rodent_load_buffer(i32 19, [0 x i8]* bitcast ([22 x i8]* @_4082182 to [0 x i8]*)), !dbg !119
  %120 = call [0 x i8]* @rodent_load_buffer(i32 19, [0 x i8]* bitcast ([19 x i8]* @_4082188 to [0 x i8]*)), !dbg !119
  call void @rodent_get_film_data(i32 19, [0 x float]** nonnull %film_pixels_4082200, i32* nonnull %film_width_4082201, i32* nonnull %film_height_4082202), !dbg !119
  %121 = load [0 x float]*, [0 x float]** %film_pixels_4082200, align 8, !dbg !126
  %122 = load i32, i32* %film_width_4082201, align 4, !dbg !126
  %123 = load i32, i32* %film_height_4082202, align 4, !dbg !126
  call void @rodent_gpu_get_first_primary_stream(i32 19, %8* nonnull %primary_4082217, i32 1048576), !dbg !126
  call void @rodent_gpu_get_second_primary_stream(i32 19, %8* nonnull %other_primary_4082227, i32 1048576), !dbg !127
  call void @rodent_gpu_get_secondary_stream(i32 19, %10* nonnull %secondary_4082236, i32 1048576), !dbg !128
  call void @rodent_gpu_get_tmp_buffer(i32 19, [0 x i32]** nonnull %gpu_tmp_4082245, i32 1024), !dbg !129
  store i32 0, i32* %id_4082251, align 4, !dbg !130
  %num_rays = mul nsw i32 %122, %123, !dbg !130
  %num_rays124 = shl nsw i32 %num_rays, 2, !dbg !130
  %124 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 12, !dbg !130
  %125 = bitcast [1024 x i32]* %ray_ends_4083478 to [0 x i8]*, !dbg !130
  %126 = bitcast [1024 x i32]* %ray_begins_4083493 to [0 x i8]*, !dbg !130
  %127 = getelementptr inbounds [1024 x i32], [1024 x i32]* %ray_ends_4083478, i64 0, i64 0, !dbg !130
  %128 = getelementptr inbounds [1024 x i32], [1024 x i32]* %ray_ends_4083478, i64 0, i64 1, !dbg !130
  %129 = getelementptr inbounds [1024 x i32], [1024 x i32]* %ray_ends_4083478, i64 0, i64 2, !dbg !130
  %130 = getelementptr inbounds [1024 x i32], [1024 x i32]* %ray_ends_4083478, i64 0, i64 3, !dbg !130
  %131 = getelementptr inbounds [1024 x i32], [1024 x i32]* %ray_ends_4083478, i64 0, i64 4, !dbg !130
  %132 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 5, !dbg !130
  %133 = bitcast i32* %size_4084499 to [0 x i8]*, !dbg !130
  %134 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 12, !dbg !130
  %.unpack1988.elt = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 0
  %.unpack1988.elt2015 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 1
  %.unpack1988.elt2017 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 2
  %.unpack1988.elt2019 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 3
  %.unpack1988.elt2021 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 4
  %.unpack1988.elt2023 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 5
  %.unpack1988.elt2025 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 6
  %.unpack1988.elt2027 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 7
  %.unpack1988.elt2029 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 8
  %.elt1989 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 1
  %.elt1991 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 2
  %.elt1993 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 3
  %.elt1995 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 4
  %.elt1997 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 5
  %.elt1999 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 6
  %.elt2001 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 7
  %.elt2003 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 8
  %.elt2005 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 9
  %.elt2007 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 10
  %.elt2009 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 11
  %.elt2011 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 12
  %.elt2013 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 13
  %.repack2034 = getelementptr inbounds %4, %4* %99, i64 0, i32 0
  %.repack2036 = getelementptr inbounds %4, %4* %99, i64 0, i32 1
  %.repack2038 = getelementptr inbounds %4, %4* %99, i64 0, i32 2
  %135 = getelementptr inbounds [13 x i32], [13 x i32]* %sizes, i64 0, i64 0
  %136 = getelementptr inbounds [13 x i32], [13 x i32]* %aligns, i64 0, i64 0
  %137 = getelementptr inbounds [13 x i32], [13 x i32]* %allocs, i64 0, i64 0
  %138 = getelementptr inbounds [13 x i8], [13 x i8]* %types, i64 0, i64 0
  %139 = bitcast [13 x i8*]* %args to %4**
  %.repack2040 = getelementptr inbounds %4, %4* %98, i64 0, i32 0
  %.repack2042 = getelementptr inbounds %4, %4* %98, i64 0, i32 1
  %.repack2044 = getelementptr inbounds %4, %4* %98, i64 0, i32 2
  %140 = getelementptr inbounds [13 x i8*], [13 x i8*]* %args, i64 0, i64 1
  %141 = getelementptr inbounds [13 x i32], [13 x i32]* %sizes, i64 0, i64 1
  %142 = getelementptr inbounds [13 x i32], [13 x i32]* %aligns, i64 0, i64 1
  %143 = getelementptr inbounds [13 x i32], [13 x i32]* %allocs, i64 0, i64 1
  %144 = getelementptr inbounds [13 x i8], [13 x i8]* %types, i64 0, i64 1
  %145 = bitcast i8** %140 to %4**
  %146 = getelementptr inbounds [13 x i8*], [13 x i8*]* %args, i64 0, i64 2
  %147 = getelementptr inbounds [13 x i32], [13 x i32]* %sizes, i64 0, i64 2
  %148 = getelementptr inbounds [13 x i32], [13 x i32]* %aligns, i64 0, i64 2
  %149 = getelementptr inbounds [13 x i32], [13 x i32]* %allocs, i64 0, i64 2
  %150 = getelementptr inbounds [13 x i8], [13 x i8]* %types, i64 0, i64 2
  %151 = bitcast i8** %146 to i32**
  %152 = getelementptr inbounds [13 x i8*], [13 x i8*]* %args, i64 0, i64 3
  %153 = getelementptr inbounds [13 x i32], [13 x i32]* %sizes, i64 0, i64 3
  %154 = getelementptr inbounds [13 x i32], [13 x i32]* %aligns, i64 0, i64 3
  %155 = getelementptr inbounds [13 x i32], [13 x i32]* %allocs, i64 0, i64 3
  %156 = getelementptr inbounds [13 x i8], [13 x i8]* %types, i64 0, i64 3
  %157 = bitcast i8** %152 to i32**
  %158 = getelementptr inbounds [13 x i8*], [13 x i8*]* %args, i64 0, i64 4
  %159 = getelementptr inbounds [13 x i32], [13 x i32]* %sizes, i64 0, i64 4
  %160 = getelementptr inbounds [13 x i32], [13 x i32]* %aligns, i64 0, i64 4
  %161 = getelementptr inbounds [13 x i32], [13 x i32]* %allocs, i64 0, i64 4
  %162 = getelementptr inbounds [13 x i8], [13 x i8]* %types, i64 0, i64 4
  %163 = bitcast i8** %158 to i32**
  %.repack2046 = getelementptr inbounds %4, %4* %96, i64 0, i32 0
  %.repack2048 = getelementptr inbounds %4, %4* %96, i64 0, i32 1
  %.repack2050 = getelementptr inbounds %4, %4* %96, i64 0, i32 2
  %164 = getelementptr inbounds [13 x i8*], [13 x i8*]* %args, i64 0, i64 5
  %165 = getelementptr inbounds [13 x i32], [13 x i32]* %sizes, i64 0, i64 5
  %166 = getelementptr inbounds [13 x i32], [13 x i32]* %aligns, i64 0, i64 5
  %167 = getelementptr inbounds [13 x i32], [13 x i32]* %allocs, i64 0, i64 5
  %168 = getelementptr inbounds [13 x i8], [13 x i8]* %types, i64 0, i64 5
  %169 = bitcast i8** %164 to %4**
  %170 = getelementptr inbounds [13 x i8*], [13 x i8*]* %args, i64 0, i64 6
  %171 = getelementptr inbounds [13 x i32], [13 x i32]* %sizes, i64 0, i64 6
  %172 = getelementptr inbounds [13 x i32], [13 x i32]* %aligns, i64 0, i64 6
  %173 = getelementptr inbounds [13 x i32], [13 x i32]* %allocs, i64 0, i64 6
  %174 = getelementptr inbounds [13 x i8], [13 x i8]* %types, i64 0, i64 6
  %175 = bitcast i8** %170 to float**
  %176 = getelementptr inbounds [13 x i8*], [13 x i8*]* %args, i64 0, i64 7
  %177 = getelementptr inbounds [13 x i32], [13 x i32]* %sizes, i64 0, i64 7
  %178 = getelementptr inbounds [13 x i32], [13 x i32]* %aligns, i64 0, i64 7
  %179 = getelementptr inbounds [13 x i32], [13 x i32]* %allocs, i64 0, i64 7
  %180 = getelementptr inbounds [13 x i8], [13 x i8]* %types, i64 0, i64 7
  %181 = bitcast i8** %176 to i32**
  %182 = getelementptr inbounds [13 x i8*], [13 x i8*]* %args, i64 0, i64 8
  %183 = getelementptr inbounds [13 x i32], [13 x i32]* %sizes, i64 0, i64 8
  %184 = getelementptr inbounds [13 x i32], [13 x i32]* %aligns, i64 0, i64 8
  %185 = getelementptr inbounds [13 x i32], [13 x i32]* %allocs, i64 0, i64 8
  %186 = getelementptr inbounds [13 x i8], [13 x i8]* %types, i64 0, i64 8
  %187 = bitcast i8** %182 to float**
  %188 = getelementptr inbounds [13 x i8*], [13 x i8*]* %args, i64 0, i64 9
  %189 = getelementptr inbounds [13 x i32], [13 x i32]* %sizes, i64 0, i64 9
  %190 = getelementptr inbounds [13 x i32], [13 x i32]* %aligns, i64 0, i64 9
  %191 = getelementptr inbounds [13 x i32], [13 x i32]* %allocs, i64 0, i64 9
  %192 = getelementptr inbounds [13 x i8], [13 x i8]* %types, i64 0, i64 9
  %193 = bitcast i8** %188 to i32**
  %194 = getelementptr inbounds [13 x i8*], [13 x i8*]* %args, i64 0, i64 10
  %195 = getelementptr inbounds [13 x i32], [13 x i32]* %sizes, i64 0, i64 10
  %196 = getelementptr inbounds [13 x i32], [13 x i32]* %aligns, i64 0, i64 10
  %197 = getelementptr inbounds [13 x i32], [13 x i32]* %allocs, i64 0, i64 10
  %198 = getelementptr inbounds [13 x i8], [13 x i8]* %types, i64 0, i64 10
  %199 = bitcast i8** %194 to i32**
  %.repack2052 = getelementptr inbounds %4, %4* %92, i64 0, i32 0
  %.repack2054 = getelementptr inbounds %4, %4* %92, i64 0, i32 1
  %.repack2056 = getelementptr inbounds %4, %4* %92, i64 0, i32 2
  %200 = getelementptr inbounds [13 x i8*], [13 x i8*]* %args, i64 0, i64 11
  %201 = getelementptr inbounds [13 x i32], [13 x i32]* %sizes, i64 0, i64 11
  %202 = getelementptr inbounds [13 x i32], [13 x i32]* %aligns, i64 0, i64 11
  %203 = getelementptr inbounds [13 x i32], [13 x i32]* %allocs, i64 0, i64 11
  %204 = getelementptr inbounds [13 x i8], [13 x i8]* %types, i64 0, i64 11
  %205 = bitcast i8** %200 to %4**
  %.repack2058.repack = getelementptr inbounds %8, %8* %91, i64 0, i32 0, i32 0
  %.repack2058.repack2086 = getelementptr inbounds %8, %8* %91, i64 0, i32 0, i32 1
  %.repack2058.repack2088 = getelementptr inbounds %8, %8* %91, i64 0, i32 0, i32 2
  %.repack2058.repack2090 = getelementptr inbounds %8, %8* %91, i64 0, i32 0, i32 3
  %.repack2058.repack2092 = getelementptr inbounds %8, %8* %91, i64 0, i32 0, i32 4
  %.repack2058.repack2094 = getelementptr inbounds %8, %8* %91, i64 0, i32 0, i32 5
  %.repack2058.repack2096 = getelementptr inbounds %8, %8* %91, i64 0, i32 0, i32 6
  %.repack2058.repack2098 = getelementptr inbounds %8, %8* %91, i64 0, i32 0, i32 7
  %.repack2058.repack2100 = getelementptr inbounds %8, %8* %91, i64 0, i32 0, i32 8
  %.repack2060 = getelementptr inbounds %8, %8* %91, i64 0, i32 1
  %.repack2062 = getelementptr inbounds %8, %8* %91, i64 0, i32 2
  %.repack2064 = getelementptr inbounds %8, %8* %91, i64 0, i32 3
  %.repack2066 = getelementptr inbounds %8, %8* %91, i64 0, i32 4
  %.repack2068 = getelementptr inbounds %8, %8* %91, i64 0, i32 5
  %.repack2070 = getelementptr inbounds %8, %8* %91, i64 0, i32 6
  %.repack2072 = getelementptr inbounds %8, %8* %91, i64 0, i32 7
  %.repack2074 = getelementptr inbounds %8, %8* %91, i64 0, i32 8
  %.repack2076 = getelementptr inbounds %8, %8* %91, i64 0, i32 9
  %.repack2078 = getelementptr inbounds %8, %8* %91, i64 0, i32 10
  %.repack2080 = getelementptr inbounds %8, %8* %91, i64 0, i32 11
  %.repack2082 = getelementptr inbounds %8, %8* %91, i64 0, i32 12
  %.repack2084 = getelementptr inbounds %8, %8* %91, i64 0, i32 13
  %206 = getelementptr inbounds [13 x i8*], [13 x i8*]* %args, i64 0, i64 12
  %207 = getelementptr inbounds [13 x i32], [13 x i32]* %sizes, i64 0, i64 12
  %208 = getelementptr inbounds [13 x i32], [13 x i32]* %aligns, i64 0, i64 12
  %209 = getelementptr inbounds [13 x i32], [13 x i32]* %allocs, i64 0, i64 12
  %210 = getelementptr inbounds [13 x i8], [13 x i8]* %types, i64 0, i64 12
  %211 = bitcast i8** %206 to %8**
  %.repack2102 = getelementptr inbounds [3 x i32], [3 x i32]* %90, i64 0, i64 0
  %.repack2104 = getelementptr inbounds [3 x i32], [3 x i32]* %90, i64 0, i64 1
  %.repack2106 = getelementptr inbounds [3 x i32], [3 x i32]* %90, i64 0, i64 2
  %.repack2108 = getelementptr inbounds [3 x i32], [3 x i32]* %89, i64 0, i64 0
  %.repack2109 = getelementptr inbounds [3 x i32], [3 x i32]* %89, i64 0, i64 1
  %.repack2110 = getelementptr inbounds [3 x i32], [3 x i32]* %89, i64 0, i64 2
  %212 = getelementptr inbounds [3 x i32], [3 x i32]* %90, i64 0, i64 0
  %213 = getelementptr inbounds [3 x i32], [3 x i32]* %89, i64 0, i64 0
  %214 = getelementptr inbounds [13 x i8*], [13 x i8*]* %args, i64 0, i64 0
  %215 = getelementptr inbounds [13 x i32], [13 x i32]* %sizes, i64 0, i64 0
  %216 = getelementptr inbounds [13 x i32], [13 x i32]* %aligns, i64 0, i64 0
  %217 = getelementptr inbounds [13 x i32], [13 x i32]* %allocs, i64 0, i64 0
  %218 = getelementptr inbounds [13 x i8], [13 x i8]* %types, i64 0, i64 0
  %.unpack228.elt = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 0
  %.unpack228.elt255 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 1
  %.unpack228.elt257 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 2
  %.unpack228.elt259 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 3
  %.unpack228.elt261 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 4
  %.unpack228.elt263 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 5
  %.unpack228.elt265 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 6
  %.unpack228.elt267 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 7
  %.unpack228.elt269 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 8
  %.elt229 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 1
  %.elt231 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 2
  %.elt233 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 3
  %.elt235 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 4
  %.elt237 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 5
  %.elt239 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 6
  %.elt241 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 7
  %.elt243 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 8
  %.elt245 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 9
  %.elt247 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 10
  %.elt249 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 11
  %.elt251 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 12
  %.elt253 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 13
  %219 = bitcast i8** %88 to [0 x %12]**
  %220 = getelementptr inbounds [3 x i32], [3 x i32]* %sizes129, i64 0, i64 0
  %221 = getelementptr inbounds [3 x i32], [3 x i32]* %aligns130, i64 0, i64 0
  %222 = getelementptr inbounds [3 x i32], [3 x i32]* %allocs131, i64 0, i64 0
  %223 = getelementptr inbounds [3 x i8], [3 x i8]* %types132, i64 0, i64 0
  %224 = bitcast [3 x i8*]* %args128 to i8***
  %.repack.repack = getelementptr inbounds %8, %8* %87, i64 0, i32 0, i32 0
  %.repack.repack299 = getelementptr inbounds %8, %8* %87, i64 0, i32 0, i32 1
  %.repack.repack301 = getelementptr inbounds %8, %8* %87, i64 0, i32 0, i32 2
  %.repack.repack303 = getelementptr inbounds %8, %8* %87, i64 0, i32 0, i32 3
  %.repack.repack305 = getelementptr inbounds %8, %8* %87, i64 0, i32 0, i32 4
  %.repack.repack307 = getelementptr inbounds %8, %8* %87, i64 0, i32 0, i32 5
  %.repack.repack309 = getelementptr inbounds %8, %8* %87, i64 0, i32 0, i32 6
  %.repack.repack311 = getelementptr inbounds %8, %8* %87, i64 0, i32 0, i32 7
  %.repack.repack313 = getelementptr inbounds %8, %8* %87, i64 0, i32 0, i32 8
  %.repack273 = getelementptr inbounds %8, %8* %87, i64 0, i32 1
  %.repack275 = getelementptr inbounds %8, %8* %87, i64 0, i32 2
  %.repack277 = getelementptr inbounds %8, %8* %87, i64 0, i32 3
  %.repack279 = getelementptr inbounds %8, %8* %87, i64 0, i32 4
  %.repack281 = getelementptr inbounds %8, %8* %87, i64 0, i32 5
  %.repack283 = getelementptr inbounds %8, %8* %87, i64 0, i32 6
  %.repack285 = getelementptr inbounds %8, %8* %87, i64 0, i32 7
  %.repack287 = getelementptr inbounds %8, %8* %87, i64 0, i32 8
  %.repack289 = getelementptr inbounds %8, %8* %87, i64 0, i32 9
  %.repack291 = getelementptr inbounds %8, %8* %87, i64 0, i32 10
  %.repack293 = getelementptr inbounds %8, %8* %87, i64 0, i32 11
  %.repack295 = getelementptr inbounds %8, %8* %87, i64 0, i32 12
  %.repack297 = getelementptr inbounds %8, %8* %87, i64 0, i32 13
  %225 = getelementptr inbounds [3 x i8*], [3 x i8*]* %args128, i64 0, i64 1
  %226 = getelementptr inbounds [3 x i32], [3 x i32]* %sizes129, i64 0, i64 1
  %227 = getelementptr inbounds [3 x i32], [3 x i32]* %aligns130, i64 0, i64 1
  %228 = getelementptr inbounds [3 x i32], [3 x i32]* %allocs131, i64 0, i64 1
  %229 = getelementptr inbounds [3 x i8], [3 x i8]* %types132, i64 0, i64 1
  %230 = bitcast i8** %225 to %8**
  %231 = bitcast i8** %86 to [0 x %11]**
  %232 = getelementptr inbounds [3 x i8*], [3 x i8*]* %args128, i64 0, i64 2
  %233 = getelementptr inbounds [3 x i32], [3 x i32]* %sizes129, i64 0, i64 2
  %234 = getelementptr inbounds [3 x i32], [3 x i32]* %aligns130, i64 0, i64 2
  %235 = getelementptr inbounds [3 x i32], [3 x i32]* %allocs131, i64 0, i64 2
  %236 = getelementptr inbounds [3 x i8], [3 x i8]* %types132, i64 0, i64 2
  %237 = bitcast i8** %232 to i8***
  %.repack = getelementptr inbounds [3 x i32], [3 x i32]* %85, i64 0, i64 0
  %.repack316 = getelementptr inbounds [3 x i32], [3 x i32]* %85, i64 0, i64 1
  %.repack318 = getelementptr inbounds [3 x i32], [3 x i32]* %85, i64 0, i64 2
  %.repack320 = getelementptr inbounds [3 x i32], [3 x i32]* %84, i64 0, i64 0
  %.repack321 = getelementptr inbounds [3 x i32], [3 x i32]* %84, i64 0, i64 1
  %.repack322 = getelementptr inbounds [3 x i32], [3 x i32]* %84, i64 0, i64 2
  %238 = getelementptr inbounds [3 x i32], [3 x i32]* %85, i64 0, i64 0
  %239 = getelementptr inbounds [3 x i32], [3 x i32]* %84, i64 0, i64 0
  %240 = getelementptr inbounds [3 x i8*], [3 x i8*]* %args128, i64 0, i64 0
  %241 = getelementptr inbounds [3 x i32], [3 x i32]* %sizes129, i64 0, i64 0
  %242 = getelementptr inbounds [3 x i32], [3 x i32]* %aligns130, i64 0, i64 0
  %243 = getelementptr inbounds [3 x i32], [3 x i32]* %allocs131, i64 0, i64 0
  %244 = getelementptr inbounds [3 x i8], [3 x i8]* %types132, i64 0, i64 0
  %.unpack324.elt = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 0
  %.unpack324.elt351 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 1
  %.unpack324.elt353 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 2
  %.unpack324.elt355 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 3
  %.unpack324.elt357 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 4
  %.unpack324.elt359 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 5
  %.unpack324.elt361 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 6
  %.unpack324.elt363 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 7
  %.unpack324.elt365 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 8
  %.elt325 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 1
  %.elt327 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 2
  %.elt329 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 3
  %.elt331 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 4
  %.elt333 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 5
  %.elt335 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 6
  %.elt337 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 7
  %.elt339 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 8
  %.elt341 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 9
  %.elt343 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 10
  %.elt345 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 11
  %.elt347 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 12
  %.elt349 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 13
  %.unpack369.elt = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 0
  %.unpack369.elt396 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 1
  %.unpack369.elt398 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 2
  %.unpack369.elt400 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 3
  %.unpack369.elt402 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 4
  %.unpack369.elt404 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 5
  %.unpack369.elt406 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 6
  %.unpack369.elt408 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 7
  %.unpack369.elt410 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 8
  %.elt370 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 1
  %.elt372 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 2
  %.elt374 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 3
  %.elt376 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 4
  %.elt378 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 5
  %.elt380 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 6
  %.elt382 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 7
  %.elt384 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 8
  %.elt386 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 9
  %.elt388 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 10
  %.elt390 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 11
  %.elt392 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 12
  %.elt394 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 13
  %245 = bitcast i8** %83 to [0 x i32]**
  %246 = getelementptr inbounds [1 x i32], [1 x i32]* %sizes134, i64 0, i64 0
  %247 = getelementptr inbounds [1 x i32], [1 x i32]* %aligns135, i64 0, i64 0
  %248 = getelementptr inbounds [1 x i32], [1 x i32]* %allocs136, i64 0, i64 0
  %249 = getelementptr inbounds [1 x i8], [1 x i8]* %types137, i64 0, i64 0
  %250 = bitcast [1 x i8*]* %args133 to i8***
  %.repack413 = getelementptr inbounds [3 x i32], [3 x i32]* %82, i64 0, i64 0
  %.repack414 = getelementptr inbounds [3 x i32], [3 x i32]* %82, i64 0, i64 1
  %.repack415 = getelementptr inbounds [3 x i32], [3 x i32]* %82, i64 0, i64 2
  %.repack416 = getelementptr inbounds [3 x i32], [3 x i32]* %81, i64 0, i64 0
  %.repack417 = getelementptr inbounds [3 x i32], [3 x i32]* %81, i64 0, i64 1
  %.repack418 = getelementptr inbounds [3 x i32], [3 x i32]* %81, i64 0, i64 2
  %251 = getelementptr inbounds [3 x i32], [3 x i32]* %82, i64 0, i64 0
  %252 = getelementptr inbounds [3 x i32], [3 x i32]* %81, i64 0, i64 0
  %253 = getelementptr inbounds [1 x i8*], [1 x i8*]* %args133, i64 0, i64 0
  %254 = getelementptr inbounds [1 x i32], [1 x i32]* %sizes134, i64 0, i64 0
  %255 = getelementptr inbounds [1 x i32], [1 x i32]* %aligns135, i64 0, i64 0
  %256 = getelementptr inbounds [1 x i32], [1 x i32]* %allocs136, i64 0, i64 0
  %257 = getelementptr inbounds [1 x i8], [1 x i8]* %types137, i64 0, i64 0
  %.repack420.repack = getelementptr inbounds %8, %8* %80, i64 0, i32 0, i32 0
  %.repack420.repack448 = getelementptr inbounds %8, %8* %80, i64 0, i32 0, i32 1
  %.repack420.repack450 = getelementptr inbounds %8, %8* %80, i64 0, i32 0, i32 2
  %.repack420.repack452 = getelementptr inbounds %8, %8* %80, i64 0, i32 0, i32 3
  %.repack420.repack454 = getelementptr inbounds %8, %8* %80, i64 0, i32 0, i32 4
  %.repack420.repack456 = getelementptr inbounds %8, %8* %80, i64 0, i32 0, i32 5
  %.repack420.repack458 = getelementptr inbounds %8, %8* %80, i64 0, i32 0, i32 6
  %.repack420.repack460 = getelementptr inbounds %8, %8* %80, i64 0, i32 0, i32 7
  %.repack420.repack462 = getelementptr inbounds %8, %8* %80, i64 0, i32 0, i32 8
  %.repack422 = getelementptr inbounds %8, %8* %80, i64 0, i32 1
  %.repack424 = getelementptr inbounds %8, %8* %80, i64 0, i32 2
  %.repack426 = getelementptr inbounds %8, %8* %80, i64 0, i32 3
  %.repack428 = getelementptr inbounds %8, %8* %80, i64 0, i32 4
  %.repack430 = getelementptr inbounds %8, %8* %80, i64 0, i32 5
  %.repack432 = getelementptr inbounds %8, %8* %80, i64 0, i32 6
  %.repack434 = getelementptr inbounds %8, %8* %80, i64 0, i32 7
  %.repack436 = getelementptr inbounds %8, %8* %80, i64 0, i32 8
  %.repack438 = getelementptr inbounds %8, %8* %80, i64 0, i32 9
  %.repack440 = getelementptr inbounds %8, %8* %80, i64 0, i32 10
  %.repack442 = getelementptr inbounds %8, %8* %80, i64 0, i32 11
  %.repack444 = getelementptr inbounds %8, %8* %80, i64 0, i32 12
  %.repack446 = getelementptr inbounds %8, %8* %80, i64 0, i32 13
  %258 = getelementptr inbounds [2 x i32], [2 x i32]* %sizes140, i64 0, i64 0
  %259 = getelementptr inbounds [2 x i32], [2 x i32]* %aligns141, i64 0, i64 0
  %260 = getelementptr inbounds [2 x i32], [2 x i32]* %allocs142, i64 0, i64 0
  %261 = getelementptr inbounds [2 x i8], [2 x i8]* %types143, i64 0, i64 0
  %262 = bitcast [2 x i8*]* %args139 to %8**
  %263 = bitcast i8** %79 to [0 x i32]**
  %264 = getelementptr inbounds [2 x i8*], [2 x i8*]* %args139, i64 0, i64 1
  %265 = getelementptr inbounds [2 x i32], [2 x i32]* %sizes140, i64 0, i64 1
  %266 = getelementptr inbounds [2 x i32], [2 x i32]* %aligns141, i64 0, i64 1
  %267 = getelementptr inbounds [2 x i32], [2 x i32]* %allocs142, i64 0, i64 1
  %268 = getelementptr inbounds [2 x i8], [2 x i8]* %types143, i64 0, i64 1
  %269 = bitcast i8** %264 to i8***
  %.repack464 = getelementptr inbounds [3 x i32], [3 x i32]* %78, i64 0, i64 0
  %.repack466 = getelementptr inbounds [3 x i32], [3 x i32]* %78, i64 0, i64 1
  %.repack468 = getelementptr inbounds [3 x i32], [3 x i32]* %78, i64 0, i64 2
  %.repack470 = getelementptr inbounds [3 x i32], [3 x i32]* %77, i64 0, i64 0
  %.repack471 = getelementptr inbounds [3 x i32], [3 x i32]* %77, i64 0, i64 1
  %.repack472 = getelementptr inbounds [3 x i32], [3 x i32]* %77, i64 0, i64 2
  %270 = getelementptr inbounds [3 x i32], [3 x i32]* %78, i64 0, i64 0
  %271 = getelementptr inbounds [3 x i32], [3 x i32]* %77, i64 0, i64 0
  %272 = getelementptr inbounds [2 x i8*], [2 x i8*]* %args139, i64 0, i64 0
  %273 = getelementptr inbounds [2 x i32], [2 x i32]* %sizes140, i64 0, i64 0
  %274 = getelementptr inbounds [2 x i32], [2 x i32]* %aligns141, i64 0, i64 0
  %275 = getelementptr inbounds [2 x i32], [2 x i32]* %allocs142, i64 0, i64 0
  %276 = getelementptr inbounds [2 x i8], [2 x i8]* %types143, i64 0, i64 0
  %277 = getelementptr inbounds [1024 x i32], [1024 x i32]* %ray_begins_4083493, i64 0, i64 0
  %278 = getelementptr inbounds [1024 x i32], [1024 x i32]* %ray_ends_4083478, i64 0, i64 0
  %279 = getelementptr inbounds [1024 x i32], [1024 x i32]* %ray_begins_4083493, i64 0, i64 1
  %280 = getelementptr inbounds [1024 x i32], [1024 x i32]* %ray_ends_4083478, i64 0, i64 1
  %281 = getelementptr inbounds [1024 x i32], [1024 x i32]* %ray_begins_4083493, i64 0, i64 2
  %282 = getelementptr inbounds [1024 x i32], [1024 x i32]* %ray_ends_4083478, i64 0, i64 2
  %283 = getelementptr inbounds [1024 x i32], [1024 x i32]* %ray_begins_4083493, i64 0, i64 3
  %284 = getelementptr inbounds [1024 x i32], [1024 x i32]* %ray_ends_4083478, i64 0, i64 3
  %285 = getelementptr inbounds [1024 x i32], [1024 x i32]* %ray_begins_4083493, i64 0, i64 4
  %286 = getelementptr inbounds [1024 x i32], [1024 x i32]* %ray_ends_4083478, i64 0, i64 4
  %287 = getelementptr inbounds [1024 x i32], [1024 x i32]* %ray_begins_4083493, i64 0, i64 5
  %288 = getelementptr inbounds [1024 x i32], [1024 x i32]* %ray_ends_4083478, i64 0, i64 5
  %289 = bitcast i8** %76 to [0 x i32]**
  %290 = getelementptr inbounds [3 x i32], [3 x i32]* %sizes145, i64 0, i64 0
  %291 = getelementptr inbounds [3 x i32], [3 x i32]* %aligns146, i64 0, i64 0
  %292 = getelementptr inbounds [3 x i32], [3 x i32]* %allocs147, i64 0, i64 0
  %293 = getelementptr inbounds [3 x i8], [3 x i8]* %types148, i64 0, i64 0
  %294 = bitcast [3 x i8*]* %args144 to i8***
  %.repack473.repack = getelementptr inbounds %8, %8* %75, i64 0, i32 0, i32 0
  %.repack473.repack501 = getelementptr inbounds %8, %8* %75, i64 0, i32 0, i32 1
  %.repack473.repack503 = getelementptr inbounds %8, %8* %75, i64 0, i32 0, i32 2
  %.repack473.repack505 = getelementptr inbounds %8, %8* %75, i64 0, i32 0, i32 3
  %.repack473.repack507 = getelementptr inbounds %8, %8* %75, i64 0, i32 0, i32 4
  %.repack473.repack509 = getelementptr inbounds %8, %8* %75, i64 0, i32 0, i32 5
  %.repack473.repack511 = getelementptr inbounds %8, %8* %75, i64 0, i32 0, i32 6
  %.repack473.repack513 = getelementptr inbounds %8, %8* %75, i64 0, i32 0, i32 7
  %.repack473.repack515 = getelementptr inbounds %8, %8* %75, i64 0, i32 0, i32 8
  %.repack475 = getelementptr inbounds %8, %8* %75, i64 0, i32 1
  %.repack477 = getelementptr inbounds %8, %8* %75, i64 0, i32 2
  %.repack479 = getelementptr inbounds %8, %8* %75, i64 0, i32 3
  %.repack481 = getelementptr inbounds %8, %8* %75, i64 0, i32 4
  %.repack483 = getelementptr inbounds %8, %8* %75, i64 0, i32 5
  %.repack485 = getelementptr inbounds %8, %8* %75, i64 0, i32 6
  %.repack487 = getelementptr inbounds %8, %8* %75, i64 0, i32 7
  %.repack489 = getelementptr inbounds %8, %8* %75, i64 0, i32 8
  %.repack491 = getelementptr inbounds %8, %8* %75, i64 0, i32 9
  %.repack493 = getelementptr inbounds %8, %8* %75, i64 0, i32 10
  %.repack495 = getelementptr inbounds %8, %8* %75, i64 0, i32 11
  %.repack497 = getelementptr inbounds %8, %8* %75, i64 0, i32 12
  %.repack499 = getelementptr inbounds %8, %8* %75, i64 0, i32 13
  %295 = getelementptr inbounds [3 x i8*], [3 x i8*]* %args144, i64 0, i64 1
  %296 = getelementptr inbounds [3 x i32], [3 x i32]* %sizes145, i64 0, i64 1
  %297 = getelementptr inbounds [3 x i32], [3 x i32]* %aligns146, i64 0, i64 1
  %298 = getelementptr inbounds [3 x i32], [3 x i32]* %allocs147, i64 0, i64 1
  %299 = getelementptr inbounds [3 x i8], [3 x i8]* %types148, i64 0, i64 1
  %300 = bitcast i8** %295 to %8**
  %.repack517.repack = getelementptr inbounds %8, %8* %74, i64 0, i32 0, i32 0
  %.repack517.repack545 = getelementptr inbounds %8, %8* %74, i64 0, i32 0, i32 1
  %.repack517.repack547 = getelementptr inbounds %8, %8* %74, i64 0, i32 0, i32 2
  %.repack517.repack549 = getelementptr inbounds %8, %8* %74, i64 0, i32 0, i32 3
  %.repack517.repack551 = getelementptr inbounds %8, %8* %74, i64 0, i32 0, i32 4
  %.repack517.repack553 = getelementptr inbounds %8, %8* %74, i64 0, i32 0, i32 5
  %.repack517.repack555 = getelementptr inbounds %8, %8* %74, i64 0, i32 0, i32 6
  %.repack517.repack557 = getelementptr inbounds %8, %8* %74, i64 0, i32 0, i32 7
  %.repack517.repack559 = getelementptr inbounds %8, %8* %74, i64 0, i32 0, i32 8
  %.repack519 = getelementptr inbounds %8, %8* %74, i64 0, i32 1
  %.repack521 = getelementptr inbounds %8, %8* %74, i64 0, i32 2
  %.repack523 = getelementptr inbounds %8, %8* %74, i64 0, i32 3
  %.repack525 = getelementptr inbounds %8, %8* %74, i64 0, i32 4
  %.repack527 = getelementptr inbounds %8, %8* %74, i64 0, i32 5
  %.repack529 = getelementptr inbounds %8, %8* %74, i64 0, i32 6
  %.repack531 = getelementptr inbounds %8, %8* %74, i64 0, i32 7
  %.repack533 = getelementptr inbounds %8, %8* %74, i64 0, i32 8
  %.repack535 = getelementptr inbounds %8, %8* %74, i64 0, i32 9
  %.repack537 = getelementptr inbounds %8, %8* %74, i64 0, i32 10
  %.repack539 = getelementptr inbounds %8, %8* %74, i64 0, i32 11
  %.repack541 = getelementptr inbounds %8, %8* %74, i64 0, i32 12
  %.repack543 = getelementptr inbounds %8, %8* %74, i64 0, i32 13
  %301 = getelementptr inbounds [3 x i8*], [3 x i8*]* %args144, i64 0, i64 2
  %302 = getelementptr inbounds [3 x i32], [3 x i32]* %sizes145, i64 0, i64 2
  %303 = getelementptr inbounds [3 x i32], [3 x i32]* %aligns146, i64 0, i64 2
  %304 = getelementptr inbounds [3 x i32], [3 x i32]* %allocs147, i64 0, i64 2
  %305 = getelementptr inbounds [3 x i8], [3 x i8]* %types148, i64 0, i64 2
  %306 = bitcast i8** %301 to %8**
  %.repack561 = getelementptr inbounds [3 x i32], [3 x i32]* %73, i64 0, i64 0
  %.repack563 = getelementptr inbounds [3 x i32], [3 x i32]* %73, i64 0, i64 1
  %.repack565 = getelementptr inbounds [3 x i32], [3 x i32]* %73, i64 0, i64 2
  %.repack567 = getelementptr inbounds [3 x i32], [3 x i32]* %72, i64 0, i64 0
  %.repack568 = getelementptr inbounds [3 x i32], [3 x i32]* %72, i64 0, i64 1
  %.repack569 = getelementptr inbounds [3 x i32], [3 x i32]* %72, i64 0, i64 2
  %307 = getelementptr inbounds [3 x i32], [3 x i32]* %73, i64 0, i64 0
  %308 = getelementptr inbounds [3 x i32], [3 x i32]* %72, i64 0, i64 0
  %309 = getelementptr inbounds [3 x i8*], [3 x i8*]* %args144, i64 0, i64 0
  %310 = getelementptr inbounds [3 x i32], [3 x i32]* %sizes145, i64 0, i64 0
  %311 = getelementptr inbounds [3 x i32], [3 x i32]* %aligns146, i64 0, i64 0
  %312 = getelementptr inbounds [3 x i32], [3 x i32]* %allocs147, i64 0, i64 0
  %313 = getelementptr inbounds [3 x i8], [3 x i8]* %types148, i64 0, i64 0
  %.unpack571.elt = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 0
  %.unpack571.elt598 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 1
  %.unpack571.elt600 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 2
  %.unpack571.elt602 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 3
  %.unpack571.elt604 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 4
  %.unpack571.elt606 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 5
  %.unpack571.elt608 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 6
  %.unpack571.elt610 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 7
  %.unpack571.elt612 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 8
  %.elt572 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 1
  %.elt574 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 2
  %.elt576 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 3
  %.elt578 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 4
  %.elt580 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 5
  %.elt582 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 6
  %.elt584 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 7
  %.elt586 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 8
  %.elt588 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 9
  %.elt590 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 10
  %.elt592 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 11
  %.elt594 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 12
  %.elt596 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 13
  %.unpack616.elt = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 0
  %.unpack616.elt643 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 1
  %.unpack616.elt645 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 2
  %.unpack616.elt647 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 3
  %.unpack616.elt649 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 4
  %.unpack616.elt651 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 5
  %.unpack616.elt653 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 6
  %.unpack616.elt655 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 7
  %.unpack616.elt657 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 8
  %.elt617 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 1
  %.elt619 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 2
  %.elt621 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 3
  %.elt623 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 4
  %.elt625 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 5
  %.elt627 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 6
  %.elt629 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 7
  %.elt631 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 8
  %.elt633 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 9
  %.elt635 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 10
  %.elt637 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 11
  %.elt639 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 12
  %.elt641 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 13
  %primary_4082217.repack.repack = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 0
  %primary_4082217.repack.repack687 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 1
  %primary_4082217.repack.repack689 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 2
  %primary_4082217.repack.repack691 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 3
  %primary_4082217.repack.repack693 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 4
  %primary_4082217.repack.repack695 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 5
  %primary_4082217.repack.repack697 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 6
  %primary_4082217.repack.repack699 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 7
  %primary_4082217.repack.repack701 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 8
  %primary_4082217.repack661 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 1
  %primary_4082217.repack663 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 2
  %primary_4082217.repack665 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 3
  %primary_4082217.repack667 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 4
  %primary_4082217.repack669 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 5
  %primary_4082217.repack671 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 6
  %primary_4082217.repack673 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 7
  %primary_4082217.repack675 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 8
  %primary_4082217.repack677 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 9
  %primary_4082217.repack679 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 10
  %primary_4082217.repack681 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 11
  %primary_4082217.repack683 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 12
  %primary_4082217.repack685 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 13
  %other_primary_4082227.repack.repack = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 0
  %other_primary_4082227.repack.repack730 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 1
  %other_primary_4082227.repack.repack732 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 2
  %other_primary_4082227.repack.repack734 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 3
  %other_primary_4082227.repack.repack736 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 4
  %other_primary_4082227.repack.repack738 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 5
  %other_primary_4082227.repack.repack740 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 6
  %other_primary_4082227.repack.repack742 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 7
  %other_primary_4082227.repack.repack744 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 8
  %other_primary_4082227.repack704 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 1
  %other_primary_4082227.repack706 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 2
  %other_primary_4082227.repack708 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 3
  %other_primary_4082227.repack710 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 4
  %other_primary_4082227.repack712 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 5
  %other_primary_4082227.repack714 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 6
  %other_primary_4082227.repack716 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 7
  %other_primary_4082227.repack718 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 8
  %other_primary_4082227.repack720 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 9
  %other_primary_4082227.repack722 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 10
  %other_primary_4082227.repack724 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 11
  %other_primary_4082227.repack726 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 12
  %other_primary_4082227.repack728 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 13
  %.unpack748.elt = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 0
  %.unpack748.elt775 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 1
  %.unpack748.elt777 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 2
  %.unpack748.elt779 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 3
  %.unpack748.elt781 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 4
  %.unpack748.elt783 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 5
  %.unpack748.elt785 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 6
  %.unpack748.elt787 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 7
  %.unpack748.elt789 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 8
  %.elt749 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 1
  %.elt751 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 2
  %.elt753 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 3
  %.elt755 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 4
  %.elt757 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 5
  %.elt759 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 6
  %.elt761 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 7
  %.elt763 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 8
  %.elt765 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 9
  %.elt767 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 10
  %.elt769 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 11
  %.elt771 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 12
  %.elt773 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 13
  %.unpack793.elt = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 0
  %.unpack793.elt806 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 1
  %.unpack793.elt808 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 2
  %.unpack793.elt810 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 3
  %.unpack793.elt812 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 4
  %.unpack793.elt814 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 5
  %.unpack793.elt816 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 6
  %.unpack793.elt818 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 7
  %.unpack793.elt820 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 8
  %.elt794 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 1
  %.elt796 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 2
  %.elt798 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 3
  %.elt800 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 4
  %.elt802 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 5
  %.elt804 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 6
  %314 = getelementptr [0 x i8], [0 x i8]* %117, i64 0, i64 0
  %315 = getelementptr inbounds [12 x i32], [12 x i32]* %sizes151, i64 0, i64 0
  %316 = getelementptr inbounds [12 x i32], [12 x i32]* %aligns152, i64 0, i64 0
  %317 = getelementptr inbounds [12 x i32], [12 x i32]* %allocs153, i64 0, i64 0
  %318 = getelementptr inbounds [12 x i8], [12 x i8]* %types154, i64 0, i64 0
  %319 = bitcast [12 x i8*]* %args150 to i8***
  %320 = getelementptr [0 x i8], [0 x i8]* %118, i64 0, i64 0
  %321 = getelementptr inbounds [12 x i8*], [12 x i8*]* %args150, i64 0, i64 1
  %322 = getelementptr inbounds [12 x i32], [12 x i32]* %sizes151, i64 0, i64 1
  %323 = getelementptr inbounds [12 x i32], [12 x i32]* %aligns152, i64 0, i64 1
  %324 = getelementptr inbounds [12 x i32], [12 x i32]* %allocs153, i64 0, i64 1
  %325 = getelementptr inbounds [12 x i8], [12 x i8]* %types154, i64 0, i64 1
  %326 = bitcast i8** %321 to i8***
  %327 = getelementptr [0 x i8], [0 x i8]* %116, i64 0, i64 0
  %328 = getelementptr inbounds [12 x i8*], [12 x i8*]* %args150, i64 0, i64 2
  %329 = getelementptr inbounds [12 x i32], [12 x i32]* %sizes151, i64 0, i64 2
  %330 = getelementptr inbounds [12 x i32], [12 x i32]* %aligns152, i64 0, i64 2
  %331 = getelementptr inbounds [12 x i32], [12 x i32]* %allocs153, i64 0, i64 2
  %332 = getelementptr inbounds [12 x i8], [12 x i8]* %types154, i64 0, i64 2
  %333 = bitcast i8** %328 to i8***
  %334 = getelementptr [0 x i8], [0 x i8]* %120, i64 0, i64 0
  %335 = getelementptr inbounds [12 x i8*], [12 x i8*]* %args150, i64 0, i64 3
  %336 = getelementptr inbounds [12 x i32], [12 x i32]* %sizes151, i64 0, i64 3
  %337 = getelementptr inbounds [12 x i32], [12 x i32]* %aligns152, i64 0, i64 3
  %338 = getelementptr inbounds [12 x i32], [12 x i32]* %allocs153, i64 0, i64 3
  %339 = getelementptr inbounds [12 x i8], [12 x i8]* %types154, i64 0, i64 3
  %340 = bitcast i8** %335 to i8***
  %341 = getelementptr [0 x i8], [0 x i8]* %106, i64 0, i64 0
  %342 = getelementptr inbounds [12 x i8*], [12 x i8*]* %args150, i64 0, i64 4
  %343 = getelementptr inbounds [12 x i32], [12 x i32]* %sizes151, i64 0, i64 4
  %344 = getelementptr inbounds [12 x i32], [12 x i32]* %aligns152, i64 0, i64 4
  %345 = getelementptr inbounds [12 x i32], [12 x i32]* %allocs153, i64 0, i64 4
  %346 = getelementptr inbounds [12 x i8], [12 x i8]* %types154, i64 0, i64 4
  %347 = bitcast i8** %342 to i8***
  %348 = getelementptr inbounds [12 x i8*], [12 x i8*]* %args150, i64 0, i64 5
  %349 = getelementptr inbounds [12 x i32], [12 x i32]* %sizes151, i64 0, i64 5
  %350 = getelementptr inbounds [12 x i32], [12 x i32]* %aligns152, i64 0, i64 5
  %351 = getelementptr inbounds [12 x i32], [12 x i32]* %allocs153, i64 0, i64 5
  %352 = getelementptr inbounds [12 x i8], [12 x i8]* %types154, i64 0, i64 5
  %353 = bitcast i8** %348 to i32**
  %354 = getelementptr [0 x i8], [0 x i8]* %107, i64 0, i64 0
  %355 = getelementptr inbounds [12 x i8*], [12 x i8*]* %args150, i64 0, i64 6
  %356 = getelementptr inbounds [12 x i32], [12 x i32]* %sizes151, i64 0, i64 6
  %357 = getelementptr inbounds [12 x i32], [12 x i32]* %aligns152, i64 0, i64 6
  %358 = getelementptr inbounds [12 x i32], [12 x i32]* %allocs153, i64 0, i64 6
  %359 = getelementptr inbounds [12 x i8], [12 x i8]* %types154, i64 0, i64 6
  %360 = bitcast i8** %355 to i8***
  %.repack823.repack = getelementptr inbounds %10, %10* %65, i64 0, i32 0, i32 0
  %.repack823.repack837 = getelementptr inbounds %10, %10* %65, i64 0, i32 0, i32 1
  %.repack823.repack839 = getelementptr inbounds %10, %10* %65, i64 0, i32 0, i32 2
  %.repack823.repack841 = getelementptr inbounds %10, %10* %65, i64 0, i32 0, i32 3
  %.repack823.repack843 = getelementptr inbounds %10, %10* %65, i64 0, i32 0, i32 4
  %.repack823.repack845 = getelementptr inbounds %10, %10* %65, i64 0, i32 0, i32 5
  %.repack823.repack847 = getelementptr inbounds %10, %10* %65, i64 0, i32 0, i32 6
  %.repack823.repack849 = getelementptr inbounds %10, %10* %65, i64 0, i32 0, i32 7
  %.repack823.repack851 = getelementptr inbounds %10, %10* %65, i64 0, i32 0, i32 8
  %.repack825 = getelementptr inbounds %10, %10* %65, i64 0, i32 1
  %.repack827 = getelementptr inbounds %10, %10* %65, i64 0, i32 2
  %.repack829 = getelementptr inbounds %10, %10* %65, i64 0, i32 3
  %.repack831 = getelementptr inbounds %10, %10* %65, i64 0, i32 4
  %.repack833 = getelementptr inbounds %10, %10* %65, i64 0, i32 5
  %.repack835 = getelementptr inbounds %10, %10* %65, i64 0, i32 6
  %361 = getelementptr inbounds [12 x i8*], [12 x i8*]* %args150, i64 0, i64 7
  %362 = getelementptr inbounds [12 x i32], [12 x i32]* %sizes151, i64 0, i64 7
  %363 = getelementptr inbounds [12 x i32], [12 x i32]* %aligns152, i64 0, i64 7
  %364 = getelementptr inbounds [12 x i32], [12 x i32]* %allocs153, i64 0, i64 7
  %365 = getelementptr inbounds [12 x i8], [12 x i8]* %types154, i64 0, i64 7
  %366 = bitcast i8** %361 to %10**
  %367 = getelementptr [0 x i8], [0 x i8]* %119, i64 0, i64 0
  %368 = getelementptr inbounds [12 x i8*], [12 x i8*]* %args150, i64 0, i64 8
  %369 = getelementptr inbounds [12 x i32], [12 x i32]* %sizes151, i64 0, i64 8
  %370 = getelementptr inbounds [12 x i32], [12 x i32]* %aligns152, i64 0, i64 8
  %371 = getelementptr inbounds [12 x i32], [12 x i32]* %allocs153, i64 0, i64 8
  %372 = getelementptr inbounds [12 x i8], [12 x i8]* %types154, i64 0, i64 8
  %373 = bitcast i8** %368 to i8***
  %374 = bitcast i8** %63 to [0 x float]**
  %375 = getelementptr inbounds [12 x i8*], [12 x i8*]* %args150, i64 0, i64 9
  %376 = getelementptr inbounds [12 x i32], [12 x i32]* %sizes151, i64 0, i64 9
  %377 = getelementptr inbounds [12 x i32], [12 x i32]* %aligns152, i64 0, i64 9
  %378 = getelementptr inbounds [12 x i32], [12 x i32]* %allocs153, i64 0, i64 9
  %379 = getelementptr inbounds [12 x i8], [12 x i8]* %types154, i64 0, i64 9
  %380 = bitcast i8** %375 to i8***
  %381 = getelementptr [0 x i8], [0 x i8]* %105, i64 0, i64 0
  %382 = getelementptr inbounds [12 x i8*], [12 x i8*]* %args150, i64 0, i64 10
  %383 = getelementptr inbounds [12 x i32], [12 x i32]* %sizes151, i64 0, i64 10
  %384 = getelementptr inbounds [12 x i32], [12 x i32]* %aligns152, i64 0, i64 10
  %385 = getelementptr inbounds [12 x i32], [12 x i32]* %allocs153, i64 0, i64 10
  %386 = getelementptr inbounds [12 x i8], [12 x i8]* %types154, i64 0, i64 10
  %387 = bitcast i8** %382 to i8***
  %.repack853.repack = getelementptr inbounds %8, %8* %61, i64 0, i32 0, i32 0
  %.repack853.repack881 = getelementptr inbounds %8, %8* %61, i64 0, i32 0, i32 1
  %.repack853.repack883 = getelementptr inbounds %8, %8* %61, i64 0, i32 0, i32 2
  %.repack853.repack885 = getelementptr inbounds %8, %8* %61, i64 0, i32 0, i32 3
  %.repack853.repack887 = getelementptr inbounds %8, %8* %61, i64 0, i32 0, i32 4
  %.repack853.repack889 = getelementptr inbounds %8, %8* %61, i64 0, i32 0, i32 5
  %.repack853.repack891 = getelementptr inbounds %8, %8* %61, i64 0, i32 0, i32 6
  %.repack853.repack893 = getelementptr inbounds %8, %8* %61, i64 0, i32 0, i32 7
  %.repack853.repack895 = getelementptr inbounds %8, %8* %61, i64 0, i32 0, i32 8
  %.repack855 = getelementptr inbounds %8, %8* %61, i64 0, i32 1
  %.repack857 = getelementptr inbounds %8, %8* %61, i64 0, i32 2
  %.repack859 = getelementptr inbounds %8, %8* %61, i64 0, i32 3
  %.repack861 = getelementptr inbounds %8, %8* %61, i64 0, i32 4
  %.repack863 = getelementptr inbounds %8, %8* %61, i64 0, i32 5
  %.repack865 = getelementptr inbounds %8, %8* %61, i64 0, i32 6
  %.repack867 = getelementptr inbounds %8, %8* %61, i64 0, i32 7
  %.repack869 = getelementptr inbounds %8, %8* %61, i64 0, i32 8
  %.repack871 = getelementptr inbounds %8, %8* %61, i64 0, i32 9
  %.repack873 = getelementptr inbounds %8, %8* %61, i64 0, i32 10
  %.repack875 = getelementptr inbounds %8, %8* %61, i64 0, i32 11
  %.repack877 = getelementptr inbounds %8, %8* %61, i64 0, i32 12
  %.repack879 = getelementptr inbounds %8, %8* %61, i64 0, i32 13
  %388 = getelementptr inbounds [12 x i8*], [12 x i8*]* %args150, i64 0, i64 11
  %389 = getelementptr inbounds [12 x i32], [12 x i32]* %sizes151, i64 0, i64 11
  %390 = getelementptr inbounds [12 x i32], [12 x i32]* %aligns152, i64 0, i64 11
  %391 = getelementptr inbounds [12 x i32], [12 x i32]* %allocs153, i64 0, i64 11
  %392 = getelementptr inbounds [12 x i8], [12 x i8]* %types154, i64 0, i64 11
  %393 = bitcast i8** %388 to %8**
  %.repack897 = getelementptr inbounds [3 x i32], [3 x i32]* %60, i64 0, i64 0
  %.repack899 = getelementptr inbounds [3 x i32], [3 x i32]* %60, i64 0, i64 1
  %.repack901 = getelementptr inbounds [3 x i32], [3 x i32]* %60, i64 0, i64 2
  %.repack903 = getelementptr inbounds [3 x i32], [3 x i32]* %59, i64 0, i64 0
  %.repack904 = getelementptr inbounds [3 x i32], [3 x i32]* %59, i64 0, i64 1
  %.repack905 = getelementptr inbounds [3 x i32], [3 x i32]* %59, i64 0, i64 2
  %394 = getelementptr inbounds [3 x i32], [3 x i32]* %60, i64 0, i64 0
  %395 = getelementptr inbounds [3 x i32], [3 x i32]* %59, i64 0, i64 0
  %396 = getelementptr inbounds [12 x i8*], [12 x i8*]* %args150, i64 0, i64 0
  %397 = getelementptr inbounds [12 x i32], [12 x i32]* %sizes151, i64 0, i64 0
  %398 = getelementptr inbounds [12 x i32], [12 x i32]* %aligns152, i64 0, i64 0
  %399 = getelementptr inbounds [12 x i32], [12 x i32]* %allocs153, i64 0, i64 0
  %400 = getelementptr inbounds [12 x i8], [12 x i8]* %types154, i64 0, i64 0
  %.unpack908.elt = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 0
  %.unpack908.elt935 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 1
  %.unpack908.elt937 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 2
  %.unpack908.elt939 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 3
  %.unpack908.elt941 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 4
  %.unpack908.elt943 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 5
  %.unpack908.elt945 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 6
  %.unpack908.elt947 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 7
  %.unpack908.elt949 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 8
  %.elt909 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 1
  %.elt911 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 2
  %.elt913 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 3
  %.elt915 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 4
  %.elt917 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 5
  %.elt919 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 6
  %.elt921 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 7
  %.elt923 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 8
  %.elt925 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 9
  %.elt927 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 10
  %.elt929 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 11
  %.elt931 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 12
  %.elt933 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 13
  %.unpack953.elt = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 0
  %.unpack953.elt966 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 1
  %.unpack953.elt968 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 2
  %.unpack953.elt970 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 3
  %.unpack953.elt972 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 4
  %.unpack953.elt974 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 5
  %.unpack953.elt976 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 6
  %.unpack953.elt978 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 7
  %.unpack953.elt980 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 8
  %.elt954 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 1
  %.elt956 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 2
  %.elt958 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 3
  %.elt960 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 4
  %.elt962 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 5
  %.elt964 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 6
  %401 = getelementptr inbounds [16 x i32], [16 x i32]* %sizes158, i64 0, i64 0
  %402 = getelementptr inbounds [16 x i32], [16 x i32]* %aligns159, i64 0, i64 0
  %403 = getelementptr inbounds [16 x i32], [16 x i32]* %allocs160, i64 0, i64 0
  %404 = getelementptr inbounds [16 x i8], [16 x i8]* %types161, i64 0, i64 0
  %405 = bitcast [16 x i8*]* %args157 to %1**
  %406 = getelementptr [0 x i8], [0 x i8]* %106, i64 0, i64 0
  %407 = getelementptr inbounds [16 x i8*], [16 x i8*]* %args157, i64 0, i64 1
  %408 = getelementptr inbounds [16 x i32], [16 x i32]* %sizes158, i64 0, i64 1
  %409 = getelementptr inbounds [16 x i32], [16 x i32]* %aligns159, i64 0, i64 1
  %410 = getelementptr inbounds [16 x i32], [16 x i32]* %allocs160, i64 0, i64 1
  %411 = getelementptr inbounds [16 x i8], [16 x i8]* %types161, i64 0, i64 1
  %412 = bitcast i8** %407 to i8***
  %413 = getelementptr inbounds [16 x i8*], [16 x i8*]* %args157, i64 0, i64 2
  %414 = getelementptr inbounds [16 x i32], [16 x i32]* %sizes158, i64 0, i64 2
  %415 = getelementptr inbounds [16 x i32], [16 x i32]* %aligns159, i64 0, i64 2
  %416 = getelementptr inbounds [16 x i32], [16 x i32]* %allocs160, i64 0, i64 2
  %417 = getelementptr inbounds [16 x i8], [16 x i8]* %types161, i64 0, i64 2
  %418 = bitcast i8** %413 to %1**
  %419 = getelementptr [0 x i8], [0 x i8]* %116, i64 0, i64 0
  %420 = getelementptr inbounds [16 x i8*], [16 x i8*]* %args157, i64 0, i64 3
  %421 = getelementptr inbounds [16 x i32], [16 x i32]* %sizes158, i64 0, i64 3
  %422 = getelementptr inbounds [16 x i32], [16 x i32]* %aligns159, i64 0, i64 3
  %423 = getelementptr inbounds [16 x i32], [16 x i32]* %allocs160, i64 0, i64 3
  %424 = getelementptr inbounds [16 x i8], [16 x i8]* %types161, i64 0, i64 3
  %425 = bitcast i8** %420 to i8***
  %426 = getelementptr [0 x i8], [0 x i8]* %119, i64 0, i64 0
  %427 = getelementptr inbounds [16 x i8*], [16 x i8*]* %args157, i64 0, i64 4
  %428 = getelementptr inbounds [16 x i32], [16 x i32]* %sizes158, i64 0, i64 4
  %429 = getelementptr inbounds [16 x i32], [16 x i32]* %aligns159, i64 0, i64 4
  %430 = getelementptr inbounds [16 x i32], [16 x i32]* %allocs160, i64 0, i64 4
  %431 = getelementptr inbounds [16 x i8], [16 x i8]* %types161, i64 0, i64 4
  %432 = bitcast i8** %427 to i8***
  %.repack984.repack = getelementptr inbounds %8, %8* %55, i64 0, i32 0, i32 0
  %.repack984.repack1012 = getelementptr inbounds %8, %8* %55, i64 0, i32 0, i32 1
  %.repack984.repack1014 = getelementptr inbounds %8, %8* %55, i64 0, i32 0, i32 2
  %.repack984.repack1016 = getelementptr inbounds %8, %8* %55, i64 0, i32 0, i32 3
  %.repack984.repack1018 = getelementptr inbounds %8, %8* %55, i64 0, i32 0, i32 4
  %.repack984.repack1020 = getelementptr inbounds %8, %8* %55, i64 0, i32 0, i32 5
  %.repack984.repack1022 = getelementptr inbounds %8, %8* %55, i64 0, i32 0, i32 6
  %.repack984.repack1024 = getelementptr inbounds %8, %8* %55, i64 0, i32 0, i32 7
  %.repack984.repack1026 = getelementptr inbounds %8, %8* %55, i64 0, i32 0, i32 8
  %.repack986 = getelementptr inbounds %8, %8* %55, i64 0, i32 1
  %.repack988 = getelementptr inbounds %8, %8* %55, i64 0, i32 2
  %.repack990 = getelementptr inbounds %8, %8* %55, i64 0, i32 3
  %.repack992 = getelementptr inbounds %8, %8* %55, i64 0, i32 4
  %.repack994 = getelementptr inbounds %8, %8* %55, i64 0, i32 5
  %.repack996 = getelementptr inbounds %8, %8* %55, i64 0, i32 6
  %.repack998 = getelementptr inbounds %8, %8* %55, i64 0, i32 7
  %.repack1000 = getelementptr inbounds %8, %8* %55, i64 0, i32 8
  %.repack1002 = getelementptr inbounds %8, %8* %55, i64 0, i32 9
  %.repack1004 = getelementptr inbounds %8, %8* %55, i64 0, i32 10
  %.repack1006 = getelementptr inbounds %8, %8* %55, i64 0, i32 11
  %.repack1008 = getelementptr inbounds %8, %8* %55, i64 0, i32 12
  %.repack1010 = getelementptr inbounds %8, %8* %55, i64 0, i32 13
  %433 = getelementptr inbounds [16 x i8*], [16 x i8*]* %args157, i64 0, i64 5
  %434 = getelementptr inbounds [16 x i32], [16 x i32]* %sizes158, i64 0, i64 5
  %435 = getelementptr inbounds [16 x i32], [16 x i32]* %aligns159, i64 0, i64 5
  %436 = getelementptr inbounds [16 x i32], [16 x i32]* %allocs160, i64 0, i64 5
  %437 = getelementptr inbounds [16 x i8], [16 x i8]* %types161, i64 0, i64 5
  %438 = bitcast i8** %433 to %8**
  %439 = getelementptr inbounds [16 x i8*], [16 x i8*]* %args157, i64 0, i64 6
  %440 = getelementptr inbounds [16 x i32], [16 x i32]* %sizes158, i64 0, i64 6
  %441 = getelementptr inbounds [16 x i32], [16 x i32]* %aligns159, i64 0, i64 6
  %442 = getelementptr inbounds [16 x i32], [16 x i32]* %allocs160, i64 0, i64 6
  %443 = getelementptr inbounds [16 x i8], [16 x i8]* %types161, i64 0, i64 6
  %444 = bitcast i8** %439 to i32**
  %445 = getelementptr inbounds [16 x i8*], [16 x i8*]* %args157, i64 0, i64 7
  %446 = getelementptr inbounds [16 x i32], [16 x i32]* %sizes158, i64 0, i64 7
  %447 = getelementptr inbounds [16 x i32], [16 x i32]* %aligns159, i64 0, i64 7
  %448 = getelementptr inbounds [16 x i32], [16 x i32]* %allocs160, i64 0, i64 7
  %449 = getelementptr inbounds [16 x i8], [16 x i8]* %types161, i64 0, i64 7
  %450 = bitcast i8** %445 to i32**
  %.repack1028.repack = getelementptr inbounds %10, %10* %53, i64 0, i32 0, i32 0
  %.repack1028.repack1042 = getelementptr inbounds %10, %10* %53, i64 0, i32 0, i32 1
  %.repack1028.repack1044 = getelementptr inbounds %10, %10* %53, i64 0, i32 0, i32 2
  %.repack1028.repack1046 = getelementptr inbounds %10, %10* %53, i64 0, i32 0, i32 3
  %.repack1028.repack1048 = getelementptr inbounds %10, %10* %53, i64 0, i32 0, i32 4
  %.repack1028.repack1050 = getelementptr inbounds %10, %10* %53, i64 0, i32 0, i32 5
  %.repack1028.repack1052 = getelementptr inbounds %10, %10* %53, i64 0, i32 0, i32 6
  %.repack1028.repack1054 = getelementptr inbounds %10, %10* %53, i64 0, i32 0, i32 7
  %.repack1028.repack1056 = getelementptr inbounds %10, %10* %53, i64 0, i32 0, i32 8
  %.repack1030 = getelementptr inbounds %10, %10* %53, i64 0, i32 1
  %.repack1032 = getelementptr inbounds %10, %10* %53, i64 0, i32 2
  %.repack1034 = getelementptr inbounds %10, %10* %53, i64 0, i32 3
  %.repack1036 = getelementptr inbounds %10, %10* %53, i64 0, i32 4
  %.repack1038 = getelementptr inbounds %10, %10* %53, i64 0, i32 5
  %.repack1040 = getelementptr inbounds %10, %10* %53, i64 0, i32 6
  %451 = getelementptr inbounds [16 x i8*], [16 x i8*]* %args157, i64 0, i64 8
  %452 = getelementptr inbounds [16 x i32], [16 x i32]* %sizes158, i64 0, i64 8
  %453 = getelementptr inbounds [16 x i32], [16 x i32]* %aligns159, i64 0, i64 8
  %454 = getelementptr inbounds [16 x i32], [16 x i32]* %allocs160, i64 0, i64 8
  %455 = getelementptr inbounds [16 x i8], [16 x i8]* %types161, i64 0, i64 8
  %456 = bitcast i8** %451 to %10**
  %457 = getelementptr [0 x i8], [0 x i8]* %118, i64 0, i64 0
  %458 = getelementptr inbounds [16 x i8*], [16 x i8*]* %args157, i64 0, i64 9
  %459 = getelementptr inbounds [16 x i32], [16 x i32]* %sizes158, i64 0, i64 9
  %460 = getelementptr inbounds [16 x i32], [16 x i32]* %aligns159, i64 0, i64 9
  %461 = getelementptr inbounds [16 x i32], [16 x i32]* %allocs160, i64 0, i64 9
  %462 = getelementptr inbounds [16 x i8], [16 x i8]* %types161, i64 0, i64 9
  %463 = bitcast i8** %458 to i8***
  %464 = getelementptr [0 x i8], [0 x i8]* %117, i64 0, i64 0
  %465 = getelementptr inbounds [16 x i8*], [16 x i8*]* %args157, i64 0, i64 10
  %466 = getelementptr inbounds [16 x i32], [16 x i32]* %sizes158, i64 0, i64 10
  %467 = getelementptr inbounds [16 x i32], [16 x i32]* %aligns159, i64 0, i64 10
  %468 = getelementptr inbounds [16 x i32], [16 x i32]* %allocs160, i64 0, i64 10
  %469 = getelementptr inbounds [16 x i8], [16 x i8]* %types161, i64 0, i64 10
  %470 = bitcast i8** %465 to i8***
  %471 = getelementptr [0 x i8], [0 x i8]* %107, i64 0, i64 0
  %472 = getelementptr inbounds [16 x i8*], [16 x i8*]* %args157, i64 0, i64 11
  %473 = getelementptr inbounds [16 x i32], [16 x i32]* %sizes158, i64 0, i64 11
  %474 = getelementptr inbounds [16 x i32], [16 x i32]* %aligns159, i64 0, i64 11
  %475 = getelementptr inbounds [16 x i32], [16 x i32]* %allocs160, i64 0, i64 11
  %476 = getelementptr inbounds [16 x i8], [16 x i8]* %types161, i64 0, i64 11
  %477 = bitcast i8** %472 to i8***
  %478 = getelementptr inbounds [16 x i8*], [16 x i8*]* %args157, i64 0, i64 12
  %479 = getelementptr inbounds [16 x i32], [16 x i32]* %sizes158, i64 0, i64 12
  %480 = getelementptr inbounds [16 x i32], [16 x i32]* %aligns159, i64 0, i64 12
  %481 = getelementptr inbounds [16 x i32], [16 x i32]* %allocs160, i64 0, i64 12
  %482 = getelementptr inbounds [16 x i8], [16 x i8]* %types161, i64 0, i64 12
  %483 = bitcast i8** %478 to %1**
  %484 = getelementptr inbounds [16 x i8*], [16 x i8*]* %args157, i64 0, i64 13
  %485 = getelementptr inbounds [16 x i32], [16 x i32]* %sizes158, i64 0, i64 13
  %486 = getelementptr inbounds [16 x i32], [16 x i32]* %aligns159, i64 0, i64 13
  %487 = getelementptr inbounds [16 x i32], [16 x i32]* %allocs160, i64 0, i64 13
  %488 = getelementptr inbounds [16 x i8], [16 x i8]* %types161, i64 0, i64 13
  %489 = bitcast i8** %484 to %1**
  %490 = getelementptr inbounds [16 x i8*], [16 x i8*]* %args157, i64 0, i64 14
  %491 = getelementptr inbounds [16 x i32], [16 x i32]* %sizes158, i64 0, i64 14
  %492 = getelementptr inbounds [16 x i32], [16 x i32]* %aligns159, i64 0, i64 14
  %493 = getelementptr inbounds [16 x i32], [16 x i32]* %allocs160, i64 0, i64 14
  %494 = getelementptr inbounds [16 x i8], [16 x i8]* %types161, i64 0, i64 14
  %495 = bitcast i8** %490 to %1**
  %496 = getelementptr [0 x i8], [0 x i8]* %105, i64 0, i64 0
  %497 = getelementptr inbounds [16 x i8*], [16 x i8*]* %args157, i64 0, i64 15
  %498 = getelementptr inbounds [16 x i32], [16 x i32]* %sizes158, i64 0, i64 15
  %499 = getelementptr inbounds [16 x i32], [16 x i32]* %aligns159, i64 0, i64 15
  %500 = getelementptr inbounds [16 x i32], [16 x i32]* %allocs160, i64 0, i64 15
  %501 = getelementptr inbounds [16 x i8], [16 x i8]* %types161, i64 0, i64 15
  %502 = bitcast i8** %497 to i8***
  %.repack1058 = getelementptr inbounds [3 x i32], [3 x i32]* %48, i64 0, i64 0
  %.repack1060 = getelementptr inbounds [3 x i32], [3 x i32]* %48, i64 0, i64 1
  %.repack1062 = getelementptr inbounds [3 x i32], [3 x i32]* %48, i64 0, i64 2
  %.repack1064 = getelementptr inbounds [3 x i32], [3 x i32]* %47, i64 0, i64 0
  %.repack1065 = getelementptr inbounds [3 x i32], [3 x i32]* %47, i64 0, i64 1
  %.repack1066 = getelementptr inbounds [3 x i32], [3 x i32]* %47, i64 0, i64 2
  %503 = getelementptr inbounds [3 x i32], [3 x i32]* %48, i64 0, i64 0
  %504 = getelementptr inbounds [3 x i32], [3 x i32]* %47, i64 0, i64 0
  %505 = getelementptr inbounds [16 x i8*], [16 x i8*]* %args157, i64 0, i64 0
  %506 = getelementptr inbounds [16 x i32], [16 x i32]* %sizes158, i64 0, i64 0
  %507 = getelementptr inbounds [16 x i32], [16 x i32]* %aligns159, i64 0, i64 0
  %508 = getelementptr inbounds [16 x i32], [16 x i32]* %allocs160, i64 0, i64 0
  %509 = getelementptr inbounds [16 x i8], [16 x i8]* %types161, i64 0, i64 0
  %.unpack1069.elt = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 0
  %.unpack1069.elt1096 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 1
  %.unpack1069.elt1098 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 2
  %.unpack1069.elt1100 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 3
  %.unpack1069.elt1102 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 4
  %.unpack1069.elt1104 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 5
  %.unpack1069.elt1106 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 6
  %.unpack1069.elt1108 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 7
  %.unpack1069.elt1110 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 8
  %.elt1070 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 1
  %.elt1072 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 2
  %.elt1074 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 3
  %.elt1076 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 4
  %.elt1078 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 5
  %.elt1080 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 6
  %.elt1082 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 7
  %.elt1084 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 8
  %.elt1086 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 9
  %.elt1088 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 10
  %.elt1090 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 11
  %.elt1092 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 12
  %.elt1094 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 13
  %.unpack1114.elt = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 0
  %.unpack1114.elt1127 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 1
  %.unpack1114.elt1129 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 2
  %.unpack1114.elt1131 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 3
  %.unpack1114.elt1133 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 4
  %.unpack1114.elt1135 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 5
  %.unpack1114.elt1137 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 6
  %.unpack1114.elt1139 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 7
  %.unpack1114.elt1141 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 8
  %.elt1115 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 1
  %.elt1117 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 2
  %.elt1119 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 3
  %.elt1121 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 4
  %.elt1123 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 5
  %.elt1125 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 6
  %510 = getelementptr [0 x i8], [0 x i8]* %106, i64 0, i64 0
  %511 = getelementptr inbounds [11 x i32], [11 x i32]* %sizes171, i64 0, i64 0
  %512 = getelementptr inbounds [11 x i32], [11 x i32]* %aligns172, i64 0, i64 0
  %513 = getelementptr inbounds [11 x i32], [11 x i32]* %allocs173, i64 0, i64 0
  %514 = getelementptr inbounds [11 x i8], [11 x i8]* %types174, i64 0, i64 0
  %515 = bitcast [11 x i8*]* %args170 to i8***
  %516 = getelementptr [0 x i8], [0 x i8]* %116, i64 0, i64 0
  %517 = getelementptr inbounds [11 x i8*], [11 x i8*]* %args170, i64 0, i64 1
  %518 = getelementptr inbounds [11 x i32], [11 x i32]* %sizes171, i64 0, i64 1
  %519 = getelementptr inbounds [11 x i32], [11 x i32]* %aligns172, i64 0, i64 1
  %520 = getelementptr inbounds [11 x i32], [11 x i32]* %allocs173, i64 0, i64 1
  %521 = getelementptr inbounds [11 x i8], [11 x i8]* %types174, i64 0, i64 1
  %522 = bitcast i8** %517 to i8***
  %523 = getelementptr [0 x i8], [0 x i8]* %119, i64 0, i64 0
  %524 = getelementptr inbounds [11 x i8*], [11 x i8*]* %args170, i64 0, i64 2
  %525 = getelementptr inbounds [11 x i32], [11 x i32]* %sizes171, i64 0, i64 2
  %526 = getelementptr inbounds [11 x i32], [11 x i32]* %aligns172, i64 0, i64 2
  %527 = getelementptr inbounds [11 x i32], [11 x i32]* %allocs173, i64 0, i64 2
  %528 = getelementptr inbounds [11 x i8], [11 x i8]* %types174, i64 0, i64 2
  %529 = bitcast i8** %524 to i8***
  %530 = getelementptr inbounds [11 x i8*], [11 x i8*]* %args170, i64 0, i64 3
  %531 = getelementptr inbounds [11 x i32], [11 x i32]* %sizes171, i64 0, i64 3
  %532 = getelementptr inbounds [11 x i32], [11 x i32]* %aligns172, i64 0, i64 3
  %533 = getelementptr inbounds [11 x i32], [11 x i32]* %allocs173, i64 0, i64 3
  %534 = getelementptr inbounds [11 x i8], [11 x i8]* %types174, i64 0, i64 3
  %535 = bitcast i8** %530 to i32**
  %536 = getelementptr [0 x i8], [0 x i8]* %105, i64 0, i64 0
  %537 = getelementptr inbounds [11 x i8*], [11 x i8*]* %args170, i64 0, i64 4
  %538 = getelementptr inbounds [11 x i32], [11 x i32]* %sizes171, i64 0, i64 4
  %539 = getelementptr inbounds [11 x i32], [11 x i32]* %aligns172, i64 0, i64 4
  %540 = getelementptr inbounds [11 x i32], [11 x i32]* %allocs173, i64 0, i64 4
  %541 = getelementptr inbounds [11 x i8], [11 x i8]* %types174, i64 0, i64 4
  %542 = bitcast i8** %537 to i8***
  %543 = getelementptr inbounds [11 x i8*], [11 x i8*]* %args170, i64 0, i64 5
  %544 = getelementptr inbounds [11 x i32], [11 x i32]* %sizes171, i64 0, i64 5
  %545 = getelementptr inbounds [11 x i32], [11 x i32]* %aligns172, i64 0, i64 5
  %546 = getelementptr inbounds [11 x i32], [11 x i32]* %allocs173, i64 0, i64 5
  %547 = getelementptr inbounds [11 x i8], [11 x i8]* %types174, i64 0, i64 5
  %548 = bitcast i8** %543 to i32**
  %.repack1145.repack = getelementptr inbounds %10, %10* %41, i64 0, i32 0, i32 0
  %.repack1145.repack1159 = getelementptr inbounds %10, %10* %41, i64 0, i32 0, i32 1
  %.repack1145.repack1161 = getelementptr inbounds %10, %10* %41, i64 0, i32 0, i32 2
  %.repack1145.repack1163 = getelementptr inbounds %10, %10* %41, i64 0, i32 0, i32 3
  %.repack1145.repack1165 = getelementptr inbounds %10, %10* %41, i64 0, i32 0, i32 4
  %.repack1145.repack1167 = getelementptr inbounds %10, %10* %41, i64 0, i32 0, i32 5
  %.repack1145.repack1169 = getelementptr inbounds %10, %10* %41, i64 0, i32 0, i32 6
  %.repack1145.repack1171 = getelementptr inbounds %10, %10* %41, i64 0, i32 0, i32 7
  %.repack1145.repack1173 = getelementptr inbounds %10, %10* %41, i64 0, i32 0, i32 8
  %.repack1147 = getelementptr inbounds %10, %10* %41, i64 0, i32 1
  %.repack1149 = getelementptr inbounds %10, %10* %41, i64 0, i32 2
  %.repack1151 = getelementptr inbounds %10, %10* %41, i64 0, i32 3
  %.repack1153 = getelementptr inbounds %10, %10* %41, i64 0, i32 4
  %.repack1155 = getelementptr inbounds %10, %10* %41, i64 0, i32 5
  %.repack1157 = getelementptr inbounds %10, %10* %41, i64 0, i32 6
  %549 = getelementptr inbounds [11 x i8*], [11 x i8*]* %args170, i64 0, i64 6
  %550 = getelementptr inbounds [11 x i32], [11 x i32]* %sizes171, i64 0, i64 6
  %551 = getelementptr inbounds [11 x i32], [11 x i32]* %aligns172, i64 0, i64 6
  %552 = getelementptr inbounds [11 x i32], [11 x i32]* %allocs173, i64 0, i64 6
  %553 = getelementptr inbounds [11 x i8], [11 x i8]* %types174, i64 0, i64 6
  %554 = bitcast i8** %549 to %10**
  %555 = getelementptr [0 x i8], [0 x i8]* %107, i64 0, i64 0
  %556 = getelementptr inbounds [11 x i8*], [11 x i8*]* %args170, i64 0, i64 7
  %557 = getelementptr inbounds [11 x i32], [11 x i32]* %sizes171, i64 0, i64 7
  %558 = getelementptr inbounds [11 x i32], [11 x i32]* %aligns172, i64 0, i64 7
  %559 = getelementptr inbounds [11 x i32], [11 x i32]* %allocs173, i64 0, i64 7
  %560 = getelementptr inbounds [11 x i8], [11 x i8]* %types174, i64 0, i64 7
  %561 = bitcast i8** %556 to i8***
  %.repack1175.repack = getelementptr inbounds %8, %8* %39, i64 0, i32 0, i32 0
  %.repack1175.repack1203 = getelementptr inbounds %8, %8* %39, i64 0, i32 0, i32 1
  %.repack1175.repack1205 = getelementptr inbounds %8, %8* %39, i64 0, i32 0, i32 2
  %.repack1175.repack1207 = getelementptr inbounds %8, %8* %39, i64 0, i32 0, i32 3
  %.repack1175.repack1209 = getelementptr inbounds %8, %8* %39, i64 0, i32 0, i32 4
  %.repack1175.repack1211 = getelementptr inbounds %8, %8* %39, i64 0, i32 0, i32 5
  %.repack1175.repack1213 = getelementptr inbounds %8, %8* %39, i64 0, i32 0, i32 6
  %.repack1175.repack1215 = getelementptr inbounds %8, %8* %39, i64 0, i32 0, i32 7
  %.repack1175.repack1217 = getelementptr inbounds %8, %8* %39, i64 0, i32 0, i32 8
  %.repack1177 = getelementptr inbounds %8, %8* %39, i64 0, i32 1
  %.repack1179 = getelementptr inbounds %8, %8* %39, i64 0, i32 2
  %.repack1181 = getelementptr inbounds %8, %8* %39, i64 0, i32 3
  %.repack1183 = getelementptr inbounds %8, %8* %39, i64 0, i32 4
  %.repack1185 = getelementptr inbounds %8, %8* %39, i64 0, i32 5
  %.repack1187 = getelementptr inbounds %8, %8* %39, i64 0, i32 6
  %.repack1189 = getelementptr inbounds %8, %8* %39, i64 0, i32 7
  %.repack1191 = getelementptr inbounds %8, %8* %39, i64 0, i32 8
  %.repack1193 = getelementptr inbounds %8, %8* %39, i64 0, i32 9
  %.repack1195 = getelementptr inbounds %8, %8* %39, i64 0, i32 10
  %.repack1197 = getelementptr inbounds %8, %8* %39, i64 0, i32 11
  %.repack1199 = getelementptr inbounds %8, %8* %39, i64 0, i32 12
  %.repack1201 = getelementptr inbounds %8, %8* %39, i64 0, i32 13
  %562 = getelementptr inbounds [11 x i8*], [11 x i8*]* %args170, i64 0, i64 8
  %563 = getelementptr inbounds [11 x i32], [11 x i32]* %sizes171, i64 0, i64 8
  %564 = getelementptr inbounds [11 x i32], [11 x i32]* %aligns172, i64 0, i64 8
  %565 = getelementptr inbounds [11 x i32], [11 x i32]* %allocs173, i64 0, i64 8
  %566 = getelementptr inbounds [11 x i8], [11 x i8]* %types174, i64 0, i64 8
  %567 = bitcast i8** %562 to %8**
  %568 = getelementptr [0 x i8], [0 x i8]* %118, i64 0, i64 0
  %569 = getelementptr inbounds [11 x i8*], [11 x i8*]* %args170, i64 0, i64 9
  %570 = getelementptr inbounds [11 x i32], [11 x i32]* %sizes171, i64 0, i64 9
  %571 = getelementptr inbounds [11 x i32], [11 x i32]* %aligns172, i64 0, i64 9
  %572 = getelementptr inbounds [11 x i32], [11 x i32]* %allocs173, i64 0, i64 9
  %573 = getelementptr inbounds [11 x i8], [11 x i8]* %types174, i64 0, i64 9
  %574 = bitcast i8** %569 to i8***
  %575 = getelementptr [0 x i8], [0 x i8]* %117, i64 0, i64 0
  %576 = getelementptr inbounds [11 x i8*], [11 x i8*]* %args170, i64 0, i64 10
  %577 = getelementptr inbounds [11 x i32], [11 x i32]* %sizes171, i64 0, i64 10
  %578 = getelementptr inbounds [11 x i32], [11 x i32]* %aligns172, i64 0, i64 10
  %579 = getelementptr inbounds [11 x i32], [11 x i32]* %allocs173, i64 0, i64 10
  %580 = getelementptr inbounds [11 x i8], [11 x i8]* %types174, i64 0, i64 10
  %581 = bitcast i8** %576 to i8***
  %.repack1219 = getelementptr inbounds [3 x i32], [3 x i32]* %36, i64 0, i64 0
  %.repack1221 = getelementptr inbounds [3 x i32], [3 x i32]* %36, i64 0, i64 1
  %.repack1223 = getelementptr inbounds [3 x i32], [3 x i32]* %36, i64 0, i64 2
  %.repack1225 = getelementptr inbounds [3 x i32], [3 x i32]* %35, i64 0, i64 0
  %.repack1226 = getelementptr inbounds [3 x i32], [3 x i32]* %35, i64 0, i64 1
  %.repack1227 = getelementptr inbounds [3 x i32], [3 x i32]* %35, i64 0, i64 2
  %582 = getelementptr inbounds [3 x i32], [3 x i32]* %36, i64 0, i64 0
  %583 = getelementptr inbounds [3 x i32], [3 x i32]* %35, i64 0, i64 0
  %584 = getelementptr inbounds [11 x i8*], [11 x i8*]* %args170, i64 0, i64 0
  %585 = getelementptr inbounds [11 x i32], [11 x i32]* %sizes171, i64 0, i64 0
  %586 = getelementptr inbounds [11 x i32], [11 x i32]* %aligns172, i64 0, i64 0
  %587 = getelementptr inbounds [11 x i32], [11 x i32]* %allocs173, i64 0, i64 0
  %588 = getelementptr inbounds [11 x i8], [11 x i8]* %types174, i64 0, i64 0
  %.unpack1230.elt = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 0
  %.unpack1230.elt1257 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 1
  %.unpack1230.elt1259 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 2
  %.unpack1230.elt1261 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 3
  %.unpack1230.elt1263 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 4
  %.unpack1230.elt1265 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 5
  %.unpack1230.elt1267 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 6
  %.unpack1230.elt1269 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 7
  %.unpack1230.elt1271 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 8
  %.elt1231 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 1
  %.elt1233 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 2
  %.elt1235 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 3
  %.elt1237 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 4
  %.elt1239 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 5
  %.elt1241 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 6
  %.elt1243 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 7
  %.elt1245 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 8
  %.elt1247 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 9
  %.elt1249 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 10
  %.elt1251 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 11
  %.elt1253 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 12
  %.elt1255 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 13
  %.unpack1275.elt = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 0
  %.unpack1275.elt1288 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 1
  %.unpack1275.elt1290 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 2
  %.unpack1275.elt1292 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 3
  %.unpack1275.elt1294 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 4
  %.unpack1275.elt1296 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 5
  %.unpack1275.elt1298 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 6
  %.unpack1275.elt1300 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 7
  %.unpack1275.elt1302 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 8
  %.elt1276 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 1
  %.elt1278 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 2
  %.elt1280 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 3
  %.elt1282 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 4
  %.elt1284 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 5
  %.elt1286 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 6
  %589 = getelementptr [0 x i8], [0 x i8]* %107, i64 0, i64 0
  %590 = getelementptr inbounds [11 x i32], [11 x i32]* %sizes179, i64 0, i64 0
  %591 = getelementptr inbounds [11 x i32], [11 x i32]* %aligns180, i64 0, i64 0
  %592 = getelementptr inbounds [11 x i32], [11 x i32]* %allocs181, i64 0, i64 0
  %593 = getelementptr inbounds [11 x i8], [11 x i8]* %types182, i64 0, i64 0
  %594 = bitcast [11 x i8*]* %args178 to i8***
  %595 = getelementptr [0 x i8], [0 x i8]* %118, i64 0, i64 0
  %596 = getelementptr inbounds [11 x i8*], [11 x i8*]* %args178, i64 0, i64 1
  %597 = getelementptr inbounds [11 x i32], [11 x i32]* %sizes179, i64 0, i64 1
  %598 = getelementptr inbounds [11 x i32], [11 x i32]* %aligns180, i64 0, i64 1
  %599 = getelementptr inbounds [11 x i32], [11 x i32]* %allocs181, i64 0, i64 1
  %600 = getelementptr inbounds [11 x i8], [11 x i8]* %types182, i64 0, i64 1
  %601 = bitcast i8** %596 to i8***
  %602 = getelementptr inbounds [11 x i8*], [11 x i8*]* %args178, i64 0, i64 2
  %603 = getelementptr inbounds [11 x i32], [11 x i32]* %sizes179, i64 0, i64 2
  %604 = getelementptr inbounds [11 x i32], [11 x i32]* %aligns180, i64 0, i64 2
  %605 = getelementptr inbounds [11 x i32], [11 x i32]* %allocs181, i64 0, i64 2
  %606 = getelementptr inbounds [11 x i8], [11 x i8]* %types182, i64 0, i64 2
  %607 = bitcast i8** %602 to i32**
  %608 = getelementptr [0 x i8], [0 x i8]* %119, i64 0, i64 0
  %609 = getelementptr inbounds [11 x i8*], [11 x i8*]* %args178, i64 0, i64 3
  %610 = getelementptr inbounds [11 x i32], [11 x i32]* %sizes179, i64 0, i64 3
  %611 = getelementptr inbounds [11 x i32], [11 x i32]* %aligns180, i64 0, i64 3
  %612 = getelementptr inbounds [11 x i32], [11 x i32]* %allocs181, i64 0, i64 3
  %613 = getelementptr inbounds [11 x i8], [11 x i8]* %types182, i64 0, i64 3
  %614 = bitcast i8** %609 to i8***
  %615 = getelementptr inbounds [11 x i8*], [11 x i8*]* %args178, i64 0, i64 4
  %616 = getelementptr inbounds [11 x i32], [11 x i32]* %sizes179, i64 0, i64 4
  %617 = getelementptr inbounds [11 x i32], [11 x i32]* %aligns180, i64 0, i64 4
  %618 = getelementptr inbounds [11 x i32], [11 x i32]* %allocs181, i64 0, i64 4
  %619 = getelementptr inbounds [11 x i8], [11 x i8]* %types182, i64 0, i64 4
  %620 = bitcast i8** %615 to i32**
  %621 = getelementptr [0 x i8], [0 x i8]* %117, i64 0, i64 0
  %622 = getelementptr inbounds [11 x i8*], [11 x i8*]* %args178, i64 0, i64 5
  %623 = getelementptr inbounds [11 x i32], [11 x i32]* %sizes179, i64 0, i64 5
  %624 = getelementptr inbounds [11 x i32], [11 x i32]* %aligns180, i64 0, i64 5
  %625 = getelementptr inbounds [11 x i32], [11 x i32]* %allocs181, i64 0, i64 5
  %626 = getelementptr inbounds [11 x i8], [11 x i8]* %types182, i64 0, i64 5
  %627 = bitcast i8** %622 to i8***
  %628 = getelementptr [0 x i8], [0 x i8]* %105, i64 0, i64 0
  %629 = getelementptr inbounds [11 x i8*], [11 x i8*]* %args178, i64 0, i64 6
  %630 = getelementptr inbounds [11 x i32], [11 x i32]* %sizes179, i64 0, i64 6
  %631 = getelementptr inbounds [11 x i32], [11 x i32]* %aligns180, i64 0, i64 6
  %632 = getelementptr inbounds [11 x i32], [11 x i32]* %allocs181, i64 0, i64 6
  %633 = getelementptr inbounds [11 x i8], [11 x i8]* %types182, i64 0, i64 6
  %634 = bitcast i8** %629 to i8***
  %.repack1306.repack = getelementptr inbounds %8, %8* %28, i64 0, i32 0, i32 0
  %.repack1306.repack1334 = getelementptr inbounds %8, %8* %28, i64 0, i32 0, i32 1
  %.repack1306.repack1336 = getelementptr inbounds %8, %8* %28, i64 0, i32 0, i32 2
  %.repack1306.repack1338 = getelementptr inbounds %8, %8* %28, i64 0, i32 0, i32 3
  %.repack1306.repack1340 = getelementptr inbounds %8, %8* %28, i64 0, i32 0, i32 4
  %.repack1306.repack1342 = getelementptr inbounds %8, %8* %28, i64 0, i32 0, i32 5
  %.repack1306.repack1344 = getelementptr inbounds %8, %8* %28, i64 0, i32 0, i32 6
  %.repack1306.repack1346 = getelementptr inbounds %8, %8* %28, i64 0, i32 0, i32 7
  %.repack1306.repack1348 = getelementptr inbounds %8, %8* %28, i64 0, i32 0, i32 8
  %.repack1308 = getelementptr inbounds %8, %8* %28, i64 0, i32 1
  %.repack1310 = getelementptr inbounds %8, %8* %28, i64 0, i32 2
  %.repack1312 = getelementptr inbounds %8, %8* %28, i64 0, i32 3
  %.repack1314 = getelementptr inbounds %8, %8* %28, i64 0, i32 4
  %.repack1316 = getelementptr inbounds %8, %8* %28, i64 0, i32 5
  %.repack1318 = getelementptr inbounds %8, %8* %28, i64 0, i32 6
  %.repack1320 = getelementptr inbounds %8, %8* %28, i64 0, i32 7
  %.repack1322 = getelementptr inbounds %8, %8* %28, i64 0, i32 8
  %.repack1324 = getelementptr inbounds %8, %8* %28, i64 0, i32 9
  %.repack1326 = getelementptr inbounds %8, %8* %28, i64 0, i32 10
  %.repack1328 = getelementptr inbounds %8, %8* %28, i64 0, i32 11
  %.repack1330 = getelementptr inbounds %8, %8* %28, i64 0, i32 12
  %.repack1332 = getelementptr inbounds %8, %8* %28, i64 0, i32 13
  %635 = getelementptr inbounds [11 x i8*], [11 x i8*]* %args178, i64 0, i64 7
  %636 = getelementptr inbounds [11 x i32], [11 x i32]* %sizes179, i64 0, i64 7
  %637 = getelementptr inbounds [11 x i32], [11 x i32]* %aligns180, i64 0, i64 7
  %638 = getelementptr inbounds [11 x i32], [11 x i32]* %allocs181, i64 0, i64 7
  %639 = getelementptr inbounds [11 x i8], [11 x i8]* %types182, i64 0, i64 7
  %640 = bitcast i8** %635 to %8**
  %641 = getelementptr [0 x i8], [0 x i8]* %106, i64 0, i64 0
  %642 = getelementptr inbounds [11 x i8*], [11 x i8*]* %args178, i64 0, i64 8
  %643 = getelementptr inbounds [11 x i32], [11 x i32]* %sizes179, i64 0, i64 8
  %644 = getelementptr inbounds [11 x i32], [11 x i32]* %aligns180, i64 0, i64 8
  %645 = getelementptr inbounds [11 x i32], [11 x i32]* %allocs181, i64 0, i64 8
  %646 = getelementptr inbounds [11 x i8], [11 x i8]* %types182, i64 0, i64 8
  %647 = bitcast i8** %642 to i8***
  %648 = getelementptr [0 x i8], [0 x i8]* %116, i64 0, i64 0
  %649 = getelementptr inbounds [11 x i8*], [11 x i8*]* %args178, i64 0, i64 9
  %650 = getelementptr inbounds [11 x i32], [11 x i32]* %sizes179, i64 0, i64 9
  %651 = getelementptr inbounds [11 x i32], [11 x i32]* %aligns180, i64 0, i64 9
  %652 = getelementptr inbounds [11 x i32], [11 x i32]* %allocs181, i64 0, i64 9
  %653 = getelementptr inbounds [11 x i8], [11 x i8]* %types182, i64 0, i64 9
  %654 = bitcast i8** %649 to i8***
  %.repack1350.repack = getelementptr inbounds %10, %10* %25, i64 0, i32 0, i32 0
  %.repack1350.repack1364 = getelementptr inbounds %10, %10* %25, i64 0, i32 0, i32 1
  %.repack1350.repack1366 = getelementptr inbounds %10, %10* %25, i64 0, i32 0, i32 2
  %.repack1350.repack1368 = getelementptr inbounds %10, %10* %25, i64 0, i32 0, i32 3
  %.repack1350.repack1370 = getelementptr inbounds %10, %10* %25, i64 0, i32 0, i32 4
  %.repack1350.repack1372 = getelementptr inbounds %10, %10* %25, i64 0, i32 0, i32 5
  %.repack1350.repack1374 = getelementptr inbounds %10, %10* %25, i64 0, i32 0, i32 6
  %.repack1350.repack1376 = getelementptr inbounds %10, %10* %25, i64 0, i32 0, i32 7
  %.repack1350.repack1378 = getelementptr inbounds %10, %10* %25, i64 0, i32 0, i32 8
  %.repack1352 = getelementptr inbounds %10, %10* %25, i64 0, i32 1
  %.repack1354 = getelementptr inbounds %10, %10* %25, i64 0, i32 2
  %.repack1356 = getelementptr inbounds %10, %10* %25, i64 0, i32 3
  %.repack1358 = getelementptr inbounds %10, %10* %25, i64 0, i32 4
  %.repack1360 = getelementptr inbounds %10, %10* %25, i64 0, i32 5
  %.repack1362 = getelementptr inbounds %10, %10* %25, i64 0, i32 6
  %655 = getelementptr inbounds [11 x i8*], [11 x i8*]* %args178, i64 0, i64 10
  %656 = getelementptr inbounds [11 x i32], [11 x i32]* %sizes179, i64 0, i64 10
  %657 = getelementptr inbounds [11 x i32], [11 x i32]* %aligns180, i64 0, i64 10
  %658 = getelementptr inbounds [11 x i32], [11 x i32]* %allocs181, i64 0, i64 10
  %659 = getelementptr inbounds [11 x i8], [11 x i8]* %types182, i64 0, i64 10
  %660 = bitcast i8** %655 to %10**
  %.repack1380 = getelementptr inbounds [3 x i32], [3 x i32]* %24, i64 0, i64 0
  %.repack1382 = getelementptr inbounds [3 x i32], [3 x i32]* %24, i64 0, i64 1
  %.repack1384 = getelementptr inbounds [3 x i32], [3 x i32]* %24, i64 0, i64 2
  %.repack1386 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %.repack1387 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 1
  %.repack1388 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 2
  %661 = getelementptr inbounds [3 x i32], [3 x i32]* %24, i64 0, i64 0
  %662 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %663 = getelementptr inbounds [11 x i8*], [11 x i8*]* %args178, i64 0, i64 0
  %664 = getelementptr inbounds [11 x i32], [11 x i32]* %sizes179, i64 0, i64 0
  %665 = getelementptr inbounds [11 x i32], [11 x i32]* %aligns180, i64 0, i64 0
  %666 = getelementptr inbounds [11 x i32], [11 x i32]* %allocs181, i64 0, i64 0
  %667 = getelementptr inbounds [11 x i8], [11 x i8]* %types182, i64 0, i64 0
  %.unpack1391.elt = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 0
  %.unpack1391.elt1418 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 1
  %.unpack1391.elt1420 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 2
  %.unpack1391.elt1422 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 3
  %.unpack1391.elt1424 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 4
  %.unpack1391.elt1426 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 5
  %.unpack1391.elt1428 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 6
  %.unpack1391.elt1430 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 7
  %.unpack1391.elt1432 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 8
  %.elt1392 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 1
  %.elt1394 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 2
  %.elt1396 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 3
  %.elt1398 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 4
  %.elt1400 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 5
  %.elt1402 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 6
  %.elt1404 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 7
  %.elt1406 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 8
  %.elt1408 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 9
  %.elt1410 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 10
  %.elt1412 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 11
  %.elt1414 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 12
  %.elt1416 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 13
  %.unpack1436.elt = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 0
  %.unpack1436.elt1449 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 1
  %.unpack1436.elt1451 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 2
  %.unpack1436.elt1453 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 3
  %.unpack1436.elt1455 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 4
  %.unpack1436.elt1457 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 5
  %.unpack1436.elt1459 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 6
  %.unpack1436.elt1461 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 7
  %.unpack1436.elt1463 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 8
  %.elt1437 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 1
  %.elt1439 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 2
  %.elt1441 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 3
  %.elt1443 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 4
  %.elt1445 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 5
  %.elt1447 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 6
  %668 = getelementptr [0 x i8], [0 x i8]* %119, i64 0, i64 0
  %669 = getelementptr inbounds [11 x i32], [11 x i32]* %sizes187, i64 0, i64 0
  %670 = getelementptr inbounds [11 x i32], [11 x i32]* %aligns188, i64 0, i64 0
  %671 = getelementptr inbounds [11 x i32], [11 x i32]* %allocs189, i64 0, i64 0
  %672 = getelementptr inbounds [11 x i8], [11 x i8]* %types190, i64 0, i64 0
  %673 = bitcast [11 x i8*]* %args186 to i8***
  %674 = getelementptr [0 x i8], [0 x i8]* %117, i64 0, i64 0
  %675 = getelementptr inbounds [11 x i8*], [11 x i8*]* %args186, i64 0, i64 1
  %676 = getelementptr inbounds [11 x i32], [11 x i32]* %sizes187, i64 0, i64 1
  %677 = getelementptr inbounds [11 x i32], [11 x i32]* %aligns188, i64 0, i64 1
  %678 = getelementptr inbounds [11 x i32], [11 x i32]* %allocs189, i64 0, i64 1
  %679 = getelementptr inbounds [11 x i8], [11 x i8]* %types190, i64 0, i64 1
  %680 = bitcast i8** %675 to i8***
  %681 = getelementptr [0 x i8], [0 x i8]* %107, i64 0, i64 0
  %682 = getelementptr inbounds [11 x i8*], [11 x i8*]* %args186, i64 0, i64 2
  %683 = getelementptr inbounds [11 x i32], [11 x i32]* %sizes187, i64 0, i64 2
  %684 = getelementptr inbounds [11 x i32], [11 x i32]* %aligns188, i64 0, i64 2
  %685 = getelementptr inbounds [11 x i32], [11 x i32]* %allocs189, i64 0, i64 2
  %686 = getelementptr inbounds [11 x i8], [11 x i8]* %types190, i64 0, i64 2
  %687 = bitcast i8** %682 to i8***
  %688 = getelementptr [0 x i8], [0 x i8]* %116, i64 0, i64 0
  %689 = getelementptr inbounds [11 x i8*], [11 x i8*]* %args186, i64 0, i64 3
  %690 = getelementptr inbounds [11 x i32], [11 x i32]* %sizes187, i64 0, i64 3
  %691 = getelementptr inbounds [11 x i32], [11 x i32]* %aligns188, i64 0, i64 3
  %692 = getelementptr inbounds [11 x i32], [11 x i32]* %allocs189, i64 0, i64 3
  %693 = getelementptr inbounds [11 x i8], [11 x i8]* %types190, i64 0, i64 3
  %694 = bitcast i8** %689 to i8***
  %.repack1467.repack = getelementptr inbounds %8, %8* %18, i64 0, i32 0, i32 0
  %.repack1467.repack1495 = getelementptr inbounds %8, %8* %18, i64 0, i32 0, i32 1
  %.repack1467.repack1497 = getelementptr inbounds %8, %8* %18, i64 0, i32 0, i32 2
  %.repack1467.repack1499 = getelementptr inbounds %8, %8* %18, i64 0, i32 0, i32 3
  %.repack1467.repack1501 = getelementptr inbounds %8, %8* %18, i64 0, i32 0, i32 4
  %.repack1467.repack1503 = getelementptr inbounds %8, %8* %18, i64 0, i32 0, i32 5
  %.repack1467.repack1505 = getelementptr inbounds %8, %8* %18, i64 0, i32 0, i32 6
  %.repack1467.repack1507 = getelementptr inbounds %8, %8* %18, i64 0, i32 0, i32 7
  %.repack1467.repack1509 = getelementptr inbounds %8, %8* %18, i64 0, i32 0, i32 8
  %.repack1469 = getelementptr inbounds %8, %8* %18, i64 0, i32 1
  %.repack1471 = getelementptr inbounds %8, %8* %18, i64 0, i32 2
  %.repack1473 = getelementptr inbounds %8, %8* %18, i64 0, i32 3
  %.repack1475 = getelementptr inbounds %8, %8* %18, i64 0, i32 4
  %.repack1477 = getelementptr inbounds %8, %8* %18, i64 0, i32 5
  %.repack1479 = getelementptr inbounds %8, %8* %18, i64 0, i32 6
  %.repack1481 = getelementptr inbounds %8, %8* %18, i64 0, i32 7
  %.repack1483 = getelementptr inbounds %8, %8* %18, i64 0, i32 8
  %.repack1485 = getelementptr inbounds %8, %8* %18, i64 0, i32 9
  %.repack1487 = getelementptr inbounds %8, %8* %18, i64 0, i32 10
  %.repack1489 = getelementptr inbounds %8, %8* %18, i64 0, i32 11
  %.repack1491 = getelementptr inbounds %8, %8* %18, i64 0, i32 12
  %.repack1493 = getelementptr inbounds %8, %8* %18, i64 0, i32 13
  %695 = getelementptr inbounds [11 x i8*], [11 x i8*]* %args186, i64 0, i64 4
  %696 = getelementptr inbounds [11 x i32], [11 x i32]* %sizes187, i64 0, i64 4
  %697 = getelementptr inbounds [11 x i32], [11 x i32]* %aligns188, i64 0, i64 4
  %698 = getelementptr inbounds [11 x i32], [11 x i32]* %allocs189, i64 0, i64 4
  %699 = getelementptr inbounds [11 x i8], [11 x i8]* %types190, i64 0, i64 4
  %700 = bitcast i8** %695 to %8**
  %701 = getelementptr [0 x i8], [0 x i8]* %106, i64 0, i64 0
  %702 = getelementptr inbounds [11 x i8*], [11 x i8*]* %args186, i64 0, i64 5
  %703 = getelementptr inbounds [11 x i32], [11 x i32]* %sizes187, i64 0, i64 5
  %704 = getelementptr inbounds [11 x i32], [11 x i32]* %aligns188, i64 0, i64 5
  %705 = getelementptr inbounds [11 x i32], [11 x i32]* %allocs189, i64 0, i64 5
  %706 = getelementptr inbounds [11 x i8], [11 x i8]* %types190, i64 0, i64 5
  %707 = bitcast i8** %702 to i8***
  %708 = getelementptr inbounds [11 x i8*], [11 x i8*]* %args186, i64 0, i64 6
  %709 = getelementptr inbounds [11 x i32], [11 x i32]* %sizes187, i64 0, i64 6
  %710 = getelementptr inbounds [11 x i32], [11 x i32]* %aligns188, i64 0, i64 6
  %711 = getelementptr inbounds [11 x i32], [11 x i32]* %allocs189, i64 0, i64 6
  %712 = getelementptr inbounds [11 x i8], [11 x i8]* %types190, i64 0, i64 6
  %713 = bitcast i8** %708 to i32**
  %714 = getelementptr [0 x i8], [0 x i8]* %105, i64 0, i64 0
  %715 = getelementptr inbounds [11 x i8*], [11 x i8*]* %args186, i64 0, i64 7
  %716 = getelementptr inbounds [11 x i32], [11 x i32]* %sizes187, i64 0, i64 7
  %717 = getelementptr inbounds [11 x i32], [11 x i32]* %aligns188, i64 0, i64 7
  %718 = getelementptr inbounds [11 x i32], [11 x i32]* %allocs189, i64 0, i64 7
  %719 = getelementptr inbounds [11 x i8], [11 x i8]* %types190, i64 0, i64 7
  %720 = bitcast i8** %715 to i8***
  %721 = getelementptr inbounds [11 x i8*], [11 x i8*]* %args186, i64 0, i64 8
  %722 = getelementptr inbounds [11 x i32], [11 x i32]* %sizes187, i64 0, i64 8
  %723 = getelementptr inbounds [11 x i32], [11 x i32]* %aligns188, i64 0, i64 8
  %724 = getelementptr inbounds [11 x i32], [11 x i32]* %allocs189, i64 0, i64 8
  %725 = getelementptr inbounds [11 x i8], [11 x i8]* %types190, i64 0, i64 8
  %726 = bitcast i8** %721 to i32**
  %.repack1511.repack = getelementptr inbounds %10, %10* %14, i64 0, i32 0, i32 0
  %.repack1511.repack1525 = getelementptr inbounds %10, %10* %14, i64 0, i32 0, i32 1
  %.repack1511.repack1527 = getelementptr inbounds %10, %10* %14, i64 0, i32 0, i32 2
  %.repack1511.repack1529 = getelementptr inbounds %10, %10* %14, i64 0, i32 0, i32 3
  %.repack1511.repack1531 = getelementptr inbounds %10, %10* %14, i64 0, i32 0, i32 4
  %.repack1511.repack1533 = getelementptr inbounds %10, %10* %14, i64 0, i32 0, i32 5
  %.repack1511.repack1535 = getelementptr inbounds %10, %10* %14, i64 0, i32 0, i32 6
  %.repack1511.repack1537 = getelementptr inbounds %10, %10* %14, i64 0, i32 0, i32 7
  %.repack1511.repack1539 = getelementptr inbounds %10, %10* %14, i64 0, i32 0, i32 8
  %.repack1513 = getelementptr inbounds %10, %10* %14, i64 0, i32 1
  %.repack1515 = getelementptr inbounds %10, %10* %14, i64 0, i32 2
  %.repack1517 = getelementptr inbounds %10, %10* %14, i64 0, i32 3
  %.repack1519 = getelementptr inbounds %10, %10* %14, i64 0, i32 4
  %.repack1521 = getelementptr inbounds %10, %10* %14, i64 0, i32 5
  %.repack1523 = getelementptr inbounds %10, %10* %14, i64 0, i32 6
  %727 = getelementptr inbounds [11 x i8*], [11 x i8*]* %args186, i64 0, i64 9
  %728 = getelementptr inbounds [11 x i32], [11 x i32]* %sizes187, i64 0, i64 9
  %729 = getelementptr inbounds [11 x i32], [11 x i32]* %aligns188, i64 0, i64 9
  %730 = getelementptr inbounds [11 x i32], [11 x i32]* %allocs189, i64 0, i64 9
  %731 = getelementptr inbounds [11 x i8], [11 x i8]* %types190, i64 0, i64 9
  %732 = bitcast i8** %727 to %10**
  %733 = getelementptr [0 x i8], [0 x i8]* %118, i64 0, i64 0
  %734 = getelementptr inbounds [11 x i8*], [11 x i8*]* %args186, i64 0, i64 10
  %735 = getelementptr inbounds [11 x i32], [11 x i32]* %sizes187, i64 0, i64 10
  %736 = getelementptr inbounds [11 x i32], [11 x i32]* %aligns188, i64 0, i64 10
  %737 = getelementptr inbounds [11 x i32], [11 x i32]* %allocs189, i64 0, i64 10
  %738 = getelementptr inbounds [11 x i8], [11 x i8]* %types190, i64 0, i64 10
  %739 = bitcast i8** %734 to i8***
  %.repack1541 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %.repack1543 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 1
  %.repack1545 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 2
  %.repack1547 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %.repack1548 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  %.repack1549 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  %740 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %741 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %742 = getelementptr inbounds [11 x i8*], [11 x i8*]* %args186, i64 0, i64 0
  %743 = getelementptr inbounds [11 x i32], [11 x i32]* %sizes187, i64 0, i64 0
  %744 = getelementptr inbounds [11 x i32], [11 x i32]* %aligns188, i64 0, i64 0
  %745 = getelementptr inbounds [11 x i32], [11 x i32]* %allocs189, i64 0, i64 0
  %746 = getelementptr inbounds [11 x i8], [11 x i8]* %types190, i64 0, i64 0
  %.unpack1551.elt = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 0
  %.unpack1551.elt1564 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 1
  %.unpack1551.elt1566 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 2
  %.unpack1551.elt1568 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 3
  %.unpack1551.elt1570 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 4
  %.unpack1551.elt1572 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 5
  %.unpack1551.elt1574 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 6
  %.unpack1551.elt1576 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 7
  %.unpack1551.elt1578 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 0, i32 8
  %.elt1552 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 1
  %.elt1554 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 2
  %.elt1556 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 3
  %.elt1558 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 4
  %.elt1560 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 5
  %.elt1562 = getelementptr inbounds %10, %10* %secondary_4082236, i64 0, i32 6
  %747 = bitcast i8** %10 to [0 x %12]**
  %748 = getelementptr inbounds [4 x i32], [4 x i32]* %sizes194, i64 0, i64 0
  %749 = getelementptr inbounds [4 x i32], [4 x i32]* %aligns195, i64 0, i64 0
  %750 = getelementptr inbounds [4 x i32], [4 x i32]* %allocs196, i64 0, i64 0
  %751 = getelementptr inbounds [4 x i8], [4 x i8]* %types197, i64 0, i64 0
  %752 = bitcast [4 x i8*]* %args193 to i8***
  %753 = bitcast i8** %9 to [0 x float]**
  %754 = getelementptr inbounds [4 x i8*], [4 x i8*]* %args193, i64 0, i64 1
  %755 = getelementptr inbounds [4 x i32], [4 x i32]* %sizes194, i64 0, i64 1
  %756 = getelementptr inbounds [4 x i32], [4 x i32]* %aligns195, i64 0, i64 1
  %757 = getelementptr inbounds [4 x i32], [4 x i32]* %allocs196, i64 0, i64 1
  %758 = getelementptr inbounds [4 x i8], [4 x i8]* %types197, i64 0, i64 1
  %759 = bitcast i8** %754 to i8***
  %.repack1582.repack = getelementptr inbounds %10, %10* %8, i64 0, i32 0, i32 0
  %.repack1582.repack1596 = getelementptr inbounds %10, %10* %8, i64 0, i32 0, i32 1
  %.repack1582.repack1598 = getelementptr inbounds %10, %10* %8, i64 0, i32 0, i32 2
  %.repack1582.repack1600 = getelementptr inbounds %10, %10* %8, i64 0, i32 0, i32 3
  %.repack1582.repack1602 = getelementptr inbounds %10, %10* %8, i64 0, i32 0, i32 4
  %.repack1582.repack1604 = getelementptr inbounds %10, %10* %8, i64 0, i32 0, i32 5
  %.repack1582.repack1606 = getelementptr inbounds %10, %10* %8, i64 0, i32 0, i32 6
  %.repack1582.repack1608 = getelementptr inbounds %10, %10* %8, i64 0, i32 0, i32 7
  %.repack1582.repack1610 = getelementptr inbounds %10, %10* %8, i64 0, i32 0, i32 8
  %.repack1584 = getelementptr inbounds %10, %10* %8, i64 0, i32 1
  %.repack1586 = getelementptr inbounds %10, %10* %8, i64 0, i32 2
  %.repack1588 = getelementptr inbounds %10, %10* %8, i64 0, i32 3
  %.repack1590 = getelementptr inbounds %10, %10* %8, i64 0, i32 4
  %.repack1592 = getelementptr inbounds %10, %10* %8, i64 0, i32 5
  %.repack1594 = getelementptr inbounds %10, %10* %8, i64 0, i32 6
  %760 = getelementptr inbounds [4 x i8*], [4 x i8*]* %args193, i64 0, i64 2
  %761 = getelementptr inbounds [4 x i32], [4 x i32]* %sizes194, i64 0, i64 2
  %762 = getelementptr inbounds [4 x i32], [4 x i32]* %aligns195, i64 0, i64 2
  %763 = getelementptr inbounds [4 x i32], [4 x i32]* %allocs196, i64 0, i64 2
  %764 = getelementptr inbounds [4 x i8], [4 x i8]* %types197, i64 0, i64 2
  %765 = bitcast i8** %760 to %10**
  %766 = bitcast i8** %7 to [0 x %11]**
  %767 = getelementptr inbounds [4 x i8*], [4 x i8*]* %args193, i64 0, i64 3
  %768 = getelementptr inbounds [4 x i32], [4 x i32]* %sizes194, i64 0, i64 3
  %769 = getelementptr inbounds [4 x i32], [4 x i32]* %aligns195, i64 0, i64 3
  %770 = getelementptr inbounds [4 x i32], [4 x i32]* %allocs196, i64 0, i64 3
  %771 = getelementptr inbounds [4 x i8], [4 x i8]* %types197, i64 0, i64 3
  %772 = bitcast i8** %767 to i8***
  %.repack1612 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %.repack1614 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  %.repack1616 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 2
  %.repack1618 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %.repack1619 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  %.repack1620 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  %773 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %774 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %775 = getelementptr inbounds [4 x i8*], [4 x i8*]* %args193, i64 0, i64 0
  %776 = getelementptr inbounds [4 x i32], [4 x i32]* %sizes194, i64 0, i64 0
  %777 = getelementptr inbounds [4 x i32], [4 x i32]* %aligns195, i64 0, i64 0
  %778 = getelementptr inbounds [4 x i32], [4 x i32]* %allocs196, i64 0, i64 0
  %779 = getelementptr inbounds [4 x i8], [4 x i8]* %types197, i64 0, i64 0
  %.unpack1622.elt = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 0
  %.unpack1622.elt1649 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 1
  %.unpack1622.elt1651 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 2
  %.unpack1622.elt1653 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 3
  %.unpack1622.elt1655 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 4
  %.unpack1622.elt1657 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 5
  %.unpack1622.elt1659 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 6
  %.unpack1622.elt1661 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 7
  %.unpack1622.elt1663 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 8
  %.elt1623 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 1
  %.elt1625 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 2
  %.elt1627 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 3
  %.elt1629 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 4
  %.elt1631 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 5
  %.elt1633 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 6
  %.elt1635 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 7
  %.elt1637 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 8
  %.elt1639 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 9
  %.elt1641 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 10
  %.elt1643 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 11
  %.elt1645 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 12
  %.elt1647 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 13
  %.unpack1667.elt = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 0
  %.unpack1667.elt1694 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 1
  %.unpack1667.elt1696 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 2
  %.unpack1667.elt1698 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 3
  %.unpack1667.elt1700 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 4
  %.unpack1667.elt1702 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 5
  %.unpack1667.elt1704 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 6
  %.unpack1667.elt1706 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 7
  %.unpack1667.elt1708 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 8
  %.elt1668 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 1
  %.elt1670 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 2
  %.elt1672 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 3
  %.elt1674 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 4
  %.elt1676 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 5
  %.elt1678 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 6
  %.elt1680 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 7
  %.elt1682 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 8
  %.elt1684 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 9
  %.elt1686 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 10
  %.elt1688 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 11
  %.elt1690 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 12
  %.elt1692 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 13
  %.repack1712.repack = getelementptr inbounds %8, %8* %4, i64 0, i32 0, i32 0
  %.repack1712.repack1740 = getelementptr inbounds %8, %8* %4, i64 0, i32 0, i32 1
  %.repack1712.repack1742 = getelementptr inbounds %8, %8* %4, i64 0, i32 0, i32 2
  %.repack1712.repack1744 = getelementptr inbounds %8, %8* %4, i64 0, i32 0, i32 3
  %.repack1712.repack1746 = getelementptr inbounds %8, %8* %4, i64 0, i32 0, i32 4
  %.repack1712.repack1748 = getelementptr inbounds %8, %8* %4, i64 0, i32 0, i32 5
  %.repack1712.repack1750 = getelementptr inbounds %8, %8* %4, i64 0, i32 0, i32 6
  %.repack1712.repack1752 = getelementptr inbounds %8, %8* %4, i64 0, i32 0, i32 7
  %.repack1712.repack1754 = getelementptr inbounds %8, %8* %4, i64 0, i32 0, i32 8
  %.repack1714 = getelementptr inbounds %8, %8* %4, i64 0, i32 1
  %.repack1716 = getelementptr inbounds %8, %8* %4, i64 0, i32 2
  %.repack1718 = getelementptr inbounds %8, %8* %4, i64 0, i32 3
  %.repack1720 = getelementptr inbounds %8, %8* %4, i64 0, i32 4
  %.repack1722 = getelementptr inbounds %8, %8* %4, i64 0, i32 5
  %.repack1724 = getelementptr inbounds %8, %8* %4, i64 0, i32 6
  %.repack1726 = getelementptr inbounds %8, %8* %4, i64 0, i32 7
  %.repack1728 = getelementptr inbounds %8, %8* %4, i64 0, i32 8
  %.repack1730 = getelementptr inbounds %8, %8* %4, i64 0, i32 9
  %.repack1732 = getelementptr inbounds %8, %8* %4, i64 0, i32 10
  %.repack1734 = getelementptr inbounds %8, %8* %4, i64 0, i32 11
  %.repack1736 = getelementptr inbounds %8, %8* %4, i64 0, i32 12
  %.repack1738 = getelementptr inbounds %8, %8* %4, i64 0, i32 13
  %780 = getelementptr inbounds [3 x i32], [3 x i32]* %sizes200, i64 0, i64 0
  %781 = getelementptr inbounds [3 x i32], [3 x i32]* %aligns201, i64 0, i64 0
  %782 = getelementptr inbounds [3 x i32], [3 x i32]* %allocs202, i64 0, i64 0
  %783 = getelementptr inbounds [3 x i8], [3 x i8]* %types203, i64 0, i64 0
  %784 = bitcast [3 x i8*]* %args199 to %8**
  %.repack1756.repack = getelementptr inbounds %8, %8* %3, i64 0, i32 0, i32 0
  %.repack1756.repack1784 = getelementptr inbounds %8, %8* %3, i64 0, i32 0, i32 1
  %.repack1756.repack1786 = getelementptr inbounds %8, %8* %3, i64 0, i32 0, i32 2
  %.repack1756.repack1788 = getelementptr inbounds %8, %8* %3, i64 0, i32 0, i32 3
  %.repack1756.repack1790 = getelementptr inbounds %8, %8* %3, i64 0, i32 0, i32 4
  %.repack1756.repack1792 = getelementptr inbounds %8, %8* %3, i64 0, i32 0, i32 5
  %.repack1756.repack1794 = getelementptr inbounds %8, %8* %3, i64 0, i32 0, i32 6
  %.repack1756.repack1796 = getelementptr inbounds %8, %8* %3, i64 0, i32 0, i32 7
  %.repack1756.repack1798 = getelementptr inbounds %8, %8* %3, i64 0, i32 0, i32 8
  %.repack1758 = getelementptr inbounds %8, %8* %3, i64 0, i32 1
  %.repack1760 = getelementptr inbounds %8, %8* %3, i64 0, i32 2
  %.repack1762 = getelementptr inbounds %8, %8* %3, i64 0, i32 3
  %.repack1764 = getelementptr inbounds %8, %8* %3, i64 0, i32 4
  %.repack1766 = getelementptr inbounds %8, %8* %3, i64 0, i32 5
  %.repack1768 = getelementptr inbounds %8, %8* %3, i64 0, i32 6
  %.repack1770 = getelementptr inbounds %8, %8* %3, i64 0, i32 7
  %.repack1772 = getelementptr inbounds %8, %8* %3, i64 0, i32 8
  %.repack1774 = getelementptr inbounds %8, %8* %3, i64 0, i32 9
  %.repack1776 = getelementptr inbounds %8, %8* %3, i64 0, i32 10
  %.repack1778 = getelementptr inbounds %8, %8* %3, i64 0, i32 11
  %.repack1780 = getelementptr inbounds %8, %8* %3, i64 0, i32 12
  %.repack1782 = getelementptr inbounds %8, %8* %3, i64 0, i32 13
  %785 = getelementptr inbounds [3 x i8*], [3 x i8*]* %args199, i64 0, i64 1
  %786 = getelementptr inbounds [3 x i32], [3 x i32]* %sizes200, i64 0, i64 1
  %787 = getelementptr inbounds [3 x i32], [3 x i32]* %aligns201, i64 0, i64 1
  %788 = getelementptr inbounds [3 x i32], [3 x i32]* %allocs202, i64 0, i64 1
  %789 = getelementptr inbounds [3 x i8], [3 x i8]* %types203, i64 0, i64 1
  %790 = bitcast i8** %785 to %8**
  %791 = bitcast i8** %2 to [0 x i32]**
  %792 = getelementptr inbounds [3 x i8*], [3 x i8*]* %args199, i64 0, i64 2
  %793 = getelementptr inbounds [3 x i32], [3 x i32]* %sizes200, i64 0, i64 2
  %794 = getelementptr inbounds [3 x i32], [3 x i32]* %aligns201, i64 0, i64 2
  %795 = getelementptr inbounds [3 x i32], [3 x i32]* %allocs202, i64 0, i64 2
  %796 = getelementptr inbounds [3 x i8], [3 x i8]* %types203, i64 0, i64 2
  %797 = bitcast i8** %792 to i8***
  %.repack1800 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 0
  %.repack1802 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 1
  %.repack1804 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 2
  %.repack1806 = getelementptr inbounds [3 x i32], [3 x i32]* %0, i64 0, i64 0
  %.repack1807 = getelementptr inbounds [3 x i32], [3 x i32]* %0, i64 0, i64 1
  %.repack1808 = getelementptr inbounds [3 x i32], [3 x i32]* %0, i64 0, i64 2
  %798 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 0
  %799 = getelementptr inbounds [3 x i32], [3 x i32]* %0, i64 0, i64 0
  %800 = getelementptr inbounds [3 x i8*], [3 x i8*]* %args199, i64 0, i64 0
  %801 = getelementptr inbounds [3 x i32], [3 x i32]* %sizes200, i64 0, i64 0
  %802 = getelementptr inbounds [3 x i32], [3 x i32]* %aligns201, i64 0, i64 0
  %803 = getelementptr inbounds [3 x i32], [3 x i32]* %allocs202, i64 0, i64 0
  %804 = getelementptr inbounds [3 x i8], [3 x i8]* %types203, i64 0, i64 0
  %.unpack1810.elt = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 0
  %.unpack1810.elt1837 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 1
  %.unpack1810.elt1839 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 2
  %.unpack1810.elt1841 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 3
  %.unpack1810.elt1843 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 4
  %.unpack1810.elt1845 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 5
  %.unpack1810.elt1847 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 6
  %.unpack1810.elt1849 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 7
  %.unpack1810.elt1851 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 8
  %.elt1811 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 1
  %.elt1813 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 2
  %.elt1815 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 3
  %.elt1817 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 4
  %.elt1819 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 5
  %.elt1821 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 6
  %.elt1823 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 7
  %.elt1825 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 8
  %.elt1827 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 9
  %.elt1829 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 10
  %.elt1831 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 11
  %.elt1833 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 12
  %.elt1835 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 13
  %.unpack1855.elt = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 0
  %.unpack1855.elt1882 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 1
  %.unpack1855.elt1884 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 2
  %.unpack1855.elt1886 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 3
  %.unpack1855.elt1888 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 4
  %.unpack1855.elt1890 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 5
  %.unpack1855.elt1892 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 6
  %.unpack1855.elt1894 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 7
  %.unpack1855.elt1896 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 8
  %.elt1856 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 1
  %.elt1858 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 2
  %.elt1860 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 3
  %.elt1862 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 4
  %.elt1864 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 5
  %.elt1866 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 6
  %.elt1868 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 7
  %.elt1870 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 8
  %.elt1872 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 9
  %.elt1874 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 10
  %.elt1876 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 11
  %.elt1878 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 12
  %.elt1880 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 13
  %primary_4082217.repack.repack1926 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 0
  %primary_4082217.repack.repack1927 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 1
  %primary_4082217.repack.repack1929 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 2
  %primary_4082217.repack.repack1931 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 3
  %primary_4082217.repack.repack1933 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 4
  %primary_4082217.repack.repack1935 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 5
  %primary_4082217.repack.repack1937 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 6
  %primary_4082217.repack.repack1939 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 7
  %primary_4082217.repack.repack1941 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 0, i32 8
  %primary_4082217.repack1900 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 1
  %primary_4082217.repack1902 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 2
  %primary_4082217.repack1904 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 3
  %primary_4082217.repack1906 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 4
  %primary_4082217.repack1908 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 5
  %primary_4082217.repack1910 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 6
  %primary_4082217.repack1912 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 7
  %primary_4082217.repack1914 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 8
  %primary_4082217.repack1916 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 9
  %primary_4082217.repack1918 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 10
  %primary_4082217.repack1920 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 11
  %primary_4082217.repack1922 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 12
  %primary_4082217.repack1924 = getelementptr inbounds %8, %8* %primary_4082217, i64 0, i32 13
  %other_primary_4082227.repack.repack1970 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 0
  %other_primary_4082227.repack.repack1971 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 1
  %other_primary_4082227.repack.repack1973 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 2
  %other_primary_4082227.repack.repack1975 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 3
  %other_primary_4082227.repack.repack1977 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 4
  %other_primary_4082227.repack.repack1979 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 5
  %other_primary_4082227.repack.repack1981 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 6
  %other_primary_4082227.repack.repack1983 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 7
  %other_primary_4082227.repack.repack1985 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 0, i32 8
  %other_primary_4082227.repack1944 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 1
  %other_primary_4082227.repack1946 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 2
  %other_primary_4082227.repack1948 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 3
  %other_primary_4082227.repack1950 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 4
  %other_primary_4082227.repack1952 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 5
  %other_primary_4082227.repack1954 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 6
  %other_primary_4082227.repack1956 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 7
  %other_primary_4082227.repack1958 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 8
  %other_primary_4082227.repack1960 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 9
  %other_primary_4082227.repack1962 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 10
  %other_primary_4082227.repack1964 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 11
  %other_primary_4082227.repack1966 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 12
  %other_primary_4082227.repack1968 = getelementptr inbounds %8, %8* %other_primary_4082227, i64 0, i32 13
  br label %while_head, !dbg !130

while_head:                                       ; preds = %while_head.backedge, %render
  %805 = load i32, i32* %id_4082251, align 4, !dbg !131
  %806 = icmp slt i32 %805, %num_rays124, !dbg !131
  %807 = load i32, i32* %124, align 8
  %808 = icmp sgt i32 %807, 0
  %or.cond = or i1 %806, %808, !dbg !131
  br i1 %or.cond, label %while_body, label %expr_false29, !dbg !131

expr_false29:                                     ; preds = %while_head
  call void @rodent_present(i32 19), !dbg !132
  ret void, !dbg !118

while_body:                                       ; preds = %while_head
  %809 = load i32, i32* %124, align 8, !dbg !133
  %810 = icmp slt i32 %809, 1048576, !dbg !133
  %811 = load i32, i32* %id_4082251, align 4
  %812 = icmp slt i32 %811, %num_rays124
  %or.cond2113 = and i1 %810, %812, !dbg !133
  br i1 %or.cond2113, label %expr_true34, label %if_join44, !dbg !133

expr_true34:                                      ; preds = %while_body
  %.unpack1988.unpack = load [0 x i32]*, [0 x i32]** %.unpack1988.elt, align 8, !dbg !134
  %.unpack1988.unpack2016 = load [0 x float]*, [0 x float]** %.unpack1988.elt2015, align 8, !dbg !134
  %.unpack1988.unpack2018 = load [0 x float]*, [0 x float]** %.unpack1988.elt2017, align 8, !dbg !134
  %.unpack1988.unpack2020 = load [0 x float]*, [0 x float]** %.unpack1988.elt2019, align 8, !dbg !134
  %.unpack1988.unpack2022 = load [0 x float]*, [0 x float]** %.unpack1988.elt2021, align 8, !dbg !134
  %.unpack1988.unpack2024 = load [0 x float]*, [0 x float]** %.unpack1988.elt2023, align 8, !dbg !134
  %.unpack1988.unpack2026 = load [0 x float]*, [0 x float]** %.unpack1988.elt2025, align 8, !dbg !134
  %.unpack1988.unpack2028 = load [0 x float]*, [0 x float]** %.unpack1988.elt2027, align 8, !dbg !134
  %.unpack1988.unpack2030 = load [0 x float]*, [0 x float]** %.unpack1988.elt2029, align 8, !dbg !134
  %.unpack1990 = load [0 x i32]*, [0 x i32]** %.elt1989, align 8, !dbg !134
  %.unpack1992 = load [0 x i32]*, [0 x i32]** %.elt1991, align 8, !dbg !134
  %.unpack1994 = load [0 x float]*, [0 x float]** %.elt1993, align 8, !dbg !134
  %.unpack1996 = load [0 x float]*, [0 x float]** %.elt1995, align 8, !dbg !134
  %.unpack1998 = load [0 x float]*, [0 x float]** %.elt1997, align 8, !dbg !134
  %.unpack2000 = load [0 x i32]*, [0 x i32]** %.elt1999, align 8, !dbg !134
  %.unpack2002 = load [0 x float]*, [0 x float]** %.elt2001, align 8, !dbg !134
  %.unpack2004 = load [0 x float]*, [0 x float]** %.elt2003, align 8, !dbg !134
  %.unpack2006 = load [0 x float]*, [0 x float]** %.elt2005, align 8, !dbg !134
  %.unpack2008 = load [0 x float]*, [0 x float]** %.elt2007, align 8, !dbg !134
  %.unpack2010 = load [0 x i32]*, [0 x i32]** %.elt2009, align 8, !dbg !134
  %.unpack2012 = load i32, i32* %.elt2011, align 8, !dbg !134
  %.unpack2014 = load i32, i32* %.elt2013, align 4, !dbg !134
  %813 = load i32, i32* %id_4082251, align 4, !dbg !134
  %814 = sub nsw i32 %num_rays124, %813, !dbg !134
  %815 = sub nsw i32 1048576, %.unpack2012, !dbg !134
  %816 = icmp slt i32 %814, %815, !dbg !134
  %. = select i1 %816, i32 %814, i32 %815, !dbg !135
  br label %ilog2_helper, !dbg !136

ilog2_helper:                                     ; preds = %ilog2_helper, %expr_true34
  %p = phi i32 [ 0, %expr_true34 ], [ %818, %ilog2_helper ], !dbg !137
  %817 = shl nsw i32 1, %p, !dbg !137
  %.not2032 = icmp sgt i32 %122, %817, !dbg !137
  %818 = add nuw nsw i32 %p, 1, !dbg !138
  br i1 %.not2032, label %ilog2_helper, label %expr_true39, !dbg !137

expr_true39:                                      ; preds = %ilog2_helper
  %m = srem i32 %., 64, !dbg !138
  %.not2033 = icmp eq i32 %m, 0, !dbg !138
  %819 = sub nsw i32 64, %m, !dbg !138
  %if_join42 = select i1 %.not2033, i32 0, i32 %819, !dbg !138
  store float %.unpack216, float* %.repack2034, align 8, !dbg !139
  store float %.unpack218, float* %.repack2036, align 4, !dbg !139
  store float %.unpack220, float* %.repack2038, align 8, !dbg !139
  store %4* %99, %4** %139, align 8, !dbg !139
  store i32 12, i32* %135, align 4, !dbg !139
  store i32 4, i32* %136, align 4, !dbg !139
  store i32 12, i32* %137, align 4, !dbg !139
  store i8 2, i8* %138, align 1, !dbg !139
  store float %.unpack210, float* %.repack2040, align 8, !dbg !139
  store float %.unpack212, float* %.repack2042, align 4, !dbg !139
  store float %.unpack214, float* %.repack2044, align 8, !dbg !139
  store %4* %98, %4** %145, align 8, !dbg !139
  store i32 12, i32* %141, align 4, !dbg !139
  store i32 4, i32* %142, align 4, !dbg !139
  store i32 12, i32* %143, align 4, !dbg !139
  store i8 2, i8* %144, align 1, !dbg !139
  store i32 %813, i32* %first_ray_id, align 4, !dbg !139
  store i32* %first_ray_id, i32** %151, align 8, !dbg !139
  store i32 4, i32* %147, align 4, !dbg !139
  store i32 4, i32* %148, align 4, !dbg !139
  store i32 4, i32* %149, align 4, !dbg !139
  store i8 0, i8* %150, align 1, !dbg !139
  store i32 %iter_4082021, i32* %iter, align 4, !dbg !139
  store i32* %iter, i32** %157, align 8, !dbg !139
  store i32 4, i32* %153, align 4, !dbg !139
  store i32 4, i32* %154, align 4, !dbg !139
  store i32 4, i32* %155, align 4, !dbg !139
  store i8 0, i8* %156, align 1, !dbg !139
  store i32 %122, i32* %97, align 4, !dbg !139
  store i32* %97, i32** %163, align 8, !dbg !139
  store i32 4, i32* %159, align 4, !dbg !139
  store i32 4, i32* %160, align 4, !dbg !139
  store i32 4, i32* %161, align 4, !dbg !139
  store i8 0, i8* %162, align 1, !dbg !139
  store float %.unpack222, float* %.repack2046, align 8, !dbg !139
  store float %.unpack224, float* %.repack2048, align 4, !dbg !139
  store float %.unpack226, float* %.repack2050, align 8, !dbg !139
  store %4* %96, %4** %169, align 8, !dbg !139
  store i32 12, i32* %165, align 4, !dbg !139
  store i32 4, i32* %166, align 4, !dbg !139
  store i32 12, i32* %167, align 4, !dbg !139
  store i8 2, i8* %168, align 1, !dbg !139
  store float %101, float* %95, align 4, !dbg !139
  store float* %95, float** %175, align 8, !dbg !139
  store i32 4, i32* %171, align 4, !dbg !139
  store i32 4, i32* %172, align 4, !dbg !139
  store i32 4, i32* %173, align 4, !dbg !139
  store i8 0, i8* %174, align 1, !dbg !139
  store i32 %123, i32* %94, align 4, !dbg !139
  store i32* %94, i32** %181, align 8, !dbg !139
  store i32 4, i32* %177, align 4, !dbg !139
  store i32 4, i32* %178, align 4, !dbg !139
  store i32 4, i32* %179, align 4, !dbg !139
  store i8 0, i8* %180, align 1, !dbg !139
  store float %103, float* %93, align 4, !dbg !139
  store float* %93, float** %187, align 8, !dbg !139
  store i32 4, i32* %183, align 4, !dbg !139
  store i32 4, i32* %184, align 4, !dbg !139
  store i32 4, i32* %185, align 4, !dbg !139
  store i8 0, i8* %186, align 1, !dbg !139
  store i32 %p, i32* %p125, align 4, !dbg !139
  store i32* %p125, i32** %193, align 8, !dbg !139
  store i32 4, i32* %189, align 4, !dbg !139
  store i32 4, i32* %190, align 4, !dbg !139
  store i32 4, i32* %191, align 4, !dbg !139
  store i8 0, i8* %192, align 1, !dbg !139
  store i32 %., i32* %lambda_cont126, align 4, !dbg !139
  store i32* %lambda_cont126, i32** %199, align 8, !dbg !139
  store i32 4, i32* %195, align 4, !dbg !139
  store i32 4, i32* %196, align 4, !dbg !139
  store i32 4, i32* %197, align 4, !dbg !139
  store i8 0, i8* %198, align 1, !dbg !139
  store float %.unpack, float* %.repack2052, align 8, !dbg !139
  store float %.unpack206, float* %.repack2054, align 4, !dbg !139
  store float %.unpack208, float* %.repack2056, align 8, !dbg !139
  store %4* %92, %4** %205, align 8, !dbg !139
  store i32 12, i32* %201, align 4, !dbg !139
  store i32 4, i32* %202, align 4, !dbg !139
  store i32 12, i32* %203, align 4, !dbg !139
  store i8 2, i8* %204, align 1, !dbg !139
  store [0 x i32]* %.unpack1988.unpack, [0 x i32]** %.repack2058.repack, align 8, !dbg !139
  store [0 x float]* %.unpack1988.unpack2016, [0 x float]** %.repack2058.repack2086, align 8, !dbg !139
  store [0 x float]* %.unpack1988.unpack2018, [0 x float]** %.repack2058.repack2088, align 8, !dbg !139
  store [0 x float]* %.unpack1988.unpack2020, [0 x float]** %.repack2058.repack2090, align 8, !dbg !139
  store [0 x float]* %.unpack1988.unpack2022, [0 x float]** %.repack2058.repack2092, align 8, !dbg !139
  store [0 x float]* %.unpack1988.unpack2024, [0 x float]** %.repack2058.repack2094, align 8, !dbg !139
  store [0 x float]* %.unpack1988.unpack2026, [0 x float]** %.repack2058.repack2096, align 8, !dbg !139
  store [0 x float]* %.unpack1988.unpack2028, [0 x float]** %.repack2058.repack2098, align 8, !dbg !139
  store [0 x float]* %.unpack1988.unpack2030, [0 x float]** %.repack2058.repack2100, align 8, !dbg !139
  store [0 x i32]* %.unpack1990, [0 x i32]** %.repack2060, align 8, !dbg !139
  store [0 x i32]* %.unpack1992, [0 x i32]** %.repack2062, align 8, !dbg !139
  store [0 x float]* %.unpack1994, [0 x float]** %.repack2064, align 8, !dbg !139
  store [0 x float]* %.unpack1996, [0 x float]** %.repack2066, align 8, !dbg !139
  store [0 x float]* %.unpack1998, [0 x float]** %.repack2068, align 8, !dbg !139
  store [0 x i32]* %.unpack2000, [0 x i32]** %.repack2070, align 8, !dbg !139
  store [0 x float]* %.unpack2002, [0 x float]** %.repack2072, align 8, !dbg !139
  store [0 x float]* %.unpack2004, [0 x float]** %.repack2074, align 8, !dbg !139
  store [0 x float]* %.unpack2006, [0 x float]** %.repack2076, align 8, !dbg !139
  store [0 x float]* %.unpack2008, [0 x float]** %.repack2078, align 8, !dbg !139
  store [0 x i32]* %.unpack2010, [0 x i32]** %.repack2080, align 8, !dbg !139
  store i32 %.unpack2012, i32* %.repack2082, align 8, !dbg !139
  store i32 %.unpack2014, i32* %.repack2084, align 4, !dbg !139
  store %8* %91, %8** %211, align 8, !dbg !139
  store i32 168, i32* %207, align 4, !dbg !139
  store i32 8, i32* %208, align 4, !dbg !139
  store i32 168, i32* %209, align 4, !dbg !139
  store i8 2, i8* %210, align 1, !dbg !139
  %820 = add nsw i32 %., %if_join42, !dbg !139
  store i32 %820, i32* %.repack2102, align 4, !dbg !139
  store i32 1, i32* %.repack2104, align 4, !dbg !139
  store i32 1, i32* %.repack2106, align 4, !dbg !139
  store i32 64, i32* %.repack2108, align 4, !dbg !139
  store i32 1, i32* %.repack2109, align 4, !dbg !139
  store i32 1, i32* %.repack2110, align 4, !dbg !139
  call void @anydsl_launch_kernel(i32 19, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @12, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i64 0, i64 0), i32* nonnull %212, i32* nonnull %213, i8** nonnull %214, i32* nonnull %215, i32* nonnull %216, i32* nonnull %217, i8* nonnull %218, i32 13), !dbg !139
  call void @anydsl_synchronize(i32 19), !dbg !140
  %821 = load i32, i32* %id_4082251, align 4, !dbg !141
  %822 = add nsw i32 %821, %., !dbg !141
  store i32 %822, i32* %id_4082251, align 4, !dbg !141
  %823 = add nsw i32 %.unpack2012, %., !dbg !141
  store i32 %823, i32* %124, align 8, !dbg !141
  br label %if_join44, !dbg !141

if_join44:                                        ; preds = %while_body, %expr_true39
  %.unpack228.unpack = load [0 x i32]*, [0 x i32]** %.unpack228.elt, align 8, !dbg !142
  %.unpack228.unpack256 = load [0 x float]*, [0 x float]** %.unpack228.elt255, align 8, !dbg !142
  %.unpack228.unpack258 = load [0 x float]*, [0 x float]** %.unpack228.elt257, align 8, !dbg !142
  %.unpack228.unpack260 = load [0 x float]*, [0 x float]** %.unpack228.elt259, align 8, !dbg !142
  %.unpack228.unpack262 = load [0 x float]*, [0 x float]** %.unpack228.elt261, align 8, !dbg !142
  %.unpack228.unpack264 = load [0 x float]*, [0 x float]** %.unpack228.elt263, align 8, !dbg !142
  %.unpack228.unpack266 = load [0 x float]*, [0 x float]** %.unpack228.elt265, align 8, !dbg !142
  %.unpack228.unpack268 = load [0 x float]*, [0 x float]** %.unpack228.elt267, align 8, !dbg !142
  %.unpack228.unpack270 = load [0 x float]*, [0 x float]** %.unpack228.elt269, align 8, !dbg !142
  %.unpack230 = load [0 x i32]*, [0 x i32]** %.elt229, align 8, !dbg !142
  %.unpack232 = load [0 x i32]*, [0 x i32]** %.elt231, align 8, !dbg !142
  %.unpack234 = load [0 x float]*, [0 x float]** %.elt233, align 8, !dbg !142
  %.unpack236 = load [0 x float]*, [0 x float]** %.elt235, align 8, !dbg !142
  %.unpack238 = load [0 x float]*, [0 x float]** %.elt237, align 8, !dbg !142
  %.unpack240 = load [0 x i32]*, [0 x i32]** %.elt239, align 8, !dbg !142
  %.unpack242 = load [0 x float]*, [0 x float]** %.elt241, align 8, !dbg !142
  %.unpack244 = load [0 x float]*, [0 x float]** %.elt243, align 8, !dbg !142
  %.unpack246 = load [0 x float]*, [0 x float]** %.elt245, align 8, !dbg !142
  %.unpack248 = load [0 x float]*, [0 x float]** %.elt247, align 8, !dbg !142
  %.unpack250 = load [0 x i32]*, [0 x i32]** %.elt249, align 8, !dbg !142
  %.unpack252 = load i32, i32* %.elt251, align 8, !dbg !142
  %.unpack254 = load i32, i32* %.elt253, align 4, !dbg !142
  %m127 = srem i32 %.unpack252, 64, !dbg !142
  %.not = icmp eq i32 %m127, 0, !dbg !142
  %824 = sub nsw i32 64, %m127, !dbg !142
  %if_join48 = select i1 %.not, i32 0, i32 %824, !dbg !142
  store [0 x %12]* %109, [0 x %12]** %219, align 8, !dbg !139
  store i8** %88, i8*** %224, align 8, !dbg !139
  store i32 8, i32* %220, align 4, !dbg !139
  store i32 8, i32* %221, align 4, !dbg !139
  store i32 8, i32* %222, align 4, !dbg !139
  store i8 1, i8* %223, align 1, !dbg !139
  store [0 x i32]* %.unpack228.unpack, [0 x i32]** %.repack.repack, align 8, !dbg !139
  store [0 x float]* %.unpack228.unpack256, [0 x float]** %.repack.repack299, align 8, !dbg !139
  store [0 x float]* %.unpack228.unpack258, [0 x float]** %.repack.repack301, align 8, !dbg !139
  store [0 x float]* %.unpack228.unpack260, [0 x float]** %.repack.repack303, align 8, !dbg !139
  store [0 x float]* %.unpack228.unpack262, [0 x float]** %.repack.repack305, align 8, !dbg !139
  store [0 x float]* %.unpack228.unpack264, [0 x float]** %.repack.repack307, align 8, !dbg !139
  store [0 x float]* %.unpack228.unpack266, [0 x float]** %.repack.repack309, align 8, !dbg !139
  store [0 x float]* %.unpack228.unpack268, [0 x float]** %.repack.repack311, align 8, !dbg !139
  store [0 x float]* %.unpack228.unpack270, [0 x float]** %.repack.repack313, align 8, !dbg !139
  store [0 x i32]* %.unpack230, [0 x i32]** %.repack273, align 8, !dbg !139
  store [0 x i32]* %.unpack232, [0 x i32]** %.repack275, align 8, !dbg !139
  store [0 x float]* %.unpack234, [0 x float]** %.repack277, align 8, !dbg !139
  store [0 x float]* %.unpack236, [0 x float]** %.repack279, align 8, !dbg !139
  store [0 x float]* %.unpack238, [0 x float]** %.repack281, align 8, !dbg !139
  store [0 x i32]* %.unpack240, [0 x i32]** %.repack283, align 8, !dbg !139
  store [0 x float]* %.unpack242, [0 x float]** %.repack285, align 8, !dbg !139
  store [0 x float]* %.unpack244, [0 x float]** %.repack287, align 8, !dbg !139
  store [0 x float]* %.unpack246, [0 x float]** %.repack289, align 8, !dbg !139
  store [0 x float]* %.unpack248, [0 x float]** %.repack291, align 8, !dbg !139
  store [0 x i32]* %.unpack250, [0 x i32]** %.repack293, align 8, !dbg !139
  store i32 %.unpack252, i32* %.repack295, align 8, !dbg !139
  store i32 %.unpack254, i32* %.repack297, align 4, !dbg !139
  store %8* %87, %8** %230, align 8, !dbg !139
  store i32 168, i32* %226, align 4, !dbg !139
  store i32 8, i32* %227, align 4, !dbg !139
  store i32 168, i32* %228, align 4, !dbg !139
  store i8 2, i8* %229, align 1, !dbg !139
  store [0 x %11]* %110, [0 x %11]** %231, align 8, !dbg !139
  store i8** %86, i8*** %237, align 8, !dbg !139
  store i32 8, i32* %233, align 4, !dbg !139
  store i32 8, i32* %234, align 4, !dbg !139
  store i32 8, i32* %235, align 4, !dbg !139
  store i8 1, i8* %236, align 1, !dbg !139
  %825 = add nsw i32 %.unpack252, %if_join48, !dbg !139
  store i32 %825, i32* %.repack, align 4, !dbg !139
  store i32 1, i32* %.repack316, align 4, !dbg !139
  store i32 1, i32* %.repack318, align 4, !dbg !139
  store i32 64, i32* %.repack320, align 4, !dbg !139
  store i32 1, i32* %.repack321, align 4, !dbg !139
  store i32 1, i32* %.repack322, align 4, !dbg !139
  call void @anydsl_launch_kernel(i32 19, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @12, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i64 0, i64 0), i32* nonnull %238, i32* nonnull %239, i8** nonnull %240, i32* nonnull %241, i32* nonnull %242, i32* nonnull %243, i8* nonnull %244, i32 3), !dbg !139
  %.unpack324.unpack = load [0 x i32]*, [0 x i32]** %.unpack324.elt, align 8, !dbg !143
  %.unpack324.unpack352 = load [0 x float]*, [0 x float]** %.unpack324.elt351, align 8, !dbg !143
  %.unpack324.unpack354 = load [0 x float]*, [0 x float]** %.unpack324.elt353, align 8, !dbg !143
  %.unpack324.unpack356 = load [0 x float]*, [0 x float]** %.unpack324.elt355, align 8, !dbg !143
  %.unpack324.unpack358 = load [0 x float]*, [0 x float]** %.unpack324.elt357, align 8, !dbg !143
  %.unpack324.unpack360 = load [0 x float]*, [0 x float]** %.unpack324.elt359, align 8, !dbg !143
  %.unpack324.unpack362 = load [0 x float]*, [0 x float]** %.unpack324.elt361, align 8, !dbg !143
  %.unpack324.unpack364 = load [0 x float]*, [0 x float]** %.unpack324.elt363, align 8, !dbg !143
  %.unpack324.unpack366 = load [0 x float]*, [0 x float]** %.unpack324.elt365, align 8, !dbg !143
  %.unpack326 = load [0 x i32]*, [0 x i32]** %.elt325, align 8, !dbg !143
  %.unpack328 = load [0 x i32]*, [0 x i32]** %.elt327, align 8, !dbg !143
  %.unpack330 = load [0 x float]*, [0 x float]** %.elt329, align 8, !dbg !143
  %.unpack332 = load [0 x float]*, [0 x float]** %.elt331, align 8, !dbg !143
  %.unpack334 = load [0 x float]*, [0 x float]** %.elt333, align 8, !dbg !143
  %.unpack336 = load [0 x i32]*, [0 x i32]** %.elt335, align 8, !dbg !143
  %.unpack338 = load [0 x float]*, [0 x float]** %.elt337, align 8, !dbg !143
  %.unpack340 = load [0 x float]*, [0 x float]** %.elt339, align 8, !dbg !143
  %.unpack342 = load [0 x float]*, [0 x float]** %.elt341, align 8, !dbg !143
  %.unpack344 = load [0 x float]*, [0 x float]** %.elt343, align 8, !dbg !143
  %.unpack346 = load [0 x i32]*, [0 x i32]** %.elt345, align 8, !dbg !143
  %.unpack348 = load i32, i32* %.elt347, align 8, !dbg !143
  %.unpack350 = load i32, i32* %.elt349, align 4, !dbg !143
  %.unpack369.unpack = load [0 x i32]*, [0 x i32]** %.unpack369.elt, align 8, !dbg !143
  %.unpack369.unpack397 = load [0 x float]*, [0 x float]** %.unpack369.elt396, align 8, !dbg !143
  %.unpack369.unpack399 = load [0 x float]*, [0 x float]** %.unpack369.elt398, align 8, !dbg !143
  %.unpack369.unpack401 = load [0 x float]*, [0 x float]** %.unpack369.elt400, align 8, !dbg !143
  %.unpack369.unpack403 = load [0 x float]*, [0 x float]** %.unpack369.elt402, align 8, !dbg !143
  %.unpack369.unpack405 = load [0 x float]*, [0 x float]** %.unpack369.elt404, align 8, !dbg !143
  %.unpack369.unpack407 = load [0 x float]*, [0 x float]** %.unpack369.elt406, align 8, !dbg !143
  %.unpack369.unpack409 = load [0 x float]*, [0 x float]** %.unpack369.elt408, align 8, !dbg !143
  %.unpack369.unpack411 = load [0 x float]*, [0 x float]** %.unpack369.elt410, align 8, !dbg !143
  %.unpack371 = load [0 x i32]*, [0 x i32]** %.elt370, align 8, !dbg !143
  %.unpack373 = load [0 x i32]*, [0 x i32]** %.elt372, align 8, !dbg !143
  %.unpack375 = load [0 x float]*, [0 x float]** %.elt374, align 8, !dbg !143
  %.unpack377 = load [0 x float]*, [0 x float]** %.elt376, align 8, !dbg !143
  %.unpack379 = load [0 x float]*, [0 x float]** %.elt378, align 8, !dbg !143
  %.unpack381 = load [0 x i32]*, [0 x i32]** %.elt380, align 8, !dbg !143
  %.unpack383 = load [0 x float]*, [0 x float]** %.elt382, align 8, !dbg !143
  %.unpack385 = load [0 x float]*, [0 x float]** %.elt384, align 8, !dbg !143
  %.unpack387 = load [0 x float]*, [0 x float]** %.elt386, align 8, !dbg !143
  %.unpack389 = load [0 x float]*, [0 x float]** %.elt388, align 8, !dbg !143
  %.unpack391 = load [0 x i32]*, [0 x i32]** %.elt390, align 8, !dbg !143
  %.unpack393 = load i32, i32* %.elt392, align 8, !dbg !143
  %.unpack395 = load i32, i32* %.elt394, align 4, !dbg !143
  %826 = load [0 x i32]*, [0 x i32]** %gpu_tmp_4082245, align 8, !dbg !143
  store [0 x i32]* %826, [0 x i32]** %245, align 8, !dbg !143
  store i8** %83, i8*** %250, align 8, !dbg !143
  store i32 8, i32* %246, align 4, !dbg !143
  store i32 8, i32* %247, align 4, !dbg !143
  store i32 8, i32* %248, align 4, !dbg !143
  store i8 1, i8* %249, align 1, !dbg !143
  store i32 64, i32* %.repack413, align 4, !dbg !143
  store i32 1, i32* %.repack414, align 4, !dbg !143
  store i32 1, i32* %.repack415, align 4, !dbg !143
  store i32 64, i32* %.repack416, align 4, !dbg !143
  store i32 1, i32* %.repack417, align 4, !dbg !143
  store i32 1, i32* %.repack418, align 4, !dbg !143
  call void @anydsl_launch_kernel(i32 19, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @12, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i64 0, i64 0), i32* nonnull %251, i32* nonnull %252, i8** nonnull %253, i32* nonnull %254, i32* nonnull %255, i32* nonnull %256, i8* nonnull %257, i32 1), !dbg !143
  call void @anydsl_synchronize(i32 19), !dbg !144
  %m138 = srem i32 %.unpack348, 64, !dbg !145
  %.not419 = icmp eq i32 %m138, 0, !dbg !145
  %827 = sub nsw i32 64, %m138, !dbg !145
  %if_join54 = select i1 %.not419, i32 0, i32 %827, !dbg !145
  store [0 x i32]* %.unpack324.unpack, [0 x i32]** %.repack420.repack, align 8, !dbg !139
  store [0 x float]* %.unpack324.unpack352, [0 x float]** %.repack420.repack448, align 8, !dbg !139
  store [0 x float]* %.unpack324.unpack354, [0 x float]** %.repack420.repack450, align 8, !dbg !139
  store [0 x float]* %.unpack324.unpack356, [0 x float]** %.repack420.repack452, align 8, !dbg !139
  store [0 x float]* %.unpack324.unpack358, [0 x float]** %.repack420.repack454, align 8, !dbg !139
  store [0 x float]* %.unpack324.unpack360, [0 x float]** %.repack420.repack456, align 8, !dbg !139
  store [0 x float]* %.unpack324.unpack362, [0 x float]** %.repack420.repack458, align 8, !dbg !139
  store [0 x float]* %.unpack324.unpack364, [0 x float]** %.repack420.repack460, align 8, !dbg !139
  store [0 x float]* %.unpack324.unpack366, [0 x float]** %.repack420.repack462, align 8, !dbg !139
  store [0 x i32]* %.unpack326, [0 x i32]** %.repack422, align 8, !dbg !139
  store [0 x i32]* %.unpack328, [0 x i32]** %.repack424, align 8, !dbg !139
  store [0 x float]* %.unpack330, [0 x float]** %.repack426, align 8, !dbg !139
  store [0 x float]* %.unpack332, [0 x float]** %.repack428, align 8, !dbg !139
  store [0 x float]* %.unpack334, [0 x float]** %.repack430, align 8, !dbg !139
  store [0 x i32]* %.unpack336, [0 x i32]** %.repack432, align 8, !dbg !139
  store [0 x float]* %.unpack338, [0 x float]** %.repack434, align 8, !dbg !139
  store [0 x float]* %.unpack340, [0 x float]** %.repack436, align 8, !dbg !139
  store [0 x float]* %.unpack342, [0 x float]** %.repack438, align 8, !dbg !139
  store [0 x float]* %.unpack344, [0 x float]** %.repack440, align 8, !dbg !139
  store [0 x i32]* %.unpack346, [0 x i32]** %.repack442, align 8, !dbg !139
  store i32 %.unpack348, i32* %.repack444, align 8, !dbg !139
  store i32 %.unpack350, i32* %.repack446, align 4, !dbg !139
  store %8* %80, %8** %262, align 8, !dbg !139
  store i32 168, i32* %258, align 4, !dbg !139
  store i32 8, i32* %259, align 4, !dbg !139
  store i32 168, i32* %260, align 4, !dbg !139
  store i8 2, i8* %261, align 1, !dbg !139
  store [0 x i32]* %826, [0 x i32]** %263, align 8, !dbg !139
  store i8** %79, i8*** %269, align 8, !dbg !139
  store i32 8, i32* %265, align 4, !dbg !139
  store i32 8, i32* %266, align 4, !dbg !139
  store i32 8, i32* %267, align 4, !dbg !139
  store i8 1, i8* %268, align 1, !dbg !139
  %828 = add nsw i32 %.unpack348, %if_join54, !dbg !139
  store i32 %828, i32* %.repack464, align 4, !dbg !139
  store i32 1, i32* %.repack466, align 4, !dbg !139
  store i32 1, i32* %.repack468, align 4, !dbg !139
  store i32 64, i32* %.repack470, align 4, !dbg !139
  store i32 1, i32* %.repack471, align 4, !dbg !139
  store i32 1, i32* %.repack472, align 4, !dbg !139
  call void @anydsl_launch_kernel(i32 19, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @12, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i64 0, i64 0), i32* nonnull %270, i32* nonnull %271, i8** nonnull %272, i32* nonnull %273, i32* nonnull %274, i32* nonnull %275, i8* nonnull %276, i32 2), !dbg !139
  call void @anydsl_synchronize(i32 19), !dbg !146
  %829 = bitcast [0 x i32]* %826 to [0 x i8]*, !dbg !147
  call void @anydsl_copy(i32 19, [0 x i8]* %829, i64 0, i32 0, [0 x i8]* nonnull %125, i64 0, i64 24), !dbg !147
  store i32 0, i32* %n_4083490, align 4, !dbg !148
  %830 = load i32, i32* %n_4083490, align 4, !dbg !149
  store i32 %830, i32* %277, align 4, !dbg !149
  %831 = load i32, i32* %278, align 4, !dbg !149
  %832 = add nsw i32 %830, %831, !dbg !149
  store i32 %832, i32* %n_4083490, align 4, !dbg !149
  store i32 %832, i32* %278, align 4, !dbg !149
  store i32 %832, i32* %279, align 4, !dbg !149
  %833 = load i32, i32* %280, align 4, !dbg !149
  %834 = load i32, i32* %n_4083490, align 4, !dbg !149
  %835 = add nsw i32 %834, %833, !dbg !149
  store i32 %835, i32* %n_4083490, align 4, !dbg !149
  store i32 %835, i32* %280, align 4, !dbg !149
  %836 = load i32, i32* %n_4083490, align 4, !dbg !149
  store i32 %836, i32* %281, align 4, !dbg !149
  %837 = load i32, i32* %282, align 4, !dbg !149
  %838 = load i32, i32* %n_4083490, align 4, !dbg !149
  %839 = add nsw i32 %838, %837, !dbg !149
  store i32 %839, i32* %n_4083490, align 4, !dbg !149
  store i32 %839, i32* %282, align 4, !dbg !149
  %840 = load i32, i32* %n_4083490, align 4, !dbg !149
  store i32 %840, i32* %283, align 4, !dbg !149
  %841 = load i32, i32* %284, align 4, !dbg !149
  %842 = load i32, i32* %n_4083490, align 4, !dbg !149
  %843 = add nsw i32 %842, %841, !dbg !149
  store i32 %843, i32* %n_4083490, align 4, !dbg !149
  store i32 %843, i32* %284, align 4, !dbg !149
  %844 = load i32, i32* %n_4083490, align 4, !dbg !149
  store i32 %844, i32* %285, align 4, !dbg !149
  %845 = load i32, i32* %286, align 4, !dbg !149
  %846 = load i32, i32* %n_4083490, align 4, !dbg !149
  %847 = add nsw i32 %846, %845, !dbg !149
  store i32 %847, i32* %n_4083490, align 4, !dbg !149
  store i32 %847, i32* %286, align 4, !dbg !149
  %848 = load i32, i32* %n_4083490, align 4, !dbg !149
  store i32 %848, i32* %287, align 4, !dbg !149
  %849 = load i32, i32* %288, align 4, !dbg !149
  %850 = load i32, i32* %n_4083490, align 4, !dbg !149
  %851 = add nsw i32 %850, %849, !dbg !149
  store i32 %851, i32* %n_4083490, align 4, !dbg !149
  store i32 %851, i32* %288, align 4, !dbg !149
  call void @anydsl_copy(i32 0, [0 x i8]* nonnull %126, i64 0, i32 19, [0 x i8]* %829, i64 0, i64 24), !dbg !149
  %if_join63 = select i1 %.not419, i32 0, i32 %827, !dbg !150
  store [0 x i32]* %826, [0 x i32]** %289, align 8, !dbg !139
  store i8** %76, i8*** %294, align 8, !dbg !139
  store i32 8, i32* %290, align 4, !dbg !139
  store i32 8, i32* %291, align 4, !dbg !139
  store i32 8, i32* %292, align 4, !dbg !139
  store i8 1, i8* %293, align 1, !dbg !139
  store [0 x i32]* %.unpack369.unpack, [0 x i32]** %.repack473.repack, align 8, !dbg !139
  store [0 x float]* %.unpack369.unpack397, [0 x float]** %.repack473.repack501, align 8, !dbg !139
  store [0 x float]* %.unpack369.unpack399, [0 x float]** %.repack473.repack503, align 8, !dbg !139
  store [0 x float]* %.unpack369.unpack401, [0 x float]** %.repack473.repack505, align 8, !dbg !139
  store [0 x float]* %.unpack369.unpack403, [0 x float]** %.repack473.repack507, align 8, !dbg !139
  store [0 x float]* %.unpack369.unpack405, [0 x float]** %.repack473.repack509, align 8, !dbg !139
  store [0 x float]* %.unpack369.unpack407, [0 x float]** %.repack473.repack511, align 8, !dbg !139
  store [0 x float]* %.unpack369.unpack409, [0 x float]** %.repack473.repack513, align 8, !dbg !139
  store [0 x float]* %.unpack369.unpack411, [0 x float]** %.repack473.repack515, align 8, !dbg !139
  store [0 x i32]* %.unpack371, [0 x i32]** %.repack475, align 8, !dbg !139
  store [0 x i32]* %.unpack373, [0 x i32]** %.repack477, align 8, !dbg !139
  store [0 x float]* %.unpack375, [0 x float]** %.repack479, align 8, !dbg !139
  store [0 x float]* %.unpack377, [0 x float]** %.repack481, align 8, !dbg !139
  store [0 x float]* %.unpack379, [0 x float]** %.repack483, align 8, !dbg !139
  store [0 x i32]* %.unpack381, [0 x i32]** %.repack485, align 8, !dbg !139
  store [0 x float]* %.unpack383, [0 x float]** %.repack487, align 8, !dbg !139
  store [0 x float]* %.unpack385, [0 x float]** %.repack489, align 8, !dbg !139
  store [0 x float]* %.unpack387, [0 x float]** %.repack491, align 8, !dbg !139
  store [0 x float]* %.unpack389, [0 x float]** %.repack493, align 8, !dbg !139
  store [0 x i32]* %.unpack391, [0 x i32]** %.repack495, align 8, !dbg !139
  store i32 %.unpack393, i32* %.repack497, align 8, !dbg !139
  store i32 %.unpack395, i32* %.repack499, align 4, !dbg !139
  store %8* %75, %8** %300, align 8, !dbg !139
  store i32 168, i32* %296, align 4, !dbg !139
  store i32 8, i32* %297, align 4, !dbg !139
  store i32 168, i32* %298, align 4, !dbg !139
  store i8 2, i8* %299, align 1, !dbg !139
  store [0 x i32]* %.unpack324.unpack, [0 x i32]** %.repack517.repack, align 8, !dbg !139
  store [0 x float]* %.unpack324.unpack352, [0 x float]** %.repack517.repack545, align 8, !dbg !139
  store [0 x float]* %.unpack324.unpack354, [0 x float]** %.repack517.repack547, align 8, !dbg !139
  store [0 x float]* %.unpack324.unpack356, [0 x float]** %.repack517.repack549, align 8, !dbg !139
  store [0 x float]* %.unpack324.unpack358, [0 x float]** %.repack517.repack551, align 8, !dbg !139
  store [0 x float]* %.unpack324.unpack360, [0 x float]** %.repack517.repack553, align 8, !dbg !139
  store [0 x float]* %.unpack324.unpack362, [0 x float]** %.repack517.repack555, align 8, !dbg !139
  store [0 x float]* %.unpack324.unpack364, [0 x float]** %.repack517.repack557, align 8, !dbg !139
  store [0 x float]* %.unpack324.unpack366, [0 x float]** %.repack517.repack559, align 8, !dbg !139
  store [0 x i32]* %.unpack326, [0 x i32]** %.repack519, align 8, !dbg !139
  store [0 x i32]* %.unpack328, [0 x i32]** %.repack521, align 8, !dbg !139
  store [0 x float]* %.unpack330, [0 x float]** %.repack523, align 8, !dbg !139
  store [0 x float]* %.unpack332, [0 x float]** %.repack525, align 8, !dbg !139
  store [0 x float]* %.unpack334, [0 x float]** %.repack527, align 8, !dbg !139
  store [0 x i32]* %.unpack336, [0 x i32]** %.repack529, align 8, !dbg !139
  store [0 x float]* %.unpack338, [0 x float]** %.repack531, align 8, !dbg !139
  store [0 x float]* %.unpack340, [0 x float]** %.repack533, align 8, !dbg !139
  store [0 x float]* %.unpack342, [0 x float]** %.repack535, align 8, !dbg !139
  store [0 x float]* %.unpack344, [0 x float]** %.repack537, align 8, !dbg !139
  store [0 x i32]* %.unpack346, [0 x i32]** %.repack539, align 8, !dbg !139
  store i32 %.unpack348, i32* %.repack541, align 8, !dbg !139
  store i32 %.unpack350, i32* %.repack543, align 4, !dbg !139
  store %8* %74, %8** %306, align 8, !dbg !139
  store i32 168, i32* %302, align 4, !dbg !139
  store i32 8, i32* %303, align 4, !dbg !139
  store i32 168, i32* %304, align 4, !dbg !139
  store i8 2, i8* %305, align 1, !dbg !139
  %852 = add nsw i32 %.unpack348, %if_join63, !dbg !139
  store i32 %852, i32* %.repack561, align 4, !dbg !139
  store i32 1, i32* %.repack563, align 4, !dbg !139
  store i32 1, i32* %.repack565, align 4, !dbg !139
  store i32 64, i32* %.repack567, align 4, !dbg !139
  store i32 1, i32* %.repack568, align 4, !dbg !139
  store i32 1, i32* %.repack569, align 4, !dbg !139
  call void @anydsl_launch_kernel(i32 19, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @12, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i64 0, i64 0), i32* nonnull %307, i32* nonnull %308, i8** nonnull %309, i32* nonnull %310, i32* nonnull %311, i32* nonnull %312, i8* nonnull %313, i32 3), !dbg !139
  call void @anydsl_synchronize(i32 19), !dbg !151
  %.unpack571.unpack = load [0 x i32]*, [0 x i32]** %.unpack571.elt, align 8, !dbg !152
  %.unpack571.unpack599 = load [0 x float]*, [0 x float]** %.unpack571.elt598, align 8, !dbg !152
  %.unpack571.unpack601 = load [0 x float]*, [0 x float]** %.unpack571.elt600, align 8, !dbg !152
  %.unpack571.unpack603 = load [0 x float]*, [0 x float]** %.unpack571.elt602, align 8, !dbg !152
  %.unpack571.unpack605 = load [0 x float]*, [0 x float]** %.unpack571.elt604, align 8, !dbg !152
  %.unpack571.unpack607 = load [0 x float]*, [0 x float]** %.unpack571.elt606, align 8, !dbg !152
  %.unpack571.unpack609 = load [0 x float]*, [0 x float]** %.unpack571.elt608, align 8, !dbg !152
  %.unpack571.unpack611 = load [0 x float]*, [0 x float]** %.unpack571.elt610, align 8, !dbg !152
  %.unpack571.unpack613 = load [0 x float]*, [0 x float]** %.unpack571.elt612, align 8, !dbg !152
  %.unpack573 = load [0 x i32]*, [0 x i32]** %.elt572, align 8, !dbg !152
  %.unpack575 = load [0 x i32]*, [0 x i32]** %.elt574, align 8, !dbg !152
  %.unpack577 = load [0 x float]*, [0 x float]** %.elt576, align 8, !dbg !152
  %.unpack579 = load [0 x float]*, [0 x float]** %.elt578, align 8, !dbg !152
  %.unpack581 = load [0 x float]*, [0 x float]** %.elt580, align 8, !dbg !152
  %.unpack583 = load [0 x i32]*, [0 x i32]** %.elt582, align 8, !dbg !152
  %.unpack585 = load [0 x float]*, [0 x float]** %.elt584, align 8, !dbg !152
  %.unpack587 = load [0 x float]*, [0 x float]** %.elt586, align 8, !dbg !152
  %.unpack589 = load [0 x float]*, [0 x float]** %.elt588, align 8, !dbg !152
  %.unpack591 = load [0 x float]*, [0 x float]** %.elt590, align 8, !dbg !152
  %.unpack593 = load [0 x i32]*, [0 x i32]** %.elt592, align 8, !dbg !152
  %.unpack595 = load i32, i32* %.elt594, align 8, !dbg !152
  %.unpack597 = load i32, i32* %.elt596, align 4, !dbg !152
  %.unpack616.unpack = load [0 x i32]*, [0 x i32]** %.unpack616.elt, align 8, !dbg !152
  %.unpack616.unpack644 = load [0 x float]*, [0 x float]** %.unpack616.elt643, align 8, !dbg !152
  %.unpack616.unpack646 = load [0 x float]*, [0 x float]** %.unpack616.elt645, align 8, !dbg !152
  %.unpack616.unpack648 = load [0 x float]*, [0 x float]** %.unpack616.elt647, align 8, !dbg !152
  %.unpack616.unpack650 = load [0 x float]*, [0 x float]** %.unpack616.elt649, align 8, !dbg !152
  %.unpack616.unpack652 = load [0 x float]*, [0 x float]** %.unpack616.elt651, align 8, !dbg !152
  %.unpack616.unpack654 = load [0 x float]*, [0 x float]** %.unpack616.elt653, align 8, !dbg !152
  %.unpack616.unpack656 = load [0 x float]*, [0 x float]** %.unpack616.elt655, align 8, !dbg !152
  %.unpack616.unpack658 = load [0 x float]*, [0 x float]** %.unpack616.elt657, align 8, !dbg !152
  %.unpack618 = load [0 x i32]*, [0 x i32]** %.elt617, align 8, !dbg !152
  %.unpack620 = load [0 x i32]*, [0 x i32]** %.elt619, align 8, !dbg !152
  %.unpack622 = load [0 x float]*, [0 x float]** %.elt621, align 8, !dbg !152
  %.unpack624 = load [0 x float]*, [0 x float]** %.elt623, align 8, !dbg !152
  %.unpack626 = load [0 x float]*, [0 x float]** %.elt625, align 8, !dbg !152
  %.unpack628 = load [0 x i32]*, [0 x i32]** %.elt627, align 8, !dbg !152
  %.unpack630 = load [0 x float]*, [0 x float]** %.elt629, align 8, !dbg !152
  %.unpack632 = load [0 x float]*, [0 x float]** %.elt631, align 8, !dbg !152
  %.unpack634 = load [0 x float]*, [0 x float]** %.elt633, align 8, !dbg !152
  %.unpack636 = load [0 x float]*, [0 x float]** %.elt635, align 8, !dbg !152
  %.unpack638 = load [0 x i32]*, [0 x i32]** %.elt637, align 8, !dbg !152
  %.unpack640 = load i32, i32* %.elt639, align 8, !dbg !152
  %.unpack642 = load i32, i32* %.elt641, align 4, !dbg !152
  store [0 x i32]* %.unpack616.unpack, [0 x i32]** %primary_4082217.repack.repack, align 8, !dbg !152
  store [0 x float]* %.unpack616.unpack644, [0 x float]** %primary_4082217.repack.repack687, align 8, !dbg !152
  store [0 x float]* %.unpack616.unpack646, [0 x float]** %primary_4082217.repack.repack689, align 8, !dbg !152
  store [0 x float]* %.unpack616.unpack648, [0 x float]** %primary_4082217.repack.repack691, align 8, !dbg !152
  store [0 x float]* %.unpack616.unpack650, [0 x float]** %primary_4082217.repack.repack693, align 8, !dbg !152
  store [0 x float]* %.unpack616.unpack652, [0 x float]** %primary_4082217.repack.repack695, align 8, !dbg !152
  store [0 x float]* %.unpack616.unpack654, [0 x float]** %primary_4082217.repack.repack697, align 8, !dbg !152
  store [0 x float]* %.unpack616.unpack656, [0 x float]** %primary_4082217.repack.repack699, align 8, !dbg !152
  store [0 x float]* %.unpack616.unpack658, [0 x float]** %primary_4082217.repack.repack701, align 8, !dbg !152
  store [0 x i32]* %.unpack618, [0 x i32]** %primary_4082217.repack661, align 8, !dbg !152
  store [0 x i32]* %.unpack620, [0 x i32]** %primary_4082217.repack663, align 8, !dbg !152
  store [0 x float]* %.unpack622, [0 x float]** %primary_4082217.repack665, align 8, !dbg !152
  store [0 x float]* %.unpack624, [0 x float]** %primary_4082217.repack667, align 8, !dbg !152
  store [0 x float]* %.unpack626, [0 x float]** %primary_4082217.repack669, align 8, !dbg !152
  store [0 x i32]* %.unpack628, [0 x i32]** %primary_4082217.repack671, align 8, !dbg !152
  store [0 x float]* %.unpack630, [0 x float]** %primary_4082217.repack673, align 8, !dbg !152
  store [0 x float]* %.unpack632, [0 x float]** %primary_4082217.repack675, align 8, !dbg !152
  store [0 x float]* %.unpack634, [0 x float]** %primary_4082217.repack677, align 8, !dbg !152
  store [0 x float]* %.unpack636, [0 x float]** %primary_4082217.repack679, align 8, !dbg !152
  store [0 x i32]* %.unpack638, [0 x i32]** %primary_4082217.repack681, align 8, !dbg !152
  store i32 %.unpack640, i32* %primary_4082217.repack683, align 8, !dbg !152
  store i32 %.unpack642, i32* %primary_4082217.repack685, align 4, !dbg !152
  store [0 x i32]* %.unpack571.unpack, [0 x i32]** %other_primary_4082227.repack.repack, align 8, !dbg !152
  store [0 x float]* %.unpack571.unpack599, [0 x float]** %other_primary_4082227.repack.repack730, align 8, !dbg !152
  store [0 x float]* %.unpack571.unpack601, [0 x float]** %other_primary_4082227.repack.repack732, align 8, !dbg !152
  store [0 x float]* %.unpack571.unpack603, [0 x float]** %other_primary_4082227.repack.repack734, align 8, !dbg !152
  store [0 x float]* %.unpack571.unpack605, [0 x float]** %other_primary_4082227.repack.repack736, align 8, !dbg !152
  store [0 x float]* %.unpack571.unpack607, [0 x float]** %other_primary_4082227.repack.repack738, align 8, !dbg !152
  store [0 x float]* %.unpack571.unpack609, [0 x float]** %other_primary_4082227.repack.repack740, align 8, !dbg !152
  store [0 x float]* %.unpack571.unpack611, [0 x float]** %other_primary_4082227.repack.repack742, align 8, !dbg !152
  store [0 x float]* %.unpack571.unpack613, [0 x float]** %other_primary_4082227.repack.repack744, align 8, !dbg !152
  store [0 x i32]* %.unpack573, [0 x i32]** %other_primary_4082227.repack704, align 8, !dbg !152
  store [0 x i32]* %.unpack575, [0 x i32]** %other_primary_4082227.repack706, align 8, !dbg !152
  store [0 x float]* %.unpack577, [0 x float]** %other_primary_4082227.repack708, align 8, !dbg !152
  store [0 x float]* %.unpack579, [0 x float]** %other_primary_4082227.repack710, align 8, !dbg !152
  store [0 x float]* %.unpack581, [0 x float]** %other_primary_4082227.repack712, align 8, !dbg !152
  store [0 x i32]* %.unpack583, [0 x i32]** %other_primary_4082227.repack714, align 8, !dbg !152
  store [0 x float]* %.unpack585, [0 x float]** %other_primary_4082227.repack716, align 8, !dbg !152
  store [0 x float]* %.unpack587, [0 x float]** %other_primary_4082227.repack718, align 8, !dbg !152
  store [0 x float]* %.unpack589, [0 x float]** %other_primary_4082227.repack720, align 8, !dbg !152
  store [0 x float]* %.unpack591, [0 x float]** %other_primary_4082227.repack722, align 8, !dbg !152
  store [0 x i32]* %.unpack593, [0 x i32]** %other_primary_4082227.repack724, align 8, !dbg !152
  store i32 %.unpack595, i32* %other_primary_4082227.repack726, align 8, !dbg !152
  store i32 %.unpack597, i32* %other_primary_4082227.repack728, align 4, !dbg !152
  store i32 0, i32* %first_4083738, align 4, !dbg !152
  %853 = load i32, i32* %127, align 4, !dbg !152
  %854 = icmp slt i32 %853, 1, !dbg !152
  br i1 %854, label %_cont73, label %expr_false66, !dbg !152

expr_false66:                                     ; preds = %if_join44
  %m149 = srem i32 %853, 64, !dbg !153
  %.not746 = icmp eq i32 %m149, 0, !dbg !153
  %.unpack748.unpack = load [0 x i32]*, [0 x i32]** %.unpack748.elt, align 8, !dbg !153
  %.unpack748.unpack776 = load [0 x float]*, [0 x float]** %.unpack748.elt775, align 8, !dbg !153
  %.unpack748.unpack778 = load [0 x float]*, [0 x float]** %.unpack748.elt777, align 8, !dbg !153
  %.unpack748.unpack780 = load [0 x float]*, [0 x float]** %.unpack748.elt779, align 8, !dbg !153
  %.unpack748.unpack782 = load [0 x float]*, [0 x float]** %.unpack748.elt781, align 8, !dbg !153
  %.unpack748.unpack784 = load [0 x float]*, [0 x float]** %.unpack748.elt783, align 8, !dbg !153
  %.unpack748.unpack786 = load [0 x float]*, [0 x float]** %.unpack748.elt785, align 8, !dbg !153
  %.unpack748.unpack788 = load [0 x float]*, [0 x float]** %.unpack748.elt787, align 8, !dbg !153
  %.unpack748.unpack790 = load [0 x float]*, [0 x float]** %.unpack748.elt789, align 8, !dbg !153
  %.unpack750 = load [0 x i32]*, [0 x i32]** %.elt749, align 8, !dbg !153
  %.unpack752 = load [0 x i32]*, [0 x i32]** %.elt751, align 8, !dbg !153
  %.unpack754 = load [0 x float]*, [0 x float]** %.elt753, align 8, !dbg !153
  %.unpack756 = load [0 x float]*, [0 x float]** %.elt755, align 8, !dbg !153
  %.unpack758 = load [0 x float]*, [0 x float]** %.elt757, align 8, !dbg !153
  %.unpack760 = load [0 x i32]*, [0 x i32]** %.elt759, align 8, !dbg !153
  %.unpack762 = load [0 x float]*, [0 x float]** %.elt761, align 8, !dbg !153
  %.unpack764 = load [0 x float]*, [0 x float]** %.elt763, align 8, !dbg !153
  %.unpack766 = load [0 x float]*, [0 x float]** %.elt765, align 8, !dbg !153
  %.unpack768 = load [0 x float]*, [0 x float]** %.elt767, align 8, !dbg !153
  %.unpack770 = load [0 x i32]*, [0 x i32]** %.elt769, align 8, !dbg !153
  %.unpack772 = load i32, i32* %.elt771, align 8, !dbg !153
  %.unpack774 = load i32, i32* %.elt773, align 4, !dbg !153
  %.unpack793.unpack = load [0 x i32]*, [0 x i32]** %.unpack793.elt, align 8, !dbg !153
  %.unpack793.unpack807 = load [0 x float]*, [0 x float]** %.unpack793.elt806, align 8, !dbg !153
  %.unpack793.unpack809 = load [0 x float]*, [0 x float]** %.unpack793.elt808, align 8, !dbg !153
  %.unpack793.unpack811 = load [0 x float]*, [0 x float]** %.unpack793.elt810, align 8, !dbg !153
  %.unpack793.unpack813 = load [0 x float]*, [0 x float]** %.unpack793.elt812, align 8, !dbg !153
  %.unpack793.unpack815 = load [0 x float]*, [0 x float]** %.unpack793.elt814, align 8, !dbg !153
  %.unpack793.unpack817 = load [0 x float]*, [0 x float]** %.unpack793.elt816, align 8, !dbg !153
  %.unpack793.unpack819 = load [0 x float]*, [0 x float]** %.unpack793.elt818, align 8, !dbg !153
  %.unpack793.unpack821 = load [0 x float]*, [0 x float]** %.unpack793.elt820, align 8, !dbg !153
  %.unpack795 = load [0 x i32]*, [0 x i32]** %.elt794, align 8, !dbg !153
  %.unpack797 = load [0 x float]*, [0 x float]** %.elt796, align 8, !dbg !153
  %.unpack799 = load [0 x float]*, [0 x float]** %.elt798, align 8, !dbg !153
  %.unpack801 = load [0 x float]*, [0 x float]** %.elt800, align 8, !dbg !153
  %.unpack803 = load i32, i32* %.elt802, align 8, !dbg !153
  %.unpack805 = load i32, i32* %.elt804, align 4, !dbg !153
  %855 = sub nsw i32 64, %m149, !dbg !153
  %if_join70 = select i1 %.not746, i32 0, i32 %855, !dbg !153
  store i8* %314, i8** %71, align 8, !dbg !139
  store i8** %71, i8*** %319, align 8, !dbg !139
  store i32 8, i32* %315, align 4, !dbg !139
  store i32 8, i32* %316, align 4, !dbg !139
  store i32 8, i32* %317, align 4, !dbg !139
  store i8 1, i8* %318, align 1, !dbg !139
  store i8* %320, i8** %70, align 8, !dbg !139
  store i8** %70, i8*** %326, align 8, !dbg !139
  store i32 8, i32* %322, align 4, !dbg !139
  store i32 8, i32* %323, align 4, !dbg !139
  store i32 8, i32* %324, align 4, !dbg !139
  store i8 1, i8* %325, align 1, !dbg !139
  store i8* %327, i8** %69, align 8, !dbg !139
  store i8** %69, i8*** %333, align 8, !dbg !139
  store i32 8, i32* %329, align 4, !dbg !139
  store i32 8, i32* %330, align 4, !dbg !139
  store i32 8, i32* %331, align 4, !dbg !139
  store i8 1, i8* %332, align 1, !dbg !139
  store i8* %334, i8** %68, align 8, !dbg !139
  store i8** %68, i8*** %340, align 8, !dbg !139
  store i32 8, i32* %336, align 4, !dbg !139
  store i32 8, i32* %337, align 4, !dbg !139
  store i32 8, i32* %338, align 4, !dbg !139
  store i8 1, i8* %339, align 1, !dbg !139
  store i8* %341, i8** %67, align 8, !dbg !139
  store i8** %67, i8*** %347, align 8, !dbg !139
  store i32 8, i32* %343, align 4, !dbg !139
  store i32 8, i32* %344, align 4, !dbg !139
  store i32 8, i32* %345, align 4, !dbg !139
  store i8 1, i8* %346, align 1, !dbg !139
  store i32 %853, i32* %last, align 4, !dbg !139
  store i32* %last, i32** %353, align 8, !dbg !139
  store i32 4, i32* %349, align 4, !dbg !139
  store i32 4, i32* %350, align 4, !dbg !139
  store i32 4, i32* %351, align 4, !dbg !139
  store i8 0, i8* %352, align 1, !dbg !139
  store i8* %354, i8** %66, align 8, !dbg !139
  store i8** %66, i8*** %360, align 8, !dbg !139
  store i32 8, i32* %356, align 4, !dbg !139
  store i32 8, i32* %357, align 4, !dbg !139
  store i32 8, i32* %358, align 4, !dbg !139
  store i8 1, i8* %359, align 1, !dbg !139
  store [0 x i32]* %.unpack793.unpack, [0 x i32]** %.repack823.repack, align 8, !dbg !139
  store [0 x float]* %.unpack793.unpack807, [0 x float]** %.repack823.repack837, align 8, !dbg !139
  store [0 x float]* %.unpack793.unpack809, [0 x float]** %.repack823.repack839, align 8, !dbg !139
  store [0 x float]* %.unpack793.unpack811, [0 x float]** %.repack823.repack841, align 8, !dbg !139
  store [0 x float]* %.unpack793.unpack813, [0 x float]** %.repack823.repack843, align 8, !dbg !139
  store [0 x float]* %.unpack793.unpack815, [0 x float]** %.repack823.repack845, align 8, !dbg !139
  store [0 x float]* %.unpack793.unpack817, [0 x float]** %.repack823.repack847, align 8, !dbg !139
  store [0 x float]* %.unpack793.unpack819, [0 x float]** %.repack823.repack849, align 8, !dbg !139
  store [0 x float]* %.unpack793.unpack821, [0 x float]** %.repack823.repack851, align 8, !dbg !139
  store [0 x i32]* %.unpack795, [0 x i32]** %.repack825, align 8, !dbg !139
  store [0 x float]* %.unpack797, [0 x float]** %.repack827, align 8, !dbg !139
  store [0 x float]* %.unpack799, [0 x float]** %.repack829, align 8, !dbg !139
  store [0 x float]* %.unpack801, [0 x float]** %.repack831, align 8, !dbg !139
  store i32 %.unpack803, i32* %.repack833, align 8, !dbg !139
  store i32 %.unpack805, i32* %.repack835, align 4, !dbg !139
  store %10* %65, %10** %366, align 8, !dbg !139
  store i32 112, i32* %362, align 4, !dbg !139
  store i32 8, i32* %363, align 4, !dbg !139
  store i32 112, i32* %364, align 4, !dbg !139
  store i8 2, i8* %365, align 1, !dbg !139
  store i8* %367, i8** %64, align 8, !dbg !139
  store i8** %64, i8*** %373, align 8, !dbg !139
  store i32 8, i32* %369, align 4, !dbg !139
  store i32 8, i32* %370, align 4, !dbg !139
  store i32 8, i32* %371, align 4, !dbg !139
  store i8 1, i8* %372, align 1, !dbg !139
  store [0 x float]* %121, [0 x float]** %374, align 8, !dbg !139
  store i8** %63, i8*** %380, align 8, !dbg !139
  store i32 8, i32* %376, align 4, !dbg !139
  store i32 8, i32* %377, align 4, !dbg !139
  store i32 8, i32* %378, align 4, !dbg !139
  store i8 1, i8* %379, align 1, !dbg !139
  store i8* %381, i8** %62, align 8, !dbg !139
  store i8** %62, i8*** %387, align 8, !dbg !139
  store i32 8, i32* %383, align 4, !dbg !139
  store i32 8, i32* %384, align 4, !dbg !139
  store i32 8, i32* %385, align 4, !dbg !139
  store i8 1, i8* %386, align 1, !dbg !139
  store [0 x i32]* %.unpack748.unpack, [0 x i32]** %.repack853.repack, align 8, !dbg !139
  store [0 x float]* %.unpack748.unpack776, [0 x float]** %.repack853.repack881, align 8, !dbg !139
  store [0 x float]* %.unpack748.unpack778, [0 x float]** %.repack853.repack883, align 8, !dbg !139
  store [0 x float]* %.unpack748.unpack780, [0 x float]** %.repack853.repack885, align 8, !dbg !139
  store [0 x float]* %.unpack748.unpack782, [0 x float]** %.repack853.repack887, align 8, !dbg !139
  store [0 x float]* %.unpack748.unpack784, [0 x float]** %.repack853.repack889, align 8, !dbg !139
  store [0 x float]* %.unpack748.unpack786, [0 x float]** %.repack853.repack891, align 8, !dbg !139
  store [0 x float]* %.unpack748.unpack788, [0 x float]** %.repack853.repack893, align 8, !dbg !139
  store [0 x float]* %.unpack748.unpack790, [0 x float]** %.repack853.repack895, align 8, !dbg !139
  store [0 x i32]* %.unpack750, [0 x i32]** %.repack855, align 8, !dbg !139
  store [0 x i32]* %.unpack752, [0 x i32]** %.repack857, align 8, !dbg !139
  store [0 x float]* %.unpack754, [0 x float]** %.repack859, align 8, !dbg !139
  store [0 x float]* %.unpack756, [0 x float]** %.repack861, align 8, !dbg !139
  store [0 x float]* %.unpack758, [0 x float]** %.repack863, align 8, !dbg !139
  store [0 x i32]* %.unpack760, [0 x i32]** %.repack865, align 8, !dbg !139
  store [0 x float]* %.unpack762, [0 x float]** %.repack867, align 8, !dbg !139
  store [0 x float]* %.unpack764, [0 x float]** %.repack869, align 8, !dbg !139
  store [0 x float]* %.unpack766, [0 x float]** %.repack871, align 8, !dbg !139
  store [0 x float]* %.unpack768, [0 x float]** %.repack873, align 8, !dbg !139
  store [0 x i32]* %.unpack770, [0 x i32]** %.repack875, align 8, !dbg !139
  store i32 %.unpack772, i32* %.repack877, align 8, !dbg !139
  store i32 %.unpack774, i32* %.repack879, align 4, !dbg !139
  store %8* %61, %8** %393, align 8, !dbg !139
  store i32 168, i32* %389, align 4, !dbg !139
  store i32 8, i32* %390, align 4, !dbg !139
  store i32 168, i32* %391, align 4, !dbg !139
  store i8 2, i8* %392, align 1, !dbg !139
  %856 = add nsw i32 %853, %if_join70, !dbg !139
  store i32 %856, i32* %.repack897, align 4, !dbg !139
  store i32 1, i32* %.repack899, align 4, !dbg !139
  store i32 1, i32* %.repack901, align 4, !dbg !139
  store i32 64, i32* %.repack903, align 4, !dbg !139
  store i32 1, i32* %.repack904, align 4, !dbg !139
  store i32 1, i32* %.repack905, align 4, !dbg !139
  call void @anydsl_launch_kernel(i32 19, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @12, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i64 0, i64 0), i32* nonnull %394, i32* nonnull %395, i8** nonnull %396, i32* nonnull %397, i32* nonnull %398, i32* nonnull %399, i8* nonnull %400, i32 12), !dbg !139
  store i32 %853, i32* %first_4083738, align 4, !dbg !154
  br label %_cont73, !dbg !154

_cont73:                                          ; preds = %if_join44, %expr_false66
  %857 = load i32, i32* %128, align 4, !dbg !155
  %858 = load i32, i32* %first_4083738, align 4, !dbg !155
  %.not906 = icmp sgt i32 %857, %858, !dbg !155
  br i1 %.not906, label %expr_false74, label %_cont81, !dbg !155

expr_false74:                                     ; preds = %_cont73
  %.unpack908.unpack = load [0 x i32]*, [0 x i32]** %.unpack908.elt, align 8, !dbg !153
  %.unpack908.unpack936 = load [0 x float]*, [0 x float]** %.unpack908.elt935, align 8, !dbg !153
  %.unpack908.unpack938 = load [0 x float]*, [0 x float]** %.unpack908.elt937, align 8, !dbg !153
  %.unpack908.unpack940 = load [0 x float]*, [0 x float]** %.unpack908.elt939, align 8, !dbg !153
  %.unpack908.unpack942 = load [0 x float]*, [0 x float]** %.unpack908.elt941, align 8, !dbg !153
  %.unpack908.unpack944 = load [0 x float]*, [0 x float]** %.unpack908.elt943, align 8, !dbg !153
  %.unpack908.unpack946 = load [0 x float]*, [0 x float]** %.unpack908.elt945, align 8, !dbg !153
  %.unpack908.unpack948 = load [0 x float]*, [0 x float]** %.unpack908.elt947, align 8, !dbg !153
  %.unpack908.unpack950 = load [0 x float]*, [0 x float]** %.unpack908.elt949, align 8, !dbg !153
  %.unpack910 = load [0 x i32]*, [0 x i32]** %.elt909, align 8, !dbg !153
  %.unpack912 = load [0 x i32]*, [0 x i32]** %.elt911, align 8, !dbg !153
  %.unpack914 = load [0 x float]*, [0 x float]** %.elt913, align 8, !dbg !153
  %.unpack916 = load [0 x float]*, [0 x float]** %.elt915, align 8, !dbg !153
  %.unpack918 = load [0 x float]*, [0 x float]** %.elt917, align 8, !dbg !153
  %.unpack920 = load [0 x i32]*, [0 x i32]** %.elt919, align 8, !dbg !153
  %.unpack922 = load [0 x float]*, [0 x float]** %.elt921, align 8, !dbg !153
  %.unpack924 = load [0 x float]*, [0 x float]** %.elt923, align 8, !dbg !153
  %.unpack926 = load [0 x float]*, [0 x float]** %.elt925, align 8, !dbg !153
  %.unpack928 = load [0 x float]*, [0 x float]** %.elt927, align 8, !dbg !153
  %.unpack930 = load [0 x i32]*, [0 x i32]** %.elt929, align 8, !dbg !153
  %.unpack932 = load i32, i32* %.elt931, align 8, !dbg !153
  %.unpack934 = load i32, i32* %.elt933, align 4, !dbg !153
  %.unpack953.unpack = load [0 x i32]*, [0 x i32]** %.unpack953.elt, align 8, !dbg !153
  %.unpack953.unpack967 = load [0 x float]*, [0 x float]** %.unpack953.elt966, align 8, !dbg !153
  %.unpack953.unpack969 = load [0 x float]*, [0 x float]** %.unpack953.elt968, align 8, !dbg !153
  %.unpack953.unpack971 = load [0 x float]*, [0 x float]** %.unpack953.elt970, align 8, !dbg !153
  %.unpack953.unpack973 = load [0 x float]*, [0 x float]** %.unpack953.elt972, align 8, !dbg !153
  %.unpack953.unpack975 = load [0 x float]*, [0 x float]** %.unpack953.elt974, align 8, !dbg !153
  %.unpack953.unpack977 = load [0 x float]*, [0 x float]** %.unpack953.elt976, align 8, !dbg !153
  %.unpack953.unpack979 = load [0 x float]*, [0 x float]** %.unpack953.elt978, align 8, !dbg !153
  %.unpack953.unpack981 = load [0 x float]*, [0 x float]** %.unpack953.elt980, align 8, !dbg !153
  %.unpack955 = load [0 x i32]*, [0 x i32]** %.elt954, align 8, !dbg !153
  %.unpack957 = load [0 x float]*, [0 x float]** %.elt956, align 8, !dbg !153
  %.unpack959 = load [0 x float]*, [0 x float]** %.elt958, align 8, !dbg !153
  %.unpack961 = load [0 x float]*, [0 x float]** %.elt960, align 8, !dbg !153
  %.unpack963 = load i32, i32* %.elt962, align 8, !dbg !153
  %.unpack965 = load i32, i32* %.elt964, align 4, !dbg !153
  %859 = load i32, i32* %first_4083738, align 4, !dbg !153
  %n155 = sub nsw i32 %857, %859, !dbg !153
  %m156 = srem i32 %n155, 64, !dbg !153
  %.not983 = icmp eq i32 %m156, 0, !dbg !153
  %860 = sub nsw i32 64, %m156, !dbg !153
  %if_join78 = select i1 %.not983, i32 0, i32 %860, !dbg !153
  store %1 %111, %1* %_cont162, align 8, !dbg !139
  store %1* %_cont162, %1** %405, align 8, !dbg !139
  store i32 88, i32* %401, align 4, !dbg !139
  store i32 8, i32* %402, align 4, !dbg !139
  store i32 88, i32* %403, align 4, !dbg !139
  store i8 2, i8* %404, align 1, !dbg !139
  store i8* %406, i8** %58, align 8, !dbg !139
  store i8** %58, i8*** %412, align 8, !dbg !139
  store i32 8, i32* %408, align 4, !dbg !139
  store i32 8, i32* %409, align 4, !dbg !139
  store i32 8, i32* %410, align 4, !dbg !139
  store i8 1, i8* %411, align 1, !dbg !139
  store %1 %113, %1* %_cont163, align 8, !dbg !139
  store %1* %_cont163, %1** %418, align 8, !dbg !139
  store i32 88, i32* %414, align 4, !dbg !139
  store i32 8, i32* %415, align 4, !dbg !139
  store i32 88, i32* %416, align 4, !dbg !139
  store i8 2, i8* %417, align 1, !dbg !139
  store i8* %419, i8** %57, align 8, !dbg !139
  store i8** %57, i8*** %425, align 8, !dbg !139
  store i32 8, i32* %421, align 4, !dbg !139
  store i32 8, i32* %422, align 4, !dbg !139
  store i32 8, i32* %423, align 4, !dbg !139
  store i8 1, i8* %424, align 1, !dbg !139
  store i8* %426, i8** %56, align 8, !dbg !139
  store i8** %56, i8*** %432, align 8, !dbg !139
  store i32 8, i32* %428, align 4, !dbg !139
  store i32 8, i32* %429, align 4, !dbg !139
  store i32 8, i32* %430, align 4, !dbg !139
  store i8 1, i8* %431, align 1, !dbg !139
  store [0 x i32]* %.unpack908.unpack, [0 x i32]** %.repack984.repack, align 8, !dbg !139
  store [0 x float]* %.unpack908.unpack936, [0 x float]** %.repack984.repack1012, align 8, !dbg !139
  store [0 x float]* %.unpack908.unpack938, [0 x float]** %.repack984.repack1014, align 8, !dbg !139
  store [0 x float]* %.unpack908.unpack940, [0 x float]** %.repack984.repack1016, align 8, !dbg !139
  store [0 x float]* %.unpack908.unpack942, [0 x float]** %.repack984.repack1018, align 8, !dbg !139
  store [0 x float]* %.unpack908.unpack944, [0 x float]** %.repack984.repack1020, align 8, !dbg !139
  store [0 x float]* %.unpack908.unpack946, [0 x float]** %.repack984.repack1022, align 8, !dbg !139
  store [0 x float]* %.unpack908.unpack948, [0 x float]** %.repack984.repack1024, align 8, !dbg !139
  store [0 x float]* %.unpack908.unpack950, [0 x float]** %.repack984.repack1026, align 8, !dbg !139
  store [0 x i32]* %.unpack910, [0 x i32]** %.repack986, align 8, !dbg !139
  store [0 x i32]* %.unpack912, [0 x i32]** %.repack988, align 8, !dbg !139
  store [0 x float]* %.unpack914, [0 x float]** %.repack990, align 8, !dbg !139
  store [0 x float]* %.unpack916, [0 x float]** %.repack992, align 8, !dbg !139
  store [0 x float]* %.unpack918, [0 x float]** %.repack994, align 8, !dbg !139
  store [0 x i32]* %.unpack920, [0 x i32]** %.repack996, align 8, !dbg !139
  store [0 x float]* %.unpack922, [0 x float]** %.repack998, align 8, !dbg !139
  store [0 x float]* %.unpack924, [0 x float]** %.repack1000, align 8, !dbg !139
  store [0 x float]* %.unpack926, [0 x float]** %.repack1002, align 8, !dbg !139
  store [0 x float]* %.unpack928, [0 x float]** %.repack1004, align 8, !dbg !139
  store [0 x i32]* %.unpack930, [0 x i32]** %.repack1006, align 8, !dbg !139
  store i32 %.unpack932, i32* %.repack1008, align 8, !dbg !139
  store i32 %.unpack934, i32* %.repack1010, align 4, !dbg !139
  store %8* %55, %8** %438, align 8, !dbg !139
  store i32 168, i32* %434, align 4, !dbg !139
  store i32 8, i32* %435, align 4, !dbg !139
  store i32 168, i32* %436, align 4, !dbg !139
  store i8 2, i8* %437, align 1, !dbg !139
  store i32 %857, i32* %last164, align 4, !dbg !139
  store i32* %last164, i32** %444, align 8, !dbg !139
  store i32 4, i32* %440, align 4, !dbg !139
  store i32 4, i32* %441, align 4, !dbg !139
  store i32 4, i32* %442, align 4, !dbg !139
  store i8 0, i8* %443, align 1, !dbg !139
  store i32 %859, i32* %54, align 4, !dbg !139
  store i32* %54, i32** %450, align 8, !dbg !139
  store i32 4, i32* %446, align 4, !dbg !139
  store i32 4, i32* %447, align 4, !dbg !139
  store i32 4, i32* %448, align 4, !dbg !139
  store i8 0, i8* %449, align 1, !dbg !139
  store [0 x i32]* %.unpack953.unpack, [0 x i32]** %.repack1028.repack, align 8, !dbg !139
  store [0 x float]* %.unpack953.unpack967, [0 x float]** %.repack1028.repack1042, align 8, !dbg !139
  store [0 x float]* %.unpack953.unpack969, [0 x float]** %.repack1028.repack1044, align 8, !dbg !139
  store [0 x float]* %.unpack953.unpack971, [0 x float]** %.repack1028.repack1046, align 8, !dbg !139
  store [0 x float]* %.unpack953.unpack973, [0 x float]** %.repack1028.repack1048, align 8, !dbg !139
  store [0 x float]* %.unpack953.unpack975, [0 x float]** %.repack1028.repack1050, align 8, !dbg !139
  store [0 x float]* %.unpack953.unpack977, [0 x float]** %.repack1028.repack1052, align 8, !dbg !139
  store [0 x float]* %.unpack953.unpack979, [0 x float]** %.repack1028.repack1054, align 8, !dbg !139
  store [0 x float]* %.unpack953.unpack981, [0 x float]** %.repack1028.repack1056, align 8, !dbg !139
  store [0 x i32]* %.unpack955, [0 x i32]** %.repack1030, align 8, !dbg !139
  store [0 x float]* %.unpack957, [0 x float]** %.repack1032, align 8, !dbg !139
  store [0 x float]* %.unpack959, [0 x float]** %.repack1034, align 8, !dbg !139
  store [0 x float]* %.unpack961, [0 x float]** %.repack1036, align 8, !dbg !139
  store i32 %.unpack963, i32* %.repack1038, align 8, !dbg !139
  store i32 %.unpack965, i32* %.repack1040, align 4, !dbg !139
  store %10* %53, %10** %456, align 8, !dbg !139
  store i32 112, i32* %452, align 4, !dbg !139
  store i32 8, i32* %453, align 4, !dbg !139
  store i32 112, i32* %454, align 4, !dbg !139
  store i8 2, i8* %455, align 1, !dbg !139
  store i8* %457, i8** %52, align 8, !dbg !139
  store i8** %52, i8*** %463, align 8, !dbg !139
  store i32 8, i32* %459, align 4, !dbg !139
  store i32 8, i32* %460, align 4, !dbg !139
  store i32 8, i32* %461, align 4, !dbg !139
  store i8 1, i8* %462, align 1, !dbg !139
  store i8* %464, i8** %51, align 8, !dbg !139
  store i8** %51, i8*** %470, align 8, !dbg !139
  store i32 8, i32* %466, align 4, !dbg !139
  store i32 8, i32* %467, align 4, !dbg !139
  store i32 8, i32* %468, align 4, !dbg !139
  store i8 1, i8* %469, align 1, !dbg !139
  store i8* %471, i8** %50, align 8, !dbg !139
  store i8** %50, i8*** %477, align 8, !dbg !139
  store i32 8, i32* %473, align 4, !dbg !139
  store i32 8, i32* %474, align 4, !dbg !139
  store i32 8, i32* %475, align 4, !dbg !139
  store i8 1, i8* %476, align 1, !dbg !139
  store %1 %114, %1* %_cont165, align 8, !dbg !139
  store %1* %_cont165, %1** %483, align 8, !dbg !139
  store i32 88, i32* %479, align 4, !dbg !139
  store i32 8, i32* %480, align 4, !dbg !139
  store i32 88, i32* %481, align 4, !dbg !139
  store i8 2, i8* %482, align 1, !dbg !139
  store %1 %112, %1* %_cont166, align 8, !dbg !139
  store %1* %_cont166, %1** %489, align 8, !dbg !139
  store i32 88, i32* %485, align 4, !dbg !139
  store i32 8, i32* %486, align 4, !dbg !139
  store i32 88, i32* %487, align 4, !dbg !139
  store i8 2, i8* %488, align 1, !dbg !139
  store %1 %115, %1* %_cont167, align 8, !dbg !139
  store %1* %_cont167, %1** %495, align 8, !dbg !139
  store i32 88, i32* %491, align 4, !dbg !139
  store i32 8, i32* %492, align 4, !dbg !139
  store i32 88, i32* %493, align 4, !dbg !139
  store i8 2, i8* %494, align 1, !dbg !139
  store i8* %496, i8** %49, align 8, !dbg !139
  store i8** %49, i8*** %502, align 8, !dbg !139
  store i32 8, i32* %498, align 4, !dbg !139
  store i32 8, i32* %499, align 4, !dbg !139
  store i32 8, i32* %500, align 4, !dbg !139
  store i8 1, i8* %501, align 1, !dbg !139
  %861 = add nsw i32 %n155, %if_join78, !dbg !139
  store i32 %861, i32* %.repack1058, align 4, !dbg !139
  store i32 1, i32* %.repack1060, align 4, !dbg !139
  store i32 1, i32* %.repack1062, align 4, !dbg !139
  store i32 64, i32* %.repack1064, align 4, !dbg !139
  store i32 1, i32* %.repack1065, align 4, !dbg !139
  store i32 1, i32* %.repack1066, align 4, !dbg !139
  call void @anydsl_launch_kernel(i32 19, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @12, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @6, i64 0, i64 0), i32* nonnull %503, i32* nonnull %504, i8** nonnull %505, i32* nonnull %506, i32* nonnull %507, i32* nonnull %508, i8* nonnull %509, i32 16), !dbg !139
  store i32 %857, i32* %first_4083738, align 4, !dbg !154
  br label %_cont81, !dbg !154

_cont81:                                          ; preds = %_cont73, %expr_false74
  %862 = load i32, i32* %129, align 4, !dbg !155
  %863 = load i32, i32* %first_4083738, align 4, !dbg !155
  %.not1067 = icmp sgt i32 %862, %863, !dbg !155
  br i1 %.not1067, label %expr_false82, label %_cont89, !dbg !155

expr_false82:                                     ; preds = %_cont81
  %.unpack1069.unpack = load [0 x i32]*, [0 x i32]** %.unpack1069.elt, align 8, !dbg !153
  %.unpack1069.unpack1097 = load [0 x float]*, [0 x float]** %.unpack1069.elt1096, align 8, !dbg !153
  %.unpack1069.unpack1099 = load [0 x float]*, [0 x float]** %.unpack1069.elt1098, align 8, !dbg !153
  %.unpack1069.unpack1101 = load [0 x float]*, [0 x float]** %.unpack1069.elt1100, align 8, !dbg !153
  %.unpack1069.unpack1103 = load [0 x float]*, [0 x float]** %.unpack1069.elt1102, align 8, !dbg !153
  %.unpack1069.unpack1105 = load [0 x float]*, [0 x float]** %.unpack1069.elt1104, align 8, !dbg !153
  %.unpack1069.unpack1107 = load [0 x float]*, [0 x float]** %.unpack1069.elt1106, align 8, !dbg !153
  %.unpack1069.unpack1109 = load [0 x float]*, [0 x float]** %.unpack1069.elt1108, align 8, !dbg !153
  %.unpack1069.unpack1111 = load [0 x float]*, [0 x float]** %.unpack1069.elt1110, align 8, !dbg !153
  %.unpack1071 = load [0 x i32]*, [0 x i32]** %.elt1070, align 8, !dbg !153
  %.unpack1073 = load [0 x i32]*, [0 x i32]** %.elt1072, align 8, !dbg !153
  %.unpack1075 = load [0 x float]*, [0 x float]** %.elt1074, align 8, !dbg !153
  %.unpack1077 = load [0 x float]*, [0 x float]** %.elt1076, align 8, !dbg !153
  %.unpack1079 = load [0 x float]*, [0 x float]** %.elt1078, align 8, !dbg !153
  %.unpack1081 = load [0 x i32]*, [0 x i32]** %.elt1080, align 8, !dbg !153
  %.unpack1083 = load [0 x float]*, [0 x float]** %.elt1082, align 8, !dbg !153
  %.unpack1085 = load [0 x float]*, [0 x float]** %.elt1084, align 8, !dbg !153
  %.unpack1087 = load [0 x float]*, [0 x float]** %.elt1086, align 8, !dbg !153
  %.unpack1089 = load [0 x float]*, [0 x float]** %.elt1088, align 8, !dbg !153
  %.unpack1091 = load [0 x i32]*, [0 x i32]** %.elt1090, align 8, !dbg !153
  %.unpack1093 = load i32, i32* %.elt1092, align 8, !dbg !153
  %.unpack1095 = load i32, i32* %.elt1094, align 4, !dbg !153
  %.unpack1114.unpack = load [0 x i32]*, [0 x i32]** %.unpack1114.elt, align 8, !dbg !153
  %.unpack1114.unpack1128 = load [0 x float]*, [0 x float]** %.unpack1114.elt1127, align 8, !dbg !153
  %.unpack1114.unpack1130 = load [0 x float]*, [0 x float]** %.unpack1114.elt1129, align 8, !dbg !153
  %.unpack1114.unpack1132 = load [0 x float]*, [0 x float]** %.unpack1114.elt1131, align 8, !dbg !153
  %.unpack1114.unpack1134 = load [0 x float]*, [0 x float]** %.unpack1114.elt1133, align 8, !dbg !153
  %.unpack1114.unpack1136 = load [0 x float]*, [0 x float]** %.unpack1114.elt1135, align 8, !dbg !153
  %.unpack1114.unpack1138 = load [0 x float]*, [0 x float]** %.unpack1114.elt1137, align 8, !dbg !153
  %.unpack1114.unpack1140 = load [0 x float]*, [0 x float]** %.unpack1114.elt1139, align 8, !dbg !153
  %.unpack1114.unpack1142 = load [0 x float]*, [0 x float]** %.unpack1114.elt1141, align 8, !dbg !153
  %.unpack1116 = load [0 x i32]*, [0 x i32]** %.elt1115, align 8, !dbg !153
  %.unpack1118 = load [0 x float]*, [0 x float]** %.elt1117, align 8, !dbg !153
  %.unpack1120 = load [0 x float]*, [0 x float]** %.elt1119, align 8, !dbg !153
  %.unpack1122 = load [0 x float]*, [0 x float]** %.elt1121, align 8, !dbg !153
  %.unpack1124 = load i32, i32* %.elt1123, align 8, !dbg !153
  %.unpack1126 = load i32, i32* %.elt1125, align 4, !dbg !153
  %864 = load i32, i32* %first_4083738, align 4, !dbg !153
  %n168 = sub nsw i32 %862, %864, !dbg !153
  %m169 = srem i32 %n168, 64, !dbg !153
  %.not1144 = icmp eq i32 %m169, 0, !dbg !153
  %865 = sub nsw i32 64, %m169, !dbg !153
  %if_join86 = select i1 %.not1144, i32 0, i32 %865, !dbg !153
  store i8* %510, i8** %46, align 8, !dbg !139
  store i8** %46, i8*** %515, align 8, !dbg !139
  store i32 8, i32* %511, align 4, !dbg !139
  store i32 8, i32* %512, align 4, !dbg !139
  store i32 8, i32* %513, align 4, !dbg !139
  store i8 1, i8* %514, align 1, !dbg !139
  store i8* %516, i8** %45, align 8, !dbg !139
  store i8** %45, i8*** %522, align 8, !dbg !139
  store i32 8, i32* %518, align 4, !dbg !139
  store i32 8, i32* %519, align 4, !dbg !139
  store i32 8, i32* %520, align 4, !dbg !139
  store i8 1, i8* %521, align 1, !dbg !139
  store i8* %523, i8** %44, align 8, !dbg !139
  store i8** %44, i8*** %529, align 8, !dbg !139
  store i32 8, i32* %525, align 4, !dbg !139
  store i32 8, i32* %526, align 4, !dbg !139
  store i32 8, i32* %527, align 4, !dbg !139
  store i8 1, i8* %528, align 1, !dbg !139
  store i32 %862, i32* %last175, align 4, !dbg !139
  store i32* %last175, i32** %535, align 8, !dbg !139
  store i32 4, i32* %531, align 4, !dbg !139
  store i32 4, i32* %532, align 4, !dbg !139
  store i32 4, i32* %533, align 4, !dbg !139
  store i8 0, i8* %534, align 1, !dbg !139
  store i8* %536, i8** %43, align 8, !dbg !139
  store i8** %43, i8*** %542, align 8, !dbg !139
  store i32 8, i32* %538, align 4, !dbg !139
  store i32 8, i32* %539, align 4, !dbg !139
  store i32 8, i32* %540, align 4, !dbg !139
  store i8 1, i8* %541, align 1, !dbg !139
  store i32 %864, i32* %42, align 4, !dbg !139
  store i32* %42, i32** %548, align 8, !dbg !139
  store i32 4, i32* %544, align 4, !dbg !139
  store i32 4, i32* %545, align 4, !dbg !139
  store i32 4, i32* %546, align 4, !dbg !139
  store i8 0, i8* %547, align 1, !dbg !139
  store [0 x i32]* %.unpack1114.unpack, [0 x i32]** %.repack1145.repack, align 8, !dbg !139
  store [0 x float]* %.unpack1114.unpack1128, [0 x float]** %.repack1145.repack1159, align 8, !dbg !139
  store [0 x float]* %.unpack1114.unpack1130, [0 x float]** %.repack1145.repack1161, align 8, !dbg !139
  store [0 x float]* %.unpack1114.unpack1132, [0 x float]** %.repack1145.repack1163, align 8, !dbg !139
  store [0 x float]* %.unpack1114.unpack1134, [0 x float]** %.repack1145.repack1165, align 8, !dbg !139
  store [0 x float]* %.unpack1114.unpack1136, [0 x float]** %.repack1145.repack1167, align 8, !dbg !139
  store [0 x float]* %.unpack1114.unpack1138, [0 x float]** %.repack1145.repack1169, align 8, !dbg !139
  store [0 x float]* %.unpack1114.unpack1140, [0 x float]** %.repack1145.repack1171, align 8, !dbg !139
  store [0 x float]* %.unpack1114.unpack1142, [0 x float]** %.repack1145.repack1173, align 8, !dbg !139
  store [0 x i32]* %.unpack1116, [0 x i32]** %.repack1147, align 8, !dbg !139
  store [0 x float]* %.unpack1118, [0 x float]** %.repack1149, align 8, !dbg !139
  store [0 x float]* %.unpack1120, [0 x float]** %.repack1151, align 8, !dbg !139
  store [0 x float]* %.unpack1122, [0 x float]** %.repack1153, align 8, !dbg !139
  store i32 %.unpack1124, i32* %.repack1155, align 8, !dbg !139
  store i32 %.unpack1126, i32* %.repack1157, align 4, !dbg !139
  store %10* %41, %10** %554, align 8, !dbg !139
  store i32 112, i32* %550, align 4, !dbg !139
  store i32 8, i32* %551, align 4, !dbg !139
  store i32 112, i32* %552, align 4, !dbg !139
  store i8 2, i8* %553, align 1, !dbg !139
  store i8* %555, i8** %40, align 8, !dbg !139
  store i8** %40, i8*** %561, align 8, !dbg !139
  store i32 8, i32* %557, align 4, !dbg !139
  store i32 8, i32* %558, align 4, !dbg !139
  store i32 8, i32* %559, align 4, !dbg !139
  store i8 1, i8* %560, align 1, !dbg !139
  store [0 x i32]* %.unpack1069.unpack, [0 x i32]** %.repack1175.repack, align 8, !dbg !139
  store [0 x float]* %.unpack1069.unpack1097, [0 x float]** %.repack1175.repack1203, align 8, !dbg !139
  store [0 x float]* %.unpack1069.unpack1099, [0 x float]** %.repack1175.repack1205, align 8, !dbg !139
  store [0 x float]* %.unpack1069.unpack1101, [0 x float]** %.repack1175.repack1207, align 8, !dbg !139
  store [0 x float]* %.unpack1069.unpack1103, [0 x float]** %.repack1175.repack1209, align 8, !dbg !139
  store [0 x float]* %.unpack1069.unpack1105, [0 x float]** %.repack1175.repack1211, align 8, !dbg !139
  store [0 x float]* %.unpack1069.unpack1107, [0 x float]** %.repack1175.repack1213, align 8, !dbg !139
  store [0 x float]* %.unpack1069.unpack1109, [0 x float]** %.repack1175.repack1215, align 8, !dbg !139
  store [0 x float]* %.unpack1069.unpack1111, [0 x float]** %.repack1175.repack1217, align 8, !dbg !139
  store [0 x i32]* %.unpack1071, [0 x i32]** %.repack1177, align 8, !dbg !139
  store [0 x i32]* %.unpack1073, [0 x i32]** %.repack1179, align 8, !dbg !139
  store [0 x float]* %.unpack1075, [0 x float]** %.repack1181, align 8, !dbg !139
  store [0 x float]* %.unpack1077, [0 x float]** %.repack1183, align 8, !dbg !139
  store [0 x float]* %.unpack1079, [0 x float]** %.repack1185, align 8, !dbg !139
  store [0 x i32]* %.unpack1081, [0 x i32]** %.repack1187, align 8, !dbg !139
  store [0 x float]* %.unpack1083, [0 x float]** %.repack1189, align 8, !dbg !139
  store [0 x float]* %.unpack1085, [0 x float]** %.repack1191, align 8, !dbg !139
  store [0 x float]* %.unpack1087, [0 x float]** %.repack1193, align 8, !dbg !139
  store [0 x float]* %.unpack1089, [0 x float]** %.repack1195, align 8, !dbg !139
  store [0 x i32]* %.unpack1091, [0 x i32]** %.repack1197, align 8, !dbg !139
  store i32 %.unpack1093, i32* %.repack1199, align 8, !dbg !139
  store i32 %.unpack1095, i32* %.repack1201, align 4, !dbg !139
  store %8* %39, %8** %567, align 8, !dbg !139
  store i32 168, i32* %563, align 4, !dbg !139
  store i32 8, i32* %564, align 4, !dbg !139
  store i32 168, i32* %565, align 4, !dbg !139
  store i8 2, i8* %566, align 1, !dbg !139
  store i8* %568, i8** %38, align 8, !dbg !139
  store i8** %38, i8*** %574, align 8, !dbg !139
  store i32 8, i32* %570, align 4, !dbg !139
  store i32 8, i32* %571, align 4, !dbg !139
  store i32 8, i32* %572, align 4, !dbg !139
  store i8 1, i8* %573, align 1, !dbg !139
  store i8* %575, i8** %37, align 8, !dbg !139
  store i8** %37, i8*** %581, align 8, !dbg !139
  store i32 8, i32* %577, align 4, !dbg !139
  store i32 8, i32* %578, align 4, !dbg !139
  store i32 8, i32* %579, align 4, !dbg !139
  store i8 1, i8* %580, align 1, !dbg !139
  %866 = add nsw i32 %n168, %if_join86, !dbg !139
  store i32 %866, i32* %.repack1219, align 4, !dbg !139
  store i32 1, i32* %.repack1221, align 4, !dbg !139
  store i32 1, i32* %.repack1223, align 4, !dbg !139
  store i32 64, i32* %.repack1225, align 4, !dbg !139
  store i32 1, i32* %.repack1226, align 4, !dbg !139
  store i32 1, i32* %.repack1227, align 4, !dbg !139
  call void @anydsl_launch_kernel(i32 19, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @12, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i64 0, i64 0), i32* nonnull %582, i32* nonnull %583, i8** nonnull %584, i32* nonnull %585, i32* nonnull %586, i32* nonnull %587, i8* nonnull %588, i32 11), !dbg !139
  store i32 %862, i32* %first_4083738, align 4, !dbg !154
  br label %_cont89, !dbg !154

_cont89:                                          ; preds = %_cont81, %expr_false82
  %867 = load i32, i32* %130, align 4, !dbg !155
  %868 = load i32, i32* %first_4083738, align 4, !dbg !155
  %.not1228 = icmp sgt i32 %867, %868, !dbg !155
  br i1 %.not1228, label %expr_false90, label %_cont97, !dbg !155

expr_false90:                                     ; preds = %_cont89
  %.unpack1230.unpack = load [0 x i32]*, [0 x i32]** %.unpack1230.elt, align 8, !dbg !153
  %.unpack1230.unpack1258 = load [0 x float]*, [0 x float]** %.unpack1230.elt1257, align 8, !dbg !153
  %.unpack1230.unpack1260 = load [0 x float]*, [0 x float]** %.unpack1230.elt1259, align 8, !dbg !153
  %.unpack1230.unpack1262 = load [0 x float]*, [0 x float]** %.unpack1230.elt1261, align 8, !dbg !153
  %.unpack1230.unpack1264 = load [0 x float]*, [0 x float]** %.unpack1230.elt1263, align 8, !dbg !153
  %.unpack1230.unpack1266 = load [0 x float]*, [0 x float]** %.unpack1230.elt1265, align 8, !dbg !153
  %.unpack1230.unpack1268 = load [0 x float]*, [0 x float]** %.unpack1230.elt1267, align 8, !dbg !153
  %.unpack1230.unpack1270 = load [0 x float]*, [0 x float]** %.unpack1230.elt1269, align 8, !dbg !153
  %.unpack1230.unpack1272 = load [0 x float]*, [0 x float]** %.unpack1230.elt1271, align 8, !dbg !153
  %.unpack1232 = load [0 x i32]*, [0 x i32]** %.elt1231, align 8, !dbg !153
  %.unpack1234 = load [0 x i32]*, [0 x i32]** %.elt1233, align 8, !dbg !153
  %.unpack1236 = load [0 x float]*, [0 x float]** %.elt1235, align 8, !dbg !153
  %.unpack1238 = load [0 x float]*, [0 x float]** %.elt1237, align 8, !dbg !153
  %.unpack1240 = load [0 x float]*, [0 x float]** %.elt1239, align 8, !dbg !153
  %.unpack1242 = load [0 x i32]*, [0 x i32]** %.elt1241, align 8, !dbg !153
  %.unpack1244 = load [0 x float]*, [0 x float]** %.elt1243, align 8, !dbg !153
  %.unpack1246 = load [0 x float]*, [0 x float]** %.elt1245, align 8, !dbg !153
  %.unpack1248 = load [0 x float]*, [0 x float]** %.elt1247, align 8, !dbg !153
  %.unpack1250 = load [0 x float]*, [0 x float]** %.elt1249, align 8, !dbg !153
  %.unpack1252 = load [0 x i32]*, [0 x i32]** %.elt1251, align 8, !dbg !153
  %.unpack1254 = load i32, i32* %.elt1253, align 8, !dbg !153
  %.unpack1256 = load i32, i32* %.elt1255, align 4, !dbg !153
  %.unpack1275.unpack = load [0 x i32]*, [0 x i32]** %.unpack1275.elt, align 8, !dbg !153
  %.unpack1275.unpack1289 = load [0 x float]*, [0 x float]** %.unpack1275.elt1288, align 8, !dbg !153
  %.unpack1275.unpack1291 = load [0 x float]*, [0 x float]** %.unpack1275.elt1290, align 8, !dbg !153
  %.unpack1275.unpack1293 = load [0 x float]*, [0 x float]** %.unpack1275.elt1292, align 8, !dbg !153
  %.unpack1275.unpack1295 = load [0 x float]*, [0 x float]** %.unpack1275.elt1294, align 8, !dbg !153
  %.unpack1275.unpack1297 = load [0 x float]*, [0 x float]** %.unpack1275.elt1296, align 8, !dbg !153
  %.unpack1275.unpack1299 = load [0 x float]*, [0 x float]** %.unpack1275.elt1298, align 8, !dbg !153
  %.unpack1275.unpack1301 = load [0 x float]*, [0 x float]** %.unpack1275.elt1300, align 8, !dbg !153
  %.unpack1275.unpack1303 = load [0 x float]*, [0 x float]** %.unpack1275.elt1302, align 8, !dbg !153
  %.unpack1277 = load [0 x i32]*, [0 x i32]** %.elt1276, align 8, !dbg !153
  %.unpack1279 = load [0 x float]*, [0 x float]** %.elt1278, align 8, !dbg !153
  %.unpack1281 = load [0 x float]*, [0 x float]** %.elt1280, align 8, !dbg !153
  %.unpack1283 = load [0 x float]*, [0 x float]** %.elt1282, align 8, !dbg !153
  %.unpack1285 = load i32, i32* %.elt1284, align 8, !dbg !153
  %.unpack1287 = load i32, i32* %.elt1286, align 4, !dbg !153
  %869 = load i32, i32* %first_4083738, align 4, !dbg !153
  %n176 = sub nsw i32 %867, %869, !dbg !153
  %m177 = srem i32 %n176, 64, !dbg !153
  %.not1305 = icmp eq i32 %m177, 0, !dbg !153
  %870 = sub nsw i32 64, %m177, !dbg !153
  %if_join94 = select i1 %.not1305, i32 0, i32 %870, !dbg !153
  store i8* %589, i8** %34, align 8, !dbg !139
  store i8** %34, i8*** %594, align 8, !dbg !139
  store i32 8, i32* %590, align 4, !dbg !139
  store i32 8, i32* %591, align 4, !dbg !139
  store i32 8, i32* %592, align 4, !dbg !139
  store i8 1, i8* %593, align 1, !dbg !139
  store i8* %595, i8** %33, align 8, !dbg !139
  store i8** %33, i8*** %601, align 8, !dbg !139
  store i32 8, i32* %597, align 4, !dbg !139
  store i32 8, i32* %598, align 4, !dbg !139
  store i32 8, i32* %599, align 4, !dbg !139
  store i8 1, i8* %600, align 1, !dbg !139
  store i32 %869, i32* %32, align 4, !dbg !139
  store i32* %32, i32** %607, align 8, !dbg !139
  store i32 4, i32* %603, align 4, !dbg !139
  store i32 4, i32* %604, align 4, !dbg !139
  store i32 4, i32* %605, align 4, !dbg !139
  store i8 0, i8* %606, align 1, !dbg !139
  store i8* %608, i8** %31, align 8, !dbg !139
  store i8** %31, i8*** %614, align 8, !dbg !139
  store i32 8, i32* %610, align 4, !dbg !139
  store i32 8, i32* %611, align 4, !dbg !139
  store i32 8, i32* %612, align 4, !dbg !139
  store i8 1, i8* %613, align 1, !dbg !139
  store i32 %867, i32* %last183, align 4, !dbg !139
  store i32* %last183, i32** %620, align 8, !dbg !139
  store i32 4, i32* %616, align 4, !dbg !139
  store i32 4, i32* %617, align 4, !dbg !139
  store i32 4, i32* %618, align 4, !dbg !139
  store i8 0, i8* %619, align 1, !dbg !139
  store i8* %621, i8** %30, align 8, !dbg !139
  store i8** %30, i8*** %627, align 8, !dbg !139
  store i32 8, i32* %623, align 4, !dbg !139
  store i32 8, i32* %624, align 4, !dbg !139
  store i32 8, i32* %625, align 4, !dbg !139
  store i8 1, i8* %626, align 1, !dbg !139
  store i8* %628, i8** %29, align 8, !dbg !139
  store i8** %29, i8*** %634, align 8, !dbg !139
  store i32 8, i32* %630, align 4, !dbg !139
  store i32 8, i32* %631, align 4, !dbg !139
  store i32 8, i32* %632, align 4, !dbg !139
  store i8 1, i8* %633, align 1, !dbg !139
  store [0 x i32]* %.unpack1230.unpack, [0 x i32]** %.repack1306.repack, align 8, !dbg !139
  store [0 x float]* %.unpack1230.unpack1258, [0 x float]** %.repack1306.repack1334, align 8, !dbg !139
  store [0 x float]* %.unpack1230.unpack1260, [0 x float]** %.repack1306.repack1336, align 8, !dbg !139
  store [0 x float]* %.unpack1230.unpack1262, [0 x float]** %.repack1306.repack1338, align 8, !dbg !139
  store [0 x float]* %.unpack1230.unpack1264, [0 x float]** %.repack1306.repack1340, align 8, !dbg !139
  store [0 x float]* %.unpack1230.unpack1266, [0 x float]** %.repack1306.repack1342, align 8, !dbg !139
  store [0 x float]* %.unpack1230.unpack1268, [0 x float]** %.repack1306.repack1344, align 8, !dbg !139
  store [0 x float]* %.unpack1230.unpack1270, [0 x float]** %.repack1306.repack1346, align 8, !dbg !139
  store [0 x float]* %.unpack1230.unpack1272, [0 x float]** %.repack1306.repack1348, align 8, !dbg !139
  store [0 x i32]* %.unpack1232, [0 x i32]** %.repack1308, align 8, !dbg !139
  store [0 x i32]* %.unpack1234, [0 x i32]** %.repack1310, align 8, !dbg !139
  store [0 x float]* %.unpack1236, [0 x float]** %.repack1312, align 8, !dbg !139
  store [0 x float]* %.unpack1238, [0 x float]** %.repack1314, align 8, !dbg !139
  store [0 x float]* %.unpack1240, [0 x float]** %.repack1316, align 8, !dbg !139
  store [0 x i32]* %.unpack1242, [0 x i32]** %.repack1318, align 8, !dbg !139
  store [0 x float]* %.unpack1244, [0 x float]** %.repack1320, align 8, !dbg !139
  store [0 x float]* %.unpack1246, [0 x float]** %.repack1322, align 8, !dbg !139
  store [0 x float]* %.unpack1248, [0 x float]** %.repack1324, align 8, !dbg !139
  store [0 x float]* %.unpack1250, [0 x float]** %.repack1326, align 8, !dbg !139
  store [0 x i32]* %.unpack1252, [0 x i32]** %.repack1328, align 8, !dbg !139
  store i32 %.unpack1254, i32* %.repack1330, align 8, !dbg !139
  store i32 %.unpack1256, i32* %.repack1332, align 4, !dbg !139
  store %8* %28, %8** %640, align 8, !dbg !139
  store i32 168, i32* %636, align 4, !dbg !139
  store i32 8, i32* %637, align 4, !dbg !139
  store i32 168, i32* %638, align 4, !dbg !139
  store i8 2, i8* %639, align 1, !dbg !139
  store i8* %641, i8** %27, align 8, !dbg !139
  store i8** %27, i8*** %647, align 8, !dbg !139
  store i32 8, i32* %643, align 4, !dbg !139
  store i32 8, i32* %644, align 4, !dbg !139
  store i32 8, i32* %645, align 4, !dbg !139
  store i8 1, i8* %646, align 1, !dbg !139
  store i8* %648, i8** %26, align 8, !dbg !139
  store i8** %26, i8*** %654, align 8, !dbg !139
  store i32 8, i32* %650, align 4, !dbg !139
  store i32 8, i32* %651, align 4, !dbg !139
  store i32 8, i32* %652, align 4, !dbg !139
  store i8 1, i8* %653, align 1, !dbg !139
  store [0 x i32]* %.unpack1275.unpack, [0 x i32]** %.repack1350.repack, align 8, !dbg !139
  store [0 x float]* %.unpack1275.unpack1289, [0 x float]** %.repack1350.repack1364, align 8, !dbg !139
  store [0 x float]* %.unpack1275.unpack1291, [0 x float]** %.repack1350.repack1366, align 8, !dbg !139
  store [0 x float]* %.unpack1275.unpack1293, [0 x float]** %.repack1350.repack1368, align 8, !dbg !139
  store [0 x float]* %.unpack1275.unpack1295, [0 x float]** %.repack1350.repack1370, align 8, !dbg !139
  store [0 x float]* %.unpack1275.unpack1297, [0 x float]** %.repack1350.repack1372, align 8, !dbg !139
  store [0 x float]* %.unpack1275.unpack1299, [0 x float]** %.repack1350.repack1374, align 8, !dbg !139
  store [0 x float]* %.unpack1275.unpack1301, [0 x float]** %.repack1350.repack1376, align 8, !dbg !139
  store [0 x float]* %.unpack1275.unpack1303, [0 x float]** %.repack1350.repack1378, align 8, !dbg !139
  store [0 x i32]* %.unpack1277, [0 x i32]** %.repack1352, align 8, !dbg !139
  store [0 x float]* %.unpack1279, [0 x float]** %.repack1354, align 8, !dbg !139
  store [0 x float]* %.unpack1281, [0 x float]** %.repack1356, align 8, !dbg !139
  store [0 x float]* %.unpack1283, [0 x float]** %.repack1358, align 8, !dbg !139
  store i32 %.unpack1285, i32* %.repack1360, align 8, !dbg !139
  store i32 %.unpack1287, i32* %.repack1362, align 4, !dbg !139
  store %10* %25, %10** %660, align 8, !dbg !139
  store i32 112, i32* %656, align 4, !dbg !139
  store i32 8, i32* %657, align 4, !dbg !139
  store i32 112, i32* %658, align 4, !dbg !139
  store i8 2, i8* %659, align 1, !dbg !139
  %871 = add nsw i32 %n176, %if_join94, !dbg !139
  store i32 %871, i32* %.repack1380, align 4, !dbg !139
  store i32 1, i32* %.repack1382, align 4, !dbg !139
  store i32 1, i32* %.repack1384, align 4, !dbg !139
  store i32 64, i32* %.repack1386, align 4, !dbg !139
  store i32 1, i32* %.repack1387, align 4, !dbg !139
  store i32 1, i32* %.repack1388, align 4, !dbg !139
  call void @anydsl_launch_kernel(i32 19, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @12, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i64 0, i64 0), i32* nonnull %661, i32* nonnull %662, i8** nonnull %663, i32* nonnull %664, i32* nonnull %665, i32* nonnull %666, i8* nonnull %667, i32 11), !dbg !139
  store i32 %867, i32* %first_4083738, align 4, !dbg !154
  br label %_cont97, !dbg !154

_cont97:                                          ; preds = %_cont89, %expr_false90
  %872 = load i32, i32* %131, align 4, !dbg !155
  %873 = load i32, i32* %first_4083738, align 4, !dbg !155
  %.not1389 = icmp sgt i32 %872, %873, !dbg !155
  br i1 %.not1389, label %expr_false98, label %_cont105, !dbg !155

expr_false98:                                     ; preds = %_cont97
  %.unpack1391.unpack = load [0 x i32]*, [0 x i32]** %.unpack1391.elt, align 8, !dbg !153
  %.unpack1391.unpack1419 = load [0 x float]*, [0 x float]** %.unpack1391.elt1418, align 8, !dbg !153
  %.unpack1391.unpack1421 = load [0 x float]*, [0 x float]** %.unpack1391.elt1420, align 8, !dbg !153
  %.unpack1391.unpack1423 = load [0 x float]*, [0 x float]** %.unpack1391.elt1422, align 8, !dbg !153
  %.unpack1391.unpack1425 = load [0 x float]*, [0 x float]** %.unpack1391.elt1424, align 8, !dbg !153
  %.unpack1391.unpack1427 = load [0 x float]*, [0 x float]** %.unpack1391.elt1426, align 8, !dbg !153
  %.unpack1391.unpack1429 = load [0 x float]*, [0 x float]** %.unpack1391.elt1428, align 8, !dbg !153
  %.unpack1391.unpack1431 = load [0 x float]*, [0 x float]** %.unpack1391.elt1430, align 8, !dbg !153
  %.unpack1391.unpack1433 = load [0 x float]*, [0 x float]** %.unpack1391.elt1432, align 8, !dbg !153
  %.unpack1393 = load [0 x i32]*, [0 x i32]** %.elt1392, align 8, !dbg !153
  %.unpack1395 = load [0 x i32]*, [0 x i32]** %.elt1394, align 8, !dbg !153
  %.unpack1397 = load [0 x float]*, [0 x float]** %.elt1396, align 8, !dbg !153
  %.unpack1399 = load [0 x float]*, [0 x float]** %.elt1398, align 8, !dbg !153
  %.unpack1401 = load [0 x float]*, [0 x float]** %.elt1400, align 8, !dbg !153
  %.unpack1403 = load [0 x i32]*, [0 x i32]** %.elt1402, align 8, !dbg !153
  %.unpack1405 = load [0 x float]*, [0 x float]** %.elt1404, align 8, !dbg !153
  %.unpack1407 = load [0 x float]*, [0 x float]** %.elt1406, align 8, !dbg !153
  %.unpack1409 = load [0 x float]*, [0 x float]** %.elt1408, align 8, !dbg !153
  %.unpack1411 = load [0 x float]*, [0 x float]** %.elt1410, align 8, !dbg !153
  %.unpack1413 = load [0 x i32]*, [0 x i32]** %.elt1412, align 8, !dbg !153
  %.unpack1415 = load i32, i32* %.elt1414, align 8, !dbg !153
  %.unpack1417 = load i32, i32* %.elt1416, align 4, !dbg !153
  %.unpack1436.unpack = load [0 x i32]*, [0 x i32]** %.unpack1436.elt, align 8, !dbg !153
  %.unpack1436.unpack1450 = load [0 x float]*, [0 x float]** %.unpack1436.elt1449, align 8, !dbg !153
  %.unpack1436.unpack1452 = load [0 x float]*, [0 x float]** %.unpack1436.elt1451, align 8, !dbg !153
  %.unpack1436.unpack1454 = load [0 x float]*, [0 x float]** %.unpack1436.elt1453, align 8, !dbg !153
  %.unpack1436.unpack1456 = load [0 x float]*, [0 x float]** %.unpack1436.elt1455, align 8, !dbg !153
  %.unpack1436.unpack1458 = load [0 x float]*, [0 x float]** %.unpack1436.elt1457, align 8, !dbg !153
  %.unpack1436.unpack1460 = load [0 x float]*, [0 x float]** %.unpack1436.elt1459, align 8, !dbg !153
  %.unpack1436.unpack1462 = load [0 x float]*, [0 x float]** %.unpack1436.elt1461, align 8, !dbg !153
  %.unpack1436.unpack1464 = load [0 x float]*, [0 x float]** %.unpack1436.elt1463, align 8, !dbg !153
  %.unpack1438 = load [0 x i32]*, [0 x i32]** %.elt1437, align 8, !dbg !153
  %.unpack1440 = load [0 x float]*, [0 x float]** %.elt1439, align 8, !dbg !153
  %.unpack1442 = load [0 x float]*, [0 x float]** %.elt1441, align 8, !dbg !153
  %.unpack1444 = load [0 x float]*, [0 x float]** %.elt1443, align 8, !dbg !153
  %.unpack1446 = load i32, i32* %.elt1445, align 8, !dbg !153
  %.unpack1448 = load i32, i32* %.elt1447, align 4, !dbg !153
  %874 = load i32, i32* %first_4083738, align 4, !dbg !153
  %n184 = sub nsw i32 %872, %874, !dbg !153
  %m185 = srem i32 %n184, 64, !dbg !153
  %.not1466 = icmp eq i32 %m185, 0, !dbg !153
  %875 = sub nsw i32 64, %m185, !dbg !153
  %if_join102 = select i1 %.not1466, i32 0, i32 %875, !dbg !153
  store i8* %668, i8** %22, align 8, !dbg !139
  store i8** %22, i8*** %673, align 8, !dbg !139
  store i32 8, i32* %669, align 4, !dbg !139
  store i32 8, i32* %670, align 4, !dbg !139
  store i32 8, i32* %671, align 4, !dbg !139
  store i8 1, i8* %672, align 1, !dbg !139
  store i8* %674, i8** %21, align 8, !dbg !139
  store i8** %21, i8*** %680, align 8, !dbg !139
  store i32 8, i32* %676, align 4, !dbg !139
  store i32 8, i32* %677, align 4, !dbg !139
  store i32 8, i32* %678, align 4, !dbg !139
  store i8 1, i8* %679, align 1, !dbg !139
  store i8* %681, i8** %20, align 8, !dbg !139
  store i8** %20, i8*** %687, align 8, !dbg !139
  store i32 8, i32* %683, align 4, !dbg !139
  store i32 8, i32* %684, align 4, !dbg !139
  store i32 8, i32* %685, align 4, !dbg !139
  store i8 1, i8* %686, align 1, !dbg !139
  store i8* %688, i8** %19, align 8, !dbg !139
  store i8** %19, i8*** %694, align 8, !dbg !139
  store i32 8, i32* %690, align 4, !dbg !139
  store i32 8, i32* %691, align 4, !dbg !139
  store i32 8, i32* %692, align 4, !dbg !139
  store i8 1, i8* %693, align 1, !dbg !139
  store [0 x i32]* %.unpack1391.unpack, [0 x i32]** %.repack1467.repack, align 8, !dbg !139
  store [0 x float]* %.unpack1391.unpack1419, [0 x float]** %.repack1467.repack1495, align 8, !dbg !139
  store [0 x float]* %.unpack1391.unpack1421, [0 x float]** %.repack1467.repack1497, align 8, !dbg !139
  store [0 x float]* %.unpack1391.unpack1423, [0 x float]** %.repack1467.repack1499, align 8, !dbg !139
  store [0 x float]* %.unpack1391.unpack1425, [0 x float]** %.repack1467.repack1501, align 8, !dbg !139
  store [0 x float]* %.unpack1391.unpack1427, [0 x float]** %.repack1467.repack1503, align 8, !dbg !139
  store [0 x float]* %.unpack1391.unpack1429, [0 x float]** %.repack1467.repack1505, align 8, !dbg !139
  store [0 x float]* %.unpack1391.unpack1431, [0 x float]** %.repack1467.repack1507, align 8, !dbg !139
  store [0 x float]* %.unpack1391.unpack1433, [0 x float]** %.repack1467.repack1509, align 8, !dbg !139
  store [0 x i32]* %.unpack1393, [0 x i32]** %.repack1469, align 8, !dbg !139
  store [0 x i32]* %.unpack1395, [0 x i32]** %.repack1471, align 8, !dbg !139
  store [0 x float]* %.unpack1397, [0 x float]** %.repack1473, align 8, !dbg !139
  store [0 x float]* %.unpack1399, [0 x float]** %.repack1475, align 8, !dbg !139
  store [0 x float]* %.unpack1401, [0 x float]** %.repack1477, align 8, !dbg !139
  store [0 x i32]* %.unpack1403, [0 x i32]** %.repack1479, align 8, !dbg !139
  store [0 x float]* %.unpack1405, [0 x float]** %.repack1481, align 8, !dbg !139
  store [0 x float]* %.unpack1407, [0 x float]** %.repack1483, align 8, !dbg !139
  store [0 x float]* %.unpack1409, [0 x float]** %.repack1485, align 8, !dbg !139
  store [0 x float]* %.unpack1411, [0 x float]** %.repack1487, align 8, !dbg !139
  store [0 x i32]* %.unpack1413, [0 x i32]** %.repack1489, align 8, !dbg !139
  store i32 %.unpack1415, i32* %.repack1491, align 8, !dbg !139
  store i32 %.unpack1417, i32* %.repack1493, align 4, !dbg !139
  store %8* %18, %8** %700, align 8, !dbg !139
  store i32 168, i32* %696, align 4, !dbg !139
  store i32 8, i32* %697, align 4, !dbg !139
  store i32 168, i32* %698, align 4, !dbg !139
  store i8 2, i8* %699, align 1, !dbg !139
  store i8* %701, i8** %17, align 8, !dbg !139
  store i8** %17, i8*** %707, align 8, !dbg !139
  store i32 8, i32* %703, align 4, !dbg !139
  store i32 8, i32* %704, align 4, !dbg !139
  store i32 8, i32* %705, align 4, !dbg !139
  store i8 1, i8* %706, align 1, !dbg !139
  store i32 %874, i32* %16, align 4, !dbg !139
  store i32* %16, i32** %713, align 8, !dbg !139
  store i32 4, i32* %709, align 4, !dbg !139
  store i32 4, i32* %710, align 4, !dbg !139
  store i32 4, i32* %711, align 4, !dbg !139
  store i8 0, i8* %712, align 1, !dbg !139
  store i8* %714, i8** %15, align 8, !dbg !139
  store i8** %15, i8*** %720, align 8, !dbg !139
  store i32 8, i32* %716, align 4, !dbg !139
  store i32 8, i32* %717, align 4, !dbg !139
  store i32 8, i32* %718, align 4, !dbg !139
  store i8 1, i8* %719, align 1, !dbg !139
  store i32 %872, i32* %last191, align 4, !dbg !139
  store i32* %last191, i32** %726, align 8, !dbg !139
  store i32 4, i32* %722, align 4, !dbg !139
  store i32 4, i32* %723, align 4, !dbg !139
  store i32 4, i32* %724, align 4, !dbg !139
  store i8 0, i8* %725, align 1, !dbg !139
  store [0 x i32]* %.unpack1436.unpack, [0 x i32]** %.repack1511.repack, align 8, !dbg !139
  store [0 x float]* %.unpack1436.unpack1450, [0 x float]** %.repack1511.repack1525, align 8, !dbg !139
  store [0 x float]* %.unpack1436.unpack1452, [0 x float]** %.repack1511.repack1527, align 8, !dbg !139
  store [0 x float]* %.unpack1436.unpack1454, [0 x float]** %.repack1511.repack1529, align 8, !dbg !139
  store [0 x float]* %.unpack1436.unpack1456, [0 x float]** %.repack1511.repack1531, align 8, !dbg !139
  store [0 x float]* %.unpack1436.unpack1458, [0 x float]** %.repack1511.repack1533, align 8, !dbg !139
  store [0 x float]* %.unpack1436.unpack1460, [0 x float]** %.repack1511.repack1535, align 8, !dbg !139
  store [0 x float]* %.unpack1436.unpack1462, [0 x float]** %.repack1511.repack1537, align 8, !dbg !139
  store [0 x float]* %.unpack1436.unpack1464, [0 x float]** %.repack1511.repack1539, align 8, !dbg !139
  store [0 x i32]* %.unpack1438, [0 x i32]** %.repack1513, align 8, !dbg !139
  store [0 x float]* %.unpack1440, [0 x float]** %.repack1515, align 8, !dbg !139
  store [0 x float]* %.unpack1442, [0 x float]** %.repack1517, align 8, !dbg !139
  store [0 x float]* %.unpack1444, [0 x float]** %.repack1519, align 8, !dbg !139
  store i32 %.unpack1446, i32* %.repack1521, align 8, !dbg !139
  store i32 %.unpack1448, i32* %.repack1523, align 4, !dbg !139
  store %10* %14, %10** %732, align 8, !dbg !139
  store i32 112, i32* %728, align 4, !dbg !139
  store i32 8, i32* %729, align 4, !dbg !139
  store i32 112, i32* %730, align 4, !dbg !139
  store i8 2, i8* %731, align 1, !dbg !139
  store i8* %733, i8** %13, align 8, !dbg !139
  store i8** %13, i8*** %739, align 8, !dbg !139
  store i32 8, i32* %735, align 4, !dbg !139
  store i32 8, i32* %736, align 4, !dbg !139
  store i32 8, i32* %737, align 4, !dbg !139
  store i8 1, i8* %738, align 1, !dbg !139
  %876 = add nsw i32 %n184, %if_join102, !dbg !139
  store i32 %876, i32* %.repack1541, align 4, !dbg !139
  store i32 1, i32* %.repack1543, align 4, !dbg !139
  store i32 1, i32* %.repack1545, align 4, !dbg !139
  store i32 64, i32* %.repack1547, align 4, !dbg !139
  store i32 1, i32* %.repack1548, align 4, !dbg !139
  store i32 1, i32* %.repack1549, align 4, !dbg !139
  call void @anydsl_launch_kernel(i32 19, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @12, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @9, i64 0, i64 0), i32* nonnull %740, i32* nonnull %741, i8** nonnull %742, i32* nonnull %743, i32* nonnull %744, i32* nonnull %745, i8* nonnull %746, i32 11), !dbg !139
  store i32 %872, i32* %first_4083738, align 4, !dbg !154
  br label %_cont105, !dbg !154

_cont105:                                         ; preds = %_cont97, %expr_false98
  %877 = load i32, i32* %first_4083738, align 4, !dbg !155
  store i32 %877, i32* %124, align 8, !dbg !155
  %878 = load i32, i32* %first_4083738, align 4, !dbg !155
  store i32 %878, i32* %132, align 8, !dbg !155
  call void @anydsl_synchronize(i32 19), !dbg !155
  %879 = load i32, i32* %first_4083738, align 4, !dbg !156
  %880 = icmp sgt i32 %879, 0, !dbg !156
  br i1 %880, label %expr_true108, label %while_head.backedge, !dbg !156

while_head.backedge:                              ; preds = %_cont105, %expr_true108
  br label %while_head, !dbg !131

expr_true108:                                     ; preds = %_cont105
  %.unpack1551.unpack = load [0 x i32]*, [0 x i32]** %.unpack1551.elt, align 8, !dbg !157
  %.unpack1551.unpack1565 = load [0 x float]*, [0 x float]** %.unpack1551.elt1564, align 8, !dbg !157
  %.unpack1551.unpack1567 = load [0 x float]*, [0 x float]** %.unpack1551.elt1566, align 8, !dbg !157
  %.unpack1551.unpack1569 = load [0 x float]*, [0 x float]** %.unpack1551.elt1568, align 8, !dbg !157
  %.unpack1551.unpack1571 = load [0 x float]*, [0 x float]** %.unpack1551.elt1570, align 8, !dbg !157
  %.unpack1551.unpack1573 = load [0 x float]*, [0 x float]** %.unpack1551.elt1572, align 8, !dbg !157
  %.unpack1551.unpack1575 = load [0 x float]*, [0 x float]** %.unpack1551.elt1574, align 8, !dbg !157
  %.unpack1551.unpack1577 = load [0 x float]*, [0 x float]** %.unpack1551.elt1576, align 8, !dbg !157
  %.unpack1551.unpack1579 = load [0 x float]*, [0 x float]** %.unpack1551.elt1578, align 8, !dbg !157
  %.unpack1553 = load [0 x i32]*, [0 x i32]** %.elt1552, align 8, !dbg !157
  %.unpack1555 = load [0 x float]*, [0 x float]** %.elt1554, align 8, !dbg !157
  %.unpack1557 = load [0 x float]*, [0 x float]** %.elt1556, align 8, !dbg !157
  %.unpack1559 = load [0 x float]*, [0 x float]** %.elt1558, align 8, !dbg !157
  %.unpack1561 = load i32, i32* %.elt1560, align 8, !dbg !157
  %.unpack1563 = load i32, i32* %.elt1562, align 4, !dbg !157
  %m192 = srem i32 %.unpack1561, 64, !dbg !157
  %.not1581 = icmp eq i32 %m192, 0, !dbg !157
  %881 = sub nsw i32 64, %m192, !dbg !157
  %if_join112 = select i1 %.not1581, i32 0, i32 %881, !dbg !157
  store [0 x %12]* %109, [0 x %12]** %747, align 8, !dbg !139
  store i8** %10, i8*** %752, align 8, !dbg !139
  store i32 8, i32* %748, align 4, !dbg !139
  store i32 8, i32* %749, align 4, !dbg !139
  store i32 8, i32* %750, align 4, !dbg !139
  store i8 1, i8* %751, align 1, !dbg !139
  store [0 x float]* %121, [0 x float]** %753, align 8, !dbg !139
  store i8** %9, i8*** %759, align 8, !dbg !139
  store i32 8, i32* %755, align 4, !dbg !139
  store i32 8, i32* %756, align 4, !dbg !139
  store i32 8, i32* %757, align 4, !dbg !139
  store i8 1, i8* %758, align 1, !dbg !139
  store [0 x i32]* %.unpack1551.unpack, [0 x i32]** %.repack1582.repack, align 8, !dbg !139
  store [0 x float]* %.unpack1551.unpack1565, [0 x float]** %.repack1582.repack1596, align 8, !dbg !139
  store [0 x float]* %.unpack1551.unpack1567, [0 x float]** %.repack1582.repack1598, align 8, !dbg !139
  store [0 x float]* %.unpack1551.unpack1569, [0 x float]** %.repack1582.repack1600, align 8, !dbg !139
  store [0 x float]* %.unpack1551.unpack1571, [0 x float]** %.repack1582.repack1602, align 8, !dbg !139
  store [0 x float]* %.unpack1551.unpack1573, [0 x float]** %.repack1582.repack1604, align 8, !dbg !139
  store [0 x float]* %.unpack1551.unpack1575, [0 x float]** %.repack1582.repack1606, align 8, !dbg !139
  store [0 x float]* %.unpack1551.unpack1577, [0 x float]** %.repack1582.repack1608, align 8, !dbg !139
  store [0 x float]* %.unpack1551.unpack1579, [0 x float]** %.repack1582.repack1610, align 8, !dbg !139
  store [0 x i32]* %.unpack1553, [0 x i32]** %.repack1584, align 8, !dbg !139
  store [0 x float]* %.unpack1555, [0 x float]** %.repack1586, align 8, !dbg !139
  store [0 x float]* %.unpack1557, [0 x float]** %.repack1588, align 8, !dbg !139
  store [0 x float]* %.unpack1559, [0 x float]** %.repack1590, align 8, !dbg !139
  store i32 %.unpack1561, i32* %.repack1592, align 8, !dbg !139
  store i32 %.unpack1563, i32* %.repack1594, align 4, !dbg !139
  store %10* %8, %10** %765, align 8, !dbg !139
  store i32 112, i32* %761, align 4, !dbg !139
  store i32 8, i32* %762, align 4, !dbg !139
  store i32 112, i32* %763, align 4, !dbg !139
  store i8 2, i8* %764, align 1, !dbg !139
  store [0 x %11]* %110, [0 x %11]** %766, align 8, !dbg !139
  store i8** %7, i8*** %772, align 8, !dbg !139
  store i32 8, i32* %768, align 4, !dbg !139
  store i32 8, i32* %769, align 4, !dbg !139
  store i32 8, i32* %770, align 4, !dbg !139
  store i8 1, i8* %771, align 1, !dbg !139
  %882 = add nsw i32 %.unpack1561, %if_join112, !dbg !139
  store i32 %882, i32* %.repack1612, align 4, !dbg !139
  store i32 1, i32* %.repack1614, align 4, !dbg !139
  store i32 1, i32* %.repack1616, align 4, !dbg !139
  store i32 64, i32* %.repack1618, align 4, !dbg !139
  store i32 1, i32* %.repack1619, align 4, !dbg !139
  store i32 1, i32* %.repack1620, align 4, !dbg !139
  call void @anydsl_launch_kernel(i32 19, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @12, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @10, i64 0, i64 0), i32* nonnull %773, i32* nonnull %774, i8** nonnull %775, i32* nonnull %776, i32* nonnull %777, i32* nonnull %778, i8* nonnull %779, i32 4), !dbg !139
  %.unpack1622.unpack = load [0 x i32]*, [0 x i32]** %.unpack1622.elt, align 8, !dbg !158
  %.unpack1622.unpack1650 = load [0 x float]*, [0 x float]** %.unpack1622.elt1649, align 8, !dbg !158
  %.unpack1622.unpack1652 = load [0 x float]*, [0 x float]** %.unpack1622.elt1651, align 8, !dbg !158
  %.unpack1622.unpack1654 = load [0 x float]*, [0 x float]** %.unpack1622.elt1653, align 8, !dbg !158
  %.unpack1622.unpack1656 = load [0 x float]*, [0 x float]** %.unpack1622.elt1655, align 8, !dbg !158
  %.unpack1622.unpack1658 = load [0 x float]*, [0 x float]** %.unpack1622.elt1657, align 8, !dbg !158
  %.unpack1622.unpack1660 = load [0 x float]*, [0 x float]** %.unpack1622.elt1659, align 8, !dbg !158
  %.unpack1622.unpack1662 = load [0 x float]*, [0 x float]** %.unpack1622.elt1661, align 8, !dbg !158
  %.unpack1622.unpack1664 = load [0 x float]*, [0 x float]** %.unpack1622.elt1663, align 8, !dbg !158
  %.unpack1624 = load [0 x i32]*, [0 x i32]** %.elt1623, align 8, !dbg !158
  %.unpack1626 = load [0 x i32]*, [0 x i32]** %.elt1625, align 8, !dbg !158
  %.unpack1628 = load [0 x float]*, [0 x float]** %.elt1627, align 8, !dbg !158
  %.unpack1630 = load [0 x float]*, [0 x float]** %.elt1629, align 8, !dbg !158
  %.unpack1632 = load [0 x float]*, [0 x float]** %.elt1631, align 8, !dbg !158
  %.unpack1634 = load [0 x i32]*, [0 x i32]** %.elt1633, align 8, !dbg !158
  %.unpack1636 = load [0 x float]*, [0 x float]** %.elt1635, align 8, !dbg !158
  %.unpack1638 = load [0 x float]*, [0 x float]** %.elt1637, align 8, !dbg !158
  %.unpack1640 = load [0 x float]*, [0 x float]** %.elt1639, align 8, !dbg !158
  %.unpack1642 = load [0 x float]*, [0 x float]** %.elt1641, align 8, !dbg !158
  %.unpack1644 = load [0 x i32]*, [0 x i32]** %.elt1643, align 8, !dbg !158
  %.unpack1646 = load i32, i32* %.elt1645, align 8, !dbg !158
  %.unpack1648 = load i32, i32* %.elt1647, align 4, !dbg !158
  %.unpack1667.unpack = load [0 x i32]*, [0 x i32]** %.unpack1667.elt, align 8, !dbg !158
  %.unpack1667.unpack1695 = load [0 x float]*, [0 x float]** %.unpack1667.elt1694, align 8, !dbg !158
  %.unpack1667.unpack1697 = load [0 x float]*, [0 x float]** %.unpack1667.elt1696, align 8, !dbg !158
  %.unpack1667.unpack1699 = load [0 x float]*, [0 x float]** %.unpack1667.elt1698, align 8, !dbg !158
  %.unpack1667.unpack1701 = load [0 x float]*, [0 x float]** %.unpack1667.elt1700, align 8, !dbg !158
  %.unpack1667.unpack1703 = load [0 x float]*, [0 x float]** %.unpack1667.elt1702, align 8, !dbg !158
  %.unpack1667.unpack1705 = load [0 x float]*, [0 x float]** %.unpack1667.elt1704, align 8, !dbg !158
  %.unpack1667.unpack1707 = load [0 x float]*, [0 x float]** %.unpack1667.elt1706, align 8, !dbg !158
  %.unpack1667.unpack1709 = load [0 x float]*, [0 x float]** %.unpack1667.elt1708, align 8, !dbg !158
  %.unpack1669 = load [0 x i32]*, [0 x i32]** %.elt1668, align 8, !dbg !158
  %.unpack1671 = load [0 x i32]*, [0 x i32]** %.elt1670, align 8, !dbg !158
  %.unpack1673 = load [0 x float]*, [0 x float]** %.elt1672, align 8, !dbg !158
  %.unpack1675 = load [0 x float]*, [0 x float]** %.elt1674, align 8, !dbg !158
  %.unpack1677 = load [0 x float]*, [0 x float]** %.elt1676, align 8, !dbg !158
  %.unpack1679 = load [0 x i32]*, [0 x i32]** %.elt1678, align 8, !dbg !158
  %.unpack1681 = load [0 x float]*, [0 x float]** %.elt1680, align 8, !dbg !158
  %.unpack1683 = load [0 x float]*, [0 x float]** %.elt1682, align 8, !dbg !158
  %.unpack1685 = load [0 x float]*, [0 x float]** %.elt1684, align 8, !dbg !158
  %.unpack1687 = load [0 x float]*, [0 x float]** %.elt1686, align 8, !dbg !158
  %.unpack1689 = load [0 x i32]*, [0 x i32]** %.elt1688, align 8, !dbg !158
  %.unpack1691 = load i32, i32* %.elt1690, align 8, !dbg !158
  %.unpack1693 = load i32, i32* %.elt1692, align 4, !dbg !158
  %883 = load [0 x i32]*, [0 x i32]** %gpu_tmp_4082245, align 8, !dbg !158
  store i32 0, i32* %size_4084499, align 4, !dbg !158
  %884 = bitcast [0 x i32]* %883 to [0 x i8]*, !dbg !158
  call void @anydsl_copy(i32 0, [0 x i8]* nonnull %133, i64 0, i32 19, [0 x i8]* %884, i64 0, i64 4), !dbg !158
  %m198 = srem i32 %.unpack1646, 64, !dbg !159
  %.not1711 = icmp eq i32 %m198, 0, !dbg !159
  %885 = sub nsw i32 64, %m198, !dbg !159
  %if_join118 = select i1 %.not1711, i32 0, i32 %885, !dbg !159
  store [0 x i32]* %.unpack1622.unpack, [0 x i32]** %.repack1712.repack, align 8, !dbg !139
  store [0 x float]* %.unpack1622.unpack1650, [0 x float]** %.repack1712.repack1740, align 8, !dbg !139
  store [0 x float]* %.unpack1622.unpack1652, [0 x float]** %.repack1712.repack1742, align 8, !dbg !139
  store [0 x float]* %.unpack1622.unpack1654, [0 x float]** %.repack1712.repack1744, align 8, !dbg !139
  store [0 x float]* %.unpack1622.unpack1656, [0 x float]** %.repack1712.repack1746, align 8, !dbg !139
  store [0 x float]* %.unpack1622.unpack1658, [0 x float]** %.repack1712.repack1748, align 8, !dbg !139
  store [0 x float]* %.unpack1622.unpack1660, [0 x float]** %.repack1712.repack1750, align 8, !dbg !139
  store [0 x float]* %.unpack1622.unpack1662, [0 x float]** %.repack1712.repack1752, align 8, !dbg !139
  store [0 x float]* %.unpack1622.unpack1664, [0 x float]** %.repack1712.repack1754, align 8, !dbg !139
  store [0 x i32]* %.unpack1624, [0 x i32]** %.repack1714, align 8, !dbg !139
  store [0 x i32]* %.unpack1626, [0 x i32]** %.repack1716, align 8, !dbg !139
  store [0 x float]* %.unpack1628, [0 x float]** %.repack1718, align 8, !dbg !139
  store [0 x float]* %.unpack1630, [0 x float]** %.repack1720, align 8, !dbg !139
  store [0 x float]* %.unpack1632, [0 x float]** %.repack1722, align 8, !dbg !139
  store [0 x i32]* %.unpack1634, [0 x i32]** %.repack1724, align 8, !dbg !139
  store [0 x float]* %.unpack1636, [0 x float]** %.repack1726, align 8, !dbg !139
  store [0 x float]* %.unpack1638, [0 x float]** %.repack1728, align 8, !dbg !139
  store [0 x float]* %.unpack1640, [0 x float]** %.repack1730, align 8, !dbg !139
  store [0 x float]* %.unpack1642, [0 x float]** %.repack1732, align 8, !dbg !139
  store [0 x i32]* %.unpack1644, [0 x i32]** %.repack1734, align 8, !dbg !139
  store i32 %.unpack1646, i32* %.repack1736, align 8, !dbg !139
  store i32 %.unpack1648, i32* %.repack1738, align 4, !dbg !139
  store %8* %4, %8** %784, align 8, !dbg !139
  store i32 168, i32* %780, align 4, !dbg !139
  store i32 8, i32* %781, align 4, !dbg !139
  store i32 168, i32* %782, align 4, !dbg !139
  store i8 2, i8* %783, align 1, !dbg !139
  store [0 x i32]* %.unpack1667.unpack, [0 x i32]** %.repack1756.repack, align 8, !dbg !139
  store [0 x float]* %.unpack1667.unpack1695, [0 x float]** %.repack1756.repack1784, align 8, !dbg !139
  store [0 x float]* %.unpack1667.unpack1697, [0 x float]** %.repack1756.repack1786, align 8, !dbg !139
  store [0 x float]* %.unpack1667.unpack1699, [0 x float]** %.repack1756.repack1788, align 8, !dbg !139
  store [0 x float]* %.unpack1667.unpack1701, [0 x float]** %.repack1756.repack1790, align 8, !dbg !139
  store [0 x float]* %.unpack1667.unpack1703, [0 x float]** %.repack1756.repack1792, align 8, !dbg !139
  store [0 x float]* %.unpack1667.unpack1705, [0 x float]** %.repack1756.repack1794, align 8, !dbg !139
  store [0 x float]* %.unpack1667.unpack1707, [0 x float]** %.repack1756.repack1796, align 8, !dbg !139
  store [0 x float]* %.unpack1667.unpack1709, [0 x float]** %.repack1756.repack1798, align 8, !dbg !139
  store [0 x i32]* %.unpack1669, [0 x i32]** %.repack1758, align 8, !dbg !139
  store [0 x i32]* %.unpack1671, [0 x i32]** %.repack1760, align 8, !dbg !139
  store [0 x float]* %.unpack1673, [0 x float]** %.repack1762, align 8, !dbg !139
  store [0 x float]* %.unpack1675, [0 x float]** %.repack1764, align 8, !dbg !139
  store [0 x float]* %.unpack1677, [0 x float]** %.repack1766, align 8, !dbg !139
  store [0 x i32]* %.unpack1679, [0 x i32]** %.repack1768, align 8, !dbg !139
  store [0 x float]* %.unpack1681, [0 x float]** %.repack1770, align 8, !dbg !139
  store [0 x float]* %.unpack1683, [0 x float]** %.repack1772, align 8, !dbg !139
  store [0 x float]* %.unpack1685, [0 x float]** %.repack1774, align 8, !dbg !139
  store [0 x float]* %.unpack1687, [0 x float]** %.repack1776, align 8, !dbg !139
  store [0 x i32]* %.unpack1689, [0 x i32]** %.repack1778, align 8, !dbg !139
  store i32 %.unpack1691, i32* %.repack1780, align 8, !dbg !139
  store i32 %.unpack1693, i32* %.repack1782, align 4, !dbg !139
  store %8* %3, %8** %790, align 8, !dbg !139
  store i32 168, i32* %786, align 4, !dbg !139
  store i32 8, i32* %787, align 4, !dbg !139
  store i32 168, i32* %788, align 4, !dbg !139
  store i8 2, i8* %789, align 1, !dbg !139
  store [0 x i32]* %883, [0 x i32]** %791, align 8, !dbg !139
  store i8** %2, i8*** %797, align 8, !dbg !139
  store i32 8, i32* %793, align 4, !dbg !139
  store i32 8, i32* %794, align 4, !dbg !139
  store i32 8, i32* %795, align 4, !dbg !139
  store i8 1, i8* %796, align 1, !dbg !139
  %886 = add nsw i32 %.unpack1646, %if_join118, !dbg !139
  store i32 %886, i32* %.repack1800, align 4, !dbg !139
  store i32 1, i32* %.repack1802, align 4, !dbg !139
  store i32 1, i32* %.repack1804, align 4, !dbg !139
  store i32 64, i32* %.repack1806, align 4, !dbg !139
  store i32 1, i32* %.repack1807, align 4, !dbg !139
  store i32 1, i32* %.repack1808, align 4, !dbg !139
  call void @anydsl_launch_kernel(i32 19, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @12, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @11, i64 0, i64 0), i32* nonnull %798, i32* nonnull %799, i8** nonnull %800, i32* nonnull %801, i32* nonnull %802, i32* nonnull %803, i8* nonnull %804, i32 3), !dbg !139
  call void @anydsl_synchronize(i32 19), !dbg !160
  call void @anydsl_copy(i32 19, [0 x i8]* %884, i64 0, i32 0, [0 x i8]* nonnull %133, i64 0, i64 4), !dbg !161
  %887 = load i32, i32* %size_4084499, align 4, !dbg !162
  store i32 %887, i32* %134, align 8, !dbg !162
  %.unpack1810.unpack = load [0 x i32]*, [0 x i32]** %.unpack1810.elt, align 8, !dbg !162
  %.unpack1810.unpack1838 = load [0 x float]*, [0 x float]** %.unpack1810.elt1837, align 8, !dbg !162
  %.unpack1810.unpack1840 = load [0 x float]*, [0 x float]** %.unpack1810.elt1839, align 8, !dbg !162
  %.unpack1810.unpack1842 = load [0 x float]*, [0 x float]** %.unpack1810.elt1841, align 8, !dbg !162
  %.unpack1810.unpack1844 = load [0 x float]*, [0 x float]** %.unpack1810.elt1843, align 8, !dbg !162
  %.unpack1810.unpack1846 = load [0 x float]*, [0 x float]** %.unpack1810.elt1845, align 8, !dbg !162
  %.unpack1810.unpack1848 = load [0 x float]*, [0 x float]** %.unpack1810.elt1847, align 8, !dbg !162
  %.unpack1810.unpack1850 = load [0 x float]*, [0 x float]** %.unpack1810.elt1849, align 8, !dbg !162
  %.unpack1810.unpack1852 = load [0 x float]*, [0 x float]** %.unpack1810.elt1851, align 8, !dbg !162
  %.unpack1812 = load [0 x i32]*, [0 x i32]** %.elt1811, align 8, !dbg !162
  %.unpack1814 = load [0 x i32]*, [0 x i32]** %.elt1813, align 8, !dbg !162
  %.unpack1816 = load [0 x float]*, [0 x float]** %.elt1815, align 8, !dbg !162
  %.unpack1818 = load [0 x float]*, [0 x float]** %.elt1817, align 8, !dbg !162
  %.unpack1820 = load [0 x float]*, [0 x float]** %.elt1819, align 8, !dbg !162
  %.unpack1822 = load [0 x i32]*, [0 x i32]** %.elt1821, align 8, !dbg !162
  %.unpack1824 = load [0 x float]*, [0 x float]** %.elt1823, align 8, !dbg !162
  %.unpack1826 = load [0 x float]*, [0 x float]** %.elt1825, align 8, !dbg !162
  %.unpack1828 = load [0 x float]*, [0 x float]** %.elt1827, align 8, !dbg !162
  %.unpack1830 = load [0 x float]*, [0 x float]** %.elt1829, align 8, !dbg !162
  %.unpack1832 = load [0 x i32]*, [0 x i32]** %.elt1831, align 8, !dbg !162
  %.unpack1834 = load i32, i32* %.elt1833, align 8, !dbg !162
  %.unpack1836 = load i32, i32* %.elt1835, align 4, !dbg !162
  %.unpack1855.unpack = load [0 x i32]*, [0 x i32]** %.unpack1855.elt, align 8, !dbg !162
  %.unpack1855.unpack1883 = load [0 x float]*, [0 x float]** %.unpack1855.elt1882, align 8, !dbg !162
  %.unpack1855.unpack1885 = load [0 x float]*, [0 x float]** %.unpack1855.elt1884, align 8, !dbg !162
  %.unpack1855.unpack1887 = load [0 x float]*, [0 x float]** %.unpack1855.elt1886, align 8, !dbg !162
  %.unpack1855.unpack1889 = load [0 x float]*, [0 x float]** %.unpack1855.elt1888, align 8, !dbg !162
  %.unpack1855.unpack1891 = load [0 x float]*, [0 x float]** %.unpack1855.elt1890, align 8, !dbg !162
  %.unpack1855.unpack1893 = load [0 x float]*, [0 x float]** %.unpack1855.elt1892, align 8, !dbg !162
  %.unpack1855.unpack1895 = load [0 x float]*, [0 x float]** %.unpack1855.elt1894, align 8, !dbg !162
  %.unpack1855.unpack1897 = load [0 x float]*, [0 x float]** %.unpack1855.elt1896, align 8, !dbg !162
  %.unpack1857 = load [0 x i32]*, [0 x i32]** %.elt1856, align 8, !dbg !162
  %.unpack1859 = load [0 x i32]*, [0 x i32]** %.elt1858, align 8, !dbg !162
  %.unpack1861 = load [0 x float]*, [0 x float]** %.elt1860, align 8, !dbg !162
  %.unpack1863 = load [0 x float]*, [0 x float]** %.elt1862, align 8, !dbg !162
  %.unpack1865 = load [0 x float]*, [0 x float]** %.elt1864, align 8, !dbg !162
  %.unpack1867 = load [0 x i32]*, [0 x i32]** %.elt1866, align 8, !dbg !162
  %.unpack1869 = load [0 x float]*, [0 x float]** %.elt1868, align 8, !dbg !162
  %.unpack1871 = load [0 x float]*, [0 x float]** %.elt1870, align 8, !dbg !162
  %.unpack1873 = load [0 x float]*, [0 x float]** %.elt1872, align 8, !dbg !162
  %.unpack1875 = load [0 x float]*, [0 x float]** %.elt1874, align 8, !dbg !162
  %.unpack1877 = load [0 x i32]*, [0 x i32]** %.elt1876, align 8, !dbg !162
  %.unpack1879 = load i32, i32* %.elt1878, align 8, !dbg !162
  %.unpack1881 = load i32, i32* %.elt1880, align 4, !dbg !162
  store [0 x i32]* %.unpack1855.unpack, [0 x i32]** %primary_4082217.repack.repack1926, align 8, !dbg !162
  store [0 x float]* %.unpack1855.unpack1883, [0 x float]** %primary_4082217.repack.repack1927, align 8, !dbg !162
  store [0 x float]* %.unpack1855.unpack1885, [0 x float]** %primary_4082217.repack.repack1929, align 8, !dbg !162
  store [0 x float]* %.unpack1855.unpack1887, [0 x float]** %primary_4082217.repack.repack1931, align 8, !dbg !162
  store [0 x float]* %.unpack1855.unpack1889, [0 x float]** %primary_4082217.repack.repack1933, align 8, !dbg !162
  store [0 x float]* %.unpack1855.unpack1891, [0 x float]** %primary_4082217.repack.repack1935, align 8, !dbg !162
  store [0 x float]* %.unpack1855.unpack1893, [0 x float]** %primary_4082217.repack.repack1937, align 8, !dbg !162
  store [0 x float]* %.unpack1855.unpack1895, [0 x float]** %primary_4082217.repack.repack1939, align 8, !dbg !162
  store [0 x float]* %.unpack1855.unpack1897, [0 x float]** %primary_4082217.repack.repack1941, align 8, !dbg !162
  store [0 x i32]* %.unpack1857, [0 x i32]** %primary_4082217.repack1900, align 8, !dbg !162
  store [0 x i32]* %.unpack1859, [0 x i32]** %primary_4082217.repack1902, align 8, !dbg !162
  store [0 x float]* %.unpack1861, [0 x float]** %primary_4082217.repack1904, align 8, !dbg !162
  store [0 x float]* %.unpack1863, [0 x float]** %primary_4082217.repack1906, align 8, !dbg !162
  store [0 x float]* %.unpack1865, [0 x float]** %primary_4082217.repack1908, align 8, !dbg !162
  store [0 x i32]* %.unpack1867, [0 x i32]** %primary_4082217.repack1910, align 8, !dbg !162
  store [0 x float]* %.unpack1869, [0 x float]** %primary_4082217.repack1912, align 8, !dbg !162
  store [0 x float]* %.unpack1871, [0 x float]** %primary_4082217.repack1914, align 8, !dbg !162
  store [0 x float]* %.unpack1873, [0 x float]** %primary_4082217.repack1916, align 8, !dbg !162
  store [0 x float]* %.unpack1875, [0 x float]** %primary_4082217.repack1918, align 8, !dbg !162
  store [0 x i32]* %.unpack1877, [0 x i32]** %primary_4082217.repack1920, align 8, !dbg !162
  store i32 %.unpack1879, i32* %primary_4082217.repack1922, align 8, !dbg !162
  store i32 %.unpack1881, i32* %primary_4082217.repack1924, align 4, !dbg !162
  store [0 x i32]* %.unpack1810.unpack, [0 x i32]** %other_primary_4082227.repack.repack1970, align 8, !dbg !162
  store [0 x float]* %.unpack1810.unpack1838, [0 x float]** %other_primary_4082227.repack.repack1971, align 8, !dbg !162
  store [0 x float]* %.unpack1810.unpack1840, [0 x float]** %other_primary_4082227.repack.repack1973, align 8, !dbg !162
  store [0 x float]* %.unpack1810.unpack1842, [0 x float]** %other_primary_4082227.repack.repack1975, align 8, !dbg !162
  store [0 x float]* %.unpack1810.unpack1844, [0 x float]** %other_primary_4082227.repack.repack1977, align 8, !dbg !162
  store [0 x float]* %.unpack1810.unpack1846, [0 x float]** %other_primary_4082227.repack.repack1979, align 8, !dbg !162
  store [0 x float]* %.unpack1810.unpack1848, [0 x float]** %other_primary_4082227.repack.repack1981, align 8, !dbg !162
  store [0 x float]* %.unpack1810.unpack1850, [0 x float]** %other_primary_4082227.repack.repack1983, align 8, !dbg !162
  store [0 x float]* %.unpack1810.unpack1852, [0 x float]** %other_primary_4082227.repack.repack1985, align 8, !dbg !162
  store [0 x i32]* %.unpack1812, [0 x i32]** %other_primary_4082227.repack1944, align 8, !dbg !162
  store [0 x i32]* %.unpack1814, [0 x i32]** %other_primary_4082227.repack1946, align 8, !dbg !162
  store [0 x float]* %.unpack1816, [0 x float]** %other_primary_4082227.repack1948, align 8, !dbg !162
  store [0 x float]* %.unpack1818, [0 x float]** %other_primary_4082227.repack1950, align 8, !dbg !162
  store [0 x float]* %.unpack1820, [0 x float]** %other_primary_4082227.repack1952, align 8, !dbg !162
  store [0 x i32]* %.unpack1822, [0 x i32]** %other_primary_4082227.repack1954, align 8, !dbg !162
  store [0 x float]* %.unpack1824, [0 x float]** %other_primary_4082227.repack1956, align 8, !dbg !162
  store [0 x float]* %.unpack1826, [0 x float]** %other_primary_4082227.repack1958, align 8, !dbg !162
  store [0 x float]* %.unpack1828, [0 x float]** %other_primary_4082227.repack1960, align 8, !dbg !162
  store [0 x float]* %.unpack1830, [0 x float]** %other_primary_4082227.repack1962, align 8, !dbg !162
  store [0 x i32]* %.unpack1832, [0 x i32]** %other_primary_4082227.repack1964, align 8, !dbg !162
  store i32 %.unpack1834, i32* %other_primary_4082227.repack1966, align 8, !dbg !162
  store i32 %.unpack1836, i32* %other_primary_4082227.repack1968, align 4, !dbg !162
  br label %while_head.backedge, !dbg !162
}

declare [0 x i8]* @rodent_load_buffer(i32, [0 x i8]*) local_unnamed_addr

declare void @rodent_load_bvh2_tri1(i32, [0 x i8]*, [0 x %12]**, [0 x %11]**) local_unnamed_addr

declare %1 @rodent_load_warp(i32, [0 x i8]*) local_unnamed_addr

declare void @rodent_get_film_data(i32, [0 x float]**, i32*, i32*) local_unnamed_addr

declare void @rodent_gpu_get_first_primary_stream(i32, %8*, i32) local_unnamed_addr

declare void @rodent_gpu_get_second_primary_stream(i32, %8*, i32) local_unnamed_addr

declare void @rodent_gpu_get_secondary_stream(i32, %10*, i32) local_unnamed_addr

declare void @rodent_gpu_get_tmp_buffer(i32, [0 x i32]**, i32) local_unnamed_addr

declare void @rodent_present(i32) local_unnamed_addr

declare void @anydsl_launch_kernel(i32, i8*, i8*, i32*, i32*, i8**, i32*, i32*, i32*, i8*, i32) local_unnamed_addr

declare void @anydsl_synchronize(i32) local_unnamed_addr

declare void @anydsl_copy(i32, [0 x i8]*, i64, i32, [0 x i8]*, i64, i64) local_unnamed_addr

define void @test_evaluate_brdf(%0* %sampler_4106267, %4* %incoming_4106268, %4* %outgoing_4106269, %4* %result_4106270) local_unnamed_addr !dbg !163 {
test_evaluate_brdf:
  %dim_param_4106417 = alloca float, align 4
  %dim_param_4106615 = alloca float, align 4
  %dim_param_4106805 = alloca float, align 4
  %dim_4106765 = alloca i32, align 4
  %slice_offset_4106895 = alloca i32, align 4
  %param_weight_4106787 = alloca [6 x float], align 4
  %dim_4106575 = alloca i32, align 4
  %slice_offset_4106705 = alloca i32, align 4
  %param_weight_4106597 = alloca [6 x float], align 4
  %dim_4106375 = alloca i32, align 4
  %slice_offset_4106510 = alloca i32, align 4
  %param_weight_4106399 = alloca [6 x float], align 4
  %fr_4107501 = alloca %4, align 8
  %u_wm_4106343 = alloca %3, align 8
  %.elt = getelementptr inbounds %4, %4* %incoming_4106268, i64 0, i32 0, !dbg !165
  %.unpack = load float, float* %.elt, align 4, !dbg !165
  %.elt187 = getelementptr inbounds %4, %4* %incoming_4106268, i64 0, i32 1, !dbg !165
  %.unpack188 = load float, float* %.elt187, align 4, !dbg !165
  %.elt189 = getelementptr inbounds %4, %4* %incoming_4106268, i64 0, i32 2, !dbg !165
  %.unpack190 = load float, float* %.elt189, align 4, !dbg !165
  %0 = fcmp ugt float %.unpack190, 0.000000e+00, !dbg !165
  %.elt195 = getelementptr inbounds %4, %4* %outgoing_4106269, i64 0, i32 2, !dbg !165
  %.unpack196 = load float, float* %.elt195, align 4, !dbg !165
  %1 = fcmp ugt float %.unpack196, 0.000000e+00
  %or.cond = and i1 %0, %1, !dbg !165
  br i1 %or.cond, label %expr_false1, label %evaluate_brdf_cont, !dbg !165

expr_false1:                                      ; preds = %test_evaluate_brdf
  %.elt193 = getelementptr inbounds %4, %4* %outgoing_4106269, i64 0, i32 1, !dbg !165
  %.unpack194 = load float, float* %.elt193, align 4, !dbg !165
  %.elt191 = getelementptr inbounds %4, %4* %outgoing_4106269, i64 0, i32 0, !dbg !165
  %.unpack192 = load float, float* %.elt191, align 4, !dbg !165
  %2 = insertvalue %4 undef, float %.unpack, 0, !dbg !165
  %3 = insertvalue %4 %2, float %.unpack188, 1, !dbg !165
  %4 = insertvalue %4 %3, float %.unpack190, 2, !dbg !165
  %5 = fadd float %.unpack, %.unpack192, !dbg !166
  %6 = fmul float %5, %5, !dbg !166
  %7 = fadd float %.unpack188, %.unpack194, !dbg !166
  %8 = fmul float %7, %7, !dbg !166
  %9 = fadd float %6, %8, !dbg !166
  %10 = fadd float %.unpack190, %.unpack196, !dbg !166
  %11 = fmul float %10, %10, !dbg !166
  %12 = fadd float %9, %11, !dbg !166
  %13 = call float @llvm.sqrt.f32(float %12), !dbg !166
  %14 = call fastcc float @elevation_4105594(%4 %4), !dbg !167
  %15 = call float @atan2f(float %.unpack188, float %.unpack), !dbg !168
  %16 = fdiv float 1.000000e+00, %13, !dbg !169
  %17 = fmul float %5, %16, !dbg !169
  %18 = insertvalue %4 undef, float %17, 0, !dbg !169
  %19 = fmul float %7, %16, !dbg !169
  %20 = insertvalue %4 %18, float %19, 1, !dbg !169
  %21 = fmul float %10, %16, !dbg !169
  %22 = insertvalue %4 %20, float %21, 2, !dbg !169
  %23 = call fastcc float @elevation_4105594(%4 %22), !dbg !169
  %24 = call float @atan2f(float %19, float %17), !dbg !170
  %25 = fmul float %14, 0x3FE45F3060000000, !dbg !171
  %26 = call float @llvm.sqrt.f32(float %25), !dbg !171
  %27 = fmul float %23, 0x3FE45F3060000000, !dbg !172
  %28 = call float @llvm.sqrt.f32(float %27), !dbg !172
  %29 = fadd float %24, 0x400921FB60000000, !dbg !173
  %30 = fdiv float %29, 0x401921FB60000000, !dbg !173
  %u_wm_4106343.repack = getelementptr inbounds %3, %3* %u_wm_4106343, i64 0, i32 0, !dbg !173
  store float %28, float* %u_wm_4106343.repack, align 8, !dbg !173
  %u_wm_4106343.repack198 = getelementptr inbounds %3, %3* %u_wm_4106343, i64 0, i32 1, !dbg !173
  store float %30, float* %u_wm_4106343.repack198, align 4, !dbg !173
  %31 = getelementptr inbounds %0, %0* %sampler_4106267, i64 0, i32 5, !dbg !173
  %32 = load i1, i1* %31, align 1, !dbg !173
  %33 = getelementptr inbounds %3, %3* %u_wm_4106343, i64 0, i32 1, !dbg !173
  br i1 %32, label %expr_true, label %_cont13, !dbg !173

expr_true:                                        ; preds = %expr_false1
  %34 = fsub float %24, %15, !dbg !174
  %35 = fadd float %34, 0x400921FB60000000, !dbg !174
  %36 = fdiv float %35, 0x401921FB60000000, !dbg !174
  store float %36, float* %33, align 4, !dbg !174
  br label %_cont13, !dbg !174

_cont13:                                          ; preds = %expr_true, %expr_false1
  %37 = load float, float* %33, align 4, !dbg !175
  %38 = call float @llvm.floor.f32(float %37), !dbg !175
  %39 = fsub float %37, %38, !dbg !176
  store float %39, float* %33, align 4, !dbg !176
  %.elt200 = getelementptr inbounds %3, %3* %u_wm_4106343, i64 0, i32 0, !dbg !176
  %.unpack201 = load float, float* %.elt200, align 8, !dbg !176
  %40 = insertvalue %3 undef, float %.unpack201, 0, !dbg !176
  %41 = insertvalue %3 %40, float %39, 1, !dbg !176
  %42 = getelementptr inbounds %0, %0* %sampler_4106267, i64 0, i32 2, !dbg !176
  %43 = call fastcc %6 @invert_warp2D2_4093932(%1* nonnull %42, %3 %41, float %15, float %14), !dbg !176
  %fr_4107501.repack = getelementptr inbounds %4, %4* %fr_4107501, i64 0, i32 0, !dbg !177
  store float 0.000000e+00, float* %fr_4107501.repack, align 8, !dbg !177
  %fr_4107501.repack204 = getelementptr inbounds %4, %4* %fr_4107501, i64 0, i32 1, !dbg !177
  store float 0.000000e+00, float* %fr_4107501.repack204, align 4, !dbg !177
  %fr_4107501.repack205 = getelementptr inbounds %4, %4* %fr_4107501, i64 0, i32 2, !dbg !177
  store float 0.000000e+00, float* %fr_4107501.repack205, align 8, !dbg !177
  %param_weight_4106399.repack = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4106399, i64 0, i64 0, !dbg !177
  store float 0.000000e+00, float* %param_weight_4106399.repack, align 4, !dbg !177
  %param_weight_4106399.repack206 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4106399, i64 0, i64 1, !dbg !177
  store float 0.000000e+00, float* %param_weight_4106399.repack206, align 4, !dbg !177
  %param_weight_4106399.repack207 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4106399, i64 0, i64 2, !dbg !177
  store float 0.000000e+00, float* %param_weight_4106399.repack207, align 4, !dbg !177
  %param_weight_4106399.repack208 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4106399, i64 0, i64 3, !dbg !177
  store float 0.000000e+00, float* %param_weight_4106399.repack208, align 4, !dbg !177
  %param_weight_4106399.repack209 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4106399, i64 0, i64 4, !dbg !177
  store float 0.000000e+00, float* %param_weight_4106399.repack209, align 4, !dbg !177
  %param_weight_4106399.repack210 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4106399, i64 0, i64 5, !dbg !177
  store float 0.000000e+00, float* %param_weight_4106399.repack210, align 4, !dbg !177
  store i32 0, i32* %slice_offset_4106510, align 4, !dbg !177
  store i32 0, i32* %dim_4106375, align 4, !dbg !177
  %44 = getelementptr inbounds %0, %0* %sampler_4106267, i64 0, i32 4, !dbg !177
  %45 = getelementptr inbounds %0, %0* %sampler_4106267, i64 0, i32 4, i32 4, !dbg !177
  %46 = getelementptr inbounds %0, %0* %sampler_4106267, i64 0, i32 4, i32 3, !dbg !177
  %47 = getelementptr inbounds %0, %0* %sampler_4106267, i64 0, i32 4, i32 5, !dbg !177
  %48 = getelementptr inbounds %0, %0* %sampler_4106267, i64 0, i32 4, i32 6, !dbg !177
  br label %expr_true74, !dbg !178

expr_false16:                                     ; preds = %continue91
  %49 = getelementptr inbounds %0, %0* %sampler_4106267, i64 0, i32 4, i32 2, !dbg !179
  %.elt211 = getelementptr inbounds %3, %3* %49, i64 0, i32 0, !dbg !179
  %.unpack212 = load float, float* %.elt211, align 4, !dbg !179
  %.elt215 = getelementptr inbounds %1, %1* %44, i64 0, i32 0, i32 0, !dbg !179
  %.unpack216 = load i32, i32* %.elt215, align 4, !dbg !179
  %50 = extractvalue %6 %43, 0, !dbg !179
  %51 = extractvalue %3 %50, 0, !dbg !179
  %52 = fmul float %51, %.unpack212, !dbg !179
  %53 = sitofp i32 %.unpack216 to float, !dbg !179
  %54 = fadd float %53, -2.000000e+00, !dbg !179
  %55 = fcmp olt float %52, %54, !dbg !179
  %56 = select i1 %55, float %52, float %54, !dbg !179
  %57 = call float @llvm.floor.f32(float %56), !dbg !179
  %.elt217 = getelementptr inbounds %0, %0* %sampler_4106267, i64 0, i32 4, i32 0, i32 1, !dbg !179
  %.unpack218 = load i32, i32* %.elt217, align 4, !dbg !179
  %.elt213 = getelementptr inbounds %0, %0* %sampler_4106267, i64 0, i32 4, i32 2, i32 1, !dbg !179
  %.unpack214 = load float, float* %.elt213, align 4, !dbg !179
  %58 = extractvalue %3 %50, 1, !dbg !180
  %59 = fmul float %58, %.unpack214, !dbg !180
  %60 = sitofp i32 %.unpack218 to float, !dbg !180
  %61 = fadd float %60, -2.000000e+00, !dbg !180
  %62 = fcmp olt float %59, %61, !dbg !180
  %63 = select i1 %62, float %59, float %61, !dbg !180
  %64 = call float @llvm.floor.f32(float %63), !dbg !180
  %65 = getelementptr inbounds %1, %1* %44, i64 0, i32 0, i32 0, !dbg !181
  %66 = load i32, i32* %65, align 4, !dbg !181
  %67 = getelementptr inbounds %0, %0* %sampler_4106267, i64 0, i32 4, i32 0, i32 1, !dbg !181
  %68 = load i32, i32* %67, align 4, !dbg !181
  %69 = load i32, i32* %slice_offset_4106510, align 4, !dbg !181
  %70 = getelementptr inbounds %0, %0* %sampler_4106267, i64 0, i32 4, i32 7, !dbg !181
  %71 = load [0 x float]*, [0 x float]** %70, align 8, !dbg !181
  %72 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %73 = getelementptr inbounds [0 x i32], [0 x i32]* %72, i64 0, i64 2, !dbg !181
  %74 = load i32, i32* %73, align 4, !dbg !181
  %75 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4106399, i64 0, i64 4, !dbg !181
  %76 = load float, float* %75, align 4, !dbg !181
  %77 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4106399, i64 0, i64 5, !dbg !181
  %78 = load float, float* %77, align 4, !dbg !181
  %79 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %80 = getelementptr inbounds [0 x i32], [0 x i32]* %79, i64 0, i64 1, !dbg !181
  %81 = load i32, i32* %80, align 4, !dbg !181
  %82 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4106399, i64 0, i64 2, !dbg !181
  %83 = load float, float* %82, align 4, !dbg !181
  %84 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4106399, i64 0, i64 3, !dbg !181
  %85 = load float, float* %84, align 4, !dbg !181
  %86 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %87 = getelementptr inbounds [0 x i32], [0 x i32]* %86, i64 0, i64 0, !dbg !181
  %88 = load i32, i32* %87, align 4, !dbg !181
  %89 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4106399, i64 0, i64 0, !dbg !181
  %90 = load float, float* %89, align 4, !dbg !181
  %91 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4106399, i64 0, i64 1, !dbg !181
  %92 = load float, float* %91, align 4, !dbg !181
  %93 = fptosi float %57 to i32, !dbg !181
  %94 = fptosi float %64 to i32, !dbg !181
  %95 = mul nsw i32 %66, %94, !dbg !181
  %index = add nsw i32 %95, %93, !dbg !181
  %size = mul nsw i32 %66, %68, !dbg !181
  %96 = mul nsw i32 %69, %size, !dbg !181
  %97 = add nsw i32 %index, %96, !dbg !181
  %98 = sext i32 %97 to i64, !dbg !181
  %99 = getelementptr inbounds [0 x float], [0 x float]* %71, i64 0, i64 %98, !dbg !181
  %100 = load float, float* %99, align 4, !dbg !181
  %101 = mul nsw i32 %88, %size, !dbg !181
  %i1 = add nsw i32 %97, %101, !dbg !181
  %102 = sext i32 %i1 to i64, !dbg !181
  %103 = getelementptr inbounds [0 x float], [0 x float]* %71, i64 0, i64 %102, !dbg !181
  %104 = load float, float* %103, align 4, !dbg !181
  %105 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %106 = getelementptr inbounds [0 x i32], [0 x i32]* %105, i64 0, i64 0, !dbg !181
  %107 = load i32, i32* %106, align 4, !dbg !181
  %108 = load float, float* %89, align 4, !dbg !181
  %109 = load float, float* %91, align 4, !dbg !181
  %110 = mul nsw i32 %81, %size, !dbg !181
  %i194 = add nsw i32 %97, %110, !dbg !181
  %111 = sext i32 %i194 to i64, !dbg !181
  %112 = getelementptr inbounds [0 x float], [0 x float]* %71, i64 0, i64 %111, !dbg !181
  %113 = load float, float* %112, align 4, !dbg !181
  %114 = mul nsw i32 %107, %size, !dbg !181
  %i195 = add nsw i32 %i194, %114, !dbg !181
  %115 = sext i32 %i195 to i64, !dbg !181
  %116 = getelementptr inbounds [0 x float], [0 x float]* %71, i64 0, i64 %115, !dbg !181
  %117 = load float, float* %116, align 4, !dbg !181
  %118 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %119 = getelementptr inbounds [0 x i32], [0 x i32]* %118, i64 0, i64 1, !dbg !181
  %120 = load i32, i32* %119, align 4, !dbg !181
  %121 = load float, float* %82, align 4, !dbg !181
  %122 = load float, float* %84, align 4, !dbg !181
  %123 = getelementptr inbounds [0 x i32], [0 x i32]* %118, i64 0, i64 0, !dbg !181
  %124 = load i32, i32* %123, align 4, !dbg !181
  %125 = load float, float* %89, align 4, !dbg !181
  %126 = load float, float* %91, align 4, !dbg !181
  %127 = mul nsw i32 %74, %size, !dbg !181
  %i196 = add nsw i32 %97, %127, !dbg !181
  %128 = sext i32 %i196 to i64, !dbg !181
  %129 = getelementptr inbounds [0 x float], [0 x float]* %71, i64 0, i64 %128, !dbg !181
  %130 = load float, float* %129, align 4, !dbg !181
  %131 = mul nsw i32 %124, %size, !dbg !181
  %i197 = add nsw i32 %i196, %131, !dbg !181
  %132 = sext i32 %i197 to i64, !dbg !181
  %133 = getelementptr inbounds [0 x float], [0 x float]* %71, i64 0, i64 %132, !dbg !181
  %134 = load float, float* %133, align 4, !dbg !181
  %135 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %136 = getelementptr inbounds [0 x i32], [0 x i32]* %135, i64 0, i64 0, !dbg !181
  %137 = load i32, i32* %136, align 4, !dbg !181
  %138 = load float, float* %89, align 4, !dbg !181
  %139 = load float, float* %91, align 4, !dbg !181
  %140 = mul nsw i32 %120, %size, !dbg !181
  %i198 = add nsw i32 %i196, %140, !dbg !181
  %141 = sext i32 %i198 to i64, !dbg !181
  %142 = getelementptr inbounds [0 x float], [0 x float]* %71, i64 0, i64 %141, !dbg !181
  %143 = load float, float* %142, align 4, !dbg !181
  %144 = mul nsw i32 %137, %size, !dbg !181
  %i199 = add nsw i32 %i198, %144, !dbg !181
  %145 = sext i32 %i199 to i64, !dbg !181
  %146 = getelementptr inbounds [0 x float], [0 x float]* %71, i64 0, i64 %145, !dbg !181
  %147 = load float, float* %146, align 4, !dbg !181
  %148 = load [0 x float]*, [0 x float]** %70, align 8, !dbg !181
  %149 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %150 = getelementptr inbounds [0 x i32], [0 x i32]* %149, i64 0, i64 2, !dbg !181
  %151 = load i32, i32* %150, align 4, !dbg !181
  %152 = load float, float* %75, align 4, !dbg !181
  %153 = load float, float* %77, align 4, !dbg !181
  %154 = getelementptr inbounds [0 x i32], [0 x i32]* %149, i64 0, i64 1, !dbg !181
  %155 = load i32, i32* %154, align 4, !dbg !181
  %156 = load float, float* %82, align 4, !dbg !181
  %157 = load float, float* %84, align 4, !dbg !181
  %158 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %159 = getelementptr inbounds [0 x i32], [0 x i32]* %158, i64 0, i64 0, !dbg !181
  %160 = load i32, i32* %159, align 4, !dbg !181
  %161 = load float, float* %89, align 4, !dbg !181
  %162 = load float, float* %91, align 4, !dbg !181
  %163 = getelementptr inbounds [0 x float], [0 x float]* %148, i64 0, i64 1, !dbg !181
  %164 = sext i32 %97 to i64, !dbg !181
  %165 = getelementptr inbounds float, float* %163, i64 %164, !dbg !181
  %166 = load float, float* %165, align 4, !dbg !181
  %167 = mul nsw i32 %160, %size, !dbg !181
  %i1100 = add nsw i32 %97, %167, !dbg !181
  %168 = sext i32 %i1100 to i64, !dbg !181
  %169 = getelementptr inbounds float, float* %163, i64 %168, !dbg !181
  %170 = load float, float* %169, align 4, !dbg !181
  %171 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %172 = getelementptr inbounds [0 x i32], [0 x i32]* %171, i64 0, i64 0, !dbg !181
  %173 = load i32, i32* %172, align 4, !dbg !181
  %174 = load float, float* %89, align 4, !dbg !181
  %175 = load float, float* %91, align 4, !dbg !181
  %176 = mul nsw i32 %155, %size, !dbg !181
  %i1101 = add nsw i32 %97, %176, !dbg !181
  %177 = sext i32 %i1101 to i64, !dbg !181
  %178 = getelementptr inbounds float, float* %163, i64 %177, !dbg !181
  %179 = load float, float* %178, align 4, !dbg !181
  %180 = mul nsw i32 %173, %size, !dbg !181
  %i1102 = add nsw i32 %i1101, %180, !dbg !181
  %181 = sext i32 %i1102 to i64, !dbg !181
  %182 = getelementptr inbounds float, float* %163, i64 %181, !dbg !181
  %183 = load float, float* %182, align 4, !dbg !181
  %184 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %185 = getelementptr inbounds [0 x i32], [0 x i32]* %184, i64 0, i64 1, !dbg !181
  %186 = load i32, i32* %185, align 4, !dbg !181
  %187 = load float, float* %82, align 4, !dbg !181
  %188 = load float, float* %84, align 4, !dbg !181
  %189 = getelementptr inbounds [0 x i32], [0 x i32]* %184, i64 0, i64 0, !dbg !181
  %190 = load i32, i32* %189, align 4, !dbg !181
  %191 = load float, float* %89, align 4, !dbg !181
  %192 = load float, float* %91, align 4, !dbg !181
  %193 = mul nsw i32 %151, %size, !dbg !181
  %i1103 = add nsw i32 %97, %193, !dbg !181
  %194 = sext i32 %i1103 to i64, !dbg !181
  %195 = getelementptr inbounds float, float* %163, i64 %194, !dbg !181
  %196 = load float, float* %195, align 4, !dbg !181
  %197 = mul nsw i32 %190, %size, !dbg !181
  %i1104 = add nsw i32 %i1103, %197, !dbg !181
  %198 = sext i32 %i1104 to i64, !dbg !181
  %199 = getelementptr inbounds float, float* %163, i64 %198, !dbg !181
  %200 = load float, float* %199, align 4, !dbg !181
  %201 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %202 = getelementptr inbounds [0 x i32], [0 x i32]* %201, i64 0, i64 0, !dbg !181
  %203 = load i32, i32* %202, align 4, !dbg !181
  %204 = load float, float* %89, align 4, !dbg !181
  %205 = load float, float* %91, align 4, !dbg !181
  %206 = mul nsw i32 %186, %size, !dbg !181
  %i1105 = add nsw i32 %i1103, %206, !dbg !181
  %207 = sext i32 %i1105 to i64, !dbg !181
  %208 = getelementptr inbounds float, float* %163, i64 %207, !dbg !181
  %209 = load float, float* %208, align 4, !dbg !181
  %210 = mul nsw i32 %203, %size, !dbg !181
  %i1106 = add nsw i32 %i1105, %210, !dbg !181
  %211 = sext i32 %i1106 to i64, !dbg !181
  %212 = getelementptr inbounds float, float* %163, i64 %211, !dbg !181
  %213 = load float, float* %212, align 4, !dbg !181
  %214 = load [0 x float]*, [0 x float]** %70, align 8, !dbg !181
  %215 = load i32, i32* %65, align 4, !dbg !181
  %216 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %217 = getelementptr inbounds [0 x i32], [0 x i32]* %216, i64 0, i64 2, !dbg !181
  %218 = load i32, i32* %217, align 4, !dbg !181
  %219 = load float, float* %75, align 4, !dbg !181
  %220 = load float, float* %77, align 4, !dbg !181
  %221 = getelementptr inbounds [0 x i32], [0 x i32]* %216, i64 0, i64 1, !dbg !181
  %222 = load i32, i32* %221, align 4, !dbg !181
  %223 = load float, float* %82, align 4, !dbg !181
  %224 = load float, float* %84, align 4, !dbg !181
  %225 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %226 = getelementptr inbounds [0 x i32], [0 x i32]* %225, i64 0, i64 0, !dbg !181
  %227 = load i32, i32* %226, align 4, !dbg !181
  %228 = load float, float* %89, align 4, !dbg !181
  %229 = load float, float* %91, align 4, !dbg !181
  %230 = sext i32 %215 to i64, !dbg !181
  %231 = getelementptr inbounds [0 x float], [0 x float]* %214, i64 0, i64 %230, !dbg !181
  %232 = sext i32 %97 to i64, !dbg !181
  %233 = getelementptr inbounds float, float* %231, i64 %232, !dbg !181
  %234 = load float, float* %233, align 4, !dbg !181
  %235 = mul nsw i32 %227, %size, !dbg !181
  %i1107 = add nsw i32 %97, %235, !dbg !181
  %236 = sext i32 %i1107 to i64, !dbg !181
  %237 = getelementptr inbounds float, float* %231, i64 %236, !dbg !181
  %238 = load float, float* %237, align 4, !dbg !181
  %239 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %240 = getelementptr inbounds [0 x i32], [0 x i32]* %239, i64 0, i64 0, !dbg !181
  %241 = load i32, i32* %240, align 4, !dbg !181
  %242 = load float, float* %89, align 4, !dbg !181
  %243 = load float, float* %91, align 4, !dbg !181
  %244 = mul nsw i32 %222, %size, !dbg !181
  %i1108 = add nsw i32 %97, %244, !dbg !181
  %245 = sext i32 %i1108 to i64, !dbg !181
  %246 = getelementptr inbounds float, float* %231, i64 %245, !dbg !181
  %247 = load float, float* %246, align 4, !dbg !181
  %248 = mul nsw i32 %241, %size, !dbg !181
  %i1109 = add nsw i32 %i1108, %248, !dbg !181
  %249 = sext i32 %i1109 to i64, !dbg !181
  %250 = getelementptr inbounds float, float* %231, i64 %249, !dbg !181
  %251 = load float, float* %250, align 4, !dbg !181
  %252 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %253 = getelementptr inbounds [0 x i32], [0 x i32]* %252, i64 0, i64 1, !dbg !181
  %254 = load i32, i32* %253, align 4, !dbg !181
  %255 = load float, float* %82, align 4, !dbg !181
  %256 = load float, float* %84, align 4, !dbg !181
  %257 = getelementptr inbounds [0 x i32], [0 x i32]* %252, i64 0, i64 0, !dbg !181
  %258 = load i32, i32* %257, align 4, !dbg !181
  %259 = load float, float* %89, align 4, !dbg !181
  %260 = load float, float* %91, align 4, !dbg !181
  %261 = mul nsw i32 %218, %size, !dbg !181
  %i1110 = add nsw i32 %97, %261, !dbg !181
  %262 = sext i32 %i1110 to i64, !dbg !181
  %263 = getelementptr inbounds float, float* %231, i64 %262, !dbg !181
  %264 = load float, float* %263, align 4, !dbg !181
  %265 = mul nsw i32 %258, %size, !dbg !181
  %i1111 = add nsw i32 %i1110, %265, !dbg !181
  %266 = sext i32 %i1111 to i64, !dbg !181
  %267 = getelementptr inbounds float, float* %231, i64 %266, !dbg !181
  %268 = load float, float* %267, align 4, !dbg !181
  %269 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %270 = getelementptr inbounds [0 x i32], [0 x i32]* %269, i64 0, i64 0, !dbg !181
  %271 = load i32, i32* %270, align 4, !dbg !181
  %272 = load float, float* %89, align 4, !dbg !181
  %273 = load float, float* %91, align 4, !dbg !181
  %274 = mul nsw i32 %254, %size, !dbg !181
  %i1112 = add nsw i32 %i1110, %274, !dbg !181
  %275 = sext i32 %i1112 to i64, !dbg !181
  %276 = getelementptr inbounds float, float* %231, i64 %275, !dbg !181
  %277 = load float, float* %276, align 4, !dbg !181
  %278 = mul nsw i32 %271, %size, !dbg !181
  %i1113 = add nsw i32 %i1112, %278, !dbg !181
  %279 = sext i32 %i1113 to i64, !dbg !181
  %280 = getelementptr inbounds float, float* %231, i64 %279, !dbg !181
  %281 = load float, float* %280, align 4, !dbg !181
  %282 = load [0 x float]*, [0 x float]** %70, align 8, !dbg !181
  %283 = load i32, i32* %65, align 4, !dbg !181
  %284 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %285 = getelementptr inbounds [0 x i32], [0 x i32]* %284, i64 0, i64 2, !dbg !181
  %286 = load i32, i32* %285, align 4, !dbg !181
  %287 = load float, float* %75, align 4, !dbg !181
  %288 = load float, float* %77, align 4, !dbg !181
  %289 = getelementptr inbounds [0 x i32], [0 x i32]* %284, i64 0, i64 1, !dbg !181
  %290 = load i32, i32* %289, align 4, !dbg !181
  %291 = load float, float* %82, align 4, !dbg !181
  %292 = load float, float* %84, align 4, !dbg !181
  %293 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %294 = getelementptr inbounds [0 x i32], [0 x i32]* %293, i64 0, i64 0, !dbg !181
  %295 = load i32, i32* %294, align 4, !dbg !181
  %296 = load float, float* %89, align 4, !dbg !181
  %297 = load float, float* %91, align 4, !dbg !181
  %298 = add nsw i32 %283, 1, !dbg !181
  %299 = sext i32 %298 to i64, !dbg !181
  %300 = getelementptr inbounds [0 x float], [0 x float]* %282, i64 0, i64 %299, !dbg !181
  %301 = sext i32 %97 to i64, !dbg !181
  %302 = getelementptr inbounds float, float* %300, i64 %301, !dbg !181
  %303 = load float, float* %302, align 4, !dbg !181
  %304 = mul nsw i32 %295, %size, !dbg !181
  %i1114 = add nsw i32 %97, %304, !dbg !181
  %305 = sext i32 %i1114 to i64, !dbg !181
  %306 = getelementptr inbounds float, float* %300, i64 %305, !dbg !181
  %307 = load float, float* %306, align 4, !dbg !181
  %308 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %309 = getelementptr inbounds [0 x i32], [0 x i32]* %308, i64 0, i64 0, !dbg !181
  %310 = load i32, i32* %309, align 4, !dbg !181
  %311 = load float, float* %89, align 4, !dbg !181
  %312 = load float, float* %91, align 4, !dbg !181
  %313 = mul nsw i32 %290, %size, !dbg !181
  %i1115 = add nsw i32 %97, %313, !dbg !181
  %314 = sext i32 %i1115 to i64, !dbg !181
  %315 = getelementptr inbounds float, float* %300, i64 %314, !dbg !181
  %316 = load float, float* %315, align 4, !dbg !181
  %317 = mul nsw i32 %310, %size, !dbg !181
  %i1116 = add nsw i32 %i1115, %317, !dbg !181
  %318 = sext i32 %i1116 to i64, !dbg !181
  %319 = getelementptr inbounds float, float* %300, i64 %318, !dbg !181
  %320 = load float, float* %319, align 4, !dbg !181
  %321 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %322 = getelementptr inbounds [0 x i32], [0 x i32]* %321, i64 0, i64 1, !dbg !181
  %323 = load i32, i32* %322, align 4, !dbg !181
  %324 = load float, float* %82, align 4, !dbg !181
  %325 = load float, float* %84, align 4, !dbg !181
  %326 = getelementptr inbounds [0 x i32], [0 x i32]* %321, i64 0, i64 0, !dbg !181
  %327 = load i32, i32* %326, align 4, !dbg !181
  %328 = load float, float* %89, align 4, !dbg !181
  %329 = load float, float* %91, align 4, !dbg !181
  %330 = mul nsw i32 %286, %size, !dbg !181
  %i1117 = add nsw i32 %97, %330, !dbg !181
  %331 = sext i32 %i1117 to i64, !dbg !181
  %332 = getelementptr inbounds float, float* %300, i64 %331, !dbg !181
  %333 = load float, float* %332, align 4, !dbg !181
  %334 = mul nsw i32 %327, %size, !dbg !181
  %i1118 = add nsw i32 %i1117, %334, !dbg !181
  %335 = sext i32 %i1118 to i64, !dbg !181
  %336 = getelementptr inbounds float, float* %300, i64 %335, !dbg !181
  %337 = load float, float* %336, align 4, !dbg !181
  %338 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %339 = getelementptr inbounds [0 x i32], [0 x i32]* %338, i64 0, i64 0, !dbg !181
  %340 = load i32, i32* %339, align 4, !dbg !181
  %341 = load float, float* %89, align 4, !dbg !181
  %342 = load float, float* %91, align 4, !dbg !181
  %343 = mul nsw i32 %323, %size, !dbg !181
  %i1119 = add nsw i32 %i1117, %343, !dbg !181
  %344 = sext i32 %i1119 to i64, !dbg !181
  %345 = getelementptr inbounds float, float* %300, i64 %344, !dbg !181
  %346 = load float, float* %345, align 4, !dbg !181
  %347 = mul nsw i32 %340, %size, !dbg !181
  %i1120 = add nsw i32 %i1119, %347, !dbg !181
  %348 = sext i32 %i1120 to i64, !dbg !181
  %349 = getelementptr inbounds float, float* %300, i64 %348, !dbg !181
  %350 = load float, float* %349, align 4, !dbg !181
  %351 = getelementptr inbounds %3, %3* %49, i64 0, i32 0, !dbg !181
  %352 = load float, float* %351, align 4, !dbg !181
  %353 = getelementptr inbounds %0, %0* %sampler_4106267, i64 0, i32 4, i32 2, i32 1, !dbg !181
  %354 = load float, float* %353, align 4, !dbg !181
  %355 = getelementptr inbounds %4, %4* %fr_4107501, i64 0, i32 0, !dbg !181
  %356 = fsub float %59, %64, !dbg !181
  %357 = fsub float 1.000000e+00, %356, !dbg !181
  %358 = fsub float %52, %57, !dbg !181
  %359 = fsub float 1.000000e+00, %358, !dbg !181
  %360 = fmul float %100, %90, !dbg !181
  %361 = fmul float %104, %92, !dbg !181
  %362 = fadd float %360, %361, !dbg !181
  %363 = fmul float %362, %83, !dbg !181
  %364 = fmul float %113, %108, !dbg !181
  %365 = fmul float %117, %109, !dbg !181
  %366 = fadd float %364, %365, !dbg !181
  %367 = fmul float %366, %85, !dbg !181
  %368 = fadd float %363, %367, !dbg !181
  %369 = fmul float %368, %76, !dbg !181
  %370 = fmul float %130, %125, !dbg !181
  %371 = fmul float %134, %126, !dbg !181
  %372 = fadd float %370, %371, !dbg !181
  %373 = fmul float %372, %121, !dbg !181
  %374 = fmul float %143, %138, !dbg !181
  %375 = fmul float %147, %139, !dbg !181
  %376 = fadd float %374, %375, !dbg !181
  %377 = fmul float %376, %122, !dbg !181
  %378 = fadd float %373, %377, !dbg !181
  %379 = fmul float %378, %78, !dbg !181
  %380 = fadd float %369, %379, !dbg !181
  %381 = fmul float %359, %380, !dbg !181
  %382 = fmul float %166, %161, !dbg !181
  %383 = fmul float %170, %162, !dbg !181
  %384 = fadd float %382, %383, !dbg !181
  %385 = fmul float %384, %156, !dbg !181
  %386 = fmul float %179, %174, !dbg !181
  %387 = fmul float %183, %175, !dbg !181
  %388 = fadd float %386, %387, !dbg !181
  %389 = fmul float %388, %157, !dbg !181
  %390 = fadd float %385, %389, !dbg !181
  %391 = fmul float %390, %152, !dbg !181
  %392 = fmul float %196, %191, !dbg !181
  %393 = fmul float %200, %192, !dbg !181
  %394 = fadd float %392, %393, !dbg !181
  %395 = fmul float %394, %187, !dbg !181
  %396 = fmul float %209, %204, !dbg !181
  %397 = fmul float %213, %205, !dbg !181
  %398 = fadd float %396, %397, !dbg !181
  %399 = fmul float %398, %188, !dbg !181
  %400 = fadd float %395, %399, !dbg !181
  %401 = fmul float %400, %153, !dbg !181
  %402 = fadd float %391, %401, !dbg !181
  %403 = fmul float %358, %402, !dbg !181
  %404 = fadd float %381, %403, !dbg !181
  %405 = fmul float %357, %404, !dbg !181
  %406 = fmul float %234, %228, !dbg !181
  %407 = fmul float %238, %229, !dbg !181
  %408 = fadd float %406, %407, !dbg !181
  %409 = fmul float %408, %223, !dbg !181
  %410 = fmul float %247, %242, !dbg !181
  %411 = fmul float %251, %243, !dbg !181
  %412 = fadd float %410, %411, !dbg !181
  %413 = fmul float %412, %224, !dbg !181
  %414 = fadd float %409, %413, !dbg !181
  %415 = fmul float %414, %219, !dbg !181
  %416 = fmul float %264, %259, !dbg !181
  %417 = fmul float %268, %260, !dbg !181
  %418 = fadd float %416, %417, !dbg !181
  %419 = fmul float %418, %255, !dbg !181
  %420 = fmul float %277, %272, !dbg !181
  %421 = fmul float %281, %273, !dbg !181
  %422 = fadd float %420, %421, !dbg !181
  %423 = fmul float %422, %256, !dbg !181
  %424 = fadd float %419, %423, !dbg !181
  %425 = fmul float %424, %220, !dbg !181
  %426 = fadd float %415, %425, !dbg !181
  %427 = fmul float %359, %426, !dbg !181
  %428 = fmul float %303, %296, !dbg !181
  %429 = fmul float %307, %297, !dbg !181
  %430 = fadd float %428, %429, !dbg !181
  %431 = fmul float %430, %291, !dbg !181
  %432 = fmul float %316, %311, !dbg !181
  %433 = fmul float %320, %312, !dbg !181
  %434 = fadd float %432, %433, !dbg !181
  %435 = fmul float %434, %292, !dbg !181
  %436 = fadd float %431, %435, !dbg !181
  %437 = fmul float %436, %287, !dbg !181
  %438 = fmul float %333, %328, !dbg !181
  %439 = fmul float %337, %329, !dbg !181
  %440 = fadd float %438, %439, !dbg !181
  %441 = fmul float %440, %324, !dbg !181
  %442 = fmul float %346, %341, !dbg !181
  %443 = fmul float %350, %342, !dbg !181
  %444 = fadd float %442, %443, !dbg !181
  %445 = fmul float %444, %325, !dbg !181
  %446 = fadd float %441, %445, !dbg !181
  %447 = fmul float %446, %288, !dbg !181
  %448 = fadd float %437, %447, !dbg !181
  %449 = fmul float %358, %448, !dbg !181
  %450 = fadd float %427, %449, !dbg !181
  %451 = fmul float %356, %450, !dbg !181
  %452 = fadd float %405, %451, !dbg !181
  %hprod = fmul float %352, %354, !dbg !181
  %453 = fmul float %452, %hprod, !dbg !181
  store float %453, float* %355, align 8, !dbg !181
  %param_weight_4106597.repack = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4106597, i64 0, i64 0, !dbg !181
  store float 0.000000e+00, float* %param_weight_4106597.repack, align 4, !dbg !181
  %param_weight_4106597.repack219 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4106597, i64 0, i64 1, !dbg !181
  store float 0.000000e+00, float* %param_weight_4106597.repack219, align 4, !dbg !181
  %param_weight_4106597.repack220 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4106597, i64 0, i64 2, !dbg !181
  store float 0.000000e+00, float* %param_weight_4106597.repack220, align 4, !dbg !181
  %param_weight_4106597.repack221 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4106597, i64 0, i64 3, !dbg !181
  store float 0.000000e+00, float* %param_weight_4106597.repack221, align 4, !dbg !181
  %param_weight_4106597.repack222 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4106597, i64 0, i64 4, !dbg !181
  store float 0.000000e+00, float* %param_weight_4106597.repack222, align 4, !dbg !181
  %param_weight_4106597.repack223 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4106597, i64 0, i64 5, !dbg !181
  store float 0.000000e+00, float* %param_weight_4106597.repack223, align 4, !dbg !181
  store i32 0, i32* %slice_offset_4106705, align 4, !dbg !181
  store i32 0, i32* %dim_4106575, align 4, !dbg !181
  br label %expr_true56, !dbg !178

expr_false22:                                     ; preds = %continue73
  %.elt224 = getelementptr inbounds %3, %3* %49, i64 0, i32 0, !dbg !179
  %.unpack225 = load float, float* %.elt224, align 4, !dbg !179
  %.elt228 = getelementptr inbounds %1, %1* %44, i64 0, i32 0, i32 0, !dbg !179
  %.unpack229 = load i32, i32* %.elt228, align 4, !dbg !179
  %454 = fmul float %51, %.unpack225, !dbg !179
  %455 = sitofp i32 %.unpack229 to float, !dbg !179
  %456 = fadd float %455, -2.000000e+00, !dbg !179
  %457 = fcmp olt float %454, %456, !dbg !179
  %458 = select i1 %457, float %454, float %456, !dbg !179
  %459 = call float @llvm.floor.f32(float %458), !dbg !179
  %.elt230 = getelementptr inbounds %0, %0* %sampler_4106267, i64 0, i32 4, i32 0, i32 1, !dbg !179
  %.unpack231 = load i32, i32* %.elt230, align 4, !dbg !179
  %.elt226 = getelementptr inbounds %0, %0* %sampler_4106267, i64 0, i32 4, i32 2, i32 1, !dbg !179
  %.unpack227 = load float, float* %.elt226, align 4, !dbg !179
  %460 = fmul float %58, %.unpack227, !dbg !180
  %461 = sitofp i32 %.unpack231 to float, !dbg !180
  %462 = fadd float %461, -2.000000e+00, !dbg !180
  %463 = fcmp olt float %460, %462, !dbg !180
  %464 = select i1 %463, float %460, float %462, !dbg !180
  %465 = call float @llvm.floor.f32(float %464), !dbg !180
  %466 = load i32, i32* %65, align 4, !dbg !181
  %467 = load i32, i32* %67, align 4, !dbg !181
  %468 = load i32, i32* %slice_offset_4106705, align 4, !dbg !181
  %469 = load [0 x float]*, [0 x float]** %70, align 8, !dbg !181
  %470 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %471 = getelementptr inbounds [0 x i32], [0 x i32]* %470, i64 0, i64 2, !dbg !181
  %472 = load i32, i32* %471, align 4, !dbg !181
  %473 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4106597, i64 0, i64 4, !dbg !181
  %474 = load float, float* %473, align 4, !dbg !181
  %475 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4106597, i64 0, i64 5, !dbg !181
  %476 = load float, float* %475, align 4, !dbg !181
  %477 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %478 = getelementptr inbounds [0 x i32], [0 x i32]* %477, i64 0, i64 1, !dbg !181
  %479 = load i32, i32* %478, align 4, !dbg !181
  %480 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4106597, i64 0, i64 2, !dbg !181
  %481 = load float, float* %480, align 4, !dbg !181
  %482 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4106597, i64 0, i64 3, !dbg !181
  %483 = load float, float* %482, align 4, !dbg !181
  %484 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %485 = getelementptr inbounds [0 x i32], [0 x i32]* %484, i64 0, i64 0, !dbg !181
  %486 = load i32, i32* %485, align 4, !dbg !181
  %487 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4106597, i64 0, i64 0, !dbg !181
  %488 = load float, float* %487, align 4, !dbg !181
  %489 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4106597, i64 0, i64 1, !dbg !181
  %490 = load float, float* %489, align 4, !dbg !181
  %491 = fptosi float %459 to i32, !dbg !181
  %492 = fptosi float %465 to i32, !dbg !181
  %493 = mul nsw i32 %466, %492, !dbg !181
  %index121 = add nsw i32 %493, %491, !dbg !181
  %size122 = mul nsw i32 %466, %467, !dbg !181
  %494 = mul nsw i32 %468, %size122, !dbg !181
  %495 = add nsw i32 %index121, %494, !dbg !181
  %496 = sext i32 %495 to i64, !dbg !181
  %497 = getelementptr inbounds [0 x float], [0 x float]* %469, i64 0, i64 %496, !dbg !181
  %498 = load float, float* %497, align 4, !dbg !181
  %499 = mul nsw i32 %486, %size122, !dbg !181
  %i1123 = add nsw i32 %495, %499, !dbg !181
  %500 = sext i32 %i1123 to i64, !dbg !181
  %501 = getelementptr inbounds [0 x float], [0 x float]* %469, i64 0, i64 %500, !dbg !181
  %502 = load float, float* %501, align 4, !dbg !181
  %503 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %504 = getelementptr inbounds [0 x i32], [0 x i32]* %503, i64 0, i64 0, !dbg !181
  %505 = load i32, i32* %504, align 4, !dbg !181
  %506 = load float, float* %487, align 4, !dbg !181
  %507 = load float, float* %489, align 4, !dbg !181
  %508 = mul nsw i32 %479, %size122, !dbg !181
  %i1124 = add nsw i32 %495, %508, !dbg !181
  %509 = sext i32 %i1124 to i64, !dbg !181
  %510 = getelementptr inbounds [0 x float], [0 x float]* %469, i64 0, i64 %509, !dbg !181
  %511 = load float, float* %510, align 4, !dbg !181
  %512 = mul nsw i32 %505, %size122, !dbg !181
  %i1125 = add nsw i32 %i1124, %512, !dbg !181
  %513 = sext i32 %i1125 to i64, !dbg !181
  %514 = getelementptr inbounds [0 x float], [0 x float]* %469, i64 0, i64 %513, !dbg !181
  %515 = load float, float* %514, align 4, !dbg !181
  %516 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %517 = getelementptr inbounds [0 x i32], [0 x i32]* %516, i64 0, i64 1, !dbg !181
  %518 = load i32, i32* %517, align 4, !dbg !181
  %519 = load float, float* %480, align 4, !dbg !181
  %520 = load float, float* %482, align 4, !dbg !181
  %521 = getelementptr inbounds [0 x i32], [0 x i32]* %516, i64 0, i64 0, !dbg !181
  %522 = load i32, i32* %521, align 4, !dbg !181
  %523 = load float, float* %487, align 4, !dbg !181
  %524 = load float, float* %489, align 4, !dbg !181
  %525 = mul nsw i32 %472, %size122, !dbg !181
  %i1126 = add nsw i32 %495, %525, !dbg !181
  %526 = sext i32 %i1126 to i64, !dbg !181
  %527 = getelementptr inbounds [0 x float], [0 x float]* %469, i64 0, i64 %526, !dbg !181
  %528 = load float, float* %527, align 4, !dbg !181
  %529 = mul nsw i32 %522, %size122, !dbg !181
  %i1127 = add nsw i32 %i1126, %529, !dbg !181
  %530 = sext i32 %i1127 to i64, !dbg !181
  %531 = getelementptr inbounds [0 x float], [0 x float]* %469, i64 0, i64 %530, !dbg !181
  %532 = load float, float* %531, align 4, !dbg !181
  %533 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %534 = getelementptr inbounds [0 x i32], [0 x i32]* %533, i64 0, i64 0, !dbg !181
  %535 = load i32, i32* %534, align 4, !dbg !181
  %536 = load float, float* %487, align 4, !dbg !181
  %537 = load float, float* %489, align 4, !dbg !181
  %538 = mul nsw i32 %518, %size122, !dbg !181
  %i1128 = add nsw i32 %i1126, %538, !dbg !181
  %539 = sext i32 %i1128 to i64, !dbg !181
  %540 = getelementptr inbounds [0 x float], [0 x float]* %469, i64 0, i64 %539, !dbg !181
  %541 = load float, float* %540, align 4, !dbg !181
  %542 = mul nsw i32 %535, %size122, !dbg !181
  %i1129 = add nsw i32 %i1128, %542, !dbg !181
  %543 = sext i32 %i1129 to i64, !dbg !181
  %544 = getelementptr inbounds [0 x float], [0 x float]* %469, i64 0, i64 %543, !dbg !181
  %545 = load float, float* %544, align 4, !dbg !181
  %546 = load [0 x float]*, [0 x float]** %70, align 8, !dbg !181
  %547 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %548 = getelementptr inbounds [0 x i32], [0 x i32]* %547, i64 0, i64 2, !dbg !181
  %549 = load i32, i32* %548, align 4, !dbg !181
  %550 = load float, float* %473, align 4, !dbg !181
  %551 = load float, float* %475, align 4, !dbg !181
  %552 = getelementptr inbounds [0 x i32], [0 x i32]* %547, i64 0, i64 1, !dbg !181
  %553 = load i32, i32* %552, align 4, !dbg !181
  %554 = load float, float* %480, align 4, !dbg !181
  %555 = load float, float* %482, align 4, !dbg !181
  %556 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %557 = getelementptr inbounds [0 x i32], [0 x i32]* %556, i64 0, i64 0, !dbg !181
  %558 = load i32, i32* %557, align 4, !dbg !181
  %559 = load float, float* %487, align 4, !dbg !181
  %560 = load float, float* %489, align 4, !dbg !181
  %561 = getelementptr inbounds [0 x float], [0 x float]* %546, i64 0, i64 1, !dbg !181
  %562 = sext i32 %495 to i64, !dbg !181
  %563 = getelementptr inbounds float, float* %561, i64 %562, !dbg !181
  %564 = load float, float* %563, align 4, !dbg !181
  %565 = mul nsw i32 %558, %size122, !dbg !181
  %i1130 = add nsw i32 %495, %565, !dbg !181
  %566 = sext i32 %i1130 to i64, !dbg !181
  %567 = getelementptr inbounds float, float* %561, i64 %566, !dbg !181
  %568 = load float, float* %567, align 4, !dbg !181
  %569 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %570 = getelementptr inbounds [0 x i32], [0 x i32]* %569, i64 0, i64 0, !dbg !181
  %571 = load i32, i32* %570, align 4, !dbg !181
  %572 = load float, float* %487, align 4, !dbg !181
  %573 = load float, float* %489, align 4, !dbg !181
  %574 = mul nsw i32 %553, %size122, !dbg !181
  %i1131 = add nsw i32 %495, %574, !dbg !181
  %575 = sext i32 %i1131 to i64, !dbg !181
  %576 = getelementptr inbounds float, float* %561, i64 %575, !dbg !181
  %577 = load float, float* %576, align 4, !dbg !181
  %578 = mul nsw i32 %571, %size122, !dbg !181
  %i1132 = add nsw i32 %i1131, %578, !dbg !181
  %579 = sext i32 %i1132 to i64, !dbg !181
  %580 = getelementptr inbounds float, float* %561, i64 %579, !dbg !181
  %581 = load float, float* %580, align 4, !dbg !181
  %582 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %583 = getelementptr inbounds [0 x i32], [0 x i32]* %582, i64 0, i64 1, !dbg !181
  %584 = load i32, i32* %583, align 4, !dbg !181
  %585 = load float, float* %480, align 4, !dbg !181
  %586 = load float, float* %482, align 4, !dbg !181
  %587 = getelementptr inbounds [0 x i32], [0 x i32]* %582, i64 0, i64 0, !dbg !181
  %588 = load i32, i32* %587, align 4, !dbg !181
  %589 = load float, float* %487, align 4, !dbg !181
  %590 = load float, float* %489, align 4, !dbg !181
  %591 = mul nsw i32 %549, %size122, !dbg !181
  %i1133 = add nsw i32 %495, %591, !dbg !181
  %592 = sext i32 %i1133 to i64, !dbg !181
  %593 = getelementptr inbounds float, float* %561, i64 %592, !dbg !181
  %594 = load float, float* %593, align 4, !dbg !181
  %595 = mul nsw i32 %588, %size122, !dbg !181
  %i1134 = add nsw i32 %i1133, %595, !dbg !181
  %596 = sext i32 %i1134 to i64, !dbg !181
  %597 = getelementptr inbounds float, float* %561, i64 %596, !dbg !181
  %598 = load float, float* %597, align 4, !dbg !181
  %599 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %600 = getelementptr inbounds [0 x i32], [0 x i32]* %599, i64 0, i64 0, !dbg !181
  %601 = load i32, i32* %600, align 4, !dbg !181
  %602 = load float, float* %487, align 4, !dbg !181
  %603 = load float, float* %489, align 4, !dbg !181
  %604 = mul nsw i32 %584, %size122, !dbg !181
  %i1135 = add nsw i32 %i1133, %604, !dbg !181
  %605 = sext i32 %i1135 to i64, !dbg !181
  %606 = getelementptr inbounds float, float* %561, i64 %605, !dbg !181
  %607 = load float, float* %606, align 4, !dbg !181
  %608 = mul nsw i32 %601, %size122, !dbg !181
  %i1136 = add nsw i32 %i1135, %608, !dbg !181
  %609 = sext i32 %i1136 to i64, !dbg !181
  %610 = getelementptr inbounds float, float* %561, i64 %609, !dbg !181
  %611 = load float, float* %610, align 4, !dbg !181
  %612 = load [0 x float]*, [0 x float]** %70, align 8, !dbg !181
  %613 = load i32, i32* %65, align 4, !dbg !181
  %614 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %615 = getelementptr inbounds [0 x i32], [0 x i32]* %614, i64 0, i64 2, !dbg !181
  %616 = load i32, i32* %615, align 4, !dbg !181
  %617 = load float, float* %473, align 4, !dbg !181
  %618 = load float, float* %475, align 4, !dbg !181
  %619 = getelementptr inbounds [0 x i32], [0 x i32]* %614, i64 0, i64 1, !dbg !181
  %620 = load i32, i32* %619, align 4, !dbg !181
  %621 = load float, float* %480, align 4, !dbg !181
  %622 = load float, float* %482, align 4, !dbg !181
  %623 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %624 = getelementptr inbounds [0 x i32], [0 x i32]* %623, i64 0, i64 0, !dbg !181
  %625 = load i32, i32* %624, align 4, !dbg !181
  %626 = load float, float* %487, align 4, !dbg !181
  %627 = load float, float* %489, align 4, !dbg !181
  %628 = sext i32 %613 to i64, !dbg !181
  %629 = getelementptr inbounds [0 x float], [0 x float]* %612, i64 0, i64 %628, !dbg !181
  %630 = sext i32 %495 to i64, !dbg !181
  %631 = getelementptr inbounds float, float* %629, i64 %630, !dbg !181
  %632 = load float, float* %631, align 4, !dbg !181
  %633 = mul nsw i32 %625, %size122, !dbg !181
  %i1137 = add nsw i32 %495, %633, !dbg !181
  %634 = sext i32 %i1137 to i64, !dbg !181
  %635 = getelementptr inbounds float, float* %629, i64 %634, !dbg !181
  %636 = load float, float* %635, align 4, !dbg !181
  %637 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %638 = getelementptr inbounds [0 x i32], [0 x i32]* %637, i64 0, i64 0, !dbg !181
  %639 = load i32, i32* %638, align 4, !dbg !181
  %640 = load float, float* %487, align 4, !dbg !181
  %641 = load float, float* %489, align 4, !dbg !181
  %642 = mul nsw i32 %620, %size122, !dbg !181
  %i1138 = add nsw i32 %495, %642, !dbg !181
  %643 = sext i32 %i1138 to i64, !dbg !181
  %644 = getelementptr inbounds float, float* %629, i64 %643, !dbg !181
  %645 = load float, float* %644, align 4, !dbg !181
  %646 = mul nsw i32 %639, %size122, !dbg !181
  %i1139 = add nsw i32 %i1138, %646, !dbg !181
  %647 = sext i32 %i1139 to i64, !dbg !181
  %648 = getelementptr inbounds float, float* %629, i64 %647, !dbg !181
  %649 = load float, float* %648, align 4, !dbg !181
  %650 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %651 = getelementptr inbounds [0 x i32], [0 x i32]* %650, i64 0, i64 1, !dbg !181
  %652 = load i32, i32* %651, align 4, !dbg !181
  %653 = load float, float* %480, align 4, !dbg !181
  %654 = load float, float* %482, align 4, !dbg !181
  %655 = getelementptr inbounds [0 x i32], [0 x i32]* %650, i64 0, i64 0, !dbg !181
  %656 = load i32, i32* %655, align 4, !dbg !181
  %657 = load float, float* %487, align 4, !dbg !181
  %658 = load float, float* %489, align 4, !dbg !181
  %659 = mul nsw i32 %616, %size122, !dbg !181
  %i1140 = add nsw i32 %495, %659, !dbg !181
  %660 = sext i32 %i1140 to i64, !dbg !181
  %661 = getelementptr inbounds float, float* %629, i64 %660, !dbg !181
  %662 = load float, float* %661, align 4, !dbg !181
  %663 = mul nsw i32 %656, %size122, !dbg !181
  %i1141 = add nsw i32 %i1140, %663, !dbg !181
  %664 = sext i32 %i1141 to i64, !dbg !181
  %665 = getelementptr inbounds float, float* %629, i64 %664, !dbg !181
  %666 = load float, float* %665, align 4, !dbg !181
  %667 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %668 = getelementptr inbounds [0 x i32], [0 x i32]* %667, i64 0, i64 0, !dbg !181
  %669 = load i32, i32* %668, align 4, !dbg !181
  %670 = load float, float* %487, align 4, !dbg !181
  %671 = load float, float* %489, align 4, !dbg !181
  %672 = mul nsw i32 %652, %size122, !dbg !181
  %i1142 = add nsw i32 %i1140, %672, !dbg !181
  %673 = sext i32 %i1142 to i64, !dbg !181
  %674 = getelementptr inbounds float, float* %629, i64 %673, !dbg !181
  %675 = load float, float* %674, align 4, !dbg !181
  %676 = mul nsw i32 %669, %size122, !dbg !181
  %i1143 = add nsw i32 %i1142, %676, !dbg !181
  %677 = sext i32 %i1143 to i64, !dbg !181
  %678 = getelementptr inbounds float, float* %629, i64 %677, !dbg !181
  %679 = load float, float* %678, align 4, !dbg !181
  %680 = load [0 x float]*, [0 x float]** %70, align 8, !dbg !181
  %681 = load i32, i32* %65, align 4, !dbg !181
  %682 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %683 = getelementptr inbounds [0 x i32], [0 x i32]* %682, i64 0, i64 2, !dbg !181
  %684 = load i32, i32* %683, align 4, !dbg !181
  %685 = load float, float* %473, align 4, !dbg !181
  %686 = load float, float* %475, align 4, !dbg !181
  %687 = getelementptr inbounds [0 x i32], [0 x i32]* %682, i64 0, i64 1, !dbg !181
  %688 = load i32, i32* %687, align 4, !dbg !181
  %689 = load float, float* %480, align 4, !dbg !181
  %690 = load float, float* %482, align 4, !dbg !181
  %691 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %692 = getelementptr inbounds [0 x i32], [0 x i32]* %691, i64 0, i64 0, !dbg !181
  %693 = load i32, i32* %692, align 4, !dbg !181
  %694 = load float, float* %487, align 4, !dbg !181
  %695 = load float, float* %489, align 4, !dbg !181
  %696 = add nsw i32 %681, 1, !dbg !181
  %697 = sext i32 %696 to i64, !dbg !181
  %698 = getelementptr inbounds [0 x float], [0 x float]* %680, i64 0, i64 %697, !dbg !181
  %699 = sext i32 %495 to i64, !dbg !181
  %700 = getelementptr inbounds float, float* %698, i64 %699, !dbg !181
  %701 = load float, float* %700, align 4, !dbg !181
  %702 = mul nsw i32 %693, %size122, !dbg !181
  %i1144 = add nsw i32 %495, %702, !dbg !181
  %703 = sext i32 %i1144 to i64, !dbg !181
  %704 = getelementptr inbounds float, float* %698, i64 %703, !dbg !181
  %705 = load float, float* %704, align 4, !dbg !181
  %706 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %707 = getelementptr inbounds [0 x i32], [0 x i32]* %706, i64 0, i64 0, !dbg !181
  %708 = load i32, i32* %707, align 4, !dbg !181
  %709 = load float, float* %487, align 4, !dbg !181
  %710 = load float, float* %489, align 4, !dbg !181
  %711 = mul nsw i32 %688, %size122, !dbg !181
  %i1145 = add nsw i32 %495, %711, !dbg !181
  %712 = sext i32 %i1145 to i64, !dbg !181
  %713 = getelementptr inbounds float, float* %698, i64 %712, !dbg !181
  %714 = load float, float* %713, align 4, !dbg !181
  %715 = mul nsw i32 %708, %size122, !dbg !181
  %i1146 = add nsw i32 %i1145, %715, !dbg !181
  %716 = sext i32 %i1146 to i64, !dbg !181
  %717 = getelementptr inbounds float, float* %698, i64 %716, !dbg !181
  %718 = load float, float* %717, align 4, !dbg !181
  %719 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %720 = getelementptr inbounds [0 x i32], [0 x i32]* %719, i64 0, i64 1, !dbg !181
  %721 = load i32, i32* %720, align 4, !dbg !181
  %722 = load float, float* %480, align 4, !dbg !181
  %723 = load float, float* %482, align 4, !dbg !181
  %724 = getelementptr inbounds [0 x i32], [0 x i32]* %719, i64 0, i64 0, !dbg !181
  %725 = load i32, i32* %724, align 4, !dbg !181
  %726 = load float, float* %487, align 4, !dbg !181
  %727 = load float, float* %489, align 4, !dbg !181
  %728 = mul nsw i32 %684, %size122, !dbg !181
  %i1147 = add nsw i32 %495, %728, !dbg !181
  %729 = sext i32 %i1147 to i64, !dbg !181
  %730 = getelementptr inbounds float, float* %698, i64 %729, !dbg !181
  %731 = load float, float* %730, align 4, !dbg !181
  %732 = mul nsw i32 %725, %size122, !dbg !181
  %i1148 = add nsw i32 %i1147, %732, !dbg !181
  %733 = sext i32 %i1148 to i64, !dbg !181
  %734 = getelementptr inbounds float, float* %698, i64 %733, !dbg !181
  %735 = load float, float* %734, align 4, !dbg !181
  %736 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %737 = getelementptr inbounds [0 x i32], [0 x i32]* %736, i64 0, i64 0, !dbg !181
  %738 = load i32, i32* %737, align 4, !dbg !181
  %739 = load float, float* %487, align 4, !dbg !181
  %740 = load float, float* %489, align 4, !dbg !181
  %741 = mul nsw i32 %721, %size122, !dbg !181
  %i1149 = add nsw i32 %i1147, %741, !dbg !181
  %742 = sext i32 %i1149 to i64, !dbg !181
  %743 = getelementptr inbounds float, float* %698, i64 %742, !dbg !181
  %744 = load float, float* %743, align 4, !dbg !181
  %745 = mul nsw i32 %738, %size122, !dbg !181
  %i1150 = add nsw i32 %i1149, %745, !dbg !181
  %746 = sext i32 %i1150 to i64, !dbg !181
  %747 = getelementptr inbounds float, float* %698, i64 %746, !dbg !181
  %748 = load float, float* %747, align 4, !dbg !181
  %749 = load float, float* %351, align 4, !dbg !181
  %750 = load float, float* %353, align 4, !dbg !181
  %751 = getelementptr inbounds %4, %4* %fr_4107501, i64 0, i32 1, !dbg !181
  %752 = fsub float %460, %465, !dbg !181
  %753 = fsub float 1.000000e+00, %752, !dbg !181
  %754 = fsub float %454, %459, !dbg !181
  %755 = fsub float 1.000000e+00, %754, !dbg !181
  %756 = fmul float %498, %488, !dbg !181
  %757 = fmul float %502, %490, !dbg !181
  %758 = fadd float %756, %757, !dbg !181
  %759 = fmul float %758, %481, !dbg !181
  %760 = fmul float %511, %506, !dbg !181
  %761 = fmul float %515, %507, !dbg !181
  %762 = fadd float %760, %761, !dbg !181
  %763 = fmul float %762, %483, !dbg !181
  %764 = fadd float %759, %763, !dbg !181
  %765 = fmul float %764, %474, !dbg !181
  %766 = fmul float %528, %523, !dbg !181
  %767 = fmul float %532, %524, !dbg !181
  %768 = fadd float %766, %767, !dbg !181
  %769 = fmul float %768, %519, !dbg !181
  %770 = fmul float %541, %536, !dbg !181
  %771 = fmul float %545, %537, !dbg !181
  %772 = fadd float %770, %771, !dbg !181
  %773 = fmul float %772, %520, !dbg !181
  %774 = fadd float %769, %773, !dbg !181
  %775 = fmul float %774, %476, !dbg !181
  %776 = fadd float %765, %775, !dbg !181
  %777 = fmul float %755, %776, !dbg !181
  %778 = fmul float %564, %559, !dbg !181
  %779 = fmul float %568, %560, !dbg !181
  %780 = fadd float %778, %779, !dbg !181
  %781 = fmul float %780, %554, !dbg !181
  %782 = fmul float %577, %572, !dbg !181
  %783 = fmul float %581, %573, !dbg !181
  %784 = fadd float %782, %783, !dbg !181
  %785 = fmul float %784, %555, !dbg !181
  %786 = fadd float %781, %785, !dbg !181
  %787 = fmul float %786, %550, !dbg !181
  %788 = fmul float %594, %589, !dbg !181
  %789 = fmul float %598, %590, !dbg !181
  %790 = fadd float %788, %789, !dbg !181
  %791 = fmul float %790, %585, !dbg !181
  %792 = fmul float %607, %602, !dbg !181
  %793 = fmul float %611, %603, !dbg !181
  %794 = fadd float %792, %793, !dbg !181
  %795 = fmul float %794, %586, !dbg !181
  %796 = fadd float %791, %795, !dbg !181
  %797 = fmul float %796, %551, !dbg !181
  %798 = fadd float %787, %797, !dbg !181
  %799 = fmul float %754, %798, !dbg !181
  %800 = fadd float %777, %799, !dbg !181
  %801 = fmul float %753, %800, !dbg !181
  %802 = fmul float %632, %626, !dbg !181
  %803 = fmul float %636, %627, !dbg !181
  %804 = fadd float %802, %803, !dbg !181
  %805 = fmul float %804, %621, !dbg !181
  %806 = fmul float %645, %640, !dbg !181
  %807 = fmul float %649, %641, !dbg !181
  %808 = fadd float %806, %807, !dbg !181
  %809 = fmul float %808, %622, !dbg !181
  %810 = fadd float %805, %809, !dbg !181
  %811 = fmul float %810, %617, !dbg !181
  %812 = fmul float %662, %657, !dbg !181
  %813 = fmul float %666, %658, !dbg !181
  %814 = fadd float %812, %813, !dbg !181
  %815 = fmul float %814, %653, !dbg !181
  %816 = fmul float %675, %670, !dbg !181
  %817 = fmul float %679, %671, !dbg !181
  %818 = fadd float %816, %817, !dbg !181
  %819 = fmul float %818, %654, !dbg !181
  %820 = fadd float %815, %819, !dbg !181
  %821 = fmul float %820, %618, !dbg !181
  %822 = fadd float %811, %821, !dbg !181
  %823 = fmul float %755, %822, !dbg !181
  %824 = fmul float %701, %694, !dbg !181
  %825 = fmul float %705, %695, !dbg !181
  %826 = fadd float %824, %825, !dbg !181
  %827 = fmul float %826, %689, !dbg !181
  %828 = fmul float %714, %709, !dbg !181
  %829 = fmul float %718, %710, !dbg !181
  %830 = fadd float %828, %829, !dbg !181
  %831 = fmul float %830, %690, !dbg !181
  %832 = fadd float %827, %831, !dbg !181
  %833 = fmul float %832, %685, !dbg !181
  %834 = fmul float %731, %726, !dbg !181
  %835 = fmul float %735, %727, !dbg !181
  %836 = fadd float %834, %835, !dbg !181
  %837 = fmul float %836, %722, !dbg !181
  %838 = fmul float %744, %739, !dbg !181
  %839 = fmul float %748, %740, !dbg !181
  %840 = fadd float %838, %839, !dbg !181
  %841 = fmul float %840, %723, !dbg !181
  %842 = fadd float %837, %841, !dbg !181
  %843 = fmul float %842, %686, !dbg !181
  %844 = fadd float %833, %843, !dbg !181
  %845 = fmul float %754, %844, !dbg !181
  %846 = fadd float %823, %845, !dbg !181
  %847 = fmul float %752, %846, !dbg !181
  %848 = fadd float %801, %847, !dbg !181
  %hprod151 = fmul float %749, %750, !dbg !181
  %849 = fmul float %848, %hprod151, !dbg !181
  store float %849, float* %751, align 4, !dbg !181
  %param_weight_4106787.repack = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4106787, i64 0, i64 0, !dbg !181
  store float 0.000000e+00, float* %param_weight_4106787.repack, align 4, !dbg !181
  %param_weight_4106787.repack232 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4106787, i64 0, i64 1, !dbg !181
  store float 0.000000e+00, float* %param_weight_4106787.repack232, align 4, !dbg !181
  %param_weight_4106787.repack233 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4106787, i64 0, i64 2, !dbg !181
  store float 0.000000e+00, float* %param_weight_4106787.repack233, align 4, !dbg !181
  %param_weight_4106787.repack234 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4106787, i64 0, i64 3, !dbg !181
  store float 0.000000e+00, float* %param_weight_4106787.repack234, align 4, !dbg !181
  %param_weight_4106787.repack235 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4106787, i64 0, i64 4, !dbg !181
  store float 0.000000e+00, float* %param_weight_4106787.repack235, align 4, !dbg !181
  %param_weight_4106787.repack236 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4106787, i64 0, i64 5, !dbg !181
  store float 0.000000e+00, float* %param_weight_4106787.repack236, align 4, !dbg !181
  store i32 0, i32* %slice_offset_4106895, align 4, !dbg !181
  store i32 0, i32* %dim_4106765, align 4, !dbg !181
  br label %expr_true41, !dbg !178

expr_false28:                                     ; preds = %continue
  %.elt237 = getelementptr inbounds %3, %3* %49, i64 0, i32 0, !dbg !179
  %.unpack238 = load float, float* %.elt237, align 4, !dbg !179
  %.elt241 = getelementptr inbounds %1, %1* %44, i64 0, i32 0, i32 0, !dbg !179
  %.unpack242 = load i32, i32* %.elt241, align 4, !dbg !179
  %850 = fmul float %51, %.unpack238, !dbg !179
  %851 = sitofp i32 %.unpack242 to float, !dbg !179
  %852 = fadd float %851, -2.000000e+00, !dbg !179
  %853 = fcmp olt float %850, %852, !dbg !179
  %854 = select i1 %853, float %850, float %852, !dbg !179
  %855 = call float @llvm.floor.f32(float %854), !dbg !179
  %.elt243 = getelementptr inbounds %0, %0* %sampler_4106267, i64 0, i32 4, i32 0, i32 1, !dbg !179
  %.unpack244 = load i32, i32* %.elt243, align 4, !dbg !179
  %.elt239 = getelementptr inbounds %0, %0* %sampler_4106267, i64 0, i32 4, i32 2, i32 1, !dbg !179
  %.unpack240 = load float, float* %.elt239, align 4, !dbg !179
  %856 = fmul float %58, %.unpack240, !dbg !180
  %857 = sitofp i32 %.unpack244 to float, !dbg !180
  %858 = fadd float %857, -2.000000e+00, !dbg !180
  %859 = fcmp olt float %856, %858, !dbg !180
  %860 = select i1 %859, float %856, float %858, !dbg !180
  %861 = call float @llvm.floor.f32(float %860), !dbg !180
  %862 = load i32, i32* %65, align 4, !dbg !181
  %863 = load i32, i32* %67, align 4, !dbg !181
  %864 = load i32, i32* %slice_offset_4106895, align 4, !dbg !181
  %865 = load [0 x float]*, [0 x float]** %70, align 8, !dbg !181
  %866 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %867 = getelementptr inbounds [0 x i32], [0 x i32]* %866, i64 0, i64 2, !dbg !181
  %868 = load i32, i32* %867, align 4, !dbg !181
  %869 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4106787, i64 0, i64 4, !dbg !181
  %870 = load float, float* %869, align 4, !dbg !181
  %871 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4106787, i64 0, i64 5, !dbg !181
  %872 = load float, float* %871, align 4, !dbg !181
  %873 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %874 = getelementptr inbounds [0 x i32], [0 x i32]* %873, i64 0, i64 1, !dbg !181
  %875 = load i32, i32* %874, align 4, !dbg !181
  %876 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4106787, i64 0, i64 2, !dbg !181
  %877 = load float, float* %876, align 4, !dbg !181
  %878 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4106787, i64 0, i64 3, !dbg !181
  %879 = load float, float* %878, align 4, !dbg !181
  %880 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %881 = getelementptr inbounds [0 x i32], [0 x i32]* %880, i64 0, i64 0, !dbg !181
  %882 = load i32, i32* %881, align 4, !dbg !181
  %883 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4106787, i64 0, i64 0, !dbg !181
  %884 = load float, float* %883, align 4, !dbg !181
  %885 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4106787, i64 0, i64 1, !dbg !181
  %886 = load float, float* %885, align 4, !dbg !181
  %887 = fptosi float %855 to i32, !dbg !181
  %888 = fptosi float %861 to i32, !dbg !181
  %889 = mul nsw i32 %862, %888, !dbg !181
  %index152 = add nsw i32 %889, %887, !dbg !181
  %size153 = mul nsw i32 %862, %863, !dbg !181
  %890 = mul nsw i32 %864, %size153, !dbg !181
  %891 = add nsw i32 %index152, %890, !dbg !181
  %892 = sext i32 %891 to i64, !dbg !181
  %893 = getelementptr inbounds [0 x float], [0 x float]* %865, i64 0, i64 %892, !dbg !181
  %894 = load float, float* %893, align 4, !dbg !181
  %895 = mul nsw i32 %882, %size153, !dbg !181
  %i1154 = add nsw i32 %891, %895, !dbg !181
  %896 = sext i32 %i1154 to i64, !dbg !181
  %897 = getelementptr inbounds [0 x float], [0 x float]* %865, i64 0, i64 %896, !dbg !181
  %898 = load float, float* %897, align 4, !dbg !181
  %899 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %900 = getelementptr inbounds [0 x i32], [0 x i32]* %899, i64 0, i64 0, !dbg !181
  %901 = load i32, i32* %900, align 4, !dbg !181
  %902 = load float, float* %883, align 4, !dbg !181
  %903 = load float, float* %885, align 4, !dbg !181
  %904 = mul nsw i32 %875, %size153, !dbg !181
  %i1155 = add nsw i32 %891, %904, !dbg !181
  %905 = sext i32 %i1155 to i64, !dbg !181
  %906 = getelementptr inbounds [0 x float], [0 x float]* %865, i64 0, i64 %905, !dbg !181
  %907 = load float, float* %906, align 4, !dbg !181
  %908 = mul nsw i32 %901, %size153, !dbg !181
  %i1156 = add nsw i32 %i1155, %908, !dbg !181
  %909 = sext i32 %i1156 to i64, !dbg !181
  %910 = getelementptr inbounds [0 x float], [0 x float]* %865, i64 0, i64 %909, !dbg !181
  %911 = load float, float* %910, align 4, !dbg !181
  %912 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %913 = getelementptr inbounds [0 x i32], [0 x i32]* %912, i64 0, i64 1, !dbg !181
  %914 = load i32, i32* %913, align 4, !dbg !181
  %915 = load float, float* %876, align 4, !dbg !181
  %916 = load float, float* %878, align 4, !dbg !181
  %917 = getelementptr inbounds [0 x i32], [0 x i32]* %912, i64 0, i64 0, !dbg !181
  %918 = load i32, i32* %917, align 4, !dbg !181
  %919 = load float, float* %883, align 4, !dbg !181
  %920 = load float, float* %885, align 4, !dbg !181
  %921 = mul nsw i32 %868, %size153, !dbg !181
  %i1157 = add nsw i32 %891, %921, !dbg !181
  %922 = sext i32 %i1157 to i64, !dbg !181
  %923 = getelementptr inbounds [0 x float], [0 x float]* %865, i64 0, i64 %922, !dbg !181
  %924 = load float, float* %923, align 4, !dbg !181
  %925 = mul nsw i32 %918, %size153, !dbg !181
  %i1158 = add nsw i32 %i1157, %925, !dbg !181
  %926 = sext i32 %i1158 to i64, !dbg !181
  %927 = getelementptr inbounds [0 x float], [0 x float]* %865, i64 0, i64 %926, !dbg !181
  %928 = load float, float* %927, align 4, !dbg !181
  %929 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %930 = getelementptr inbounds [0 x i32], [0 x i32]* %929, i64 0, i64 0, !dbg !181
  %931 = load i32, i32* %930, align 4, !dbg !181
  %932 = load float, float* %883, align 4, !dbg !181
  %933 = load float, float* %885, align 4, !dbg !181
  %934 = mul nsw i32 %914, %size153, !dbg !181
  %i1159 = add nsw i32 %i1157, %934, !dbg !181
  %935 = sext i32 %i1159 to i64, !dbg !181
  %936 = getelementptr inbounds [0 x float], [0 x float]* %865, i64 0, i64 %935, !dbg !181
  %937 = load float, float* %936, align 4, !dbg !181
  %938 = mul nsw i32 %931, %size153, !dbg !181
  %i1160 = add nsw i32 %i1159, %938, !dbg !181
  %939 = sext i32 %i1160 to i64, !dbg !181
  %940 = getelementptr inbounds [0 x float], [0 x float]* %865, i64 0, i64 %939, !dbg !181
  %941 = load float, float* %940, align 4, !dbg !181
  %942 = load [0 x float]*, [0 x float]** %70, align 8, !dbg !181
  %943 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %944 = getelementptr inbounds [0 x i32], [0 x i32]* %943, i64 0, i64 2, !dbg !181
  %945 = load i32, i32* %944, align 4, !dbg !181
  %946 = load float, float* %869, align 4, !dbg !181
  %947 = load float, float* %871, align 4, !dbg !181
  %948 = getelementptr inbounds [0 x i32], [0 x i32]* %943, i64 0, i64 1, !dbg !181
  %949 = load i32, i32* %948, align 4, !dbg !181
  %950 = load float, float* %876, align 4, !dbg !181
  %951 = load float, float* %878, align 4, !dbg !181
  %952 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %953 = getelementptr inbounds [0 x i32], [0 x i32]* %952, i64 0, i64 0, !dbg !181
  %954 = load i32, i32* %953, align 4, !dbg !181
  %955 = load float, float* %883, align 4, !dbg !181
  %956 = load float, float* %885, align 4, !dbg !181
  %957 = getelementptr inbounds [0 x float], [0 x float]* %942, i64 0, i64 1, !dbg !181
  %958 = sext i32 %891 to i64, !dbg !181
  %959 = getelementptr inbounds float, float* %957, i64 %958, !dbg !181
  %960 = load float, float* %959, align 4, !dbg !181
  %961 = mul nsw i32 %954, %size153, !dbg !181
  %i1161 = add nsw i32 %891, %961, !dbg !181
  %962 = sext i32 %i1161 to i64, !dbg !181
  %963 = getelementptr inbounds float, float* %957, i64 %962, !dbg !181
  %964 = load float, float* %963, align 4, !dbg !181
  %965 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %966 = getelementptr inbounds [0 x i32], [0 x i32]* %965, i64 0, i64 0, !dbg !181
  %967 = load i32, i32* %966, align 4, !dbg !181
  %968 = load float, float* %883, align 4, !dbg !181
  %969 = load float, float* %885, align 4, !dbg !181
  %970 = mul nsw i32 %949, %size153, !dbg !181
  %i1162 = add nsw i32 %891, %970, !dbg !181
  %971 = sext i32 %i1162 to i64, !dbg !181
  %972 = getelementptr inbounds float, float* %957, i64 %971, !dbg !181
  %973 = load float, float* %972, align 4, !dbg !181
  %974 = mul nsw i32 %967, %size153, !dbg !181
  %i1163 = add nsw i32 %i1162, %974, !dbg !181
  %975 = sext i32 %i1163 to i64, !dbg !181
  %976 = getelementptr inbounds float, float* %957, i64 %975, !dbg !181
  %977 = load float, float* %976, align 4, !dbg !181
  %978 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %979 = getelementptr inbounds [0 x i32], [0 x i32]* %978, i64 0, i64 1, !dbg !181
  %980 = load i32, i32* %979, align 4, !dbg !181
  %981 = load float, float* %876, align 4, !dbg !181
  %982 = load float, float* %878, align 4, !dbg !181
  %983 = getelementptr inbounds [0 x i32], [0 x i32]* %978, i64 0, i64 0, !dbg !181
  %984 = load i32, i32* %983, align 4, !dbg !181
  %985 = load float, float* %883, align 4, !dbg !181
  %986 = load float, float* %885, align 4, !dbg !181
  %987 = mul nsw i32 %945, %size153, !dbg !181
  %i1164 = add nsw i32 %891, %987, !dbg !181
  %988 = sext i32 %i1164 to i64, !dbg !181
  %989 = getelementptr inbounds float, float* %957, i64 %988, !dbg !181
  %990 = load float, float* %989, align 4, !dbg !181
  %991 = mul nsw i32 %984, %size153, !dbg !181
  %i1165 = add nsw i32 %i1164, %991, !dbg !181
  %992 = sext i32 %i1165 to i64, !dbg !181
  %993 = getelementptr inbounds float, float* %957, i64 %992, !dbg !181
  %994 = load float, float* %993, align 4, !dbg !181
  %995 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %996 = getelementptr inbounds [0 x i32], [0 x i32]* %995, i64 0, i64 0, !dbg !181
  %997 = load i32, i32* %996, align 4, !dbg !181
  %998 = load float, float* %883, align 4, !dbg !181
  %999 = load float, float* %885, align 4, !dbg !181
  %1000 = mul nsw i32 %980, %size153, !dbg !181
  %i1166 = add nsw i32 %i1164, %1000, !dbg !181
  %1001 = sext i32 %i1166 to i64, !dbg !181
  %1002 = getelementptr inbounds float, float* %957, i64 %1001, !dbg !181
  %1003 = load float, float* %1002, align 4, !dbg !181
  %1004 = mul nsw i32 %997, %size153, !dbg !181
  %i1167 = add nsw i32 %i1166, %1004, !dbg !181
  %1005 = sext i32 %i1167 to i64, !dbg !181
  %1006 = getelementptr inbounds float, float* %957, i64 %1005, !dbg !181
  %1007 = load float, float* %1006, align 4, !dbg !181
  %1008 = load [0 x float]*, [0 x float]** %70, align 8, !dbg !181
  %1009 = load i32, i32* %65, align 4, !dbg !181
  %1010 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %1011 = getelementptr inbounds [0 x i32], [0 x i32]* %1010, i64 0, i64 2, !dbg !181
  %1012 = load i32, i32* %1011, align 4, !dbg !181
  %1013 = load float, float* %869, align 4, !dbg !181
  %1014 = load float, float* %871, align 4, !dbg !181
  %1015 = getelementptr inbounds [0 x i32], [0 x i32]* %1010, i64 0, i64 1, !dbg !181
  %1016 = load i32, i32* %1015, align 4, !dbg !181
  %1017 = load float, float* %876, align 4, !dbg !181
  %1018 = load float, float* %878, align 4, !dbg !181
  %1019 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %1020 = getelementptr inbounds [0 x i32], [0 x i32]* %1019, i64 0, i64 0, !dbg !181
  %1021 = load i32, i32* %1020, align 4, !dbg !181
  %1022 = load float, float* %883, align 4, !dbg !181
  %1023 = load float, float* %885, align 4, !dbg !181
  %1024 = sext i32 %1009 to i64, !dbg !181
  %1025 = getelementptr inbounds [0 x float], [0 x float]* %1008, i64 0, i64 %1024, !dbg !181
  %1026 = sext i32 %891 to i64, !dbg !181
  %1027 = getelementptr inbounds float, float* %1025, i64 %1026, !dbg !181
  %1028 = load float, float* %1027, align 4, !dbg !181
  %1029 = mul nsw i32 %1021, %size153, !dbg !181
  %i1168 = add nsw i32 %891, %1029, !dbg !181
  %1030 = sext i32 %i1168 to i64, !dbg !181
  %1031 = getelementptr inbounds float, float* %1025, i64 %1030, !dbg !181
  %1032 = load float, float* %1031, align 4, !dbg !181
  %1033 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %1034 = getelementptr inbounds [0 x i32], [0 x i32]* %1033, i64 0, i64 0, !dbg !181
  %1035 = load i32, i32* %1034, align 4, !dbg !181
  %1036 = load float, float* %883, align 4, !dbg !181
  %1037 = load float, float* %885, align 4, !dbg !181
  %1038 = mul nsw i32 %1016, %size153, !dbg !181
  %i1169 = add nsw i32 %891, %1038, !dbg !181
  %1039 = sext i32 %i1169 to i64, !dbg !181
  %1040 = getelementptr inbounds float, float* %1025, i64 %1039, !dbg !181
  %1041 = load float, float* %1040, align 4, !dbg !181
  %1042 = mul nsw i32 %1035, %size153, !dbg !181
  %i1170 = add nsw i32 %i1169, %1042, !dbg !181
  %1043 = sext i32 %i1170 to i64, !dbg !181
  %1044 = getelementptr inbounds float, float* %1025, i64 %1043, !dbg !181
  %1045 = load float, float* %1044, align 4, !dbg !181
  %1046 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %1047 = getelementptr inbounds [0 x i32], [0 x i32]* %1046, i64 0, i64 1, !dbg !181
  %1048 = load i32, i32* %1047, align 4, !dbg !181
  %1049 = load float, float* %876, align 4, !dbg !181
  %1050 = load float, float* %878, align 4, !dbg !181
  %1051 = getelementptr inbounds [0 x i32], [0 x i32]* %1046, i64 0, i64 0, !dbg !181
  %1052 = load i32, i32* %1051, align 4, !dbg !181
  %1053 = load float, float* %883, align 4, !dbg !181
  %1054 = load float, float* %885, align 4, !dbg !181
  %1055 = mul nsw i32 %1012, %size153, !dbg !181
  %i1171 = add nsw i32 %891, %1055, !dbg !181
  %1056 = sext i32 %i1171 to i64, !dbg !181
  %1057 = getelementptr inbounds float, float* %1025, i64 %1056, !dbg !181
  %1058 = load float, float* %1057, align 4, !dbg !181
  %1059 = mul nsw i32 %1052, %size153, !dbg !181
  %i1172 = add nsw i32 %i1171, %1059, !dbg !181
  %1060 = sext i32 %i1172 to i64, !dbg !181
  %1061 = getelementptr inbounds float, float* %1025, i64 %1060, !dbg !181
  %1062 = load float, float* %1061, align 4, !dbg !181
  %1063 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %1064 = getelementptr inbounds [0 x i32], [0 x i32]* %1063, i64 0, i64 0, !dbg !181
  %1065 = load i32, i32* %1064, align 4, !dbg !181
  %1066 = load float, float* %883, align 4, !dbg !181
  %1067 = load float, float* %885, align 4, !dbg !181
  %1068 = mul nsw i32 %1048, %size153, !dbg !181
  %i1173 = add nsw i32 %i1171, %1068, !dbg !181
  %1069 = sext i32 %i1173 to i64, !dbg !181
  %1070 = getelementptr inbounds float, float* %1025, i64 %1069, !dbg !181
  %1071 = load float, float* %1070, align 4, !dbg !181
  %1072 = mul nsw i32 %1065, %size153, !dbg !181
  %i1174 = add nsw i32 %i1173, %1072, !dbg !181
  %1073 = sext i32 %i1174 to i64, !dbg !181
  %1074 = getelementptr inbounds float, float* %1025, i64 %1073, !dbg !181
  %1075 = load float, float* %1074, align 4, !dbg !181
  %1076 = load [0 x float]*, [0 x float]** %70, align 8, !dbg !181
  %1077 = load i32, i32* %65, align 4, !dbg !181
  %1078 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %1079 = getelementptr inbounds [0 x i32], [0 x i32]* %1078, i64 0, i64 2, !dbg !181
  %1080 = load i32, i32* %1079, align 4, !dbg !181
  %1081 = load float, float* %869, align 4, !dbg !181
  %1082 = load float, float* %871, align 4, !dbg !181
  %1083 = getelementptr inbounds [0 x i32], [0 x i32]* %1078, i64 0, i64 1, !dbg !181
  %1084 = load i32, i32* %1083, align 4, !dbg !181
  %1085 = load float, float* %876, align 4, !dbg !181
  %1086 = load float, float* %878, align 4, !dbg !181
  %1087 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %1088 = getelementptr inbounds [0 x i32], [0 x i32]* %1087, i64 0, i64 0, !dbg !181
  %1089 = load i32, i32* %1088, align 4, !dbg !181
  %1090 = load float, float* %883, align 4, !dbg !181
  %1091 = load float, float* %885, align 4, !dbg !181
  %1092 = add nsw i32 %1077, 1, !dbg !181
  %1093 = sext i32 %1092 to i64, !dbg !181
  %1094 = getelementptr inbounds [0 x float], [0 x float]* %1076, i64 0, i64 %1093, !dbg !181
  %1095 = sext i32 %891 to i64, !dbg !181
  %1096 = getelementptr inbounds float, float* %1094, i64 %1095, !dbg !181
  %1097 = load float, float* %1096, align 4, !dbg !181
  %1098 = mul nsw i32 %1089, %size153, !dbg !181
  %i1175 = add nsw i32 %891, %1098, !dbg !181
  %1099 = sext i32 %i1175 to i64, !dbg !181
  %1100 = getelementptr inbounds float, float* %1094, i64 %1099, !dbg !181
  %1101 = load float, float* %1100, align 4, !dbg !181
  %1102 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %1103 = getelementptr inbounds [0 x i32], [0 x i32]* %1102, i64 0, i64 0, !dbg !181
  %1104 = load i32, i32* %1103, align 4, !dbg !181
  %1105 = load float, float* %883, align 4, !dbg !181
  %1106 = load float, float* %885, align 4, !dbg !181
  %1107 = mul nsw i32 %1084, %size153, !dbg !181
  %i1176 = add nsw i32 %891, %1107, !dbg !181
  %1108 = sext i32 %i1176 to i64, !dbg !181
  %1109 = getelementptr inbounds float, float* %1094, i64 %1108, !dbg !181
  %1110 = load float, float* %1109, align 4, !dbg !181
  %1111 = mul nsw i32 %1104, %size153, !dbg !181
  %i1177 = add nsw i32 %i1176, %1111, !dbg !181
  %1112 = sext i32 %i1177 to i64, !dbg !181
  %1113 = getelementptr inbounds float, float* %1094, i64 %1112, !dbg !181
  %1114 = load float, float* %1113, align 4, !dbg !181
  %1115 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %1116 = getelementptr inbounds [0 x i32], [0 x i32]* %1115, i64 0, i64 1, !dbg !181
  %1117 = load i32, i32* %1116, align 4, !dbg !181
  %1118 = load float, float* %876, align 4, !dbg !181
  %1119 = load float, float* %878, align 4, !dbg !181
  %1120 = getelementptr inbounds [0 x i32], [0 x i32]* %1115, i64 0, i64 0, !dbg !181
  %1121 = load i32, i32* %1120, align 4, !dbg !181
  %1122 = load float, float* %883, align 4, !dbg !181
  %1123 = load float, float* %885, align 4, !dbg !181
  %1124 = mul nsw i32 %1080, %size153, !dbg !181
  %i1178 = add nsw i32 %891, %1124, !dbg !181
  %1125 = sext i32 %i1178 to i64, !dbg !181
  %1126 = getelementptr inbounds float, float* %1094, i64 %1125, !dbg !181
  %1127 = load float, float* %1126, align 4, !dbg !181
  %1128 = mul nsw i32 %1121, %size153, !dbg !181
  %i1179 = add nsw i32 %i1178, %1128, !dbg !181
  %1129 = sext i32 %i1179 to i64, !dbg !181
  %1130 = getelementptr inbounds float, float* %1094, i64 %1129, !dbg !181
  %1131 = load float, float* %1130, align 4, !dbg !181
  %1132 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !181
  %1133 = getelementptr inbounds [0 x i32], [0 x i32]* %1132, i64 0, i64 0, !dbg !181
  %1134 = load i32, i32* %1133, align 4, !dbg !181
  %1135 = load float, float* %883, align 4, !dbg !181
  %1136 = load float, float* %885, align 4, !dbg !181
  %1137 = mul nsw i32 %1117, %size153, !dbg !181
  %i1180 = add nsw i32 %i1178, %1137, !dbg !181
  %1138 = sext i32 %i1180 to i64, !dbg !181
  %1139 = getelementptr inbounds float, float* %1094, i64 %1138, !dbg !181
  %1140 = load float, float* %1139, align 4, !dbg !181
  %1141 = mul nsw i32 %1134, %size153, !dbg !181
  %i1181 = add nsw i32 %i1180, %1141, !dbg !181
  %1142 = sext i32 %i1181 to i64, !dbg !181
  %1143 = getelementptr inbounds float, float* %1094, i64 %1142, !dbg !181
  %1144 = load float, float* %1143, align 4, !dbg !181
  %1145 = load float, float* %351, align 4, !dbg !181
  %1146 = load float, float* %353, align 4, !dbg !181
  %1147 = getelementptr inbounds %4, %4* %fr_4107501, i64 0, i32 2, !dbg !181
  %1148 = fsub float %856, %861, !dbg !181
  %1149 = fsub float 1.000000e+00, %1148, !dbg !181
  %1150 = fsub float %850, %855, !dbg !181
  %1151 = fsub float 1.000000e+00, %1150, !dbg !181
  %1152 = fmul float %894, %884, !dbg !181
  %1153 = fmul float %898, %886, !dbg !181
  %1154 = fadd float %1152, %1153, !dbg !181
  %1155 = fmul float %1154, %877, !dbg !181
  %1156 = fmul float %907, %902, !dbg !181
  %1157 = fmul float %911, %903, !dbg !181
  %1158 = fadd float %1156, %1157, !dbg !181
  %1159 = fmul float %1158, %879, !dbg !181
  %1160 = fadd float %1155, %1159, !dbg !181
  %1161 = fmul float %1160, %870, !dbg !181
  %1162 = fmul float %924, %919, !dbg !181
  %1163 = fmul float %928, %920, !dbg !181
  %1164 = fadd float %1162, %1163, !dbg !181
  %1165 = fmul float %1164, %915, !dbg !181
  %1166 = fmul float %937, %932, !dbg !181
  %1167 = fmul float %941, %933, !dbg !181
  %1168 = fadd float %1166, %1167, !dbg !181
  %1169 = fmul float %1168, %916, !dbg !181
  %1170 = fadd float %1165, %1169, !dbg !181
  %1171 = fmul float %1170, %872, !dbg !181
  %1172 = fadd float %1161, %1171, !dbg !181
  %1173 = fmul float %1151, %1172, !dbg !181
  %1174 = fmul float %960, %955, !dbg !181
  %1175 = fmul float %964, %956, !dbg !181
  %1176 = fadd float %1174, %1175, !dbg !181
  %1177 = fmul float %1176, %950, !dbg !181
  %1178 = fmul float %973, %968, !dbg !181
  %1179 = fmul float %977, %969, !dbg !181
  %1180 = fadd float %1178, %1179, !dbg !181
  %1181 = fmul float %1180, %951, !dbg !181
  %1182 = fadd float %1177, %1181, !dbg !181
  %1183 = fmul float %1182, %946, !dbg !181
  %1184 = fmul float %990, %985, !dbg !181
  %1185 = fmul float %994, %986, !dbg !181
  %1186 = fadd float %1184, %1185, !dbg !181
  %1187 = fmul float %1186, %981, !dbg !181
  %1188 = fmul float %1003, %998, !dbg !181
  %1189 = fmul float %1007, %999, !dbg !181
  %1190 = fadd float %1188, %1189, !dbg !181
  %1191 = fmul float %1190, %982, !dbg !181
  %1192 = fadd float %1187, %1191, !dbg !181
  %1193 = fmul float %1192, %947, !dbg !181
  %1194 = fadd float %1183, %1193, !dbg !181
  %1195 = fmul float %1150, %1194, !dbg !181
  %1196 = fadd float %1173, %1195, !dbg !181
  %1197 = fmul float %1149, %1196, !dbg !181
  %1198 = fmul float %1028, %1022, !dbg !181
  %1199 = fmul float %1032, %1023, !dbg !181
  %1200 = fadd float %1198, %1199, !dbg !181
  %1201 = fmul float %1200, %1017, !dbg !181
  %1202 = fmul float %1041, %1036, !dbg !181
  %1203 = fmul float %1045, %1037, !dbg !181
  %1204 = fadd float %1202, %1203, !dbg !181
  %1205 = fmul float %1204, %1018, !dbg !181
  %1206 = fadd float %1201, %1205, !dbg !181
  %1207 = fmul float %1206, %1013, !dbg !181
  %1208 = fmul float %1058, %1053, !dbg !181
  %1209 = fmul float %1062, %1054, !dbg !181
  %1210 = fadd float %1208, %1209, !dbg !181
  %1211 = fmul float %1210, %1049, !dbg !181
  %1212 = fmul float %1071, %1066, !dbg !181
  %1213 = fmul float %1075, %1067, !dbg !181
  %1214 = fadd float %1212, %1213, !dbg !181
  %1215 = fmul float %1214, %1050, !dbg !181
  %1216 = fadd float %1211, %1215, !dbg !181
  %1217 = fmul float %1216, %1014, !dbg !181
  %1218 = fadd float %1207, %1217, !dbg !181
  %1219 = fmul float %1151, %1218, !dbg !181
  %1220 = fmul float %1097, %1090, !dbg !181
  %1221 = fmul float %1101, %1091, !dbg !181
  %1222 = fadd float %1220, %1221, !dbg !181
  %1223 = fmul float %1222, %1085, !dbg !181
  %1224 = fmul float %1110, %1105, !dbg !181
  %1225 = fmul float %1114, %1106, !dbg !181
  %1226 = fadd float %1224, %1225, !dbg !181
  %1227 = fmul float %1226, %1086, !dbg !181
  %1228 = fadd float %1223, %1227, !dbg !181
  %1229 = fmul float %1228, %1081, !dbg !181
  %1230 = fmul float %1127, %1122, !dbg !181
  %1231 = fmul float %1131, %1123, !dbg !181
  %1232 = fadd float %1230, %1231, !dbg !181
  %1233 = fmul float %1232, %1118, !dbg !181
  %1234 = fmul float %1140, %1135, !dbg !181
  %1235 = fmul float %1144, %1136, !dbg !181
  %1236 = fadd float %1234, %1235, !dbg !181
  %1237 = fmul float %1236, %1119, !dbg !181
  %1238 = fadd float %1233, %1237, !dbg !181
  %1239 = fmul float %1238, %1082, !dbg !181
  %1240 = fadd float %1229, %1239, !dbg !181
  %1241 = fmul float %1150, %1240, !dbg !181
  %1242 = fadd float %1219, %1241, !dbg !181
  %1243 = fmul float %1148, %1242, !dbg !181
  %1244 = fadd float %1197, %1243, !dbg !181
  %hprod182 = fmul float %1145, %1146, !dbg !181
  %1245 = fmul float %1244, %hprod182, !dbg !181
  store float %1245, float* %1147, align 8, !dbg !181
  %.elt245 = getelementptr inbounds %3, %3* %u_wm_4106343, i64 0, i32 0, !dbg !181
  %.unpack246 = load float, float* %.elt245, align 8, !dbg !181
  %1246 = getelementptr inbounds %0, %0* %sampler_4106267, i64 0, i32 0, i32 2, !dbg !181
  %.elt249 = getelementptr inbounds %3, %3* %1246, i64 0, i32 0, !dbg !181
  %.unpack250 = load float, float* %.elt249, align 4, !dbg !181
  %.elt253 = getelementptr inbounds %0, %0* %sampler_4106267, i64 0, i32 0, i32 0, i32 0, !dbg !181
  %.unpack254 = load i32, i32* %.elt253, align 4, !dbg !181
  %1247 = fmul float %.unpack246, %.unpack250, !dbg !181
  %1248 = sitofp i32 %.unpack254 to float, !dbg !181
  %1249 = fadd float %1248, -2.000000e+00, !dbg !181
  %1250 = fcmp olt float %1247, %1249, !dbg !181
  %1251 = select i1 %1250, float %1247, float %1249, !dbg !181
  %1252 = call float @llvm.floor.f32(float %1251), !dbg !181
  %.elt255 = getelementptr inbounds %0, %0* %sampler_4106267, i64 0, i32 0, i32 0, i32 1, !dbg !181
  %.unpack256 = load i32, i32* %.elt255, align 4, !dbg !181
  %.elt251 = getelementptr inbounds %0, %0* %sampler_4106267, i64 0, i32 0, i32 2, i32 1, !dbg !181
  %.unpack252 = load float, float* %.elt251, align 4, !dbg !181
  %.elt247 = getelementptr inbounds %3, %3* %u_wm_4106343, i64 0, i32 1, !dbg !181
  %.unpack248 = load float, float* %.elt247, align 4, !dbg !181
  %1253 = fmul float %.unpack248, %.unpack252, !dbg !180
  %1254 = sitofp i32 %.unpack256 to float, !dbg !180
  %1255 = fadd float %1254, -2.000000e+00, !dbg !180
  %1256 = fcmp olt float %1253, %1255, !dbg !180
  %1257 = select i1 %1256, float %1253, float %1255, !dbg !180
  %1258 = call float @llvm.floor.f32(float %1257), !dbg !180
  %1259 = getelementptr inbounds %0, %0* %sampler_4106267, i64 0, i32 0, i32 0, i32 0, !dbg !181
  %1260 = load i32, i32* %1259, align 4, !dbg !181
  %1261 = getelementptr inbounds %0, %0* %sampler_4106267, i64 0, i32 0, i32 7, !dbg !181
  %1262 = load [0 x float]*, [0 x float]** %1261, align 8, !dbg !181
  %1263 = fptosi float %1252 to i32, !dbg !181
  %1264 = fptosi float %1258 to i32, !dbg !181
  %1265 = mul nsw i32 %1260, %1264, !dbg !181
  %index183 = add nsw i32 %1265, %1263, !dbg !181
  %1266 = sext i32 %index183 to i64, !dbg !181
  %1267 = getelementptr inbounds [0 x float], [0 x float]* %1262, i64 0, i64 %1266, !dbg !181
  %1268 = load float, float* %1267, align 4, !dbg !181
  %1269 = load [0 x float]*, [0 x float]** %1261, align 8, !dbg !181
  %1270 = getelementptr inbounds [0 x float], [0 x float]* %1269, i64 0, i64 1, !dbg !181
  %1271 = sext i32 %index183 to i64, !dbg !181
  %1272 = getelementptr inbounds float, float* %1270, i64 %1271, !dbg !181
  %1273 = load float, float* %1272, align 4, !dbg !181
  %1274 = load i32, i32* %1259, align 4, !dbg !181
  %1275 = sext i32 %1274 to i64, !dbg !181
  %1276 = getelementptr inbounds [0 x float], [0 x float]* %1269, i64 0, i64 %1275, !dbg !181
  %1277 = sext i32 %index183 to i64, !dbg !181
  %1278 = getelementptr inbounds float, float* %1276, i64 %1277, !dbg !181
  %1279 = load float, float* %1278, align 4, !dbg !181
  %1280 = load [0 x float]*, [0 x float]** %1261, align 8, !dbg !181
  %1281 = load i32, i32* %1259, align 4, !dbg !181
  %1282 = add nsw i32 %1281, 1, !dbg !181
  %1283 = sext i32 %1282 to i64, !dbg !181
  %1284 = getelementptr inbounds [0 x float], [0 x float]* %1280, i64 0, i64 %1283, !dbg !181
  %1285 = sext i32 %index183 to i64, !dbg !181
  %1286 = getelementptr inbounds float, float* %1284, i64 %1285, !dbg !181
  %1287 = load float, float* %1286, align 4, !dbg !181
  %1288 = getelementptr inbounds %3, %3* %1246, i64 0, i32 0, !dbg !181
  %1289 = load float, float* %1288, align 4, !dbg !181
  %1290 = getelementptr inbounds %0, %0* %sampler_4106267, i64 0, i32 0, i32 2, i32 1, !dbg !181
  %1291 = load float, float* %1290, align 4, !dbg !181
  %1292 = getelementptr inbounds %0, %0* %sampler_4106267, i64 0, i32 1, !dbg !181
  %1293 = getelementptr inbounds %0, %0* %sampler_4106267, i64 0, i32 1, i32 2, !dbg !181
  %.elt257 = getelementptr inbounds %3, %3* %1293, i64 0, i32 0, !dbg !181
  %.unpack258 = load float, float* %.elt257, align 4, !dbg !181
  %.elt261 = getelementptr inbounds %1, %1* %1292, i64 0, i32 0, i32 0, !dbg !181
  %.unpack262 = load i32, i32* %.elt261, align 4, !dbg !181
  %1294 = fmul float %26, %.unpack258, !dbg !181
  %1295 = sitofp i32 %.unpack262 to float, !dbg !181
  %1296 = fadd float %1295, -2.000000e+00, !dbg !181
  %1297 = fcmp olt float %1294, %1296, !dbg !181
  %1298 = select i1 %1297, float %1294, float %1296, !dbg !181
  %1299 = call float @llvm.floor.f32(float %1298), !dbg !181
  %.elt263 = getelementptr inbounds %0, %0* %sampler_4106267, i64 0, i32 1, i32 0, i32 1, !dbg !181
  %.unpack264 = load i32, i32* %.elt263, align 4, !dbg !181
  %.elt259 = getelementptr inbounds %0, %0* %sampler_4106267, i64 0, i32 1, i32 2, i32 1, !dbg !181
  %.unpack260 = load float, float* %.elt259, align 4, !dbg !181
  %1300 = fadd float %15, 0x400921FB60000000, !dbg !180
  %1301 = fdiv float %1300, 0x401921FB60000000, !dbg !180
  %1302 = fmul float %1301, %.unpack260, !dbg !180
  %1303 = sitofp i32 %.unpack264 to float, !dbg !180
  %1304 = fadd float %1303, -2.000000e+00, !dbg !180
  %1305 = fcmp olt float %1302, %1304, !dbg !180
  %1306 = select i1 %1305, float %1302, float %1304, !dbg !180
  %1307 = call float @llvm.floor.f32(float %1306), !dbg !180
  %1308 = getelementptr inbounds %1, %1* %1292, i64 0, i32 0, i32 0, !dbg !181
  %1309 = load i32, i32* %1308, align 4, !dbg !181
  %1310 = getelementptr inbounds %0, %0* %sampler_4106267, i64 0, i32 1, i32 7, !dbg !181
  %1311 = load [0 x float]*, [0 x float]** %1310, align 8, !dbg !181
  %1312 = fptosi float %1299 to i32, !dbg !181
  %1313 = fptosi float %1307 to i32, !dbg !181
  %1314 = mul nsw i32 %1309, %1313, !dbg !181
  %index184 = add nsw i32 %1314, %1312, !dbg !181
  %1315 = sext i32 %index184 to i64, !dbg !181
  %1316 = getelementptr inbounds [0 x float], [0 x float]* %1311, i64 0, i64 %1315, !dbg !181
  %1317 = load float, float* %1316, align 4, !dbg !181
  %1318 = load [0 x float]*, [0 x float]** %1310, align 8, !dbg !181
  %1319 = getelementptr inbounds [0 x float], [0 x float]* %1318, i64 0, i64 1, !dbg !181
  %1320 = sext i32 %index184 to i64, !dbg !181
  %1321 = getelementptr inbounds float, float* %1319, i64 %1320, !dbg !181
  %1322 = load float, float* %1321, align 4, !dbg !181
  %1323 = load i32, i32* %1308, align 4, !dbg !181
  %1324 = sext i32 %1323 to i64, !dbg !181
  %1325 = getelementptr inbounds [0 x float], [0 x float]* %1318, i64 0, i64 %1324, !dbg !181
  %1326 = sext i32 %index184 to i64, !dbg !181
  %1327 = getelementptr inbounds float, float* %1325, i64 %1326, !dbg !181
  %1328 = load float, float* %1327, align 4, !dbg !181
  %1329 = load [0 x float]*, [0 x float]** %1310, align 8, !dbg !181
  %1330 = load i32, i32* %1308, align 4, !dbg !181
  %1331 = add nsw i32 %1330, 1, !dbg !181
  %1332 = sext i32 %1331 to i64, !dbg !181
  %1333 = getelementptr inbounds [0 x float], [0 x float]* %1329, i64 0, i64 %1332, !dbg !181
  %1334 = sext i32 %index184 to i64, !dbg !181
  %1335 = getelementptr inbounds float, float* %1333, i64 %1334, !dbg !181
  %1336 = load float, float* %1335, align 4, !dbg !181
  %1337 = getelementptr inbounds %3, %3* %1293, i64 0, i32 0, !dbg !181
  %1338 = load float, float* %1337, align 4, !dbg !181
  %1339 = getelementptr inbounds %0, %0* %sampler_4106267, i64 0, i32 1, i32 2, i32 1, !dbg !181
  %1340 = load float, float* %1339, align 4, !dbg !181
  %.elt265 = getelementptr inbounds %4, %4* %fr_4107501, i64 0, i32 0, !dbg !181
  %.unpack266 = load float, float* %.elt265, align 8, !dbg !181
  %.elt267 = getelementptr inbounds %4, %4* %fr_4107501, i64 0, i32 1, !dbg !181
  %.unpack268 = load float, float* %.elt267, align 4, !dbg !181
  %.elt269 = getelementptr inbounds %4, %4* %fr_4107501, i64 0, i32 2, !dbg !181
  %.unpack270 = load float, float* %.elt269, align 8, !dbg !181
  %1341 = fsub float %1253, %1258, !dbg !181
  %1342 = fsub float 1.000000e+00, %1341, !dbg !181
  %1343 = fsub float %1247, %1252, !dbg !181
  %1344 = fsub float 1.000000e+00, %1343, !dbg !181
  %1345 = fmul float %1344, %1268, !dbg !181
  %1346 = fmul float %1343, %1273, !dbg !181
  %1347 = fadd float %1345, %1346, !dbg !181
  %1348 = fmul float %1342, %1347, !dbg !181
  %1349 = fmul float %1344, %1279, !dbg !181
  %1350 = fmul float %1343, %1287, !dbg !181
  %1351 = fadd float %1349, %1350, !dbg !181
  %1352 = fmul float %1341, %1351, !dbg !181
  %1353 = fadd float %1348, %1352, !dbg !181
  %hprod185 = fmul float %1289, %1291, !dbg !181
  %1354 = fmul float %1353, %hprod185, !dbg !181
  %1355 = fsub float %1302, %1307, !dbg !181
  %1356 = fsub float 1.000000e+00, %1355, !dbg !181
  %1357 = fsub float %1294, %1299, !dbg !181
  %1358 = fsub float 1.000000e+00, %1357, !dbg !181
  %1359 = fmul float %1358, %1317, !dbg !181
  %1360 = fmul float %1357, %1322, !dbg !181
  %1361 = fadd float %1359, %1360, !dbg !181
  %1362 = fmul float %1356, %1361, !dbg !181
  %1363 = fmul float %1358, %1328, !dbg !181
  %1364 = fmul float %1357, %1336, !dbg !181
  %1365 = fadd float %1363, %1364, !dbg !181
  %1366 = fmul float %1355, %1365, !dbg !181
  %1367 = fadd float %1362, %1366, !dbg !181
  %hprod186 = fmul float %1338, %1340, !dbg !181
  %1368 = fmul float %1367, %hprod186, !dbg !181
  %1369 = fmul float %1368, 4.000000e+00, !dbg !181
  %factor = fdiv float %1354, %1369, !dbg !181
  %1370 = fmul float %.unpack266, %factor, !dbg !181
  %1371 = fmul float %.unpack268, %factor, !dbg !181
  %1372 = fmul float %.unpack270, %factor, !dbg !181
  %fr_4107501.repack271 = getelementptr inbounds %4, %4* %fr_4107501, i64 0, i32 0, !dbg !181
  store float %1370, float* %fr_4107501.repack271, align 8, !dbg !181
  %fr_4107501.repack273 = getelementptr inbounds %4, %4* %fr_4107501, i64 0, i32 1, !dbg !181
  store float %1371, float* %fr_4107501.repack273, align 4, !dbg !181
  %fr_4107501.repack275 = getelementptr inbounds %4, %4* %fr_4107501, i64 0, i32 2, !dbg !181
  store float %1372, float* %fr_4107501.repack275, align 8, !dbg !181
  %1373 = insertvalue %13 undef, float %1370, 0, !dbg !181
  %1374 = insertvalue %13 %1373, float %1371, 1, !dbg !181
  %1375 = insertvalue %13 %1374, float %1372, 2, !dbg !181
  br label %evaluate_brdf_cont, !dbg !181

expr_true41:                                      ; preds = %expr_false22, %continue
  %1376 = load [0 x i32]*, [0 x i32]** %46, align 8, !dbg !179
  %1377 = load i32, i32* %dim_4106765, align 4, !dbg !179
  %1378 = sext i32 %1377 to i64, !dbg !179
  %1379 = getelementptr inbounds [0 x i32], [0 x i32]* %1376, i64 0, i64 %1378, !dbg !179
  %1380 = load i32, i32* %1379, align 4, !dbg !179
  %1381 = icmp eq i32 %1380, 1, !dbg !179
  br i1 %1381, label %expr_true55, label %expr_false42, !dbg !179

expr_false42:                                     ; preds = %expr_true41
  store float %15, float* %dim_param_4106805, align 4, !dbg !182
  %1382 = load i32, i32* %dim_4106765, align 4, !dbg !182
  %1383 = icmp eq i32 %1382, 1, !dbg !182
  br i1 %1383, label %expr_true47, label %expr_false43, !dbg !182

expr_false43:                                     ; preds = %expr_false42
  %1384 = load i32, i32* %dim_4106765, align 4, !dbg !183
  %1385 = icmp eq i32 %1384, 2, !dbg !183
  br i1 %1385, label %expr_true45, label %if_join48, !dbg !183

expr_true45:                                      ; preds = %expr_false43
  store float 2.000000e+00, float* %dim_param_4106805, align 4, !dbg !184
  br label %if_join48, !dbg !184

expr_true47:                                      ; preds = %expr_false42
  store float %14, float* %dim_param_4106805, align 4, !dbg !183
  br label %if_join48, !dbg !183

if_join48:                                        ; preds = %expr_true45, %expr_false43, %expr_true47
  %1386 = load i32, i32* %dim_4106765, align 4, !dbg !185
  %1387 = load float, float* %dim_param_4106805, align 4, !dbg !185
  %1388 = call fastcc i32 @find_interval_eval_4088285(%1* nonnull %44, i32 %1386, float %1387), !dbg !185
  %1389 = load [0 x float]*, [0 x float]** %47, align 8, !dbg !186
  %1390 = load i32, i32* %dim_4106765, align 4, !dbg !186
  %1391 = load i32, i32* %48, align 4, !dbg !186
  %1392 = mul nsw i32 %1390, %1391, !dbg !186
  %1393 = add nsw i32 %1392, %1388, !dbg !186
  %1394 = sext i32 %1393 to i64, !dbg !186
  %1395 = getelementptr inbounds [0 x float], [0 x float]* %1389, i64 0, i64 %1394, !dbg !186
  %1396 = load float, float* %1395, align 4, !dbg !186
  %1397 = load [0 x float]*, [0 x float]** %47, align 8, !dbg !186
  %1398 = load i32, i32* %dim_4106765, align 4, !dbg !186
  %1399 = load i32, i32* %48, align 4, !dbg !186
  %1400 = mul nsw i32 %1398, %1399, !dbg !186
  %1401 = add nsw i32 %1400, %1388, !dbg !186
  %1402 = add nsw i32 %1401, 1, !dbg !186
  %1403 = sext i32 %1402 to i64, !dbg !186
  %1404 = getelementptr inbounds [0 x float], [0 x float]* %1397, i64 0, i64 %1403, !dbg !186
  %1405 = load float, float* %1404, align 4, !dbg !186
  %1406 = load i32, i32* %dim_4106765, align 4, !dbg !186
  %1407 = load float, float* %dim_param_4106805, align 4, !dbg !186
  %1408 = fsub float %1407, %1396, !dbg !186
  %1409 = fsub float %1405, %1396, !dbg !186
  %1410 = fdiv float %1408, %1409, !dbg !186
  %1411 = fcmp olt float %1410, 0.000000e+00, !dbg !186
  %1412 = fcmp ogt float %1410, 1.000000e+00, !dbg !186
  %. = select i1 %1412, float 1.000000e+00, float %1410, !dbg !186
  %clampf_cont54 = select i1 %1411, float 0.000000e+00, float %., !dbg !186
  %1413 = shl nsw i32 %1406, 1, !dbg !187
  %1414 = or i32 %1413, 1, !dbg !187
  %1415 = sext i32 %1414 to i64, !dbg !187
  %1416 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4106787, i64 0, i64 %1415, !dbg !187
  store float %clampf_cont54, float* %1416, align 4, !dbg !187
  %1417 = load i32, i32* %dim_4106765, align 4, !dbg !187
  %1418 = shl nsw i32 %1417, 1, !dbg !187
  %1419 = or i32 %1418, 1, !dbg !187
  %1420 = sext i32 %1419 to i64, !dbg !187
  %1421 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4106787, i64 0, i64 %1420, !dbg !187
  %1422 = load float, float* %1421, align 4, !dbg !187
  %1423 = shl nsw i32 %1417, 1, !dbg !187
  %1424 = sext i32 %1423 to i64, !dbg !187
  %1425 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4106787, i64 0, i64 %1424, !dbg !187
  %1426 = fsub float 1.000000e+00, %1422, !dbg !187
  store float %1426, float* %1425, align 4, !dbg !187
  %1427 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !187
  %1428 = load i32, i32* %dim_4106765, align 4, !dbg !187
  %1429 = sext i32 %1428 to i64, !dbg !187
  %1430 = getelementptr inbounds [0 x i32], [0 x i32]* %1427, i64 0, i64 %1429, !dbg !187
  %1431 = load i32, i32* %1430, align 4, !dbg !187
  %1432 = load i32, i32* %slice_offset_4106895, align 4, !dbg !187
  %1433 = mul nsw i32 %1431, %1388, !dbg !187
  %1434 = add nsw i32 %1432, %1433, !dbg !187
  store i32 %1434, i32* %slice_offset_4106895, align 4, !dbg !187
  %1435 = load i32, i32* %dim_4106765, align 4, !dbg !187
  br label %continue, !dbg !187

expr_true55:                                      ; preds = %expr_true41
  %1436 = load i32, i32* %dim_4106765, align 4, !dbg !182
  %1437 = shl nsw i32 %1436, 1, !dbg !182
  %1438 = sext i32 %1437 to i64, !dbg !182
  %1439 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4106787, i64 0, i64 %1438, !dbg !182
  store float 1.000000e+00, float* %1439, align 4, !dbg !182
  %1440 = load i32, i32* %dim_4106765, align 4, !dbg !182
  %1441 = shl nsw i32 %1440, 1, !dbg !182
  %1442 = or i32 %1441, 1, !dbg !182
  %1443 = sext i32 %1442 to i64, !dbg !182
  %1444 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4106787, i64 0, i64 %1443, !dbg !182
  store float 0.000000e+00, float* %1444, align 4, !dbg !182
  %1445 = load i32, i32* %dim_4106765, align 4, !dbg !182
  br label %continue, !dbg !182

continue:                                         ; preds = %expr_true55, %if_join48
  %storemerge.in = phi i32 [ %1435, %if_join48 ], [ %1445, %expr_true55 ]
  %storemerge = add nsw i32 %storemerge.in, 1, !dbg !188
  store i32 %storemerge, i32* %dim_4106765, align 4, !dbg !188
  %1446 = icmp slt i32 %storemerge.in, 2, !dbg !178
  br i1 %1446, label %expr_true41, label %expr_false28, !dbg !178

expr_true56:                                      ; preds = %expr_false16, %continue73
  %1447 = load [0 x i32]*, [0 x i32]** %46, align 8, !dbg !179
  %1448 = load i32, i32* %dim_4106575, align 4, !dbg !179
  %1449 = sext i32 %1448 to i64, !dbg !179
  %1450 = getelementptr inbounds [0 x i32], [0 x i32]* %1447, i64 0, i64 %1449, !dbg !179
  %1451 = load i32, i32* %1450, align 4, !dbg !179
  %1452 = icmp eq i32 %1451, 1, !dbg !179
  br i1 %1452, label %expr_true72, label %expr_false57, !dbg !179

expr_false57:                                     ; preds = %expr_true56
  store float %15, float* %dim_param_4106615, align 4, !dbg !182
  %1453 = load i32, i32* %dim_4106575, align 4, !dbg !182
  %1454 = icmp eq i32 %1453, 1, !dbg !182
  br i1 %1454, label %expr_true62, label %expr_false58, !dbg !182

expr_false58:                                     ; preds = %expr_false57
  %1455 = load i32, i32* %dim_4106575, align 4, !dbg !183
  %1456 = icmp eq i32 %1455, 2, !dbg !183
  br i1 %1456, label %expr_true60, label %if_join63, !dbg !183

expr_true60:                                      ; preds = %expr_false58
  store float 1.000000e+00, float* %dim_param_4106615, align 4, !dbg !184
  br label %if_join63, !dbg !184

expr_true62:                                      ; preds = %expr_false57
  store float %14, float* %dim_param_4106615, align 4, !dbg !183
  br label %if_join63, !dbg !183

if_join63:                                        ; preds = %expr_true60, %expr_false58, %expr_true62
  %1457 = load i32, i32* %dim_4106575, align 4, !dbg !185
  %1458 = load float, float* %dim_param_4106615, align 4, !dbg !185
  %1459 = call fastcc i32 @find_interval_eval_4088285(%1* nonnull %44, i32 %1457, float %1458), !dbg !185
  %1460 = load [0 x float]*, [0 x float]** %47, align 8, !dbg !186
  %1461 = load i32, i32* %dim_4106575, align 4, !dbg !186
  %1462 = load i32, i32* %48, align 4, !dbg !186
  %1463 = mul nsw i32 %1461, %1462, !dbg !186
  %1464 = add nsw i32 %1463, %1459, !dbg !186
  %1465 = sext i32 %1464 to i64, !dbg !186
  %1466 = getelementptr inbounds [0 x float], [0 x float]* %1460, i64 0, i64 %1465, !dbg !186
  %1467 = load float, float* %1466, align 4, !dbg !186
  %1468 = load [0 x float]*, [0 x float]** %47, align 8, !dbg !186
  %1469 = load i32, i32* %dim_4106575, align 4, !dbg !186
  %1470 = load i32, i32* %48, align 4, !dbg !186
  %1471 = mul nsw i32 %1469, %1470, !dbg !186
  %1472 = add nsw i32 %1471, %1459, !dbg !186
  %1473 = add nsw i32 %1472, 1, !dbg !186
  %1474 = sext i32 %1473 to i64, !dbg !186
  %1475 = getelementptr inbounds [0 x float], [0 x float]* %1468, i64 0, i64 %1474, !dbg !186
  %1476 = load float, float* %1475, align 4, !dbg !186
  %1477 = load i32, i32* %dim_4106575, align 4, !dbg !186
  %1478 = load float, float* %dim_param_4106615, align 4, !dbg !186
  %1479 = fsub float %1478, %1467, !dbg !186
  %1480 = fsub float %1476, %1467, !dbg !186
  %1481 = fdiv float %1479, %1480, !dbg !186
  %1482 = fcmp olt float %1481, 0.000000e+00, !dbg !186
  %1483 = fcmp ogt float %1481, 1.000000e+00, !dbg !186
  %.279 = select i1 %1483, float 1.000000e+00, float %1481, !dbg !186
  %clampf_cont71 = select i1 %1482, float 0.000000e+00, float %.279, !dbg !186
  %1484 = shl nsw i32 %1477, 1, !dbg !187
  %1485 = or i32 %1484, 1, !dbg !187
  %1486 = sext i32 %1485 to i64, !dbg !187
  %1487 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4106597, i64 0, i64 %1486, !dbg !187
  store float %clampf_cont71, float* %1487, align 4, !dbg !187
  %1488 = load i32, i32* %dim_4106575, align 4, !dbg !187
  %1489 = shl nsw i32 %1488, 1, !dbg !187
  %1490 = or i32 %1489, 1, !dbg !187
  %1491 = sext i32 %1490 to i64, !dbg !187
  %1492 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4106597, i64 0, i64 %1491, !dbg !187
  %1493 = load float, float* %1492, align 4, !dbg !187
  %1494 = shl nsw i32 %1488, 1, !dbg !187
  %1495 = sext i32 %1494 to i64, !dbg !187
  %1496 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4106597, i64 0, i64 %1495, !dbg !187
  %1497 = fsub float 1.000000e+00, %1493, !dbg !187
  store float %1497, float* %1496, align 4, !dbg !187
  %1498 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !187
  %1499 = load i32, i32* %dim_4106575, align 4, !dbg !187
  %1500 = sext i32 %1499 to i64, !dbg !187
  %1501 = getelementptr inbounds [0 x i32], [0 x i32]* %1498, i64 0, i64 %1500, !dbg !187
  %1502 = load i32, i32* %1501, align 4, !dbg !187
  %1503 = load i32, i32* %slice_offset_4106705, align 4, !dbg !187
  %1504 = mul nsw i32 %1502, %1459, !dbg !187
  %1505 = add nsw i32 %1503, %1504, !dbg !187
  store i32 %1505, i32* %slice_offset_4106705, align 4, !dbg !187
  %1506 = load i32, i32* %dim_4106575, align 4, !dbg !187
  br label %continue73, !dbg !187

expr_true72:                                      ; preds = %expr_true56
  %1507 = load i32, i32* %dim_4106575, align 4, !dbg !182
  %1508 = shl nsw i32 %1507, 1, !dbg !182
  %1509 = sext i32 %1508 to i64, !dbg !182
  %1510 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4106597, i64 0, i64 %1509, !dbg !182
  store float 1.000000e+00, float* %1510, align 4, !dbg !182
  %1511 = load i32, i32* %dim_4106575, align 4, !dbg !182
  %1512 = shl nsw i32 %1511, 1, !dbg !182
  %1513 = or i32 %1512, 1, !dbg !182
  %1514 = sext i32 %1513 to i64, !dbg !182
  %1515 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4106597, i64 0, i64 %1514, !dbg !182
  store float 0.000000e+00, float* %1515, align 4, !dbg !182
  %1516 = load i32, i32* %dim_4106575, align 4, !dbg !182
  br label %continue73, !dbg !182

continue73:                                       ; preds = %expr_true72, %if_join63
  %storemerge277.in = phi i32 [ %1506, %if_join63 ], [ %1516, %expr_true72 ]
  %storemerge277 = add nsw i32 %storemerge277.in, 1, !dbg !188
  store i32 %storemerge277, i32* %dim_4106575, align 4, !dbg !188
  %1517 = icmp slt i32 %storemerge277.in, 2, !dbg !178
  br i1 %1517, label %expr_true56, label %expr_false22, !dbg !178

expr_true74:                                      ; preds = %_cont13, %continue91
  %1518 = load [0 x i32]*, [0 x i32]** %46, align 8, !dbg !179
  %1519 = load i32, i32* %dim_4106375, align 4, !dbg !179
  %1520 = sext i32 %1519 to i64, !dbg !179
  %1521 = getelementptr inbounds [0 x i32], [0 x i32]* %1518, i64 0, i64 %1520, !dbg !179
  %1522 = load i32, i32* %1521, align 4, !dbg !179
  %1523 = icmp eq i32 %1522, 1, !dbg !179
  br i1 %1523, label %expr_true90, label %expr_false75, !dbg !179

expr_false75:                                     ; preds = %expr_true74
  store float %15, float* %dim_param_4106417, align 4, !dbg !182
  %1524 = load i32, i32* %dim_4106375, align 4, !dbg !182
  %1525 = icmp eq i32 %1524, 1, !dbg !182
  br i1 %1525, label %expr_true80, label %expr_false76, !dbg !182

expr_false76:                                     ; preds = %expr_false75
  %1526 = load i32, i32* %dim_4106375, align 4, !dbg !183
  %1527 = icmp eq i32 %1526, 2, !dbg !183
  br i1 %1527, label %expr_true78, label %if_join81, !dbg !183

expr_true78:                                      ; preds = %expr_false76
  store float 0.000000e+00, float* %dim_param_4106417, align 4, !dbg !184
  br label %if_join81, !dbg !184

expr_true80:                                      ; preds = %expr_false75
  store float %14, float* %dim_param_4106417, align 4, !dbg !183
  br label %if_join81, !dbg !183

if_join81:                                        ; preds = %expr_true78, %expr_false76, %expr_true80
  %1528 = load i32, i32* %dim_4106375, align 4, !dbg !185
  %1529 = load float, float* %dim_param_4106417, align 4, !dbg !185
  %1530 = call fastcc i32 @find_interval_eval_4088285(%1* nonnull %44, i32 %1528, float %1529), !dbg !185
  %1531 = load [0 x float]*, [0 x float]** %47, align 8, !dbg !186
  %1532 = load i32, i32* %dim_4106375, align 4, !dbg !186
  %1533 = load i32, i32* %48, align 4, !dbg !186
  %1534 = mul nsw i32 %1532, %1533, !dbg !186
  %1535 = add nsw i32 %1534, %1530, !dbg !186
  %1536 = sext i32 %1535 to i64, !dbg !186
  %1537 = getelementptr inbounds [0 x float], [0 x float]* %1531, i64 0, i64 %1536, !dbg !186
  %1538 = load float, float* %1537, align 4, !dbg !186
  %1539 = load [0 x float]*, [0 x float]** %47, align 8, !dbg !186
  %1540 = load i32, i32* %dim_4106375, align 4, !dbg !186
  %1541 = load i32, i32* %48, align 4, !dbg !186
  %1542 = mul nsw i32 %1540, %1541, !dbg !186
  %1543 = add nsw i32 %1542, %1530, !dbg !186
  %1544 = add nsw i32 %1543, 1, !dbg !186
  %1545 = sext i32 %1544 to i64, !dbg !186
  %1546 = getelementptr inbounds [0 x float], [0 x float]* %1539, i64 0, i64 %1545, !dbg !186
  %1547 = load float, float* %1546, align 4, !dbg !186
  %1548 = load i32, i32* %dim_4106375, align 4, !dbg !186
  %1549 = load float, float* %dim_param_4106417, align 4, !dbg !186
  %1550 = fsub float %1549, %1538, !dbg !186
  %1551 = fsub float %1547, %1538, !dbg !186
  %1552 = fdiv float %1550, %1551, !dbg !186
  %1553 = fcmp olt float %1552, 0.000000e+00, !dbg !186
  %1554 = fcmp ogt float %1552, 1.000000e+00, !dbg !186
  %.280 = select i1 %1554, float 1.000000e+00, float %1552, !dbg !186
  %clampf_cont89 = select i1 %1553, float 0.000000e+00, float %.280, !dbg !186
  %1555 = shl nsw i32 %1548, 1, !dbg !187
  %1556 = or i32 %1555, 1, !dbg !187
  %1557 = sext i32 %1556 to i64, !dbg !187
  %1558 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4106399, i64 0, i64 %1557, !dbg !187
  store float %clampf_cont89, float* %1558, align 4, !dbg !187
  %1559 = load i32, i32* %dim_4106375, align 4, !dbg !187
  %1560 = shl nsw i32 %1559, 1, !dbg !187
  %1561 = or i32 %1560, 1, !dbg !187
  %1562 = sext i32 %1561 to i64, !dbg !187
  %1563 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4106399, i64 0, i64 %1562, !dbg !187
  %1564 = load float, float* %1563, align 4, !dbg !187
  %1565 = shl nsw i32 %1559, 1, !dbg !187
  %1566 = sext i32 %1565 to i64, !dbg !187
  %1567 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4106399, i64 0, i64 %1566, !dbg !187
  %1568 = fsub float 1.000000e+00, %1564, !dbg !187
  store float %1568, float* %1567, align 4, !dbg !187
  %1569 = load [0 x i32]*, [0 x i32]** %45, align 8, !dbg !187
  %1570 = load i32, i32* %dim_4106375, align 4, !dbg !187
  %1571 = sext i32 %1570 to i64, !dbg !187
  %1572 = getelementptr inbounds [0 x i32], [0 x i32]* %1569, i64 0, i64 %1571, !dbg !187
  %1573 = load i32, i32* %1572, align 4, !dbg !187
  %1574 = load i32, i32* %slice_offset_4106510, align 4, !dbg !187
  %1575 = mul nsw i32 %1573, %1530, !dbg !187
  %1576 = add nsw i32 %1574, %1575, !dbg !187
  store i32 %1576, i32* %slice_offset_4106510, align 4, !dbg !187
  %1577 = load i32, i32* %dim_4106375, align 4, !dbg !187
  br label %continue91, !dbg !187

expr_true90:                                      ; preds = %expr_true74
  %1578 = load i32, i32* %dim_4106375, align 4, !dbg !182
  %1579 = shl nsw i32 %1578, 1, !dbg !182
  %1580 = sext i32 %1579 to i64, !dbg !182
  %1581 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4106399, i64 0, i64 %1580, !dbg !182
  store float 1.000000e+00, float* %1581, align 4, !dbg !182
  %1582 = load i32, i32* %dim_4106375, align 4, !dbg !182
  %1583 = shl nsw i32 %1582, 1, !dbg !182
  %1584 = or i32 %1583, 1, !dbg !182
  %1585 = sext i32 %1584 to i64, !dbg !182
  %1586 = getelementptr inbounds [6 x float], [6 x float]* %param_weight_4106399, i64 0, i64 %1585, !dbg !182
  store float 0.000000e+00, float* %1586, align 4, !dbg !182
  %1587 = load i32, i32* %dim_4106375, align 4, !dbg !182
  br label %continue91, !dbg !182

continue91:                                       ; preds = %expr_true90, %if_join81
  %storemerge278.in = phi i32 [ %1577, %if_join81 ], [ %1587, %expr_true90 ]
  %storemerge278 = add nsw i32 %storemerge278.in, 1, !dbg !188
  store i32 %storemerge278, i32* %dim_4106375, align 4, !dbg !188
  %1588 = icmp slt i32 %storemerge278.in, 2, !dbg !178
  br i1 %1588, label %expr_true74, label %expr_false16, !dbg !178

evaluate_brdf_cont:                               ; preds = %test_evaluate_brdf, %expr_false28
  %res = phi %13 [ %1375, %expr_false28 ], [ zeroinitializer, %test_evaluate_brdf ], !dbg !189
  %1589 = getelementptr inbounds %4, %4* %result_4106270, i64 0, i32 0, !dbg !189
  %1590 = extractvalue %13 %res, 0, !dbg !189
  store float %1590, float* %1589, align 4, !dbg !189
  %1591 = getelementptr inbounds %4, %4* %result_4106270, i64 0, i32 1, !dbg !189
  %1592 = extractvalue %13 %res, 1, !dbg !189
  store float %1592, float* %1591, align 4, !dbg !189
  %1593 = getelementptr inbounds %4, %4* %result_4106270, i64 0, i32 2, !dbg !189
  %1594 = extractvalue %13 %res, 2, !dbg !189
  store float %1594, float* %1593, align 4, !dbg !189
  ret void, !dbg !189
}

define i32 @cpu_sort_primary(%8* %primary_4099866, [0 x i32]* %ray_begins_4099867, [0 x i32]* %ray_ends_4099868, i32 %num_geometries_4099869) local_unnamed_addr !dbg !190 {
cpu_sort_primary:
  %j_4099937 = alloca i32, align 4
  %n_4099912 = alloca i32, align 4
  %0 = icmp sgt i32 %num_geometries_4099869, -1, !dbg !192
  br i1 %0, label %expr_true17, label %expr_false, !dbg !192

expr_false:                                       ; preds = %expr_true17, %cpu_sort_primary
  %1 = getelementptr inbounds %8, %8* %primary_4099866, i64 0, i32 12, !dbg !193
  %2 = load i32, i32* %1, align 4, !dbg !193
  %3 = getelementptr inbounds %8, %8* %primary_4099866, i64 0, i32 1, !dbg !193
  %4 = icmp sgt i32 %2, 0, !dbg !192
  br i1 %4, label %expr_true16, label %expr_false4, !dbg !192

expr_false4:                                      ; preds = %expr_true16, %expr_false
  store i32 0, i32* %n_4099912, align 4, !dbg !193
  %5 = icmp sgt i32 %num_geometries_4099869, -1, !dbg !192
  br i1 %5, label %expr_true15, label %expr_false7, !dbg !192

expr_false7:                                      ; preds = %expr_true15, %expr_false4
  %6 = getelementptr inbounds %8, %8* %primary_4099866, i64 0, i32 0, i32 0, !dbg !193
  %7 = getelementptr inbounds %8, %8* %primary_4099866, i64 0, i32 0, i32 1, !dbg !193
  %8 = getelementptr inbounds %8, %8* %primary_4099866, i64 0, i32 0, i32 2, !dbg !193
  %9 = getelementptr inbounds %8, %8* %primary_4099866, i64 0, i32 0, i32 3, !dbg !193
  %10 = getelementptr inbounds %8, %8* %primary_4099866, i64 0, i32 0, i32 4, !dbg !193
  %11 = getelementptr inbounds %8, %8* %primary_4099866, i64 0, i32 0, i32 5, !dbg !193
  %12 = getelementptr inbounds %8, %8* %primary_4099866, i64 0, i32 0, i32 6, !dbg !193
  %13 = getelementptr inbounds %8, %8* %primary_4099866, i64 0, i32 0, i32 7, !dbg !193
  %14 = getelementptr inbounds %8, %8* %primary_4099866, i64 0, i32 0, i32 8, !dbg !193
  %15 = getelementptr inbounds %8, %8* %primary_4099866, i64 0, i32 2, !dbg !193
  %16 = getelementptr inbounds %8, %8* %primary_4099866, i64 0, i32 3, !dbg !193
  %17 = getelementptr inbounds %8, %8* %primary_4099866, i64 0, i32 4, !dbg !193
  %18 = getelementptr inbounds %8, %8* %primary_4099866, i64 0, i32 5, !dbg !193
  %19 = getelementptr inbounds %8, %8* %primary_4099866, i64 0, i32 6, !dbg !193
  %20 = getelementptr inbounds %8, %8* %primary_4099866, i64 0, i32 7, !dbg !193
  %21 = getelementptr inbounds %8, %8* %primary_4099866, i64 0, i32 8, !dbg !193
  %22 = getelementptr inbounds %8, %8* %primary_4099866, i64 0, i32 9, !dbg !193
  %23 = getelementptr inbounds %8, %8* %primary_4099866, i64 0, i32 10, !dbg !193
  %24 = getelementptr inbounds %8, %8* %primary_4099866, i64 0, i32 11, !dbg !193
  %25 = icmp sgt i32 %num_geometries_4099869, 0, !dbg !192
  br i1 %25, label %expr_true, label %expr_false10, !dbg !192

expr_false10:                                     ; preds = %expr_false11, %expr_false7
  %26 = add nsw i32 %num_geometries_4099869, -1, !dbg !193
  %27 = sext i32 %26 to i64, !dbg !193
  %28 = getelementptr inbounds [0 x i32], [0 x i32]* %ray_ends_4099868, i64 0, i64 %27, !dbg !193
  %29 = load i32, i32* %28, align 4, !dbg !193
  ret i32 %29, !dbg !193

expr_true:                                        ; preds = %expr_false7, %expr_false11
  %unroll_step921 = phi i32 [ %37, %expr_false11 ], [ 0, %expr_false7 ]
  %30 = zext i32 %unroll_step921 to i64, !dbg !193
  %31 = getelementptr inbounds [0 x i32], [0 x i32]* %ray_begins_4099867, i64 0, i64 %30, !dbg !193
  %32 = load i32, i32* %31, align 4, !dbg !193
  %33 = zext i32 %unroll_step921 to i64, !dbg !193
  %34 = getelementptr inbounds [0 x i32], [0 x i32]* %ray_ends_4099868, i64 0, i64 %33, !dbg !193
  %35 = load i32, i32* %34, align 4, !dbg !193
  store i32 %32, i32* %j_4099937, align 4, !dbg !193
  %36 = icmp slt i32 %32, %35, !dbg !194
  br i1 %36, label %expr_true12, label %expr_false11, !dbg !194

expr_false11:                                     ; preds = %if_join, %expr_true
  %37 = add nuw nsw i32 %unroll_step921, 1, !dbg !195
  %38 = icmp slt i32 %37, %num_geometries_4099869, !dbg !192
  br i1 %38, label %expr_true, label %expr_false10, !dbg !192

expr_true12:                                      ; preds = %expr_true, %if_join
  %39 = load [0 x i32]*, [0 x i32]** %3, align 8, !dbg !195
  %40 = load i32, i32* %j_4099937, align 4, !dbg !195
  %41 = sext i32 %40 to i64, !dbg !195
  %42 = getelementptr inbounds [0 x i32], [0 x i32]* %39, i64 0, i64 %41, !dbg !195
  %43 = load i32, i32* %42, align 4, !dbg !195
  %.not = icmp eq i32 %43, %unroll_step921, !dbg !195
  br i1 %.not, label %expr_false13, label %expr_true14, !dbg !195

expr_false13:                                     ; preds = %expr_true12
  %44 = load i32, i32* %j_4099937, align 4, !dbg !196
  %45 = add nsw i32 %44, 1, !dbg !196
  store i32 %45, i32* %j_4099937, align 4, !dbg !196
  br label %if_join, !dbg !196

expr_true14:                                      ; preds = %expr_true12
  %46 = sext i32 %43 to i64, !dbg !196
  %47 = getelementptr inbounds [0 x i32], [0 x i32]* %ray_begins_4099867, i64 0, i64 %46, !dbg !196
  %48 = load i32, i32* %47, align 4, !dbg !196
  %49 = add nsw i32 %48, 1, !dbg !196
  store i32 %49, i32* %47, align 4, !dbg !196
  %50 = load [0 x i32]*, [0 x i32]** %6, align 8, !dbg !196
  %51 = load i32, i32* %j_4099937, align 4, !dbg !196
  %52 = sext i32 %48 to i64, !dbg !196
  %53 = getelementptr inbounds [0 x i32], [0 x i32]* %50, i64 0, i64 %52, !dbg !196
  %54 = load i32, i32* %53, align 4, !dbg !196
  %55 = sext i32 %51 to i64, !dbg !196
  %56 = getelementptr inbounds [0 x i32], [0 x i32]* %50, i64 0, i64 %55, !dbg !196
  %57 = load i32, i32* %56, align 4, !dbg !196
  store i32 %57, i32* %53, align 4, !dbg !196
  store i32 %54, i32* %56, align 4, !dbg !196
  %58 = load [0 x float]*, [0 x float]** %7, align 8, !dbg !196
  %59 = load i32, i32* %j_4099937, align 4, !dbg !196
  %60 = sext i32 %48 to i64, !dbg !196
  %61 = getelementptr inbounds [0 x float], [0 x float]* %58, i64 0, i64 %60, !dbg !196
  %62 = load float, float* %61, align 4, !dbg !196
  %63 = sext i32 %59 to i64, !dbg !196
  %64 = getelementptr inbounds [0 x float], [0 x float]* %58, i64 0, i64 %63, !dbg !196
  %65 = load float, float* %64, align 4, !dbg !196
  store float %65, float* %61, align 4, !dbg !196
  store float %62, float* %64, align 4, !dbg !196
  %66 = load [0 x float]*, [0 x float]** %8, align 8, !dbg !196
  %67 = load i32, i32* %j_4099937, align 4, !dbg !196
  %68 = sext i32 %48 to i64, !dbg !196
  %69 = getelementptr inbounds [0 x float], [0 x float]* %66, i64 0, i64 %68, !dbg !196
  %70 = load float, float* %69, align 4, !dbg !196
  %71 = sext i32 %67 to i64, !dbg !196
  %72 = getelementptr inbounds [0 x float], [0 x float]* %66, i64 0, i64 %71, !dbg !196
  %73 = load float, float* %72, align 4, !dbg !196
  store float %73, float* %69, align 4, !dbg !196
  store float %70, float* %72, align 4, !dbg !196
  %74 = load [0 x float]*, [0 x float]** %9, align 8, !dbg !196
  %75 = load i32, i32* %j_4099937, align 4, !dbg !196
  %76 = sext i32 %48 to i64, !dbg !196
  %77 = getelementptr inbounds [0 x float], [0 x float]* %74, i64 0, i64 %76, !dbg !196
  %78 = load float, float* %77, align 4, !dbg !196
  %79 = sext i32 %75 to i64, !dbg !196
  %80 = getelementptr inbounds [0 x float], [0 x float]* %74, i64 0, i64 %79, !dbg !196
  %81 = load float, float* %80, align 4, !dbg !196
  store float %81, float* %77, align 4, !dbg !196
  store float %78, float* %80, align 4, !dbg !196
  %82 = load [0 x float]*, [0 x float]** %10, align 8, !dbg !196
  %83 = load i32, i32* %j_4099937, align 4, !dbg !196
  %84 = sext i32 %48 to i64, !dbg !196
  %85 = getelementptr inbounds [0 x float], [0 x float]* %82, i64 0, i64 %84, !dbg !196
  %86 = load float, float* %85, align 4, !dbg !196
  %87 = sext i32 %83 to i64, !dbg !196
  %88 = getelementptr inbounds [0 x float], [0 x float]* %82, i64 0, i64 %87, !dbg !196
  %89 = load float, float* %88, align 4, !dbg !196
  store float %89, float* %85, align 4, !dbg !196
  store float %86, float* %88, align 4, !dbg !196
  %90 = load [0 x float]*, [0 x float]** %11, align 8, !dbg !196
  %91 = load i32, i32* %j_4099937, align 4, !dbg !196
  %92 = sext i32 %48 to i64, !dbg !196
  %93 = getelementptr inbounds [0 x float], [0 x float]* %90, i64 0, i64 %92, !dbg !196
  %94 = load float, float* %93, align 4, !dbg !196
  %95 = sext i32 %91 to i64, !dbg !196
  %96 = getelementptr inbounds [0 x float], [0 x float]* %90, i64 0, i64 %95, !dbg !196
  %97 = load float, float* %96, align 4, !dbg !196
  store float %97, float* %93, align 4, !dbg !196
  store float %94, float* %96, align 4, !dbg !196
  %98 = load [0 x float]*, [0 x float]** %12, align 8, !dbg !196
  %99 = load i32, i32* %j_4099937, align 4, !dbg !196
  %100 = sext i32 %48 to i64, !dbg !196
  %101 = getelementptr inbounds [0 x float], [0 x float]* %98, i64 0, i64 %100, !dbg !196
  %102 = load float, float* %101, align 4, !dbg !196
  %103 = sext i32 %99 to i64, !dbg !196
  %104 = getelementptr inbounds [0 x float], [0 x float]* %98, i64 0, i64 %103, !dbg !196
  %105 = load float, float* %104, align 4, !dbg !196
  store float %105, float* %101, align 4, !dbg !196
  store float %102, float* %104, align 4, !dbg !196
  %106 = load [0 x float]*, [0 x float]** %13, align 8, !dbg !196
  %107 = load i32, i32* %j_4099937, align 4, !dbg !196
  %108 = sext i32 %48 to i64, !dbg !196
  %109 = getelementptr inbounds [0 x float], [0 x float]* %106, i64 0, i64 %108, !dbg !196
  %110 = load float, float* %109, align 4, !dbg !196
  %111 = sext i32 %107 to i64, !dbg !196
  %112 = getelementptr inbounds [0 x float], [0 x float]* %106, i64 0, i64 %111, !dbg !196
  %113 = load float, float* %112, align 4, !dbg !196
  store float %113, float* %109, align 4, !dbg !196
  store float %110, float* %112, align 4, !dbg !196
  %114 = load [0 x float]*, [0 x float]** %14, align 8, !dbg !196
  %115 = load i32, i32* %j_4099937, align 4, !dbg !196
  %116 = sext i32 %48 to i64, !dbg !196
  %117 = getelementptr inbounds [0 x float], [0 x float]* %114, i64 0, i64 %116, !dbg !196
  %118 = load float, float* %117, align 4, !dbg !196
  %119 = sext i32 %115 to i64, !dbg !196
  %120 = getelementptr inbounds [0 x float], [0 x float]* %114, i64 0, i64 %119, !dbg !196
  %121 = load float, float* %120, align 4, !dbg !196
  store float %121, float* %117, align 4, !dbg !196
  store float %118, float* %120, align 4, !dbg !196
  %122 = load [0 x i32]*, [0 x i32]** %3, align 8, !dbg !196
  %123 = load i32, i32* %j_4099937, align 4, !dbg !196
  %124 = sext i32 %48 to i64, !dbg !196
  %125 = getelementptr inbounds [0 x i32], [0 x i32]* %122, i64 0, i64 %124, !dbg !196
  %126 = load i32, i32* %125, align 4, !dbg !196
  %127 = sext i32 %123 to i64, !dbg !196
  %128 = getelementptr inbounds [0 x i32], [0 x i32]* %122, i64 0, i64 %127, !dbg !196
  %129 = load i32, i32* %128, align 4, !dbg !196
  store i32 %129, i32* %125, align 4, !dbg !196
  store i32 %126, i32* %128, align 4, !dbg !196
  %130 = load [0 x i32]*, [0 x i32]** %15, align 8, !dbg !196
  %131 = load i32, i32* %j_4099937, align 4, !dbg !196
  %132 = sext i32 %48 to i64, !dbg !196
  %133 = getelementptr inbounds [0 x i32], [0 x i32]* %130, i64 0, i64 %132, !dbg !196
  %134 = load i32, i32* %133, align 4, !dbg !196
  %135 = sext i32 %131 to i64, !dbg !196
  %136 = getelementptr inbounds [0 x i32], [0 x i32]* %130, i64 0, i64 %135, !dbg !196
  %137 = load i32, i32* %136, align 4, !dbg !196
  store i32 %137, i32* %133, align 4, !dbg !196
  store i32 %134, i32* %136, align 4, !dbg !196
  %138 = load [0 x float]*, [0 x float]** %16, align 8, !dbg !196
  %139 = load i32, i32* %j_4099937, align 4, !dbg !196
  %140 = sext i32 %48 to i64, !dbg !196
  %141 = getelementptr inbounds [0 x float], [0 x float]* %138, i64 0, i64 %140, !dbg !196
  %142 = load float, float* %141, align 4, !dbg !196
  %143 = sext i32 %139 to i64, !dbg !196
  %144 = getelementptr inbounds [0 x float], [0 x float]* %138, i64 0, i64 %143, !dbg !196
  %145 = load float, float* %144, align 4, !dbg !196
  store float %145, float* %141, align 4, !dbg !196
  store float %142, float* %144, align 4, !dbg !196
  %146 = load [0 x float]*, [0 x float]** %17, align 8, !dbg !196
  %147 = load i32, i32* %j_4099937, align 4, !dbg !196
  %148 = sext i32 %48 to i64, !dbg !196
  %149 = getelementptr inbounds [0 x float], [0 x float]* %146, i64 0, i64 %148, !dbg !196
  %150 = load float, float* %149, align 4, !dbg !196
  %151 = sext i32 %147 to i64, !dbg !196
  %152 = getelementptr inbounds [0 x float], [0 x float]* %146, i64 0, i64 %151, !dbg !196
  %153 = load float, float* %152, align 4, !dbg !196
  store float %153, float* %149, align 4, !dbg !196
  store float %150, float* %152, align 4, !dbg !196
  %154 = load [0 x float]*, [0 x float]** %18, align 8, !dbg !196
  %155 = load i32, i32* %j_4099937, align 4, !dbg !196
  %156 = sext i32 %48 to i64, !dbg !196
  %157 = getelementptr inbounds [0 x float], [0 x float]* %154, i64 0, i64 %156, !dbg !196
  %158 = load float, float* %157, align 4, !dbg !196
  %159 = sext i32 %155 to i64, !dbg !196
  %160 = getelementptr inbounds [0 x float], [0 x float]* %154, i64 0, i64 %159, !dbg !196
  %161 = load float, float* %160, align 4, !dbg !196
  store float %161, float* %157, align 4, !dbg !196
  store float %158, float* %160, align 4, !dbg !196
  %162 = load [0 x i32]*, [0 x i32]** %19, align 8, !dbg !196
  %163 = load i32, i32* %j_4099937, align 4, !dbg !196
  %164 = sext i32 %48 to i64, !dbg !196
  %165 = getelementptr inbounds [0 x i32], [0 x i32]* %162, i64 0, i64 %164, !dbg !196
  %166 = load i32, i32* %165, align 4, !dbg !196
  %167 = sext i32 %163 to i64, !dbg !196
  %168 = getelementptr inbounds [0 x i32], [0 x i32]* %162, i64 0, i64 %167, !dbg !196
  %169 = load i32, i32* %168, align 4, !dbg !196
  store i32 %169, i32* %165, align 4, !dbg !196
  store i32 %166, i32* %168, align 4, !dbg !196
  %170 = load [0 x float]*, [0 x float]** %20, align 8, !dbg !196
  %171 = load i32, i32* %j_4099937, align 4, !dbg !196
  %172 = sext i32 %48 to i64, !dbg !196
  %173 = getelementptr inbounds [0 x float], [0 x float]* %170, i64 0, i64 %172, !dbg !196
  %174 = load float, float* %173, align 4, !dbg !196
  %175 = sext i32 %171 to i64, !dbg !196
  %176 = getelementptr inbounds [0 x float], [0 x float]* %170, i64 0, i64 %175, !dbg !196
  %177 = load float, float* %176, align 4, !dbg !196
  store float %177, float* %173, align 4, !dbg !196
  store float %174, float* %176, align 4, !dbg !196
  %178 = load [0 x float]*, [0 x float]** %21, align 8, !dbg !196
  %179 = load i32, i32* %j_4099937, align 4, !dbg !196
  %180 = sext i32 %48 to i64, !dbg !196
  %181 = getelementptr inbounds [0 x float], [0 x float]* %178, i64 0, i64 %180, !dbg !196
  %182 = load float, float* %181, align 4, !dbg !196
  %183 = sext i32 %179 to i64, !dbg !196
  %184 = getelementptr inbounds [0 x float], [0 x float]* %178, i64 0, i64 %183, !dbg !196
  %185 = load float, float* %184, align 4, !dbg !196
  store float %185, float* %181, align 4, !dbg !196
  store float %182, float* %184, align 4, !dbg !196
  %186 = load [0 x float]*, [0 x float]** %22, align 8, !dbg !196
  %187 = load i32, i32* %j_4099937, align 4, !dbg !196
  %188 = sext i32 %48 to i64, !dbg !196
  %189 = getelementptr inbounds [0 x float], [0 x float]* %186, i64 0, i64 %188, !dbg !196
  %190 = load float, float* %189, align 4, !dbg !196
  %191 = sext i32 %187 to i64, !dbg !196
  %192 = getelementptr inbounds [0 x float], [0 x float]* %186, i64 0, i64 %191, !dbg !196
  %193 = load float, float* %192, align 4, !dbg !196
  store float %193, float* %189, align 4, !dbg !196
  store float %190, float* %192, align 4, !dbg !196
  %194 = load [0 x float]*, [0 x float]** %23, align 8, !dbg !196
  %195 = load i32, i32* %j_4099937, align 4, !dbg !196
  %196 = sext i32 %48 to i64, !dbg !196
  %197 = getelementptr inbounds [0 x float], [0 x float]* %194, i64 0, i64 %196, !dbg !196
  %198 = load float, float* %197, align 4, !dbg !196
  %199 = sext i32 %195 to i64, !dbg !196
  %200 = getelementptr inbounds [0 x float], [0 x float]* %194, i64 0, i64 %199, !dbg !196
  %201 = load float, float* %200, align 4, !dbg !196
  store float %201, float* %197, align 4, !dbg !196
  store float %198, float* %200, align 4, !dbg !196
  %202 = load [0 x i32]*, [0 x i32]** %24, align 8, !dbg !196
  %203 = load i32, i32* %j_4099937, align 4, !dbg !196
  %204 = sext i32 %48 to i64, !dbg !196
  %205 = getelementptr inbounds [0 x i32], [0 x i32]* %202, i64 0, i64 %204, !dbg !196
  %206 = load i32, i32* %205, align 4, !dbg !196
  %207 = sext i32 %203 to i64, !dbg !196
  %208 = getelementptr inbounds [0 x i32], [0 x i32]* %202, i64 0, i64 %207, !dbg !196
  %209 = load i32, i32* %208, align 4, !dbg !196
  store i32 %209, i32* %205, align 4, !dbg !196
  store i32 %206, i32* %208, align 4, !dbg !196
  br label %if_join, !dbg !196

if_join:                                          ; preds = %expr_true14, %expr_false13
  %210 = load i32, i32* %j_4099937, align 4, !dbg !194
  %211 = icmp slt i32 %210, %35, !dbg !194
  br i1 %211, label %expr_true12, label %expr_false11, !dbg !194

expr_true15:                                      ; preds = %expr_false4, %expr_true15
  %unroll_step620 = phi i32 [ %220, %expr_true15 ], [ 0, %expr_false4 ]
  %212 = load i32, i32* %n_4099912, align 4, !dbg !193
  %213 = zext i32 %unroll_step620 to i64, !dbg !193
  %214 = getelementptr inbounds [0 x i32], [0 x i32]* %ray_begins_4099867, i64 0, i64 %213, !dbg !193
  store i32 %212, i32* %214, align 4, !dbg !193
  %215 = zext i32 %unroll_step620 to i64, !dbg !193
  %216 = getelementptr inbounds [0 x i32], [0 x i32]* %ray_ends_4099868, i64 0, i64 %215, !dbg !193
  %217 = load i32, i32* %216, align 4, !dbg !193
  %218 = load i32, i32* %n_4099912, align 4, !dbg !193
  %219 = add nsw i32 %218, %217, !dbg !193
  store i32 %219, i32* %n_4099912, align 4, !dbg !193
  store i32 %219, i32* %216, align 4, !dbg !193
  %220 = add nuw nsw i32 %unroll_step620, 1, !dbg !193
  %221 = icmp slt i32 %unroll_step620, %num_geometries_4099869, !dbg !192
  br i1 %221, label %expr_true15, label %expr_false7, !dbg !192

expr_true16:                                      ; preds = %expr_false, %expr_true16
  %unroll_step319 = phi i32 [ %230, %expr_true16 ], [ 0, %expr_false ]
  %222 = load [0 x i32]*, [0 x i32]** %3, align 8, !dbg !193
  %223 = zext i32 %unroll_step319 to i64, !dbg !193
  %224 = getelementptr inbounds [0 x i32], [0 x i32]* %222, i64 0, i64 %223, !dbg !193
  %225 = load i32, i32* %224, align 4, !dbg !193
  %226 = sext i32 %225 to i64, !dbg !193
  %227 = getelementptr inbounds [0 x i32], [0 x i32]* %ray_ends_4099868, i64 0, i64 %226, !dbg !193
  %228 = load i32, i32* %227, align 4, !dbg !193
  %229 = add nsw i32 %228, 1, !dbg !193
  store i32 %229, i32* %227, align 4, !dbg !193
  %230 = add nuw nsw i32 %unroll_step319, 1, !dbg !193
  %231 = icmp slt i32 %230, %2, !dbg !192
  br i1 %231, label %expr_true16, label %expr_false4, !dbg !192

expr_true17:                                      ; preds = %cpu_sort_primary, %expr_true17
  %unroll_step118 = phi i32 [ %234, %expr_true17 ], [ 0, %cpu_sort_primary ]
  %232 = zext i32 %unroll_step118 to i64, !dbg !193
  %233 = getelementptr inbounds [0 x i32], [0 x i32]* %ray_ends_4099868, i64 0, i64 %232, !dbg !193
  store i32 0, i32* %233, align 4, !dbg !193
  %234 = add nuw nsw i32 %unroll_step118, 1, !dbg !193
  %235 = icmp slt i32 %unroll_step118, %num_geometries_4099869, !dbg !192
  br i1 %235, label %expr_true17, label %expr_false, !dbg !192
}

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C, file: !2, producer: "Impala", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !3)
!2 = !DIFile(filename: "/home/niklas/repos/anydsl/rodent/build/src/./rodent", directory: "")
!3 = !{}
!4 = distinct !DISubprogram(name: "test_sample_brdf", linkageName: "test_sample_brdf", scope: null, file: !5, line: 730, type: !6, scopeLine: 730, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DIFile(filename: "brdf_sampler.impala", directory: "\FF\D6b\10\DAU\00\00\10 \ECK\DFU\00\00os/anydsl/rodent/src/render")
!6 = !DISubroutineType(types: !3)
!7 = !DILocation(line: 730, column: 1, scope: !4)
!8 = !DILocation(line: 650, column: 26, scope: !4)
!9 = !DILocation(line: 37, column: 30, scope: !4)
!10 = !DILocation(line: 37, column: 12, scope: !4)
!11 = !DILocation(line: 657, column: 17, scope: !4)
!12 = !DILocation(line: 659, column: 26, scope: !4)
!13 = !DILocation(line: 474, column: 5, scope: !4)
!14 = !DILocation(line: 474, column: 17, scope: !4)
!15 = !DILocation(line: 169, column: 5, scope: !4)
!16 = !DILocation(line: 169, column: 18, scope: !4)
!17 = !DILocation(line: 182, column: 5, scope: !4)
!18 = !DILocation(line: 503, column: 19, scope: !4)
!19 = !DILocation(line: 512, column: 24, scope: !4)
!20 = !DILocation(line: 513, column: 16, scope: !4)
!21 = !DILocation(line: 517, column: 28, scope: !4)
!22 = !DILocation(line: 0, scope: !4)
!23 = !DILocation(line: 519, column: 5, scope: !4)
!24 = !DILocation(line: 190, column: 5, scope: !4)
!25 = !DILocation(line: 190, column: 18, scope: !4)
!26 = !DILocation(line: 203, column: 5, scope: !4)
!27 = !DILocation(line: 525, column: 31, scope: !4)
!28 = !DILocation(line: 537, column: 16, scope: !4)
!29 = !DILocation(line: 538, column: 16, scope: !4)
!30 = !DILocation(line: 542, column: 28, scope: !4)
!31 = !DILocation(line: 544, column: 5, scope: !4)
!32 = !DILocation(line: 677, column: 25, scope: !4)
!33 = !DILocation(line: 679, column: 5, scope: !4)
!34 = !DILocation(line: 681, column: 21, scope: !4)
!35 = !DILocation(line: 682, column: 21, scope: !4)
!36 = !DILocation(line: 683, column: 23, scope: !4)
!37 = !DILocation(line: 684, column: 23, scope: !4)
!38 = !DILocation(line: 689, column: 20, scope: !4)
!39 = !DILocation(line: 323, column: 5, scope: !4)
!40 = !DILocation(line: 323, column: 17, scope: !4)
!41 = !DILocation(line: 138, column: 13, scope: !4)
!42 = !DILocation(line: 139, column: 13, scope: !4)
!43 = !DILocation(line: 704, column: 20, scope: !4)
!44 = !DILocation(line: 324, column: 37, scope: !4)
!45 = !DILocation(line: 332, column: 20, scope: !4)
!46 = !DILocation(line: 334, column: 27, scope: !4)
!47 = !DILocation(line: 336, column: 9, scope: !4)
!48 = !DILocation(line: 338, column: 27, scope: !4)
!49 = !DILocation(line: 343, column: 37, scope: !4)
!50 = !DILocation(line: 195, column: 12, scope: !4)
!51 = !DILocation(line: 195, column: 103, scope: !4)
!52 = !DILocation(line: 174, column: 12, scope: !4)
!53 = !DILocation(line: 174, column: 80, scope: !4)
!54 = !DILocation(line: 475, column: 37, scope: !4)
!55 = !DILocation(line: 485, column: 9, scope: !4)
!56 = !DILocation(line: 487, column: 27, scope: !4)
!57 = !DILocation(line: 492, column: 37, scope: !4)
!58 = !DILocation(line: 731, column: 15, scope: !4)
!59 = distinct !DISubprogram(name: "fetch_marginal_warp2D2_4088477", linkageName: "fetch_marginal_warp2D2_4088477", scope: null, file: !60, line: 206, type: !6, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!60 = !DIFile(filename: "brdf_sampler.impala", directory: "\0F\A4\D8\13\DAU\00\00\10 \ECK\DFU\00\00os/anydsl/rodent/src/render")
!61 = !DILocation(line: 206, column: 1, scope: !59)
!62 = distinct !DISubprogram(name: "fetch_conditional_warp2D2_4088841", linkageName: "fetch_conditional_warp2D2_4088841", scope: null, file: !63, line: 210, type: !6, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!63 = !DIFile(filename: "brdf_sampler.impala", directory: "\97X\D4\13\DAU\00\00\10 \ECK\DFU\00\00os/anydsl/rodent/src/render")
!64 = !DILocation(line: 210, column: 1, scope: !62)
!65 = distinct !DISubprogram(name: "find_interval_eval_4088285", linkageName: "find_interval_eval_4088285", scope: null, file: !66, line: 143, type: !6, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!66 = !DIFile(filename: "brdf_sampler.impala", directory: "\8E\02\A2\0D\DAU\00\00\10 \ECK\DFU\00\00os/anydsl/rodent/src/render")
!67 = !DILocation(line: 143, column: 1, scope: !65)
!68 = !DILocation(line: 148, column: 5, scope: !65)
!69 = !DILocation(line: 148, column: 18, scope: !65)
!70 = !DILocation(line: 99, column: 24, scope: !65)
!71 = !DILocation(line: 153, column: 82, scope: !65)
!72 = distinct !DISubprogram(name: "test_pdf_brdf", linkageName: "test_pdf_brdf", scope: null, file: !73, line: 724, type: !6, scopeLine: 724, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!73 = !DIFile(filename: "brdf_sampler.impala", directory: "\E5\AD%\10\DAU\00\00\10 \ECK\DFU\00\00os/anydsl/rodent/src/render")
!74 = !DILocation(line: 724, column: 1, scope: !72)
!75 = !DILocation(line: 596, column: 48, scope: !72)
!76 = !DILocation(line: 82, column: 77, scope: !72)
!77 = !DILocation(line: 605, column: 23, scope: !72)
!78 = !DILocation(line: 606, column: 21, scope: !72)
!79 = !DILocation(line: 607, column: 23, scope: !72)
!80 = !DILocation(line: 608, column: 21, scope: !72)
!81 = !DILocation(line: 610, column: 34, scope: !72)
!82 = !DILocation(line: 611, column: 29, scope: !72)
!83 = !DILocation(line: 611, column: 71, scope: !72)
!84 = !DILocation(line: 613, column: 27, scope: !72)
!85 = !DILocation(line: 616, column: 26, scope: !72)
!86 = !DILocation(line: 270, column: 5, scope: !72)
!87 = !DILocation(line: 270, column: 17, scope: !72)
!88 = !DILocation(line: 138, column: 13, scope: !72)
!89 = !DILocation(line: 139, column: 13, scope: !72)
!90 = !DILocation(line: 623, column: 27, scope: !72)
!91 = !DILocation(line: 624, column: 24, scope: !72)
!92 = !DILocation(line: 271, column: 37, scope: !72)
!93 = !DILocation(line: 0, scope: !72)
!94 = !DILocation(line: 281, column: 9, scope: !72)
!95 = !DILocation(line: 283, column: 27, scope: !72)
!96 = !DILocation(line: 288, column: 37, scope: !72)
!97 = !DILocation(line: 725, column: 15, scope: !72)
!98 = distinct !DISubprogram(name: "elevation_4105594", linkageName: "elevation_4105594", scope: null, file: !99, line: 35, type: !6, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!99 = !DIFile(filename: "brdf_sampler.impala", directory: "\92\B1\D8\13\DAU\00\00\10 \ECK\DFU\00\00os/anydsl/rodent/src/render")
!100 = !DILocation(line: 35, column: 1, scope: !98)
!101 = !DILocation(line: 37, column: 30, scope: !98)
!102 = !DILocation(line: 37, column: 12, scope: !98)
!103 = distinct !DISubprogram(name: "invert_warp2D2_4093932", linkageName: "invert_warp2D2_4093932", scope: null, file: !104, line: 381, type: !6, scopeLine: 381, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!104 = !DIFile(filename: "brdf_sampler.impala", directory: "\\\9E\D8\13\DAU\00\00\10 \ECK\DFU\00\00os/anydsl/rodent/src/render")
!105 = !DILocation(line: 381, column: 1, scope: !103)
!106 = !DILocation(line: 387, column: 5, scope: !103)
!107 = !DILocation(line: 387, column: 17, scope: !103)
!108 = !DILocation(line: 388, column: 37, scope: !103)
!109 = !DILocation(line: 0, scope: !103)
!110 = !DILocation(line: 398, column: 9, scope: !103)
!111 = !DILocation(line: 400, column: 27, scope: !103)
!112 = !DILocation(line: 405, column: 37, scope: !103)
!113 = distinct !DISubprogram(name: "get_spp", linkageName: "get_spp", scope: null, file: !114, line: 14, type: !6, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!114 = !DIFile(filename: "main.impala", directory: "\BD\D8\F4]\05\00\00\00\10 \ECK\DFU\00\00os/anydsl/rodent/build/src")
!115 = !DILocation(line: 14, column: 1, scope: !113)
!116 = distinct !DISubprogram(name: "render", linkageName: "render", scope: null, file: !117, line: 16, type: !6, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!117 = !DIFile(filename: "main.impala", directory: "\E4yr\10\DAU\00\00\10 \ECK\DFU\00\00os/anydsl/rodent/build/src")
!118 = !DILocation(line: 16, column: 1, scope: !116)
!119 = !DILocation(line: 516, column: 47, scope: !116)
!120 = !DILocation(line: 603, column: 9, scope: !116)
!121 = !DILocation(line: 52, column: 21, scope: !116)
!122 = !DILocation(line: 53, column: 17, scope: !116)
!123 = !DILocation(line: 54, column: 15, scope: !116)
!124 = !DILocation(line: 55, column: 16, scope: !116)
!125 = !DILocation(line: 56, column: 15, scope: !116)
!126 = !DILocation(line: 14, column: 5, scope: !116)
!127 = !DILocation(line: 323, column: 5, scope: !116)
!128 = !DILocation(line: 324, column: 5, scope: !116)
!129 = !DILocation(line: 325, column: 5, scope: !116)
!130 = !DILocation(line: 328, column: 5, scope: !116)
!131 = !DILocation(line: 332, column: 5, scope: !116)
!132 = !DILocation(line: 332, column: 43, scope: !116)
!133 = !DILocation(line: 332, column: 45, scope: !116)
!134 = !DILocation(line: 334, column: 51, scope: !116)
!135 = !DILocation(line: 138, column: 36, scope: !116)
!136 = !DILocation(line: 236, column: 20, scope: !116)
!137 = !DILocation(line: 108, column: 5, scope: !116)
!138 = !DILocation(line: 109, column: 24, scope: !116)
!139 = !DILocation(line: 89, column: 39, scope: !116)
!140 = !DILocation(line: 260, column: 5, scope: !116)
!141 = !DILocation(line: 261, column: 5, scope: !116)
!142 = !DILocation(line: 336, column: 9, scope: !116)
!143 = !DILocation(line: 19, column: 5, scope: !116)
!144 = !DILocation(line: 185, column: 5, scope: !116)
!145 = !DILocation(line: 186, column: 5, scope: !116)
!146 = !DILocation(line: 196, column: 5, scope: !116)
!147 = !DILocation(line: 197, column: 5, scope: !116)
!148 = !DILocation(line: 201, column: 5, scope: !116)
!149 = !DILocation(line: 91, column: 20, scope: !116)
!150 = !DILocation(line: 208, column: 5, scope: !116)
!151 = !DILocation(line: 219, column: 5, scope: !116)
!152 = !DILocation(line: 220, column: 5, scope: !116)
!153 = !DILocation(line: 350, column: 28, scope: !116)
!154 = !DILocation(line: 133, column: 5, scope: !116)
!155 = !DILocation(line: 92, column: 9, scope: !116)
!156 = !DILocation(line: 358, column: 9, scope: !116)
!157 = !DILocation(line: 360, column: 20, scope: !116)
!158 = !DILocation(line: 79, column: 5, scope: !116)
!159 = !DILocation(line: 279, column: 5, scope: !116)
!160 = !DILocation(line: 295, column: 5, scope: !116)
!161 = !DILocation(line: 296, column: 5, scope: !116)
!162 = !DILocation(line: 298, column: 5, scope: !116)
!163 = distinct !DISubprogram(name: "test_evaluate_brdf", linkageName: "test_evaluate_brdf", scope: null, file: !164, line: 716, type: !6, scopeLine: 716, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!164 = !DIFile(filename: "brdf_sampler.impala", directory: "T\A7\CD\13\DAU\00\00\10 \ECK\DFU\00\00os/anydsl/rodent/src/render")
!165 = !DILocation(line: 716, column: 1, scope: !163)
!166 = !DILocation(line: 554, column: 48, scope: !163)
!167 = !DILocation(line: 82, column: 77, scope: !163)
!168 = !DILocation(line: 564, column: 19, scope: !163)
!169 = !DILocation(line: 565, column: 17, scope: !163)
!170 = !DILocation(line: 566, column: 19, scope: !163)
!171 = !DILocation(line: 567, column: 17, scope: !163)
!172 = !DILocation(line: 570, column: 26, scope: !163)
!173 = !DILocation(line: 571, column: 30, scope: !163)
!174 = !DILocation(line: 572, column: 25, scope: !163)
!175 = !DILocation(line: 572, column: 67, scope: !163)
!176 = !DILocation(line: 574, column: 23, scope: !163)
!177 = !DILocation(line: 576, column: 22, scope: !163)
!178 = !DILocation(line: 323, column: 5, scope: !163)
!179 = !DILocation(line: 323, column: 17, scope: !163)
!180 = !DILocation(line: 138, column: 13, scope: !163)
!181 = !DILocation(line: 139, column: 13, scope: !163)
!182 = !DILocation(line: 324, column: 37, scope: !163)
!183 = !DILocation(line: 332, column: 20, scope: !163)
!184 = !DILocation(line: 334, column: 27, scope: !163)
!185 = !DILocation(line: 336, column: 9, scope: !163)
!186 = !DILocation(line: 338, column: 27, scope: !163)
!187 = !DILocation(line: 343, column: 37, scope: !163)
!188 = !DILocation(line: 0, scope: !163)
!189 = !DILocation(line: 717, column: 15, scope: !163)
!190 = distinct !DISubprogram(name: "cpu_sort_primary", linkageName: "cpu_sort_primary", scope: null, file: !191, line: 35, type: !6, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!191 = !DIFile(filename: "mapping_cpu.impala", directory: "v\18\BA\13\DAU\00\00\10 \ECK\DFU\00\00os/anydsl/rodent/src/render")
!192 = !DILocation(line: 90, column: 1, scope: !190)
!193 = !DILocation(line: 91, column: 20, scope: !190)
!194 = !DILocation(line: 57, column: 9, scope: !190)
!195 = !DILocation(line: 57, column: 21, scope: !190)
!196 = !DILocation(line: 59, column: 27, scope: !190)
