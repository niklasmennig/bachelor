; ModuleID = '/home/niklas/repos/anydsl/rodent/build/tools/bench_interface/./bench_interface'
source_filename = "/home/niklas/repos/anydsl/rodent/build/tools/bench_interface/./bench_interface"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { %1, %1, %1, %2, %3, %4, %4, float }
%1 = type { float, float, float }
%2 = type { float, float }
%3 = type { [3 x %1] }
%4 = type { float, float, float }
%5 = type { [0 x %1]*, [0 x i32]*, [0 x %1]*, [0 x %2]*, %6, %6, %6 }
%6 = type { [0 x %4]*, %4, i32, i32, i32, i32 }
%7 = type { i32, %2 }

@0 = private unnamed_addr constant [13 x i8] c"lambda_37857\00", align 1
@1 = private unnamed_addr constant [84 x i8] c"/home/niklas/repos/anydsl/rodent/build/tools/bench_interface/./bench_interface.nvvm\00", align 1

define %0 @compute_shader_input(i1 %opt_37373, %5 %mesh_37374, %7 %tri_hit_37375) !dbg !4 {
compute_shader_input_start:
  %0 = alloca [3 x %1], align 4
  br label %compute_shader_input, !dbg !7

compute_shader_input:                             ; preds = %compute_shader_input_start
  %1 = extractvalue %7 %tri_hit_37375, 0, !dbg !8
  %2 = mul nsw i32 4, %1, !dbg !8
  %3 = add nsw i32 1, %2, !dbg !9
  %4 = extractvalue %5 %mesh_37374, 1, !dbg !10
  %5 = extractvalue %5 %mesh_37374, 0, !dbg !11
  %6 = add nsw i32 2, %2, !dbg !12
  %7 = getelementptr inbounds [0 x i32], [0 x i32]* %4, i64 0, i32 %2, !dbg !10
  %8 = getelementptr inbounds [0 x i32], [0 x i32]* %4, i64 0, i32 %3, !dbg !13
  %9 = getelementptr inbounds [0 x i32], [0 x i32]* %4, i64 0, i32 %6, !dbg !14
  %10 = load i32, i32* %7, align 4, !dbg !10
  %11 = getelementptr inbounds [0 x %1], [0 x %1]* %5, i64 0, i32 %10, !dbg !11
  %12 = load i32, i32* %8, align 4, !dbg !13
  %13 = getelementptr inbounds [0 x %1], [0 x %1]* %5, i64 0, i32 %12, !dbg !15
  %14 = load i32, i32* %9, align 4, !dbg !14
  %15 = getelementptr inbounds [0 x %1], [0 x %1]* %5, i64 0, i32 %14, !dbg !16
  %16 = load %1, %1* %11, align 4, !dbg !11
  %17 = load %1, %1* %13, align 4, !dbg !15
  %18 = extractvalue %1 %16, 0, !dbg !17
  %19 = extractvalue %1 %16, 1, !dbg !18
  %20 = extractvalue %1 %16, 2, !dbg !19
  %21 = load %1, %1* %15, align 4, !dbg !16
  %22 = extractvalue %1 %17, 0, !dbg !20
  %23 = extractvalue %1 %17, 1, !dbg !21
  %24 = extractvalue %1 %17, 2, !dbg !22
  %25 = fsub float %22, %18, !dbg !23
  %26 = fsub float %23, %19, !dbg !23
  %27 = fsub float %24, %20, !dbg !23
  %28 = extractvalue %1 %21, 0, !dbg !24
  %29 = extractvalue %1 %21, 1, !dbg !25
  %30 = extractvalue %1 %21, 2, !dbg !26
  %31 = fsub float %28, %18, !dbg !23
  %32 = fsub float %29, %19, !dbg !23
  %33 = fsub float %30, %20, !dbg !23
  %34 = fmul float %26, %31, !dbg !27
  %35 = fmul float %27, %31, !dbg !28
  %36 = fmul float %25, %32, !dbg !29
  %37 = fmul float %27, %32, !dbg !30
  %38 = fmul float %26, %33, !dbg !31
  %39 = fmul float %25, %33, !dbg !32
  %40 = fsub float %36, %34, !dbg !29
  %41 = fsub float %35, %39, !dbg !28
  %42 = fsub float %38, %37, !dbg !31
  %43 = fmul float %40, %40, !dbg !33
  %44 = fmul float %41, %41, !dbg !34
  %45 = fmul float %42, %42, !dbg !35
  %46 = fadd float %45, %44, !dbg !35
  %47 = fadd float %46, %43, !dbg !35
  %48 = call float @__nv_sqrtf(float %47), !dbg !36
  br label %vec3_len_cont, !dbg !36

vec3_len_cont:                                    ; preds = %compute_shader_input
  %vec3_len = phi float [ %48, %compute_shader_input ]
  %49 = extractvalue %5 %mesh_37374, 2, !dbg !37
  %50 = extractvalue %7 %tri_hit_37375, 1, !dbg !38
  %51 = getelementptr inbounds [0 x %1], [0 x %1]* %49, i64 0, i32 %10, !dbg !37
  %52 = getelementptr inbounds [0 x %1], [0 x %1]* %49, i64 0, i32 %14, !dbg !39
  %53 = extractvalue %2 %50, 1, !dbg !40
  %54 = getelementptr inbounds [0 x %1], [0 x %1]* %49, i64 0, i32 %12, !dbg !41
  %55 = load %1, %1* %51, align 4, !dbg !37
  %56 = extractvalue %2 %50, 0, !dbg !42
  %57 = fsub float 1.000000e+00, %56, !dbg !43
  %58 = load %1, %1* %54, align 4, !dbg !41
  %59 = extractvalue %1 %55, 2, !dbg !19
  %60 = extractvalue %1 %55, 0, !dbg !17
  %61 = extractvalue %1 %55, 1, !dbg !18
  %62 = fsub float %57, %53, !dbg !43
  %63 = fmul float %62, %59, !dbg !44
  %64 = fmul float %62, %60, !dbg !44
  %65 = fmul float %62, %61, !dbg !44
  %66 = load %1, %1* %52, align 4, !dbg !39
  %67 = extractvalue %1 %58, 2, !dbg !22
  %68 = extractvalue %1 %58, 0, !dbg !20
  %69 = extractvalue %1 %58, 1, !dbg !21
  %70 = fmul float %56, %67, !dbg !45
  %71 = fmul float %56, %68, !dbg !45
  %72 = fmul float %56, %69, !dbg !45
  %73 = extractvalue %1 %66, 2, !dbg !26
  %74 = extractvalue %1 %66, 0, !dbg !24
  %75 = extractvalue %1 %66, 1, !dbg !25
  %76 = fadd float %63, %70, !dbg !44
  %77 = fadd float %64, %71, !dbg !44
  %78 = fadd float %65, %72, !dbg !44
  %79 = fmul float %53, %73, !dbg !46
  %80 = fmul float %53, %74, !dbg !46
  %81 = fmul float %53, %75, !dbg !46
  %82 = fadd float %76, %79, !dbg !44
  %83 = fadd float %77, %80, !dbg !44
  %84 = fadd float %78, %81, !dbg !44
  %85 = fmul float %82, %82, !dbg !33
  %86 = fmul float %83, %83, !dbg !35
  %87 = fmul float %84, %84, !dbg !34
  %88 = fadd float %86, %87, !dbg !35
  %89 = fadd float %88, %85, !dbg !35
  %90 = call float @__nv_sqrtf(float %89), !dbg !36
  br label %vec3_len_cont1, !dbg !36

vec3_len_cont1:                                   ; preds = %vec3_len_cont
  %vec3_len2 = phi float [ %90, %vec3_len_cont ]
  %91 = extractvalue %5 %mesh_37374, 3, !dbg !47
  %92 = getelementptr inbounds [0 x %2], [0 x %2]* %91, i64 0, i32 %12, !dbg !48
  %93 = getelementptr inbounds [0 x %2], [0 x %2]* %91, i64 0, i32 %10, !dbg !47
  %94 = getelementptr inbounds [0 x %2], [0 x %2]* %91, i64 0, i32 %14, !dbg !49
  %95 = extractvalue %5 %mesh_37374, 4, !dbg !50
  %96 = load %2, %2* %93, align 4, !dbg !47
  %97 = load %2, %2* %92, align 4, !dbg !48
  %98 = extractvalue %2 %96, 0, !dbg !51
  %99 = extractvalue %2 %96, 1, !dbg !52
  %100 = load %2, %2* %94, align 4, !dbg !49
  %101 = extractvalue %2 %97, 0, !dbg !53
  %102 = extractvalue %2 %97, 1, !dbg !54
  %103 = fmul float %62, %98, !dbg !44
  %104 = fmul float %62, %99, !dbg !44
  %105 = fmul float %56, %101, !dbg !45
  %106 = fmul float %56, %102, !dbg !45
  %107 = fadd float %103, %105, !dbg !44
  %108 = fadd float %104, %106, !dbg !44
  %109 = extractvalue %2 %100, 0, !dbg !55
  %110 = extractvalue %2 %100, 1, !dbg !56
  %111 = fmul float %53, %109, !dbg !46
  %112 = fmul float %53, %110, !dbg !46
  %113 = fadd float %107, %111, !dbg !44
  %114 = fadd float %108, %112, !dbg !44
  %115 = insertvalue %2 undef, float %113, 0, !dbg !57
  %116 = insertvalue %2 %115, float %114, 1, !dbg !57
  %117 = call %4 @lookup_tex(i1 false, %6 %95, %2 %116), !dbg !58
  br label %lookup_tex_cont, !dbg !58

lookup_tex_cont:                                  ; preds = %vec3_len_cont1
  %kd = phi %4 [ %117, %vec3_len_cont1 ]
  %118 = extractvalue %5 %mesh_37374, 5, !dbg !59
  %119 = call %4 @lookup_tex(i1 false, %6 %118, %2 %116), !dbg !60
  br label %lookup_tex_cont3, !dbg !60

lookup_tex_cont3:                                 ; preds = %lookup_tex_cont
  %ks = phi %4 [ %119, %lookup_tex_cont ]
  %120 = extractvalue %5 %mesh_37374, 6, !dbg !61
  %121 = call %4 @lookup_tex(i1 false, %6 %120, %2 %116), !dbg !62
  br label %lookup_tex_cont4, !dbg !62

lookup_tex_cont4:                                 ; preds = %lookup_tex_cont3
  %lookup_tex = phi %4 [ %121, %lookup_tex_cont3 ]
  %122 = fmul float %53, %29, !dbg !46
  %123 = fmul float %53, %30, !dbg !46
  %124 = fmul float %56, %24, !dbg !45
  %125 = fdiv float 1.000000e+00, %vec3_len2, !dbg !63
  %126 = fmul float %53, %28, !dbg !46
  %127 = fmul float %84, %125, !dbg !64
  %128 = fmul float %62, %20, !dbg !44
  %129 = fmul float %62, %18, !dbg !44
  %130 = fmul float %82, %125, !dbg !64
  %131 = fmul float %62, %19, !dbg !44
  %132 = fmul float %56, %23, !dbg !45
  %133 = fmul float %83, %125, !dbg !64
  %134 = insertvalue %1 undef, float %133, 0, !dbg !65
  %135 = insertvalue %1 %134, float %127, 1, !dbg !65
  %136 = insertvalue %1 %135, float %130, 2, !dbg !65
  %137 = fmul float %56, %22, !dbg !45
  %138 = extractvalue %4 %lookup_tex, 0, !dbg !62
  %139 = fadd float %128, %124, !dbg !44
  %140 = fdiv float 1.000000e+00, %vec3_len, !dbg !63
  %141 = fadd float %139, %123, !dbg !44
  %142 = fmul float %127, %127, !dbg !66
  %143 = fmul float %133, %127, !dbg !67
  %144 = fsub float -0.000000e+00, %127, !dbg !68
  %145 = fadd float %129, %137, !dbg !44
  %146 = fcmp ole float 0.000000e+00, %130, !dbg !69
  %147 = fadd float %131, %132, !dbg !44
  %148 = fmul float %42, %140, !dbg !64
  %149 = fmul float %41, %140, !dbg !64
  %150 = fmul float %40, %140, !dbg !64
  %151 = fadd float %145, %126, !dbg !44
  %152 = select i1 %146, float 1.000000e+00, float -1.000000e+00, !dbg !70
  %153 = fadd float %147, %122, !dbg !44
  %154 = insertvalue %1 undef, float %148, 0, !dbg !65
  %155 = insertvalue %1 %154, float %149, 1, !dbg !65
  %156 = insertvalue %1 %155, float %150, 2, !dbg !65
  %157 = insertvalue %1 undef, float %151, 0, !dbg !71
  %158 = insertvalue %1 %157, float %153, 1, !dbg !71
  %159 = insertvalue %1 %158, float %141, 2, !dbg !71
  %160 = fadd float %152, %130, !dbg !72
  %161 = fmul float %152, %133, !dbg !73
  %162 = fsub float -0.000000e+00, %152, !dbg !74
  %a = fdiv float -1.000000e+00, %160, !dbg !75
  %163 = fmul float %161, %133, !dbg !73
  %164 = fmul float %162, %133, !dbg !74
  %b = fmul float %143, %a, !dbg !67
  %165 = fmul float %163, %a, !dbg !73
  %166 = fmul float %142, %a, !dbg !66
  %167 = fmul float %152, %b, !dbg !76
  %168 = fadd float 1.000000e+00, %165, !dbg !77
  %169 = fadd float %152, %166, !dbg !78
  %170 = insertvalue %1 undef, float %168, 0, !dbg !65
  %171 = insertvalue %1 %170, float %167, 1, !dbg !65
  %172 = insertvalue %1 %171, float %164, 2, !dbg !65
  %173 = insertvalue %1 undef, float %b, 0, !dbg !65
  %174 = insertvalue %1 %173, float %169, 1, !dbg !65
  %175 = insertvalue %1 %174, float %144, 2, !dbg !65
  %176 = insertvalue %1 undef, float %168, 0, !dbg !79
  %177 = insertvalue %1 %176, float %167, 1, !dbg !79
  %178 = insertvalue %1 %177, float %164, 2, !dbg !79
  %179 = getelementptr inbounds [3 x %1], [3 x %1]* %0, i64 0, i64 0, !dbg !79
  store %1 %172, %1* %179, !dbg !79
  %180 = getelementptr inbounds [3 x %1], [3 x %1]* %0, i64 0, i64 1, !dbg !79
  store %1 %175, %1* %180, !dbg !79
  %181 = getelementptr inbounds [3 x %1], [3 x %1]* %0, i64 0, i64 2, !dbg !79
  store %1 %136, %1* %181, !dbg !79
  %182 = load [3 x %1], [3 x %1]* %0, !dbg !79
  %183 = insertvalue %3 undef, [3 x %1] %182, 0, !dbg !80
  %184 = insertvalue %0 undef, %1 %159, 0, !dbg !81
  %185 = insertvalue %0 %184, %1 %156, 1, !dbg !81
  %186 = insertvalue %0 %185, %1 %136, 2, !dbg !81
  %187 = insertvalue %0 %186, %2 %50, 3, !dbg !81
  %188 = insertvalue %0 %187, %3 %183, 4, !dbg !81
  %189 = insertvalue %0 %188, %4 %kd, 5, !dbg !81
  %190 = insertvalue %0 %189, %4 %ks, 6, !dbg !81
  %191 = insertvalue %0 %190, float %138, 7, !dbg !81
  ret %0 %191, !dbg !82
}

declare float @__nv_sqrtf(float)

define %4 @lookup_tex(i1 %opt_37502, %6 %tex_37503, %2 %uv_37504) !dbg !83 {
lookup_tex_start:
  %uv_37518 = alloca %2, align 4
  br label %lookup_tex, !dbg !84

lookup_tex:                                       ; preds = %lookup_tex_start
  %0 = extractvalue %6 %tex_37503, 2, !dbg !85
  %1 = extractvalue %2 %uv_37504, 0, !dbg !86
  %2 = icmp eq i32 %0, 0, !dbg !85
  %3 = getelementptr inbounds %2, %2* %uv_37518, i32 0, i32 0, !dbg !87
  store %2 %uv_37504, %2* %uv_37518, align 4, !dbg !88
  %4 = getelementptr inbounds %2, %2* %uv_37518, i32 0, i32 1, !dbg !89
  br i1 %2, label %expr_true11, label %expr_false, !dbg !90

expr_false:                                       ; preds = %lookup_tex
  %5 = icmp eq i32 %0, 1, !dbg !91
  br i1 %5, label %expr_true9, label %expr_false1, !dbg !92

expr_false1:                                      ; preds = %expr_false
  %6 = fcmp olt float %1, 0.000000e+00, !dbg !93
  br i1 %6, label %expr_true8, label %expr_false2, !dbg !94

expr_false2:                                      ; preds = %expr_false1
  %7 = fcmp olt float 1.000000e+00, %1, !dbg !95
  br i1 %7, label %expr_true7, label %expr_false3, !dbg !96

expr_false3:                                      ; preds = %expr_false2
  %8 = extractvalue %2 %uv_37504, 1, !dbg !97
  %9 = fcmp olt float %8, 0.000000e+00, !dbg !97
  br i1 %9, label %expr_true6, label %expr_false4, !dbg !98

expr_false4:                                      ; preds = %expr_false3
  %10 = fcmp olt float 1.000000e+00, %8, !dbg !99
  br i1 %10, label %expr_true, label %expr_false5, !dbg !100

expr_false5:                                      ; preds = %expr_false4
  br label %if_join, !dbg !101

expr_true:                                        ; preds = %expr_false4
  br label %if_then, !dbg !102

expr_true6:                                       ; preds = %expr_false3
  br label %if_then, !dbg !102

expr_true7:                                       ; preds = %expr_false2
  br label %if_then, !dbg !102

expr_true8:                                       ; preds = %expr_false1
  br label %if_then, !dbg !102

if_then:                                          ; preds = %expr_true8, %expr_true7, %expr_true6, %expr_true
  %11 = extractvalue %6 %tex_37503, 1, !dbg !103
  ret %4 %11, !dbg !104

expr_true9:                                       ; preds = %expr_false
  %12 = call float @__nv_floorf(float %1), !dbg !105
  br label %_cont, !dbg !105

_cont:                                            ; preds = %expr_true9
  %13 = phi float [ %12, %expr_true9 ]
  %14 = fsub float %1, %13, !dbg !106
  store float %14, float* %3, align 4, !dbg !107
  %15 = load float, float* %4, align 4, !dbg !108
  %16 = call float @__nv_floorf(float %15), !dbg !105
  br label %_cont10, !dbg !105

_cont10:                                          ; preds = %_cont
  %17 = phi float [ %16, %_cont ]
  %18 = fsub float %15, %17, !dbg !106
  store float %18, float* %4, align 4, !dbg !109
  br label %if_join, !dbg !101

if_join:                                          ; preds = %_cont10, %expr_false5
  br label %if_join16, !dbg !101

expr_true11:                                      ; preds = %lookup_tex
  %19 = call float @__nv_fmaxf(float 0.000000e+00, float %1), !dbg !110
  br label %_cont12, !dbg !110

_cont12:                                          ; preds = %expr_true11
  %20 = phi float [ %19, %expr_true11 ]
  %21 = call float @__nv_fminf(float 1.000000e+00, float %20), !dbg !111
  br label %_cont13, !dbg !111

_cont13:                                          ; preds = %_cont12
  %22 = phi float [ %21, %_cont12 ]
  store float %22, float* %3, align 4, !dbg !87
  %23 = load float, float* %4, align 4, !dbg !112
  %24 = call float @__nv_fmaxf(float 0.000000e+00, float %23), !dbg !110
  br label %_cont14, !dbg !110

_cont14:                                          ; preds = %_cont13
  %25 = phi float [ %24, %_cont13 ]
  %26 = call float @__nv_fminf(float 1.000000e+00, float %25), !dbg !111
  br label %_cont15, !dbg !111

_cont15:                                          ; preds = %_cont14
  %27 = phi float [ %26, %_cont14 ]
  store float %27, float* %4, align 4, !dbg !89
  br label %if_join16, !dbg !101

if_join16:                                        ; preds = %_cont15, %if_join
  %28 = extractvalue %6 %tex_37503, 0, !dbg !113
  %29 = extractvalue %6 %tex_37503, 4, !dbg !114
  %30 = extractvalue %6 %tex_37503, 5, !dbg !115
  %31 = sub nsw i32 %30, 1, !dbg !116
  %32 = sub nsw i32 %29, 1, !dbg !117
  %33 = sitofp i32 %30 to float, !dbg !118
  %34 = sitofp i32 %29 to float, !dbg !119
  %35 = extractvalue %6 %tex_37503, 3, !dbg !120
  %36 = icmp eq i32 %35, 0, !dbg !120
  br i1 %36, label %expr_true22, label %expr_false17, !dbg !121

expr_false17:                                     ; preds = %if_join16
  %37 = load %2, %2* %uv_37518, align 4, !dbg !122
  %38 = extractvalue %2 %37, 0, !dbg !123
  %u = fmul float %38, %34, !dbg !123
  %39 = fptosi float %u to i32, !dbg !124
  %40 = call i32 @llvm.nvvm.min.i(i32 %39, i32 %32), !dbg !125
  br label %_cont18, !dbg !125

_cont18:                                          ; preds = %expr_false17
  %x0 = phi i32 [ %40, %expr_false17 ]
  %41 = extractvalue %2 %37, 1, !dbg !126
  %v = fmul float %41, %33, !dbg !126
  %42 = fptosi float %v to i32, !dbg !127
  %43 = call i32 @llvm.nvvm.min.i(i32 %42, i32 %31), !dbg !128
  br label %_cont19, !dbg !128

_cont19:                                          ; preds = %_cont18
  %y0 = phi i32 [ %43, %_cont18 ]
  %44 = add nsw i32 1, %x0, !dbg !129
  %45 = call i32 @llvm.nvvm.min.i(i32 %44, i32 %32), !dbg !130
  br label %_cont20, !dbg !130

_cont20:                                          ; preds = %_cont19
  %x1 = phi i32 [ %45, %_cont19 ]
  %46 = add nsw i32 1, %y0, !dbg !131
  %47 = call i32 @llvm.nvvm.min.i(i32 %46, i32 %31), !dbg !132
  br label %_cont21, !dbg !132

_cont21:                                          ; preds = %_cont20
  %y1 = phi i32 [ %47, %_cont20 ]
  %48 = mul nsw i32 %y1, %29, !dbg !133
  %49 = mul nsw i32 %y0, %29, !dbg !133
  %50 = add nsw i32 %x0, %49, !dbg !134
  %51 = add nsw i32 %x1, %49, !dbg !134
  %52 = add nsw i32 %x1, %48, !dbg !134
  %53 = getelementptr inbounds [0 x %4], [0 x %4]* %28, i64 0, i32 %50, !dbg !113
  %54 = sitofp i32 %39 to float, !dbg !135
  %55 = getelementptr inbounds [0 x %4], [0 x %4]* %28, i64 0, i32 %52, !dbg !113
  %56 = sitofp i32 %42 to float, !dbg !136
  %57 = add nsw i32 %x0, %48, !dbg !134
  %58 = getelementptr inbounds [0 x %4], [0 x %4]* %28, i64 0, i32 %51, !dbg !113
  %59 = load %4, %4* %53, align 4, !dbg !113
  %kx = fsub float %u, %54, !dbg !137
  %ky = fsub float %v, %56, !dbg !138
  %60 = getelementptr inbounds [0 x %4], [0 x %4]* %28, i64 0, i32 %57, !dbg !113
  %61 = fsub float 1.000000e+00, %kx, !dbg !139
  %62 = fsub float 1.000000e+00, %ky, !dbg !139
  %63 = load %4, %4* %58, align 4, !dbg !113
  %64 = extractvalue %4 %59, 0, !dbg !140
  %65 = extractvalue %4 %59, 1, !dbg !141
  %66 = extractvalue %4 %59, 2, !dbg !142
  %67 = fmul float %61, %65, !dbg !143
  %68 = fmul float %61, %66, !dbg !143
  %69 = fmul float %61, %64, !dbg !143
  %70 = load %4, %4* %60, align 4, !dbg !113
  %71 = extractvalue %4 %63, 0, !dbg !144
  %72 = extractvalue %4 %63, 1, !dbg !145
  %73 = extractvalue %4 %63, 2, !dbg !146
  %74 = fmul float %kx, %71, !dbg !147
  %75 = fmul float %kx, %72, !dbg !147
  %76 = fmul float %kx, %73, !dbg !147
  %77 = load %4, %4* %55, align 4, !dbg !113
  %78 = extractvalue %4 %70, 0, !dbg !148
  %79 = extractvalue %4 %70, 1, !dbg !149
  %80 = extractvalue %4 %70, 2, !dbg !150
  %81 = fadd float %69, %74, !dbg !143
  %82 = fadd float %67, %75, !dbg !143
  %83 = fadd float %68, %76, !dbg !143
  %84 = fmul float %61, %78, !dbg !143
  %85 = fmul float %61, %79, !dbg !143
  %86 = fmul float %61, %80, !dbg !143
  %87 = fmul float %62, %81, !dbg !143
  %88 = fmul float %62, %82, !dbg !143
  %89 = fmul float %62, %83, !dbg !143
  %90 = extractvalue %4 %77, 0, !dbg !151
  %91 = extractvalue %4 %77, 1, !dbg !152
  %92 = extractvalue %4 %77, 2, !dbg !153
  %93 = fmul float %kx, %90, !dbg !147
  %94 = fmul float %kx, %91, !dbg !147
  %95 = fmul float %kx, %92, !dbg !147
  %96 = fadd float %84, %93, !dbg !143
  %97 = fadd float %85, %94, !dbg !143
  %98 = fadd float %86, %95, !dbg !143
  %99 = fmul float %ky, %96, !dbg !147
  %100 = fmul float %ky, %97, !dbg !147
  %101 = fmul float %ky, %98, !dbg !147
  %102 = fadd float %87, %99, !dbg !143
  %103 = fadd float %88, %100, !dbg !143
  %104 = fadd float %89, %101, !dbg !143
  %105 = insertvalue %4 undef, float %102, 0, !dbg !154
  %106 = insertvalue %4 %105, float %103, 1, !dbg !154
  %107 = insertvalue %4 %106, float %104, 2, !dbg !154
  ret %4 %107, !dbg !155

expr_true22:                                      ; preds = %if_join16
  %108 = load %2, %2* %uv_37518, align 4, !dbg !156
  %109 = extractvalue %2 %108, 0, !dbg !157
  %110 = fmul float %109, %34, !dbg !157
  %111 = fptosi float %110 to i32, !dbg !158
  %112 = call i32 @llvm.nvvm.min.i(i32 %111, i32 %32), !dbg !159
  br label %_cont23, !dbg !159

_cont23:                                          ; preds = %expr_true22
  %113 = phi i32 [ %112, %expr_true22 ]
  %114 = extractvalue %2 %108, 1, !dbg !160
  %115 = fmul float %114, %33, !dbg !160
  %116 = fptosi float %115 to i32, !dbg !161
  %117 = call i32 @llvm.nvvm.min.i(i32 %116, i32 %31), !dbg !162
  br label %_cont24, !dbg !162

_cont24:                                          ; preds = %_cont23
  %118 = phi i32 [ %117, %_cont23 ]
  %119 = mul nsw i32 %118, %29, !dbg !133
  %120 = add nsw i32 %113, %119, !dbg !134
  %121 = getelementptr inbounds [0 x %4], [0 x %4]* %28, i64 0, i32 %120, !dbg !113
  %122 = load %4, %4* %121, align 4, !dbg !113
  ret %4 %122, !dbg !163
}

declare float @__nv_floorf(float)

declare float @__nv_fmaxf(float, float)

declare float @__nv_fminf(float, float)

declare i32 @llvm.nvvm.min.i(i32, i32)

define void @bench_interface(%5* %mesh_ptr_37832, [0 x %7]* %tri_hits_37833, [0 x %1]* %in_dirs_37834, [0 x %1]* %out_dirs_37835, [0 x %4]* %colors_37836, i32 %n_37837) !dbg !164 {
bench_interface_start:
  %0 = alloca [3 x i32], align 4
  %1 = alloca [3 x i32], align 4
  %mesh = alloca %5, align 8
  %colors = alloca i8*, align 8
  %out_dirs = alloca i8*, align 8
  %in_dirs = alloca i8*, align 8
  %tri_hits = alloca i8*, align 8
  %types = alloca [5 x i8], align 1
  %allocs = alloca [5 x i32], align 4
  %aligns = alloca [5 x i32], align 4
  %sizes = alloca [5 x i32], align 4
  %args = alloca [5 x i8*], align 8
  br label %bench_interface, !dbg !165

bench_interface:                                  ; preds = %bench_interface_start
  %2 = insertvalue { i32, i32, i32 } undef, i32 %n_37837, 0, !dbg !166
  %3 = insertvalue { i32, i32, i32 } %2, i32 1, 1, !dbg !166
  %4 = insertvalue { i32, i32, i32 } %3, i32 1, 2, !dbg !166
  %5 = load %5, %5* %mesh_ptr_37832, align 8, !dbg !167
  %6 = bitcast [0 x %7]* %tri_hits_37833 to i8*, !dbg !168
  store i8* %6, i8** %tri_hits, !dbg !168
  %7 = bitcast i8** %tri_hits to i8*, !dbg !168
  %8 = getelementptr inbounds [5 x i8*], [5 x i8*]* %args, i32 0, i32 0, !dbg !168
  %9 = getelementptr inbounds [5 x i32], [5 x i32]* %sizes, i32 0, i32 0, !dbg !168
  %10 = getelementptr inbounds [5 x i32], [5 x i32]* %aligns, i32 0, i32 0, !dbg !168
  %11 = getelementptr inbounds [5 x i32], [5 x i32]* %allocs, i32 0, i32 0, !dbg !168
  %12 = getelementptr inbounds [5 x i8], [5 x i8]* %types, i32 0, i32 0, !dbg !168
  store i8* %7, i8** %8, !dbg !168
  store i32 8, i32* %9, !dbg !168
  store i32 8, i32* %10, !dbg !168
  store i32 8, i32* %11, !dbg !168
  store i8 1, i8* %12, !dbg !168
  %13 = bitcast [0 x %1]* %in_dirs_37834 to i8*, !dbg !168
  store i8* %13, i8** %in_dirs, !dbg !168
  %14 = bitcast i8** %in_dirs to i8*, !dbg !168
  %15 = getelementptr inbounds [5 x i8*], [5 x i8*]* %args, i32 0, i32 1, !dbg !168
  %16 = getelementptr inbounds [5 x i32], [5 x i32]* %sizes, i32 0, i32 1, !dbg !168
  %17 = getelementptr inbounds [5 x i32], [5 x i32]* %aligns, i32 0, i32 1, !dbg !168
  %18 = getelementptr inbounds [5 x i32], [5 x i32]* %allocs, i32 0, i32 1, !dbg !168
  %19 = getelementptr inbounds [5 x i8], [5 x i8]* %types, i32 0, i32 1, !dbg !168
  store i8* %14, i8** %15, !dbg !168
  store i32 8, i32* %16, !dbg !168
  store i32 8, i32* %17, !dbg !168
  store i32 8, i32* %18, !dbg !168
  store i8 1, i8* %19, !dbg !168
  %20 = bitcast [0 x %1]* %out_dirs_37835 to i8*, !dbg !168
  store i8* %20, i8** %out_dirs, !dbg !168
  %21 = bitcast i8** %out_dirs to i8*, !dbg !168
  %22 = getelementptr inbounds [5 x i8*], [5 x i8*]* %args, i32 0, i32 2, !dbg !168
  %23 = getelementptr inbounds [5 x i32], [5 x i32]* %sizes, i32 0, i32 2, !dbg !168
  %24 = getelementptr inbounds [5 x i32], [5 x i32]* %aligns, i32 0, i32 2, !dbg !168
  %25 = getelementptr inbounds [5 x i32], [5 x i32]* %allocs, i32 0, i32 2, !dbg !168
  %26 = getelementptr inbounds [5 x i8], [5 x i8]* %types, i32 0, i32 2, !dbg !168
  store i8* %21, i8** %22, !dbg !168
  store i32 8, i32* %23, !dbg !168
  store i32 8, i32* %24, !dbg !168
  store i32 8, i32* %25, !dbg !168
  store i8 1, i8* %26, !dbg !168
  %27 = bitcast [0 x %4]* %colors_37836 to i8*, !dbg !168
  store i8* %27, i8** %colors, !dbg !168
  %28 = bitcast i8** %colors to i8*, !dbg !168
  %29 = getelementptr inbounds [5 x i8*], [5 x i8*]* %args, i32 0, i32 3, !dbg !168
  %30 = getelementptr inbounds [5 x i32], [5 x i32]* %sizes, i32 0, i32 3, !dbg !168
  %31 = getelementptr inbounds [5 x i32], [5 x i32]* %aligns, i32 0, i32 3, !dbg !168
  %32 = getelementptr inbounds [5 x i32], [5 x i32]* %allocs, i32 0, i32 3, !dbg !168
  %33 = getelementptr inbounds [5 x i8], [5 x i8]* %types, i32 0, i32 3, !dbg !168
  store i8* %28, i8** %29, !dbg !168
  store i32 8, i32* %30, !dbg !168
  store i32 8, i32* %31, !dbg !168
  store i32 8, i32* %32, !dbg !168
  store i8 1, i8* %33, !dbg !168
  store %5 %5, %5* %mesh, !dbg !168
  %34 = bitcast %5* %mesh to i8*, !dbg !168
  %35 = getelementptr inbounds [5 x i8*], [5 x i8*]* %args, i32 0, i32 4, !dbg !168
  %36 = getelementptr inbounds [5 x i32], [5 x i32]* %sizes, i32 0, i32 4, !dbg !168
  %37 = getelementptr inbounds [5 x i32], [5 x i32]* %aligns, i32 0, i32 4, !dbg !168
  %38 = getelementptr inbounds [5 x i32], [5 x i32]* %allocs, i32 0, i32 4, !dbg !168
  %39 = getelementptr inbounds [5 x i8], [5 x i8]* %types, i32 0, i32 4, !dbg !168
  store i8* %34, i8** %35, !dbg !168
  store i32 152, i32* %36, !dbg !168
  store i32 8, i32* %37, !dbg !168
  store i32 152, i32* %38, !dbg !168
  store i8 2, i8* %39, !dbg !168
  %40 = insertvalue [3 x i32] undef, i32 %n_37837, 0, !dbg !168
  %41 = insertvalue [3 x i32] %40, i32 1, 1, !dbg !168
  %42 = insertvalue [3 x i32] %41, i32 1, 2, !dbg !168
  store [3 x i32] %42, [3 x i32]* %1, !dbg !168
  store [3 x i32] [i32 64, i32 1, i32 1], [3 x i32]* %0, !dbg !168
  %43 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i32 0, i32 0, !dbg !168
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %0, i32 0, i32 0, !dbg !168
  %45 = getelementptr inbounds [5 x i8*], [5 x i8*]* %args, i32 0, i32 0, !dbg !168
  %46 = getelementptr inbounds [5 x i32], [5 x i32]* %sizes, i32 0, i32 0, !dbg !168
  %47 = getelementptr inbounds [5 x i32], [5 x i32]* %aligns, i32 0, i32 0, !dbg !168
  %48 = getelementptr inbounds [5 x i32], [5 x i32]* %allocs, i32 0, i32 0, !dbg !168
  %49 = getelementptr inbounds [5 x i8], [5 x i8]* %types, i32 0, i32 0, !dbg !168
  call void @anydsl_launch_kernel(i32 1, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i32 0, i32 0), i32* %43, i32* %44, i8** %45, i32* %46, i32* %47, i32* %48, i8* %49, i32 5), !dbg !168
  br label %break, !dbg !168

break:                                            ; preds = %bench_interface
  call void @anydsl_synchronize(i32 1), !dbg !169
  br label %return, !dbg !169

return:                                           ; preds = %break
  ret void, !dbg !165
}

declare void @anydsl_launch_kernel(i32, i8*, i8*, i32*, i32*, i8**, i32*, i32*, i32*, i8*, i32)

declare void @anydsl_synchronize(i32)

define %4 @shade(i1 %opt_37816, %0 %input_37817, %1 %in_dir_37818, %1 %out_dir_37819) !dbg !170 {
shade_start:
  br label %shade, !dbg !171

shade:                                            ; preds = %shade_start
  %0 = extractvalue %0 %input_37817, 5, !dbg !172
  %1 = extractvalue %4 %0, 1, !dbg !173
  %2 = extractvalue %4 %0, 2, !dbg !174
  %3 = extractvalue %4 %0, 0, !dbg !175
  %4 = fmul float 0x3FD45F3060000000, %1, !dbg !173
  %5 = fmul float 0x3FD45F3060000000, %2, !dbg !174
  %6 = fmul float 0x3FD45F3060000000, %3, !dbg !175
  %7 = insertvalue %4 undef, float %6, 0, !dbg !176
  %8 = insertvalue %4 %7, float %4, 1, !dbg !176
  %9 = insertvalue %4 %8, float %5, 2, !dbg !176
  ret %4 %9, !dbg !177
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C, file: !2, producer: "Impala", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !3)
!2 = !DIFile(filename: "/home/niklas/repos/anydsl/rodent/build/tools/bench_interface/./bench_interface", directory: "")
!3 = !{}
!4 = distinct !DISubprogram(name: "compute_shader_input", linkageName: "compute_shader_input", scope: null, file: !5, line: 92, type: !6, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DIFile(filename: "bench_interface.impala", directory: "/home/niklas/repos/anydsl/rodent/tools/bench_interface")
!6 = !DISubroutineType(types: !3)
!7 = !DILocation(line: 92, column: 1, scope: !4)
!8 = !DILocation(line: 93, column: 27, scope: !4)
!9 = !DILocation(line: 94, column: 27, scope: !4)
!10 = !DILocation(line: 93, column: 14, scope: !4)
!11 = !DILocation(line: 96, column: 14, scope: !4)
!12 = !DILocation(line: 95, column: 27, scope: !4)
!13 = !DILocation(line: 94, column: 14, scope: !4)
!14 = !DILocation(line: 95, column: 14, scope: !4)
!15 = !DILocation(line: 97, column: 14, scope: !4)
!16 = !DILocation(line: 98, column: 14, scope: !4)
!17 = !DILocation(line: 97, column: 18, scope: !4)
!18 = !DILocation(line: 98, column: 18, scope: !4)
!19 = !DILocation(line: 99, column: 18, scope: !4)
!20 = !DILocation(line: 97, column: 23, scope: !4)
!21 = !DILocation(line: 98, column: 23, scope: !4)
!22 = !DILocation(line: 99, column: 23, scope: !4)
!23 = !DILocation(line: 42, column: 64, scope: !4)
!24 = !DILocation(line: 97, column: 28, scope: !4)
!25 = !DILocation(line: 98, column: 28, scope: !4)
!26 = !DILocation(line: 99, column: 28, scope: !4)
!27 = !DILocation(line: 66, column: 27, scope: !4)
!28 = !DILocation(line: 65, column: 15, scope: !4)
!29 = !DILocation(line: 66, column: 15, scope: !4)
!30 = !DILocation(line: 64, column: 27, scope: !4)
!31 = !DILocation(line: 64, column: 15, scope: !4)
!32 = !DILocation(line: 65, column: 27, scope: !4)
!33 = !DILocation(line: 60, column: 65, scope: !4)
!34 = !DILocation(line: 60, column: 53, scope: !4)
!35 = !DILocation(line: 60, column: 41, scope: !4)
!36 = !DILocation(line: 78, column: 50, scope: !4)
!37 = !DILocation(line: 103, column: 55, scope: !4)
!38 = !DILocation(line: 99, column: 14, scope: !4)
!39 = !DILocation(line: 103, column: 91, scope: !4)
!40 = !DILocation(line: 101, column: 52, scope: !4)
!41 = !DILocation(line: 103, column: 73, scope: !4)
!42 = !DILocation(line: 101, column: 46, scope: !4)
!43 = !DILocation(line: 123, column: 6, scope: !4)
!44 = !DILocation(line: 123, column: 5, scope: !4)
!45 = !DILocation(line: 123, column: 28, scope: !4)
!46 = !DILocation(line: 123, column: 37, scope: !4)
!47 = !DILocation(line: 104, column: 34, scope: !4)
!48 = !DILocation(line: 104, column: 54, scope: !4)
!49 = !DILocation(line: 104, column: 74, scope: !4)
!50 = !DILocation(line: 106, column: 34, scope: !4)
!51 = !DILocation(line: 91, column: 18, scope: !4)
!52 = !DILocation(line: 92, column: 18, scope: !4)
!53 = !DILocation(line: 91, column: 23, scope: !4)
!54 = !DILocation(line: 92, column: 23, scope: !4)
!55 = !DILocation(line: 91, column: 28, scope: !4)
!56 = !DILocation(line: 92, column: 28, scope: !4)
!57 = !DILocation(line: 90, column: 5, scope: !4)
!58 = !DILocation(line: 106, column: 14, scope: !4)
!59 = !DILocation(line: 107, column: 34, scope: !4)
!60 = !DILocation(line: 107, column: 14, scope: !4)
!61 = !DILocation(line: 108, column: 34, scope: !4)
!62 = !DILocation(line: 108, column: 14, scope: !4)
!63 = !DILocation(line: 82, column: 70, scope: !4)
!64 = !DILocation(line: 45, column: 64, scope: !4)
!65 = !DILocation(line: 20, column: 49, scope: !4)
!66 = !DILocation(line: 35, column: 34, scope: !4)
!67 = !DILocation(line: 32, column: 13, scope: !4)
!68 = !DILocation(line: 35, column: 49, scope: !4)
!69 = !DILocation(line: 30, column: 23, scope: !4)
!70 = !DILocation(line: 30, column: 16, scope: !4)
!71 = !DILocation(line: 96, column: 5, scope: !4)
!72 = !DILocation(line: 31, column: 22, scope: !4)
!73 = !DILocation(line: 34, column: 31, scope: !4)
!74 = !DILocation(line: 34, column: 63, scope: !4)
!75 = !DILocation(line: 31, column: 13, scope: !4)
!76 = !DILocation(line: 34, column: 53, scope: !4)
!77 = !DILocation(line: 34, column: 24, scope: !4)
!78 = !DILocation(line: 35, column: 27, scope: !4)
!79 = !DILocation(line: 37, column: 14, scope: !4)
!80 = !DILocation(line: 36, column: 5, scope: !4)
!81 = !DILocation(line: 112, column: 5, scope: !4)
!82 = !DILocation(line: 122, column: 1, scope: !4)
!83 = distinct !DISubprogram(name: "lookup_tex", linkageName: "lookup_tex", scope: null, file: !5, line: 67, type: !6, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!84 = !DILocation(line: 67, column: 1, scope: !83)
!85 = !DILocation(line: 68, column: 8, scope: !83)
!86 = !DILocation(line: 70, column: 34, scope: !83)
!87 = !DILocation(line: 70, column: 9, scope: !83)
!88 = !DILocation(line: 67, column: 50, scope: !83)
!89 = !DILocation(line: 71, column: 9, scope: !83)
!90 = !DILocation(line: 68, column: 33, scope: !83)
!91 = !DILocation(line: 72, column: 15, scope: !83)
!92 = !DILocation(line: 72, column: 41, scope: !83)
!93 = !DILocation(line: 77, column: 12, scope: !83)
!94 = !DILocation(line: 77, column: 22, scope: !83)
!95 = !DILocation(line: 77, column: 27, scope: !83)
!96 = !DILocation(line: 77, column: 37, scope: !83)
!97 = !DILocation(line: 78, column: 12, scope: !83)
!98 = !DILocation(line: 78, column: 22, scope: !83)
!99 = !DILocation(line: 78, column: 27, scope: !83)
!100 = !DILocation(line: 78, column: 37, scope: !83)
!101 = !DILocation(line: 81, column: 5, scope: !83)
!102 = !DILocation(line: 1, column: 1, scope: !83)
!103 = !DILocation(line: 79, column: 20, scope: !83)
!104 = !DILocation(line: 79, column: 13, scope: !83)
!105 = !DILocation(line: 49, column: 34, scope: !83)
!106 = !DILocation(line: 49, column: 30, scope: !83)
!107 = !DILocation(line: 74, column: 9, scope: !83)
!108 = !DILocation(line: 75, column: 34, scope: !83)
!109 = !DILocation(line: 75, column: 9, scope: !83)
!110 = !DILocation(line: 41, column: 46, scope: !83)
!111 = !DILocation(line: 41, column: 29, scope: !83)
!112 = !DILocation(line: 71, column: 34, scope: !83)
!113 = !DILocation(line: 82, column: 35, scope: !83)
!114 = !DILocation(line: 82, column: 54, scope: !83)
!115 = !DILocation(line: 82, column: 77, scope: !83)
!116 = !DILocation(line: 59, column: 64, scope: !83)
!117 = !DILocation(line: 58, column: 64, scope: !83)
!118 = !DILocation(line: 59, column: 37, scope: !83)
!119 = !DILocation(line: 58, column: 37, scope: !83)
!120 = !DILocation(line: 83, column: 8, scope: !83)
!121 = !DILocation(line: 83, column: 37, scope: !83)
!122 = !DILocation(line: 88, column: 29, scope: !83)
!123 = !DILocation(line: 65, column: 17, scope: !83)
!124 = !DILocation(line: 67, column: 27, scope: !83)
!125 = !DILocation(line: 67, column: 18, scope: !83)
!126 = !DILocation(line: 66, column: 17, scope: !83)
!127 = !DILocation(line: 68, column: 27, scope: !83)
!128 = !DILocation(line: 68, column: 18, scope: !83)
!129 = !DILocation(line: 69, column: 27, scope: !83)
!130 = !DILocation(line: 69, column: 18, scope: !83)
!131 = !DILocation(line: 70, column: 27, scope: !83)
!132 = !DILocation(line: 70, column: 18, scope: !83)
!133 = !DILocation(line: 82, column: 50, scope: !83)
!134 = !DILocation(line: 82, column: 46, scope: !83)
!135 = !DILocation(line: 71, column: 23, scope: !83)
!136 = !DILocation(line: 72, column: 23, scope: !83)
!137 = !DILocation(line: 71, column: 18, scope: !83)
!138 = !DILocation(line: 72, column: 18, scope: !83)
!139 = !DILocation(line: 119, column: 6, scope: !83)
!140 = !DILocation(line: 80, column: 27, scope: !83)
!141 = !DILocation(line: 81, column: 27, scope: !83)
!142 = !DILocation(line: 82, column: 27, scope: !83)
!143 = !DILocation(line: 119, column: 5, scope: !83)
!144 = !DILocation(line: 80, column: 34, scope: !83)
!145 = !DILocation(line: 81, column: 34, scope: !83)
!146 = !DILocation(line: 82, column: 34, scope: !83)
!147 = !DILocation(line: 119, column: 22, scope: !83)
!148 = !DILocation(line: 80, column: 41, scope: !83)
!149 = !DILocation(line: 81, column: 41, scope: !83)
!150 = !DILocation(line: 82, column: 41, scope: !83)
!151 = !DILocation(line: 80, column: 48, scope: !83)
!152 = !DILocation(line: 81, column: 48, scope: !83)
!153 = !DILocation(line: 82, column: 48, scope: !83)
!154 = !DILocation(line: 8, column: 5, scope: !83)
!155 = !DILocation(line: 13, column: 1, scope: !83)
!156 = !DILocation(line: 85, column: 29, scope: !83)
!157 = !DILocation(line: 58, column: 30, scope: !83)
!158 = !DILocation(line: 58, column: 29, scope: !83)
!159 = !DILocation(line: 58, column: 20, scope: !83)
!160 = !DILocation(line: 59, column: 30, scope: !83)
!161 = !DILocation(line: 59, column: 29, scope: !83)
!162 = !DILocation(line: 59, column: 20, scope: !83)
!163 = !DILocation(line: 82, column: 63, scope: !83)
!164 = distinct !DISubprogram(name: "bench_interface", linkageName: "bench_interface", scope: null, file: !5, line: 137, type: !6, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!165 = !DILocation(line: 137, column: 1, scope: !164)
!166 = !DILocation(line: 58, column: 17, scope: !164)
!167 = !DILocation(line: 138, column: 16, scope: !164)
!168 = !DILocation(line: 622, column: 13, scope: !164)
!169 = !DILocation(line: 68, column: 40, scope: !164)
!170 = distinct !DISubprogram(name: "shade", linkageName: "shade", scope: null, file: !5, line: 124, type: !6, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!171 = !DILocation(line: 124, column: 1, scope: !170)
!172 = !DILocation(line: 133, column: 46, scope: !170)
!173 = !DILocation(line: 24, column: 25, scope: !170)
!174 = !DILocation(line: 24, column: 34, scope: !170)
!175 = !DILocation(line: 24, column: 16, scope: !170)
!176 = !DILocation(line: 8, column: 5, scope: !170)
!177 = !DILocation(line: 13, column: 1, scope: !170)
