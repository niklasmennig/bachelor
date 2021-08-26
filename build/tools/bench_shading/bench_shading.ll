; ModuleID = '/home/niklas/repos/anydsl/rodent/build/tools/bench_shading/./bench_shading'
source_filename = "/home/niklas/repos/anydsl/rodent/build/tools/bench_shading/./bench_shading"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { %1, [0 x i32]*, [0 x i32]*, [0 x float]*, [0 x float]*, [0 x float]*, [0 x i32]*, [0 x float]*, [0 x float]*, [0 x float]*, [0 x float]*, [0 x i32]*, i32, i32 }
%1 = type { [0 x i32]*, [0 x float]*, [0 x float]*, [0 x float]*, [0 x float]*, [0 x float]*, [0 x float]*, [0 x float]*, [0 x float]* }
%2 = type { float, float, float }
%3 = type { float, float }
%4 = type { i32, %5, float, i32 }
%5 = type { float, float, float }
%6 = type { %2, float, float, %5 }

define i32 @cpu_sort_primary(%0* %primary_1050036, [0 x i32]* %ray_begins_1050037, [0 x i32]* %ray_ends_1050038, i32 %num_geometries_1050039) !dbg !4 {
cpu_sort_primary_start:
  %j_1050108 = alloca i32, align 4
  %n_1050083 = alloca i32, align 4
  br label %cpu_sort_primary, !dbg !7

cpu_sort_primary:                                 ; preds = %cpu_sort_primary_start
  %0 = add nsw i32 1, %num_geometries_1050039, !dbg !8
  br label %unroll_step, !dbg !9

unroll_step:                                      ; preds = %expr_true16, %cpu_sort_primary
  %lower = phi i32 [ %202, %expr_true16 ], [ 0, %cpu_sort_primary ]
  %1 = icmp slt i32 %lower, %0, !dbg !10
  br i1 %1, label %expr_true16, label %expr_false, !dbg !11

expr_false:                                       ; preds = %unroll_step
  %2 = getelementptr inbounds %0, %0* %primary_1050036, i32 0, i32 12, !dbg !12
  %3 = load i32, i32* %2, align 4, !dbg !12
  %4 = getelementptr inbounds %0, %0* %primary_1050036, i32 0, i32 1, !dbg !13
  br label %unroll_step1, !dbg !9

unroll_step1:                                     ; preds = %expr_true15, %expr_false
  %lower2 = phi i32 [ %196, %expr_true15 ], [ 0, %expr_false ]
  %5 = icmp slt i32 %lower2, %3, !dbg !10
  br i1 %5, label %expr_true15, label %expr_false3, !dbg !11

expr_false3:                                      ; preds = %unroll_step1
  store i32 0, i32* %n_1050083, align 4, !dbg !14
  br label %unroll_step4, !dbg !9

unroll_step4:                                     ; preds = %expr_true14, %expr_false3
  %lower5 = phi i32 [ %188, %expr_true14 ], [ 0, %expr_false3 ]
  %6 = icmp slt i32 %lower5, %0, !dbg !10
  br i1 %6, label %expr_true14, label %expr_false6, !dbg !11

expr_false6:                                      ; preds = %unroll_step4
  %7 = getelementptr inbounds %0, %0* %primary_1050036, i32 0, i32 2, !dbg !15
  %8 = getelementptr inbounds %0, %0* %primary_1050036, i32 0, i32 10, !dbg !16
  %9 = getelementptr inbounds %0, %0* %primary_1050036, i32 0, i32 8, !dbg !17
  %10 = getelementptr inbounds %0, %0* %primary_1050036, i32 0, i32 7, !dbg !18
  %11 = getelementptr inbounds %0, %0* %primary_1050036, i32 0, i32 0, !dbg !19
  %12 = getelementptr inbounds %0, %0* %primary_1050036, i32 0, i32 4, !dbg !20
  %13 = getelementptr inbounds %1, %1* %11, i32 0, i32 2, !dbg !21
  %14 = getelementptr inbounds %0, %0* %primary_1050036, i32 0, i32 3, !dbg !22
  %15 = getelementptr inbounds %0, %0* %primary_1050036, i32 0, i32 9, !dbg !23
  %16 = getelementptr inbounds %0, %0* %primary_1050036, i32 0, i32 6, !dbg !24
  %17 = getelementptr inbounds %1, %1* %11, i32 0, i32 3, !dbg !25
  %18 = getelementptr inbounds %0, %0* %primary_1050036, i32 0, i32 5, !dbg !26
  %19 = getelementptr inbounds %1, %1* %11, i32 0, i32 7, !dbg !27
  %20 = getelementptr inbounds %1, %1* %11, i32 0, i32 6, !dbg !28
  %21 = getelementptr inbounds %1, %1* %11, i32 0, i32 8, !dbg !29
  %22 = getelementptr inbounds %0, %0* %primary_1050036, i32 0, i32 11, !dbg !30
  %23 = getelementptr inbounds %1, %1* %11, i32 0, i32 1, !dbg !31
  %24 = getelementptr inbounds %1, %1* %11, i32 0, i32 5, !dbg !32
  %25 = getelementptr inbounds %1, %1* %11, i32 0, i32 0, !dbg !19
  %26 = getelementptr inbounds %1, %1* %11, i32 0, i32 4, !dbg !33
  br label %unroll_step7, !dbg !9

unroll_step7:                                     ; preds = %expr_false10, %expr_false6
  %lower8 = phi i32 [ %37, %expr_false10 ], [ 0, %expr_false6 ]
  %27 = icmp slt i32 %lower8, %num_geometries_1050039, !dbg !10
  br i1 %27, label %expr_true, label %expr_false9, !dbg !11

expr_false9:                                      ; preds = %unroll_step7
  %28 = sub nsw i32 %num_geometries_1050039, 1, !dbg !34
  %29 = getelementptr inbounds [0 x i32], [0 x i32]* %ray_ends_1050038, i64 0, i32 %28, !dbg !35
  %30 = load i32, i32* %29, align 4, !dbg !35
  ret i32 %30, !dbg !36

expr_true:                                        ; preds = %unroll_step7
  %31 = getelementptr inbounds [0 x i32], [0 x i32]* %ray_begins_1050037, i64 0, i32 %lower8, !dbg !37
  %32 = getelementptr inbounds [0 x i32], [0 x i32]* %ray_ends_1050038, i64 0, i32 %lower8, !dbg !38
  %33 = load i32, i32* %31, align 4, !dbg !37
  %34 = load i32, i32* %32, align 4, !dbg !38
  store i32 %33, i32* %j_1050108, align 4, !dbg !39
  br label %while_head, !dbg !40

while_head:                                       ; preds = %if_join, %expr_true
  %35 = load i32, i32* %j_1050108, align 4, !dbg !41
  %36 = icmp slt i32 %35, %34, !dbg !41
  br i1 %36, label %expr_true11, label %expr_false10, !dbg !40

expr_false10:                                     ; preds = %while_head
  %37 = add nsw i32 1, %lower8, !dbg !42
  br label %unroll_step7, !dbg !43

expr_true11:                                      ; preds = %while_head
  %38 = load [0 x i32]*, [0 x i32]** %4, align 8, !dbg !44
  %39 = load i32, i32* %j_1050108, align 4, !dbg !45
  %40 = getelementptr inbounds [0 x i32], [0 x i32]* %38, i64 0, i32 %39, !dbg !44
  %41 = load i32, i32* %40, align 4, !dbg !44
  %42 = icmp ne i32 %41, %lower8, !dbg !46
  br i1 %42, label %expr_true13, label %expr_false12, !dbg !47

expr_false12:                                     ; preds = %expr_true11
  %43 = load i32, i32* %j_1050108, align 4, !dbg !48
  %44 = add nsw i32 1, %43, !dbg !48
  store i32 %44, i32* %j_1050108, align 4, !dbg !48
  br label %if_join, !dbg !49

expr_true13:                                      ; preds = %expr_true11
  %45 = getelementptr inbounds [0 x i32], [0 x i32]* %ray_begins_1050037, i64 0, i32 %41, !dbg !50
  %46 = load i32, i32* %45, align 4, !dbg !50
  %47 = add nsw i32 1, %46, !dbg !50
  store i32 %47, i32* %45, align 4, !dbg !50
  %48 = load [0 x i32]*, [0 x i32]** %25, align 8, !dbg !19
  %49 = getelementptr inbounds [0 x i32], [0 x i32]* %48, i64 0, i32 %46, !dbg !19
  %50 = load [0 x i32]*, [0 x i32]** %25, align 8, !dbg !51
  %51 = load i32, i32* %j_1050108, align 4, !dbg !52
  %52 = getelementptr inbounds [0 x i32], [0 x i32]* %50, i64 0, i32 %51, !dbg !51
  %53 = load i32, i32* %49, align 4, !dbg !53
  %54 = load i32, i32* %52, align 4, !dbg !54
  store i32 %54, i32* %49, align 4, !dbg !55
  store i32 %53, i32* %52, align 4, !dbg !56
  %55 = load [0 x float]*, [0 x float]** %23, align 8, !dbg !31
  %56 = getelementptr inbounds [0 x float], [0 x float]* %55, i64 0, i32 %46, !dbg !31
  %57 = load [0 x float]*, [0 x float]** %23, align 8, !dbg !57
  %58 = load i32, i32* %j_1050108, align 4, !dbg !58
  %59 = getelementptr inbounds [0 x float], [0 x float]* %57, i64 0, i32 %58, !dbg !57
  %60 = load float, float* %56, align 4, !dbg !59
  %61 = load float, float* %59, align 4, !dbg !60
  store float %61, float* %56, align 4, !dbg !61
  store float %60, float* %59, align 4, !dbg !62
  %62 = load [0 x float]*, [0 x float]** %13, align 8, !dbg !21
  %63 = getelementptr inbounds [0 x float], [0 x float]* %62, i64 0, i32 %46, !dbg !21
  %64 = load [0 x float]*, [0 x float]** %13, align 8, !dbg !63
  %65 = load i32, i32* %j_1050108, align 4, !dbg !64
  %66 = getelementptr inbounds [0 x float], [0 x float]* %64, i64 0, i32 %65, !dbg !63
  %67 = load float, float* %63, align 4, !dbg !59
  %68 = load float, float* %66, align 4, !dbg !60
  store float %68, float* %63, align 4, !dbg !61
  store float %67, float* %66, align 4, !dbg !62
  %69 = load [0 x float]*, [0 x float]** %17, align 8, !dbg !25
  %70 = getelementptr inbounds [0 x float], [0 x float]* %69, i64 0, i32 %46, !dbg !25
  %71 = load [0 x float]*, [0 x float]** %17, align 8, !dbg !65
  %72 = load i32, i32* %j_1050108, align 4, !dbg !66
  %73 = getelementptr inbounds [0 x float], [0 x float]* %71, i64 0, i32 %72, !dbg !65
  %74 = load float, float* %70, align 4, !dbg !59
  %75 = load float, float* %73, align 4, !dbg !60
  store float %75, float* %70, align 4, !dbg !61
  store float %74, float* %73, align 4, !dbg !62
  %76 = load [0 x float]*, [0 x float]** %26, align 8, !dbg !33
  %77 = getelementptr inbounds [0 x float], [0 x float]* %76, i64 0, i32 %46, !dbg !33
  %78 = load [0 x float]*, [0 x float]** %26, align 8, !dbg !67
  %79 = load i32, i32* %j_1050108, align 4, !dbg !68
  %80 = getelementptr inbounds [0 x float], [0 x float]* %78, i64 0, i32 %79, !dbg !67
  %81 = load float, float* %77, align 4, !dbg !59
  %82 = load float, float* %80, align 4, !dbg !60
  store float %82, float* %77, align 4, !dbg !61
  store float %81, float* %80, align 4, !dbg !62
  %83 = load [0 x float]*, [0 x float]** %24, align 8, !dbg !32
  %84 = getelementptr inbounds [0 x float], [0 x float]* %83, i64 0, i32 %46, !dbg !32
  %85 = load [0 x float]*, [0 x float]** %24, align 8, !dbg !69
  %86 = load i32, i32* %j_1050108, align 4, !dbg !70
  %87 = getelementptr inbounds [0 x float], [0 x float]* %85, i64 0, i32 %86, !dbg !69
  %88 = load float, float* %84, align 4, !dbg !59
  %89 = load float, float* %87, align 4, !dbg !60
  store float %89, float* %84, align 4, !dbg !61
  store float %88, float* %87, align 4, !dbg !62
  %90 = load [0 x float]*, [0 x float]** %20, align 8, !dbg !28
  %91 = getelementptr inbounds [0 x float], [0 x float]* %90, i64 0, i32 %46, !dbg !28
  %92 = load [0 x float]*, [0 x float]** %20, align 8, !dbg !71
  %93 = load i32, i32* %j_1050108, align 4, !dbg !72
  %94 = getelementptr inbounds [0 x float], [0 x float]* %92, i64 0, i32 %93, !dbg !71
  %95 = load float, float* %91, align 4, !dbg !59
  %96 = load float, float* %94, align 4, !dbg !60
  store float %96, float* %91, align 4, !dbg !61
  store float %95, float* %94, align 4, !dbg !62
  %97 = load [0 x float]*, [0 x float]** %19, align 8, !dbg !27
  %98 = getelementptr inbounds [0 x float], [0 x float]* %97, i64 0, i32 %46, !dbg !27
  %99 = load [0 x float]*, [0 x float]** %19, align 8, !dbg !73
  %100 = load i32, i32* %j_1050108, align 4, !dbg !74
  %101 = getelementptr inbounds [0 x float], [0 x float]* %99, i64 0, i32 %100, !dbg !73
  %102 = load float, float* %98, align 4, !dbg !59
  %103 = load float, float* %101, align 4, !dbg !60
  store float %103, float* %98, align 4, !dbg !61
  store float %102, float* %101, align 4, !dbg !62
  %104 = load [0 x float]*, [0 x float]** %21, align 8, !dbg !29
  %105 = getelementptr inbounds [0 x float], [0 x float]* %104, i64 0, i32 %46, !dbg !29
  %106 = load [0 x float]*, [0 x float]** %21, align 8, !dbg !75
  %107 = load i32, i32* %j_1050108, align 4, !dbg !76
  %108 = getelementptr inbounds [0 x float], [0 x float]* %106, i64 0, i32 %107, !dbg !75
  %109 = load float, float* %105, align 4, !dbg !59
  %110 = load float, float* %108, align 4, !dbg !60
  store float %110, float* %105, align 4, !dbg !61
  store float %109, float* %108, align 4, !dbg !62
  %111 = load [0 x i32]*, [0 x i32]** %4, align 8, !dbg !77
  %112 = getelementptr inbounds [0 x i32], [0 x i32]* %111, i64 0, i32 %46, !dbg !77
  %113 = load [0 x i32]*, [0 x i32]** %4, align 8, !dbg !78
  %114 = load i32, i32* %j_1050108, align 4, !dbg !79
  %115 = getelementptr inbounds [0 x i32], [0 x i32]* %113, i64 0, i32 %114, !dbg !78
  %116 = load i32, i32* %112, align 4, !dbg !53
  %117 = load i32, i32* %115, align 4, !dbg !54
  store i32 %117, i32* %112, align 4, !dbg !55
  store i32 %116, i32* %115, align 4, !dbg !56
  %118 = load [0 x i32]*, [0 x i32]** %7, align 8, !dbg !15
  %119 = getelementptr inbounds [0 x i32], [0 x i32]* %118, i64 0, i32 %46, !dbg !15
  %120 = load [0 x i32]*, [0 x i32]** %7, align 8, !dbg !80
  %121 = load i32, i32* %j_1050108, align 4, !dbg !81
  %122 = getelementptr inbounds [0 x i32], [0 x i32]* %120, i64 0, i32 %121, !dbg !80
  %123 = load i32, i32* %119, align 4, !dbg !53
  %124 = load i32, i32* %122, align 4, !dbg !54
  store i32 %124, i32* %119, align 4, !dbg !55
  store i32 %123, i32* %122, align 4, !dbg !56
  %125 = load [0 x float]*, [0 x float]** %14, align 8, !dbg !22
  %126 = getelementptr inbounds [0 x float], [0 x float]* %125, i64 0, i32 %46, !dbg !22
  %127 = load [0 x float]*, [0 x float]** %14, align 8, !dbg !82
  %128 = load i32, i32* %j_1050108, align 4, !dbg !83
  %129 = getelementptr inbounds [0 x float], [0 x float]* %127, i64 0, i32 %128, !dbg !82
  %130 = load float, float* %126, align 4, !dbg !59
  %131 = load float, float* %129, align 4, !dbg !60
  store float %131, float* %126, align 4, !dbg !61
  store float %130, float* %129, align 4, !dbg !62
  %132 = load [0 x float]*, [0 x float]** %12, align 8, !dbg !20
  %133 = getelementptr inbounds [0 x float], [0 x float]* %132, i64 0, i32 %46, !dbg !20
  %134 = load [0 x float]*, [0 x float]** %12, align 8, !dbg !84
  %135 = load i32, i32* %j_1050108, align 4, !dbg !85
  %136 = getelementptr inbounds [0 x float], [0 x float]* %134, i64 0, i32 %135, !dbg !84
  %137 = load float, float* %133, align 4, !dbg !59
  %138 = load float, float* %136, align 4, !dbg !60
  store float %138, float* %133, align 4, !dbg !61
  store float %137, float* %136, align 4, !dbg !62
  %139 = load [0 x float]*, [0 x float]** %18, align 8, !dbg !26
  %140 = getelementptr inbounds [0 x float], [0 x float]* %139, i64 0, i32 %46, !dbg !26
  %141 = load [0 x float]*, [0 x float]** %18, align 8, !dbg !86
  %142 = load i32, i32* %j_1050108, align 4, !dbg !87
  %143 = getelementptr inbounds [0 x float], [0 x float]* %141, i64 0, i32 %142, !dbg !86
  %144 = load float, float* %140, align 4, !dbg !59
  %145 = load float, float* %143, align 4, !dbg !60
  store float %145, float* %140, align 4, !dbg !61
  store float %144, float* %143, align 4, !dbg !62
  %146 = load [0 x i32]*, [0 x i32]** %16, align 8, !dbg !24
  %147 = getelementptr inbounds [0 x i32], [0 x i32]* %146, i64 0, i32 %46, !dbg !24
  %148 = load [0 x i32]*, [0 x i32]** %16, align 8, !dbg !88
  %149 = load i32, i32* %j_1050108, align 4, !dbg !89
  %150 = getelementptr inbounds [0 x i32], [0 x i32]* %148, i64 0, i32 %149, !dbg !88
  %151 = load i32, i32* %147, align 4, !dbg !90
  %152 = load i32, i32* %150, align 4, !dbg !91
  store i32 %152, i32* %147, align 4, !dbg !92
  store i32 %151, i32* %150, align 4, !dbg !93
  %153 = load [0 x float]*, [0 x float]** %10, align 8, !dbg !18
  %154 = getelementptr inbounds [0 x float], [0 x float]* %153, i64 0, i32 %46, !dbg !18
  %155 = load [0 x float]*, [0 x float]** %10, align 8, !dbg !94
  %156 = load i32, i32* %j_1050108, align 4, !dbg !95
  %157 = getelementptr inbounds [0 x float], [0 x float]* %155, i64 0, i32 %156, !dbg !94
  %158 = load float, float* %154, align 4, !dbg !59
  %159 = load float, float* %157, align 4, !dbg !60
  store float %159, float* %154, align 4, !dbg !61
  store float %158, float* %157, align 4, !dbg !62
  %160 = load [0 x float]*, [0 x float]** %9, align 8, !dbg !17
  %161 = getelementptr inbounds [0 x float], [0 x float]* %160, i64 0, i32 %46, !dbg !17
  %162 = load [0 x float]*, [0 x float]** %9, align 8, !dbg !96
  %163 = load i32, i32* %j_1050108, align 4, !dbg !97
  %164 = getelementptr inbounds [0 x float], [0 x float]* %162, i64 0, i32 %163, !dbg !96
  %165 = load float, float* %161, align 4, !dbg !59
  %166 = load float, float* %164, align 4, !dbg !60
  store float %166, float* %161, align 4, !dbg !61
  store float %165, float* %164, align 4, !dbg !62
  %167 = load [0 x float]*, [0 x float]** %15, align 8, !dbg !23
  %168 = getelementptr inbounds [0 x float], [0 x float]* %167, i64 0, i32 %46, !dbg !23
  %169 = load [0 x float]*, [0 x float]** %15, align 8, !dbg !98
  %170 = load i32, i32* %j_1050108, align 4, !dbg !99
  %171 = getelementptr inbounds [0 x float], [0 x float]* %169, i64 0, i32 %170, !dbg !98
  %172 = load float, float* %168, align 4, !dbg !59
  %173 = load float, float* %171, align 4, !dbg !60
  store float %173, float* %168, align 4, !dbg !61
  store float %172, float* %171, align 4, !dbg !62
  %174 = load [0 x float]*, [0 x float]** %8, align 8, !dbg !16
  %175 = getelementptr inbounds [0 x float], [0 x float]* %174, i64 0, i32 %46, !dbg !16
  %176 = load [0 x float]*, [0 x float]** %8, align 8, !dbg !100
  %177 = load i32, i32* %j_1050108, align 4, !dbg !101
  %178 = getelementptr inbounds [0 x float], [0 x float]* %176, i64 0, i32 %177, !dbg !100
  %179 = load float, float* %175, align 4, !dbg !59
  %180 = load float, float* %178, align 4, !dbg !60
  store float %180, float* %175, align 4, !dbg !61
  store float %179, float* %178, align 4, !dbg !62
  %181 = load [0 x i32]*, [0 x i32]** %22, align 8, !dbg !30
  %182 = getelementptr inbounds [0 x i32], [0 x i32]* %181, i64 0, i32 %46, !dbg !30
  %183 = load [0 x i32]*, [0 x i32]** %22, align 8, !dbg !102
  %184 = load i32, i32* %j_1050108, align 4, !dbg !103
  %185 = getelementptr inbounds [0 x i32], [0 x i32]* %183, i64 0, i32 %184, !dbg !102
  %186 = load i32, i32* %182, align 4, !dbg !53
  %187 = load i32, i32* %185, align 4, !dbg !54
  store i32 %187, i32* %182, align 4, !dbg !55
  store i32 %186, i32* %185, align 4, !dbg !56
  br label %if_join, !dbg !49

if_join:                                          ; preds = %expr_true13, %expr_false12
  br label %while_head, !dbg !104

expr_true14:                                      ; preds = %unroll_step4
  %188 = add nsw i32 1, %lower5, !dbg !42
  %189 = load i32, i32* %n_1050083, align 4, !dbg !105
  %190 = getelementptr inbounds [0 x i32], [0 x i32]* %ray_begins_1050037, i64 0, i32 %lower5, !dbg !106
  %191 = getelementptr inbounds [0 x i32], [0 x i32]* %ray_ends_1050038, i64 0, i32 %lower5, !dbg !107
  store i32 %189, i32* %190, align 4, !dbg !106
  %192 = load i32, i32* %191, align 4, !dbg !107
  %193 = load i32, i32* %n_1050083, align 4, !dbg !108
  %194 = add nsw i32 %193, %192, !dbg !108
  store i32 %194, i32* %n_1050083, align 4, !dbg !108
  store i32 %194, i32* %191, align 4, !dbg !109
  br label %unroll_step4, !dbg !43

expr_true15:                                      ; preds = %unroll_step1
  %195 = load [0 x i32]*, [0 x i32]** %4, align 8, !dbg !13
  %196 = add nsw i32 1, %lower2, !dbg !42
  %197 = getelementptr inbounds [0 x i32], [0 x i32]* %195, i64 0, i32 %lower2, !dbg !13
  %198 = load i32, i32* %197, align 4, !dbg !13
  %199 = getelementptr inbounds [0 x i32], [0 x i32]* %ray_ends_1050038, i64 0, i32 %198, !dbg !110
  %200 = load i32, i32* %199, align 4, !dbg !110
  %201 = add nsw i32 1, %200, !dbg !110
  store i32 %201, i32* %199, align 4, !dbg !110
  br label %unroll_step1, !dbg !43

expr_true16:                                      ; preds = %unroll_step
  %202 = add nsw i32 1, %lower, !dbg !42
  %203 = getelementptr inbounds [0 x i32], [0 x i32]* %ray_ends_1050038, i64 0, i32 %lower, !dbg !111
  store i32 0, i32* %203, align 4, !dbg !111
  br label %unroll_step, !dbg !43
}

define void @cpu_bench_shading(%0* %primary_in_1042597, %0* %primary_out_1042598, [0 x %2]* %vertices_1042599, [0 x %2]* %normals_1042600, [0 x %2]* %face_normals_1042601, [0 x %3]* %texcoords_1042602, [0 x i32]* %indices_1042603, [0 x i32]* %pixels_1042604, i32 %width_1042605, i32 %height_1042606, [0 x i32]* %begins_1042607, [0 x i32]* %ends_1042608, i32 %num_tris_1042609, i32 %num_iters_1042610) !dbg !112 {
cpu_bench_shading_start:
  %state_1043564 = alloca %4, align 4
  %state_1045234 = alloca %4, align 4
  %state_1047067 = alloca %4, align 4
  %state_1049063 = alloca %4, align 4
  br label %cpu_bench_shading, !dbg !114

cpu_bench_shading:                                ; preds = %cpu_bench_shading_start
  %0 = sub nsw i32 %height_1042606, 1, !dbg !115
  %1 = getelementptr inbounds [0 x i32], [0 x i32]* %ends_1042608, i64 0, i32 1, !dbg !116
  %2 = sitofp i32 %height_1042606 to float, !dbg !117
  %3 = getelementptr inbounds [0 x i32], [0 x i32]* %ends_1042608, i64 0, i32 2, !dbg !116
  %4 = sub nsw i32 %width_1042605, 1, !dbg !118
  %5 = sitofp i32 %width_1042605 to float, !dbg !119
  %6 = getelementptr inbounds [0 x i32], [0 x i32]* %begins_1042607, i64 0, i32 1, !dbg !120
  %7 = getelementptr inbounds [0 x i32], [0 x i32]* %ends_1042608, i64 0, i32 3, !dbg !116
  %8 = getelementptr inbounds %0, %0* %primary_out_1042598, i32 0, i32 0, !dbg !121
  %9 = getelementptr inbounds %0, %0* %primary_in_1042597, i32 0, i32 0, !dbg !122
  %10 = getelementptr inbounds [0 x i32], [0 x i32]* %begins_1042607, i64 0, i32 2, !dbg !120
  %11 = getelementptr inbounds [0 x i32], [0 x i32]* %begins_1042607, i64 0, i32 0, !dbg !120
  %12 = getelementptr inbounds [0 x i32], [0 x i32]* %begins_1042607, i64 0, i32 3, !dbg !120
  %13 = getelementptr inbounds [0 x i32], [0 x i32]* %ends_1042608, i64 0, i32 0, !dbg !116
  %14 = load %1, %1* %9, align 8, !dbg !122
  %15 = getelementptr inbounds %4, %4* %state_1049063, i32 0, i32 0, !dbg !123
  %16 = getelementptr inbounds %4, %4* %state_1049063, i32 0, i32 1, !dbg !124
  %17 = getelementptr inbounds %4, %4* %state_1049063, i32 0, i32 3, !dbg !125
  %18 = getelementptr inbounds %4, %4* %state_1047067, i32 0, i32 0, !dbg !123
  %19 = getelementptr inbounds %4, %4* %state_1047067, i32 0, i32 1, !dbg !124
  %20 = getelementptr inbounds %4, %4* %state_1047067, i32 0, i32 3, !dbg !125
  %21 = getelementptr inbounds %4, %4* %state_1045234, i32 0, i32 0, !dbg !123
  %22 = getelementptr inbounds %4, %4* %state_1045234, i32 0, i32 1, !dbg !124
  %23 = getelementptr inbounds %4, %4* %state_1045234, i32 0, i32 3, !dbg !125
  %24 = getelementptr inbounds %4, %4* %state_1043564, i32 0, i32 0, !dbg !123
  %25 = getelementptr inbounds %4, %4* %state_1043564, i32 0, i32 1, !dbg !124
  %26 = getelementptr inbounds %4, %4* %state_1043564, i32 0, i32 3, !dbg !125
  %27 = extractvalue %1 %14, 6, !dbg !126
  %28 = extractvalue %1 %14, 5, !dbg !127
  %29 = extractvalue %1 %14, 3, !dbg !128
  %30 = extractvalue %1 %14, 4, !dbg !129
  %31 = extractvalue %1 %14, 1, !dbg !130
  %32 = extractvalue %1 %14, 2, !dbg !131
  %33 = load %0, %0* %primary_in_1042597, align 8, !dbg !132
  %34 = extractvalue %0 %33, 5, !dbg !133
  %35 = extractvalue %0 %33, 4, !dbg !134
  %36 = extractvalue %0 %33, 2, !dbg !135
  %37 = extractvalue %0 %33, 3, !dbg !136
  %38 = load %0, %0* %primary_in_1042597, align 8, !dbg !137
  %39 = extractvalue %0 %38, 9, !dbg !138
  %40 = extractvalue %0 %38, 11, !dbg !139
  %41 = extractvalue %0 %38, 7, !dbg !140
  %42 = extractvalue %0 %38, 10, !dbg !141
  %43 = extractvalue %0 %38, 8, !dbg !142
  %44 = extractvalue %0 %38, 6, !dbg !143
  %45 = load %1, %1* %8, align 8, !dbg !121
  %46 = extractvalue %1 %45, 6, !dbg !144
  %47 = extractvalue %1 %45, 7, !dbg !145
  %48 = extractvalue %1 %45, 4, !dbg !146
  %49 = extractvalue %1 %45, 5, !dbg !147
  %50 = extractvalue %1 %45, 8, !dbg !148
  %51 = extractvalue %1 %45, 3, !dbg !149
  %52 = extractvalue %1 %45, 2, !dbg !150
  %53 = extractvalue %1 %45, 1, !dbg !151
  %54 = load %0, %0* %primary_out_1042598, align 8, !dbg !152
  %55 = extractvalue %0 %54, 11, !dbg !153
  %56 = extractvalue %0 %54, 10, !dbg !154
  %57 = extractvalue %0 %54, 7, !dbg !155
  %58 = extractvalue %0 %54, 9, !dbg !156
  %59 = extractvalue %0 %54, 8, !dbg !157
  %60 = extractvalue %0 %54, 6, !dbg !158
  br label %unroll_step, !dbg !159

unroll_step:                                      ; preds = %expr_false24, %cpu_bench_shading
  %lower = phi i32 [ %94, %expr_false24 ], [ 0, %cpu_bench_shading ]
  %61 = icmp slt i32 %lower, %num_iters_1042610, !dbg !160
  br i1 %61, label %expr_true, label %expr_false, !dbg !161

expr_false:                                       ; preds = %unroll_step
  ret void, !dbg !162

expr_true:                                        ; preds = %unroll_step
  %62 = load i32, i32* %11, align 4, !dbg !120
  %63 = load i32, i32* %13, align 4, !dbg !116
  %64 = sub nsw i32 %63, %62, !dbg !163
  %65 = sdiv i32 %64, 8, !dbg !164
  %66 = mul nsw i32 8, %65, !dbg !165
  %67 = add nsw i32 %62, %66, !dbg !166
  br label %unroll_step1, !dbg !159

unroll_step1:                                     ; preds = %_cont459, %expr_true
  %lower2 = phi i32 [ %5337, %_cont459 ], [ %62, %expr_true ]
  %68 = icmp slt i32 %lower2, %67, !dbg !160
  br i1 %68, label %expr_true458, label %expr_false3, !dbg !161

expr_false3:                                      ; preds = %unroll_step1
  br label %unroll_step4, !dbg !159

unroll_step4:                                     ; preds = %safe_rcp_cont457, %expr_false3
  %lower5 = phi i32 [ %4740, %safe_rcp_cont457 ], [ %67, %expr_false3 ]
  %69 = icmp slt i32 %lower5, %63, !dbg !160
  br i1 %69, label %expr_true365, label %expr_false6, !dbg !161

expr_false6:                                      ; preds = %unroll_step4
  %70 = load i32, i32* %6, align 4, !dbg !120
  %71 = load i32, i32* %1, align 4, !dbg !116
  %72 = sub nsw i32 %71, %70, !dbg !163
  %73 = sdiv i32 %72, 8, !dbg !164
  %74 = mul nsw i32 8, %73, !dbg !165
  %75 = add nsw i32 %70, %74, !dbg !166
  br label %unroll_step7, !dbg !159

unroll_step7:                                     ; preds = %_cont364, %expr_false6
  %lower8 = phi i32 [ %4281, %_cont364 ], [ %70, %expr_false6 ]
  %76 = icmp slt i32 %lower8, %75, !dbg !160
  br i1 %76, label %expr_true363, label %expr_false9, !dbg !161

expr_false9:                                      ; preds = %unroll_step7
  br label %unroll_step10, !dbg !159

unroll_step10:                                    ; preds = %safe_rcp_cont362, %expr_false9
  %lower11 = phi i32 [ %3516, %safe_rcp_cont362 ], [ %75, %expr_false9 ]
  %77 = icmp slt i32 %lower11, %71, !dbg !160
  br i1 %77, label %expr_true252, label %expr_false12, !dbg !161

expr_false12:                                     ; preds = %unroll_step10
  %78 = load i32, i32* %10, align 4, !dbg !120
  %79 = load i32, i32* %3, align 4, !dbg !116
  %80 = sub nsw i32 %79, %78, !dbg !163
  %81 = sdiv i32 %80, 8, !dbg !164
  %82 = mul nsw i32 8, %81, !dbg !165
  %83 = add nsw i32 %78, %82, !dbg !166
  br label %unroll_step13, !dbg !159

unroll_step13:                                    ; preds = %_cont251, %expr_false12
  %lower14 = phi i32 [ %2924, %_cont251 ], [ %78, %expr_false12 ]
  %84 = icmp slt i32 %lower14, %83, !dbg !160
  br i1 %84, label %expr_true250, label %expr_false15, !dbg !161

expr_false15:                                     ; preds = %unroll_step13
  br label %unroll_step16, !dbg !159

unroll_step16:                                    ; preds = %safe_rcp_cont249, %expr_false15
  %lower17 = phi i32 [ %2180, %safe_rcp_cont249 ], [ %83, %expr_false15 ]
  %85 = icmp slt i32 %lower17, %79, !dbg !160
  br i1 %85, label %expr_true139, label %expr_false18, !dbg !161

expr_false18:                                     ; preds = %unroll_step16
  %86 = load i32, i32* %12, align 4, !dbg !120
  %87 = load i32, i32* %7, align 4, !dbg !116
  %88 = sub nsw i32 %87, %86, !dbg !163
  %89 = sdiv i32 %88, 8, !dbg !164
  %90 = mul nsw i32 8, %89, !dbg !165
  %91 = add nsw i32 %86, %90, !dbg !166
  br label %unroll_step19, !dbg !159

unroll_step19:                                    ; preds = %_cont138, %expr_false18
  %lower20 = phi i32 [ %1574, %_cont138 ], [ %86, %expr_false18 ]
  %92 = icmp slt i32 %lower20, %91, !dbg !160
  br i1 %92, label %expr_true137, label %expr_false21, !dbg !161

expr_false21:                                     ; preds = %unroll_step19
  br label %unroll_step22, !dbg !159

unroll_step22:                                    ; preds = %safe_rcp_cont136, %expr_false21
  %lower23 = phi i32 [ %814, %safe_rcp_cont136 ], [ %91, %expr_false21 ]
  %93 = icmp slt i32 %lower23, %87, !dbg !160
  br i1 %93, label %expr_true25, label %expr_false24, !dbg !161

expr_false24:                                     ; preds = %unroll_step22
  %94 = add nsw i32 1, %lower, !dbg !167
  br label %unroll_step, !dbg !168

expr_true25:                                      ; preds = %unroll_step22
  %95 = getelementptr inbounds [0 x float], [0 x float]* %31, i64 0, i32 %lower23, !dbg !130
  %96 = load float, float* %95, align 4, !dbg !130
  %97 = getelementptr inbounds [0 x float], [0 x float]* %27, i64 0, i32 %lower23, !dbg !126
  %98 = getelementptr inbounds [0 x float], [0 x float]* %28, i64 0, i32 %lower23, !dbg !127
  %99 = getelementptr inbounds [0 x float], [0 x float]* %29, i64 0, i32 %lower23, !dbg !128
  %100 = getelementptr inbounds [0 x float], [0 x float]* %32, i64 0, i32 %lower23, !dbg !131
  %101 = getelementptr inbounds [0 x float], [0 x float]* %30, i64 0, i32 %lower23, !dbg !129
  %102 = load float, float* %100, align 4, !dbg !131
  %103 = load float, float* %99, align 4, !dbg !128
  %104 = load float, float* %101, align 4, !dbg !129
  %105 = fsub float -0.000000e+00, %104, !dbg !169
  %106 = fcmp olt float 0.000000e+00, %104, !dbg !170
  %107 = load float, float* %98, align 4, !dbg !127
  %108 = select i1 %106, float %104, float %105, !dbg !171
  %109 = fcmp olt float %108, 0x3E45798EE0000000, !dbg !171
  %110 = load float, float* %97, align 4, !dbg !126
  br i1 %109, label %expr_true27, label %expr_false26, !dbg !172

expr_false26:                                     ; preds = %expr_true25
  br label %safe_rcp_cont, !dbg !173

expr_true27:                                      ; preds = %expr_true25
  br label %safe_rcp_cont, !dbg !174

safe_rcp_cont:                                    ; preds = %expr_true27, %expr_false26
  %111 = fsub float -0.000000e+00, %107, !dbg !169
  %112 = fcmp olt float 0.000000e+00, %107, !dbg !170
  %113 = select i1 %112, float %107, float %111, !dbg !171
  %114 = fcmp olt float %113, 0x3E45798EE0000000, !dbg !171
  br i1 %114, label %expr_true29, label %expr_false28, !dbg !172

expr_false28:                                     ; preds = %safe_rcp_cont
  br label %safe_rcp_cont30, !dbg !173

expr_true29:                                      ; preds = %safe_rcp_cont
  br label %safe_rcp_cont30, !dbg !174

safe_rcp_cont30:                                  ; preds = %expr_true29, %expr_false28
  %115 = fsub float -0.000000e+00, %110, !dbg !169
  %116 = fcmp olt float 0.000000e+00, %110, !dbg !170
  %117 = select i1 %116, float %110, float %115, !dbg !171
  %118 = fcmp olt float %117, 0x3E45798EE0000000, !dbg !171
  br i1 %118, label %expr_true32, label %expr_false31, !dbg !172

expr_false31:                                     ; preds = %safe_rcp_cont30
  br label %safe_rcp_cont33, !dbg !173

expr_true32:                                      ; preds = %safe_rcp_cont30
  br label %safe_rcp_cont33, !dbg !174

safe_rcp_cont33:                                  ; preds = %expr_true32, %expr_false31
  %119 = getelementptr inbounds [0 x i32], [0 x i32]* %44, i64 0, i32 %lower23, !dbg !143
  %120 = getelementptr inbounds [0 x float], [0 x float]* %43, i64 0, i32 %lower23, !dbg !142
  %121 = getelementptr inbounds [0 x float], [0 x float]* %39, i64 0, i32 %lower23, !dbg !138
  %122 = getelementptr inbounds [0 x float], [0 x float]* %41, i64 0, i32 %lower23, !dbg !140
  %123 = getelementptr inbounds [0 x i32], [0 x i32]* %40, i64 0, i32 %lower23, !dbg !139
  %124 = getelementptr inbounds [0 x float], [0 x float]* %42, i64 0, i32 %lower23, !dbg !141
  %125 = getelementptr inbounds [0 x float], [0 x float]* %34, i64 0, i32 %lower23, !dbg !133
  %126 = getelementptr inbounds [0 x float], [0 x float]* %35, i64 0, i32 %lower23, !dbg !134
  %127 = getelementptr inbounds [0 x float], [0 x float]* %37, i64 0, i32 %lower23, !dbg !136
  %128 = getelementptr inbounds [0 x i32], [0 x i32]* %36, i64 0, i32 %lower23, !dbg !135
  %129 = load i32, i32* %128, align 4, !dbg !135
  %130 = getelementptr inbounds [0 x %2], [0 x %2]* %face_normals_1042601, i64 0, i32 %129, !dbg !175
  %131 = mul nsw i32 4, %129, !dbg !176
  %132 = load float, float* %127, align 4, !dbg !136
  %133 = add nsw i32 2, %131, !dbg !177
  %134 = add nsw i32 1, %131, !dbg !178
  %135 = getelementptr inbounds [0 x i32], [0 x i32]* %indices_1042603, i64 0, i32 %131, !dbg !179
  %136 = getelementptr inbounds [0 x i32], [0 x i32]* %indices_1042603, i64 0, i32 %133, !dbg !180
  %137 = getelementptr inbounds [0 x i32], [0 x i32]* %indices_1042603, i64 0, i32 %134, !dbg !181
  %138 = load float, float* %126, align 4, !dbg !134
  %139 = fsub float 1.000000e+00, %138, !dbg !182
  %140 = load float, float* %125, align 4, !dbg !133
  %141 = fsub float %139, %140, !dbg !182
  %142 = load i32, i32* %119, align 4, !dbg !143
  %143 = load float, float* %120, align 4, !dbg !142
  %144 = load float, float* %121, align 4, !dbg !138
  %145 = load float, float* %124, align 4, !dbg !141
  %146 = insertvalue %5 undef, float %143, 0, !dbg !183
  %147 = insertvalue %5 %146, float %144, 1, !dbg !183
  %148 = insertvalue %5 %147, float %145, 2, !dbg !183
  %149 = load float, float* %122, align 4, !dbg !140
  %150 = load i32, i32* %123, align 4, !dbg !139
  %151 = insertvalue %4 undef, i32 %142, 0, !dbg !184
  %152 = insertvalue %4 %151, %5 %148, 1, !dbg !184
  %153 = insertvalue %4 %152, float %149, 2, !dbg !184
  %154 = insertvalue %4 %153, i32 %150, 3, !dbg !184
  store %4 %154, %4* %state_1049063, align 4, !dbg !185
  %155 = load i32, i32* %135, align 4, !dbg !179
  %156 = load i32, i32* %137, align 4, !dbg !181
  %157 = getelementptr inbounds [0 x %2], [0 x %2]* %normals_1042600, i64 0, i32 %155, !dbg !186
  %158 = load i32, i32* %136, align 4, !dbg !180
  %159 = getelementptr inbounds [0 x %2], [0 x %2]* %normals_1042600, i64 0, i32 %156, !dbg !186
  %160 = load %2, %2* %130, align 4, !dbg !175
  %161 = getelementptr inbounds [0 x %2], [0 x %2]* %normals_1042600, i64 0, i32 %158, !dbg !186
  %162 = load %2, %2* %157, align 4, !dbg !186
  %163 = load %2, %2* %159, align 4, !dbg !186
  %164 = extractvalue %2 %162, 2, !dbg !187
  %165 = extractvalue %2 %162, 0, !dbg !188
  %166 = extractvalue %2 %162, 1, !dbg !189
  %167 = fmul float %141, %164, !dbg !190
  %168 = fmul float %141, %165, !dbg !190
  %169 = fmul float %141, %166, !dbg !190
  %170 = load %2, %2* %161, align 4, !dbg !186
  %171 = extractvalue %2 %163, 2, !dbg !191
  %172 = extractvalue %2 %163, 0, !dbg !192
  %173 = extractvalue %2 %163, 1, !dbg !193
  %174 = fmul float %138, %171, !dbg !194
  %175 = fmul float %138, %172, !dbg !194
  %176 = fmul float %138, %173, !dbg !194
  %177 = extractvalue %2 %170, 2, !dbg !195
  %178 = extractvalue %2 %170, 0, !dbg !196
  %179 = extractvalue %2 %170, 1, !dbg !197
  %180 = fadd float %167, %174, !dbg !190
  %181 = fadd float %168, %175, !dbg !190
  %182 = fadd float %169, %176, !dbg !190
  %183 = fmul float %140, %177, !dbg !198
  %184 = fmul float %140, %178, !dbg !198
  %185 = fmul float %140, %179, !dbg !198
  %186 = fadd float %180, %183, !dbg !190
  %187 = fadd float %181, %184, !dbg !190
  %188 = fadd float %182, %185, !dbg !190
  %189 = fmul float %186, %186, !dbg !199
  %190 = fmul float %187, %187, !dbg !200
  %191 = fmul float %188, %188, !dbg !201
  %192 = fadd float %190, %191, !dbg !200
  %193 = fadd float %192, %189, !dbg !200
  %194 = call float @llvm.sqrt.f32(float %193), !dbg !202
  br label %vec3_len_cont, !dbg !202

vec3_len_cont:                                    ; preds = %safe_rcp_cont33
  %vec3_len = phi float [ %194, %safe_rcp_cont33 ]
  %195 = extractvalue %2 %160, 2, !dbg !203
  %196 = extractvalue %2 %160, 0, !dbg !204
  %197 = extractvalue %2 %160, 1, !dbg !205
  %198 = fmul float %110, %195, !dbg !199
  %199 = fmul float %104, %196, !dbg !200
  %200 = fmul float %107, %197, !dbg !201
  %201 = fadd float %199, %200, !dbg !200
  %202 = fadd float %201, %198, !dbg !200
  %is_entering = fcmp ole float %202, 0.000000e+00, !dbg !206
  br i1 %is_entering, label %expr_true35, label %expr_false34, !dbg !207

expr_false34:                                     ; preds = %vec3_len_cont
  %203 = fsub float -0.000000e+00, %195, !dbg !208
  %204 = fsub float -0.000000e+00, %197, !dbg !208
  %205 = fsub float -0.000000e+00, %196, !dbg !208
  %206 = insertvalue %2 undef, float %205, 0, !dbg !209
  %207 = insertvalue %2 %206, float %204, 1, !dbg !209
  %208 = insertvalue %2 %207, float %203, 2, !dbg !209
  br label %if_join, !dbg !210

expr_true35:                                      ; preds = %vec3_len_cont
  br label %if_join, !dbg !210

if_join:                                          ; preds = %expr_true35, %expr_false34
  %if_join36 = phi %2 [ %160, %expr_true35 ], [ %208, %expr_false34 ]
  %209 = fdiv float 1.000000e+00, %vec3_len, !dbg !211
  %210 = fmul float %186, %209, !dbg !212
  %211 = fmul float %188, %209, !dbg !212
  %212 = fmul float %187, %209, !dbg !212
  %213 = fmul float %110, %210, !dbg !199
  %214 = fmul float %107, %211, !dbg !201
  %215 = fmul float %104, %212, !dbg !200
  %216 = fadd float %215, %214, !dbg !200
  %217 = fadd float %216, %213, !dbg !200
  %218 = fcmp ole float %217, 0.000000e+00, !dbg !213
  br i1 %218, label %expr_true38, label %expr_false37, !dbg !214

expr_false37:                                     ; preds = %if_join
  %219 = fsub float -0.000000e+00, %212, !dbg !208
  %220 = fsub float -0.000000e+00, %210, !dbg !208
  %221 = fsub float -0.000000e+00, %211, !dbg !208
  %222 = insertvalue %2 undef, float %219, 0, !dbg !209
  %223 = insertvalue %2 %222, float %221, 1, !dbg !209
  %224 = insertvalue %2 %223, float %220, 2, !dbg !209
  br label %if_join39, !dbg !215

expr_true38:                                      ; preds = %if_join
  %225 = insertvalue %2 undef, float %212, 0, !dbg !209
  %226 = insertvalue %2 %225, float %211, 1, !dbg !209
  %227 = insertvalue %2 %226, float %210, 2, !dbg !209
  br label %if_join39, !dbg !215

if_join39:                                        ; preds = %expr_true38, %expr_false37
  %if_join40 = phi %2 [ %227, %expr_true38 ], [ %224, %expr_false37 ]
  %228 = getelementptr inbounds [0 x %3], [0 x %3]* %texcoords_1042602, i64 0, i32 %158, !dbg !216
  %229 = getelementptr inbounds [0 x %3], [0 x %3]* %texcoords_1042602, i64 0, i32 %155, !dbg !216
  %230 = getelementptr inbounds [0 x %3], [0 x %3]* %texcoords_1042602, i64 0, i32 %156, !dbg !216
  %231 = load %3, %3* %229, align 4, !dbg !216
  %232 = load %3, %3* %230, align 4, !dbg !216
  %233 = extractvalue %3 %231, 0, !dbg !217
  %234 = fmul float %141, %233, !dbg !190
  %235 = load %3, %3* %228, align 4, !dbg !216
  %236 = extractvalue %3 %232, 0, !dbg !217
  %237 = fmul float %138, %236, !dbg !194
  %238 = extractvalue %3 %235, 0, !dbg !217
  %239 = fadd float %234, %237, !dbg !190
  %240 = fmul float %140, %238, !dbg !198
  %241 = fadd float %239, %240, !dbg !190
  %242 = call float @llvm.floor.f32(float %241), !dbg !218
  br label %_cont, !dbg !218

_cont:                                            ; preds = %if_join39
  %243 = phi float [ %242, %if_join39 ]
  %244 = extractvalue %3 %232, 1, !dbg !219
  %245 = fmul float %138, %244, !dbg !194
  %246 = extractvalue %3 %231, 1, !dbg !219
  %247 = extractvalue %3 %235, 1, !dbg !219
  %248 = fmul float %141, %246, !dbg !190
  %249 = fmul float %140, %247, !dbg !198
  %250 = fadd float %248, %245, !dbg !190
  %251 = fadd float %250, %249, !dbg !190
  %252 = call float @llvm.floor.f32(float %251), !dbg !218
  br label %_cont41, !dbg !218

_cont41:                                          ; preds = %_cont
  %253 = phi float [ %252, %_cont ]
  %254 = fsub float %241, %243, !dbg !220
  %u = fmul float %254, %5, !dbg !221
  %255 = fptosi float %u to i32, !dbg !222
  %256 = icmp slt i32 %255, %4, !dbg !223
  br i1 %256, label %expr_true43, label %expr_false42, !dbg !224

expr_false42:                                     ; preds = %_cont41
  br label %_cont44, !dbg !225

expr_true43:                                      ; preds = %_cont41
  br label %_cont44, !dbg !225

_cont44:                                          ; preds = %expr_true43, %expr_false42
  %x0 = phi i32 [ %255, %expr_true43 ], [ %4, %expr_false42 ]
  %257 = fsub float %251, %253, !dbg !220
  %v = fmul float %257, %2, !dbg !226
  %258 = fptosi float %v to i32, !dbg !227
  %259 = icmp slt i32 %258, %0, !dbg !223
  br i1 %259, label %expr_true46, label %expr_false45, !dbg !224

expr_false45:                                     ; preds = %_cont44
  br label %_cont47, !dbg !225

expr_true46:                                      ; preds = %_cont44
  br label %_cont47, !dbg !225

_cont47:                                          ; preds = %expr_true46, %expr_false45
  %y0 = phi i32 [ %258, %expr_true46 ], [ %0, %expr_false45 ]
  %260 = add nsw i32 1, %x0, !dbg !228
  %261 = icmp slt i32 %260, %4, !dbg !223
  br i1 %261, label %expr_true49, label %expr_false48, !dbg !224

expr_false48:                                     ; preds = %_cont47
  br label %_cont50, !dbg !225

expr_true49:                                      ; preds = %_cont47
  br label %_cont50, !dbg !225

_cont50:                                          ; preds = %expr_true49, %expr_false48
  %x1 = phi i32 [ %260, %expr_true49 ], [ %4, %expr_false48 ]
  %262 = add nsw i32 1, %y0, !dbg !229
  %263 = icmp slt i32 %262, %0, !dbg !223
  br i1 %263, label %expr_true52, label %expr_false51, !dbg !224

expr_false51:                                     ; preds = %_cont50
  br label %_cont53, !dbg !225

expr_true52:                                      ; preds = %_cont50
  br label %_cont53, !dbg !225

_cont53:                                          ; preds = %expr_true52, %expr_false51
  %y1 = phi i32 [ %262, %expr_true52 ], [ %0, %expr_false51 ]
  %264 = mul nsw i32 %y0, %width_1042605, !dbg !230
  %265 = mul nsw i32 %y1, %width_1042605, !dbg !230
  %266 = add nsw i32 %264, %x1, !dbg !230
  %267 = add nsw i32 %264, %x0, !dbg !230
  %268 = add nsw i32 %265, %x1, !dbg !230
  %269 = add nsw i32 %265, %x0, !dbg !230
  %270 = getelementptr inbounds [0 x i32], [0 x i32]* %pixels_1042604, i64 0, i32 %266, !dbg !231
  %271 = getelementptr inbounds [0 x i32], [0 x i32]* %pixels_1042604, i64 0, i32 %267, !dbg !231
  %272 = getelementptr inbounds [0 x i32], [0 x i32]* %pixels_1042604, i64 0, i32 %268, !dbg !231
  %273 = getelementptr inbounds [0 x i32], [0 x i32]* %pixels_1042604, i64 0, i32 %269, !dbg !231
  %274 = load i32, i32* %271, align 4, !dbg !231
  %275 = load i32, i32* %270, align 4, !dbg !231
  %276 = load i32, i32* %273, align 4, !dbg !231
  %277 = load i32, i32* %272, align 4, !dbg !231
  %278 = load %3, %3* %229, align 4, !dbg !216
  %279 = load %3, %3* %230, align 4, !dbg !216
  %280 = extractvalue %3 %278, 0, !dbg !217
  %281 = fmul float %141, %280, !dbg !190
  %282 = load %3, %3* %228, align 4, !dbg !216
  %283 = extractvalue %3 %279, 0, !dbg !217
  %284 = fmul float %138, %283, !dbg !194
  %285 = extractvalue %3 %282, 0, !dbg !217
  %286 = fadd float %281, %284, !dbg !190
  %287 = fmul float %140, %285, !dbg !198
  %288 = fadd float %286, %287, !dbg !190
  %289 = call float @llvm.floor.f32(float %288), !dbg !218
  br label %_cont54, !dbg !218

_cont54:                                          ; preds = %_cont53
  %290 = phi float [ %289, %_cont53 ]
  %291 = extractvalue %3 %278, 1, !dbg !219
  %292 = fmul float %141, %291, !dbg !190
  %293 = extractvalue %3 %279, 1, !dbg !219
  %294 = extractvalue %3 %282, 1, !dbg !219
  %295 = fmul float %138, %293, !dbg !194
  %296 = fmul float %140, %294, !dbg !198
  %297 = fadd float %292, %295, !dbg !190
  %298 = fadd float %297, %296, !dbg !190
  %299 = call float @llvm.floor.f32(float %298), !dbg !218
  br label %_cont55, !dbg !218

_cont55:                                          ; preds = %_cont54
  %300 = phi float [ %299, %_cont54 ]
  %301 = fsub float %288, %290, !dbg !220
  %u460 = fmul float %301, %5, !dbg !221
  %302 = fptosi float %u460 to i32, !dbg !222
  %303 = icmp slt i32 %302, %4, !dbg !223
  br i1 %303, label %expr_true57, label %expr_false56, !dbg !224

expr_false56:                                     ; preds = %_cont55
  br label %_cont58, !dbg !225

expr_true57:                                      ; preds = %_cont55
  br label %_cont58, !dbg !225

_cont58:                                          ; preds = %expr_true57, %expr_false56
  %x059 = phi i32 [ %302, %expr_true57 ], [ %4, %expr_false56 ]
  %304 = fsub float %298, %300, !dbg !220
  %v461 = fmul float %304, %2, !dbg !226
  %305 = fptosi float %v461 to i32, !dbg !227
  %306 = icmp slt i32 %305, %0, !dbg !223
  br i1 %306, label %expr_true61, label %expr_false60, !dbg !224

expr_false60:                                     ; preds = %_cont58
  br label %_cont62, !dbg !225

expr_true61:                                      ; preds = %_cont58
  br label %_cont62, !dbg !225

_cont62:                                          ; preds = %expr_true61, %expr_false60
  %y063 = phi i32 [ %305, %expr_true61 ], [ %0, %expr_false60 ]
  %307 = add nsw i32 1, %x059, !dbg !228
  %308 = icmp slt i32 %307, %4, !dbg !223
  br i1 %308, label %expr_true65, label %expr_false64, !dbg !224

expr_false64:                                     ; preds = %_cont62
  br label %_cont66, !dbg !225

expr_true65:                                      ; preds = %_cont62
  br label %_cont66, !dbg !225

_cont66:                                          ; preds = %expr_true65, %expr_false64
  %x167 = phi i32 [ %307, %expr_true65 ], [ %4, %expr_false64 ]
  %309 = add nsw i32 1, %y063, !dbg !229
  %310 = icmp slt i32 %309, %0, !dbg !223
  br i1 %310, label %expr_true69, label %expr_false68, !dbg !224

expr_false68:                                     ; preds = %_cont66
  br label %_cont70, !dbg !225

expr_true69:                                      ; preds = %_cont66
  br label %_cont70, !dbg !225

_cont70:                                          ; preds = %expr_true69, %expr_false68
  %y171 = phi i32 [ %309, %expr_true69 ], [ %0, %expr_false68 ]
  %311 = extractvalue %2 %if_join40, 1, !dbg !232
  %312 = mul nsw i32 %y171, %width_1042605, !dbg !230
  %313 = extractvalue %2 %if_join36, 2, !dbg !203
  %314 = extractvalue %2 %if_join40, 0, !dbg !233
  %315 = lshr i32 %275, 16, !dbg !234
  %316 = sitofp i32 %255 to float, !dbg !127
  %317 = mul nsw i32 %y063, %width_1042605, !dbg !230
  %r = and i32 255, %275, !dbg !235
  %318 = extractvalue %2 %if_join36, 0, !dbg !204
  %b = and i32 255, %315, !dbg !236
  %319 = add nsw i32 %312, %x059, !dbg !230
  %320 = sitofp i32 %258 to float, !dbg !126
  %321 = add nsw i32 %312, %x167, !dbg !230
  %322 = sitofp i32 %305 to float, !dbg !126
  %323 = lshr i32 %274, 8, !dbg !237
  %324 = fmul float %311, %111, !dbg !201
  %325 = lshr i32 %274, 16, !dbg !234
  %326 = sitofp i32 %302 to float, !dbg !127
  %327 = extractvalue %2 %if_join40, 2, !dbg !238
  %g = and i32 255, %323, !dbg !239
  %328 = add nsw i32 %317, %x167, !dbg !230
  %329 = lshr i32 %276, 8, !dbg !237
  %330 = extractvalue %2 %if_join36, 1, !dbg !205
  %331 = add nsw i32 %317, %x059, !dbg !230
  %ky = fsub float %v, %320, !dbg !240
  %332 = uitofp i32 %b to float, !dbg !241
  %r462 = and i32 255, %274, !dbg !235
  %333 = lshr i32 %275, 8, !dbg !237
  %334 = fsub float 1.000000e+00, %ky, !dbg !242
  %r463 = and i32 255, %276, !dbg !235
  %335 = getelementptr inbounds [0 x i32], [0 x i32]* %pixels_1042604, i64 0, i32 %321, !dbg !231
  %b464 = and i32 255, %325, !dbg !236
  %336 = uitofp i32 %b464 to float, !dbg !241
  %337 = fmul float %314, %105, !dbg !200
  %kx = fsub float %u, %316, !dbg !243
  %338 = uitofp i32 %r to float, !dbg !244
  %339 = getelementptr inbounds [0 x i32], [0 x i32]* %pixels_1042604, i64 0, i32 %319, !dbg !231
  %ky465 = fsub float %v461, %322, !dbg !240
  %340 = fadd float %337, %324, !dbg !200
  %r466 = and i32 255, %277, !dbg !235
  %341 = lshr i32 %277, 8, !dbg !237
  %342 = lshr i32 %277, 16, !dbg !234
  %kx467 = fsub float %u460, %326, !dbg !243
  %343 = fmul float %327, %115, !dbg !199
  %344 = uitofp i32 %g to float, !dbg !245
  %345 = lshr i32 %276, 16, !dbg !234
  %346 = getelementptr inbounds [0 x i32], [0 x i32]* %pixels_1042604, i64 0, i32 %328, !dbg !231
  %g468 = and i32 255, %329, !dbg !239
  %347 = getelementptr inbounds [0 x i32], [0 x i32]* %pixels_1042604, i64 0, i32 %331, !dbg !231
  %348 = fmul float 0x3F70101020000000, %332, !dbg !246
  %349 = uitofp i32 %r462 to float, !dbg !244
  %g469 = and i32 255, %333, !dbg !239
  %350 = uitofp i32 %r463 to float, !dbg !244
  %351 = fmul float 0x3F70101020000000, %336, !dbg !246
  %352 = fmul float %kx, %348, !dbg !247
  %353 = fsub float 1.000000e+00, %kx, !dbg !242
  %354 = fmul float 0x3F70101020000000, %338, !dbg !248
  %355 = fsub float 1.000000e+00, %ky465, !dbg !242
  %356 = fadd float %340, %343, !dbg !200
  %357 = uitofp i32 %r466 to float, !dbg !244
  %g470 = and i32 255, %341, !dbg !239
  %b471 = and i32 255, %342, !dbg !236
  %358 = fsub float 1.000000e+00, %kx467, !dbg !242
  %359 = fmul float 0x3F70101020000000, %344, !dbg !249
  %b472 = and i32 255, %345, !dbg !236
  %360 = uitofp i32 %g468 to float, !dbg !245
  %361 = load i32, i32* %347, align 4, !dbg !231
  %362 = fmul float 0x3F70101020000000, %349, !dbg !248
  %363 = uitofp i32 %g469 to float, !dbg !245
  %364 = fmul float 0x3F70101020000000, %350, !dbg !248
  %365 = fmul float %353, %351, !dbg !250
  %366 = fadd float %365, %352, !dbg !250
  %367 = fmul float %353, %359, !dbg !250
  %368 = fmul float %353, %362, !dbg !250
  %369 = fmul float %353, %364, !dbg !250
  %370 = fmul float %kx, %354, !dbg !247
  %371 = fmul float 2.000000e+00, %356, !dbg !251
  %372 = fmul float 0x3F70101020000000, %357, !dbg !248
  %373 = uitofp i32 %g470 to float, !dbg !245
  %374 = uitofp i32 %b471 to float, !dbg !241
  %375 = uitofp i32 %b472 to float, !dbg !241
  %376 = fmul float 0x3F70101020000000, %360, !dbg !249
  %377 = fmul float 0x3F70101020000000, %363, !dbg !249
  %378 = fmul float %334, %366, !dbg !250
  %379 = fadd float %368, %370, !dbg !250
  %380 = fmul float %327, %371, !dbg !212
  %381 = fmul float %314, %371, !dbg !212
  %382 = fmul float %311, %371, !dbg !212
  %383 = fmul float %kx, %372, !dbg !247
  %384 = fmul float 0x3F70101020000000, %373, !dbg !249
  %385 = fmul float 0x3F70101020000000, %374, !dbg !246
  %386 = fmul float 0x3F70101020000000, %375, !dbg !246
  %387 = fmul float %353, %376, !dbg !250
  %r473 = and i32 255, %361, !dbg !235
  %388 = lshr i32 %361, 8, !dbg !237
  %389 = lshr i32 %361, 16, !dbg !234
  %390 = load i32, i32* %346, align 4, !dbg !231
  %391 = fmul float %kx, %377, !dbg !247
  %392 = fmul float %334, %379, !dbg !250
  %393 = fsub float %380, %115, !dbg !252
  %394 = fsub float %381, %105, !dbg !252
  %395 = fsub float %382, %111, !dbg !252
  %396 = fadd float %369, %383, !dbg !250
  %397 = fmul float %kx, %384, !dbg !247
  %398 = fmul float %kx, %385, !dbg !247
  %399 = fmul float %353, %386, !dbg !250
  %400 = fadd float %387, %397, !dbg !250
  %401 = uitofp i32 %r473 to float, !dbg !244
  %g474 = and i32 255, %388, !dbg !239
  %b475 = and i32 255, %389, !dbg !236
  %402 = fadd float %367, %391, !dbg !250
  %403 = fmul float %ky, %396, !dbg !247
  %404 = fadd float %399, %398, !dbg !250
  %405 = fmul float %ky, %400, !dbg !247
  %406 = fmul float 0x3F70101020000000, %401, !dbg !248
  %407 = uitofp i32 %g474 to float, !dbg !245
  %408 = uitofp i32 %b475 to float, !dbg !241
  %409 = load i32, i32* %339, align 4, !dbg !231
  %r476 = and i32 255, %390, !dbg !235
  %410 = lshr i32 %390, 8, !dbg !237
  %411 = lshr i32 %390, 16, !dbg !234
  %412 = fmul float %334, %402, !dbg !250
  %413 = fadd float %392, %403, !dbg !250
  %414 = fmul float %ky, %404, !dbg !247
  %415 = fadd float %412, %405, !dbg !250
  %416 = fmul float %358, %406, !dbg !250
  %417 = fmul float 0x3F70101020000000, %407, !dbg !249
  %418 = fmul float 0x3F70101020000000, %408, !dbg !246
  %419 = uitofp i32 %r476 to float, !dbg !244
  %g477 = and i32 255, %410, !dbg !239
  %b478 = and i32 255, %411, !dbg !236
  %420 = fmul float 0x3FD45F3060000000, %413, !dbg !253
  %421 = fmul float 0x3FCB367A00000000, %413, !dbg !254
  %422 = fadd float %378, %414, !dbg !250
  %423 = fmul float 0x3FD45F3060000000, %415, !dbg !255
  %424 = fmul float 0x3FE6E2EB20000000, %415, !dbg !256
  %425 = fmul float %358, %417, !dbg !250
  %426 = fmul float %358, %418, !dbg !250
  %427 = load i32, i32* %335, align 4, !dbg !231
  %r479 = and i32 255, %409, !dbg !235
  %428 = lshr i32 %409, 8, !dbg !237
  %429 = lshr i32 %409, 16, !dbg !234
  %430 = fmul float 0x3F70101020000000, %419, !dbg !248
  %431 = uitofp i32 %g477 to float, !dbg !245
  %432 = uitofp i32 %b478 to float, !dbg !241
  %433 = fadd float %421, %424, !dbg !254
  %434 = fmul float 0x3FD45F3060000000, %422, !dbg !257
  %435 = fmul float 0x3FB27BB300000000, %422, !dbg !258
  %436 = uitofp i32 %r479 to float, !dbg !244
  %g480 = and i32 255, %428, !dbg !239
  %b481 = and i32 255, %429, !dbg !236
  %437 = fmul float %kx467, %430, !dbg !247
  %438 = fmul float 0x3F70101020000000, %431, !dbg !249
  %439 = fmul float 0x3F70101020000000, %432, !dbg !246
  %440 = fadd float %433, %435, !dbg !254
  %441 = load i32, i32* %15, align 4, !dbg !259
  %r482 = and i32 255, %427, !dbg !235
  %442 = lshr i32 %427, 8, !dbg !237
  %443 = lshr i32 %427, 16, !dbg !234
  %444 = fmul float 0x3F70101020000000, %436, !dbg !248
  %445 = uitofp i32 %g480 to float, !dbg !245
  %446 = uitofp i32 %b481 to float, !dbg !241
  %447 = fadd float %416, %437, !dbg !250
  %448 = fmul float %kx467, %438, !dbg !247
  %449 = fmul float %kx467, %439, !dbg !247
  %450 = uitofp i32 %r482 to float, !dbg !244
  %g483 = and i32 255, %442, !dbg !239
  %b484 = and i32 255, %443, !dbg !236
  %451 = fmul float %358, %444, !dbg !250
  %452 = fmul float 0x3F70101020000000, %445, !dbg !249
  %453 = fmul float 0x3F70101020000000, %446, !dbg !246
  %454 = fmul float %355, %447, !dbg !250
  %455 = fadd float %425, %448, !dbg !250
  %456 = fadd float %426, %449, !dbg !250
  %457 = icmp eq i32 %441, 0, !dbg !253
  %458 = fmul float 0x3F70101020000000, %450, !dbg !248
  %459 = uitofp i32 %g483 to float, !dbg !245
  %460 = uitofp i32 %b484 to float, !dbg !241
  %461 = fmul float %358, %452, !dbg !250
  %462 = fmul float %358, %453, !dbg !250
  %463 = fmul float %355, %455, !dbg !250
  %464 = fmul float %355, %456, !dbg !250
  %465 = select i1 %457, i32 1, i32 %441, !dbg !260
  %466 = fmul float %kx467, %458, !dbg !247
  %467 = fmul float 0x3F70101020000000, %459, !dbg !249
  %468 = fmul float 0x3F70101020000000, %460, !dbg !246
  %469 = shl i32 %465, 13, !dbg !261
  %470 = fadd float %451, %466, !dbg !250
  %471 = fmul float %kx467, %467, !dbg !247
  %472 = fmul float %kx467, %468, !dbg !247
  %473 = xor i32 %465, %469, !dbg !262
  %474 = fmul float %ky465, %470, !dbg !247
  %475 = fadd float %461, %471, !dbg !250
  %476 = fadd float %462, %472, !dbg !250
  %477 = lshr i32 %473, 17, !dbg !263
  %478 = fadd float %454, %474, !dbg !250
  %479 = fmul float %ky465, %475, !dbg !247
  %480 = fmul float %ky465, %476, !dbg !247
  %481 = xor i32 %473, %477, !dbg !264
  %482 = fmul float 0x3FCB367A00000000, %478, !dbg !254
  %483 = fadd float %463, %479, !dbg !250
  %484 = fadd float %464, %480, !dbg !250
  %485 = shl i32 %481, 5, !dbg !265
  %486 = fmul float 0x3FE6E2EB20000000, %483, !dbg !256
  %487 = fmul float 0x3FB27BB300000000, %484, !dbg !258
  %488 = xor i32 %481, %485, !dbg !266
  %489 = fadd float %482, %486, !dbg !254
  %490 = fadd float %489, %487, !dbg !254
  store i32 %488, i32* %15, align 4, !dbg !267
  %491 = icmp eq i32 %488, 0, !dbg !253
  %492 = fadd float %490, %440, !dbg !268
  %493 = select i1 %491, i32 1, i32 %488, !dbg !260
  %494 = fcmp oeq float %492, 0.000000e+00, !dbg !269
  %495 = fdiv float %490, %492, !dbg !270
  %496 = and i32 8388607, %488, !dbg !271
  %497 = shl i32 %493, 13, !dbg !261
  %498 = select i1 %494, float 0.000000e+00, float %495, !dbg !272
  %499 = or i32 1065353216, %496, !dbg !273
  %500 = xor i32 %493, %497, !dbg !262
  %501 = fsub float 1.000000e+00, %498, !dbg !274
  %502 = bitcast i32 %499 to float, !dbg !275
  %503 = lshr i32 %500, 17, !dbg !263
  %504 = fsub float %502, 1.000000e+00, !dbg !275
  %505 = xor i32 %500, %503, !dbg !264
  %506 = fcmp ole float %498, %504, !dbg !276
  %507 = shl i32 %505, 5, !dbg !265
  %508 = xor i32 %505, %507, !dbg !266
  %509 = icmp eq i32 %508, 0, !dbg !253
  %510 = select i1 %509, i32 1, i32 %508, !dbg !260
  %511 = shl i32 %510, 13, !dbg !261
  %512 = and i32 8388607, %508, !dbg !271
  %513 = xor i32 %510, %511, !dbg !262
  %514 = or i32 1065353216, %512, !dbg !273
  %515 = lshr i32 %513, 17, !dbg !263
  %516 = bitcast i32 %514 to float, !dbg !275
  %517 = xor i32 %513, %515, !dbg !264
  %518 = fsub float %516, 1.000000e+00, !dbg !275
  %519 = shl i32 %517, 5, !dbg !265
  %phi = fmul float 0x401921FB60000000, %518, !dbg !277
  %520 = xor i32 %517, %519, !dbg !266
  %521 = and i32 8388607, %520, !dbg !271
  %522 = or i32 1065353216, %521, !dbg !273
  %523 = bitcast i32 %522 to float, !dbg !275
  %524 = fsub float %523, 1.000000e+00, !dbg !275
  br i1 %506, label %expr_true94, label %expr_false72, !dbg !278

expr_false72:                                     ; preds = %_cont70
  %525 = bitcast float %524 to i32, !dbg !279
  store i32 %508, i32* %15, align 4, !dbg !267
  %526 = uitofp i32 %525 to float, !dbg !280
  %527 = and i32 8388607, %525, !dbg !281
  store i32 %520, i32* %15, align 4, !dbg !267
  %y = fmul float 0x3E80000000000000, %526, !dbg !282
  %mx = or i32 1056964608, %527, !dbg !283
  %528 = fsub float %y, 0x405F0E6EE0000000, !dbg !284
  %529 = bitcast i32 %mx to float, !dbg !285
  %530 = fmul float 0x3FF7F7EEA0000000, %529, !dbg !286
  %531 = fadd float 0x3FD6889F20000000, %529, !dbg !287
  %532 = fsub float %528, %530, !dbg !284
  %533 = fdiv float 0x3FFB9D3460000000, %531, !dbg !288
  %534 = fsub float %532, %533, !dbg !284
  %535 = fmul float 0x3FB3B13B20000000, %534, !dbg !289
  %536 = fcmp olt float %535, -1.260000e+02, !dbg !290
  %537 = fcmp olt float %535, 0.000000e+00, !dbg !291
  %538 = select i1 %536, float -1.260000e+02, float %535, !dbg !292
  %539 = select i1 %537, float 1.000000e+00, float 0.000000e+00, !dbg !293
  %540 = fadd float 0x405E518A20000000, %538, !dbg !294
  %541 = fptosi float %538 to i32, !dbg !295
  %542 = sitofp i32 %541 to float, !dbg !296
  %543 = fsub float %538, %542, !dbg !297
  %z = fadd float %543, %539, !dbg !297
  %544 = fmul float 0x3FF7D791A0000000, %z, !dbg !298
  %545 = fsub float 0x40135EBF00000000, %z, !dbg !299
  %546 = fdiv float 0x403BBA5FC0000000, %545, !dbg !300
  %547 = fadd float %540, %546, !dbg !294
  %548 = fsub float %547, %544, !dbg !294
  %549 = fmul float 0x4160000000000000, %548, !dbg !301
  %550 = fptosi float %549 to i32, !dbg !302
  %551 = bitcast i32 %550 to float, !dbg !303
  %552 = call float @llvm.minnum.f32(float %551, float 1.000000e+00), !dbg !304
  br label %_cont73, !dbg !304

_cont73:                                          ; preds = %expr_false72
  %c = phi float [ %552, %expr_false72 ]
  %553 = fmul float %c, %c, !dbg !305
  %554 = fsub float 1.000000e+00, %553, !dbg !306
  %555 = call float @llvm.sqrt.f32(float %554), !dbg !307
  br label %_cont74, !dbg !307

_cont74:                                          ; preds = %_cont73
  %s = phi float [ %555, %_cont73 ]
  %556 = call float @llvm.cos.f32(float %phi), !dbg !308
  br label %_cont75, !dbg !308

_cont75:                                          ; preds = %_cont74
  %557 = phi float [ %556, %_cont74 ]
  %558 = call float @llvm.sin.f32(float %phi), !dbg !309
  br label %_cont76, !dbg !309

_cont76:                                          ; preds = %_cont75
  %559 = phi float [ %558, %_cont75 ]
  %560 = fmul float %395, %395, !dbg !310
  %561 = fmul float %393, %c, !dbg !199
  %x = fmul float %s, %557, !dbg !311
  %562 = fcmp ole float 0.000000e+00, %393, !dbg !238
  %563 = fsub float -0.000000e+00, %395, !dbg !312
  %564 = fmul float %394, %c, !dbg !199
  %565 = fmul float %394, %395, !dbg !233
  %566 = fmul float %395, %c, !dbg !199
  %y485 = fmul float %s, %559, !dbg !313
  %567 = select i1 %562, float 1.000000e+00, float -1.000000e+00, !dbg !314
  %568 = fmul float %563, %y485, !dbg !201
  %569 = fmul float %567, %394, !dbg !315
  %570 = fsub float -0.000000e+00, %567, !dbg !316
  %571 = fadd float %567, %393, !dbg !317
  %572 = fmul float %569, %394, !dbg !315
  %573 = fmul float %570, %394, !dbg !316
  %a = fdiv float -1.000000e+00, %571, !dbg !318
  %574 = fmul float %572, %a, !dbg !315
  %575 = fmul float %573, %x, !dbg !200
  %b486 = fmul float %565, %a, !dbg !233
  %576 = fmul float %560, %a, !dbg !310
  %577 = fadd float 1.000000e+00, %574, !dbg !319
  %578 = fadd float %575, %568, !dbg !200
  %579 = fmul float %b486, %y485, !dbg !201
  %580 = fmul float %567, %b486, !dbg !320
  %581 = fadd float %567, %576, !dbg !321
  %582 = fmul float %577, %x, !dbg !200
  %583 = fadd float %578, %561, !dbg !200
  %584 = fadd float %582, %579, !dbg !200
  %585 = fmul float %580, %x, !dbg !200
  %586 = fmul float %581, %y485, !dbg !201
  %587 = fmul float %583, %327, !dbg !199
  %588 = fadd float %584, %564, !dbg !200
  %589 = fadd float %585, %586, !dbg !200
  %590 = fmul float %588, %314, !dbg !200
  %591 = fadd float %589, %566, !dbg !200
  %592 = fmul float %591, %311, !dbg !201
  %593 = fadd float %590, %592, !dbg !200
  %594 = fadd float %593, %587, !dbg !200
  %595 = fcmp ole float 0.000000e+00, %594, !dbg !322
  br i1 %595, label %expr_true78, label %expr_false77, !dbg !323

expr_false77:                                     ; preds = %_cont76
  br label %positive_cos_cont, !dbg !324

expr_true78:                                      ; preds = %_cont76
  br label %positive_cos_cont, !dbg !324

positive_cos_cont:                                ; preds = %expr_true78, %expr_false77
  %cos = phi float [ %594, %expr_true78 ], [ 0.000000e+00, %expr_false77 ]
  %596 = fdiv float %524, %c, !dbg !325
  %597 = fcmp une float %c, 0.000000e+00, !dbg !326
  %598 = select i1 %597, float %596, float 0.000000e+00, !dbg !327
  %599 = fmul float 1.300000e+01, %598, !dbg !328
  %pdf = fmul float 0x3FC45F3060000000, %599, !dbg !328
  %600 = fcmp olt float 0.000000e+00, %pdf, !dbg !329
  br i1 %600, label %expr_true80, label %expr_false79, !dbg !330

expr_false79:                                     ; preds = %positive_cos_cont
  br label %jump_true, !dbg !159

expr_true80:                                      ; preds = %positive_cos_cont
  %601 = fmul float %588, %318, !dbg !200
  %602 = fmul float %583, %313, !dbg !199
  %603 = fmul float %591, %330, !dbg !201
  %604 = fadd float %601, %603, !dbg !200
  %605 = fadd float %604, %602, !dbg !200
  %606 = fcmp olt float 0.000000e+00, %605, !dbg !331
  br i1 %606, label %expr_true82, label %expr_false81, !dbg !332

expr_false81:                                     ; preds = %expr_true80
  br label %jump_true, !dbg !159

jump_true:                                        ; preds = %expr_false81, %expr_false79
  br label %infix_result, !dbg !159

expr_true82:                                      ; preds = %expr_true80
  br label %infix_result, !dbg !159

infix_result:                                     ; preds = %expr_true82, %jump_true
  %valid = phi i1 [ true, %expr_true82 ], [ false, %jump_true ]
  br i1 %valid, label %expr_true84, label %expr_false83, !dbg !333

expr_false83:                                     ; preds = %infix_result
  br label %if_join85, !dbg !334

expr_true84:                                      ; preds = %infix_result
  br label %if_join85, !dbg !334

if_join85:                                        ; preds = %expr_true84, %expr_false83
  %if_join86 = phi float [ %pdf, %expr_true84 ], [ 1.000000e+00, %expr_false83 ]
  br i1 %valid, label %expr_true88, label %expr_false87, !dbg !129

expr_false87:                                     ; preds = %if_join85
  br label %if_join89, !dbg !335

expr_true88:                                      ; preds = %if_join85
  %607 = fmul float 1.400000e+01, %pdf, !dbg !336
  %608 = fdiv float %607, 1.300000e+01, !dbg !336
  %609 = fmul float %478, %608, !dbg !253
  %610 = fmul float %483, %608, !dbg !255
  %611 = fmul float %484, %608, !dbg !257
  %612 = insertvalue %5 undef, float %609, 0, !dbg !183
  %613 = insertvalue %5 %612, float %610, 1, !dbg !183
  %614 = insertvalue %5 %613, float %611, 2, !dbg !183
  br label %if_join89, !dbg !335

if_join89:                                        ; preds = %expr_true88, %expr_false87
  %if_join90 = phi %5 [ %614, %expr_true88 ], [ zeroinitializer, %expr_false87 ]
  br i1 %595, label %expr_true92, label %expr_false91, !dbg !323

expr_false91:                                     ; preds = %if_join89
  br label %positive_cos_cont93, !dbg !324

expr_true92:                                      ; preds = %if_join89
  br label %positive_cos_cont93, !dbg !324

positive_cos_cont93:                              ; preds = %expr_true92, %expr_false91
  %positive_cos = phi float [ %594, %expr_true92 ], [ 0.000000e+00, %expr_false91 ]
  %615 = fmul float %501, %423, !dbg !337
  %616 = extractvalue %5 %if_join90, 1, !dbg !338
  %617 = extractvalue %5 %if_join90, 0, !dbg !339
  %618 = fmul float 0x3FD45F3060000000, %positive_cos, !dbg !340
  %619 = extractvalue %5 %if_join90, 2, !dbg !341
  %620 = fmul float %501, %420, !dbg !342
  %621 = fmul float %501, %618, !dbg !250
  %622 = fmul float %501, %434, !dbg !314
  %623 = insertvalue %2 undef, float %588, 0, !dbg !209
  %624 = insertvalue %2 %623, float %591, 1, !dbg !209
  %625 = insertvalue %2 %624, float %583, 2, !dbg !209
  %626 = insertvalue %6 undef, %2 %625, 0, !dbg !343
  %627 = insertvalue %6 %626, float %if_join86, 1, !dbg !343
  %628 = insertvalue %6 %627, float %cos, 2, !dbg !343
  %629 = insertvalue %6 %628, %5 %if_join90, 3, !dbg !343
  %630 = fmul float %498, %616, !dbg !344
  %631 = fmul float %498, %617, !dbg !345
  %632 = fmul float %498, %if_join86, !dbg !247
  %633 = fadd float %615, %630, !dbg !337
  %634 = fmul float %498, %619, !dbg !346
  %635 = fadd float %620, %631, !dbg !342
  %636 = fadd float %621, %632, !dbg !250
  %637 = fadd float %622, %634, !dbg !314
  %638 = insertvalue %5 undef, float %635, 0, !dbg !183
  %639 = insertvalue %5 %638, float %633, 1, !dbg !183
  %640 = insertvalue %5 %639, float %637, 2, !dbg !183
  br label %if_join124, !dbg !347

expr_true94:                                      ; preds = %_cont70
  %641 = fsub float 1.000000e+00, %524, !dbg !348
  store i32 %508, i32* %15, align 4, !dbg !267
  store i32 %520, i32* %15, align 4, !dbg !267
  %642 = call float @llvm.sqrt.f32(float %641), !dbg !349
  br label %_cont95, !dbg !349

_cont95:                                          ; preds = %expr_true94
  %c96 = phi float [ %642, %expr_true94 ]
  %643 = call float @llvm.sqrt.f32(float %524), !dbg !350
  br label %_cont97, !dbg !350

_cont97:                                          ; preds = %_cont95
  %s98 = phi float [ %643, %_cont95 ]
  %644 = call float @llvm.cos.f32(float %phi), !dbg !308
  br label %_cont99, !dbg !308

_cont99:                                          ; preds = %_cont97
  %645 = phi float [ %644, %_cont97 ]
  %646 = call float @llvm.sin.f32(float %phi), !dbg !309
  br label %_cont100, !dbg !309

_cont100:                                         ; preds = %_cont99
  %647 = phi float [ %646, %_cont99 ]
  %648 = fcmp ole float 0.000000e+00, %327, !dbg !238
  %649 = fmul float %311, %311, !dbg !310
  %y487 = fmul float %s98, %647, !dbg !313
  %650 = select i1 %648, float 1.000000e+00, float -1.000000e+00, !dbg !314
  %x488 = fmul float %s98, %645, !dbg !311
  %651 = fmul float %314, %311, !dbg !233
  %652 = fsub float -0.000000e+00, %311, !dbg !312
  %653 = fadd float %650, %327, !dbg !317
  %654 = fmul float %311, %c96, !dbg !199
  %655 = fmul float 0x3FD45F3060000000, %c96, !dbg !340
  %656 = fmul float %327, %c96, !dbg !199
  %657 = fmul float %650, %314, !dbg !315
  %658 = fmul float %314, %c96, !dbg !199
  %659 = fmul float %652, %y487, !dbg !201
  %660 = fsub float -0.000000e+00, %650, !dbg !316
  %a489 = fdiv float -1.000000e+00, %653, !dbg !318
  %661 = fcmp olt float 0.000000e+00, %655, !dbg !329
  %662 = fmul float %657, %314, !dbg !315
  %663 = fmul float %660, %314, !dbg !316
  %b490 = fmul float %651, %a489, !dbg !233
  %664 = fmul float %662, %a489, !dbg !315
  %665 = fmul float %649, %a489, !dbg !310
  %666 = fmul float %663, %x488, !dbg !200
  %667 = fmul float %b490, %y487, !dbg !201
  %668 = fmul float %650, %b490, !dbg !320
  %669 = fadd float 1.000000e+00, %664, !dbg !319
  %670 = fadd float %650, %665, !dbg !321
  %671 = fadd float %666, %659, !dbg !200
  %672 = fmul float %668, %x488, !dbg !200
  %673 = fmul float %669, %x488, !dbg !200
  %674 = fmul float %670, %y487, !dbg !201
  %675 = fadd float %671, %656, !dbg !200
  %676 = fadd float %672, %674, !dbg !200
  %677 = fadd float %673, %667, !dbg !200
  %678 = fadd float %676, %654, !dbg !200
  %679 = fadd float %677, %658, !dbg !200
  br i1 %661, label %expr_true102, label %expr_false101, !dbg !330

expr_false101:                                    ; preds = %_cont100
  br label %jump_true104, !dbg !159

expr_true102:                                     ; preds = %_cont100
  %680 = fmul float %675, %313, !dbg !199
  %681 = fmul float %678, %330, !dbg !201
  %682 = fmul float %679, %318, !dbg !200
  %683 = fadd float %682, %681, !dbg !200
  %684 = fadd float %683, %680, !dbg !200
  %685 = fcmp olt float 0.000000e+00, %684, !dbg !331
  br i1 %685, label %expr_true105, label %expr_false103, !dbg !332

expr_false103:                                    ; preds = %expr_true102
  br label %jump_true104, !dbg !159

jump_true104:                                     ; preds = %expr_false103, %expr_false101
  br label %infix_result106, !dbg !159

expr_true105:                                     ; preds = %expr_true102
  br label %infix_result106, !dbg !159

infix_result106:                                  ; preds = %expr_true105, %jump_true104
  %valid107 = phi i1 [ true, %expr_true105 ], [ false, %jump_true104 ]
  br i1 %valid107, label %expr_true109, label %expr_false108, !dbg !333

expr_false108:                                    ; preds = %infix_result106
  br label %if_join110, !dbg !334

expr_true109:                                     ; preds = %infix_result106
  br label %if_join110, !dbg !334

if_join110:                                       ; preds = %expr_true109, %expr_false108
  %if_join111 = phi float [ %655, %expr_true109 ], [ 1.000000e+00, %expr_false108 ]
  br i1 %valid107, label %expr_true113, label %expr_false112, !dbg !129

expr_false112:                                    ; preds = %if_join110
  br label %if_join114, !dbg !335

expr_true113:                                     ; preds = %if_join110
  %686 = insertvalue %5 undef, float %420, 0, !dbg !183
  %687 = insertvalue %5 %686, float %423, 1, !dbg !183
  %688 = insertvalue %5 %687, float %434, 2, !dbg !183
  br label %if_join114, !dbg !335

if_join114:                                       ; preds = %expr_true113, %expr_false112
  %if_join115 = phi %5 [ %688, %expr_true113 ], [ zeroinitializer, %expr_false112 ]
  %689 = fmul float %679, %394, !dbg !200
  %690 = fmul float %678, %395, !dbg !201
  %691 = fmul float %675, %393, !dbg !199
  %692 = fadd float %689, %690, !dbg !200
  %693 = fadd float %692, %691, !dbg !200
  %694 = fcmp ole float 0.000000e+00, %693, !dbg !322
  br i1 %694, label %expr_true117, label %expr_false116, !dbg !323

expr_false116:                                    ; preds = %if_join114
  br label %positive_cos_cont118, !dbg !324

expr_true117:                                     ; preds = %if_join114
  br label %positive_cos_cont118, !dbg !324

positive_cos_cont118:                             ; preds = %expr_true117, %expr_false116
  %cos119 = phi float [ %693, %expr_true117 ], [ 0.000000e+00, %expr_false116 ]
  br i1 %694, label %expr_true121, label %expr_false120, !dbg !323

expr_false120:                                    ; preds = %positive_cos_cont118
  br label %positive_cos_cont122, !dbg !324

expr_true121:                                     ; preds = %positive_cos_cont118
  br label %positive_cos_cont122, !dbg !324

positive_cos_cont122:                             ; preds = %expr_true121, %expr_false120
  %cos123 = phi float [ %693, %expr_true121 ], [ 0.000000e+00, %expr_false120 ]
  %695 = extractvalue %5 %if_join115, 1, !dbg !351
  %696 = fmul float %501, %if_join111, !dbg !250
  %697 = extractvalue %5 %if_join115, 2, !dbg !352
  %698 = fmul float %501, %695, !dbg !337
  %699 = extractvalue %5 %if_join115, 0, !dbg !353
  %700 = insertvalue %2 undef, float %679, 0, !dbg !209
  %701 = insertvalue %2 %700, float %678, 1, !dbg !209
  %702 = insertvalue %2 %701, float %675, 2, !dbg !209
  %703 = bitcast float %cos123 to i32, !dbg !279
  %704 = uitofp i32 %703 to float, !dbg !280
  %705 = bitcast float %cos119 to i32, !dbg !279
  %706 = fmul float %501, %697, !dbg !314
  %707 = fmul float %501, %699, !dbg !342
  %708 = insertvalue %6 undef, %2 %702, 0, !dbg !343
  %709 = insertvalue %6 %708, float %if_join111, 1, !dbg !343
  %710 = insertvalue %6 %709, float %c96, 2, !dbg !343
  %711 = insertvalue %6 %710, %5 %if_join115, 3, !dbg !343
  %712 = and i32 8388607, %703, !dbg !281
  %y491 = fmul float 0x3E80000000000000, %704, !dbg !282
  %713 = uitofp i32 %705 to float, !dbg !280
  %714 = and i32 8388607, %705, !dbg !281
  %mx492 = or i32 1056964608, %712, !dbg !283
  %715 = fsub float %y491, 0x405F0E6EE0000000, !dbg !284
  %y493 = fmul float 0x3E80000000000000, %713, !dbg !282
  %mx494 = or i32 1056964608, %714, !dbg !283
  %716 = bitcast i32 %mx492 to float, !dbg !285
  %717 = fsub float %y493, 0x405F0E6EE0000000, !dbg !284
  %718 = bitcast i32 %mx494 to float, !dbg !285
  %719 = fmul float 0x3FF7F7EEA0000000, %716, !dbg !286
  %720 = fadd float 0x3FD6889F20000000, %716, !dbg !287
  %721 = fmul float 0x3FF7F7EEA0000000, %718, !dbg !286
  %722 = fadd float 0x3FD6889F20000000, %718, !dbg !287
  %723 = fsub float %715, %719, !dbg !284
  %724 = fdiv float 0x3FFB9D3460000000, %720, !dbg !288
  %725 = fsub float %717, %721, !dbg !284
  %726 = fdiv float 0x3FFB9D3460000000, %722, !dbg !288
  %727 = fsub float %723, %724, !dbg !284
  %728 = fsub float %725, %726, !dbg !284
  %729 = fmul float 1.200000e+01, %727, !dbg !289
  %730 = fmul float 1.200000e+01, %728, !dbg !289
  %731 = fcmp olt float %729, -1.260000e+02, !dbg !290
  %732 = fcmp olt float %729, 0.000000e+00, !dbg !291
  %733 = fcmp olt float %730, -1.260000e+02, !dbg !290
  %734 = fcmp olt float %730, 0.000000e+00, !dbg !291
  %735 = select i1 %731, float -1.260000e+02, float %729, !dbg !292
  %736 = select i1 %732, float 1.000000e+00, float 0.000000e+00, !dbg !293
  %737 = select i1 %733, float -1.260000e+02, float %730, !dbg !292
  %738 = select i1 %734, float 1.000000e+00, float 0.000000e+00, !dbg !293
  %739 = fadd float 0x405E518A20000000, %735, !dbg !294
  %740 = fptosi float %735 to i32, !dbg !295
  %741 = fadd float 0x405E518A20000000, %737, !dbg !294
  %742 = fptosi float %737 to i32, !dbg !295
  %743 = sitofp i32 %740 to float, !dbg !296
  %744 = sitofp i32 %742 to float, !dbg !296
  %745 = fsub float %735, %743, !dbg !297
  %746 = fsub float %737, %744, !dbg !297
  %z495 = fadd float %745, %736, !dbg !297
  %z496 = fadd float %746, %738, !dbg !297
  %747 = fmul float 0x3FF7D791A0000000, %z495, !dbg !298
  %748 = fsub float 0x40135EBF00000000, %z495, !dbg !299
  %749 = fmul float 0x3FF7D791A0000000, %z496, !dbg !298
  %750 = fsub float 0x40135EBF00000000, %z496, !dbg !299
  %751 = fdiv float 0x403BBA5FC0000000, %748, !dbg !300
  %752 = fdiv float 0x403BBA5FC0000000, %750, !dbg !300
  %753 = fadd float %739, %751, !dbg !294
  %754 = fadd float %741, %752, !dbg !294
  %755 = fsub float %753, %747, !dbg !294
  %756 = fsub float %754, %749, !dbg !294
  %757 = fmul float 0x4160000000000000, %755, !dbg !301
  %758 = fmul float 0x4160000000000000, %756, !dbg !301
  %759 = fptosi float %757 to i32, !dbg !302
  %760 = fptosi float %758 to i32, !dbg !302
  %761 = bitcast i32 %759 to float, !dbg !303
  %762 = bitcast i32 %760 to float, !dbg !303
  %763 = fmul float 1.400000e+01, %761, !dbg !354
  %764 = fmul float 1.300000e+01, %762, !dbg !355
  %765 = fmul float 0x3FC45F3060000000, %763, !dbg !354
  %766 = fmul float 0x3FC45F3060000000, %764, !dbg !355
  %767 = fmul float %478, %765, !dbg !253
  %768 = fmul float %483, %765, !dbg !255
  %769 = fmul float %484, %765, !dbg !257
  %770 = fmul float %498, %766, !dbg !247
  %771 = fmul float %498, %767, !dbg !345
  %772 = fmul float %498, %768, !dbg !344
  %773 = fmul float %498, %769, !dbg !346
  %774 = fadd float %696, %770, !dbg !250
  %775 = fadd float %707, %771, !dbg !342
  %776 = fadd float %698, %772, !dbg !337
  %777 = fadd float %706, %773, !dbg !314
  %778 = insertvalue %5 undef, float %775, 0, !dbg !183
  %779 = insertvalue %5 %778, float %776, 1, !dbg !183
  %780 = insertvalue %5 %779, float %777, 2, !dbg !183
  br label %if_join124, !dbg !347

if_join124:                                       ; preds = %positive_cos_cont122, %positive_cos_cont93
  %if_join125 = phi %6 [ %711, %positive_cos_cont122 ], [ %629, %positive_cos_cont93 ]
  %if_join126 = phi float [ %774, %positive_cos_cont122 ], [ %636, %positive_cos_cont93 ]
  %if_join127 = phi %5 [ %780, %positive_cos_cont122 ], [ %640, %positive_cos_cont93 ]
  %781 = load %5, %5* %16, align 4, !dbg !124
  %782 = extractvalue %6 %if_join125, 0, !dbg !356
  %783 = extractvalue %2 %782, 0, !dbg !357
  %784 = fcmp olt float 0.000000e+00, %783, !dbg !170
  %785 = fsub float -0.000000e+00, %783, !dbg !169
  %786 = select i1 %784, float %783, float %785, !dbg !171
  %787 = fcmp olt float %786, 0x3E45798EE0000000, !dbg !171
  br i1 %787, label %expr_true129, label %expr_false128, !dbg !347

expr_false128:                                    ; preds = %if_join124
  br label %safe_rcp_cont130, !dbg !173

expr_true129:                                     ; preds = %if_join124
  br label %safe_rcp_cont130, !dbg !174

safe_rcp_cont130:                                 ; preds = %expr_true129, %expr_false128
  %788 = extractvalue %2 %782, 1, !dbg !358
  %789 = fcmp olt float 0.000000e+00, %788, !dbg !170
  %790 = fsub float -0.000000e+00, %788, !dbg !169
  %791 = select i1 %789, float %788, float %790, !dbg !171
  %792 = fcmp olt float %791, 0x3E45798EE0000000, !dbg !171
  br i1 %792, label %expr_true132, label %expr_false131, !dbg !172

expr_false131:                                    ; preds = %safe_rcp_cont130
  br label %safe_rcp_cont133, !dbg !173

expr_true132:                                     ; preds = %safe_rcp_cont130
  br label %safe_rcp_cont133, !dbg !174

safe_rcp_cont133:                                 ; preds = %expr_true132, %expr_false131
  %793 = extractvalue %2 %782, 2, !dbg !359
  %794 = fcmp olt float 0.000000e+00, %793, !dbg !170
  %795 = fsub float -0.000000e+00, %793, !dbg !169
  %796 = select i1 %794, float %793, float %795, !dbg !171
  %797 = fcmp olt float %796, 0x3E45798EE0000000, !dbg !171
  br i1 %797, label %expr_true135, label %expr_false134, !dbg !172

expr_false134:                                    ; preds = %safe_rcp_cont133
  br label %safe_rcp_cont136, !dbg !173

expr_true135:                                     ; preds = %safe_rcp_cont133
  br label %safe_rcp_cont136, !dbg !174

safe_rcp_cont136:                                 ; preds = %expr_true135, %expr_false134
  %798 = getelementptr inbounds [0 x float], [0 x float]* %47, i64 0, i32 %lower23, !dbg !145
  %799 = getelementptr inbounds [0 x float], [0 x float]* %57, i64 0, i32 %lower23, !dbg !155
  %800 = getelementptr inbounds [0 x float], [0 x float]* %46, i64 0, i32 %lower23, !dbg !144
  %801 = getelementptr inbounds [0 x float], [0 x float]* %48, i64 0, i32 %lower23, !dbg !146
  %802 = getelementptr inbounds [0 x float], [0 x float]* %50, i64 0, i32 %lower23, !dbg !148
  %803 = getelementptr inbounds [0 x float], [0 x float]* %52, i64 0, i32 %lower23, !dbg !150
  %804 = getelementptr inbounds [0 x i32], [0 x i32]* %60, i64 0, i32 %lower23, !dbg !158
  %805 = extractvalue %5 %if_join127, 0, !dbg !360
  %806 = fmul float %107, %132, !dbg !212
  %807 = getelementptr inbounds [0 x float], [0 x float]* %51, i64 0, i32 %lower23, !dbg !149
  %808 = getelementptr inbounds [0 x float], [0 x float]* %59, i64 0, i32 %lower23, !dbg !157
  %809 = getelementptr inbounds [0 x float], [0 x float]* %58, i64 0, i32 %lower23, !dbg !156
  %810 = extractvalue %5 %if_join127, 2, !dbg !361
  %811 = extractvalue %5 %if_join127, 1, !dbg !362
  %812 = getelementptr inbounds [0 x float], [0 x float]* %53, i64 0, i32 %lower23, !dbg !151
  %813 = getelementptr inbounds [0 x float], [0 x float]* %56, i64 0, i32 %lower23, !dbg !154
  %814 = add nsw i32 1, %lower23, !dbg !167
  %815 = fdiv float 1.000000e+00, %if_join126, !dbg !363
  %816 = getelementptr inbounds [0 x i32], [0 x i32]* %55, i64 0, i32 %lower23, !dbg !153
  %817 = fmul float %110, %132, !dbg !212
  %818 = fadd float %102, %806, !dbg !364
  %819 = getelementptr inbounds [0 x float], [0 x float]* %49, i64 0, i32 %lower23, !dbg !147
  %820 = extractvalue %6 %if_join125, 2, !dbg !365
  %821 = load i32, i32* %15, align 4, !dbg !366
  %822 = fmul float %104, %132, !dbg !212
  %823 = fadd float %103, %817, !dbg !364
  %824 = fadd float %96, %822, !dbg !364
  %825 = extractvalue %5 %781, 2, !dbg !367
  %826 = extractvalue %5 %781, 1, !dbg !368
  %827 = extractvalue %5 %781, 0, !dbg !369
  %828 = fdiv float %820, %if_join126, !dbg !370
  %829 = fmul float %825, %810, !dbg !367
  %830 = fmul float %826, %811, !dbg !368
  %831 = fmul float %827, %805, !dbg !369
  %832 = fmul float %829, %828, !dbg !257
  %833 = fmul float %830, %828, !dbg !255
  %834 = fmul float %831, %828, !dbg !253
  %835 = load i32, i32* %17, align 4, !dbg !125
  %836 = add nsw i32 1, %835, !dbg !125
  store float %824, float* %812, align 4, !dbg !151
  store float %818, float* %803, align 4, !dbg !150
  store float %823, float* %807, align 4, !dbg !149
  store float %783, float* %801, align 4, !dbg !146
  store float %788, float* %819, align 4, !dbg !147
  store float %793, float* %800, align 4, !dbg !144
  store float 0x3F1A36E2E0000000, float* %798, align 4, !dbg !145
  store float 0x47EFFFFFE0000000, float* %802, align 4, !dbg !148
  store i32 %821, i32* %804, align 4, !dbg !158
  store float %834, float* %808, align 4, !dbg !157
  store float %833, float* %809, align 4, !dbg !156
  store float %832, float* %813, align 4, !dbg !154
  store float %815, float* %799, align 4, !dbg !155
  store i32 %836, i32* %816, align 4, !dbg !153
  br label %unroll_step22, !dbg !168

expr_true137:                                     ; preds = %unroll_step19
  %837 = extractvalue %1 %14, 2, !dbg !371
  %838 = extractvalue %1 %14, 5, !dbg !375
  %839 = extractvalue %1 %14, 3, !dbg !376
  %840 = extractvalue %1 %14, 6, !dbg !377
  %841 = extractvalue %1 %14, 1, !dbg !378
  %842 = extractvalue %1 %14, 4, !dbg !379
  %843 = getelementptr inbounds [0 x float], [0 x float]* %841, i64 0, i32 %lower20, !dbg !380
  %vec_cast.i = bitcast float* %843 to <8 x float>*, !dbg !380
  %cont_load.i = load <8 x float>, <8 x float>* %vec_cast.i, align 4, !dbg !380
  %844 = getelementptr inbounds [0 x float], [0 x float]* %837, i64 0, i32 %lower20, !dbg !380
  %vec_cast1.i = bitcast float* %844 to <8 x float>*, !dbg !380
  %cont_load2.i = load <8 x float>, <8 x float>* %vec_cast1.i, align 4, !dbg !380
  %845 = getelementptr inbounds [0 x float], [0 x float]* %839, i64 0, i32 %lower20, !dbg !380
  %vec_cast3.i = bitcast float* %845 to <8 x float>*, !dbg !380
  %cont_load4.i = load <8 x float>, <8 x float>* %vec_cast3.i, align 4, !dbg !380
  %846 = getelementptr inbounds [0 x float], [0 x float]* %842, i64 0, i32 %lower20, !dbg !380
  %vec_cast5.i = bitcast float* %846 to <8 x float>*, !dbg !380
  %cont_load6.i = load <8 x float>, <8 x float>* %vec_cast5.i, align 4, !dbg !380
  %847 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> zeroinitializer, <8 x float> %cont_load6.i, i8 1), !dbg !381
  %848 = bitcast <8 x float> %847 to <8 x i32>, !dbg !381
  %849 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %cont_load6.i, !dbg !381
  %850 = getelementptr inbounds [0 x float], [0 x float]* %838, i64 0, i32 %lower20, !dbg !380
  %vec_cast7.i = bitcast float* %850 to <8 x float>*, !dbg !380
  %cont_load8.i = load <8 x float>, <8 x float>* %vec_cast7.i, align 4, !dbg !380
  %851 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %849, <8 x float> %cont_load6.i, <8 x float> %847), !dbg !380
  %852 = getelementptr inbounds [0 x float], [0 x float]* %840, i64 0, i32 %lower20, !dbg !380
  %vec_cast9.i = bitcast float* %852 to <8 x float>*, !dbg !380
  %cont_load10.i = load <8 x float>, <8 x float>* %vec_cast9.i, align 4, !dbg !380
  %853 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %cont_load8.i, !dbg !381
  %854 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> zeroinitializer, <8 x float> %cont_load8.i, i8 1), !dbg !382
  %855 = bitcast <8 x float> %854 to <8 x i32>, !dbg !382
  %856 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %853, <8 x float> %cont_load8.i, <8 x float> %854), !dbg !383
  %857 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> zeroinitializer, <8 x float> %cont_load10.i, i8 1), !dbg !381
  %858 = bitcast <8 x float> %857 to <8 x i32>, !dbg !381
  %859 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %cont_load10.i, !dbg !381
  %860 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %859, <8 x float> %cont_load10.i, <8 x float> %857), !dbg !384
  %861 = extractvalue %0 %38, 9, !dbg !384
  %862 = extractvalue %0 %33, 3, !dbg !385
  %863 = extractvalue %0 %38, 6, !dbg !386
  %864 = extractvalue %0 %38, 11, !dbg !387
  %865 = extractvalue %0 %38, 7, !dbg !388
  %866 = extractvalue %0 %33, 5, !dbg !389
  %867 = extractvalue %0 %33, 4, !dbg !390
  %868 = extractvalue %0 %33, 2, !dbg !391
  %869 = extractvalue %0 %38, 8, !dbg !392
  %870 = extractvalue %0 %38, 10, !dbg !393
  %871 = getelementptr inbounds [0 x i32], [0 x i32]* %868, i64 0, i32 %lower20, !dbg !380
  %vec_cast11.i = bitcast i32* %871 to <8 x i32>*, !dbg !380
  %cont_load12.i = load <8 x i32>, <8 x i32>* %vec_cast11.i, align 4, !dbg !380
  %872 = mul nsw <8 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, %cont_load12.i, !dbg !394
  %873 = getelementptr inbounds [0 x float], [0 x float]* %862, i64 0, i32 %lower20, !dbg !380
  %vec_cast13.i = bitcast float* %873 to <8 x float>*, !dbg !380
  %cont_load14.i = load <8 x float>, <8 x float>* %vec_cast13.i, align 4, !dbg !380
  %874 = add nsw <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>, %872, !dbg !395
  %875 = add nsw <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, %872, !dbg !396
  %876 = getelementptr inbounds [0 x float], [0 x float]* %867, i64 0, i32 %lower20, !dbg !380
  %vec_cast15.i = bitcast float* %876 to <8 x float>*, !dbg !380
  %cont_load16.i = load <8 x float>, <8 x float>* %vec_cast15.i, align 4, !dbg !380
  %877 = fsub <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %cont_load16.i, !dbg !397
  %878 = getelementptr inbounds [0 x float], [0 x float]* %866, i64 0, i32 %lower20, !dbg !380
  %vec_cast17.i = bitcast float* %878 to <8 x float>*, !dbg !380
  %cont_load18.i = load <8 x float>, <8 x float>* %vec_cast17.i, align 4, !dbg !380
  %879 = fsub <8 x float> %877, %cont_load18.i, !dbg !397
  %880 = getelementptr inbounds [0 x i32], [0 x i32]* %863, i64 0, i32 %lower20, !dbg !380
  %vec_cast19.i = bitcast i32* %880 to <8 x i32>*, !dbg !380
  %cont_load20.i = load <8 x i32>, <8 x i32>* %vec_cast19.i, align 4, !dbg !380
  %881 = getelementptr inbounds [0 x float], [0 x float]* %869, i64 0, i32 %lower20, !dbg !380
  %vec_cast21.i = bitcast float* %881 to <8 x float>*, !dbg !380
  %cont_load22.i = load <8 x float>, <8 x float>* %vec_cast21.i, align 4, !dbg !380
  %extract70.i = extractelement <8 x float> %cont_load22.i, i32 7, !dbg !380
  %extract68.i = extractelement <8 x float> %cont_load22.i, i32 6, !dbg !380
  %extract66.i = extractelement <8 x float> %cont_load22.i, i32 5, !dbg !380
  %extract64.i = extractelement <8 x float> %cont_load22.i, i32 4, !dbg !380
  %extract62.i = extractelement <8 x float> %cont_load22.i, i32 3, !dbg !380
  %extract60.i = extractelement <8 x float> %cont_load22.i, i32 2, !dbg !380
  %extract58.i = extractelement <8 x float> %cont_load22.i, i32 1, !dbg !380
  %extract.i = extractelement <8 x float> %cont_load22.i, i32 0, !dbg !380
  %882 = getelementptr inbounds [0 x float], [0 x float]* %861, i64 0, i32 %lower20, !dbg !380
  %vec_cast23.i = bitcast float* %882 to <8 x float>*, !dbg !380
  %cont_load24.i = load <8 x float>, <8 x float>* %vec_cast23.i, align 4, !dbg !380
  %extract85.i = extractelement <8 x float> %cont_load24.i, i32 7, !dbg !380
  %extract83.i = extractelement <8 x float> %cont_load24.i, i32 6, !dbg !380
  %extract81.i = extractelement <8 x float> %cont_load24.i, i32 5, !dbg !380
  %extract79.i = extractelement <8 x float> %cont_load24.i, i32 4, !dbg !380
  %extract77.i = extractelement <8 x float> %cont_load24.i, i32 3, !dbg !380
  %extract75.i = extractelement <8 x float> %cont_load24.i, i32 2, !dbg !380
  %extract73.i = extractelement <8 x float> %cont_load24.i, i32 1, !dbg !380
  %extract72.i = extractelement <8 x float> %cont_load24.i, i32 0, !dbg !380
  %883 = getelementptr inbounds [0 x float], [0 x float]* %870, i64 0, i32 %lower20, !dbg !380
  %vec_cast25.i = bitcast float* %883 to <8 x float>*, !dbg !380
  %cont_load26.i = load <8 x float>, <8 x float>* %vec_cast25.i, align 4, !dbg !380
  %extract100.i = extractelement <8 x float> %cont_load26.i, i32 7, !dbg !380
  %extract98.i = extractelement <8 x float> %cont_load26.i, i32 6, !dbg !380
  %extract96.i = extractelement <8 x float> %cont_load26.i, i32 5, !dbg !380
  %extract94.i = extractelement <8 x float> %cont_load26.i, i32 4, !dbg !380
  %extract92.i = extractelement <8 x float> %cont_load26.i, i32 3, !dbg !380
  %extract90.i = extractelement <8 x float> %cont_load26.i, i32 2, !dbg !380
  %extract88.i = extractelement <8 x float> %cont_load26.i, i32 1, !dbg !380
  %extract87.i = extractelement <8 x float> %cont_load26.i, i32 0, !dbg !380
  %884 = getelementptr inbounds [0 x float], [0 x float]* %865, i64 0, i32 %lower20, !dbg !380
  %vec_cast27.i = bitcast float* %884 to <8 x float>*, !dbg !380
  %cont_load28.i = load <8 x float>, <8 x float>* %vec_cast27.i, align 4, !dbg !380
  %885 = getelementptr inbounds [0 x i32], [0 x i32]* %864, i64 0, i32 %lower20, !dbg !380
  %vec_cast29.i = bitcast i32* %885 to <8 x i32>*, !dbg !380
  %cont_load30.i = load <8 x i32>, <8 x i32>* %vec_cast29.i, align 4, !dbg !380
  %886 = getelementptr inbounds [0 x i32], [0 x i32]* %indices_1042603, <8 x i64> zeroinitializer, <8 x i32> %872, !dbg !380
  %887 = bitcast [0 x i32]* %indices_1042603 to i8*, !dbg !380
  %888 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %887, <8 x i32> %872, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 4), !dbg !380
  %889 = bitcast <8 x float> %888 to <8 x i32>, !dbg !380
  %890 = getelementptr inbounds [0 x i32], [0 x i32]* %indices_1042603, <8 x i64> zeroinitializer, <8 x i32> %875, !dbg !380
  %891 = bitcast [0 x i32]* %indices_1042603 to i8*, !dbg !380
  %892 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %891, <8 x i32> %875, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 4), !dbg !380
  %893 = bitcast <8 x float> %892 to <8 x i32>, !dbg !380
  %894 = getelementptr inbounds [0 x i32], [0 x i32]* %indices_1042603, <8 x i64> zeroinitializer, <8 x i32> %874, !dbg !380
  %895 = bitcast [0 x i32]* %indices_1042603 to i8*, !dbg !380
  %896 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %895, <8 x i32> %874, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 4), !dbg !380
  %897 = bitcast <8 x float> %896 to <8 x i32>, !dbg !380
  %898 = getelementptr inbounds [0 x %2], [0 x %2]* %face_normals_1042601, <8 x i64> zeroinitializer, <8 x i32> %cont_load12.i, !dbg !380
  %srov_gep164.i = getelementptr %2, <8 x %2*> %898, i32 0, i32 0, !dbg !380
  %899 = bitcast [0 x %2]* %face_normals_1042601 to i8*, !dbg !380
  %900 = mul <8 x i32> %cont_load12.i, <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>, !dbg !380
  %901 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %899, <8 x i32> %900, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %srov_gep165.i = getelementptr %2, <8 x %2*> %898, i32 0, i32 1, !dbg !380
  %902 = bitcast [0 x %2]* %face_normals_1042601 to i8*, !dbg !380
  %903 = mul <8 x i32> %cont_load12.i, <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>, !dbg !380
  %904 = add <8 x i32> %903, <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, !dbg !380
  %905 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %902, <8 x i32> %904, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %srov_gep166.i = getelementptr %2, <8 x %2*> %898, i32 0, i32 2, !dbg !380
  %906 = bitcast [0 x %2]* %face_normals_1042601 to i8*, !dbg !380
  %907 = mul <8 x i32> %cont_load12.i, <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>, !dbg !380
  %908 = add <8 x i32> %907, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>, !dbg !380
  %909 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %906, <8 x i32> %908, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %910 = getelementptr inbounds [0 x %2], [0 x %2]* %normals_1042600, <8 x i64> zeroinitializer, <8 x i32> %889, !dbg !380
  %srov_gep.i = getelementptr %2, <8 x %2*> %910, i32 0, i32 0, !dbg !380
  %911 = bitcast [0 x %2]* %normals_1042600 to i8*, !dbg !380
  %912 = mul <8 x i32> %889, <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>, !dbg !380
  %913 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %911, <8 x i32> %912, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %srov_gep156.i = getelementptr %2, <8 x %2*> %910, i32 0, i32 1, !dbg !380
  %914 = bitcast [0 x %2]* %normals_1042600 to i8*, !dbg !380
  %915 = mul <8 x i32> %889, <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>, !dbg !380
  %916 = add <8 x i32> %915, <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, !dbg !380
  %917 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %914, <8 x i32> %916, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %srov_gep157.i = getelementptr %2, <8 x %2*> %910, i32 0, i32 2, !dbg !380
  %918 = bitcast [0 x %2]* %normals_1042600 to i8*, !dbg !380
  %919 = mul <8 x i32> %889, <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>, !dbg !380
  %920 = add <8 x i32> %919, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>, !dbg !380
  %921 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %918, <8 x i32> %920, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %922 = getelementptr inbounds [0 x %2], [0 x %2]* %normals_1042600, <8 x i64> zeroinitializer, <8 x i32> %893, !dbg !380
  %srov_gep158.i = getelementptr %2, <8 x %2*> %922, i32 0, i32 0, !dbg !380
  %923 = bitcast [0 x %2]* %normals_1042600 to i8*, !dbg !380
  %924 = mul <8 x i32> %893, <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>, !dbg !380
  %925 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %923, <8 x i32> %924, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %srov_gep159.i = getelementptr %2, <8 x %2*> %922, i32 0, i32 1, !dbg !380
  %926 = bitcast [0 x %2]* %normals_1042600 to i8*, !dbg !380
  %927 = mul <8 x i32> %893, <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>, !dbg !380
  %928 = add <8 x i32> %927, <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, !dbg !380
  %929 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %926, <8 x i32> %928, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %srov_gep160.i = getelementptr %2, <8 x %2*> %922, i32 0, i32 2, !dbg !380
  %930 = bitcast [0 x %2]* %normals_1042600 to i8*, !dbg !380
  %931 = mul <8 x i32> %893, <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>, !dbg !380
  %932 = add <8 x i32> %931, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>, !dbg !380
  %933 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %930, <8 x i32> %932, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %934 = fmul <8 x float> %879, %921, !dbg !398
  %935 = fmul <8 x float> %879, %913, !dbg !398
  %936 = fmul <8 x float> %879, %917, !dbg !398
  %937 = getelementptr inbounds [0 x %2], [0 x %2]* %normals_1042600, <8 x i64> zeroinitializer, <8 x i32> %897, !dbg !380
  %srov_gep161.i = getelementptr %2, <8 x %2*> %937, i32 0, i32 0, !dbg !380
  %938 = bitcast [0 x %2]* %normals_1042600 to i8*, !dbg !380
  %939 = mul <8 x i32> %897, <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>, !dbg !380
  %940 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %938, <8 x i32> %939, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %srov_gep162.i = getelementptr %2, <8 x %2*> %937, i32 0, i32 1, !dbg !380
  %941 = bitcast [0 x %2]* %normals_1042600 to i8*, !dbg !380
  %942 = mul <8 x i32> %897, <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>, !dbg !380
  %943 = add <8 x i32> %942, <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, !dbg !380
  %944 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %941, <8 x i32> %943, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %srov_gep163.i = getelementptr %2, <8 x %2*> %937, i32 0, i32 2, !dbg !380
  %945 = bitcast [0 x %2]* %normals_1042600 to i8*, !dbg !380
  %946 = mul <8 x i32> %897, <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>, !dbg !380
  %947 = add <8 x i32> %946, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>, !dbg !380
  %948 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %945, <8 x i32> %947, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %949 = fmul <8 x float> %cont_load16.i, %933, !dbg !399
  %950 = fmul <8 x float> %cont_load16.i, %925, !dbg !399
  %951 = fmul <8 x float> %cont_load16.i, %929, !dbg !399
  %952 = fadd <8 x float> %934, %949, !dbg !398
  %953 = fadd <8 x float> %935, %950, !dbg !398
  %954 = fadd <8 x float> %936, %951, !dbg !398
  %955 = fmul <8 x float> %cont_load18.i, %948, !dbg !400
  %956 = fmul <8 x float> %cont_load18.i, %940, !dbg !400
  %957 = fmul <8 x float> %cont_load18.i, %944, !dbg !400
  %958 = fadd <8 x float> %952, %955, !dbg !398
  %959 = fadd <8 x float> %953, %956, !dbg !398
  %960 = fadd <8 x float> %954, %957, !dbg !398
  %961 = fmul <8 x float> %958, %958, !dbg !401
  %962 = fmul <8 x float> %959, %959, !dbg !402
  %963 = fmul <8 x float> %960, %960, !dbg !403
  %964 = fadd <8 x float> %962, %963, !dbg !402
  %965 = fadd <8 x float> %964, %961, !dbg !402
  %.mapped.i = call <8 x float> @llvm.sqrt.v8f32(<8 x float> %965), !dbg !380
  %966 = fmul <8 x float> %cont_load6.i, %901, !dbg !402
  %967 = fmul <8 x float> %cont_load8.i, %905, !dbg !403
  %968 = fmul <8 x float> %cont_load10.i, %909, !dbg !401
  %969 = fadd <8 x float> %966, %967, !dbg !402
  %970 = fadd <8 x float> %969, %968, !dbg !402
  %971 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> %970, <8 x float> zeroinitializer, i8 2), !dbg !404
  %972 = bitcast <8 x float> %971 to <8 x i32>, !dbg !404
  %973 = xor <8 x i32> %972, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1>, !dbg !380
  %.splatinsert39.i = insertelement <8 x i32> undef, i32 %width_1042605, i32 0, !dbg !380
  %.splat40.i = shufflevector <8 x i32> %.splatinsert39.i, <8 x i32> undef, <8 x i32> zeroinitializer, !dbg !380
  %974 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %901, !dbg !405
  %975 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %909, !dbg !405
  %976 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %905, !dbg !405
  %977 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %974, <8 x float> %901, <8 x float> %971), !dbg !380
  %978 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %976, <8 x float> %905, <8 x float> %971), !dbg !380
  %979 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %975, <8 x float> %909, <8 x float> %971), !dbg !380
  %980 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %.mapped.i, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>), !dbg !406
  %981 = fdiv <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %980, !dbg !406
  %982 = fmul <8 x float> %958, %981, !dbg !407
  %983 = fmul <8 x float> %959, %981, !dbg !407
  %984 = fmul <8 x float> %960, %981, !dbg !407
  %985 = fmul <8 x float> %cont_load10.i, %982, !dbg !401
  %986 = fmul <8 x float> %cont_load6.i, %983, !dbg !402
  %987 = fmul <8 x float> %cont_load8.i, %984, !dbg !403
  %988 = fadd <8 x float> %986, %987, !dbg !402
  %989 = fadd <8 x float> %988, %985, !dbg !402
  %990 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> %989, <8 x float> zeroinitializer, i8 2), !dbg !408
  %991 = bitcast <8 x float> %990 to <8 x i32>, !dbg !408
  %992 = xor <8 x i32> %991, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1>, !dbg !408
  %993 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %983, !dbg !405
  %994 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %982, !dbg !405
  %995 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %984, !dbg !405
  %996 = bitcast <8 x i32> %992 to <8 x float>, !dbg !380
  %997 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %983, <8 x float> %993, <8 x float> %996), !dbg !380
  %998 = bitcast <8 x i32> %992 to <8 x float>, !dbg !380
  %999 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %984, <8 x float> %995, <8 x float> %998), !dbg !380
  %1000 = bitcast <8 x i32> %992 to <8 x float>, !dbg !380
  %1001 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %982, <8 x float> %994, <8 x float> %1000), !dbg !380
  %1002 = getelementptr inbounds [0 x %3], [0 x %3]* %texcoords_1042602, <8 x i64> zeroinitializer, <8 x i32> %889, !dbg !380
  %srov_gep167.i = getelementptr %3, <8 x %3*> %1002, i32 0, i32 0, !dbg !380
  %1003 = bitcast [0 x %3]* %texcoords_1042602 to i8*, !dbg !380
  %1004 = mul <8 x i32> %889, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>, !dbg !380
  %1005 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %1003, <8 x i32> %1004, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %srov_gep168.i = getelementptr %3, <8 x %3*> %1002, i32 0, i32 1, !dbg !380
  %1006 = bitcast [0 x %3]* %texcoords_1042602 to i8*, !dbg !380
  %1007 = mul <8 x i32> %889, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>, !dbg !380
  %1008 = add <8 x i32> %1007, <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, !dbg !380
  %1009 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %1006, <8 x i32> %1008, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %1010 = getelementptr inbounds [0 x %3], [0 x %3]* %texcoords_1042602, <8 x i64> zeroinitializer, <8 x i32> %893, !dbg !380
  %srov_gep169.i = getelementptr %3, <8 x %3*> %1010, i32 0, i32 0, !dbg !380
  %1011 = bitcast [0 x %3]* %texcoords_1042602 to i8*, !dbg !380
  %1012 = mul <8 x i32> %893, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>, !dbg !380
  %1013 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %1011, <8 x i32> %1012, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %srov_gep170.i = getelementptr %3, <8 x %3*> %1010, i32 0, i32 1, !dbg !380
  %1014 = bitcast [0 x %3]* %texcoords_1042602 to i8*, !dbg !398
  %1015 = mul <8 x i32> %893, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>, !dbg !398
  %1016 = add <8 x i32> %1015, <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, !dbg !398
  %1017 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %1014, <8 x i32> %1016, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !398
  %1018 = fmul <8 x float> %879, %1005, !dbg !398
  %1019 = getelementptr inbounds [0 x %3], [0 x %3]* %texcoords_1042602, <8 x i64> zeroinitializer, <8 x i32> %897, !dbg !380
  %srov_gep171.i = getelementptr %3, <8 x %3*> %1019, i32 0, i32 0, !dbg !380
  %1020 = bitcast [0 x %3]* %texcoords_1042602 to i8*, !dbg !380
  %1021 = mul <8 x i32> %897, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>, !dbg !380
  %1022 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %1020, <8 x i32> %1021, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %srov_gep172.i = getelementptr %3, <8 x %3*> %1019, i32 0, i32 1, !dbg !380
  %1023 = bitcast [0 x %3]* %texcoords_1042602 to i8*, !dbg !399
  %1024 = mul <8 x i32> %897, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>, !dbg !399
  %1025 = add <8 x i32> %1024, <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, !dbg !399
  %1026 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %1023, <8 x i32> %1025, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !399
  %1027 = fmul <8 x float> %cont_load16.i, %1013, !dbg !399
  %1028 = fadd <8 x float> %1018, %1027, !dbg !398
  %1029 = fmul <8 x float> %cont_load18.i, %1022, !dbg !400
  %1030 = fadd <8 x float> %1028, %1029, !dbg !398
  %.mapped31.i = call <8 x float> @xfloorf_avx2(<8 x float> %1030), !dbg !380
  %1031 = fmul <8 x float> %cont_load16.i, %1017, !dbg !399
  %1032 = fmul <8 x float> %879, %1009, !dbg !398
  %1033 = fadd <8 x float> %1032, %1031, !dbg !398
  %1034 = fmul <8 x float> %cont_load18.i, %1026, !dbg !400
  %1035 = fadd <8 x float> %1033, %1034, !dbg !398
  %.mapped32.i = call <8 x float> @xfloorf_avx2(<8 x float> %1035), !dbg !380
  %1036 = sub nsw i32 %width_1042605, 1, !dbg !409
  %1037 = sitofp i32 %width_1042605 to float, !dbg !410
  %1038 = fsub <8 x float> %1030, %.mapped31.i, !dbg !411
  %.splatinsert.i = insertelement <8 x float> undef, float %1037, i32 0, !dbg !380
  %.splat.i = shufflevector <8 x float> %.splatinsert.i, <8 x float> undef, <8 x i32> zeroinitializer, !dbg !380
  %u_SIMD.i = fmul <8 x float> %1038, %.splat.i, !dbg !412
  %1039 = fptosi <8 x float> %u_SIMD.i to <8 x i32>, !dbg !413
  %.splatinsert33.i = insertelement <8 x i32> undef, i32 %1036, i32 0, !dbg !380
  %.splat34.i = shufflevector <8 x i32> %.splatinsert33.i, <8 x i32> undef, <8 x i32> zeroinitializer, !dbg !380
  %1040 = icmp slt <8 x i32> %1039, %.splat34.i, !dbg !414
  %1041 = sext <8 x i1> %1040 to <8 x i32>, !dbg !414
  %1042 = icmp slt <8 x i32> %1039, %.splat34.i, !dbg !415
  %1043 = select <8 x i1> %1042, <8 x i32> %1039, <8 x i32> %.splat34.i, !dbg !415
  %1044 = sub nsw i32 %height_1042606, 1, !dbg !415
  %1045 = sitofp i32 %height_1042606 to float, !dbg !416
  %1046 = fsub <8 x float> %1035, %.mapped32.i, !dbg !411
  %.splatinsert35.i = insertelement <8 x float> undef, float %1045, i32 0, !dbg !380
  %.splat36.i = shufflevector <8 x float> %.splatinsert35.i, <8 x float> undef, <8 x i32> zeroinitializer, !dbg !380
  %v_SIMD.i = fmul <8 x float> %1046, %.splat36.i, !dbg !417
  %1047 = fptosi <8 x float> %v_SIMD.i to <8 x i32>, !dbg !418
  %.splatinsert37.i = insertelement <8 x i32> undef, i32 %1044, i32 0, !dbg !380
  %.splat38.i = shufflevector <8 x i32> %.splatinsert37.i, <8 x i32> undef, <8 x i32> zeroinitializer, !dbg !380
  %1048 = icmp slt <8 x i32> %1047, %.splat38.i, !dbg !419
  %1049 = sext <8 x i1> %1048 to <8 x i32>, !dbg !419
  %1050 = icmp slt <8 x i32> %1047, %.splat38.i, !dbg !420
  %1051 = select <8 x i1> %1050, <8 x i32> %1047, <8 x i32> %.splat38.i, !dbg !420
  %1052 = add nsw <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, %1043, !dbg !420
  %1053 = icmp slt <8 x i32> %1052, %.splat34.i, !dbg !414
  %1054 = sext <8 x i1> %1053 to <8 x i32>, !dbg !414
  %1055 = icmp slt <8 x i32> %1052, %.splat34.i, !dbg !421
  %1056 = select <8 x i1> %1055, <8 x i32> %1052, <8 x i32> %.splat34.i, !dbg !421
  %1057 = add nsw <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, %1051, !dbg !421
  %1058 = icmp slt <8 x i32> %1057, %.splat38.i, !dbg !419
  %1059 = sext <8 x i1> %1058 to <8 x i32>, !dbg !419
  %1060 = icmp slt <8 x i32> %1057, %.splat38.i, !dbg !422
  %1061 = select <8 x i1> %1060, <8 x i32> %1057, <8 x i32> %.splat38.i, !dbg !422
  %1062 = mul nsw <8 x i32> %1061, %.splat40.i, !dbg !422
  %1063 = add nsw <8 x i32> %1062, %1056, !dbg !422
  %1064 = add nsw <8 x i32> %1062, %1043, !dbg !422
  %1065 = mul nsw <8 x i32> %1051, %.splat40.i, !dbg !422
  %1066 = add nsw <8 x i32> %1065, %1043, !dbg !422
  %1067 = add nsw <8 x i32> %1065, %1056, !dbg !422
  %1068 = getelementptr inbounds [0 x i32], [0 x i32]* %pixels_1042604, <8 x i64> zeroinitializer, <8 x i32> %1066, !dbg !380
  %1069 = bitcast [0 x i32]* %pixels_1042604 to i8*, !dbg !380
  %1070 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %1069, <8 x i32> %1066, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 4), !dbg !380
  %1071 = bitcast <8 x float> %1070 to <8 x i32>, !dbg !380
  %1072 = getelementptr inbounds [0 x i32], [0 x i32]* %pixels_1042604, <8 x i64> zeroinitializer, <8 x i32> %1067, !dbg !380
  %1073 = bitcast [0 x i32]* %pixels_1042604 to i8*, !dbg !380
  %1074 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %1073, <8 x i32> %1067, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 4), !dbg !380
  %1075 = bitcast <8 x float> %1074 to <8 x i32>, !dbg !380
  %1076 = getelementptr inbounds [0 x i32], [0 x i32]* %pixels_1042604, <8 x i64> zeroinitializer, <8 x i32> %1064, !dbg !380
  %1077 = bitcast [0 x i32]* %pixels_1042604 to i8*, !dbg !380
  %1078 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %1077, <8 x i32> %1064, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 4), !dbg !380
  %1079 = bitcast <8 x float> %1078 to <8 x i32>, !dbg !380
  %1080 = getelementptr inbounds [0 x i32], [0 x i32]* %pixels_1042604, <8 x i64> zeroinitializer, <8 x i32> %1063, !dbg !380
  %1081 = bitcast [0 x i32]* %pixels_1042604 to i8*, !dbg !423
  %1082 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %1081, <8 x i32> %1063, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 4), !dbg !423
  %1083 = bitcast <8 x float> %1082 to <8 x i32>, !dbg !423
  %1084 = lshr <8 x i32> %1079, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>, !dbg !424
  %1085 = sitofp <8 x i32> %1039 to <8 x float>, !dbg !375
  %1086 = lshr <8 x i32> %1075, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>, !dbg !425
  %r_SIMD.i = and <8 x i32> <i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255>, %1079, !dbg !426
  %r112_SIMD.i = and <8 x i32> <i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255>, %1075, !dbg !426
  %1087 = sitofp <8 x i32> %1047 to <8 x float>, !dbg !377
  %g_SIMD.i = and <8 x i32> <i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255>, %1086, !dbg !427
  %r113_SIMD.i = and <8 x i32> <i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255>, %1071, !dbg !426
  %1088 = uitofp <8 x i32> %g_SIMD.i to <8 x float>, !dbg !428
  %1089 = uitofp <8 x i32> %r112_SIMD.i to <8 x float>, !dbg !429
  %1090 = fmul <8 x float> %999, %853, !dbg !403
  %b_SIMD.i = and <8 x i32> <i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255>, %1084, !dbg !430
  %1091 = fmul <8 x float> %997, %849, !dbg !402
  %1092 = lshr <8 x i32> %1071, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>, !dbg !424
  %1093 = lshr <8 x i32> %1071, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>, !dbg !425
  %kx_SIMD.i = fsub <8 x float> %u_SIMD.i, %1085, !dbg !431
  %r114_SIMD.i = and <8 x i32> <i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255>, %1083, !dbg !426
  %1094 = lshr <8 x i32> %1075, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>, !dbg !424
  %1095 = lshr <8 x i32> %1079, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>, !dbg !425
  %1096 = fmul <8 x float> %1001, %859, !dbg !401
  %1097 = uitofp <8 x i32> %r_SIMD.i to <8 x float>, !dbg !429
  %ky_SIMD.i = fsub <8 x float> %v_SIMD.i, %1087, !dbg !432
  %1098 = lshr <8 x i32> %1083, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>, !dbg !425
  %1099 = lshr <8 x i32> %1083, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>, !dbg !424
  %1100 = uitofp <8 x i32> %r113_SIMD.i to <8 x float>, !dbg !429
  %1101 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %1088, !dbg !433
  %1102 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %1089, !dbg !434
  %1103 = fadd <8 x float> %1091, %1090, !dbg !402
  %1104 = uitofp <8 x i32> %b_SIMD.i to <8 x float>, !dbg !435
  %b116_SIMD.i = and <8 x i32> <i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255>, %1092, !dbg !430
  %g117_SIMD.i = and <8 x i32> <i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255>, %1093, !dbg !427
  %1105 = fmul <8 x float> %kx_SIMD.i, %1101, !dbg !436
  %1106 = fsub <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %kx_SIMD.i, !dbg !437
  %1107 = fmul <8 x float> %kx_SIMD.i, %1102, !dbg !436
  %1108 = uitofp <8 x i32> %r114_SIMD.i to <8 x float>, !dbg !429
  %b119_SIMD.i = and <8 x i32> <i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255>, %1094, !dbg !430
  %g120_SIMD.i = and <8 x i32> <i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255>, %1095, !dbg !427
  %1109 = fadd <8 x float> %1103, %1096, !dbg !402
  %1110 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %1097, !dbg !434
  %1111 = fsub <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %ky_SIMD.i, !dbg !437
  %g121_SIMD.i = and <8 x i32> <i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255>, %1098, !dbg !427
  %b122_SIMD.i = and <8 x i32> <i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255>, %1099, !dbg !430
  %1112 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %1100, !dbg !434
  %1113 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %1104, !dbg !438
  %1114 = uitofp <8 x i32> %b116_SIMD.i to <8 x float>, !dbg !435
  %1115 = uitofp <8 x i32> %g117_SIMD.i to <8 x float>, !dbg !428
  %1116 = fmul <8 x float> %1106, %1110, !dbg !439
  %1117 = fmul <8 x float> %1106, %1112, !dbg !439
  %1118 = fmul <8 x float> %1106, %1113, !dbg !439
  %1119 = fadd <8 x float> %1117, %1107, !dbg !439
  %1120 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %1108, !dbg !434
  %1121 = uitofp <8 x i32> %b119_SIMD.i to <8 x float>, !dbg !435
  %1122 = uitofp <8 x i32> %g120_SIMD.i to <8 x float>, !dbg !428
  %1123 = fmul <8 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, %1109, !dbg !440
  %1124 = fmul <8 x float> %1111, %1119, !dbg !439
  %1125 = uitofp <8 x i32> %g121_SIMD.i to <8 x float>, !dbg !428
  %1126 = uitofp <8 x i32> %b122_SIMD.i to <8 x float>, !dbg !435
  %1127 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %1114, !dbg !438
  %1128 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %1115, !dbg !433
  %1129 = fmul <8 x float> %kx_SIMD.i, %1120, !dbg !436
  %1130 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %1121, !dbg !438
  %1131 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %1122, !dbg !433
  %1132 = fmul <8 x float> %1001, %1123, !dbg !407
  %1133 = fmul <8 x float> %997, %1123, !dbg !407
  %1134 = fmul <8 x float> %999, %1123, !dbg !407
  %1135 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %1125, !dbg !433
  %1136 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %1126, !dbg !438
  %1137 = fmul <8 x float> %1106, %1127, !dbg !439
  %1138 = fmul <8 x float> %1106, %1128, !dbg !439
  %1139 = fadd <8 x float> %1116, %1129, !dbg !439
  %1140 = fmul <8 x float> %kx_SIMD.i, %1130, !dbg !436
  %1141 = fmul <8 x float> %1106, %1131, !dbg !439
  %1142 = fsub <8 x float> %1132, %859, !dbg !441
  %1143 = fsub <8 x float> %1133, %849, !dbg !441
  %1144 = fsub <8 x float> %1134, %853, !dbg !441
  %1145 = fmul <8 x float> %kx_SIMD.i, %1135, !dbg !436
  %1146 = fmul <8 x float> %kx_SIMD.i, %1136, !dbg !436
  %1147 = fadd <8 x float> %1137, %1140, !dbg !439
  %1148 = fadd <8 x float> %1138, %1105, !dbg !439
  %1149 = fmul <8 x float> %ky_SIMD.i, %1139, !dbg !436
  %1150 = fadd <8 x float> %1141, %1145, !dbg !439
  %1151 = fadd <8 x float> %1118, %1146, !dbg !439
  %1152 = fmul <8 x float> %1111, %1147, !dbg !439
  %1153 = fmul <8 x float> %1111, %1148, !dbg !439
  %1154 = fadd <8 x float> %1124, %1149, !dbg !439
  %1155 = fmul <8 x float> %ky_SIMD.i, %1150, !dbg !436
  %1156 = fmul <8 x float> %ky_SIMD.i, %1151, !dbg !436
  %1157 = fadd <8 x float> %1152, %1156, !dbg !439
  %1158 = fadd <8 x float> %1153, %1155, !dbg !439
  %1159 = fmul <8 x float> <float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000>, %1154, !dbg !442
  %1160 = fmul <8 x float> <float 0x3FCB367A00000000, float 0x3FCB367A00000000, float 0x3FCB367A00000000, float 0x3FCB367A00000000, float 0x3FCB367A00000000, float 0x3FCB367A00000000, float 0x3FCB367A00000000, float 0x3FCB367A00000000>, %1154, !dbg !443
  %1161 = fmul <8 x float> <float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000>, %1157, !dbg !444
  %1162 = fmul <8 x float> <float 0x3FB27BB300000000, float 0x3FB27BB300000000, float 0x3FB27BB300000000, float 0x3FB27BB300000000, float 0x3FB27BB300000000, float 0x3FB27BB300000000, float 0x3FB27BB300000000, float 0x3FB27BB300000000>, %1157, !dbg !445
  %1163 = fmul <8 x float> <float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000>, %1158, !dbg !446
  %1164 = fmul <8 x float> <float 0x3FE6E2EB20000000, float 0x3FE6E2EB20000000, float 0x3FE6E2EB20000000, float 0x3FE6E2EB20000000, float 0x3FE6E2EB20000000, float 0x3FE6E2EB20000000, float 0x3FE6E2EB20000000, float 0x3FE6E2EB20000000>, %1158, !dbg !447
  %1165 = fadd <8 x float> %1160, %1164, !dbg !443
  %1166 = fadd <8 x float> %1165, %1162, !dbg !443
  %1167 = icmp eq <8 x i32> %cont_load20.i, zeroinitializer, !dbg !448
  %1168 = sext <8 x i1> %1167 to <8 x i32>, !dbg !448
  %1169 = bitcast <8 x i32> %cont_load20.i to <8 x float>, !dbg !449
  %1170 = bitcast <8 x i32> %1168 to <8 x float>, !dbg !449
  %1171 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %1169, <8 x float> <float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000>, <8 x float> %1170), !dbg !449
  %1172 = bitcast <8 x float> %1171 to <8 x i32>, !dbg !449
  %1173 = shl <8 x i32> %1172, <i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13>, !dbg !449
  %1174 = xor <8 x i32> %1172, %1173, !dbg !450
  %1175 = lshr <8 x i32> %1174, <i32 17, i32 17, i32 17, i32 17, i32 17, i32 17, i32 17, i32 17>, !dbg !451
  %1176 = xor <8 x i32> %1174, %1175, !dbg !452
  %1177 = shl <8 x i32> %1176, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>, !dbg !453
  %1178 = xor <8 x i32> %1176, %1177, !dbg !454
  %1179 = icmp eq <8 x i32> %1178, zeroinitializer, !dbg !455
  %1180 = sext <8 x i1> %1179 to <8 x i32>, !dbg !455
  %1181 = fadd <8 x float> %1166, %1166, !dbg !455
  %1182 = bitcast <8 x i32> %1178 to <8 x float>, !dbg !456
  %1183 = bitcast <8 x i32> %1180 to <8 x float>, !dbg !456
  %1184 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %1182, <8 x float> <float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000>, <8 x float> %1183), !dbg !456
  %1185 = bitcast <8 x float> %1184 to <8 x i32>, !dbg !456
  %1186 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> %1181, <8 x float> zeroinitializer, i8 0), !dbg !380
  %1187 = bitcast <8 x float> %1186 to <8 x i32>, !dbg !380
  %1188 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %1181, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>), !dbg !457
  %1189 = fdiv <8 x float> %1166, %1188, !dbg !457
  %1190 = and <8 x i32> <i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607>, %1178, !dbg !458
  %1191 = shl <8 x i32> %1185, <i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13>, !dbg !449
  %1192 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %1189, <8 x float> zeroinitializer, <8 x float> %1186), !dbg !459
  %1193 = or <8 x i32> <i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216>, %1190, !dbg !459
  %1194 = xor <8 x i32> %1185, %1191, !dbg !450
  %1195 = fsub <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1192, !dbg !460
  %1196 = lshr <8 x i32> %1194, <i32 17, i32 17, i32 17, i32 17, i32 17, i32 17, i32 17, i32 17>, !dbg !451
  %1197 = bitcast <8 x i32> %1193 to <8 x float>, !dbg !380
  %1198 = fsub <8 x float> %1197, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, !dbg !461
  %1199 = xor <8 x i32> %1194, %1196, !dbg !452
  %1200 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> %1192, <8 x float> %1198, i8 2), !dbg !453
  %1201 = bitcast <8 x float> %1200 to <8 x i32>, !dbg !453
  %1202 = shl <8 x i32> %1199, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>, !dbg !453
  %1203 = xor <8 x i32> %1199, %1202, !dbg !454
  %1204 = icmp eq <8 x i32> %1203, zeroinitializer, !dbg !448
  %1205 = sext <8 x i1> %1204 to <8 x i32>, !dbg !448
  %1206 = bitcast <8 x i32> %1203 to <8 x float>, !dbg !449
  %1207 = bitcast <8 x i32> %1205 to <8 x float>, !dbg !449
  %1208 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %1206, <8 x float> <float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000>, <8 x float> %1207), !dbg !449
  %1209 = bitcast <8 x float> %1208 to <8 x i32>, !dbg !449
  %1210 = shl <8 x i32> %1209, <i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13>, !dbg !449
  %1211 = xor <8 x i32> %1209, %1210, !dbg !450
  %1212 = and <8 x i32> <i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607>, %1203, !dbg !458
  %1213 = lshr <8 x i32> %1211, <i32 17, i32 17, i32 17, i32 17, i32 17, i32 17, i32 17, i32 17>, !dbg !451
  %1214 = or <8 x i32> <i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216>, %1212, !dbg !459
  %1215 = xor <8 x i32> %1211, %1213, !dbg !452
  %1216 = shl <8 x i32> %1215, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>, !dbg !453
  %1217 = bitcast <8 x i32> %1214 to <8 x float>, !dbg !380
  %1218 = fsub <8 x float> %1217, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, !dbg !461
  %1219 = xor <8 x i32> %1215, %1216, !dbg !454
  %phi_SIMD.i = fmul <8 x float> <float 0x401921FB60000000, float 0x401921FB60000000, float 0x401921FB60000000, float 0x401921FB60000000, float 0x401921FB60000000, float 0x401921FB60000000, float 0x401921FB60000000, float 0x401921FB60000000>, %1218, !dbg !462
  %1220 = and <8 x i32> <i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607>, %1219, !dbg !458
  %1221 = or <8 x i32> <i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216>, %1220, !dbg !459
  %1222 = bitcast <8 x i32> %1221 to <8 x float>, !dbg !380
  %1223 = fsub <8 x float> %1222, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, !dbg !461
  %1224 = xor <8 x i32> %1201, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1>, !dbg !463
  %1225 = bitcast <8 x float> %1223 to <8 x i32>, !dbg !380
  %1226 = and <8 x i32> <i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607>, %1225, !dbg !464
  %1227 = uitofp <8 x i32> %1225 to <8 x float>, !dbg !465
  %mx_SIMD.i = or <8 x i32> <i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608>, %1226, !dbg !466
  %y_SIMD.i = fmul <8 x float> <float 0x3E80000000000000, float 0x3E80000000000000, float 0x3E80000000000000, float 0x3E80000000000000, float 0x3E80000000000000, float 0x3E80000000000000, float 0x3E80000000000000, float 0x3E80000000000000>, %1227, !dbg !467
  %1228 = fsub <8 x float> %y_SIMD.i, <float 0x405F0E6EE0000000, float 0x405F0E6EE0000000, float 0x405F0E6EE0000000, float 0x405F0E6EE0000000, float 0x405F0E6EE0000000, float 0x405F0E6EE0000000, float 0x405F0E6EE0000000, float 0x405F0E6EE0000000>, !dbg !468
  %1229 = bitcast <8 x i32> %mx_SIMD.i to <8 x float>, !dbg !380
  %1230 = fmul <8 x float> <float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000>, %1229, !dbg !469
  %1231 = fadd <8 x float> <float 0x3FD6889F20000000, float 0x3FD6889F20000000, float 0x3FD6889F20000000, float 0x3FD6889F20000000, float 0x3FD6889F20000000, float 0x3FD6889F20000000, float 0x3FD6889F20000000, float 0x3FD6889F20000000>, %1229, !dbg !470
  %1232 = fsub <8 x float> %1228, %1230, !dbg !468
  %1233 = bitcast <8 x i32> %1224 to <8 x float>, !dbg !471
  %1234 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %1231, <8 x float> %1233), !dbg !471
  %1235 = fdiv <8 x float> <float 0x3FFB9D3460000000, float 0x3FFB9D3460000000, float 0x3FFB9D3460000000, float 0x3FFB9D3460000000, float 0x3FFB9D3460000000, float 0x3FFB9D3460000000, float 0x3FFB9D3460000000, float 0x3FFB9D3460000000>, %1234, !dbg !471
  %1236 = fsub <8 x float> %1232, %1235, !dbg !468
  %1237 = fmul <8 x float> <float 0x3FB3B13B20000000, float 0x3FB3B13B20000000, float 0x3FB3B13B20000000, float 0x3FB3B13B20000000, float 0x3FB3B13B20000000, float 0x3FB3B13B20000000, float 0x3FB3B13B20000000, float 0x3FB3B13B20000000>, %1236, !dbg !472
  %1238 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> %1237, <8 x float> <float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02>, i8 1), !dbg !473
  %1239 = bitcast <8 x float> %1238 to <8 x i32>, !dbg !473
  %1240 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> %1237, <8 x float> zeroinitializer, i8 1), !dbg !474
  %1241 = bitcast <8 x float> %1240 to <8 x i32>, !dbg !474
  %1242 = fcmp fast olt <8 x float> %1237, <float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02>, !dbg !475
  %1243 = select <8 x i1> %1242, <8 x float> <float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02>, <8 x float> %1237, !dbg !475
  %1244 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> zeroinitializer, <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %1240), !dbg !476
  %1245 = fadd <8 x float> <float 0x405E518A20000000, float 0x405E518A20000000, float 0x405E518A20000000, float 0x405E518A20000000, float 0x405E518A20000000, float 0x405E518A20000000, float 0x405E518A20000000, float 0x405E518A20000000>, %1243, !dbg !476
  %1246 = fptosi <8 x float> %1243 to <8 x i32>, !dbg !477
  %1247 = sitofp <8 x i32> %1246 to <8 x float>, !dbg !478
  %1248 = fsub <8 x float> %1243, %1247, !dbg !479
  %z_SIMD.i = fadd <8 x float> %1248, %1244, !dbg !479
  %1249 = fmul <8 x float> <float 0x3FF7D791A0000000, float 0x3FF7D791A0000000, float 0x3FF7D791A0000000, float 0x3FF7D791A0000000, float 0x3FF7D791A0000000, float 0x3FF7D791A0000000, float 0x3FF7D791A0000000, float 0x3FF7D791A0000000>, %z_SIMD.i, !dbg !480
  %1250 = fsub <8 x float> <float 0x40135EBF00000000, float 0x40135EBF00000000, float 0x40135EBF00000000, float 0x40135EBF00000000, float 0x40135EBF00000000, float 0x40135EBF00000000, float 0x40135EBF00000000, float 0x40135EBF00000000>, %z_SIMD.i, !dbg !481
  %1251 = bitcast <8 x i32> %1224 to <8 x float>, !dbg !482
  %1252 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %1250, <8 x float> %1251), !dbg !482
  %1253 = fdiv <8 x float> <float 0x403BBA5FC0000000, float 0x403BBA5FC0000000, float 0x403BBA5FC0000000, float 0x403BBA5FC0000000, float 0x403BBA5FC0000000, float 0x403BBA5FC0000000, float 0x403BBA5FC0000000, float 0x403BBA5FC0000000>, %1252, !dbg !482
  %1254 = fadd <8 x float> %1245, %1253, !dbg !476
  %1255 = fsub <8 x float> %1254, %1249, !dbg !476
  %1256 = fmul <8 x float> <float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000>, %1255, !dbg !483
  %1257 = fptosi <8 x float> %1256 to <8 x i32>, !dbg !484
  %1258 = bitcast <8 x i32> %1257 to <8 x float>, !dbg !380
  %.mapped44.i = call <8 x float> @xfminf_avx2(<8 x float> %1258, <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>), !dbg !380
  %1259 = fmul <8 x float> %.mapped44.i, %.mapped44.i, !dbg !485
  %1260 = fsub <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1259, !dbg !486
  %.mapped45.i = call <8 x float> @llvm.sqrt.v8f32(<8 x float> %1260), !dbg !380
  %.mapped46.i = call <8 x float> @xcosf_u1_avx2(<8 x float> %phi_SIMD.i), !dbg !380
  %.mapped47.i = call <8 x float> @xsinf_u1_avx2(<8 x float> %phi_SIMD.i), !dbg !380
  %1261 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %1144, !dbg !487
  %1262 = fmul <8 x float> %1143, %1144, !dbg !488
  %1263 = fmul <8 x float> %1144, %.mapped44.i, !dbg !401
  %1264 = fmul <8 x float> %1144, %1144, !dbg !489
  %y135_SIMD.i = fmul <8 x float> %.mapped45.i, %.mapped47.i, !dbg !490
  %1265 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> zeroinitializer, <8 x float> %1142, i8 2), !dbg !491
  %1266 = bitcast <8 x float> %1265 to <8 x i32>, !dbg !491
  %x_SIMD.i = fmul <8 x float> %.mapped45.i, %.mapped46.i, !dbg !491
  %1267 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00>, <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %1265), !dbg !401
  %1268 = fmul <8 x float> %1143, %.mapped44.i, !dbg !401
  %1269 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %1267, !dbg !492
  %1270 = fmul <8 x float> %1267, %1143, !dbg !493
  %1271 = fmul <8 x float> %1142, %.mapped44.i, !dbg !401
  %1272 = fmul <8 x float> %1261, %y135_SIMD.i, !dbg !403
  %1273 = fadd <8 x float> %1267, %1142, !dbg !494
  %1274 = fmul <8 x float> %1269, %1143, !dbg !492
  %1275 = fmul <8 x float> %1270, %1143, !dbg !493
  %1276 = bitcast <8 x i32> %1224 to <8 x float>, !dbg !495
  %1277 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %1273, <8 x float> %1276), !dbg !495
  %a_SIMD.i = fdiv <8 x float> <float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00>, %1277, !dbg !495
  %1278 = fmul <8 x float> %1274, %x_SIMD.i, !dbg !402
  %1279 = fmul <8 x float> %1275, %a_SIMD.i, !dbg !493
  %b136_SIMD.i = fmul <8 x float> %1262, %a_SIMD.i, !dbg !488
  %1280 = fmul <8 x float> %1264, %a_SIMD.i, !dbg !489
  %1281 = fadd <8 x float> %1278, %1272, !dbg !402
  %1282 = fadd <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1279, !dbg !496
  %1283 = fmul <8 x float> %b136_SIMD.i, %y135_SIMD.i, !dbg !403
  %1284 = fmul <8 x float> %1267, %b136_SIMD.i, !dbg !497
  %1285 = fadd <8 x float> %1267, %1280, !dbg !498
  %1286 = fadd <8 x float> %1281, %1271, !dbg !402
  %1287 = fmul <8 x float> %1282, %x_SIMD.i, !dbg !402
  %1288 = fadd <8 x float> %1287, %1283, !dbg !402
  %1289 = fmul <8 x float> %1284, %x_SIMD.i, !dbg !402
  %1290 = fmul <8 x float> %1285, %y135_SIMD.i, !dbg !403
  %1291 = fmul <8 x float> %1286, %1001, !dbg !401
  %1292 = fadd <8 x float> %1288, %1268, !dbg !402
  %1293 = fadd <8 x float> %1289, %1290, !dbg !402
  %1294 = fmul <8 x float> %1292, %997, !dbg !402
  %1295 = fadd <8 x float> %1293, %1263, !dbg !402
  %1296 = fmul <8 x float> %1295, %999, !dbg !403
  %1297 = fadd <8 x float> %1294, %1296, !dbg !402
  %1298 = fadd <8 x float> %1297, %1291, !dbg !402
  %1299 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> zeroinitializer, <8 x float> %1298, i8 2), !dbg !499
  %1300 = bitcast <8 x float> %1299 to <8 x i32>, !dbg !499
  %1301 = fcmp fast ole <8 x float> zeroinitializer, %1298, !dbg !500
  %1302 = select <8 x i1> %1301, <8 x float> %1298, <8 x float> zeroinitializer, !dbg !500
  %1303 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> %.mapped44.i, <8 x float> zeroinitializer, i8 20), !dbg !380
  %1304 = bitcast <8 x float> %1303 to <8 x i32>, !dbg !380
  %1305 = bitcast <8 x i32> %1224 to <8 x float>, !dbg !501
  %1306 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %.mapped44.i, <8 x float> %1305), !dbg !501
  %1307 = fdiv <8 x float> %1223, %1306, !dbg !501
  %1308 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> zeroinitializer, <8 x float> %1307, <8 x float> %1303), !dbg !502
  %1309 = fmul <8 x float> <float 1.300000e+01, float 1.300000e+01, float 1.300000e+01, float 1.300000e+01, float 1.300000e+01, float 1.300000e+01, float 1.300000e+01, float 1.300000e+01>, %1308, !dbg !502
  %pdf_SIMD.i = fmul <8 x float> <float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000>, %1309, !dbg !502
  %1310 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> zeroinitializer, <8 x float> %pdf_SIMD.i, i8 1), !dbg !503
  %1311 = bitcast <8 x float> %1310 to <8 x i32>, !dbg !503
  %1312 = and <8 x i32> %1224, %1311, !dbg !503
  %1313 = xor <8 x i32> %1311, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1>, !dbg !503
  %1314 = and <8 x i32> %1224, %1313, !dbg !380
  %1315 = fmul <8 x float> %1292, %977, !dbg !402
  %1316 = fmul <8 x float> %1295, %978, !dbg !403
  %1317 = fmul <8 x float> %1286, %979, !dbg !401
  %1318 = fadd <8 x float> %1315, %1316, !dbg !402
  %1319 = fadd <8 x float> %1318, %1317, !dbg !402
  %1320 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> zeroinitializer, <8 x float> %1319, i8 1), !dbg !504
  %1321 = bitcast <8 x float> %1320 to <8 x i32>, !dbg !504
  %1322 = and <8 x i32> %1312, %1321, !dbg !504
  %1323 = xor <8 x i32> %1321, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1>, !dbg !504
  %1324 = and <8 x i32> %1312, %1323, !dbg !380
  %1325 = or <8 x i32> %1314, %1324, !dbg !505
  %1326 = or <8 x i32> %1325, %1322, !dbg !505
  %1327 = bitcast <8 x i32> %1322 to <8 x float>, !dbg !379
  %1328 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %pdf_SIMD.i, <8 x float> %1327), !dbg !379
  %1329 = xor <8 x i32> %1322, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1>, !dbg !379
  %1330 = and <8 x i32> %1326, %1329, !dbg !380
  %1331 = fmul <8 x float> <float 1.400000e+01, float 1.400000e+01, float 1.400000e+01, float 1.400000e+01, float 1.400000e+01, float 1.400000e+01, float 1.400000e+01, float 1.400000e+01>, %pdf_SIMD.i, !dbg !506
  %1332 = bitcast <8 x i32> %1322 to <8 x float>, !dbg !506
  %1333 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> <float 1.300000e+01, float 1.300000e+01, float 1.300000e+01, float 1.300000e+01, float 1.300000e+01, float 1.300000e+01, float 1.300000e+01, float 1.300000e+01>, <8 x float> %1332), !dbg !506
  %1334 = fdiv <8 x float> %1331, %1333, !dbg !506
  %1335 = fmul <8 x float> %1157, %1334, !dbg !444
  %1336 = fmul <8 x float> %1154, %1334, !dbg !442
  %1337 = fmul <8 x float> %1158, %1334, !dbg !446
  %1338 = bitcast <8 x i32> %1330 to <8 x float>, !dbg !380
  %1339 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %1336, <8 x float> zeroinitializer, <8 x float> %1338), !dbg !380
  %1340 = bitcast <8 x i32> %1330 to <8 x float>, !dbg !380
  %1341 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %1337, <8 x float> zeroinitializer, <8 x float> %1340), !dbg !380
  %1342 = bitcast <8 x i32> %1330 to <8 x float>, !dbg !380
  %1343 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %1335, <8 x float> zeroinitializer, <8 x float> %1342), !dbg !380
  %1344 = fmul <8 x float> <float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000>, %1302, !dbg !507
  %1345 = fmul <8 x float> %1195, %1161, !dbg !508
  %1346 = fmul <8 x float> %1195, %1159, !dbg !509
  %1347 = fmul <8 x float> %1195, %1163, !dbg !510
  %1348 = fmul <8 x float> %1195, %1344, !dbg !439
  %1349 = fmul <8 x float> %1192, %1328, !dbg !436
  %1350 = fmul <8 x float> %1192, %1343, !dbg !511
  %1351 = fadd <8 x float> %1345, %1350, !dbg !508
  %1352 = fmul <8 x float> %1192, %1339, !dbg !512
  %1353 = fadd <8 x float> %1346, %1352, !dbg !509
  %1354 = fadd <8 x float> %1348, %1349, !dbg !439
  %1355 = fmul <8 x float> %1192, %1341, !dbg !513
  %1356 = fadd <8 x float> %1347, %1355, !dbg !510
  %1357 = fsub <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1223, !dbg !514
  %.mapped51.i = call <8 x float> @llvm.sqrt.v8f32(<8 x float> %1357), !dbg !380
  %.mapped52.i = call <8 x float> @llvm.sqrt.v8f32(<8 x float> %1223), !dbg !380
  %.mapped53.i = call <8 x float> @xcosf_u1_avx2(<8 x float> %phi_SIMD.i), !dbg !380
  %.mapped54.i = call <8 x float> @xsinf_u1_avx2(<8 x float> %phi_SIMD.i), !dbg !380
  %1358 = fmul <8 x float> %999, %.mapped51.i, !dbg !401
  %x137_SIMD.i = fmul <8 x float> %.mapped52.i, %.mapped53.i, !dbg !491
  %1359 = fmul <8 x float> %999, %999, !dbg !489
  %1360 = fmul <8 x float> %1001, %.mapped51.i, !dbg !401
  %1361 = fmul <8 x float> %997, %.mapped51.i, !dbg !401
  %1362 = fmul <8 x float> <float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000>, %.mapped51.i, !dbg !507
  %1363 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> zeroinitializer, <8 x float> %1001, i8 2), !dbg !487
  %1364 = bitcast <8 x float> %1363 to <8 x i32>, !dbg !487
  %1365 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %999, !dbg !487
  %y138_SIMD.i = fmul <8 x float> %.mapped52.i, %.mapped54.i, !dbg !490
  %1366 = fmul <8 x float> %997, %999, !dbg !488
  %1367 = fmul <8 x float> %1365, %y138_SIMD.i, !dbg !403
  %1368 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> zeroinitializer, <8 x float> %1362, i8 1), !dbg !508
  %1369 = bitcast <8 x float> %1368 to <8 x i32>, !dbg !508
  %1370 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00>, <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %1363), !dbg !492
  %1371 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %1370, !dbg !492
  %1372 = fmul <8 x float> %1370, %997, !dbg !493
  %1373 = fadd <8 x float> %1370, %1001, !dbg !494
  %1374 = fmul <8 x float> %1371, %997, !dbg !492
  %1375 = fmul <8 x float> %1372, %997, !dbg !493
  %1376 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %1373, <8 x float> %1200), !dbg !495
  %a139_SIMD.i = fdiv <8 x float> <float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00>, %1376, !dbg !495
  %1377 = fmul <8 x float> %1374, %x137_SIMD.i, !dbg !402
  %1378 = fmul <8 x float> %1375, %a139_SIMD.i, !dbg !493
  %b140_SIMD.i = fmul <8 x float> %1366, %a139_SIMD.i, !dbg !488
  %1379 = fmul <8 x float> %1359, %a139_SIMD.i, !dbg !489
  %1380 = fadd <8 x float> %1377, %1367, !dbg !402
  %1381 = fadd <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1378, !dbg !496
  %1382 = fmul <8 x float> %b140_SIMD.i, %y138_SIMD.i, !dbg !403
  %1383 = fmul <8 x float> %1370, %b140_SIMD.i, !dbg !497
  %1384 = fadd <8 x float> %1370, %1379, !dbg !498
  %1385 = fadd <8 x float> %1380, %1360, !dbg !402
  %1386 = fmul <8 x float> %1381, %x137_SIMD.i, !dbg !402
  %1387 = fadd <8 x float> %1386, %1382, !dbg !402
  %1388 = fmul <8 x float> %1383, %x137_SIMD.i, !dbg !402
  %1389 = fmul <8 x float> %1384, %y138_SIMD.i, !dbg !403
  %1390 = fadd <8 x float> %1387, %1361, !dbg !402
  %1391 = fadd <8 x float> %1388, %1389, !dbg !402
  %1392 = fadd <8 x float> %1391, %1358, !dbg !402
  %1393 = and <8 x i32> %1201, %1369, !dbg !503
  %1394 = xor <8 x i32> %1369, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1>, !dbg !503
  %1395 = and <8 x i32> %1201, %1394, !dbg !380
  %1396 = fmul <8 x float> %1385, %979, !dbg !401
  %1397 = fmul <8 x float> %1390, %977, !dbg !402
  %1398 = fmul <8 x float> %1392, %978, !dbg !403
  %1399 = fadd <8 x float> %1397, %1398, !dbg !402
  %1400 = fadd <8 x float> %1399, %1396, !dbg !402
  %1401 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> zeroinitializer, <8 x float> %1400, i8 1), !dbg !504
  %1402 = bitcast <8 x float> %1401 to <8 x i32>, !dbg !504
  %1403 = and <8 x i32> %1393, %1402, !dbg !504
  %1404 = xor <8 x i32> %1402, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1>, !dbg !504
  %1405 = and <8 x i32> %1393, %1404, !dbg !380
  %1406 = or <8 x i32> %1395, %1405, !dbg !505
  %1407 = or <8 x i32> %1406, %1403, !dbg !505
  %1408 = bitcast <8 x i32> %1403 to <8 x float>, !dbg !379
  %1409 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %1362, <8 x float> %1408), !dbg !379
  %1410 = bitcast <8 x i32> %1403 to <8 x float>, !dbg !379
  %1411 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> zeroinitializer, <8 x float> %1159, <8 x float> %1410), !dbg !379
  %1412 = bitcast <8 x i32> %1403 to <8 x float>, !dbg !379
  %1413 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> zeroinitializer, <8 x float> %1163, <8 x float> %1412), !dbg !379
  %1414 = bitcast <8 x i32> %1403 to <8 x float>, !dbg !401
  %1415 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> zeroinitializer, <8 x float> %1161, <8 x float> %1414), !dbg !401
  %1416 = fmul <8 x float> %1385, %1142, !dbg !401
  %1417 = fmul <8 x float> %1390, %1143, !dbg !402
  %1418 = fmul <8 x float> %1392, %1144, !dbg !403
  %1419 = fadd <8 x float> %1417, %1418, !dbg !402
  %1420 = fadd <8 x float> %1419, %1416, !dbg !402
  %1421 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> zeroinitializer, <8 x float> %1420, i8 2), !dbg !515
  %1422 = bitcast <8 x float> %1421 to <8 x i32>, !dbg !515
  %1423 = fcmp fast ole <8 x float> zeroinitializer, %1420, !dbg !439
  %1424 = select <8 x i1> %1423, <8 x float> %1420, <8 x float> zeroinitializer, !dbg !439
  %1425 = fmul <8 x float> %1195, %1409, !dbg !439
  %1426 = fmul <8 x float> %1195, %1413, !dbg !510
  %1427 = fmul <8 x float> %1195, %1415, !dbg !508
  %1428 = bitcast <8 x float> %1424 to <8 x i32>, !dbg !380
  %1429 = and <8 x i32> <i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607>, %1428, !dbg !464
  %1430 = uitofp <8 x i32> %1428 to <8 x float>, !dbg !465
  %mx141_SIMD.i = or <8 x i32> <i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608>, %1429, !dbg !466
  %1431 = fmul <8 x float> %1195, %1411, !dbg !509
  %y142_SIMD.i = fmul <8 x float> <float 0x3E80000000000000, float 0x3E80000000000000, float 0x3E80000000000000, float 0x3E80000000000000, float 0x3E80000000000000, float 0x3E80000000000000, float 0x3E80000000000000, float 0x3E80000000000000>, %1430, !dbg !467
  %1432 = fsub <8 x float> %y142_SIMD.i, <float 0x405F0E6EE0000000, float 0x405F0E6EE0000000, float 0x405F0E6EE0000000, float 0x405F0E6EE0000000, float 0x405F0E6EE0000000, float 0x405F0E6EE0000000, float 0x405F0E6EE0000000, float 0x405F0E6EE0000000>, !dbg !468
  %1433 = bitcast <8 x i32> %mx141_SIMD.i to <8 x float>, !dbg !380
  %1434 = fmul <8 x float> <float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000>, %1433, !dbg !469
  %1435 = fadd <8 x float> <float 0x3FD6889F20000000, float 0x3FD6889F20000000, float 0x3FD6889F20000000, float 0x3FD6889F20000000, float 0x3FD6889F20000000, float 0x3FD6889F20000000, float 0x3FD6889F20000000, float 0x3FD6889F20000000>, %1433, !dbg !470
  %1436 = fsub <8 x float> %1432, %1434, !dbg !468
  %1437 = bitcast <8 x i32> %1407 to <8 x float>, !dbg !471
  %1438 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %1435, <8 x float> %1437), !dbg !471
  %1439 = fdiv <8 x float> <float 0x3FFB9D3460000000, float 0x3FFB9D3460000000, float 0x3FFB9D3460000000, float 0x3FFB9D3460000000, float 0x3FFB9D3460000000, float 0x3FFB9D3460000000, float 0x3FFB9D3460000000, float 0x3FFB9D3460000000>, %1438, !dbg !471
  %1440 = fsub <8 x float> %1436, %1439, !dbg !468
  %1441 = fmul <8 x float> <float 1.200000e+01, float 1.200000e+01, float 1.200000e+01, float 1.200000e+01, float 1.200000e+01, float 1.200000e+01, float 1.200000e+01, float 1.200000e+01>, %1440, !dbg !472
  %1442 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> %1441, <8 x float> <float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02>, i8 1), !dbg !473
  %1443 = bitcast <8 x float> %1442 to <8 x i32>, !dbg !473
  %1444 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> %1441, <8 x float> zeroinitializer, i8 1), !dbg !474
  %1445 = bitcast <8 x float> %1444 to <8 x i32>, !dbg !474
  %1446 = fcmp fast olt <8 x float> %1441, <float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02>, !dbg !475
  %1447 = select <8 x i1> %1446, <8 x float> <float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02>, <8 x float> %1441, !dbg !475
  %1448 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> zeroinitializer, <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %1444), !dbg !476
  %1449 = fadd <8 x float> <float 0x405E518A20000000, float 0x405E518A20000000, float 0x405E518A20000000, float 0x405E518A20000000, float 0x405E518A20000000, float 0x405E518A20000000, float 0x405E518A20000000, float 0x405E518A20000000>, %1447, !dbg !476
  %1450 = fptosi <8 x float> %1447 to <8 x i32>, !dbg !477
  %1451 = sitofp <8 x i32> %1450 to <8 x float>, !dbg !478
  %1452 = fsub <8 x float> %1447, %1451, !dbg !479
  %z145_SIMD.i = fadd <8 x float> %1452, %1448, !dbg !479
  %1453 = fmul <8 x float> <float 0x3FF7D791A0000000, float 0x3FF7D791A0000000, float 0x3FF7D791A0000000, float 0x3FF7D791A0000000, float 0x3FF7D791A0000000, float 0x3FF7D791A0000000, float 0x3FF7D791A0000000, float 0x3FF7D791A0000000>, %z145_SIMD.i, !dbg !480
  %1454 = fsub <8 x float> <float 0x40135EBF00000000, float 0x40135EBF00000000, float 0x40135EBF00000000, float 0x40135EBF00000000, float 0x40135EBF00000000, float 0x40135EBF00000000, float 0x40135EBF00000000, float 0x40135EBF00000000>, %z145_SIMD.i, !dbg !481
  %1455 = bitcast <8 x i32> %1407 to <8 x float>, !dbg !482
  %1456 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %1454, <8 x float> %1455), !dbg !482
  %1457 = fdiv <8 x float> <float 0x403BBA5FC0000000, float 0x403BBA5FC0000000, float 0x403BBA5FC0000000, float 0x403BBA5FC0000000, float 0x403BBA5FC0000000, float 0x403BBA5FC0000000, float 0x403BBA5FC0000000, float 0x403BBA5FC0000000>, %1456, !dbg !482
  %1458 = fadd <8 x float> %1449, %1457, !dbg !476
  %1459 = fsub <8 x float> %1458, %1453, !dbg !476
  %1460 = fmul <8 x float> <float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000>, %1459, !dbg !483
  %1461 = fptosi <8 x float> %1460 to <8 x i32>, !dbg !484
  %1462 = bitcast <8 x i32> %1461 to <8 x float>, !dbg !380
  %1463 = fmul <8 x float> <float 1.300000e+01, float 1.300000e+01, float 1.300000e+01, float 1.300000e+01, float 1.300000e+01, float 1.300000e+01, float 1.300000e+01, float 1.300000e+01>, %1462, !dbg !516
  %1464 = fmul <8 x float> <float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000>, %1463, !dbg !516
  %1465 = fmul <8 x float> %1192, %1464, !dbg !436
  %1466 = fmul <8 x float> <float 1.400000e+01, float 1.400000e+01, float 1.400000e+01, float 1.400000e+01, float 1.400000e+01, float 1.400000e+01, float 1.400000e+01, float 1.400000e+01>, %1462, !dbg !517
  %1467 = fadd <8 x float> %1425, %1465, !dbg !439
  %1468 = fmul <8 x float> <float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000>, %1466, !dbg !517
  %1469 = fmul <8 x float> %1154, %1468, !dbg !442
  %1470 = fmul <8 x float> %1158, %1468, !dbg !446
  %1471 = fmul <8 x float> %1157, %1468, !dbg !444
  %1472 = fmul <8 x float> %1192, %1469, !dbg !512
  %1473 = fmul <8 x float> %1192, %1470, !dbg !513
  %1474 = fmul <8 x float> %1192, %1471, !dbg !511
  %1475 = fadd <8 x float> %1431, %1472, !dbg !509
  %1476 = fadd <8 x float> %1426, %1473, !dbg !510
  %1477 = fadd <8 x float> %1427, %1474, !dbg !508
  %1478 = xor <8 x i32> %1326, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1>, !dbg !380
  %1479 = and <8 x i32> %1478, %1407, !dbg !380
  %1480 = bitcast <8 x i32> %1326 to <8 x float>, !dbg !380
  %1481 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %1390, <8 x float> %1292, <8 x float> %1480), !dbg !380
  %1482 = bitcast <8 x i32> %1326 to <8 x float>, !dbg !380
  %1483 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %1392, <8 x float> %1295, <8 x float> %1482), !dbg !380
  %1484 = bitcast <8 x i32> %1326 to <8 x float>, !dbg !380
  %1485 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %1385, <8 x float> %1286, <8 x float> %1484), !dbg !380
  %1486 = bitcast <8 x i32> %1326 to <8 x float>, !dbg !380
  %1487 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %1409, <8 x float> %1328, <8 x float> %1486), !dbg !380
  %1488 = bitcast <8 x i32> %1326 to <8 x float>, !dbg !380
  %1489 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %.mapped51.i, <8 x float> %1302, <8 x float> %1488), !dbg !380
  %1490 = bitcast <8 x i32> %1326 to <8 x float>, !dbg !380
  %1491 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %1411, <8 x float> %1339, <8 x float> %1490), !dbg !380
  %1492 = bitcast <8 x i32> %1326 to <8 x float>, !dbg !380
  %1493 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %1413, <8 x float> %1341, <8 x float> %1492), !dbg !380
  %1494 = bitcast <8 x i32> %1326 to <8 x float>, !dbg !380
  %1495 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %1415, <8 x float> %1343, <8 x float> %1494), !dbg !380
  %1496 = bitcast <8 x i32> %1326 to <8 x float>, !dbg !380
  %1497 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %1467, <8 x float> %1354, <8 x float> %1496), !dbg !380
  %1498 = bitcast <8 x i32> %1326 to <8 x float>, !dbg !380
  %1499 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %1475, <8 x float> %1353, <8 x float> %1498), !dbg !380
  %1500 = bitcast <8 x i32> %1326 to <8 x float>, !dbg !380
  %1501 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %1476, <8 x float> %1356, <8 x float> %1500), !dbg !380
  %1502 = bitcast <8 x i32> %1326 to <8 x float>, !dbg !380
  %1503 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %1477, <8 x float> %1351, <8 x float> %1502), !dbg !380
  %1504 = or <8 x i32> %1479, %1326, !dbg !518
  %.fca.0.insert.i = insertvalue %5 undef, float %extract.i, 0, !dbg !518
  %.fca.0.insert59.i = insertvalue %5 undef, float %extract58.i, 0, !dbg !518
  %.fca.0.insert61.i = insertvalue %5 undef, float %extract60.i, 0, !dbg !518
  %.fca.0.insert63.i = insertvalue %5 undef, float %extract62.i, 0, !dbg !518
  %.fca.0.insert65.i = insertvalue %5 undef, float %extract64.i, 0, !dbg !518
  %.fca.0.insert67.i = insertvalue %5 undef, float %extract66.i, 0, !dbg !518
  %.fca.0.insert69.i = insertvalue %5 undef, float %extract68.i, 0, !dbg !518
  %.fca.0.insert71.i = insertvalue %5 undef, float %extract70.i, 0, !dbg !518
  %.fca.1.insert.i = insertvalue %5 %.fca.0.insert.i, float %extract72.i, 1, !dbg !518
  %.fca.1.insert74.i = insertvalue %5 %.fca.0.insert59.i, float %extract73.i, 1, !dbg !518
  %.fca.1.insert76.i = insertvalue %5 %.fca.0.insert61.i, float %extract75.i, 1, !dbg !518
  %.fca.1.insert78.i = insertvalue %5 %.fca.0.insert63.i, float %extract77.i, 1, !dbg !518
  %.fca.1.insert80.i = insertvalue %5 %.fca.0.insert65.i, float %extract79.i, 1, !dbg !518
  %.fca.1.insert82.i = insertvalue %5 %.fca.0.insert67.i, float %extract81.i, 1, !dbg !518
  %.fca.1.insert84.i = insertvalue %5 %.fca.0.insert69.i, float %extract83.i, 1, !dbg !518
  %.fca.1.insert86.i = insertvalue %5 %.fca.0.insert71.i, float %extract85.i, 1, !dbg !518
  %.fca.2.insert.i = insertvalue %5 %.fca.1.insert.i, float %extract87.i, 2, !dbg !518
  %.fca.2.insert89.i = insertvalue %5 %.fca.1.insert74.i, float %extract88.i, 2, !dbg !518
  %.fca.2.insert91.i = insertvalue %5 %.fca.1.insert76.i, float %extract90.i, 2, !dbg !518
  %.fca.2.insert93.i = insertvalue %5 %.fca.1.insert78.i, float %extract92.i, 2, !dbg !518
  %.fca.2.insert95.i = insertvalue %5 %.fca.1.insert80.i, float %extract94.i, 2, !dbg !518
  %.fca.2.insert97.i = insertvalue %5 %.fca.1.insert82.i, float %extract96.i, 2, !dbg !518
  %.fca.2.insert99.i = insertvalue %5 %.fca.1.insert84.i, float %extract98.i, 2, !dbg !518
  %.fca.2.insert101.i = insertvalue %5 %.fca.1.insert86.i, float %extract100.i, 2, !dbg !518
  %1505 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> zeroinitializer, <8 x float> %1483, i8 1), !dbg !381
  %1506 = bitcast <8 x float> %1505 to <8 x i32>, !dbg !381
  %1507 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %1483, !dbg !381
  %1508 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %1507, <8 x float> %1483, <8 x float> %1505), !dbg !519
  %1509 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> zeroinitializer, <8 x float> %1485, i8 1), !dbg !381
  %1510 = bitcast <8 x float> %1509 to <8 x i32>, !dbg !381
  %1511 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %1485, !dbg !381
  %1512 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %1511, <8 x float> %1485, <8 x float> %1509), !dbg !520
  %1513 = extractvalue %1 %45, 4, !dbg !521
  %1514 = extractvalue %0 %54, 8, !dbg !522
  %1515 = extractvalue %0 %54, 6, !dbg !523
  %1516 = fmul <8 x float> %cont_load10.i, %cont_load14.i, !dbg !407
  %1517 = bitcast <8 x i32> %1504 to <8 x float>, !dbg !524
  %1518 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %1497, <8 x float> %1517), !dbg !524
  %1519 = fdiv <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1518, !dbg !524
  %1520 = extractvalue %0 %54, 7, !dbg !525
  %1521 = extractvalue %1 %45, 3, !dbg !526
  %1522 = extractvalue %1 %45, 1, !dbg !527
  %1523 = extractvalue %0 %54, 10, !dbg !528
  %1524 = extractvalue %1 %45, 2, !dbg !529
  %1525 = extractvalue %1 %45, 7, !dbg !530
  %1526 = extractvalue %1 %45, 6, !dbg !531
  %1527 = extractvalue %0 %54, 9, !dbg !532
  %1528 = fmul <8 x float> %cont_load6.i, %cont_load14.i, !dbg !407
  %1529 = extractvalue %1 %45, 5, !dbg !533
  %1530 = bitcast <8 x i32> %1504 to <8 x float>, !dbg !534
  %1531 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %1497, <8 x float> %1530), !dbg !534
  %1532 = fdiv <8 x float> %1489, %1531, !dbg !534
  %1533 = extractvalue %0 %54, 11, !dbg !535
  %1534 = fadd <8 x float> %cont_load.i, %1528, !dbg !536
  %1535 = extractvalue %1 %45, 8, !dbg !537
  %1536 = fmul <8 x float> %cont_load8.i, %cont_load14.i, !dbg !407
  %1537 = fadd <8 x float> %cont_load4.i, %1516, !dbg !536
  %1538 = fmul <8 x float> %cont_load22.i, %1499, !dbg !538
  %1539 = fmul <8 x float> %1538, %1532, !dbg !442
  %1540 = fmul <8 x float> %cont_load24.i, %1501, !dbg !539
  %1541 = fadd <8 x float> %cont_load2.i, %1536, !dbg !536
  %1542 = getelementptr inbounds [0 x float], [0 x float]* %1522, i64 0, i32 %lower20, !dbg !380
  %vec_cast104.i = bitcast float* %1542 to <8 x float>*, !dbg !380
  %1543 = icmp ne <8 x i32> %1504, zeroinitializer, !dbg !540
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %1534, <8 x float>* %vec_cast104.i, i32 4, <8 x i1> %1543), !dbg !540
  %1544 = fmul <8 x float> %cont_load26.i, %1503, !dbg !540
  %1545 = fmul <8 x float> %1540, %1532, !dbg !446
  %1546 = getelementptr inbounds [0 x float], [0 x float]* %1524, i64 0, i32 %lower20, !dbg !380
  %vec_cast105.i = bitcast float* %1546 to <8 x float>*, !dbg !380
  %1547 = icmp ne <8 x i32> %1504, zeroinitializer, !dbg !541
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %1541, <8 x float>* %vec_cast105.i, i32 4, <8 x i1> %1547), !dbg !541
  %1548 = add nsw <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, %cont_load30.i, !dbg !541
  %1549 = fmul <8 x float> %1544, %1532, !dbg !444
  %1550 = getelementptr inbounds [0 x float], [0 x float]* %1521, i64 0, i32 %lower20, !dbg !380
  %vec_cast106.i = bitcast float* %1550 to <8 x float>*, !dbg !380
  %1551 = icmp ne <8 x i32> %1504, zeroinitializer, !dbg !380
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %1537, <8 x float>* %vec_cast106.i, i32 4, <8 x i1> %1551), !dbg !380
  %1552 = getelementptr inbounds [0 x float], [0 x float]* %1513, i64 0, i32 %lower20, !dbg !380
  %vec_cast107.i = bitcast float* %1552 to <8 x float>*, !dbg !380
  %1553 = icmp ne <8 x i32> %1504, zeroinitializer, !dbg !380
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %1481, <8 x float>* %vec_cast107.i, i32 4, <8 x i1> %1553), !dbg !380
  %1554 = getelementptr inbounds [0 x float], [0 x float]* %1529, i64 0, i32 %lower20, !dbg !380
  %vec_cast108.i = bitcast float* %1554 to <8 x float>*, !dbg !380
  %1555 = icmp ne <8 x i32> %1504, zeroinitializer, !dbg !380
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %1483, <8 x float>* %vec_cast108.i, i32 4, <8 x i1> %1555), !dbg !380
  %1556 = getelementptr inbounds [0 x float], [0 x float]* %1526, i64 0, i32 %lower20, !dbg !380
  %vec_cast109.i = bitcast float* %1556 to <8 x float>*, !dbg !380
  %1557 = icmp ne <8 x i32> %1504, zeroinitializer, !dbg !380
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %1485, <8 x float>* %vec_cast109.i, i32 4, <8 x i1> %1557), !dbg !380
  %1558 = getelementptr inbounds [0 x float], [0 x float]* %1525, i64 0, i32 %lower20, !dbg !380
  %vec_cast110.i = bitcast float* %1558 to <8 x float>*, !dbg !380
  %1559 = icmp ne <8 x i32> %1504, zeroinitializer, !dbg !380
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> <float 0x3F1A36E2E0000000, float 0x3F1A36E2E0000000, float 0x3F1A36E2E0000000, float 0x3F1A36E2E0000000, float 0x3F1A36E2E0000000, float 0x3F1A36E2E0000000, float 0x3F1A36E2E0000000, float 0x3F1A36E2E0000000>, <8 x float>* %vec_cast110.i, i32 4, <8 x i1> %1559), !dbg !380
  %1560 = getelementptr inbounds [0 x float], [0 x float]* %1535, i64 0, i32 %lower20, !dbg !380
  %vec_cast111.i = bitcast float* %1560 to <8 x float>*, !dbg !380
  %1561 = icmp ne <8 x i32> %1504, zeroinitializer, !dbg !380
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> <float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000>, <8 x float>* %vec_cast111.i, i32 4, <8 x i1> %1561), !dbg !380
  %1562 = getelementptr inbounds [0 x i32], [0 x i32]* %1515, i64 0, i32 %lower20, !dbg !380
  %vec_cast112.i = bitcast i32* %1562 to <8 x i32>*, !dbg !380
  %1563 = icmp ne <8 x i32> %1504, zeroinitializer, !dbg !380
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %1219, <8 x i32>* %vec_cast112.i, i32 4, <8 x i1> %1563), !dbg !380
  %1564 = getelementptr inbounds [0 x float], [0 x float]* %1514, i64 0, i32 %lower20, !dbg !380
  %vec_cast113.i = bitcast float* %1564 to <8 x float>*, !dbg !380
  %1565 = icmp ne <8 x i32> %1504, zeroinitializer, !dbg !380
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %1539, <8 x float>* %vec_cast113.i, i32 4, <8 x i1> %1565), !dbg !380
  %1566 = getelementptr inbounds [0 x float], [0 x float]* %1527, i64 0, i32 %lower20, !dbg !380
  %vec_cast114.i = bitcast float* %1566 to <8 x float>*, !dbg !380
  %1567 = icmp ne <8 x i32> %1504, zeroinitializer, !dbg !380
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %1545, <8 x float>* %vec_cast114.i, i32 4, <8 x i1> %1567), !dbg !380
  %1568 = getelementptr inbounds [0 x float], [0 x float]* %1523, i64 0, i32 %lower20, !dbg !380
  %vec_cast115.i = bitcast float* %1568 to <8 x float>*, !dbg !380
  %1569 = icmp ne <8 x i32> %1504, zeroinitializer, !dbg !380
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %1549, <8 x float>* %vec_cast115.i, i32 4, <8 x i1> %1569), !dbg !380
  %1570 = getelementptr inbounds [0 x float], [0 x float]* %1520, i64 0, i32 %lower20, !dbg !380
  %vec_cast116.i = bitcast float* %1570 to <8 x float>*, !dbg !380
  %1571 = icmp ne <8 x i32> %1504, zeroinitializer, !dbg !380
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %1519, <8 x float>* %vec_cast116.i, i32 4, <8 x i1> %1571), !dbg !380
  %1572 = getelementptr inbounds [0 x i32], [0 x i32]* %1533, i64 0, i32 %lower20, !dbg !380
  %vec_cast117.i = bitcast i32* %1572 to <8 x i32>*, !dbg !380
  %1573 = icmp ne <8 x i32> %1504, zeroinitializer, !dbg !542
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %1548, <8 x i32>* %vec_cast117.i, i32 4, <8 x i1> %1573), !dbg !542
  br label %_cont138, !dbg !380

_cont138:                                         ; preds = %expr_true137
  %1574 = add nsw i32 8, %lower20, !dbg !167
  br label %unroll_step19, !dbg !168

expr_true139:                                     ; preds = %unroll_step16
  %1575 = getelementptr inbounds [0 x float], [0 x float]* %31, i64 0, i32 %lower17, !dbg !130
  %1576 = getelementptr inbounds [0 x float], [0 x float]* %28, i64 0, i32 %lower17, !dbg !127
  %1577 = getelementptr inbounds [0 x float], [0 x float]* %32, i64 0, i32 %lower17, !dbg !131
  %1578 = getelementptr inbounds [0 x float], [0 x float]* %30, i64 0, i32 %lower17, !dbg !129
  %1579 = load float, float* %1575, align 4, !dbg !130
  %1580 = getelementptr inbounds [0 x float], [0 x float]* %29, i64 0, i32 %lower17, !dbg !128
  %1581 = getelementptr inbounds [0 x float], [0 x float]* %27, i64 0, i32 %lower17, !dbg !126
  %1582 = load float, float* %1577, align 4, !dbg !131
  %1583 = load float, float* %1580, align 4, !dbg !128
  %1584 = load float, float* %1578, align 4, !dbg !129
  %1585 = fcmp olt float 0.000000e+00, %1584, !dbg !170
  %1586 = fsub float -0.000000e+00, %1584, !dbg !169
  %1587 = load float, float* %1576, align 4, !dbg !127
  %1588 = select i1 %1585, float %1584, float %1586, !dbg !171
  %1589 = fcmp olt float %1588, 0x3E45798EE0000000, !dbg !171
  %1590 = load float, float* %1581, align 4, !dbg !126
  br i1 %1589, label %expr_true141, label %expr_false140, !dbg !172

expr_false140:                                    ; preds = %expr_true139
  br label %safe_rcp_cont142, !dbg !173

expr_true141:                                     ; preds = %expr_true139
  br label %safe_rcp_cont142, !dbg !174

safe_rcp_cont142:                                 ; preds = %expr_true141, %expr_false140
  %1591 = fcmp olt float 0.000000e+00, %1587, !dbg !170
  %1592 = fsub float -0.000000e+00, %1587, !dbg !169
  %1593 = select i1 %1591, float %1587, float %1592, !dbg !171
  %1594 = fcmp olt float %1593, 0x3E45798EE0000000, !dbg !171
  br i1 %1594, label %expr_true144, label %expr_false143, !dbg !172

expr_false143:                                    ; preds = %safe_rcp_cont142
  br label %safe_rcp_cont145, !dbg !173

expr_true144:                                     ; preds = %safe_rcp_cont142
  br label %safe_rcp_cont145, !dbg !174

safe_rcp_cont145:                                 ; preds = %expr_true144, %expr_false143
  %1595 = fsub float -0.000000e+00, %1590, !dbg !169
  %1596 = fcmp olt float 0.000000e+00, %1590, !dbg !170
  %1597 = select i1 %1596, float %1590, float %1595, !dbg !171
  %1598 = fcmp olt float %1597, 0x3E45798EE0000000, !dbg !171
  br i1 %1598, label %expr_true147, label %expr_false146, !dbg !172

expr_false146:                                    ; preds = %safe_rcp_cont145
  br label %safe_rcp_cont148, !dbg !173

expr_true147:                                     ; preds = %safe_rcp_cont145
  br label %safe_rcp_cont148, !dbg !174

safe_rcp_cont148:                                 ; preds = %expr_true147, %expr_false146
  %1599 = getelementptr inbounds [0 x i32], [0 x i32]* %44, i64 0, i32 %lower17, !dbg !143
  %1600 = getelementptr inbounds [0 x i32], [0 x i32]* %36, i64 0, i32 %lower17, !dbg !135
  %1601 = getelementptr inbounds [0 x float], [0 x float]* %35, i64 0, i32 %lower17, !dbg !134
  %1602 = getelementptr inbounds [0 x float], [0 x float]* %34, i64 0, i32 %lower17, !dbg !133
  %1603 = getelementptr inbounds [0 x float], [0 x float]* %41, i64 0, i32 %lower17, !dbg !140
  %1604 = getelementptr inbounds [0 x float], [0 x float]* %39, i64 0, i32 %lower17, !dbg !138
  %1605 = getelementptr inbounds [0 x float], [0 x float]* %37, i64 0, i32 %lower17, !dbg !136
  %1606 = getelementptr inbounds [0 x i32], [0 x i32]* %40, i64 0, i32 %lower17, !dbg !139
  %1607 = getelementptr inbounds [0 x float], [0 x float]* %42, i64 0, i32 %lower17, !dbg !141
  %1608 = getelementptr inbounds [0 x float], [0 x float]* %43, i64 0, i32 %lower17, !dbg !142
  %1609 = load i32, i32* %1600, align 4, !dbg !135
  %1610 = getelementptr inbounds [0 x %2], [0 x %2]* %face_normals_1042601, i64 0, i32 %1609, !dbg !175
  %1611 = mul nsw i32 4, %1609, !dbg !176
  %1612 = load float, float* %1605, align 4, !dbg !136
  %1613 = add nsw i32 2, %1611, !dbg !177
  %1614 = add nsw i32 1, %1611, !dbg !178
  %1615 = getelementptr inbounds [0 x i32], [0 x i32]* %indices_1042603, i64 0, i32 %1611, !dbg !179
  %1616 = getelementptr inbounds [0 x i32], [0 x i32]* %indices_1042603, i64 0, i32 %1613, !dbg !180
  %1617 = getelementptr inbounds [0 x i32], [0 x i32]* %indices_1042603, i64 0, i32 %1614, !dbg !181
  %1618 = load float, float* %1601, align 4, !dbg !134
  %1619 = fsub float 1.000000e+00, %1618, !dbg !182
  %1620 = load float, float* %1602, align 4, !dbg !133
  %1621 = fsub float %1619, %1620, !dbg !182
  %1622 = load i32, i32* %1599, align 4, !dbg !143
  %1623 = load float, float* %1608, align 4, !dbg !142
  %1624 = load float, float* %1604, align 4, !dbg !138
  %1625 = load float, float* %1607, align 4, !dbg !141
  %1626 = insertvalue %5 undef, float %1623, 0, !dbg !183
  %1627 = insertvalue %5 %1626, float %1624, 1, !dbg !183
  %1628 = insertvalue %5 %1627, float %1625, 2, !dbg !183
  %1629 = load float, float* %1603, align 4, !dbg !140
  %1630 = load i32, i32* %1606, align 4, !dbg !139
  %1631 = insertvalue %4 undef, i32 %1622, 0, !dbg !184
  %1632 = insertvalue %4 %1631, %5 %1628, 1, !dbg !184
  %1633 = insertvalue %4 %1632, float %1629, 2, !dbg !184
  %1634 = insertvalue %4 %1633, i32 %1630, 3, !dbg !184
  store %4 %1634, %4* %state_1047067, align 4, !dbg !185
  %1635 = load i32, i32* %1615, align 4, !dbg !179
  %1636 = load i32, i32* %1617, align 4, !dbg !181
  %1637 = getelementptr inbounds [0 x %2], [0 x %2]* %normals_1042600, i64 0, i32 %1635, !dbg !186
  %1638 = load i32, i32* %1616, align 4, !dbg !180
  %1639 = getelementptr inbounds [0 x %2], [0 x %2]* %normals_1042600, i64 0, i32 %1636, !dbg !186
  %1640 = load %2, %2* %1610, align 4, !dbg !175
  %1641 = getelementptr inbounds [0 x %2], [0 x %2]* %normals_1042600, i64 0, i32 %1638, !dbg !186
  %1642 = load %2, %2* %1637, align 4, !dbg !186
  %1643 = load %2, %2* %1639, align 4, !dbg !186
  %1644 = extractvalue %2 %1642, 2, !dbg !187
  %1645 = extractvalue %2 %1642, 0, !dbg !188
  %1646 = extractvalue %2 %1642, 1, !dbg !189
  %1647 = fmul float %1621, %1644, !dbg !190
  %1648 = fmul float %1621, %1645, !dbg !190
  %1649 = fmul float %1621, %1646, !dbg !190
  %1650 = load %2, %2* %1641, align 4, !dbg !186
  %1651 = extractvalue %2 %1643, 2, !dbg !191
  %1652 = extractvalue %2 %1643, 0, !dbg !192
  %1653 = extractvalue %2 %1643, 1, !dbg !193
  %1654 = fmul float %1618, %1651, !dbg !194
  %1655 = fmul float %1618, %1652, !dbg !194
  %1656 = fmul float %1618, %1653, !dbg !194
  %1657 = extractvalue %2 %1650, 2, !dbg !195
  %1658 = extractvalue %2 %1650, 0, !dbg !196
  %1659 = extractvalue %2 %1650, 1, !dbg !197
  %1660 = fadd float %1647, %1654, !dbg !190
  %1661 = fadd float %1648, %1655, !dbg !190
  %1662 = fadd float %1649, %1656, !dbg !190
  %1663 = fmul float %1620, %1657, !dbg !198
  %1664 = fmul float %1620, %1658, !dbg !198
  %1665 = fmul float %1620, %1659, !dbg !198
  %1666 = fadd float %1660, %1663, !dbg !190
  %1667 = fadd float %1661, %1664, !dbg !190
  %1668 = fadd float %1662, %1665, !dbg !190
  %1669 = fmul float %1666, %1666, !dbg !199
  %1670 = fmul float %1667, %1667, !dbg !200
  %1671 = fmul float %1668, %1668, !dbg !201
  %1672 = fadd float %1670, %1671, !dbg !200
  %1673 = fadd float %1672, %1669, !dbg !200
  %1674 = call float @llvm.sqrt.f32(float %1673), !dbg !202
  br label %vec3_len_cont149, !dbg !202

vec3_len_cont149:                                 ; preds = %safe_rcp_cont148
  %vec3_len150 = phi float [ %1674, %safe_rcp_cont148 ]
  %1675 = extractvalue %2 %1640, 2, !dbg !203
  %1676 = extractvalue %2 %1640, 0, !dbg !204
  %1677 = extractvalue %2 %1640, 1, !dbg !205
  %1678 = fmul float %1587, %1677, !dbg !201
  %1679 = fmul float %1590, %1675, !dbg !199
  %1680 = fmul float %1584, %1676, !dbg !200
  %1681 = fadd float %1680, %1678, !dbg !200
  %1682 = fadd float %1681, %1679, !dbg !200
  %is_entering497 = fcmp ole float %1682, 0.000000e+00, !dbg !206
  br i1 %is_entering497, label %expr_true152, label %expr_false151, !dbg !207

expr_false151:                                    ; preds = %vec3_len_cont149
  %1683 = fsub float -0.000000e+00, %1677, !dbg !208
  %1684 = fsub float -0.000000e+00, %1676, !dbg !208
  %1685 = fsub float -0.000000e+00, %1675, !dbg !208
  %1686 = insertvalue %2 undef, float %1684, 0, !dbg !209
  %1687 = insertvalue %2 %1686, float %1683, 1, !dbg !209
  %1688 = insertvalue %2 %1687, float %1685, 2, !dbg !209
  br label %if_join153, !dbg !210

expr_true152:                                     ; preds = %vec3_len_cont149
  br label %if_join153, !dbg !210

if_join153:                                       ; preds = %expr_true152, %expr_false151
  %if_join154 = phi %2 [ %1640, %expr_true152 ], [ %1688, %expr_false151 ]
  %1689 = fdiv float 1.000000e+00, %vec3_len150, !dbg !211
  %1690 = fmul float %1667, %1689, !dbg !212
  %1691 = fmul float %1668, %1689, !dbg !212
  %1692 = fmul float %1666, %1689, !dbg !212
  %1693 = fmul float %1584, %1690, !dbg !200
  %1694 = fmul float %1587, %1691, !dbg !201
  %1695 = fmul float %1590, %1692, !dbg !199
  %1696 = fadd float %1693, %1694, !dbg !200
  %1697 = fadd float %1696, %1695, !dbg !200
  %1698 = fcmp ole float %1697, 0.000000e+00, !dbg !213
  br i1 %1698, label %expr_true156, label %expr_false155, !dbg !214

expr_false155:                                    ; preds = %if_join153
  %1699 = fsub float -0.000000e+00, %1691, !dbg !208
  %1700 = fsub float -0.000000e+00, %1690, !dbg !208
  %1701 = fsub float -0.000000e+00, %1692, !dbg !208
  %1702 = insertvalue %2 undef, float %1700, 0, !dbg !209
  %1703 = insertvalue %2 %1702, float %1699, 1, !dbg !209
  %1704 = insertvalue %2 %1703, float %1701, 2, !dbg !209
  br label %if_join157, !dbg !215

expr_true156:                                     ; preds = %if_join153
  %1705 = insertvalue %2 undef, float %1690, 0, !dbg !209
  %1706 = insertvalue %2 %1705, float %1691, 1, !dbg !209
  %1707 = insertvalue %2 %1706, float %1692, 2, !dbg !209
  br label %if_join157, !dbg !215

if_join157:                                       ; preds = %expr_true156, %expr_false155
  %if_join158 = phi %2 [ %1707, %expr_true156 ], [ %1704, %expr_false155 ]
  %1708 = getelementptr inbounds [0 x %3], [0 x %3]* %texcoords_1042602, i64 0, i32 %1635, !dbg !216
  %1709 = getelementptr inbounds [0 x %3], [0 x %3]* %texcoords_1042602, i64 0, i32 %1638, !dbg !216
  %1710 = getelementptr inbounds [0 x %3], [0 x %3]* %texcoords_1042602, i64 0, i32 %1636, !dbg !216
  %1711 = load %3, %3* %1708, align 4, !dbg !216
  %1712 = load %3, %3* %1710, align 4, !dbg !216
  %1713 = extractvalue %3 %1711, 0, !dbg !217
  %1714 = fmul float %1621, %1713, !dbg !190
  %1715 = load %3, %3* %1709, align 4, !dbg !216
  %1716 = extractvalue %3 %1712, 0, !dbg !217
  %1717 = fmul float %1618, %1716, !dbg !194
  %1718 = extractvalue %3 %1715, 0, !dbg !217
  %1719 = fadd float %1714, %1717, !dbg !190
  %1720 = fmul float %1620, %1718, !dbg !198
  %1721 = fadd float %1719, %1720, !dbg !190
  %1722 = call float @llvm.floor.f32(float %1721), !dbg !218
  br label %_cont159, !dbg !218

_cont159:                                         ; preds = %if_join157
  %1723 = phi float [ %1722, %if_join157 ]
  %1724 = extractvalue %3 %1715, 1, !dbg !219
  %1725 = extractvalue %3 %1712, 1, !dbg !219
  %1726 = fmul float %1618, %1725, !dbg !194
  %1727 = fmul float %1620, %1724, !dbg !198
  %1728 = extractvalue %3 %1711, 1, !dbg !219
  %1729 = fmul float %1621, %1728, !dbg !190
  %1730 = fadd float %1729, %1726, !dbg !190
  %1731 = fadd float %1730, %1727, !dbg !190
  %1732 = call float @llvm.floor.f32(float %1731), !dbg !218
  br label %_cont160, !dbg !218

_cont160:                                         ; preds = %_cont159
  %1733 = phi float [ %1732, %_cont159 ]
  %1734 = fsub float %1721, %1723, !dbg !220
  %u498 = fmul float %1734, %5, !dbg !221
  %1735 = fptosi float %u498 to i32, !dbg !222
  %1736 = icmp slt i32 %1735, %4, !dbg !223
  br i1 %1736, label %expr_true162, label %expr_false161, !dbg !224

expr_false161:                                    ; preds = %_cont160
  br label %_cont163, !dbg !225

expr_true162:                                     ; preds = %_cont160
  br label %_cont163, !dbg !225

_cont163:                                         ; preds = %expr_true162, %expr_false161
  %x0164 = phi i32 [ %1735, %expr_true162 ], [ %4, %expr_false161 ]
  %1737 = fsub float %1731, %1733, !dbg !220
  %v499 = fmul float %1737, %2, !dbg !226
  %1738 = fptosi float %v499 to i32, !dbg !227
  %1739 = icmp slt i32 %1738, %0, !dbg !223
  br i1 %1739, label %expr_true166, label %expr_false165, !dbg !224

expr_false165:                                    ; preds = %_cont163
  br label %_cont167, !dbg !225

expr_true166:                                     ; preds = %_cont163
  br label %_cont167, !dbg !225

_cont167:                                         ; preds = %expr_true166, %expr_false165
  %y0168 = phi i32 [ %1738, %expr_true166 ], [ %0, %expr_false165 ]
  %1740 = add nsw i32 1, %x0164, !dbg !228
  %1741 = icmp slt i32 %1740, %4, !dbg !223
  br i1 %1741, label %expr_true170, label %expr_false169, !dbg !224

expr_false169:                                    ; preds = %_cont167
  br label %_cont171, !dbg !225

expr_true170:                                     ; preds = %_cont167
  br label %_cont171, !dbg !225

_cont171:                                         ; preds = %expr_true170, %expr_false169
  %x1172 = phi i32 [ %1740, %expr_true170 ], [ %4, %expr_false169 ]
  %1742 = add nsw i32 1, %y0168, !dbg !229
  %1743 = icmp slt i32 %1742, %0, !dbg !223
  br i1 %1743, label %expr_true174, label %expr_false173, !dbg !224

expr_false173:                                    ; preds = %_cont171
  br label %_cont175, !dbg !225

expr_true174:                                     ; preds = %_cont171
  br label %_cont175, !dbg !225

_cont175:                                         ; preds = %expr_true174, %expr_false173
  %y1176 = phi i32 [ %1742, %expr_true174 ], [ %0, %expr_false173 ]
  %1744 = mul nsw i32 %y0168, %width_1042605, !dbg !230
  %1745 = extractvalue %2 %if_join158, 1, !dbg !232
  %1746 = sitofp i32 %1735 to float, !dbg !127
  %1747 = extractvalue %2 %if_join158, 2, !dbg !238
  %1748 = mul nsw i32 %y1176, %width_1042605, !dbg !230
  %1749 = extractvalue %2 %if_join154, 1, !dbg !205
  %1750 = extractvalue %2 %if_join154, 0, !dbg !204
  %1751 = fmul float %1745, %1592, !dbg !201
  %1752 = sitofp i32 %1738 to float, !dbg !126
  %1753 = extractvalue %2 %if_join154, 2, !dbg !203
  %1754 = add nsw i32 %1744, %x0164, !dbg !230
  %1755 = add nsw i32 %1748, %x1172, !dbg !230
  %ky500 = fsub float %v499, %1752, !dbg !240
  %1756 = extractvalue %2 %if_join158, 0, !dbg !233
  %1757 = add nsw i32 %1744, %x1172, !dbg !230
  %1758 = getelementptr inbounds [0 x i32], [0 x i32]* %pixels_1042604, i64 0, i32 %1755, !dbg !231
  %1759 = getelementptr inbounds [0 x i32], [0 x i32]* %pixels_1042604, i64 0, i32 %1754, !dbg !231
  %kx501 = fsub float %u498, %1746, !dbg !243
  %1760 = fmul float %1747, %1595, !dbg !199
  %1761 = add nsw i32 %1748, %x0164, !dbg !230
  %1762 = fsub float 1.000000e+00, %ky500, !dbg !242
  %1763 = fmul float %1756, %1586, !dbg !200
  %1764 = getelementptr inbounds [0 x i32], [0 x i32]* %pixels_1042604, i64 0, i32 %1757, !dbg !231
  %1765 = load i32, i32* %1759, align 4, !dbg !231
  %1766 = fsub float 1.000000e+00, %kx501, !dbg !242
  %1767 = getelementptr inbounds [0 x i32], [0 x i32]* %pixels_1042604, i64 0, i32 %1761, !dbg !231
  %1768 = fadd float %1763, %1751, !dbg !200
  %1769 = fadd float %1768, %1760, !dbg !200
  %r502 = and i32 255, %1765, !dbg !235
  %1770 = lshr i32 %1765, 8, !dbg !237
  %1771 = lshr i32 %1765, 16, !dbg !234
  %1772 = load i32, i32* %1764, align 4, !dbg !231
  %1773 = fmul float 2.000000e+00, %1769, !dbg !251
  %1774 = uitofp i32 %r502 to float, !dbg !244
  %g503 = and i32 255, %1770, !dbg !239
  %b504 = and i32 255, %1771, !dbg !236
  %1775 = fmul float %1747, %1773, !dbg !212
  %1776 = fmul float %1756, %1773, !dbg !212
  %1777 = fmul float %1745, %1773, !dbg !212
  %1778 = fmul float 0x3F70101020000000, %1774, !dbg !248
  %1779 = uitofp i32 %g503 to float, !dbg !245
  %1780 = uitofp i32 %b504 to float, !dbg !241
  %1781 = load i32, i32* %1767, align 4, !dbg !231
  %r505 = and i32 255, %1772, !dbg !235
  %1782 = lshr i32 %1772, 8, !dbg !237
  %1783 = lshr i32 %1772, 16, !dbg !234
  %1784 = fsub float %1775, %1595, !dbg !252
  %1785 = fsub float %1776, %1586, !dbg !252
  %1786 = fsub float %1777, %1592, !dbg !252
  %1787 = fmul float %1766, %1778, !dbg !250
  %1788 = fmul float 0x3F70101020000000, %1779, !dbg !249
  %1789 = fmul float 0x3F70101020000000, %1780, !dbg !246
  %1790 = uitofp i32 %r505 to float, !dbg !244
  %g506 = and i32 255, %1782, !dbg !239
  %b507 = and i32 255, %1783, !dbg !236
  %1791 = fmul float %1766, %1788, !dbg !250
  %1792 = fmul float %1766, %1789, !dbg !250
  %1793 = load i32, i32* %1758, align 4, !dbg !231
  %r508 = and i32 255, %1781, !dbg !235
  %1794 = lshr i32 %1781, 8, !dbg !237
  %1795 = lshr i32 %1781, 16, !dbg !234
  %1796 = fmul float 0x3F70101020000000, %1790, !dbg !248
  %1797 = uitofp i32 %g506 to float, !dbg !245
  %1798 = uitofp i32 %b507 to float, !dbg !241
  %1799 = uitofp i32 %r508 to float, !dbg !244
  %g509 = and i32 255, %1794, !dbg !239
  %b510 = and i32 255, %1795, !dbg !236
  %1800 = fmul float %kx501, %1796, !dbg !247
  %1801 = fmul float 0x3F70101020000000, %1797, !dbg !249
  %1802 = fmul float 0x3F70101020000000, %1798, !dbg !246
  %1803 = load i32, i32* %18, align 4, !dbg !259
  %r511 = and i32 255, %1793, !dbg !235
  %1804 = lshr i32 %1793, 8, !dbg !237
  %1805 = lshr i32 %1793, 16, !dbg !234
  %1806 = fmul float 0x3F70101020000000, %1799, !dbg !248
  %1807 = uitofp i32 %g509 to float, !dbg !245
  %1808 = uitofp i32 %b510 to float, !dbg !241
  %1809 = fadd float %1787, %1800, !dbg !250
  %1810 = fmul float %kx501, %1801, !dbg !247
  %1811 = fmul float %kx501, %1802, !dbg !247
  %1812 = uitofp i32 %r511 to float, !dbg !244
  %g512 = and i32 255, %1804, !dbg !239
  %b513 = and i32 255, %1805, !dbg !236
  %1813 = fmul float %1766, %1806, !dbg !250
  %1814 = fmul float 0x3F70101020000000, %1807, !dbg !249
  %1815 = fmul float 0x3F70101020000000, %1808, !dbg !246
  %1816 = fmul float %1762, %1809, !dbg !250
  %1817 = fadd float %1791, %1810, !dbg !250
  %1818 = fadd float %1792, %1811, !dbg !250
  %1819 = icmp eq i32 %1803, 0, !dbg !253
  %1820 = fmul float 0x3F70101020000000, %1812, !dbg !248
  %1821 = uitofp i32 %g512 to float, !dbg !245
  %1822 = uitofp i32 %b513 to float, !dbg !241
  %1823 = fmul float %1766, %1814, !dbg !250
  %1824 = fmul float %1766, %1815, !dbg !250
  %1825 = fmul float %1762, %1817, !dbg !250
  %1826 = fmul float %1762, %1818, !dbg !250
  %1827 = select i1 %1819, i32 1, i32 %1803, !dbg !260
  %1828 = fmul float %kx501, %1820, !dbg !247
  %1829 = fmul float 0x3F70101020000000, %1821, !dbg !249
  %1830 = fmul float 0x3F70101020000000, %1822, !dbg !246
  %1831 = shl i32 %1827, 13, !dbg !261
  %1832 = fadd float %1813, %1828, !dbg !250
  %1833 = fmul float %kx501, %1829, !dbg !247
  %1834 = fmul float %kx501, %1830, !dbg !247
  %1835 = xor i32 %1827, %1831, !dbg !262
  %1836 = fmul float %ky500, %1832, !dbg !247
  %1837 = fadd float %1823, %1833, !dbg !250
  %1838 = fadd float %1824, %1834, !dbg !250
  %1839 = lshr i32 %1835, 17, !dbg !263
  %1840 = fadd float %1816, %1836, !dbg !250
  %1841 = fmul float %ky500, %1837, !dbg !247
  %1842 = fmul float %ky500, %1838, !dbg !247
  %1843 = xor i32 %1835, %1839, !dbg !264
  %1844 = fmul float 0x3FCB367A00000000, %1840, !dbg !254
  %1845 = fadd float %1825, %1841, !dbg !250
  %1846 = fadd float %1826, %1842, !dbg !250
  %1847 = shl i32 %1843, 5, !dbg !265
  %1848 = fmul float 0x3FE6E2EB20000000, %1845, !dbg !256
  %1849 = fmul float 0x3FB27BB300000000, %1846, !dbg !258
  %1850 = xor i32 %1843, %1847, !dbg !266
  %1851 = fadd float %1844, %1848, !dbg !254
  %1852 = fadd float %1851, %1849, !dbg !254
  store i32 %1850, i32* %18, align 4, !dbg !267
  %1853 = icmp eq i32 %1850, 0, !dbg !253
  %1854 = fadd float 0x3FE6E2EB20000000, %1852, !dbg !268
  %1855 = select i1 %1853, i32 1, i32 %1850, !dbg !260
  %1856 = fcmp oeq float %1854, 0.000000e+00, !dbg !269
  %1857 = fdiv float %1852, %1854, !dbg !270
  %1858 = and i32 8388607, %1850, !dbg !271
  %1859 = shl i32 %1855, 13, !dbg !261
  %1860 = select i1 %1856, float 0.000000e+00, float %1857, !dbg !272
  %1861 = or i32 1065353216, %1858, !dbg !273
  %1862 = xor i32 %1855, %1859, !dbg !262
  %1863 = fsub float 1.000000e+00, %1860, !dbg !274
  %1864 = bitcast i32 %1861 to float, !dbg !275
  %1865 = lshr i32 %1862, 17, !dbg !263
  %1866 = fsub float %1864, 1.000000e+00, !dbg !275
  %1867 = xor i32 %1862, %1865, !dbg !264
  %1868 = fcmp ole float %1860, %1866, !dbg !276
  %1869 = shl i32 %1867, 5, !dbg !265
  %1870 = xor i32 %1867, %1869, !dbg !266
  %1871 = icmp eq i32 %1870, 0, !dbg !253
  %1872 = select i1 %1871, i32 1, i32 %1870, !dbg !260
  %1873 = shl i32 %1872, 13, !dbg !261
  %1874 = xor i32 %1872, %1873, !dbg !262
  %1875 = and i32 8388607, %1870, !dbg !271
  %1876 = lshr i32 %1874, 17, !dbg !263
  %1877 = or i32 1065353216, %1875, !dbg !273
  %1878 = xor i32 %1874, %1876, !dbg !264
  %1879 = bitcast i32 %1877 to float, !dbg !275
  %1880 = shl i32 %1878, 5, !dbg !265
  %1881 = fsub float %1879, 1.000000e+00, !dbg !275
  %1882 = xor i32 %1878, %1880, !dbg !266
  %phi514 = fmul float 0x401921FB60000000, %1881, !dbg !277
  %1883 = and i32 8388607, %1882, !dbg !271
  %1884 = or i32 1065353216, %1883, !dbg !273
  %1885 = bitcast i32 %1884 to float, !dbg !275
  %1886 = fsub float %1885, 1.000000e+00, !dbg !275
  br i1 %1868, label %expr_true207, label %expr_false177, !dbg !278

expr_false177:                                    ; preds = %_cont175
  %1887 = bitcast float %1886 to i32, !dbg !279
  %1888 = uitofp i32 %1887 to float, !dbg !280
  store i32 %1870, i32* %18, align 4, !dbg !267
  %1889 = and i32 8388607, %1887, !dbg !281
  %y515 = fmul float 0x3E80000000000000, %1888, !dbg !282
  store i32 %1882, i32* %18, align 4, !dbg !267
  %mx516 = or i32 1056964608, %1889, !dbg !283
  %1890 = fsub float %y515, 0x405F0E6EE0000000, !dbg !284
  %1891 = bitcast i32 %mx516 to float, !dbg !285
  %1892 = fmul float 0x3FF7F7EEA0000000, %1891, !dbg !286
  %1893 = fadd float 0x3FD6889F20000000, %1891, !dbg !287
  %1894 = fsub float %1890, %1892, !dbg !284
  %1895 = fdiv float 0x3FFB9D3460000000, %1893, !dbg !288
  %1896 = fsub float %1894, %1895, !dbg !284
  %1897 = fmul float 0x3FB3B13B20000000, %1896, !dbg !289
  %1898 = fcmp olt float %1897, -1.260000e+02, !dbg !290
  %1899 = fcmp olt float %1897, 0.000000e+00, !dbg !291
  %1900 = select i1 %1898, float -1.260000e+02, float %1897, !dbg !292
  %1901 = select i1 %1899, float 1.000000e+00, float 0.000000e+00, !dbg !293
  %1902 = fadd float 0x405E518A20000000, %1900, !dbg !294
  %1903 = fptosi float %1900 to i32, !dbg !295
  %1904 = sitofp i32 %1903 to float, !dbg !296
  %1905 = fsub float %1900, %1904, !dbg !297
  %z517 = fadd float %1905, %1901, !dbg !297
  %1906 = fmul float 0x3FF7D791A0000000, %z517, !dbg !298
  %1907 = fsub float 0x40135EBF00000000, %z517, !dbg !299
  %1908 = fdiv float 0x403BBA5FC0000000, %1907, !dbg !300
  %1909 = fadd float %1902, %1908, !dbg !294
  %1910 = fsub float %1909, %1906, !dbg !294
  %1911 = fmul float 0x4160000000000000, %1910, !dbg !301
  %1912 = fptosi float %1911 to i32, !dbg !302
  %1913 = bitcast i32 %1912 to float, !dbg !303
  %1914 = call float @llvm.minnum.f32(float %1913, float 1.000000e+00), !dbg !304
  br label %_cont178, !dbg !304

_cont178:                                         ; preds = %expr_false177
  %c179 = phi float [ %1914, %expr_false177 ]
  %1915 = fmul float %c179, %c179, !dbg !305
  %1916 = fsub float 1.000000e+00, %1915, !dbg !306
  %1917 = call float @llvm.sqrt.f32(float %1916), !dbg !307
  br label %_cont180, !dbg !307

_cont180:                                         ; preds = %_cont178
  %s181 = phi float [ %1917, %_cont178 ]
  %1918 = call float @llvm.cos.f32(float %phi514), !dbg !308
  br label %_cont182, !dbg !308

_cont182:                                         ; preds = %_cont180
  %1919 = phi float [ %1918, %_cont180 ]
  %1920 = call float @llvm.sin.f32(float %phi514), !dbg !309
  br label %_cont183, !dbg !309

_cont183:                                         ; preds = %_cont182
  %1921 = phi float [ %1920, %_cont182 ]
  %1922 = fmul float %1785, %c179, !dbg !199
  %1923 = fcmp ole float 0.000000e+00, %1784, !dbg !238
  %1924 = fmul float %1784, %c179, !dbg !199
  %1925 = fmul float %1786, %c179, !dbg !199
  %1926 = fmul float %1786, %1786, !dbg !310
  %x518 = fmul float %s181, %1919, !dbg !311
  %1927 = fmul float %1785, %1786, !dbg !233
  %1928 = fsub float -0.000000e+00, %1786, !dbg !312
  %1929 = select i1 %1923, float 1.000000e+00, float -1.000000e+00, !dbg !314
  %y519 = fmul float %s181, %1921, !dbg !313
  %1930 = fmul float %1929, %1785, !dbg !315
  %1931 = fmul float %1928, %y519, !dbg !201
  %1932 = fadd float %1929, %1784, !dbg !317
  %1933 = fsub float -0.000000e+00, %1929, !dbg !316
  %1934 = fmul float %1930, %1785, !dbg !315
  %a520 = fdiv float -1.000000e+00, %1932, !dbg !318
  %1935 = fmul float %1933, %1785, !dbg !316
  %1936 = fmul float %1934, %a520, !dbg !315
  %b521 = fmul float %1927, %a520, !dbg !233
  %1937 = fmul float %1926, %a520, !dbg !310
  %1938 = fmul float %1935, %x518, !dbg !200
  %1939 = fadd float 1.000000e+00, %1936, !dbg !319
  %1940 = fmul float %b521, %y519, !dbg !201
  %1941 = fmul float %1929, %b521, !dbg !320
  %1942 = fadd float %1929, %1937, !dbg !321
  %1943 = fadd float %1938, %1931, !dbg !200
  %1944 = fmul float %1939, %x518, !dbg !200
  %1945 = fadd float %1944, %1940, !dbg !200
  %1946 = fmul float %1941, %x518, !dbg !200
  %1947 = fmul float %1942, %y519, !dbg !201
  %1948 = fadd float %1943, %1924, !dbg !200
  %1949 = fadd float %1945, %1922, !dbg !200
  %1950 = fadd float %1946, %1947, !dbg !200
  %1951 = fmul float %1948, %1747, !dbg !199
  %1952 = fmul float %1949, %1756, !dbg !200
  %1953 = fadd float %1950, %1925, !dbg !200
  %1954 = fmul float %1953, %1745, !dbg !201
  %1955 = fadd float %1952, %1954, !dbg !200
  %1956 = fadd float %1955, %1951, !dbg !200
  %1957 = fcmp ole float 0.000000e+00, %1956, !dbg !322
  br i1 %1957, label %expr_true185, label %expr_false184, !dbg !323

expr_false184:                                    ; preds = %_cont183
  br label %positive_cos_cont186, !dbg !324

expr_true185:                                     ; preds = %_cont183
  br label %positive_cos_cont186, !dbg !324

positive_cos_cont186:                             ; preds = %expr_true185, %expr_false184
  %cos187 = phi float [ %1956, %expr_true185 ], [ 0.000000e+00, %expr_false184 ]
  %1958 = fdiv float %1886, %c179, !dbg !325
  %1959 = fcmp une float %c179, 0.000000e+00, !dbg !326
  %1960 = select i1 %1959, float %1958, float 0.000000e+00, !dbg !327
  %1961 = fmul float 1.300000e+01, %1960, !dbg !328
  %pdf522 = fmul float 0x3FC45F3060000000, %1961, !dbg !328
  %1962 = fcmp olt float 0.000000e+00, %pdf522, !dbg !329
  br i1 %1962, label %expr_true189, label %expr_false188, !dbg !330

expr_false188:                                    ; preds = %positive_cos_cont186
  br label %jump_true191, !dbg !159

expr_true189:                                     ; preds = %positive_cos_cont186
  %1963 = fmul float %1953, %1749, !dbg !201
  %1964 = fmul float %1949, %1750, !dbg !200
  %1965 = fmul float %1948, %1753, !dbg !199
  %1966 = fadd float %1964, %1963, !dbg !200
  %1967 = fadd float %1966, %1965, !dbg !200
  %1968 = fcmp olt float 0.000000e+00, %1967, !dbg !331
  br i1 %1968, label %expr_true192, label %expr_false190, !dbg !332

expr_false190:                                    ; preds = %expr_true189
  br label %jump_true191, !dbg !159

jump_true191:                                     ; preds = %expr_false190, %expr_false188
  br label %infix_result193, !dbg !159

expr_true192:                                     ; preds = %expr_true189
  br label %infix_result193, !dbg !159

infix_result193:                                  ; preds = %expr_true192, %jump_true191
  %valid194 = phi i1 [ true, %expr_true192 ], [ false, %jump_true191 ]
  br i1 %valid194, label %expr_true196, label %expr_false195, !dbg !333

expr_false195:                                    ; preds = %infix_result193
  br label %if_join197, !dbg !334

expr_true196:                                     ; preds = %infix_result193
  br label %if_join197, !dbg !334

if_join197:                                       ; preds = %expr_true196, %expr_false195
  %if_join198 = phi float [ %pdf522, %expr_true196 ], [ 1.000000e+00, %expr_false195 ]
  br i1 %valid194, label %expr_true200, label %expr_false199, !dbg !129

expr_false199:                                    ; preds = %if_join197
  br label %if_join201, !dbg !335

expr_true200:                                     ; preds = %if_join197
  %1969 = fmul float 1.400000e+01, %pdf522, !dbg !336
  %1970 = fdiv float %1969, 1.300000e+01, !dbg !336
  %1971 = fmul float %1840, %1970, !dbg !253
  %1972 = fmul float %1845, %1970, !dbg !255
  %1973 = fmul float %1846, %1970, !dbg !257
  %1974 = insertvalue %5 undef, float %1971, 0, !dbg !183
  %1975 = insertvalue %5 %1974, float %1972, 1, !dbg !183
  %1976 = insertvalue %5 %1975, float %1973, 2, !dbg !183
  br label %if_join201, !dbg !335

if_join201:                                       ; preds = %expr_true200, %expr_false199
  %if_join202 = phi %5 [ %1976, %expr_true200 ], [ zeroinitializer, %expr_false199 ]
  br i1 %1957, label %expr_true204, label %expr_false203, !dbg !323

expr_false203:                                    ; preds = %if_join201
  br label %positive_cos_cont205, !dbg !324

expr_true204:                                     ; preds = %if_join201
  br label %positive_cos_cont205, !dbg !324

positive_cos_cont205:                             ; preds = %expr_true204, %expr_false203
  %positive_cos206 = phi float [ %1956, %expr_true204 ], [ 0.000000e+00, %expr_false203 ]
  %1977 = fmul float %1860, %if_join198, !dbg !247
  %1978 = fmul float 0x3FD45F3060000000, %positive_cos206, !dbg !340
  %1979 = extractvalue %5 %if_join202, 1, !dbg !338
  %1980 = extractvalue %5 %if_join202, 2, !dbg !341
  %1981 = fmul float %1860, %1980, !dbg !346
  %1982 = extractvalue %5 %if_join202, 0, !dbg !339
  %1983 = insertvalue %2 undef, float %1949, 0, !dbg !209
  %1984 = insertvalue %2 %1983, float %1953, 1, !dbg !209
  %1985 = insertvalue %2 %1984, float %1948, 2, !dbg !209
  %1986 = fmul float 0x3FD45F3060000000, %1863, !dbg !337
  %1987 = fmul float 0.000000e+00, %1863, !dbg !342
  %1988 = fmul float %1863, %1978, !dbg !250
  %1989 = fadd float %1988, %1977, !dbg !250
  %1990 = fmul float %1860, %1979, !dbg !344
  %1991 = fadd float %1987, %1981, !dbg !314
  %1992 = fmul float %1860, %1982, !dbg !345
  %1993 = insertvalue %6 undef, %2 %1985, 0, !dbg !343
  %1994 = insertvalue %6 %1993, float %if_join198, 1, !dbg !343
  %1995 = insertvalue %6 %1994, float %cos187, 2, !dbg !343
  %1996 = insertvalue %6 %1995, %5 %if_join202, 3, !dbg !343
  %1997 = fadd float %1986, %1990, !dbg !337
  %1998 = fadd float %1987, %1992, !dbg !342
  %1999 = insertvalue %5 undef, float %1998, 0, !dbg !183
  %2000 = insertvalue %5 %1999, float %1997, 1, !dbg !183
  %2001 = insertvalue %5 %2000, float %1991, 2, !dbg !183
  br label %if_join237, !dbg !347

expr_true207:                                     ; preds = %_cont175
  %2002 = fsub float 1.000000e+00, %1886, !dbg !348
  store i32 %1870, i32* %18, align 4, !dbg !267
  store i32 %1882, i32* %18, align 4, !dbg !267
  %2003 = call float @llvm.sqrt.f32(float %2002), !dbg !349
  br label %_cont208, !dbg !349

_cont208:                                         ; preds = %expr_true207
  %c209 = phi float [ %2003, %expr_true207 ]
  %2004 = call float @llvm.sqrt.f32(float %1886), !dbg !350
  br label %_cont210, !dbg !350

_cont210:                                         ; preds = %_cont208
  %s211 = phi float [ %2004, %_cont208 ]
  %2005 = call float @llvm.cos.f32(float %phi514), !dbg !308
  br label %_cont212, !dbg !308

_cont212:                                         ; preds = %_cont210
  %2006 = phi float [ %2005, %_cont210 ]
  %2007 = call float @llvm.sin.f32(float %phi514), !dbg !309
  br label %_cont213, !dbg !309

_cont213:                                         ; preds = %_cont212
  %2008 = phi float [ %2007, %_cont212 ]
  %2009 = fmul float %1756, %1745, !dbg !233
  %2010 = fcmp ole float 0.000000e+00, %1747, !dbg !238
  %2011 = fmul float %1756, %c209, !dbg !199
  %2012 = fmul float %1747, %c209, !dbg !199
  %2013 = fmul float 0x3FD45F3060000000, %c209, !dbg !340
  %x523 = fmul float %s211, %2006, !dbg !311
  %y524 = fmul float %s211, %2008, !dbg !313
  %2014 = fmul float %1745, %1745, !dbg !310
  %2015 = fcmp olt float 0.000000e+00, %2013, !dbg !329
  %2016 = fmul float %1745, %c209, !dbg !199
  %2017 = fsub float -0.000000e+00, %1745, !dbg !312
  %2018 = select i1 %2010, float 1.000000e+00, float -1.000000e+00, !dbg !314
  %2019 = fadd float %2018, %1747, !dbg !317
  %2020 = fmul float %2017, %y524, !dbg !201
  %2021 = fmul float %2018, %1756, !dbg !315
  %2022 = fsub float -0.000000e+00, %2018, !dbg !316
  %a525 = fdiv float -1.000000e+00, %2019, !dbg !318
  %2023 = fmul float %2021, %1756, !dbg !315
  %2024 = fmul float %2022, %1756, !dbg !316
  %b526 = fmul float %2009, %a525, !dbg !233
  %2025 = fmul float %2023, %a525, !dbg !315
  %2026 = fmul float %2014, %a525, !dbg !310
  %2027 = fmul float %2024, %x523, !dbg !200
  %2028 = fmul float %b526, %y524, !dbg !201
  %2029 = fmul float %2018, %b526, !dbg !320
  %2030 = fadd float 1.000000e+00, %2025, !dbg !319
  %2031 = fadd float %2018, %2026, !dbg !321
  %2032 = fadd float %2027, %2020, !dbg !200
  %2033 = fmul float %2029, %x523, !dbg !200
  %2034 = fmul float %2030, %x523, !dbg !200
  %2035 = fmul float %2031, %y524, !dbg !201
  %2036 = fadd float %2032, %2012, !dbg !200
  %2037 = fadd float %2033, %2035, !dbg !200
  %2038 = fadd float %2034, %2028, !dbg !200
  %2039 = fadd float %2037, %2016, !dbg !200
  %2040 = fadd float %2038, %2011, !dbg !200
  br i1 %2015, label %expr_true215, label %expr_false214, !dbg !330

expr_false214:                                    ; preds = %_cont213
  br label %jump_true217, !dbg !159

expr_true215:                                     ; preds = %_cont213
  %2041 = fmul float %2036, %1753, !dbg !199
  %2042 = fmul float %2039, %1749, !dbg !201
  %2043 = fmul float %2040, %1750, !dbg !200
  %2044 = fadd float %2043, %2042, !dbg !200
  %2045 = fadd float %2044, %2041, !dbg !200
  %2046 = fcmp olt float 0.000000e+00, %2045, !dbg !331
  br i1 %2046, label %expr_true218, label %expr_false216, !dbg !332

expr_false216:                                    ; preds = %expr_true215
  br label %jump_true217, !dbg !159

jump_true217:                                     ; preds = %expr_false216, %expr_false214
  br label %infix_result219, !dbg !159

expr_true218:                                     ; preds = %expr_true215
  br label %infix_result219, !dbg !159

infix_result219:                                  ; preds = %expr_true218, %jump_true217
  %valid220 = phi i1 [ true, %expr_true218 ], [ false, %jump_true217 ]
  br i1 %valid220, label %expr_true222, label %expr_false221, !dbg !333

expr_false221:                                    ; preds = %infix_result219
  br label %if_join223, !dbg !334

expr_true222:                                     ; preds = %infix_result219
  br label %if_join223, !dbg !334

if_join223:                                       ; preds = %expr_true222, %expr_false221
  %if_join224 = phi float [ %2013, %expr_true222 ], [ 1.000000e+00, %expr_false221 ]
  br i1 %valid220, label %expr_true226, label %expr_false225, !dbg !129

expr_false225:                                    ; preds = %if_join223
  br label %if_join227, !dbg !335

expr_true226:                                     ; preds = %if_join223
  br label %if_join227, !dbg !335

if_join227:                                       ; preds = %expr_true226, %expr_false225
  %if_join228 = phi %5 [ { float 0.000000e+00, float 0x3FD45F3060000000, float 0.000000e+00 }, %expr_true226 ], [ zeroinitializer, %expr_false225 ]
  %2047 = fmul float %2039, %1786, !dbg !201
  %2048 = fmul float %2040, %1785, !dbg !200
  %2049 = fmul float %2036, %1784, !dbg !199
  %2050 = fadd float %2048, %2047, !dbg !200
  %2051 = fadd float %2050, %2049, !dbg !200
  %2052 = fcmp ole float 0.000000e+00, %2051, !dbg !322
  br i1 %2052, label %expr_true230, label %expr_false229, !dbg !323

expr_false229:                                    ; preds = %if_join227
  br label %positive_cos_cont231, !dbg !324

expr_true230:                                     ; preds = %if_join227
  br label %positive_cos_cont231, !dbg !324

positive_cos_cont231:                             ; preds = %expr_true230, %expr_false229
  %cos232 = phi float [ %2051, %expr_true230 ], [ 0.000000e+00, %expr_false229 ]
  br i1 %2052, label %expr_true234, label %expr_false233, !dbg !323

expr_false233:                                    ; preds = %positive_cos_cont231
  br label %positive_cos_cont235, !dbg !324

expr_true234:                                     ; preds = %positive_cos_cont231
  br label %positive_cos_cont235, !dbg !324

positive_cos_cont235:                             ; preds = %expr_true234, %expr_false233
  %cos236 = phi float [ %2051, %expr_true234 ], [ 0.000000e+00, %expr_false233 ]
  %2053 = insertvalue %2 undef, float %2040, 0, !dbg !209
  %2054 = insertvalue %2 %2053, float %2039, 1, !dbg !209
  %2055 = insertvalue %2 %2054, float %2036, 2, !dbg !209
  %2056 = extractvalue %5 %if_join228, 0, !dbg !353
  %2057 = bitcast float %cos236 to i32, !dbg !279
  %2058 = extractvalue %5 %if_join228, 1, !dbg !351
  %2059 = uitofp i32 %2057 to float, !dbg !280
  %2060 = fmul float %1863, %if_join224, !dbg !250
  %2061 = bitcast float %cos232 to i32, !dbg !279
  %2062 = extractvalue %5 %if_join228, 2, !dbg !352
  %2063 = fmul float %1863, %2056, !dbg !342
  %2064 = and i32 8388607, %2057, !dbg !281
  %2065 = fmul float %1863, %2058, !dbg !337
  %2066 = insertvalue %6 undef, %2 %2055, 0, !dbg !343
  %2067 = insertvalue %6 %2066, float %if_join224, 1, !dbg !343
  %2068 = insertvalue %6 %2067, float %c209, 2, !dbg !343
  %2069 = insertvalue %6 %2068, %5 %if_join228, 3, !dbg !343
  %mx527 = or i32 1056964608, %2064, !dbg !283
  %y528 = fmul float 0x3E80000000000000, %2059, !dbg !282
  %2070 = bitcast i32 %mx527 to float, !dbg !285
  %2071 = uitofp i32 %2061 to float, !dbg !280
  %2072 = and i32 8388607, %2061, !dbg !281
  %2073 = fmul float %1863, %2062, !dbg !314
  %2074 = fsub float %y528, 0x405F0E6EE0000000, !dbg !284
  %2075 = fmul float 0x3FF7F7EEA0000000, %2070, !dbg !286
  %2076 = fadd float 0x3FD6889F20000000, %2070, !dbg !287
  %y529 = fmul float 0x3E80000000000000, %2071, !dbg !282
  %mx530 = or i32 1056964608, %2072, !dbg !283
  %2077 = fsub float %2074, %2075, !dbg !284
  %2078 = fdiv float 0x3FFB9D3460000000, %2076, !dbg !288
  %2079 = fsub float %y529, 0x405F0E6EE0000000, !dbg !284
  %2080 = bitcast i32 %mx530 to float, !dbg !285
  %2081 = fsub float %2077, %2078, !dbg !284
  %2082 = fmul float 0x3FF7F7EEA0000000, %2080, !dbg !286
  %2083 = fadd float 0x3FD6889F20000000, %2080, !dbg !287
  %2084 = fmul float 1.200000e+01, %2081, !dbg !289
  %2085 = fsub float %2079, %2082, !dbg !284
  %2086 = fdiv float 0x3FFB9D3460000000, %2083, !dbg !288
  %2087 = fcmp olt float %2084, -1.260000e+02, !dbg !290
  %2088 = fcmp olt float %2084, 0.000000e+00, !dbg !291
  %2089 = fsub float %2085, %2086, !dbg !284
  %2090 = select i1 %2087, float -1.260000e+02, float %2084, !dbg !292
  %2091 = select i1 %2088, float 1.000000e+00, float 0.000000e+00, !dbg !293
  %2092 = fmul float 1.200000e+01, %2089, !dbg !289
  %2093 = fadd float 0x405E518A20000000, %2090, !dbg !294
  %2094 = fptosi float %2090 to i32, !dbg !295
  %2095 = fcmp olt float %2092, -1.260000e+02, !dbg !290
  %2096 = fcmp olt float %2092, 0.000000e+00, !dbg !291
  %2097 = sitofp i32 %2094 to float, !dbg !296
  %2098 = select i1 %2095, float -1.260000e+02, float %2092, !dbg !292
  %2099 = select i1 %2096, float 1.000000e+00, float 0.000000e+00, !dbg !293
  %2100 = fsub float %2090, %2097, !dbg !297
  %2101 = fadd float 0x405E518A20000000, %2098, !dbg !294
  %2102 = fptosi float %2098 to i32, !dbg !295
  %z531 = fadd float %2100, %2091, !dbg !297
  %2103 = sitofp i32 %2102 to float, !dbg !296
  %2104 = fmul float 0x3FF7D791A0000000, %z531, !dbg !298
  %2105 = fsub float 0x40135EBF00000000, %z531, !dbg !299
  %2106 = fsub float %2098, %2103, !dbg !297
  %2107 = fdiv float 0x403BBA5FC0000000, %2105, !dbg !300
  %z532 = fadd float %2106, %2099, !dbg !297
  %2108 = fadd float %2093, %2107, !dbg !294
  %2109 = fmul float 0x3FF7D791A0000000, %z532, !dbg !298
  %2110 = fsub float 0x40135EBF00000000, %z532, !dbg !299
  %2111 = fsub float %2108, %2104, !dbg !294
  %2112 = fdiv float 0x403BBA5FC0000000, %2110, !dbg !300
  %2113 = fmul float 0x4160000000000000, %2111, !dbg !301
  %2114 = fadd float %2101, %2112, !dbg !294
  %2115 = fptosi float %2113 to i32, !dbg !302
  %2116 = fsub float %2114, %2109, !dbg !294
  %2117 = bitcast i32 %2115 to float, !dbg !303
  %2118 = fmul float 0x4160000000000000, %2116, !dbg !301
  %2119 = fmul float 1.400000e+01, %2117, !dbg !354
  %2120 = fptosi float %2118 to i32, !dbg !302
  %2121 = fmul float 0x3FC45F3060000000, %2119, !dbg !354
  %2122 = bitcast i32 %2120 to float, !dbg !303
  %2123 = fmul float %1840, %2121, !dbg !253
  %2124 = fmul float %1845, %2121, !dbg !255
  %2125 = fmul float %1846, %2121, !dbg !257
  %2126 = fmul float 1.300000e+01, %2122, !dbg !355
  %2127 = fmul float %1860, %2123, !dbg !345
  %2128 = fmul float %1860, %2124, !dbg !344
  %2129 = fmul float %1860, %2125, !dbg !346
  %2130 = fmul float 0x3FC45F3060000000, %2126, !dbg !355
  %2131 = fadd float %2063, %2127, !dbg !342
  %2132 = fadd float %2065, %2128, !dbg !337
  %2133 = fadd float %2073, %2129, !dbg !314
  %2134 = fmul float %1860, %2130, !dbg !247
  %2135 = insertvalue %5 undef, float %2131, 0, !dbg !183
  %2136 = insertvalue %5 %2135, float %2132, 1, !dbg !183
  %2137 = insertvalue %5 %2136, float %2133, 2, !dbg !183
  %2138 = fadd float %2060, %2134, !dbg !250
  br label %if_join237, !dbg !347

if_join237:                                       ; preds = %positive_cos_cont235, %positive_cos_cont205
  %if_join238 = phi %6 [ %2069, %positive_cos_cont235 ], [ %1996, %positive_cos_cont205 ]
  %if_join239 = phi float [ %2138, %positive_cos_cont235 ], [ %1989, %positive_cos_cont205 ]
  %if_join240 = phi %5 [ %2137, %positive_cos_cont235 ], [ %2001, %positive_cos_cont205 ]
  %2139 = extractvalue %6 %if_join238, 0, !dbg !356
  %2140 = extractvalue %2 %2139, 0, !dbg !357
  %2141 = fsub float -0.000000e+00, %2140, !dbg !169
  %2142 = load %5, %5* %19, align 4, !dbg !124
  %2143 = fcmp olt float 0.000000e+00, %2140, !dbg !170
  %2144 = select i1 %2143, float %2140, float %2141, !dbg !171
  %2145 = fcmp olt float %2144, 0x3E45798EE0000000, !dbg !171
  br i1 %2145, label %expr_true242, label %expr_false241, !dbg !347

expr_false241:                                    ; preds = %if_join237
  br label %safe_rcp_cont243, !dbg !173

expr_true242:                                     ; preds = %if_join237
  br label %safe_rcp_cont243, !dbg !174

safe_rcp_cont243:                                 ; preds = %expr_true242, %expr_false241
  %2146 = extractvalue %2 %2139, 1, !dbg !358
  %2147 = fcmp olt float 0.000000e+00, %2146, !dbg !170
  %2148 = fsub float -0.000000e+00, %2146, !dbg !169
  %2149 = select i1 %2147, float %2146, float %2148, !dbg !171
  %2150 = fcmp olt float %2149, 0x3E45798EE0000000, !dbg !171
  br i1 %2150, label %expr_true245, label %expr_false244, !dbg !172

expr_false244:                                    ; preds = %safe_rcp_cont243
  br label %safe_rcp_cont246, !dbg !173

expr_true245:                                     ; preds = %safe_rcp_cont243
  br label %safe_rcp_cont246, !dbg !174

safe_rcp_cont246:                                 ; preds = %expr_true245, %expr_false244
  %2151 = extractvalue %2 %2139, 2, !dbg !359
  %2152 = fcmp olt float 0.000000e+00, %2151, !dbg !170
  %2153 = fsub float -0.000000e+00, %2151, !dbg !169
  %2154 = select i1 %2152, float %2151, float %2153, !dbg !171
  %2155 = fcmp olt float %2154, 0x3E45798EE0000000, !dbg !171
  br i1 %2155, label %expr_true248, label %expr_false247, !dbg !172

expr_false247:                                    ; preds = %safe_rcp_cont246
  br label %safe_rcp_cont249, !dbg !173

expr_true248:                                     ; preds = %safe_rcp_cont246
  br label %safe_rcp_cont249, !dbg !174

safe_rcp_cont249:                                 ; preds = %expr_true248, %expr_false247
  %2156 = getelementptr inbounds [0 x float], [0 x float]* %46, i64 0, i32 %lower17, !dbg !144
  %2157 = getelementptr inbounds [0 x float], [0 x float]* %57, i64 0, i32 %lower17, !dbg !155
  %2158 = getelementptr inbounds [0 x i32], [0 x i32]* %55, i64 0, i32 %lower17, !dbg !153
  %2159 = extractvalue %5 %if_join240, 0, !dbg !360
  %2160 = getelementptr inbounds [0 x float], [0 x float]* %56, i64 0, i32 %lower17, !dbg !154
  %2161 = extractvalue %6 %if_join238, 2, !dbg !365
  %2162 = getelementptr inbounds [0 x float], [0 x float]* %53, i64 0, i32 %lower17, !dbg !151
  %2163 = extractvalue %5 %if_join240, 1, !dbg !362
  %2164 = fdiv float %2161, %if_join239, !dbg !370
  %2165 = extractvalue %5 %2142, 2, !dbg !367
  %2166 = getelementptr inbounds [0 x float], [0 x float]* %49, i64 0, i32 %lower17, !dbg !147
  %2167 = extractvalue %5 %if_join240, 2, !dbg !361
  %2168 = load i32, i32* %18, align 4, !dbg !366
  %2169 = extractvalue %5 %2142, 1, !dbg !368
  %2170 = fdiv float 1.000000e+00, %if_join239, !dbg !363
  %2171 = getelementptr inbounds [0 x float], [0 x float]* %51, i64 0, i32 %lower17, !dbg !149
  %2172 = getelementptr inbounds [0 x float], [0 x float]* %59, i64 0, i32 %lower17, !dbg !157
  %2173 = getelementptr inbounds [0 x float], [0 x float]* %48, i64 0, i32 %lower17, !dbg !146
  %2174 = fmul float %1584, %1612, !dbg !212
  %2175 = getelementptr inbounds [0 x float], [0 x float]* %47, i64 0, i32 %lower17, !dbg !145
  %2176 = extractvalue %5 %2142, 0, !dbg !369
  %2177 = getelementptr inbounds [0 x float], [0 x float]* %58, i64 0, i32 %lower17, !dbg !156
  %2178 = fmul float %1587, %1612, !dbg !212
  %2179 = getelementptr inbounds [0 x float], [0 x float]* %50, i64 0, i32 %lower17, !dbg !148
  %2180 = add nsw i32 1, %lower17, !dbg !167
  %2181 = getelementptr inbounds [0 x i32], [0 x i32]* %60, i64 0, i32 %lower17, !dbg !158
  %2182 = getelementptr inbounds [0 x float], [0 x float]* %52, i64 0, i32 %lower17, !dbg !150
  %2183 = fmul float %2176, %2159, !dbg !369
  %2184 = fadd float %1579, %2174, !dbg !364
  %2185 = fmul float %2169, %2163, !dbg !368
  %2186 = fmul float %2185, %2164, !dbg !255
  %2187 = fmul float %2183, %2164, !dbg !253
  %2188 = fmul float %2165, %2167, !dbg !367
  %2189 = fmul float %1590, %1612, !dbg !212
  %2190 = fadd float %1582, %2178, !dbg !364
  %2191 = fmul float %2188, %2164, !dbg !257
  %2192 = load i32, i32* %20, align 4, !dbg !125
  %2193 = fadd float %1583, %2189, !dbg !364
  %2194 = add nsw i32 1, %2192, !dbg !125
  store float %2184, float* %2162, align 4, !dbg !151
  store float %2190, float* %2182, align 4, !dbg !150
  store float %2193, float* %2171, align 4, !dbg !149
  store float %2140, float* %2173, align 4, !dbg !146
  store float %2146, float* %2166, align 4, !dbg !147
  store float %2151, float* %2156, align 4, !dbg !144
  store float 0x3F1A36E2E0000000, float* %2175, align 4, !dbg !145
  store float 0x47EFFFFFE0000000, float* %2179, align 4, !dbg !148
  store i32 %2168, i32* %2181, align 4, !dbg !158
  store float %2187, float* %2172, align 4, !dbg !157
  store float %2186, float* %2177, align 4, !dbg !156
  store float %2191, float* %2160, align 4, !dbg !154
  store float %2170, float* %2157, align 4, !dbg !155
  store i32 %2194, i32* %2158, align 4, !dbg !153
  br label %unroll_step16, !dbg !168

expr_true250:                                     ; preds = %unroll_step13
  %2195 = extractvalue %1 %14, 4, !dbg !543
  %2196 = extractvalue %1 %14, 1, !dbg !546
  %2197 = extractvalue %1 %14, 2, !dbg !547
  %2198 = extractvalue %1 %14, 3, !dbg !548
  %2199 = extractvalue %1 %14, 5, !dbg !549
  %2200 = extractvalue %1 %14, 6, !dbg !550
  %2201 = getelementptr inbounds [0 x float], [0 x float]* %2196, i64 0, i32 %lower14, !dbg !380
  %vec_cast.i589 = bitcast float* %2201 to <8 x float>*, !dbg !380
  %cont_load.i590 = load <8 x float>, <8 x float>* %vec_cast.i589, align 4, !dbg !380
  %2202 = getelementptr inbounds [0 x float], [0 x float]* %2197, i64 0, i32 %lower14, !dbg !380
  %vec_cast1.i591 = bitcast float* %2202 to <8 x float>*, !dbg !380
  %cont_load2.i592 = load <8 x float>, <8 x float>* %vec_cast1.i591, align 4, !dbg !380
  %2203 = getelementptr inbounds [0 x float], [0 x float]* %2198, i64 0, i32 %lower14, !dbg !380
  %vec_cast3.i593 = bitcast float* %2203 to <8 x float>*, !dbg !380
  %cont_load4.i594 = load <8 x float>, <8 x float>* %vec_cast3.i593, align 4, !dbg !380
  %2204 = getelementptr inbounds [0 x float], [0 x float]* %2195, i64 0, i32 %lower14, !dbg !380
  %vec_cast5.i595 = bitcast float* %2204 to <8 x float>*, !dbg !380
  %cont_load6.i596 = load <8 x float>, <8 x float>* %vec_cast5.i595, align 4, !dbg !380
  %2205 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %cont_load6.i596, !dbg !551
  %2206 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> zeroinitializer, <8 x float> %cont_load6.i596, i8 1), !dbg !380
  %2207 = bitcast <8 x float> %2206 to <8 x i32>, !dbg !380
  %2208 = getelementptr inbounds [0 x float], [0 x float]* %2199, i64 0, i32 %lower14, !dbg !380
  %vec_cast7.i597 = bitcast float* %2208 to <8 x float>*, !dbg !380
  %cont_load8.i598 = load <8 x float>, <8 x float>* %vec_cast7.i597, align 4, !dbg !380
  %2209 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %2205, <8 x float> %cont_load6.i596, <8 x float> %2206), !dbg !380
  %2210 = getelementptr inbounds [0 x float], [0 x float]* %2200, i64 0, i32 %lower14, !dbg !380
  %vec_cast9.i599 = bitcast float* %2210 to <8 x float>*, !dbg !380
  %cont_load10.i600 = load <8 x float>, <8 x float>* %vec_cast9.i599, align 4, !dbg !380
  %2211 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> zeroinitializer, <8 x float> %cont_load8.i598, i8 1), !dbg !551
  %2212 = bitcast <8 x float> %2211 to <8 x i32>, !dbg !551
  %2213 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %cont_load8.i598, !dbg !551
  %2214 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %2213, <8 x float> %cont_load8.i598, <8 x float> %2211), !dbg !552
  %2215 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> zeroinitializer, <8 x float> %cont_load10.i600, i8 1), !dbg !551
  %2216 = bitcast <8 x float> %2215 to <8 x i32>, !dbg !551
  %2217 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %cont_load10.i600, !dbg !551
  %2218 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %2217, <8 x float> %cont_load10.i600, <8 x float> %2215), !dbg !553
  %2219 = extractvalue %0 %33, 2, !dbg !553
  %2220 = extractvalue %0 %33, 3, !dbg !554
  %2221 = extractvalue %0 %38, 7, !dbg !555
  %2222 = extractvalue %0 %38, 6, !dbg !556
  %2223 = extractvalue %0 %38, 10, !dbg !557
  %2224 = extractvalue %0 %33, 4, !dbg !558
  %2225 = extractvalue %0 %33, 5, !dbg !559
  %2226 = extractvalue %0 %38, 11, !dbg !560
  %2227 = extractvalue %0 %38, 9, !dbg !561
  %2228 = getelementptr inbounds [0 x i32], [0 x i32]* %2219, i64 0, i32 %lower14, !dbg !380
  %vec_cast11.i601 = bitcast i32* %2228 to <8 x i32>*, !dbg !380
  %cont_load12.i602 = load <8 x i32>, <8 x i32>* %vec_cast11.i601, align 4, !dbg !380
  %2229 = extractvalue %0 %38, 8, !dbg !562
  %2230 = getelementptr inbounds [0 x float], [0 x float]* %2220, i64 0, i32 %lower14, !dbg !380
  %vec_cast13.i603 = bitcast float* %2230 to <8 x float>*, !dbg !380
  %cont_load14.i604 = load <8 x float>, <8 x float>* %vec_cast13.i603, align 4, !dbg !380
  %2231 = mul nsw <8 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, %cont_load12.i602, !dbg !563
  %2232 = add nsw <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>, %2231, !dbg !564
  %2233 = add nsw <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, %2231, !dbg !565
  %2234 = getelementptr inbounds [0 x float], [0 x float]* %2224, i64 0, i32 %lower14, !dbg !380
  %vec_cast15.i605 = bitcast float* %2234 to <8 x float>*, !dbg !380
  %cont_load16.i606 = load <8 x float>, <8 x float>* %vec_cast15.i605, align 4, !dbg !380
  %2235 = fsub <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %cont_load16.i606, !dbg !566
  %2236 = getelementptr inbounds [0 x float], [0 x float]* %2225, i64 0, i32 %lower14, !dbg !380
  %vec_cast17.i607 = bitcast float* %2236 to <8 x float>*, !dbg !380
  %cont_load18.i608 = load <8 x float>, <8 x float>* %vec_cast17.i607, align 4, !dbg !380
  %2237 = fsub <8 x float> %2235, %cont_load18.i608, !dbg !566
  %2238 = getelementptr inbounds [0 x i32], [0 x i32]* %2222, i64 0, i32 %lower14, !dbg !380
  %vec_cast19.i609 = bitcast i32* %2238 to <8 x i32>*, !dbg !380
  %cont_load20.i610 = load <8 x i32>, <8 x i32>* %vec_cast19.i609, align 4, !dbg !380
  %2239 = getelementptr inbounds [0 x float], [0 x float]* %2229, i64 0, i32 %lower14, !dbg !380
  %vec_cast21.i611 = bitcast float* %2239 to <8 x float>*, !dbg !380
  %cont_load22.i612 = load <8 x float>, <8 x float>* %vec_cast21.i611, align 4, !dbg !380
  %extract70.i613 = extractelement <8 x float> %cont_load22.i612, i32 7, !dbg !380
  %extract68.i614 = extractelement <8 x float> %cont_load22.i612, i32 6, !dbg !380
  %extract66.i615 = extractelement <8 x float> %cont_load22.i612, i32 5, !dbg !380
  %extract64.i616 = extractelement <8 x float> %cont_load22.i612, i32 4, !dbg !380
  %extract62.i617 = extractelement <8 x float> %cont_load22.i612, i32 3, !dbg !380
  %extract60.i618 = extractelement <8 x float> %cont_load22.i612, i32 2, !dbg !380
  %extract58.i619 = extractelement <8 x float> %cont_load22.i612, i32 1, !dbg !380
  %extract.i620 = extractelement <8 x float> %cont_load22.i612, i32 0, !dbg !380
  %2240 = getelementptr inbounds [0 x float], [0 x float]* %2227, i64 0, i32 %lower14, !dbg !380
  %vec_cast23.i621 = bitcast float* %2240 to <8 x float>*, !dbg !380
  %cont_load24.i622 = load <8 x float>, <8 x float>* %vec_cast23.i621, align 4, !dbg !380
  %extract85.i623 = extractelement <8 x float> %cont_load24.i622, i32 7, !dbg !380
  %extract83.i624 = extractelement <8 x float> %cont_load24.i622, i32 6, !dbg !380
  %extract81.i625 = extractelement <8 x float> %cont_load24.i622, i32 5, !dbg !380
  %extract79.i626 = extractelement <8 x float> %cont_load24.i622, i32 4, !dbg !380
  %extract77.i627 = extractelement <8 x float> %cont_load24.i622, i32 3, !dbg !380
  %extract75.i628 = extractelement <8 x float> %cont_load24.i622, i32 2, !dbg !380
  %extract73.i629 = extractelement <8 x float> %cont_load24.i622, i32 1, !dbg !380
  %extract72.i630 = extractelement <8 x float> %cont_load24.i622, i32 0, !dbg !380
  %2241 = getelementptr inbounds [0 x float], [0 x float]* %2223, i64 0, i32 %lower14, !dbg !380
  %vec_cast25.i631 = bitcast float* %2241 to <8 x float>*, !dbg !380
  %cont_load26.i632 = load <8 x float>, <8 x float>* %vec_cast25.i631, align 4, !dbg !380
  %extract100.i633 = extractelement <8 x float> %cont_load26.i632, i32 7, !dbg !380
  %extract98.i634 = extractelement <8 x float> %cont_load26.i632, i32 6, !dbg !380
  %extract96.i635 = extractelement <8 x float> %cont_load26.i632, i32 5, !dbg !380
  %extract94.i636 = extractelement <8 x float> %cont_load26.i632, i32 4, !dbg !380
  %extract92.i637 = extractelement <8 x float> %cont_load26.i632, i32 3, !dbg !380
  %extract90.i638 = extractelement <8 x float> %cont_load26.i632, i32 2, !dbg !380
  %extract88.i639 = extractelement <8 x float> %cont_load26.i632, i32 1, !dbg !380
  %extract87.i640 = extractelement <8 x float> %cont_load26.i632, i32 0, !dbg !380
  %2242 = getelementptr inbounds [0 x float], [0 x float]* %2221, i64 0, i32 %lower14, !dbg !380
  %vec_cast27.i641 = bitcast float* %2242 to <8 x float>*, !dbg !380
  %cont_load28.i642 = load <8 x float>, <8 x float>* %vec_cast27.i641, align 4, !dbg !380
  %2243 = getelementptr inbounds [0 x i32], [0 x i32]* %2226, i64 0, i32 %lower14, !dbg !380
  %vec_cast29.i643 = bitcast i32* %2243 to <8 x i32>*, !dbg !380
  %cont_load30.i644 = load <8 x i32>, <8 x i32>* %vec_cast29.i643, align 4, !dbg !380
  %2244 = getelementptr inbounds [0 x i32], [0 x i32]* %indices_1042603, <8 x i64> zeroinitializer, <8 x i32> %2231, !dbg !380
  %2245 = bitcast [0 x i32]* %indices_1042603 to i8*, !dbg !380
  %2246 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %2245, <8 x i32> %2231, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 4), !dbg !380
  %2247 = bitcast <8 x float> %2246 to <8 x i32>, !dbg !380
  %2248 = getelementptr inbounds [0 x i32], [0 x i32]* %indices_1042603, <8 x i64> zeroinitializer, <8 x i32> %2233, !dbg !380
  %2249 = bitcast [0 x i32]* %indices_1042603 to i8*, !dbg !380
  %2250 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %2249, <8 x i32> %2233, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 4), !dbg !380
  %2251 = bitcast <8 x float> %2250 to <8 x i32>, !dbg !380
  %2252 = getelementptr inbounds [0 x i32], [0 x i32]* %indices_1042603, <8 x i64> zeroinitializer, <8 x i32> %2232, !dbg !380
  %2253 = bitcast [0 x i32]* %indices_1042603 to i8*, !dbg !380
  %2254 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %2253, <8 x i32> %2232, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 4), !dbg !380
  %2255 = bitcast <8 x float> %2254 to <8 x i32>, !dbg !380
  %2256 = getelementptr inbounds [0 x %2], [0 x %2]* %face_normals_1042601, <8 x i64> zeroinitializer, <8 x i32> %cont_load12.i602, !dbg !380
  %srov_gep128.i = getelementptr %2, <8 x %2*> %2256, i32 0, i32 0, !dbg !380
  %2257 = bitcast [0 x %2]* %face_normals_1042601 to i8*, !dbg !380
  %2258 = mul <8 x i32> %cont_load12.i602, <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>, !dbg !380
  %2259 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %2257, <8 x i32> %2258, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %srov_gep129.i = getelementptr %2, <8 x %2*> %2256, i32 0, i32 1, !dbg !380
  %2260 = bitcast [0 x %2]* %face_normals_1042601 to i8*, !dbg !380
  %2261 = mul <8 x i32> %cont_load12.i602, <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>, !dbg !380
  %2262 = add <8 x i32> %2261, <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, !dbg !380
  %2263 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %2260, <8 x i32> %2262, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %srov_gep130.i = getelementptr %2, <8 x %2*> %2256, i32 0, i32 2, !dbg !380
  %2264 = bitcast [0 x %2]* %face_normals_1042601 to i8*, !dbg !380
  %2265 = mul <8 x i32> %cont_load12.i602, <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>, !dbg !380
  %2266 = add <8 x i32> %2265, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>, !dbg !380
  %2267 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %2264, <8 x i32> %2266, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %2268 = getelementptr inbounds [0 x %2], [0 x %2]* %normals_1042600, <8 x i64> zeroinitializer, <8 x i32> %2247, !dbg !380
  %srov_gep.i645 = getelementptr %2, <8 x %2*> %2268, i32 0, i32 0, !dbg !380
  %2269 = bitcast [0 x %2]* %normals_1042600 to i8*, !dbg !380
  %2270 = mul <8 x i32> %2247, <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>, !dbg !380
  %2271 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %2269, <8 x i32> %2270, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %srov_gep120.i = getelementptr %2, <8 x %2*> %2268, i32 0, i32 1, !dbg !380
  %2272 = bitcast [0 x %2]* %normals_1042600 to i8*, !dbg !380
  %2273 = mul <8 x i32> %2247, <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>, !dbg !380
  %2274 = add <8 x i32> %2273, <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, !dbg !380
  %2275 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %2272, <8 x i32> %2274, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %srov_gep121.i = getelementptr %2, <8 x %2*> %2268, i32 0, i32 2, !dbg !380
  %2276 = bitcast [0 x %2]* %normals_1042600 to i8*, !dbg !380
  %2277 = mul <8 x i32> %2247, <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>, !dbg !380
  %2278 = add <8 x i32> %2277, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>, !dbg !380
  %2279 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %2276, <8 x i32> %2278, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %2280 = getelementptr inbounds [0 x %2], [0 x %2]* %normals_1042600, <8 x i64> zeroinitializer, <8 x i32> %2251, !dbg !380
  %srov_gep122.i = getelementptr %2, <8 x %2*> %2280, i32 0, i32 0, !dbg !380
  %2281 = bitcast [0 x %2]* %normals_1042600 to i8*, !dbg !380
  %2282 = mul <8 x i32> %2251, <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>, !dbg !380
  %2283 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %2281, <8 x i32> %2282, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %srov_gep123.i = getelementptr %2, <8 x %2*> %2280, i32 0, i32 1, !dbg !380
  %2284 = bitcast [0 x %2]* %normals_1042600 to i8*, !dbg !380
  %2285 = mul <8 x i32> %2251, <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>, !dbg !380
  %2286 = add <8 x i32> %2285, <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, !dbg !380
  %2287 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %2284, <8 x i32> %2286, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %srov_gep124.i = getelementptr %2, <8 x %2*> %2280, i32 0, i32 2, !dbg !380
  %2288 = bitcast [0 x %2]* %normals_1042600 to i8*, !dbg !380
  %2289 = mul <8 x i32> %2251, <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>, !dbg !380
  %2290 = add <8 x i32> %2289, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>, !dbg !380
  %2291 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %2288, <8 x i32> %2290, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %2292 = fmul <8 x float> %2237, %2279, !dbg !567
  %2293 = fmul <8 x float> %2237, %2271, !dbg !567
  %2294 = fmul <8 x float> %2237, %2275, !dbg !567
  %2295 = getelementptr inbounds [0 x %2], [0 x %2]* %normals_1042600, <8 x i64> zeroinitializer, <8 x i32> %2255, !dbg !380
  %srov_gep125.i = getelementptr %2, <8 x %2*> %2295, i32 0, i32 0, !dbg !380
  %2296 = bitcast [0 x %2]* %normals_1042600 to i8*, !dbg !380
  %2297 = mul <8 x i32> %2255, <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>, !dbg !380
  %2298 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %2296, <8 x i32> %2297, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %srov_gep126.i = getelementptr %2, <8 x %2*> %2295, i32 0, i32 1, !dbg !380
  %2299 = bitcast [0 x %2]* %normals_1042600 to i8*, !dbg !380
  %2300 = mul <8 x i32> %2255, <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>, !dbg !380
  %2301 = add <8 x i32> %2300, <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, !dbg !380
  %2302 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %2299, <8 x i32> %2301, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %srov_gep127.i = getelementptr %2, <8 x %2*> %2295, i32 0, i32 2, !dbg !380
  %2303 = bitcast [0 x %2]* %normals_1042600 to i8*, !dbg !380
  %2304 = mul <8 x i32> %2255, <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>, !dbg !380
  %2305 = add <8 x i32> %2304, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>, !dbg !380
  %2306 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %2303, <8 x i32> %2305, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %2307 = fmul <8 x float> %cont_load16.i606, %2291, !dbg !568
  %2308 = fmul <8 x float> %cont_load16.i606, %2283, !dbg !568
  %2309 = fmul <8 x float> %cont_load16.i606, %2287, !dbg !568
  %2310 = fadd <8 x float> %2292, %2307, !dbg !567
  %2311 = fadd <8 x float> %2293, %2308, !dbg !567
  %2312 = fadd <8 x float> %2294, %2309, !dbg !567
  %2313 = fmul <8 x float> %cont_load18.i608, %2306, !dbg !569
  %2314 = fmul <8 x float> %cont_load18.i608, %2298, !dbg !569
  %2315 = fmul <8 x float> %cont_load18.i608, %2302, !dbg !569
  %2316 = fadd <8 x float> %2310, %2313, !dbg !567
  %2317 = fadd <8 x float> %2311, %2314, !dbg !567
  %2318 = fadd <8 x float> %2312, %2315, !dbg !567
  %2319 = fmul <8 x float> %2316, %2316, !dbg !570
  %2320 = fmul <8 x float> %2317, %2317, !dbg !571
  %2321 = fmul <8 x float> %2318, %2318, !dbg !572
  %2322 = fadd <8 x float> %2320, %2321, !dbg !571
  %2323 = fadd <8 x float> %2322, %2319, !dbg !571
  %.mapped.i646 = call <8 x float> @llvm.sqrt.v8f32(<8 x float> %2323), !dbg !380
  %2324 = fmul <8 x float> %cont_load6.i596, %2259, !dbg !571
  %2325 = fmul <8 x float> %cont_load10.i600, %2267, !dbg !570
  %2326 = fmul <8 x float> %cont_load8.i598, %2263, !dbg !572
  %2327 = fadd <8 x float> %2324, %2326, !dbg !571
  %2328 = fadd <8 x float> %2327, %2325, !dbg !571
  %2329 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> %2328, <8 x float> zeroinitializer, i8 2), !dbg !573
  %2330 = bitcast <8 x float> %2329 to <8 x i32>, !dbg !573
  %2331 = xor <8 x i32> %2330, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1>, !dbg !380
  %.splatinsert39.i647 = insertelement <8 x i32> undef, i32 %width_1042605, i32 0, !dbg !380
  %.splat40.i648 = shufflevector <8 x i32> %.splatinsert39.i647, <8 x i32> undef, <8 x i32> zeroinitializer, !dbg !380
  %2332 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %2263, !dbg !574
  %2333 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %2267, !dbg !574
  %2334 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %2259, !dbg !574
  %2335 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %2334, <8 x float> %2259, <8 x float> %2329), !dbg !380
  %2336 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %2332, <8 x float> %2263, <8 x float> %2329), !dbg !380
  %2337 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %2333, <8 x float> %2267, <8 x float> %2329), !dbg !380
  %2338 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %.mapped.i646, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>), !dbg !575
  %2339 = fdiv <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2338, !dbg !575
  %2340 = fmul <8 x float> %2317, %2339, !dbg !576
  %2341 = fmul <8 x float> %cont_load6.i596, %2340, !dbg !571
  %2342 = fmul <8 x float> %2318, %2339, !dbg !576
  %2343 = fmul <8 x float> %2316, %2339, !dbg !576
  %2344 = fmul <8 x float> %cont_load8.i598, %2342, !dbg !572
  %2345 = fmul <8 x float> %cont_load10.i600, %2343, !dbg !570
  %2346 = fadd <8 x float> %2341, %2344, !dbg !571
  %2347 = fadd <8 x float> %2346, %2345, !dbg !571
  %2348 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> %2347, <8 x float> zeroinitializer, i8 2), !dbg !577
  %2349 = bitcast <8 x float> %2348 to <8 x i32>, !dbg !577
  %2350 = xor <8 x i32> %2349, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1>, !dbg !577
  %2351 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %2342, !dbg !574
  %2352 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %2343, !dbg !574
  %2353 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %2340, !dbg !574
  %2354 = bitcast <8 x i32> %2350 to <8 x float>, !dbg !380
  %2355 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %2340, <8 x float> %2353, <8 x float> %2354), !dbg !380
  %2356 = bitcast <8 x i32> %2350 to <8 x float>, !dbg !380
  %2357 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %2342, <8 x float> %2351, <8 x float> %2356), !dbg !380
  %2358 = bitcast <8 x i32> %2350 to <8 x float>, !dbg !380
  %2359 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %2343, <8 x float> %2352, <8 x float> %2358), !dbg !380
  %2360 = getelementptr inbounds [0 x %3], [0 x %3]* %texcoords_1042602, <8 x i64> zeroinitializer, <8 x i32> %2247, !dbg !380
  %srov_gep131.i = getelementptr %3, <8 x %3*> %2360, i32 0, i32 0, !dbg !380
  %2361 = bitcast [0 x %3]* %texcoords_1042602 to i8*, !dbg !380
  %2362 = mul <8 x i32> %2247, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>, !dbg !380
  %2363 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %2361, <8 x i32> %2362, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %srov_gep132.i = getelementptr %3, <8 x %3*> %2360, i32 0, i32 1, !dbg !380
  %2364 = bitcast [0 x %3]* %texcoords_1042602 to i8*, !dbg !380
  %2365 = mul <8 x i32> %2247, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>, !dbg !380
  %2366 = add <8 x i32> %2365, <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, !dbg !380
  %2367 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %2364, <8 x i32> %2366, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %2368 = getelementptr inbounds [0 x %3], [0 x %3]* %texcoords_1042602, <8 x i64> zeroinitializer, <8 x i32> %2251, !dbg !380
  %srov_gep133.i = getelementptr %3, <8 x %3*> %2368, i32 0, i32 0, !dbg !380
  %2369 = bitcast [0 x %3]* %texcoords_1042602 to i8*, !dbg !380
  %2370 = mul <8 x i32> %2251, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>, !dbg !380
  %2371 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %2369, <8 x i32> %2370, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %srov_gep134.i = getelementptr %3, <8 x %3*> %2368, i32 0, i32 1, !dbg !380
  %2372 = bitcast [0 x %3]* %texcoords_1042602 to i8*, !dbg !567
  %2373 = mul <8 x i32> %2251, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>, !dbg !567
  %2374 = add <8 x i32> %2373, <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, !dbg !567
  %2375 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %2372, <8 x i32> %2374, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !567
  %2376 = fmul <8 x float> %2237, %2363, !dbg !567
  %2377 = getelementptr inbounds [0 x %3], [0 x %3]* %texcoords_1042602, <8 x i64> zeroinitializer, <8 x i32> %2255, !dbg !380
  %srov_gep135.i = getelementptr %3, <8 x %3*> %2377, i32 0, i32 0, !dbg !380
  %2378 = bitcast [0 x %3]* %texcoords_1042602 to i8*, !dbg !380
  %2379 = mul <8 x i32> %2255, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>, !dbg !380
  %2380 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %2378, <8 x i32> %2379, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %srov_gep136.i = getelementptr %3, <8 x %3*> %2377, i32 0, i32 1, !dbg !380
  %2381 = bitcast [0 x %3]* %texcoords_1042602 to i8*, !dbg !568
  %2382 = mul <8 x i32> %2255, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>, !dbg !568
  %2383 = add <8 x i32> %2382, <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, !dbg !568
  %2384 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %2381, <8 x i32> %2383, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !568
  %2385 = fmul <8 x float> %cont_load16.i606, %2371, !dbg !568
  %2386 = fadd <8 x float> %2376, %2385, !dbg !567
  %2387 = fmul <8 x float> %cont_load18.i608, %2380, !dbg !569
  %2388 = fadd <8 x float> %2386, %2387, !dbg !567
  %.mapped31.i649 = call <8 x float> @xfloorf_avx2(<8 x float> %2388), !dbg !380
  %2389 = fmul <8 x float> %cont_load18.i608, %2384, !dbg !569
  %2390 = fmul <8 x float> %2237, %2367, !dbg !567
  %2391 = fmul <8 x float> %cont_load16.i606, %2375, !dbg !568
  %2392 = fadd <8 x float> %2390, %2391, !dbg !567
  %2393 = fadd <8 x float> %2392, %2389, !dbg !567
  %.mapped32.i650 = call <8 x float> @xfloorf_avx2(<8 x float> %2393), !dbg !380
  %2394 = fsub <8 x float> %2388, %.mapped31.i649, !dbg !578
  %2395 = sitofp i32 %width_1042605 to float, !dbg !579
  %2396 = sub nsw i32 %width_1042605, 1, !dbg !580
  %.splatinsert.i651 = insertelement <8 x float> undef, float %2395, i32 0, !dbg !380
  %.splat.i652 = shufflevector <8 x float> %.splatinsert.i651, <8 x float> undef, <8 x i32> zeroinitializer, !dbg !380
  %u_SIMD.i653 = fmul <8 x float> %2394, %.splat.i652, !dbg !581
  %2397 = fptosi <8 x float> %u_SIMD.i653 to <8 x i32>, !dbg !582
  %.splatinsert33.i654 = insertelement <8 x i32> undef, i32 %2396, i32 0, !dbg !380
  %.splat34.i655 = shufflevector <8 x i32> %.splatinsert33.i654, <8 x i32> undef, <8 x i32> zeroinitializer, !dbg !380
  %2398 = icmp slt <8 x i32> %2397, %.splat34.i655, !dbg !583
  %2399 = sext <8 x i1> %2398 to <8 x i32>, !dbg !583
  %2400 = icmp slt <8 x i32> %2397, %.splat34.i655, !dbg !584
  %2401 = select <8 x i1> %2400, <8 x i32> %2397, <8 x i32> %.splat34.i655, !dbg !584
  %2402 = sitofp i32 %height_1042606 to float, !dbg !584
  %2403 = fsub <8 x float> %2393, %.mapped32.i650, !dbg !578
  %2404 = sub nsw i32 %height_1042606, 1, !dbg !585
  %.splatinsert35.i656 = insertelement <8 x float> undef, float %2402, i32 0, !dbg !380
  %.splat36.i657 = shufflevector <8 x float> %.splatinsert35.i656, <8 x float> undef, <8 x i32> zeroinitializer, !dbg !380
  %v_SIMD.i658 = fmul <8 x float> %2403, %.splat36.i657, !dbg !586
  %2405 = fptosi <8 x float> %v_SIMD.i658 to <8 x i32>, !dbg !587
  %.splatinsert37.i659 = insertelement <8 x i32> undef, i32 %2404, i32 0, !dbg !380
  %.splat38.i660 = shufflevector <8 x i32> %.splatinsert37.i659, <8 x i32> undef, <8 x i32> zeroinitializer, !dbg !380
  %2406 = icmp slt <8 x i32> %2405, %.splat38.i660, !dbg !588
  %2407 = sext <8 x i1> %2406 to <8 x i32>, !dbg !588
  %2408 = icmp slt <8 x i32> %2405, %.splat38.i660, !dbg !589
  %2409 = select <8 x i1> %2408, <8 x i32> %2405, <8 x i32> %.splat38.i660, !dbg !589
  %2410 = add nsw <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, %2401, !dbg !589
  %2411 = icmp slt <8 x i32> %2410, %.splat34.i655, !dbg !583
  %2412 = sext <8 x i1> %2411 to <8 x i32>, !dbg !583
  %2413 = icmp slt <8 x i32> %2410, %.splat34.i655, !dbg !590
  %2414 = select <8 x i1> %2413, <8 x i32> %2410, <8 x i32> %.splat34.i655, !dbg !590
  %2415 = add nsw <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, %2409, !dbg !590
  %2416 = icmp slt <8 x i32> %2415, %.splat38.i660, !dbg !588
  %2417 = sext <8 x i1> %2416 to <8 x i32>, !dbg !588
  %2418 = icmp slt <8 x i32> %2415, %.splat38.i660, !dbg !591
  %2419 = select <8 x i1> %2418, <8 x i32> %2415, <8 x i32> %.splat38.i660, !dbg !591
  %2420 = mul nsw <8 x i32> %2419, %.splat40.i648, !dbg !591
  %2421 = mul nsw <8 x i32> %2409, %.splat40.i648, !dbg !591
  %2422 = add nsw <8 x i32> %2420, %2401, !dbg !591
  %2423 = sitofp <8 x i32> %2397 to <8 x float>, !dbg !549
  %2424 = sitofp <8 x i32> %2405 to <8 x float>, !dbg !550
  %2425 = add nsw <8 x i32> %2420, %2414, !dbg !591
  %2426 = add nsw <8 x i32> %2421, %2414, !dbg !591
  %2427 = add nsw <8 x i32> %2421, %2401, !dbg !591
  %2428 = fmul <8 x float> %2357, %2213, !dbg !572
  %2429 = fmul <8 x float> %2355, %2205, !dbg !571
  %2430 = fmul <8 x float> %2359, %2217, !dbg !570
  %kx_SIMD.i661 = fsub <8 x float> %u_SIMD.i653, %2423, !dbg !592
  %ky_SIMD.i662 = fsub <8 x float> %v_SIMD.i658, %2424, !dbg !593
  %2431 = fadd <8 x float> %2429, %2428, !dbg !571
  %2432 = fadd <8 x float> %2431, %2430, !dbg !571
  %2433 = fsub <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %kx_SIMD.i661, !dbg !594
  %2434 = fsub <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %ky_SIMD.i662, !dbg !594
  %2435 = getelementptr inbounds [0 x i32], [0 x i32]* %pixels_1042604, <8 x i64> zeroinitializer, <8 x i32> %2427, !dbg !380
  %2436 = bitcast [0 x i32]* %pixels_1042604 to i8*, !dbg !595
  %2437 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %2436, <8 x i32> %2427, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 4), !dbg !595
  %2438 = bitcast <8 x float> %2437 to <8 x i32>, !dbg !595
  %2439 = fmul <8 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, %2432, !dbg !595
  %2440 = fmul <8 x float> %2359, %2439, !dbg !576
  %2441 = fmul <8 x float> %2355, %2439, !dbg !576
  %2442 = fmul <8 x float> %2357, %2439, !dbg !576
  %r_SIMD.i663 = and <8 x i32> <i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255>, %2438, !dbg !596
  %2443 = lshr <8 x i32> %2438, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>, !dbg !597
  %2444 = lshr <8 x i32> %2438, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>, !dbg !598
  %2445 = getelementptr inbounds [0 x i32], [0 x i32]* %pixels_1042604, <8 x i64> zeroinitializer, <8 x i32> %2426, !dbg !380
  %2446 = bitcast [0 x i32]* %pixels_1042604 to i8*, !dbg !599
  %2447 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %2446, <8 x i32> %2426, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 4), !dbg !599
  %2448 = bitcast <8 x float> %2447 to <8 x i32>, !dbg !599
  %2449 = fsub <8 x float> %2440, %2217, !dbg !599
  %2450 = fsub <8 x float> %2441, %2205, !dbg !599
  %2451 = fsub <8 x float> %2442, %2213, !dbg !599
  %2452 = uitofp <8 x i32> %r_SIMD.i663 to <8 x float>, !dbg !600
  %g_SIMD.i664 = and <8 x i32> <i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255>, %2443, !dbg !601
  %b_SIMD.i665 = and <8 x i32> <i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255>, %2444, !dbg !602
  %2453 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %2452, !dbg !603
  %2454 = uitofp <8 x i32> %g_SIMD.i664 to <8 x float>, !dbg !604
  %2455 = uitofp <8 x i32> %b_SIMD.i665 to <8 x float>, !dbg !605
  %2456 = getelementptr inbounds [0 x i32], [0 x i32]* %pixels_1042604, <8 x i64> zeroinitializer, <8 x i32> %2422, !dbg !380
  %2457 = bitcast [0 x i32]* %pixels_1042604 to i8*, !dbg !596
  %2458 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %2457, <8 x i32> %2422, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 4), !dbg !596
  %2459 = bitcast <8 x float> %2458 to <8 x i32>, !dbg !596
  %r92_SIMD.i = and <8 x i32> <i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255>, %2448, !dbg !596
  %2460 = lshr <8 x i32> %2448, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>, !dbg !597
  %2461 = lshr <8 x i32> %2448, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>, !dbg !598
  %2462 = fmul <8 x float> %2433, %2453, !dbg !606
  %2463 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %2454, !dbg !607
  %2464 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %2455, !dbg !608
  %2465 = uitofp <8 x i32> %r92_SIMD.i to <8 x float>, !dbg !600
  %g93_SIMD.i = and <8 x i32> <i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255>, %2460, !dbg !601
  %b94_SIMD.i = and <8 x i32> <i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255>, %2461, !dbg !602
  %2466 = fmul <8 x float> %2433, %2463, !dbg !606
  %2467 = fmul <8 x float> %2433, %2464, !dbg !606
  %2468 = getelementptr inbounds [0 x i32], [0 x i32]* %pixels_1042604, <8 x i64> zeroinitializer, <8 x i32> %2425, !dbg !380
  %2469 = bitcast [0 x i32]* %pixels_1042604 to i8*, !dbg !596
  %2470 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %2469, <8 x i32> %2425, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 4), !dbg !596
  %2471 = bitcast <8 x float> %2470 to <8 x i32>, !dbg !596
  %r95_SIMD.i = and <8 x i32> <i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255>, %2459, !dbg !596
  %2472 = lshr <8 x i32> %2459, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>, !dbg !597
  %2473 = lshr <8 x i32> %2459, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>, !dbg !598
  %2474 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %2465, !dbg !603
  %2475 = uitofp <8 x i32> %g93_SIMD.i to <8 x float>, !dbg !604
  %2476 = uitofp <8 x i32> %b94_SIMD.i to <8 x float>, !dbg !605
  %2477 = uitofp <8 x i32> %r95_SIMD.i to <8 x float>, !dbg !600
  %g96_SIMD.i = and <8 x i32> <i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255>, %2472, !dbg !601
  %b97_SIMD.i = and <8 x i32> <i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255>, %2473, !dbg !602
  %2478 = fmul <8 x float> %kx_SIMD.i661, %2474, !dbg !609
  %2479 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %2475, !dbg !607
  %2480 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %2476, !dbg !608
  %r98_SIMD.i = and <8 x i32> <i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255>, %2471, !dbg !596
  %2481 = lshr <8 x i32> %2471, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>, !dbg !597
  %2482 = lshr <8 x i32> %2471, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>, !dbg !598
  %2483 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %2477, !dbg !603
  %2484 = uitofp <8 x i32> %g96_SIMD.i to <8 x float>, !dbg !604
  %2485 = uitofp <8 x i32> %b97_SIMD.i to <8 x float>, !dbg !605
  %2486 = fadd <8 x float> %2462, %2478, !dbg !606
  %2487 = fmul <8 x float> %kx_SIMD.i661, %2479, !dbg !609
  %2488 = fmul <8 x float> %kx_SIMD.i661, %2480, !dbg !609
  %2489 = uitofp <8 x i32> %r98_SIMD.i to <8 x float>, !dbg !600
  %g99_SIMD.i = and <8 x i32> <i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255>, %2481, !dbg !601
  %b100_SIMD.i = and <8 x i32> <i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255>, %2482, !dbg !602
  %2490 = fmul <8 x float> %2433, %2483, !dbg !606
  %2491 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %2484, !dbg !607
  %2492 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %2485, !dbg !608
  %2493 = fmul <8 x float> %2434, %2486, !dbg !606
  %2494 = fadd <8 x float> %2466, %2487, !dbg !606
  %2495 = fadd <8 x float> %2467, %2488, !dbg !606
  %2496 = icmp eq <8 x i32> %cont_load20.i610, zeroinitializer, !dbg !603
  %2497 = sext <8 x i1> %2496 to <8 x i32>, !dbg !603
  %2498 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %2489, !dbg !603
  %2499 = uitofp <8 x i32> %g99_SIMD.i to <8 x float>, !dbg !604
  %2500 = uitofp <8 x i32> %b100_SIMD.i to <8 x float>, !dbg !605
  %2501 = fmul <8 x float> %2433, %2491, !dbg !606
  %2502 = fmul <8 x float> %2433, %2492, !dbg !606
  %2503 = fmul <8 x float> %2434, %2494, !dbg !606
  %2504 = fmul <8 x float> %2434, %2495, !dbg !606
  %2505 = bitcast <8 x i32> %cont_load20.i610 to <8 x float>, !dbg !609
  %2506 = bitcast <8 x i32> %2497 to <8 x float>, !dbg !609
  %2507 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %2505, <8 x float> <float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000>, <8 x float> %2506), !dbg !609
  %2508 = bitcast <8 x float> %2507 to <8 x i32>, !dbg !609
  %2509 = fmul <8 x float> %kx_SIMD.i661, %2498, !dbg !609
  %2510 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %2499, !dbg !607
  %2511 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %2500, !dbg !608
  %2512 = shl <8 x i32> %2508, <i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13>, !dbg !610
  %2513 = fadd <8 x float> %2490, %2509, !dbg !606
  %2514 = fmul <8 x float> %kx_SIMD.i661, %2510, !dbg !609
  %2515 = fmul <8 x float> %kx_SIMD.i661, %2511, !dbg !609
  %2516 = xor <8 x i32> %2508, %2512, !dbg !611
  %2517 = fmul <8 x float> %ky_SIMD.i662, %2513, !dbg !609
  %2518 = fadd <8 x float> %2501, %2514, !dbg !606
  %2519 = fadd <8 x float> %2502, %2515, !dbg !606
  %2520 = lshr <8 x i32> %2516, <i32 17, i32 17, i32 17, i32 17, i32 17, i32 17, i32 17, i32 17>, !dbg !612
  %2521 = fadd <8 x float> %2493, %2517, !dbg !606
  %2522 = fmul <8 x float> %ky_SIMD.i662, %2518, !dbg !609
  %2523 = fmul <8 x float> %ky_SIMD.i662, %2519, !dbg !609
  %2524 = xor <8 x i32> %2516, %2520, !dbg !613
  %2525 = fmul <8 x float> <float 0x3FCB367A00000000, float 0x3FCB367A00000000, float 0x3FCB367A00000000, float 0x3FCB367A00000000, float 0x3FCB367A00000000, float 0x3FCB367A00000000, float 0x3FCB367A00000000, float 0x3FCB367A00000000>, %2521, !dbg !614
  %2526 = fadd <8 x float> %2503, %2522, !dbg !606
  %2527 = fadd <8 x float> %2504, %2523, !dbg !606
  %2528 = shl <8 x i32> %2524, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>, !dbg !615
  %2529 = fmul <8 x float> <float 0x3FE6E2EB20000000, float 0x3FE6E2EB20000000, float 0x3FE6E2EB20000000, float 0x3FE6E2EB20000000, float 0x3FE6E2EB20000000, float 0x3FE6E2EB20000000, float 0x3FE6E2EB20000000, float 0x3FE6E2EB20000000>, %2526, !dbg !616
  %2530 = fmul <8 x float> <float 0x3FB27BB300000000, float 0x3FB27BB300000000, float 0x3FB27BB300000000, float 0x3FB27BB300000000, float 0x3FB27BB300000000, float 0x3FB27BB300000000, float 0x3FB27BB300000000, float 0x3FB27BB300000000>, %2527, !dbg !617
  %2531 = xor <8 x i32> %2524, %2528, !dbg !618
  %2532 = fadd <8 x float> %2525, %2529, !dbg !614
  %2533 = fadd <8 x float> %2532, %2530, !dbg !614
  %2534 = icmp eq <8 x i32> %2531, zeroinitializer, !dbg !619
  %2535 = sext <8 x i1> %2534 to <8 x i32>, !dbg !619
  %2536 = fadd <8 x float> <float 0x3FE6E2EB20000000, float 0x3FE6E2EB20000000, float 0x3FE6E2EB20000000, float 0x3FE6E2EB20000000, float 0x3FE6E2EB20000000, float 0x3FE6E2EB20000000, float 0x3FE6E2EB20000000, float 0x3FE6E2EB20000000>, %2533, !dbg !619
  %2537 = bitcast <8 x i32> %2531 to <8 x float>, !dbg !620
  %2538 = bitcast <8 x i32> %2535 to <8 x float>, !dbg !620
  %2539 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %2537, <8 x float> <float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000>, <8 x float> %2538), !dbg !620
  %2540 = bitcast <8 x float> %2539 to <8 x i32>, !dbg !620
  %2541 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> %2536, <8 x float> zeroinitializer, i8 0), !dbg !380
  %2542 = bitcast <8 x float> %2541 to <8 x i32>, !dbg !380
  %2543 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %2536, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>), !dbg !621
  %2544 = fdiv <8 x float> %2533, %2543, !dbg !621
  %2545 = and <8 x i32> <i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607>, %2531, !dbg !622
  %2546 = shl <8 x i32> %2540, <i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13>, !dbg !610
  %2547 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %2544, <8 x float> zeroinitializer, <8 x float> %2541), !dbg !623
  %2548 = or <8 x i32> <i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216>, %2545, !dbg !623
  %2549 = xor <8 x i32> %2540, %2546, !dbg !611
  %2550 = fsub <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2547, !dbg !624
  %2551 = lshr <8 x i32> %2549, <i32 17, i32 17, i32 17, i32 17, i32 17, i32 17, i32 17, i32 17>, !dbg !612
  %2552 = bitcast <8 x i32> %2548 to <8 x float>, !dbg !380
  %2553 = fsub <8 x float> %2552, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, !dbg !625
  %2554 = xor <8 x i32> %2549, %2551, !dbg !613
  %2555 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> %2547, <8 x float> %2553, i8 2), !dbg !615
  %2556 = bitcast <8 x float> %2555 to <8 x i32>, !dbg !615
  %2557 = shl <8 x i32> %2554, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>, !dbg !615
  %2558 = xor <8 x i32> %2554, %2557, !dbg !618
  %2559 = icmp eq <8 x i32> %2558, zeroinitializer, !dbg !626
  %2560 = sext <8 x i1> %2559 to <8 x i32>, !dbg !626
  %2561 = bitcast <8 x i32> %2558 to <8 x float>, !dbg !610
  %2562 = bitcast <8 x i32> %2560 to <8 x float>, !dbg !610
  %2563 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %2561, <8 x float> <float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000>, <8 x float> %2562), !dbg !610
  %2564 = bitcast <8 x float> %2563 to <8 x i32>, !dbg !610
  %2565 = shl <8 x i32> %2564, <i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13>, !dbg !610
  %2566 = xor <8 x i32> %2564, %2565, !dbg !611
  %2567 = and <8 x i32> <i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607>, %2558, !dbg !622
  %2568 = lshr <8 x i32> %2566, <i32 17, i32 17, i32 17, i32 17, i32 17, i32 17, i32 17, i32 17>, !dbg !612
  %2569 = or <8 x i32> <i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216>, %2567, !dbg !623
  %2570 = xor <8 x i32> %2566, %2568, !dbg !613
  %2571 = shl <8 x i32> %2570, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>, !dbg !615
  %2572 = bitcast <8 x i32> %2569 to <8 x float>, !dbg !380
  %2573 = fsub <8 x float> %2572, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, !dbg !625
  %2574 = xor <8 x i32> %2570, %2571, !dbg !618
  %phi_SIMD.i666 = fmul <8 x float> <float 0x401921FB60000000, float 0x401921FB60000000, float 0x401921FB60000000, float 0x401921FB60000000, float 0x401921FB60000000, float 0x401921FB60000000, float 0x401921FB60000000, float 0x401921FB60000000>, %2573, !dbg !627
  %2575 = and <8 x i32> <i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607>, %2574, !dbg !622
  %2576 = or <8 x i32> <i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216>, %2575, !dbg !623
  %2577 = bitcast <8 x i32> %2576 to <8 x float>, !dbg !380
  %2578 = fsub <8 x float> %2577, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, !dbg !625
  %2579 = xor <8 x i32> %2556, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1>, !dbg !628
  %2580 = bitcast <8 x float> %2578 to <8 x i32>, !dbg !380
  %2581 = and <8 x i32> <i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607>, %2580, !dbg !629
  %2582 = uitofp <8 x i32> %2580 to <8 x float>, !dbg !630
  %mx_SIMD.i667 = or <8 x i32> <i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608>, %2581, !dbg !631
  %y_SIMD.i668 = fmul <8 x float> <float 0x3E80000000000000, float 0x3E80000000000000, float 0x3E80000000000000, float 0x3E80000000000000, float 0x3E80000000000000, float 0x3E80000000000000, float 0x3E80000000000000, float 0x3E80000000000000>, %2582, !dbg !632
  %2583 = fsub <8 x float> %y_SIMD.i668, <float 0x405F0E6EE0000000, float 0x405F0E6EE0000000, float 0x405F0E6EE0000000, float 0x405F0E6EE0000000, float 0x405F0E6EE0000000, float 0x405F0E6EE0000000, float 0x405F0E6EE0000000, float 0x405F0E6EE0000000>, !dbg !633
  %2584 = bitcast <8 x i32> %mx_SIMD.i667 to <8 x float>, !dbg !380
  %2585 = fmul <8 x float> <float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000>, %2584, !dbg !634
  %2586 = fadd <8 x float> <float 0x3FD6889F20000000, float 0x3FD6889F20000000, float 0x3FD6889F20000000, float 0x3FD6889F20000000, float 0x3FD6889F20000000, float 0x3FD6889F20000000, float 0x3FD6889F20000000, float 0x3FD6889F20000000>, %2584, !dbg !635
  %2587 = fsub <8 x float> %2583, %2585, !dbg !633
  %2588 = bitcast <8 x i32> %2579 to <8 x float>, !dbg !636
  %2589 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %2586, <8 x float> %2588), !dbg !636
  %2590 = fdiv <8 x float> <float 0x3FFB9D3460000000, float 0x3FFB9D3460000000, float 0x3FFB9D3460000000, float 0x3FFB9D3460000000, float 0x3FFB9D3460000000, float 0x3FFB9D3460000000, float 0x3FFB9D3460000000, float 0x3FFB9D3460000000>, %2589, !dbg !636
  %2591 = fsub <8 x float> %2587, %2590, !dbg !633
  %2592 = fmul <8 x float> <float 0x3FB3B13B20000000, float 0x3FB3B13B20000000, float 0x3FB3B13B20000000, float 0x3FB3B13B20000000, float 0x3FB3B13B20000000, float 0x3FB3B13B20000000, float 0x3FB3B13B20000000, float 0x3FB3B13B20000000>, %2591, !dbg !637
  %2593 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> %2592, <8 x float> <float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02>, i8 1), !dbg !638
  %2594 = bitcast <8 x float> %2593 to <8 x i32>, !dbg !638
  %2595 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> %2592, <8 x float> zeroinitializer, i8 1), !dbg !639
  %2596 = bitcast <8 x float> %2595 to <8 x i32>, !dbg !639
  %2597 = fcmp fast olt <8 x float> %2592, <float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02>, !dbg !640
  %2598 = select <8 x i1> %2597, <8 x float> <float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02>, <8 x float> %2592, !dbg !640
  %2599 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> zeroinitializer, <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %2595), !dbg !641
  %2600 = fadd <8 x float> <float 0x405E518A20000000, float 0x405E518A20000000, float 0x405E518A20000000, float 0x405E518A20000000, float 0x405E518A20000000, float 0x405E518A20000000, float 0x405E518A20000000, float 0x405E518A20000000>, %2598, !dbg !641
  %2601 = fptosi <8 x float> %2598 to <8 x i32>, !dbg !642
  %2602 = sitofp <8 x i32> %2601 to <8 x float>, !dbg !643
  %2603 = fsub <8 x float> %2598, %2602, !dbg !644
  %z_SIMD.i669 = fadd <8 x float> %2603, %2599, !dbg !644
  %2604 = fmul <8 x float> <float 0x3FF7D791A0000000, float 0x3FF7D791A0000000, float 0x3FF7D791A0000000, float 0x3FF7D791A0000000, float 0x3FF7D791A0000000, float 0x3FF7D791A0000000, float 0x3FF7D791A0000000, float 0x3FF7D791A0000000>, %z_SIMD.i669, !dbg !645
  %2605 = fsub <8 x float> <float 0x40135EBF00000000, float 0x40135EBF00000000, float 0x40135EBF00000000, float 0x40135EBF00000000, float 0x40135EBF00000000, float 0x40135EBF00000000, float 0x40135EBF00000000, float 0x40135EBF00000000>, %z_SIMD.i669, !dbg !646
  %2606 = bitcast <8 x i32> %2579 to <8 x float>, !dbg !647
  %2607 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %2605, <8 x float> %2606), !dbg !647
  %2608 = fdiv <8 x float> <float 0x403BBA5FC0000000, float 0x403BBA5FC0000000, float 0x403BBA5FC0000000, float 0x403BBA5FC0000000, float 0x403BBA5FC0000000, float 0x403BBA5FC0000000, float 0x403BBA5FC0000000, float 0x403BBA5FC0000000>, %2607, !dbg !647
  %2609 = fadd <8 x float> %2600, %2608, !dbg !641
  %2610 = fsub <8 x float> %2609, %2604, !dbg !641
  %2611 = fmul <8 x float> <float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000>, %2610, !dbg !648
  %2612 = fptosi <8 x float> %2611 to <8 x i32>, !dbg !649
  %2613 = bitcast <8 x i32> %2612 to <8 x float>, !dbg !380
  %.mapped44.i670 = call <8 x float> @xfminf_avx2(<8 x float> %2613, <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>), !dbg !380
  %2614 = fmul <8 x float> %.mapped44.i670, %.mapped44.i670, !dbg !650
  %2615 = fsub <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2614, !dbg !651
  %.mapped45.i671 = call <8 x float> @llvm.sqrt.v8f32(<8 x float> %2615), !dbg !380
  %.mapped46.i672 = call <8 x float> @xcosf_u1_avx2(<8 x float> %phi_SIMD.i666), !dbg !380
  %.mapped47.i673 = call <8 x float> @xsinf_u1_avx2(<8 x float> %phi_SIMD.i666), !dbg !380
  %x_SIMD.i674 = fmul <8 x float> %.mapped45.i671, %.mapped46.i672, !dbg !652
  %2616 = fmul <8 x float> %2451, %.mapped44.i670, !dbg !570
  %2617 = fmul <8 x float> %2449, %.mapped44.i670, !dbg !570
  %2618 = fmul <8 x float> %2451, %2451, !dbg !653
  %2619 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> zeroinitializer, <8 x float> %2449, i8 2), !dbg !570
  %2620 = bitcast <8 x float> %2619 to <8 x i32>, !dbg !570
  %2621 = fmul <8 x float> %2450, %.mapped44.i670, !dbg !570
  %2622 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %2451, !dbg !654
  %y101_SIMD.i = fmul <8 x float> %.mapped45.i671, %.mapped47.i673, !dbg !655
  %2623 = fmul <8 x float> %2450, %2451, !dbg !656
  %2624 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00>, <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %2619), !dbg !572
  %2625 = fmul <8 x float> %2622, %y101_SIMD.i, !dbg !572
  %2626 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %2624, !dbg !657
  %2627 = fmul <8 x float> %2624, %2450, !dbg !658
  %2628 = fadd <8 x float> %2624, %2449, !dbg !659
  %2629 = fmul <8 x float> %2626, %2450, !dbg !657
  %2630 = fmul <8 x float> %2627, %2450, !dbg !658
  %2631 = bitcast <8 x i32> %2579 to <8 x float>, !dbg !660
  %2632 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %2628, <8 x float> %2631), !dbg !660
  %a_SIMD.i675 = fdiv <8 x float> <float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00>, %2632, !dbg !660
  %2633 = fmul <8 x float> %2629, %x_SIMD.i674, !dbg !571
  %2634 = fmul <8 x float> %2630, %a_SIMD.i675, !dbg !658
  %b102_SIMD.i = fmul <8 x float> %2623, %a_SIMD.i675, !dbg !656
  %2635 = fmul <8 x float> %2618, %a_SIMD.i675, !dbg !653
  %2636 = fadd <8 x float> %2633, %2625, !dbg !571
  %2637 = fadd <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2634, !dbg !661
  %2638 = fmul <8 x float> %b102_SIMD.i, %y101_SIMD.i, !dbg !572
  %2639 = fmul <8 x float> %2624, %b102_SIMD.i, !dbg !662
  %2640 = fadd <8 x float> %2624, %2635, !dbg !663
  %2641 = fadd <8 x float> %2636, %2617, !dbg !571
  %2642 = fmul <8 x float> %2637, %x_SIMD.i674, !dbg !571
  %2643 = fadd <8 x float> %2642, %2638, !dbg !571
  %2644 = fmul <8 x float> %2639, %x_SIMD.i674, !dbg !571
  %2645 = fmul <8 x float> %2640, %y101_SIMD.i, !dbg !572
  %2646 = fmul <8 x float> %2641, %2359, !dbg !570
  %2647 = fadd <8 x float> %2643, %2621, !dbg !571
  %2648 = fadd <8 x float> %2644, %2645, !dbg !571
  %2649 = fmul <8 x float> %2647, %2355, !dbg !571
  %2650 = fadd <8 x float> %2648, %2616, !dbg !571
  %2651 = fmul <8 x float> %2650, %2357, !dbg !572
  %2652 = fadd <8 x float> %2649, %2651, !dbg !571
  %2653 = fadd <8 x float> %2652, %2646, !dbg !571
  %2654 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> zeroinitializer, <8 x float> %2653, i8 2), !dbg !664
  %2655 = bitcast <8 x float> %2654 to <8 x i32>, !dbg !664
  %2656 = fcmp fast ole <8 x float> zeroinitializer, %2653, !dbg !665
  %2657 = select <8 x i1> %2656, <8 x float> %2653, <8 x float> zeroinitializer, !dbg !665
  %2658 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> %.mapped44.i670, <8 x float> zeroinitializer, i8 20), !dbg !380
  %2659 = bitcast <8 x float> %2658 to <8 x i32>, !dbg !380
  %2660 = bitcast <8 x i32> %2579 to <8 x float>, !dbg !666
  %2661 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %.mapped44.i670, <8 x float> %2660), !dbg !666
  %2662 = fdiv <8 x float> %2578, %2661, !dbg !666
  %2663 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> zeroinitializer, <8 x float> %2662, <8 x float> %2658), !dbg !667
  %2664 = fmul <8 x float> <float 1.300000e+01, float 1.300000e+01, float 1.300000e+01, float 1.300000e+01, float 1.300000e+01, float 1.300000e+01, float 1.300000e+01, float 1.300000e+01>, %2663, !dbg !667
  %pdf_SIMD.i676 = fmul <8 x float> <float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000>, %2664, !dbg !667
  %2665 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> zeroinitializer, <8 x float> %pdf_SIMD.i676, i8 1), !dbg !668
  %2666 = bitcast <8 x float> %2665 to <8 x i32>, !dbg !668
  %2667 = and <8 x i32> %2579, %2666, !dbg !668
  %2668 = xor <8 x i32> %2666, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1>, !dbg !668
  %2669 = and <8 x i32> %2579, %2668, !dbg !380
  %2670 = fmul <8 x float> %2650, %2336, !dbg !572
  %2671 = fmul <8 x float> %2647, %2335, !dbg !571
  %2672 = fmul <8 x float> %2641, %2337, !dbg !570
  %2673 = fadd <8 x float> %2671, %2670, !dbg !571
  %2674 = fadd <8 x float> %2673, %2672, !dbg !571
  %2675 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> zeroinitializer, <8 x float> %2674, i8 1), !dbg !669
  %2676 = bitcast <8 x float> %2675 to <8 x i32>, !dbg !669
  %2677 = and <8 x i32> %2667, %2676, !dbg !669
  %2678 = xor <8 x i32> %2676, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1>, !dbg !669
  %2679 = and <8 x i32> %2667, %2678, !dbg !380
  %2680 = or <8 x i32> %2669, %2679, !dbg !670
  %2681 = or <8 x i32> %2680, %2677, !dbg !670
  %2682 = bitcast <8 x i32> %2677 to <8 x float>, !dbg !543
  %2683 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %pdf_SIMD.i676, <8 x float> %2682), !dbg !543
  %2684 = xor <8 x i32> %2677, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1>, !dbg !543
  %2685 = and <8 x i32> %2681, %2684, !dbg !380
  %2686 = fmul <8 x float> <float 1.400000e+01, float 1.400000e+01, float 1.400000e+01, float 1.400000e+01, float 1.400000e+01, float 1.400000e+01, float 1.400000e+01, float 1.400000e+01>, %pdf_SIMD.i676, !dbg !671
  %2687 = bitcast <8 x i32> %2677 to <8 x float>, !dbg !671
  %2688 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> <float 1.300000e+01, float 1.300000e+01, float 1.300000e+01, float 1.300000e+01, float 1.300000e+01, float 1.300000e+01, float 1.300000e+01, float 1.300000e+01>, <8 x float> %2687), !dbg !671
  %2689 = fdiv <8 x float> %2686, %2688, !dbg !671
  %2690 = fmul <8 x float> %2526, %2689, !dbg !672
  %2691 = fmul <8 x float> %2521, %2689, !dbg !673
  %2692 = fmul <8 x float> %2527, %2689, !dbg !674
  %2693 = bitcast <8 x i32> %2685 to <8 x float>, !dbg !380
  %2694 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %2691, <8 x float> zeroinitializer, <8 x float> %2693), !dbg !380
  %2695 = bitcast <8 x i32> %2685 to <8 x float>, !dbg !380
  %2696 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %2690, <8 x float> zeroinitializer, <8 x float> %2695), !dbg !380
  %2697 = bitcast <8 x i32> %2685 to <8 x float>, !dbg !380
  %2698 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %2692, <8 x float> zeroinitializer, <8 x float> %2697), !dbg !380
  %2699 = fmul <8 x float> zeroinitializer, %2550, !dbg !675
  %2700 = fmul <8 x float> <float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000>, %2657, !dbg !676
  %2701 = fmul <8 x float> <float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000>, %2550, !dbg !677
  %2702 = fmul <8 x float> %2550, %2700, !dbg !606
  %2703 = fmul <8 x float> %2547, %2696, !dbg !678
  %2704 = fmul <8 x float> %2547, %2683, !dbg !609
  %2705 = fmul <8 x float> %2547, %2698, !dbg !679
  %2706 = fadd <8 x float> %2699, %2705, !dbg !680
  %2707 = fadd <8 x float> %2701, %2703, !dbg !677
  %2708 = fmul <8 x float> %2547, %2694, !dbg !681
  %2709 = fadd <8 x float> %2702, %2704, !dbg !606
  %2710 = fadd <8 x float> %2699, %2708, !dbg !675
  %2711 = fsub <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2578, !dbg !682
  %.mapped51.i677 = call <8 x float> @llvm.sqrt.v8f32(<8 x float> %2711), !dbg !380
  %.mapped52.i678 = call <8 x float> @llvm.sqrt.v8f32(<8 x float> %2578), !dbg !380
  %.mapped53.i679 = call <8 x float> @xcosf_u1_avx2(<8 x float> %phi_SIMD.i666), !dbg !380
  %.mapped54.i680 = call <8 x float> @xsinf_u1_avx2(<8 x float> %phi_SIMD.i666), !dbg !380
  %2712 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> zeroinitializer, <8 x float> %2359, i8 2), !dbg !680
  %2713 = bitcast <8 x float> %2712 to <8 x i32>, !dbg !680
  %2714 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00>, <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %2712), !dbg !654
  %2715 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %2357, !dbg !654
  %2716 = fmul <8 x float> <float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000>, %.mapped51.i677, !dbg !676
  %2717 = fmul <8 x float> %2357, %.mapped51.i677, !dbg !570
  %2718 = fmul <8 x float> %2355, %.mapped51.i677, !dbg !570
  %2719 = fmul <8 x float> %2359, %.mapped51.i677, !dbg !570
  %2720 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> zeroinitializer, <8 x float> %2716, i8 1), !dbg !653
  %2721 = bitcast <8 x float> %2720 to <8 x i32>, !dbg !653
  %2722 = fmul <8 x float> %2357, %2357, !dbg !653
  %2723 = fadd <8 x float> %2714, %2359, !dbg !659
  %2724 = fmul <8 x float> %2714, %2355, !dbg !658
  %2725 = fmul <8 x float> %2355, %2357, !dbg !656
  %2726 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %2714, !dbg !657
  %x103_SIMD.i = fmul <8 x float> %.mapped52.i678, %.mapped53.i679, !dbg !652
  %2727 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %2723, <8 x float> %2555), !dbg !660
  %a104_SIMD.i = fdiv <8 x float> <float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00>, %2727, !dbg !660
  %y105_SIMD.i = fmul <8 x float> %.mapped52.i678, %.mapped54.i680, !dbg !655
  %2728 = fmul <8 x float> %2715, %y105_SIMD.i, !dbg !572
  %2729 = fmul <8 x float> %2722, %a104_SIMD.i, !dbg !653
  %2730 = fmul <8 x float> %2724, %2355, !dbg !658
  %b106_SIMD.i = fmul <8 x float> %2725, %a104_SIMD.i, !dbg !656
  %2731 = fmul <8 x float> %2726, %2355, !dbg !657
  %2732 = fmul <8 x float> %2731, %x103_SIMD.i, !dbg !571
  %2733 = fmul <8 x float> %2730, %a104_SIMD.i, !dbg !658
  %2734 = fmul <8 x float> %b106_SIMD.i, %y105_SIMD.i, !dbg !572
  %2735 = fadd <8 x float> %2732, %2728, !dbg !571
  %2736 = fadd <8 x float> %2714, %2729, !dbg !663
  %2737 = fmul <8 x float> %2714, %b106_SIMD.i, !dbg !662
  %2738 = fadd <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2733, !dbg !661
  %2739 = fadd <8 x float> %2735, %2719, !dbg !571
  %2740 = fmul <8 x float> %2736, %y105_SIMD.i, !dbg !572
  %2741 = fmul <8 x float> %2737, %x103_SIMD.i, !dbg !571
  %2742 = fmul <8 x float> %2738, %x103_SIMD.i, !dbg !571
  %2743 = fadd <8 x float> %2741, %2740, !dbg !571
  %2744 = fadd <8 x float> %2742, %2734, !dbg !571
  %2745 = fadd <8 x float> %2743, %2717, !dbg !571
  %2746 = fadd <8 x float> %2744, %2718, !dbg !571
  %2747 = and <8 x i32> %2556, %2721, !dbg !668
  %2748 = xor <8 x i32> %2721, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1>, !dbg !668
  %2749 = and <8 x i32> %2556, %2748, !dbg !380
  %2750 = fmul <8 x float> %2739, %2337, !dbg !570
  %2751 = fmul <8 x float> %2745, %2336, !dbg !572
  %2752 = fmul <8 x float> %2746, %2335, !dbg !571
  %2753 = fadd <8 x float> %2752, %2751, !dbg !571
  %2754 = fadd <8 x float> %2753, %2750, !dbg !571
  %2755 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> zeroinitializer, <8 x float> %2754, i8 1), !dbg !669
  %2756 = bitcast <8 x float> %2755 to <8 x i32>, !dbg !669
  %2757 = and <8 x i32> %2747, %2756, !dbg !669
  %2758 = xor <8 x i32> %2756, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1>, !dbg !669
  %2759 = and <8 x i32> %2747, %2758, !dbg !380
  %2760 = or <8 x i32> %2749, %2759, !dbg !670
  %2761 = or <8 x i32> %2760, %2757, !dbg !670
  %2762 = bitcast <8 x i32> %2757 to <8 x float>, !dbg !543
  %2763 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %2716, <8 x float> %2762), !dbg !543
  %2764 = bitcast <8 x i32> %2757 to <8 x float>, !dbg !570
  %2765 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> zeroinitializer, <8 x float> <float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000>, <8 x float> %2764), !dbg !570
  %2766 = fmul <8 x float> %2739, %2449, !dbg !570
  %2767 = fmul <8 x float> %2746, %2450, !dbg !571
  %2768 = fmul <8 x float> %2745, %2451, !dbg !572
  %2769 = fadd <8 x float> %2767, %2768, !dbg !571
  %2770 = fadd <8 x float> %2769, %2766, !dbg !571
  %2771 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> zeroinitializer, <8 x float> %2770, i8 2), !dbg !683
  %2772 = bitcast <8 x float> %2771 to <8 x i32>, !dbg !683
  %2773 = fcmp fast ole <8 x float> zeroinitializer, %2770, !dbg !606
  %2774 = select <8 x i1> %2773, <8 x float> %2770, <8 x float> zeroinitializer, !dbg !606
  %2775 = fmul <8 x float> %2550, %2763, !dbg !606
  %2776 = bitcast <8 x float> %2774 to <8 x i32>, !dbg !380
  %2777 = uitofp <8 x i32> %2776 to <8 x float>, !dbg !630
  %2778 = fmul <8 x float> %2550, %2765, !dbg !677
  %y107_SIMD.i = fmul <8 x float> <float 0x3E80000000000000, float 0x3E80000000000000, float 0x3E80000000000000, float 0x3E80000000000000, float 0x3E80000000000000, float 0x3E80000000000000, float 0x3E80000000000000, float 0x3E80000000000000>, %2777, !dbg !632
  %2779 = fmul <8 x float> %2550, zeroinitializer, !dbg !680
  %2780 = fsub <8 x float> %y107_SIMD.i, <float 0x405F0E6EE0000000, float 0x405F0E6EE0000000, float 0x405F0E6EE0000000, float 0x405F0E6EE0000000, float 0x405F0E6EE0000000, float 0x405F0E6EE0000000, float 0x405F0E6EE0000000, float 0x405F0E6EE0000000>, !dbg !633
  %2781 = fmul <8 x float> %2550, zeroinitializer, !dbg !675
  %2782 = and <8 x i32> <i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607>, %2776, !dbg !629
  %mx109_SIMD.i = or <8 x i32> <i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608>, %2782, !dbg !631
  %2783 = bitcast <8 x i32> %mx109_SIMD.i to <8 x float>, !dbg !380
  %2784 = fmul <8 x float> <float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000>, %2783, !dbg !634
  %2785 = fadd <8 x float> <float 0x3FD6889F20000000, float 0x3FD6889F20000000, float 0x3FD6889F20000000, float 0x3FD6889F20000000, float 0x3FD6889F20000000, float 0x3FD6889F20000000, float 0x3FD6889F20000000, float 0x3FD6889F20000000>, %2783, !dbg !635
  %2786 = fsub <8 x float> %2780, %2784, !dbg !633
  %2787 = bitcast <8 x i32> %2761 to <8 x float>, !dbg !636
  %2788 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %2785, <8 x float> %2787), !dbg !636
  %2789 = fdiv <8 x float> <float 0x3FFB9D3460000000, float 0x3FFB9D3460000000, float 0x3FFB9D3460000000, float 0x3FFB9D3460000000, float 0x3FFB9D3460000000, float 0x3FFB9D3460000000, float 0x3FFB9D3460000000, float 0x3FFB9D3460000000>, %2788, !dbg !636
  %2790 = fsub <8 x float> %2786, %2789, !dbg !633
  %2791 = fmul <8 x float> <float 1.200000e+01, float 1.200000e+01, float 1.200000e+01, float 1.200000e+01, float 1.200000e+01, float 1.200000e+01, float 1.200000e+01, float 1.200000e+01>, %2790, !dbg !637
  %2792 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> %2791, <8 x float> <float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02>, i8 1), !dbg !638
  %2793 = bitcast <8 x float> %2792 to <8 x i32>, !dbg !638
  %2794 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> %2791, <8 x float> zeroinitializer, i8 1), !dbg !639
  %2795 = bitcast <8 x float> %2794 to <8 x i32>, !dbg !639
  %2796 = fcmp fast olt <8 x float> %2791, <float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02>, !dbg !640
  %2797 = select <8 x i1> %2796, <8 x float> <float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02>, <8 x float> %2791, !dbg !640
  %2798 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> zeroinitializer, <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %2794), !dbg !641
  %2799 = fadd <8 x float> <float 0x405E518A20000000, float 0x405E518A20000000, float 0x405E518A20000000, float 0x405E518A20000000, float 0x405E518A20000000, float 0x405E518A20000000, float 0x405E518A20000000, float 0x405E518A20000000>, %2797, !dbg !641
  %2800 = fptosi <8 x float> %2797 to <8 x i32>, !dbg !642
  %2801 = sitofp <8 x i32> %2800 to <8 x float>, !dbg !643
  %2802 = fsub <8 x float> %2797, %2801, !dbg !644
  %z111_SIMD.i = fadd <8 x float> %2802, %2798, !dbg !644
  %2803 = fmul <8 x float> <float 0x3FF7D791A0000000, float 0x3FF7D791A0000000, float 0x3FF7D791A0000000, float 0x3FF7D791A0000000, float 0x3FF7D791A0000000, float 0x3FF7D791A0000000, float 0x3FF7D791A0000000, float 0x3FF7D791A0000000>, %z111_SIMD.i, !dbg !645
  %2804 = fsub <8 x float> <float 0x40135EBF00000000, float 0x40135EBF00000000, float 0x40135EBF00000000, float 0x40135EBF00000000, float 0x40135EBF00000000, float 0x40135EBF00000000, float 0x40135EBF00000000, float 0x40135EBF00000000>, %z111_SIMD.i, !dbg !646
  %2805 = bitcast <8 x i32> %2761 to <8 x float>, !dbg !647
  %2806 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %2804, <8 x float> %2805), !dbg !647
  %2807 = fdiv <8 x float> <float 0x403BBA5FC0000000, float 0x403BBA5FC0000000, float 0x403BBA5FC0000000, float 0x403BBA5FC0000000, float 0x403BBA5FC0000000, float 0x403BBA5FC0000000, float 0x403BBA5FC0000000, float 0x403BBA5FC0000000>, %2806, !dbg !647
  %2808 = fadd <8 x float> %2799, %2807, !dbg !641
  %2809 = fsub <8 x float> %2808, %2803, !dbg !641
  %2810 = fmul <8 x float> <float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000>, %2809, !dbg !648
  %2811 = fptosi <8 x float> %2810 to <8 x i32>, !dbg !649
  %2812 = bitcast <8 x i32> %2811 to <8 x float>, !dbg !380
  %2813 = fmul <8 x float> <float 1.400000e+01, float 1.400000e+01, float 1.400000e+01, float 1.400000e+01, float 1.400000e+01, float 1.400000e+01, float 1.400000e+01, float 1.400000e+01>, %2812, !dbg !684
  %2814 = fmul <8 x float> <float 1.300000e+01, float 1.300000e+01, float 1.300000e+01, float 1.300000e+01, float 1.300000e+01, float 1.300000e+01, float 1.300000e+01, float 1.300000e+01>, %2812, !dbg !685
  %2815 = fmul <8 x float> <float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000>, %2813, !dbg !684
  %2816 = fmul <8 x float> <float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000>, %2814, !dbg !685
  %2817 = fmul <8 x float> %2521, %2815, !dbg !673
  %2818 = fmul <8 x float> %2526, %2815, !dbg !672
  %2819 = fmul <8 x float> %2527, %2815, !dbg !674
  %2820 = fmul <8 x float> %2547, %2816, !dbg !609
  %2821 = fmul <8 x float> %2547, %2817, !dbg !681
  %2822 = fmul <8 x float> %2547, %2818, !dbg !678
  %2823 = fmul <8 x float> %2547, %2819, !dbg !679
  %2824 = fadd <8 x float> %2775, %2820, !dbg !606
  %2825 = fadd <8 x float> %2781, %2821, !dbg !675
  %2826 = fadd <8 x float> %2778, %2822, !dbg !677
  %2827 = fadd <8 x float> %2779, %2823, !dbg !680
  %2828 = xor <8 x i32> %2681, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1>, !dbg !380
  %2829 = and <8 x i32> %2828, %2761, !dbg !380
  %2830 = bitcast <8 x i32> %2681 to <8 x float>, !dbg !380
  %2831 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %2746, <8 x float> %2647, <8 x float> %2830), !dbg !380
  %2832 = bitcast <8 x i32> %2681 to <8 x float>, !dbg !380
  %2833 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %2745, <8 x float> %2650, <8 x float> %2832), !dbg !380
  %2834 = bitcast <8 x i32> %2681 to <8 x float>, !dbg !380
  %2835 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %2739, <8 x float> %2641, <8 x float> %2834), !dbg !380
  %2836 = bitcast <8 x i32> %2681 to <8 x float>, !dbg !380
  %2837 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %2763, <8 x float> %2683, <8 x float> %2836), !dbg !380
  %2838 = bitcast <8 x i32> %2681 to <8 x float>, !dbg !380
  %2839 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %.mapped51.i677, <8 x float> %2657, <8 x float> %2838), !dbg !380
  %2840 = bitcast <8 x i32> %2681 to <8 x float>, !dbg !380
  %2841 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> zeroinitializer, <8 x float> %2694, <8 x float> %2840), !dbg !380
  %2842 = bitcast <8 x i32> %2681 to <8 x float>, !dbg !380
  %2843 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %2765, <8 x float> %2696, <8 x float> %2842), !dbg !380
  %2844 = bitcast <8 x i32> %2681 to <8 x float>, !dbg !380
  %2845 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> zeroinitializer, <8 x float> %2698, <8 x float> %2844), !dbg !380
  %2846 = bitcast <8 x i32> %2681 to <8 x float>, !dbg !380
  %2847 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %2824, <8 x float> %2709, <8 x float> %2846), !dbg !380
  %2848 = bitcast <8 x i32> %2681 to <8 x float>, !dbg !380
  %2849 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %2825, <8 x float> %2710, <8 x float> %2848), !dbg !380
  %2850 = bitcast <8 x i32> %2681 to <8 x float>, !dbg !380
  %2851 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %2826, <8 x float> %2707, <8 x float> %2850), !dbg !380
  %2852 = bitcast <8 x i32> %2681 to <8 x float>, !dbg !380
  %2853 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %2827, <8 x float> %2706, <8 x float> %2852), !dbg !380
  %2854 = or <8 x i32> %2829, %2681, !dbg !686
  %.fca.0.insert.i681 = insertvalue %5 undef, float %extract.i620, 0, !dbg !686
  %.fca.0.insert59.i682 = insertvalue %5 undef, float %extract58.i619, 0, !dbg !686
  %.fca.0.insert61.i683 = insertvalue %5 undef, float %extract60.i618, 0, !dbg !686
  %.fca.0.insert63.i684 = insertvalue %5 undef, float %extract62.i617, 0, !dbg !686
  %.fca.0.insert65.i685 = insertvalue %5 undef, float %extract64.i616, 0, !dbg !686
  %.fca.0.insert67.i686 = insertvalue %5 undef, float %extract66.i615, 0, !dbg !686
  %.fca.0.insert69.i687 = insertvalue %5 undef, float %extract68.i614, 0, !dbg !686
  %.fca.0.insert71.i688 = insertvalue %5 undef, float %extract70.i613, 0, !dbg !686
  %.fca.1.insert.i689 = insertvalue %5 %.fca.0.insert.i681, float %extract72.i630, 1, !dbg !686
  %.fca.1.insert74.i690 = insertvalue %5 %.fca.0.insert59.i682, float %extract73.i629, 1, !dbg !686
  %.fca.1.insert76.i691 = insertvalue %5 %.fca.0.insert61.i683, float %extract75.i628, 1, !dbg !686
  %.fca.1.insert78.i692 = insertvalue %5 %.fca.0.insert63.i684, float %extract77.i627, 1, !dbg !686
  %.fca.1.insert80.i693 = insertvalue %5 %.fca.0.insert65.i685, float %extract79.i626, 1, !dbg !686
  %.fca.1.insert82.i694 = insertvalue %5 %.fca.0.insert67.i686, float %extract81.i625, 1, !dbg !686
  %.fca.1.insert84.i695 = insertvalue %5 %.fca.0.insert69.i687, float %extract83.i624, 1, !dbg !686
  %.fca.1.insert86.i696 = insertvalue %5 %.fca.0.insert71.i688, float %extract85.i623, 1, !dbg !686
  %.fca.2.insert.i697 = insertvalue %5 %.fca.1.insert.i689, float %extract87.i640, 2, !dbg !686
  %.fca.2.insert89.i698 = insertvalue %5 %.fca.1.insert74.i690, float %extract88.i639, 2, !dbg !686
  %.fca.2.insert91.i699 = insertvalue %5 %.fca.1.insert76.i691, float %extract90.i638, 2, !dbg !686
  %.fca.2.insert93.i700 = insertvalue %5 %.fca.1.insert78.i692, float %extract92.i637, 2, !dbg !686
  %.fca.2.insert95.i701 = insertvalue %5 %.fca.1.insert80.i693, float %extract94.i636, 2, !dbg !686
  %.fca.2.insert97.i702 = insertvalue %5 %.fca.1.insert82.i694, float %extract96.i635, 2, !dbg !686
  %.fca.2.insert99.i703 = insertvalue %5 %.fca.1.insert84.i695, float %extract98.i634, 2, !dbg !686
  %.fca.2.insert101.i704 = insertvalue %5 %.fca.1.insert86.i696, float %extract100.i633, 2, !dbg !686
  %2855 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %2833, !dbg !551
  %2856 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> zeroinitializer, <8 x float> %2833, i8 1), !dbg !687
  %2857 = bitcast <8 x float> %2856 to <8 x i32>, !dbg !687
  %2858 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %2855, <8 x float> %2833, <8 x float> %2856), !dbg !552
  %2859 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> zeroinitializer, <8 x float> %2835, i8 1), !dbg !551
  %2860 = bitcast <8 x float> %2859 to <8 x i32>, !dbg !551
  %2861 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %2835, !dbg !551
  %2862 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %2861, <8 x float> %2835, <8 x float> %2859), !dbg !688
  %2863 = extractvalue %1 %45, 8, !dbg !688
  %2864 = extractvalue %1 %45, 5, !dbg !689
  %2865 = extractvalue %0 %54, 7, !dbg !690
  %2866 = extractvalue %0 %54, 8, !dbg !691
  %2867 = bitcast <8 x i32> %2854 to <8 x float>, !dbg !692
  %2868 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %2847, <8 x float> %2867), !dbg !692
  %2869 = fdiv <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2868, !dbg !692
  %2870 = extractvalue %1 %45, 6, !dbg !693
  %2871 = extractvalue %1 %45, 1, !dbg !694
  %2872 = extractvalue %1 %45, 2, !dbg !695
  %2873 = extractvalue %1 %45, 7, !dbg !696
  %2874 = extractvalue %0 %54, 6, !dbg !697
  %2875 = extractvalue %0 %54, 10, !dbg !698
  %2876 = extractvalue %0 %54, 9, !dbg !699
  %2877 = extractvalue %1 %45, 4, !dbg !700
  %2878 = extractvalue %1 %45, 3, !dbg !701
  %2879 = extractvalue %0 %54, 11, !dbg !702
  %2880 = fmul <8 x float> %cont_load10.i600, %cont_load14.i604, !dbg !576
  %2881 = fmul <8 x float> %cont_load22.i612, %2849, !dbg !703
  %2882 = fmul <8 x float> %cont_load26.i632, %2853, !dbg !704
  %2883 = fmul <8 x float> %cont_load24.i622, %2851, !dbg !705
  %2884 = fadd <8 x float> %cont_load4.i594, %2880, !dbg !706
  %2885 = fmul <8 x float> %cont_load8.i598, %cont_load14.i604, !dbg !576
  %2886 = fmul <8 x float> %cont_load6.i596, %cont_load14.i604, !dbg !576
  %2887 = fadd <8 x float> %cont_load2.i592, %2885, !dbg !706
  %2888 = fadd <8 x float> %cont_load.i590, %2886, !dbg !706
  %2889 = bitcast <8 x i32> %2854 to <8 x float>, !dbg !707
  %2890 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %2847, <8 x float> %2889), !dbg !707
  %2891 = fdiv <8 x float> %2839, %2890, !dbg !707
  %2892 = fmul <8 x float> %2881, %2891, !dbg !673
  %2893 = fmul <8 x float> %2882, %2891, !dbg !674
  %2894 = fmul <8 x float> %2883, %2891, !dbg !672
  %2895 = add nsw <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, %cont_load30.i644, !dbg !708
  %2896 = getelementptr inbounds [0 x float], [0 x float]* %2871, i64 0, i32 %lower14, !dbg !380
  %vec_cast104.i705 = bitcast float* %2896 to <8 x float>*, !dbg !380
  %2897 = icmp ne <8 x i32> %2854, zeroinitializer, !dbg !380
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %2888, <8 x float>* %vec_cast104.i705, i32 4, <8 x i1> %2897), !dbg !380
  %2898 = getelementptr inbounds [0 x float], [0 x float]* %2872, i64 0, i32 %lower14, !dbg !380
  %vec_cast105.i706 = bitcast float* %2898 to <8 x float>*, !dbg !380
  %2899 = icmp ne <8 x i32> %2854, zeroinitializer, !dbg !380
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %2887, <8 x float>* %vec_cast105.i706, i32 4, <8 x i1> %2899), !dbg !380
  %2900 = getelementptr inbounds [0 x float], [0 x float]* %2878, i64 0, i32 %lower14, !dbg !380
  %vec_cast106.i707 = bitcast float* %2900 to <8 x float>*, !dbg !380
  %2901 = icmp ne <8 x i32> %2854, zeroinitializer, !dbg !380
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %2884, <8 x float>* %vec_cast106.i707, i32 4, <8 x i1> %2901), !dbg !380
  %2902 = getelementptr inbounds [0 x float], [0 x float]* %2877, i64 0, i32 %lower14, !dbg !380
  %vec_cast107.i708 = bitcast float* %2902 to <8 x float>*, !dbg !380
  %2903 = icmp ne <8 x i32> %2854, zeroinitializer, !dbg !380
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %2831, <8 x float>* %vec_cast107.i708, i32 4, <8 x i1> %2903), !dbg !380
  %2904 = getelementptr inbounds [0 x float], [0 x float]* %2864, i64 0, i32 %lower14, !dbg !380
  %vec_cast108.i709 = bitcast float* %2904 to <8 x float>*, !dbg !380
  %2905 = icmp ne <8 x i32> %2854, zeroinitializer, !dbg !380
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %2833, <8 x float>* %vec_cast108.i709, i32 4, <8 x i1> %2905), !dbg !380
  %2906 = getelementptr inbounds [0 x float], [0 x float]* %2870, i64 0, i32 %lower14, !dbg !380
  %vec_cast109.i710 = bitcast float* %2906 to <8 x float>*, !dbg !380
  %2907 = icmp ne <8 x i32> %2854, zeroinitializer, !dbg !380
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %2835, <8 x float>* %vec_cast109.i710, i32 4, <8 x i1> %2907), !dbg !380
  %2908 = getelementptr inbounds [0 x float], [0 x float]* %2873, i64 0, i32 %lower14, !dbg !380
  %vec_cast110.i711 = bitcast float* %2908 to <8 x float>*, !dbg !380
  %2909 = icmp ne <8 x i32> %2854, zeroinitializer, !dbg !380
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> <float 0x3F1A36E2E0000000, float 0x3F1A36E2E0000000, float 0x3F1A36E2E0000000, float 0x3F1A36E2E0000000, float 0x3F1A36E2E0000000, float 0x3F1A36E2E0000000, float 0x3F1A36E2E0000000, float 0x3F1A36E2E0000000>, <8 x float>* %vec_cast110.i711, i32 4, <8 x i1> %2909), !dbg !380
  %2910 = getelementptr inbounds [0 x float], [0 x float]* %2863, i64 0, i32 %lower14, !dbg !380
  %vec_cast111.i712 = bitcast float* %2910 to <8 x float>*, !dbg !380
  %2911 = icmp ne <8 x i32> %2854, zeroinitializer, !dbg !380
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> <float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000>, <8 x float>* %vec_cast111.i712, i32 4, <8 x i1> %2911), !dbg !380
  %2912 = getelementptr inbounds [0 x i32], [0 x i32]* %2874, i64 0, i32 %lower14, !dbg !380
  %vec_cast112.i713 = bitcast i32* %2912 to <8 x i32>*, !dbg !380
  %2913 = icmp ne <8 x i32> %2854, zeroinitializer, !dbg !380
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %2574, <8 x i32>* %vec_cast112.i713, i32 4, <8 x i1> %2913), !dbg !380
  %2914 = getelementptr inbounds [0 x float], [0 x float]* %2866, i64 0, i32 %lower14, !dbg !380
  %vec_cast113.i714 = bitcast float* %2914 to <8 x float>*, !dbg !380
  %2915 = icmp ne <8 x i32> %2854, zeroinitializer, !dbg !380
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %2892, <8 x float>* %vec_cast113.i714, i32 4, <8 x i1> %2915), !dbg !380
  %2916 = getelementptr inbounds [0 x float], [0 x float]* %2876, i64 0, i32 %lower14, !dbg !380
  %vec_cast114.i715 = bitcast float* %2916 to <8 x float>*, !dbg !380
  %2917 = icmp ne <8 x i32> %2854, zeroinitializer, !dbg !380
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %2894, <8 x float>* %vec_cast114.i715, i32 4, <8 x i1> %2917), !dbg !380
  %2918 = getelementptr inbounds [0 x float], [0 x float]* %2875, i64 0, i32 %lower14, !dbg !380
  %vec_cast115.i716 = bitcast float* %2918 to <8 x float>*, !dbg !380
  %2919 = icmp ne <8 x i32> %2854, zeroinitializer, !dbg !380
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %2893, <8 x float>* %vec_cast115.i716, i32 4, <8 x i1> %2919), !dbg !380
  %2920 = getelementptr inbounds [0 x float], [0 x float]* %2865, i64 0, i32 %lower14, !dbg !380
  %vec_cast116.i717 = bitcast float* %2920 to <8 x float>*, !dbg !380
  %2921 = icmp ne <8 x i32> %2854, zeroinitializer, !dbg !380
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %2869, <8 x float>* %vec_cast116.i717, i32 4, <8 x i1> %2921), !dbg !380
  %2922 = getelementptr inbounds [0 x i32], [0 x i32]* %2879, i64 0, i32 %lower14, !dbg !380
  %vec_cast117.i718 = bitcast i32* %2922 to <8 x i32>*, !dbg !380
  %2923 = icmp ne <8 x i32> %2854, zeroinitializer, !dbg !709
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %2895, <8 x i32>* %vec_cast117.i718, i32 4, <8 x i1> %2923), !dbg !709
  br label %_cont251, !dbg !380

_cont251:                                         ; preds = %expr_true250
  %2924 = add nsw i32 8, %lower14, !dbg !167
  br label %unroll_step13, !dbg !168

expr_true252:                                     ; preds = %unroll_step10
  %2925 = getelementptr inbounds [0 x float], [0 x float]* %29, i64 0, i32 %lower11, !dbg !128
  %2926 = getelementptr inbounds [0 x float], [0 x float]* %28, i64 0, i32 %lower11, !dbg !127
  %2927 = getelementptr inbounds [0 x float], [0 x float]* %32, i64 0, i32 %lower11, !dbg !131
  %2928 = getelementptr inbounds [0 x float], [0 x float]* %27, i64 0, i32 %lower11, !dbg !126
  %2929 = getelementptr inbounds [0 x float], [0 x float]* %30, i64 0, i32 %lower11, !dbg !129
  %2930 = getelementptr inbounds [0 x float], [0 x float]* %31, i64 0, i32 %lower11, !dbg !130
  %2931 = load float, float* %2930, align 4, !dbg !130
  %2932 = load float, float* %2927, align 4, !dbg !131
  %2933 = load float, float* %2925, align 4, !dbg !128
  %2934 = load float, float* %2929, align 4, !dbg !129
  %2935 = fcmp olt float 0.000000e+00, %2934, !dbg !170
  %2936 = fsub float -0.000000e+00, %2934, !dbg !169
  %2937 = load float, float* %2926, align 4, !dbg !127
  %2938 = select i1 %2935, float %2934, float %2936, !dbg !171
  %2939 = fcmp olt float %2938, 0x3E45798EE0000000, !dbg !171
  %2940 = load float, float* %2928, align 4, !dbg !126
  br i1 %2939, label %expr_true254, label %expr_false253, !dbg !172

expr_false253:                                    ; preds = %expr_true252
  br label %safe_rcp_cont255, !dbg !173

expr_true254:                                     ; preds = %expr_true252
  br label %safe_rcp_cont255, !dbg !174

safe_rcp_cont255:                                 ; preds = %expr_true254, %expr_false253
  %2941 = fcmp olt float 0.000000e+00, %2937, !dbg !170
  %2942 = fsub float -0.000000e+00, %2937, !dbg !169
  %2943 = select i1 %2941, float %2937, float %2942, !dbg !171
  %2944 = fcmp olt float %2943, 0x3E45798EE0000000, !dbg !171
  br i1 %2944, label %expr_true257, label %expr_false256, !dbg !172

expr_false256:                                    ; preds = %safe_rcp_cont255
  br label %safe_rcp_cont258, !dbg !173

expr_true257:                                     ; preds = %safe_rcp_cont255
  br label %safe_rcp_cont258, !dbg !174

safe_rcp_cont258:                                 ; preds = %expr_true257, %expr_false256
  %2945 = fsub float -0.000000e+00, %2940, !dbg !169
  %2946 = fcmp olt float 0.000000e+00, %2940, !dbg !170
  %2947 = select i1 %2946, float %2940, float %2945, !dbg !171
  %2948 = fcmp olt float %2947, 0x3E45798EE0000000, !dbg !171
  br i1 %2948, label %expr_true260, label %expr_false259, !dbg !172

expr_false259:                                    ; preds = %safe_rcp_cont258
  br label %safe_rcp_cont261, !dbg !173

expr_true260:                                     ; preds = %safe_rcp_cont258
  br label %safe_rcp_cont261, !dbg !174

safe_rcp_cont261:                                 ; preds = %expr_true260, %expr_false259
  %2949 = getelementptr inbounds [0 x float], [0 x float]* %37, i64 0, i32 %lower11, !dbg !136
  %2950 = getelementptr inbounds [0 x i32], [0 x i32]* %40, i64 0, i32 %lower11, !dbg !139
  %2951 = getelementptr inbounds [0 x i32], [0 x i32]* %36, i64 0, i32 %lower11, !dbg !135
  %2952 = getelementptr inbounds [0 x i32], [0 x i32]* %44, i64 0, i32 %lower11, !dbg !143
  %2953 = load i32, i32* %2951, align 4, !dbg !135
  %2954 = getelementptr inbounds [0 x float], [0 x float]* %42, i64 0, i32 %lower11, !dbg !141
  %2955 = getelementptr inbounds [0 x float], [0 x float]* %34, i64 0, i32 %lower11, !dbg !133
  %2956 = getelementptr inbounds [0 x float], [0 x float]* %39, i64 0, i32 %lower11, !dbg !138
  %2957 = load float, float* %2949, align 4, !dbg !136
  %2958 = getelementptr inbounds [0 x float], [0 x float]* %41, i64 0, i32 %lower11, !dbg !140
  %2959 = getelementptr inbounds [0 x float], [0 x float]* %43, i64 0, i32 %lower11, !dbg !142
  %2960 = getelementptr inbounds [0 x float], [0 x float]* %35, i64 0, i32 %lower11, !dbg !134
  %2961 = load float, float* %2960, align 4, !dbg !134
  %2962 = getelementptr inbounds [0 x %2], [0 x %2]* %face_normals_1042601, i64 0, i32 %2953, !dbg !175
  %2963 = mul nsw i32 4, %2953, !dbg !176
  %2964 = add nsw i32 2, %2963, !dbg !177
  %2965 = add nsw i32 1, %2963, !dbg !178
  %2966 = getelementptr inbounds [0 x i32], [0 x i32]* %indices_1042603, i64 0, i32 %2963, !dbg !179
  %2967 = fsub float 1.000000e+00, %2961, !dbg !182
  %2968 = load float, float* %2955, align 4, !dbg !133
  %2969 = getelementptr inbounds [0 x i32], [0 x i32]* %indices_1042603, i64 0, i32 %2964, !dbg !180
  %2970 = getelementptr inbounds [0 x i32], [0 x i32]* %indices_1042603, i64 0, i32 %2965, !dbg !181
  %2971 = fsub float %2967, %2968, !dbg !182
  %2972 = load i32, i32* %2952, align 4, !dbg !143
  %2973 = load float, float* %2959, align 4, !dbg !142
  %2974 = load float, float* %2956, align 4, !dbg !138
  %2975 = load float, float* %2954, align 4, !dbg !141
  %2976 = insertvalue %5 undef, float %2973, 0, !dbg !183
  %2977 = insertvalue %5 %2976, float %2974, 1, !dbg !183
  %2978 = insertvalue %5 %2977, float %2975, 2, !dbg !183
  %2979 = load float, float* %2958, align 4, !dbg !140
  %2980 = load i32, i32* %2950, align 4, !dbg !139
  %2981 = insertvalue %4 undef, i32 %2972, 0, !dbg !184
  %2982 = insertvalue %4 %2981, %5 %2978, 1, !dbg !184
  %2983 = insertvalue %4 %2982, float %2979, 2, !dbg !184
  %2984 = insertvalue %4 %2983, i32 %2980, 3, !dbg !184
  store %4 %2984, %4* %state_1045234, align 4, !dbg !185
  %2985 = load i32, i32* %2966, align 4, !dbg !179
  %2986 = load i32, i32* %2970, align 4, !dbg !181
  %2987 = getelementptr inbounds [0 x %2], [0 x %2]* %normals_1042600, i64 0, i32 %2985, !dbg !186
  %2988 = load i32, i32* %2969, align 4, !dbg !180
  %2989 = getelementptr inbounds [0 x %2], [0 x %2]* %normals_1042600, i64 0, i32 %2986, !dbg !186
  %2990 = load %2, %2* %2962, align 4, !dbg !175
  %2991 = getelementptr inbounds [0 x %2], [0 x %2]* %normals_1042600, i64 0, i32 %2988, !dbg !186
  %2992 = load %2, %2* %2987, align 4, !dbg !186
  %2993 = load %2, %2* %2989, align 4, !dbg !186
  %2994 = extractvalue %2 %2992, 2, !dbg !187
  %2995 = extractvalue %2 %2992, 0, !dbg !188
  %2996 = extractvalue %2 %2992, 1, !dbg !189
  %2997 = fmul float %2971, %2994, !dbg !190
  %2998 = fmul float %2971, %2995, !dbg !190
  %2999 = fmul float %2971, %2996, !dbg !190
  %3000 = load %2, %2* %2991, align 4, !dbg !186
  %3001 = extractvalue %2 %2993, 2, !dbg !191
  %3002 = extractvalue %2 %2993, 0, !dbg !192
  %3003 = extractvalue %2 %2993, 1, !dbg !193
  %3004 = fmul float %2961, %3001, !dbg !194
  %3005 = fmul float %2961, %3002, !dbg !194
  %3006 = fmul float %2961, %3003, !dbg !194
  %3007 = extractvalue %2 %3000, 2, !dbg !195
  %3008 = extractvalue %2 %3000, 0, !dbg !196
  %3009 = extractvalue %2 %3000, 1, !dbg !197
  %3010 = fadd float %2997, %3004, !dbg !190
  %3011 = fadd float %2998, %3005, !dbg !190
  %3012 = fadd float %2999, %3006, !dbg !190
  %3013 = fmul float %2968, %3007, !dbg !198
  %3014 = fmul float %2968, %3008, !dbg !198
  %3015 = fmul float %2968, %3009, !dbg !198
  %3016 = fadd float %3010, %3013, !dbg !190
  %3017 = fadd float %3011, %3014, !dbg !190
  %3018 = fadd float %3012, %3015, !dbg !190
  %3019 = fmul float %3016, %3016, !dbg !199
  %3020 = fmul float %3017, %3017, !dbg !200
  %3021 = fmul float %3018, %3018, !dbg !201
  %3022 = fadd float %3020, %3021, !dbg !200
  %3023 = fadd float %3022, %3019, !dbg !200
  %3024 = call float @llvm.sqrt.f32(float %3023), !dbg !202
  br label %vec3_len_cont262, !dbg !202

vec3_len_cont262:                                 ; preds = %safe_rcp_cont261
  %vec3_len263 = phi float [ %3024, %safe_rcp_cont261 ]
  %3025 = extractvalue %2 %2990, 1, !dbg !205
  %3026 = extractvalue %2 %2990, 0, !dbg !204
  %3027 = extractvalue %2 %2990, 2, !dbg !203
  %3028 = fmul float %2940, %3027, !dbg !199
  %3029 = fmul float %2937, %3025, !dbg !201
  %3030 = fmul float %2934, %3026, !dbg !200
  %3031 = fadd float %3030, %3029, !dbg !200
  %3032 = fadd float %3031, %3028, !dbg !200
  %is_entering533 = fcmp ole float %3032, 0.000000e+00, !dbg !206
  br i1 %is_entering533, label %expr_true265, label %expr_false264, !dbg !207

expr_false264:                                    ; preds = %vec3_len_cont262
  %3033 = fsub float -0.000000e+00, %3025, !dbg !208
  %3034 = fsub float -0.000000e+00, %3027, !dbg !208
  %3035 = fsub float -0.000000e+00, %3026, !dbg !208
  %3036 = insertvalue %2 undef, float %3035, 0, !dbg !209
  %3037 = insertvalue %2 %3036, float %3033, 1, !dbg !209
  %3038 = insertvalue %2 %3037, float %3034, 2, !dbg !209
  br label %if_join266, !dbg !210

expr_true265:                                     ; preds = %vec3_len_cont262
  br label %if_join266, !dbg !210

if_join266:                                       ; preds = %expr_true265, %expr_false264
  %if_join267 = phi %2 [ %2990, %expr_true265 ], [ %3038, %expr_false264 ]
  %3039 = fdiv float 1.000000e+00, %vec3_len263, !dbg !211
  %3040 = fmul float %3016, %3039, !dbg !212
  %3041 = fmul float %3017, %3039, !dbg !212
  %3042 = fmul float %3018, %3039, !dbg !212
  %3043 = fmul float %2940, %3040, !dbg !199
  %3044 = fmul float %2934, %3041, !dbg !200
  %3045 = fmul float %2937, %3042, !dbg !201
  %3046 = fadd float %3044, %3045, !dbg !200
  %3047 = fadd float %3046, %3043, !dbg !200
  %3048 = fcmp ole float %3047, 0.000000e+00, !dbg !213
  br i1 %3048, label %expr_true269, label %expr_false268, !dbg !214

expr_false268:                                    ; preds = %if_join266
  %3049 = fsub float -0.000000e+00, %3040, !dbg !208
  %3050 = fsub float -0.000000e+00, %3041, !dbg !208
  %3051 = fsub float -0.000000e+00, %3042, !dbg !208
  %3052 = insertvalue %2 undef, float %3050, 0, !dbg !209
  %3053 = insertvalue %2 %3052, float %3051, 1, !dbg !209
  %3054 = insertvalue %2 %3053, float %3049, 2, !dbg !209
  br label %if_join270, !dbg !215

expr_true269:                                     ; preds = %if_join266
  %3055 = insertvalue %2 undef, float %3041, 0, !dbg !209
  %3056 = insertvalue %2 %3055, float %3042, 1, !dbg !209
  %3057 = insertvalue %2 %3056, float %3040, 2, !dbg !209
  br label %if_join270, !dbg !215

if_join270:                                       ; preds = %expr_true269, %expr_false268
  %if_join271 = phi %2 [ %3057, %expr_true269 ], [ %3054, %expr_false268 ]
  %3058 = getelementptr inbounds [0 x %3], [0 x %3]* %texcoords_1042602, i64 0, i32 %2988, !dbg !216
  %3059 = getelementptr inbounds [0 x %3], [0 x %3]* %texcoords_1042602, i64 0, i32 %2986, !dbg !216
  %3060 = getelementptr inbounds [0 x %3], [0 x %3]* %texcoords_1042602, i64 0, i32 %2985, !dbg !216
  %3061 = load %3, %3* %3060, align 4, !dbg !216
  %3062 = load %3, %3* %3059, align 4, !dbg !216
  %3063 = extractvalue %3 %3061, 0, !dbg !217
  %3064 = fmul float %2971, %3063, !dbg !190
  %3065 = load %3, %3* %3058, align 4, !dbg !216
  %3066 = extractvalue %3 %3062, 0, !dbg !217
  %3067 = fmul float %2961, %3066, !dbg !194
  %3068 = extractvalue %3 %3065, 0, !dbg !217
  %3069 = fadd float %3064, %3067, !dbg !190
  %3070 = fmul float %2968, %3068, !dbg !198
  %3071 = fadd float %3069, %3070, !dbg !190
  %3072 = call float @llvm.floor.f32(float %3071), !dbg !218
  br label %_cont272, !dbg !218

_cont272:                                         ; preds = %if_join270
  %3073 = phi float [ %3072, %if_join270 ]
  %3074 = extractvalue %3 %3065, 1, !dbg !219
  %3075 = extractvalue %3 %3062, 1, !dbg !219
  %3076 = extractvalue %3 %3061, 1, !dbg !219
  %3077 = fmul float %2971, %3076, !dbg !190
  %3078 = fmul float %2961, %3075, !dbg !194
  %3079 = fmul float %2968, %3074, !dbg !198
  %3080 = fadd float %3077, %3078, !dbg !190
  %3081 = fadd float %3080, %3079, !dbg !190
  %3082 = call float @llvm.floor.f32(float %3081), !dbg !218
  br label %_cont273, !dbg !218

_cont273:                                         ; preds = %_cont272
  %3083 = phi float [ %3082, %_cont272 ]
  %3084 = fsub float %3071, %3073, !dbg !220
  %u534 = fmul float %3084, %5, !dbg !221
  %3085 = fptosi float %u534 to i32, !dbg !222
  %3086 = icmp slt i32 %3085, %4, !dbg !223
  br i1 %3086, label %expr_true275, label %expr_false274, !dbg !224

expr_false274:                                    ; preds = %_cont273
  br label %_cont276, !dbg !225

expr_true275:                                     ; preds = %_cont273
  br label %_cont276, !dbg !225

_cont276:                                         ; preds = %expr_true275, %expr_false274
  %x0277 = phi i32 [ %3085, %expr_true275 ], [ %4, %expr_false274 ]
  %3087 = fsub float %3081, %3083, !dbg !220
  %v535 = fmul float %3087, %2, !dbg !226
  %3088 = fptosi float %v535 to i32, !dbg !227
  %3089 = icmp slt i32 %3088, %0, !dbg !223
  br i1 %3089, label %expr_true279, label %expr_false278, !dbg !224

expr_false278:                                    ; preds = %_cont276
  br label %_cont280, !dbg !225

expr_true279:                                     ; preds = %_cont276
  br label %_cont280, !dbg !225

_cont280:                                         ; preds = %expr_true279, %expr_false278
  %y0281 = phi i32 [ %3088, %expr_true279 ], [ %0, %expr_false278 ]
  %3090 = add nsw i32 1, %x0277, !dbg !228
  %3091 = icmp slt i32 %3090, %4, !dbg !223
  br i1 %3091, label %expr_true283, label %expr_false282, !dbg !224

expr_false282:                                    ; preds = %_cont280
  br label %_cont284, !dbg !225

expr_true283:                                     ; preds = %_cont280
  br label %_cont284, !dbg !225

_cont284:                                         ; preds = %expr_true283, %expr_false282
  %x1285 = phi i32 [ %3090, %expr_true283 ], [ %4, %expr_false282 ]
  %3092 = add nsw i32 1, %y0281, !dbg !229
  %3093 = icmp slt i32 %3092, %0, !dbg !223
  br i1 %3093, label %expr_true287, label %expr_false286, !dbg !224

expr_false286:                                    ; preds = %_cont284
  br label %_cont288, !dbg !225

expr_true287:                                     ; preds = %_cont284
  br label %_cont288, !dbg !225

_cont288:                                         ; preds = %expr_true287, %expr_false286
  %y1289 = phi i32 [ %3092, %expr_true287 ], [ %0, %expr_false286 ]
  %3094 = sitofp i32 %3088 to float, !dbg !126
  %3095 = mul nsw i32 %y1289, %width_1042605, !dbg !230
  %3096 = sitofp i32 %3085 to float, !dbg !127
  %kx536 = fsub float %u534, %3096, !dbg !243
  %3097 = extractvalue %2 %if_join267, 0, !dbg !204
  %3098 = extractvalue %2 %if_join271, 1, !dbg !232
  %3099 = add nsw i32 %3095, %x0277, !dbg !230
  %3100 = mul nsw i32 %y0281, %width_1042605, !dbg !230
  %3101 = add nsw i32 %3095, %x1285, !dbg !230
  %3102 = extractvalue %2 %if_join271, 2, !dbg !238
  %ky537 = fsub float %v535, %3094, !dbg !240
  %3103 = extractvalue %2 %if_join267, 1, !dbg !205
  %3104 = extractvalue %2 %if_join267, 2, !dbg !203
  %3105 = extractvalue %2 %if_join271, 0, !dbg !233
  %3106 = getelementptr inbounds [0 x i32], [0 x i32]* %pixels_1042604, i64 0, i32 %3099, !dbg !231
  %3107 = fsub float 1.000000e+00, %ky537, !dbg !242
  %3108 = add nsw i32 %3100, %x1285, !dbg !230
  %3109 = fsub float 1.000000e+00, %kx536, !dbg !242
  %3110 = fmul float %3098, %2942, !dbg !201
  %3111 = add nsw i32 %3100, %x0277, !dbg !230
  %3112 = getelementptr inbounds [0 x i32], [0 x i32]* %pixels_1042604, i64 0, i32 %3101, !dbg !231
  %3113 = fmul float %3102, %2945, !dbg !199
  %3114 = fmul float %3105, %2936, !dbg !200
  %3115 = getelementptr inbounds [0 x i32], [0 x i32]* %pixels_1042604, i64 0, i32 %3108, !dbg !231
  %3116 = fadd float %3114, %3110, !dbg !200
  %3117 = getelementptr inbounds [0 x i32], [0 x i32]* %pixels_1042604, i64 0, i32 %3111, !dbg !231
  %3118 = fadd float %3116, %3113, !dbg !200
  %3119 = load i32, i32* %3117, align 4, !dbg !231
  %3120 = fmul float 2.000000e+00, %3118, !dbg !251
  %3121 = fmul float %3102, %3120, !dbg !212
  %3122 = fmul float %3105, %3120, !dbg !212
  %3123 = fmul float %3098, %3120, !dbg !212
  %r538 = and i32 255, %3119, !dbg !235
  %3124 = lshr i32 %3119, 8, !dbg !237
  %3125 = lshr i32 %3119, 16, !dbg !234
  %3126 = load i32, i32* %3115, align 4, !dbg !231
  %3127 = fsub float %3121, %2945, !dbg !252
  %3128 = fsub float %3122, %2936, !dbg !252
  %3129 = fsub float %3123, %2942, !dbg !252
  %3130 = uitofp i32 %r538 to float, !dbg !244
  %g539 = and i32 255, %3124, !dbg !239
  %b540 = and i32 255, %3125, !dbg !236
  %3131 = fmul float 0x3F70101020000000, %3130, !dbg !248
  %3132 = uitofp i32 %g539 to float, !dbg !245
  %3133 = uitofp i32 %b540 to float, !dbg !241
  %3134 = load i32, i32* %3106, align 4, !dbg !231
  %r541 = and i32 255, %3126, !dbg !235
  %3135 = lshr i32 %3126, 8, !dbg !237
  %3136 = lshr i32 %3126, 16, !dbg !234
  %3137 = fmul float %3109, %3131, !dbg !250
  %3138 = fmul float 0x3F70101020000000, %3132, !dbg !249
  %3139 = fmul float 0x3F70101020000000, %3133, !dbg !246
  %3140 = uitofp i32 %r541 to float, !dbg !244
  %g542 = and i32 255, %3135, !dbg !239
  %b543 = and i32 255, %3136, !dbg !236
  %3141 = fmul float %3109, %3138, !dbg !250
  %3142 = fmul float %3109, %3139, !dbg !250
  %3143 = load i32, i32* %3112, align 4, !dbg !231
  %r544 = and i32 255, %3134, !dbg !235
  %3144 = lshr i32 %3134, 8, !dbg !237
  %3145 = lshr i32 %3134, 16, !dbg !234
  %3146 = fmul float 0x3F70101020000000, %3140, !dbg !248
  %3147 = uitofp i32 %g542 to float, !dbg !245
  %3148 = uitofp i32 %b543 to float, !dbg !241
  %3149 = uitofp i32 %r544 to float, !dbg !244
  %g545 = and i32 255, %3144, !dbg !239
  %b546 = and i32 255, %3145, !dbg !236
  %3150 = fmul float %kx536, %3146, !dbg !247
  %3151 = fmul float 0x3F70101020000000, %3147, !dbg !249
  %3152 = fmul float 0x3F70101020000000, %3148, !dbg !246
  %3153 = load i32, i32* %21, align 4, !dbg !259
  %r547 = and i32 255, %3143, !dbg !235
  %3154 = lshr i32 %3143, 8, !dbg !237
  %3155 = lshr i32 %3143, 16, !dbg !234
  %3156 = fmul float 0x3F70101020000000, %3149, !dbg !248
  %3157 = uitofp i32 %g545 to float, !dbg !245
  %3158 = uitofp i32 %b546 to float, !dbg !241
  %3159 = fadd float %3137, %3150, !dbg !250
  %3160 = fmul float %kx536, %3151, !dbg !247
  %3161 = fmul float %kx536, %3152, !dbg !247
  %3162 = uitofp i32 %r547 to float, !dbg !244
  %g548 = and i32 255, %3154, !dbg !239
  %b549 = and i32 255, %3155, !dbg !236
  %3163 = fmul float %3109, %3156, !dbg !250
  %3164 = fmul float 0x3F70101020000000, %3157, !dbg !249
  %3165 = fmul float 0x3F70101020000000, %3158, !dbg !246
  %3166 = fmul float %3107, %3159, !dbg !250
  %3167 = fadd float %3141, %3160, !dbg !250
  %3168 = fadd float %3142, %3161, !dbg !250
  %3169 = icmp eq i32 %3153, 0, !dbg !253
  %3170 = fmul float 0x3F70101020000000, %3162, !dbg !248
  %3171 = uitofp i32 %g548 to float, !dbg !245
  %3172 = uitofp i32 %b549 to float, !dbg !241
  %3173 = fmul float %3109, %3164, !dbg !250
  %3174 = fmul float %3109, %3165, !dbg !250
  %3175 = fmul float %3107, %3167, !dbg !250
  %3176 = fmul float %3107, %3168, !dbg !250
  %3177 = select i1 %3169, i32 1, i32 %3153, !dbg !260
  %3178 = fmul float %kx536, %3170, !dbg !247
  %3179 = fmul float 0x3F70101020000000, %3171, !dbg !249
  %3180 = fmul float 0x3F70101020000000, %3172, !dbg !246
  %3181 = shl i32 %3177, 13, !dbg !261
  %3182 = fadd float %3163, %3178, !dbg !250
  %3183 = fmul float %kx536, %3179, !dbg !247
  %3184 = fmul float %kx536, %3180, !dbg !247
  %3185 = xor i32 %3177, %3181, !dbg !262
  %3186 = fmul float %ky537, %3182, !dbg !247
  %3187 = fadd float %3173, %3183, !dbg !250
  %3188 = fadd float %3174, %3184, !dbg !250
  %3189 = lshr i32 %3185, 17, !dbg !263
  %3190 = fadd float %3166, %3186, !dbg !250
  %3191 = fmul float %ky537, %3187, !dbg !247
  %3192 = fmul float %ky537, %3188, !dbg !247
  %3193 = xor i32 %3185, %3189, !dbg !264
  %3194 = fmul float 0x3FD45F3060000000, %3190, !dbg !253
  %3195 = fmul float 0x3FCB367A00000000, %3190, !dbg !254
  %3196 = fadd float %3175, %3191, !dbg !250
  %3197 = fadd float %3176, %3192, !dbg !250
  %3198 = shl i32 %3193, 5, !dbg !265
  %3199 = fmul float 0x3FD45F3060000000, %3196, !dbg !255
  %3200 = fmul float 0x3FE6E2EB20000000, %3196, !dbg !256
  %3201 = fmul float 0x3FD45F3060000000, %3197, !dbg !257
  %3202 = fmul float 0x3FB27BB300000000, %3197, !dbg !258
  %3203 = xor i32 %3193, %3198, !dbg !266
  %3204 = fadd float %3195, %3200, !dbg !254
  %3205 = fadd float %3204, %3202, !dbg !254
  store i32 %3203, i32* %21, align 4, !dbg !267
  %3206 = icmp eq i32 %3203, 0, !dbg !253
  %3207 = fadd float 0x3FE6E2EB20000000, %3205, !dbg !268
  %3208 = select i1 %3206, i32 1, i32 %3203, !dbg !260
  %3209 = fcmp oeq float %3207, 0.000000e+00, !dbg !269
  %3210 = fdiv float 0x3FE6E2EB20000000, %3207, !dbg !270
  %3211 = and i32 8388607, %3203, !dbg !271
  %3212 = shl i32 %3208, 13, !dbg !261
  %3213 = select i1 %3209, float 0.000000e+00, float %3210, !dbg !272
  %3214 = or i32 1065353216, %3211, !dbg !273
  %3215 = xor i32 %3208, %3212, !dbg !262
  %3216 = fsub float 1.000000e+00, %3213, !dbg !274
  %3217 = bitcast i32 %3214 to float, !dbg !275
  %3218 = lshr i32 %3215, 17, !dbg !263
  %3219 = fsub float %3217, 1.000000e+00, !dbg !275
  %3220 = xor i32 %3215, %3218, !dbg !264
  %3221 = fcmp ole float %3213, %3219, !dbg !276
  %3222 = shl i32 %3220, 5, !dbg !265
  %3223 = xor i32 %3220, %3222, !dbg !266
  %3224 = icmp eq i32 %3223, 0, !dbg !253
  %3225 = select i1 %3224, i32 1, i32 %3223, !dbg !260
  %3226 = shl i32 %3225, 13, !dbg !261
  %3227 = and i32 8388607, %3223, !dbg !271
  %3228 = xor i32 %3225, %3226, !dbg !262
  %3229 = or i32 1065353216, %3227, !dbg !273
  %3230 = lshr i32 %3228, 17, !dbg !263
  %3231 = bitcast i32 %3229 to float, !dbg !275
  %3232 = xor i32 %3228, %3230, !dbg !264
  %3233 = fsub float %3231, 1.000000e+00, !dbg !275
  %3234 = shl i32 %3232, 5, !dbg !265
  %phi550 = fmul float 0x401921FB60000000, %3233, !dbg !277
  %3235 = xor i32 %3232, %3234, !dbg !266
  %3236 = and i32 8388607, %3235, !dbg !271
  %3237 = or i32 1065353216, %3236, !dbg !273
  %3238 = bitcast i32 %3237 to float, !dbg !275
  %3239 = fsub float %3238, 1.000000e+00, !dbg !275
  br i1 %3221, label %expr_true320, label %expr_false290, !dbg !278

expr_false290:                                    ; preds = %_cont288
  %3240 = bitcast float %3239 to i32, !dbg !279
  store i32 %3223, i32* %21, align 4, !dbg !267
  %3241 = uitofp i32 %3240 to float, !dbg !280
  %3242 = and i32 8388607, %3240, !dbg !281
  store i32 %3235, i32* %21, align 4, !dbg !267
  %y551 = fmul float 0x3E80000000000000, %3241, !dbg !282
  %mx552 = or i32 1056964608, %3242, !dbg !283
  %3243 = fsub float %y551, 0x405F0E6EE0000000, !dbg !284
  %3244 = bitcast i32 %mx552 to float, !dbg !285
  %3245 = fmul float 0x3FF7F7EEA0000000, %3244, !dbg !286
  %3246 = fadd float 0x3FD6889F20000000, %3244, !dbg !287
  %3247 = fsub float %3243, %3245, !dbg !284
  %3248 = fdiv float 0x3FFB9D3460000000, %3246, !dbg !288
  %3249 = fsub float %3247, %3248, !dbg !284
  %3250 = fmul float 0x3F851D07E0000000, %3249, !dbg !289
  %3251 = fcmp olt float %3250, -1.260000e+02, !dbg !290
  %3252 = fcmp olt float %3250, 0.000000e+00, !dbg !291
  %3253 = select i1 %3251, float -1.260000e+02, float %3250, !dbg !292
  %3254 = select i1 %3252, float 1.000000e+00, float 0.000000e+00, !dbg !293
  %3255 = fadd float 0x405E518A20000000, %3253, !dbg !294
  %3256 = fptosi float %3253 to i32, !dbg !295
  %3257 = sitofp i32 %3256 to float, !dbg !296
  %3258 = fsub float %3253, %3257, !dbg !297
  %z553 = fadd float %3258, %3254, !dbg !297
  %3259 = fmul float 0x3FF7D791A0000000, %z553, !dbg !298
  %3260 = fsub float 0x40135EBF00000000, %z553, !dbg !299
  %3261 = fdiv float 0x403BBA5FC0000000, %3260, !dbg !300
  %3262 = fadd float %3255, %3261, !dbg !294
  %3263 = fsub float %3262, %3259, !dbg !294
  %3264 = fmul float 0x4160000000000000, %3263, !dbg !301
  %3265 = fptosi float %3264 to i32, !dbg !302
  %3266 = bitcast i32 %3265 to float, !dbg !303
  %3267 = call float @llvm.minnum.f32(float %3266, float 1.000000e+00), !dbg !304
  br label %_cont291, !dbg !304

_cont291:                                         ; preds = %expr_false290
  %c292 = phi float [ %3267, %expr_false290 ]
  %3268 = fmul float %c292, %c292, !dbg !305
  %3269 = fsub float 1.000000e+00, %3268, !dbg !306
  %3270 = call float @llvm.sqrt.f32(float %3269), !dbg !307
  br label %_cont293, !dbg !307

_cont293:                                         ; preds = %_cont291
  %s294 = phi float [ %3270, %_cont291 ]
  %3271 = call float @llvm.cos.f32(float %phi550), !dbg !308
  br label %_cont295, !dbg !308

_cont295:                                         ; preds = %_cont293
  %3272 = phi float [ %3271, %_cont293 ]
  %3273 = call float @llvm.sin.f32(float %phi550), !dbg !309
  br label %_cont296, !dbg !309

_cont296:                                         ; preds = %_cont295
  %3274 = phi float [ %3273, %_cont295 ]
  %3275 = fmul float %3128, %3129, !dbg !233
  %3276 = fmul float %3129, %c292, !dbg !199
  %3277 = fcmp ole float 0.000000e+00, %3127, !dbg !238
  %3278 = fmul float %3127, %c292, !dbg !199
  %3279 = select i1 %3277, float 1.000000e+00, float -1.000000e+00, !dbg !314
  %3280 = fmul float %3128, %c292, !dbg !199
  %x554 = fmul float %s294, %3272, !dbg !311
  %3281 = fsub float -0.000000e+00, %3129, !dbg !312
  %y555 = fmul float %s294, %3274, !dbg !313
  %3282 = fmul float %3129, %3129, !dbg !310
  %3283 = fsub float -0.000000e+00, %3279, !dbg !316
  %3284 = fadd float %3279, %3127, !dbg !317
  %3285 = fmul float %3279, %3128, !dbg !315
  %3286 = fmul float %3281, %y555, !dbg !201
  %3287 = fmul float %3283, %3128, !dbg !316
  %a556 = fdiv float -1.000000e+00, %3284, !dbg !318
  %3288 = fmul float %3285, %3128, !dbg !315
  %3289 = fmul float %3287, %x554, !dbg !200
  %b557 = fmul float %3275, %a556, !dbg !233
  %3290 = fmul float %3288, %a556, !dbg !315
  %3291 = fmul float %3282, %a556, !dbg !310
  %3292 = fadd float %3289, %3286, !dbg !200
  %3293 = fmul float %b557, %y555, !dbg !201
  %3294 = fmul float %3279, %b557, !dbg !320
  %3295 = fadd float 1.000000e+00, %3290, !dbg !319
  %3296 = fadd float %3279, %3291, !dbg !321
  %3297 = fadd float %3292, %3278, !dbg !200
  %3298 = fmul float %3294, %x554, !dbg !200
  %3299 = fmul float %3295, %x554, !dbg !200
  %3300 = fmul float %3296, %y555, !dbg !201
  %3301 = fmul float %3297, %3102, !dbg !199
  %3302 = fadd float %3298, %3300, !dbg !200
  %3303 = fadd float %3299, %3293, !dbg !200
  %3304 = fadd float %3302, %3276, !dbg !200
  %3305 = fadd float %3303, %3280, !dbg !200
  %3306 = fmul float %3304, %3098, !dbg !201
  %3307 = fmul float %3305, %3105, !dbg !200
  %3308 = fadd float %3307, %3306, !dbg !200
  %3309 = fadd float %3308, %3301, !dbg !200
  %3310 = fcmp ole float 0.000000e+00, %3309, !dbg !322
  br i1 %3310, label %expr_true298, label %expr_false297, !dbg !323

expr_false297:                                    ; preds = %_cont296
  br label %positive_cos_cont299, !dbg !324

expr_true298:                                     ; preds = %_cont296
  br label %positive_cos_cont299, !dbg !324

positive_cos_cont299:                             ; preds = %expr_true298, %expr_false297
  %cos300 = phi float [ %3309, %expr_true298 ], [ 0.000000e+00, %expr_false297 ]
  %3311 = fcmp une float %c292, 0.000000e+00, !dbg !326
  %3312 = fdiv float %3239, %c292, !dbg !325
  %3313 = select i1 %3311, float %3312, float 0.000000e+00, !dbg !327
  %3314 = fmul float 9.700000e+01, %3313, !dbg !328
  %pdf558 = fmul float 0x3FC45F3060000000, %3314, !dbg !328
  %3315 = fcmp olt float 0.000000e+00, %pdf558, !dbg !329
  br i1 %3315, label %expr_true302, label %expr_false301, !dbg !330

expr_false301:                                    ; preds = %positive_cos_cont299
  br label %jump_true304, !dbg !159

expr_true302:                                     ; preds = %positive_cos_cont299
  %3316 = fmul float %3297, %3104, !dbg !199
  %3317 = fmul float %3304, %3103, !dbg !201
  %3318 = fmul float %3305, %3097, !dbg !200
  %3319 = fadd float %3318, %3317, !dbg !200
  %3320 = fadd float %3319, %3316, !dbg !200
  %3321 = fcmp olt float 0.000000e+00, %3320, !dbg !331
  br i1 %3321, label %expr_true305, label %expr_false303, !dbg !332

expr_false303:                                    ; preds = %expr_true302
  br label %jump_true304, !dbg !159

jump_true304:                                     ; preds = %expr_false303, %expr_false301
  br label %infix_result306, !dbg !159

expr_true305:                                     ; preds = %expr_true302
  br label %infix_result306, !dbg !159

infix_result306:                                  ; preds = %expr_true305, %jump_true304
  %valid307 = phi i1 [ true, %expr_true305 ], [ false, %jump_true304 ]
  br i1 %valid307, label %expr_true309, label %expr_false308, !dbg !333

expr_false308:                                    ; preds = %infix_result306
  br label %if_join310, !dbg !334

expr_true309:                                     ; preds = %infix_result306
  br label %if_join310, !dbg !334

if_join310:                                       ; preds = %expr_true309, %expr_false308
  %if_join311 = phi float [ %pdf558, %expr_true309 ], [ 1.000000e+00, %expr_false308 ]
  br i1 %valid307, label %expr_true313, label %expr_false312, !dbg !129

expr_false312:                                    ; preds = %if_join310
  br label %if_join314, !dbg !335

expr_true313:                                     ; preds = %if_join310
  %3322 = fmul float 9.800000e+01, %pdf558, !dbg !336
  %3323 = fdiv float %3322, 9.700000e+01, !dbg !336
  %3324 = fmul float 0.000000e+00, %3323, !dbg !253
  %3325 = fmul float 1.000000e+00, %3323, !dbg !255
  %3326 = insertvalue %5 undef, float %3324, 0, !dbg !183
  %3327 = insertvalue %5 %3326, float %3325, 1, !dbg !183
  %3328 = insertvalue %5 %3327, float %3324, 2, !dbg !183
  br label %if_join314, !dbg !335

if_join314:                                       ; preds = %expr_true313, %expr_false312
  %if_join315 = phi %5 [ %3328, %expr_true313 ], [ zeroinitializer, %expr_false312 ]
  br i1 %3310, label %expr_true317, label %expr_false316, !dbg !323

expr_false316:                                    ; preds = %if_join314
  br label %positive_cos_cont318, !dbg !324

expr_true317:                                     ; preds = %if_join314
  br label %positive_cos_cont318, !dbg !324

positive_cos_cont318:                             ; preds = %expr_true317, %expr_false316
  %positive_cos319 = phi float [ %3309, %expr_true317 ], [ 0.000000e+00, %expr_false316 ]
  %3329 = extractvalue %5 %if_join315, 2, !dbg !341
  %3330 = fmul float %3213, %if_join311, !dbg !247
  %3331 = extractvalue %5 %if_join315, 1, !dbg !338
  %3332 = fmul float %3216, %3201, !dbg !314
  %3333 = insertvalue %2 undef, float %3305, 0, !dbg !209
  %3334 = insertvalue %2 %3333, float %3304, 1, !dbg !209
  %3335 = insertvalue %2 %3334, float %3297, 2, !dbg !209
  %3336 = fmul float %3216, %3199, !dbg !337
  %3337 = fmul float %3213, %3329, !dbg !346
  %3338 = fmul float 0x3FD45F3060000000, %positive_cos319, !dbg !340
  %3339 = fmul float %3216, %3338, !dbg !250
  %3340 = fmul float %3216, %3194, !dbg !342
  %3341 = extractvalue %5 %if_join315, 0, !dbg !339
  %3342 = fadd float %3339, %3330, !dbg !250
  %3343 = fmul float %3213, %3331, !dbg !344
  %3344 = fadd float %3332, %3337, !dbg !314
  %3345 = insertvalue %6 undef, %2 %3335, 0, !dbg !343
  %3346 = insertvalue %6 %3345, float %if_join311, 1, !dbg !343
  %3347 = insertvalue %6 %3346, float %cos300, 2, !dbg !343
  %3348 = insertvalue %6 %3347, %5 %if_join315, 3, !dbg !343
  %3349 = fadd float %3336, %3343, !dbg !337
  %3350 = fmul float %3213, %3341, !dbg !345
  %3351 = fadd float %3340, %3350, !dbg !342
  %3352 = insertvalue %5 undef, float %3351, 0, !dbg !183
  %3353 = insertvalue %5 %3352, float %3349, 1, !dbg !183
  %3354 = insertvalue %5 %3353, float %3344, 2, !dbg !183
  br label %if_join350, !dbg !347

expr_true320:                                     ; preds = %_cont288
  %3355 = fsub float 1.000000e+00, %3239, !dbg !348
  store i32 %3223, i32* %21, align 4, !dbg !267
  store i32 %3235, i32* %21, align 4, !dbg !267
  %3356 = call float @llvm.sqrt.f32(float %3355), !dbg !349
  br label %_cont321, !dbg !349

_cont321:                                         ; preds = %expr_true320
  %c322 = phi float [ %3356, %expr_true320 ]
  %3357 = call float @llvm.sqrt.f32(float %3239), !dbg !350
  br label %_cont323, !dbg !350

_cont323:                                         ; preds = %_cont321
  %s324 = phi float [ %3357, %_cont321 ]
  %3358 = call float @llvm.cos.f32(float %phi550), !dbg !308
  br label %_cont325, !dbg !308

_cont325:                                         ; preds = %_cont323
  %3359 = phi float [ %3358, %_cont323 ]
  %3360 = call float @llvm.sin.f32(float %phi550), !dbg !309
  br label %_cont326, !dbg !309

_cont326:                                         ; preds = %_cont325
  %3361 = phi float [ %3360, %_cont325 ]
  %3362 = fmul float %3102, %c322, !dbg !199
  %x559 = fmul float %s324, %3359, !dbg !311
  %3363 = fmul float %3098, %c322, !dbg !199
  %3364 = fcmp ole float 0.000000e+00, %3102, !dbg !238
  %3365 = fmul float %3098, %3098, !dbg !310
  %3366 = fmul float 0x3FD45F3060000000, %c322, !dbg !340
  %3367 = fmul float %3105, %3098, !dbg !233
  %3368 = fsub float -0.000000e+00, %3098, !dbg !312
  %y560 = fmul float %s324, %3361, !dbg !313
  %3369 = fmul float %3105, %c322, !dbg !199
  %3370 = select i1 %3364, float 1.000000e+00, float -1.000000e+00, !dbg !314
  %3371 = fcmp olt float 0.000000e+00, %3366, !dbg !329
  %3372 = fmul float %3368, %y560, !dbg !201
  %3373 = fsub float -0.000000e+00, %3370, !dbg !316
  %3374 = fadd float %3370, %3102, !dbg !317
  %3375 = fmul float %3370, %3105, !dbg !315
  %3376 = fmul float %3373, %3105, !dbg !316
  %a561 = fdiv float -1.000000e+00, %3374, !dbg !318
  %3377 = fmul float %3375, %3105, !dbg !315
  %3378 = fmul float %3376, %x559, !dbg !200
  %b562 = fmul float %3367, %a561, !dbg !233
  %3379 = fmul float %3377, %a561, !dbg !315
  %3380 = fmul float %3365, %a561, !dbg !310
  %3381 = fadd float %3378, %3372, !dbg !200
  %3382 = fmul float %b562, %y560, !dbg !201
  %3383 = fmul float %3370, %b562, !dbg !320
  %3384 = fadd float 1.000000e+00, %3379, !dbg !319
  %3385 = fadd float %3370, %3380, !dbg !321
  %3386 = fadd float %3381, %3362, !dbg !200
  %3387 = fmul float %3383, %x559, !dbg !200
  %3388 = fmul float %3384, %x559, !dbg !200
  %3389 = fmul float %3385, %y560, !dbg !201
  %3390 = fadd float %3387, %3389, !dbg !200
  %3391 = fadd float %3388, %3382, !dbg !200
  %3392 = fadd float %3390, %3363, !dbg !200
  %3393 = fadd float %3391, %3369, !dbg !200
  br i1 %3371, label %expr_true328, label %expr_false327, !dbg !330

expr_false327:                                    ; preds = %_cont326
  br label %jump_true330, !dbg !159

expr_true328:                                     ; preds = %_cont326
  %3394 = fmul float %3392, %3103, !dbg !201
  %3395 = fmul float %3393, %3097, !dbg !200
  %3396 = fadd float %3395, %3394, !dbg !200
  %3397 = fmul float %3386, %3104, !dbg !199
  %3398 = fadd float %3396, %3397, !dbg !200
  %3399 = fcmp olt float 0.000000e+00, %3398, !dbg !331
  br i1 %3399, label %expr_true331, label %expr_false329, !dbg !332

expr_false329:                                    ; preds = %expr_true328
  br label %jump_true330, !dbg !159

jump_true330:                                     ; preds = %expr_false329, %expr_false327
  br label %infix_result332, !dbg !159

expr_true331:                                     ; preds = %expr_true328
  br label %infix_result332, !dbg !159

infix_result332:                                  ; preds = %expr_true331, %jump_true330
  %valid333 = phi i1 [ true, %expr_true331 ], [ false, %jump_true330 ]
  br i1 %valid333, label %expr_true335, label %expr_false334, !dbg !333

expr_false334:                                    ; preds = %infix_result332
  br label %if_join336, !dbg !334

expr_true335:                                     ; preds = %infix_result332
  br label %if_join336, !dbg !334

if_join336:                                       ; preds = %expr_true335, %expr_false334
  %if_join337 = phi float [ %3366, %expr_true335 ], [ 1.000000e+00, %expr_false334 ]
  br i1 %valid333, label %expr_true339, label %expr_false338, !dbg !129

expr_false338:                                    ; preds = %if_join336
  br label %if_join340, !dbg !335

expr_true339:                                     ; preds = %if_join336
  %3400 = insertvalue %5 undef, float %3194, 0, !dbg !183
  %3401 = insertvalue %5 %3400, float %3199, 1, !dbg !183
  %3402 = insertvalue %5 %3401, float %3201, 2, !dbg !183
  br label %if_join340, !dbg !335

if_join340:                                       ; preds = %expr_true339, %expr_false338
  %if_join341 = phi %5 [ %3402, %expr_true339 ], [ zeroinitializer, %expr_false338 ]
  %3403 = fmul float %3392, %3129, !dbg !201
  %3404 = fmul float %3393, %3128, !dbg !200
  %3405 = fmul float %3386, %3127, !dbg !199
  %3406 = fadd float %3404, %3403, !dbg !200
  %3407 = fadd float %3406, %3405, !dbg !200
  %3408 = fcmp ole float 0.000000e+00, %3407, !dbg !322
  br i1 %3408, label %expr_true343, label %expr_false342, !dbg !323

expr_false342:                                    ; preds = %if_join340
  br label %positive_cos_cont344, !dbg !324

expr_true343:                                     ; preds = %if_join340
  br label %positive_cos_cont344, !dbg !324

positive_cos_cont344:                             ; preds = %expr_true343, %expr_false342
  %cos345 = phi float [ %3407, %expr_true343 ], [ 0.000000e+00, %expr_false342 ]
  br i1 %3408, label %expr_true347, label %expr_false346, !dbg !323

expr_false346:                                    ; preds = %positive_cos_cont344
  br label %positive_cos_cont348, !dbg !324

expr_true347:                                     ; preds = %positive_cos_cont344
  br label %positive_cos_cont348, !dbg !324

positive_cos_cont348:                             ; preds = %expr_true347, %expr_false346
  %cos349 = phi float [ %3407, %expr_true347 ], [ 0.000000e+00, %expr_false346 ]
  %3409 = extractvalue %5 %if_join341, 1, !dbg !351
  %3410 = fmul float %3216, %if_join337, !dbg !250
  %3411 = extractvalue %5 %if_join341, 0, !dbg !353
  %3412 = bitcast float %cos349 to i32, !dbg !279
  %3413 = fmul float %3216, %3409, !dbg !337
  %3414 = extractvalue %5 %if_join341, 2, !dbg !352
  %3415 = fmul float %3216, %3414, !dbg !314
  %3416 = insertvalue %2 undef, float %3393, 0, !dbg !209
  %3417 = insertvalue %2 %3416, float %3392, 1, !dbg !209
  %3418 = insertvalue %2 %3417, float %3386, 2, !dbg !209
  %3419 = bitcast float %cos345 to i32, !dbg !279
  %3420 = fmul float %3216, %3411, !dbg !342
  %3421 = uitofp i32 %3412 to float, !dbg !280
  %3422 = and i32 8388607, %3412, !dbg !281
  %3423 = insertvalue %6 undef, %2 %3418, 0, !dbg !343
  %3424 = insertvalue %6 %3423, float %if_join337, 1, !dbg !343
  %3425 = insertvalue %6 %3424, float %c322, 2, !dbg !343
  %3426 = insertvalue %6 %3425, %5 %if_join341, 3, !dbg !343
  %3427 = uitofp i32 %3419 to float, !dbg !280
  %3428 = and i32 8388607, %3419, !dbg !281
  %y563 = fmul float 0x3E80000000000000, %3421, !dbg !282
  %mx564 = or i32 1056964608, %3422, !dbg !283
  %y565 = fmul float 0x3E80000000000000, %3427, !dbg !282
  %mx566 = or i32 1056964608, %3428, !dbg !283
  %3429 = fsub float %y563, 0x405F0E6EE0000000, !dbg !284
  %3430 = bitcast i32 %mx564 to float, !dbg !285
  %3431 = fsub float %y565, 0x405F0E6EE0000000, !dbg !284
  %3432 = bitcast i32 %mx566 to float, !dbg !285
  %3433 = fmul float 0x3FF7F7EEA0000000, %3430, !dbg !286
  %3434 = fadd float 0x3FD6889F20000000, %3430, !dbg !287
  %3435 = fmul float 0x3FF7F7EEA0000000, %3432, !dbg !286
  %3436 = fadd float 0x3FD6889F20000000, %3432, !dbg !287
  %3437 = fsub float %3429, %3433, !dbg !284
  %3438 = fdiv float 0x3FFB9D3460000000, %3434, !dbg !288
  %3439 = fsub float %3431, %3435, !dbg !284
  %3440 = fdiv float 0x3FFB9D3460000000, %3436, !dbg !288
  %3441 = fsub float %3437, %3438, !dbg !284
  %3442 = fsub float %3439, %3440, !dbg !284
  %3443 = fmul float 9.600000e+01, %3441, !dbg !289
  %3444 = fmul float 9.600000e+01, %3442, !dbg !289
  %3445 = fcmp olt float %3443, -1.260000e+02, !dbg !290
  %3446 = fcmp olt float %3443, 0.000000e+00, !dbg !291
  %3447 = fcmp olt float %3444, -1.260000e+02, !dbg !290
  %3448 = fcmp olt float %3444, 0.000000e+00, !dbg !291
  %3449 = select i1 %3445, float -1.260000e+02, float %3443, !dbg !292
  %3450 = select i1 %3446, float 1.000000e+00, float 0.000000e+00, !dbg !293
  %3451 = select i1 %3447, float -1.260000e+02, float %3444, !dbg !292
  %3452 = select i1 %3448, float 1.000000e+00, float 0.000000e+00, !dbg !293
  %3453 = fadd float 0x405E518A20000000, %3449, !dbg !294
  %3454 = fptosi float %3449 to i32, !dbg !295
  %3455 = fadd float 0x405E518A20000000, %3451, !dbg !294
  %3456 = fptosi float %3451 to i32, !dbg !295
  %3457 = sitofp i32 %3454 to float, !dbg !296
  %3458 = sitofp i32 %3456 to float, !dbg !296
  %3459 = fsub float %3449, %3457, !dbg !297
  %3460 = fsub float %3451, %3458, !dbg !297
  %z567 = fadd float %3459, %3450, !dbg !297
  %z568 = fadd float %3460, %3452, !dbg !297
  %3461 = fmul float 0x3FF7D791A0000000, %z567, !dbg !298
  %3462 = fsub float 0x40135EBF00000000, %z567, !dbg !299
  %3463 = fmul float 0x3FF7D791A0000000, %z568, !dbg !298
  %3464 = fsub float 0x40135EBF00000000, %z568, !dbg !299
  %3465 = fdiv float 0x403BBA5FC0000000, %3462, !dbg !300
  %3466 = fdiv float 0x403BBA5FC0000000, %3464, !dbg !300
  %3467 = fadd float %3453, %3465, !dbg !294
  %3468 = fadd float %3455, %3466, !dbg !294
  %3469 = fsub float %3467, %3461, !dbg !294
  %3470 = fsub float %3468, %3463, !dbg !294
  %3471 = fmul float 0x4160000000000000, %3469, !dbg !301
  %3472 = fmul float 0x4160000000000000, %3470, !dbg !301
  %3473 = fptosi float %3471 to i32, !dbg !302
  %3474 = fptosi float %3472 to i32, !dbg !302
  %3475 = bitcast i32 %3473 to float, !dbg !303
  %3476 = bitcast i32 %3474 to float, !dbg !303
  %3477 = fmul float 9.800000e+01, %3475, !dbg !354
  %3478 = fmul float 9.700000e+01, %3476, !dbg !355
  %3479 = fmul float 0x3FC45F3060000000, %3477, !dbg !354
  %3480 = fmul float 0x3FC45F3060000000, %3478, !dbg !355
  %3481 = fmul float 0.000000e+00, %3479, !dbg !253
  %3482 = fmul float 1.000000e+00, %3479, !dbg !255
  %3483 = fmul float %3213, %3480, !dbg !247
  %3484 = fmul float %3213, %3481, !dbg !345
  %3485 = fmul float %3213, %3482, !dbg !344
  %3486 = fadd float %3410, %3483, !dbg !250
  %3487 = fadd float %3420, %3484, !dbg !342
  %3488 = fadd float %3415, %3484, !dbg !314
  %3489 = fadd float %3413, %3485, !dbg !337
  %3490 = insertvalue %5 undef, float %3487, 0, !dbg !183
  %3491 = insertvalue %5 %3490, float %3489, 1, !dbg !183
  %3492 = insertvalue %5 %3491, float %3488, 2, !dbg !183
  br label %if_join350, !dbg !347

if_join350:                                       ; preds = %positive_cos_cont348, %positive_cos_cont318
  %if_join351 = phi %6 [ %3426, %positive_cos_cont348 ], [ %3348, %positive_cos_cont318 ]
  %if_join352 = phi float [ %3486, %positive_cos_cont348 ], [ %3342, %positive_cos_cont318 ]
  %if_join353 = phi %5 [ %3492, %positive_cos_cont348 ], [ %3354, %positive_cos_cont318 ]
  %3493 = load %5, %5* %22, align 4, !dbg !124
  %3494 = extractvalue %6 %if_join351, 0, !dbg !356
  %3495 = extractvalue %2 %3494, 0, !dbg !357
  %3496 = fcmp olt float 0.000000e+00, %3495, !dbg !170
  %3497 = fsub float -0.000000e+00, %3495, !dbg !169
  %3498 = select i1 %3496, float %3495, float %3497, !dbg !171
  %3499 = fcmp olt float %3498, 0x3E45798EE0000000, !dbg !171
  br i1 %3499, label %expr_true355, label %expr_false354, !dbg !347

expr_false354:                                    ; preds = %if_join350
  br label %safe_rcp_cont356, !dbg !173

expr_true355:                                     ; preds = %if_join350
  br label %safe_rcp_cont356, !dbg !174

safe_rcp_cont356:                                 ; preds = %expr_true355, %expr_false354
  %3500 = extractvalue %2 %3494, 1, !dbg !358
  %3501 = fcmp olt float 0.000000e+00, %3500, !dbg !170
  %3502 = fsub float -0.000000e+00, %3500, !dbg !169
  %3503 = select i1 %3501, float %3500, float %3502, !dbg !171
  %3504 = fcmp olt float %3503, 0x3E45798EE0000000, !dbg !171
  br i1 %3504, label %expr_true358, label %expr_false357, !dbg !172

expr_false357:                                    ; preds = %safe_rcp_cont356
  br label %safe_rcp_cont359, !dbg !173

expr_true358:                                     ; preds = %safe_rcp_cont356
  br label %safe_rcp_cont359, !dbg !174

safe_rcp_cont359:                                 ; preds = %expr_true358, %expr_false357
  %3505 = extractvalue %2 %3494, 2, !dbg !359
  %3506 = fsub float -0.000000e+00, %3505, !dbg !169
  %3507 = fcmp olt float 0.000000e+00, %3505, !dbg !170
  %3508 = select i1 %3507, float %3505, float %3506, !dbg !171
  %3509 = fcmp olt float %3508, 0x3E45798EE0000000, !dbg !171
  br i1 %3509, label %expr_true361, label %expr_false360, !dbg !172

expr_false360:                                    ; preds = %safe_rcp_cont359
  br label %safe_rcp_cont362, !dbg !173

expr_true361:                                     ; preds = %safe_rcp_cont359
  br label %safe_rcp_cont362, !dbg !174

safe_rcp_cont362:                                 ; preds = %expr_true361, %expr_false360
  %3510 = extractvalue %5 %if_join353, 1, !dbg !362
  %3511 = getelementptr inbounds [0 x i32], [0 x i32]* %55, i64 0, i32 %lower11, !dbg !153
  %3512 = getelementptr inbounds [0 x float], [0 x float]* %51, i64 0, i32 %lower11, !dbg !149
  %3513 = getelementptr inbounds [0 x float], [0 x float]* %59, i64 0, i32 %lower11, !dbg !157
  %3514 = getelementptr inbounds [0 x float], [0 x float]* %47, i64 0, i32 %lower11, !dbg !145
  %3515 = getelementptr inbounds [0 x float], [0 x float]* %46, i64 0, i32 %lower11, !dbg !144
  %3516 = add nsw i32 1, %lower11, !dbg !167
  %3517 = getelementptr inbounds [0 x float], [0 x float]* %49, i64 0, i32 %lower11, !dbg !147
  %3518 = getelementptr inbounds [0 x float], [0 x float]* %58, i64 0, i32 %lower11, !dbg !156
  %3519 = getelementptr inbounds [0 x float], [0 x float]* %53, i64 0, i32 %lower11, !dbg !151
  %3520 = extractvalue %5 %3493, 2, !dbg !367
  %3521 = extractvalue %5 %3493, 1, !dbg !368
  %3522 = getelementptr inbounds [0 x float], [0 x float]* %57, i64 0, i32 %lower11, !dbg !155
  %3523 = getelementptr inbounds [0 x float], [0 x float]* %56, i64 0, i32 %lower11, !dbg !154
  %3524 = getelementptr inbounds [0 x float], [0 x float]* %52, i64 0, i32 %lower11, !dbg !150
  %3525 = getelementptr inbounds [0 x i32], [0 x i32]* %60, i64 0, i32 %lower11, !dbg !158
  %3526 = fmul float %3521, %3510, !dbg !368
  %3527 = extractvalue %6 %if_join351, 2, !dbg !365
  %3528 = fdiv float 1.000000e+00, %if_join352, !dbg !363
  %3529 = fmul float %2940, %2957, !dbg !212
  %3530 = extractvalue %5 %if_join353, 2, !dbg !361
  %3531 = load i32, i32* %21, align 4, !dbg !366
  %3532 = getelementptr inbounds [0 x float], [0 x float]* %50, i64 0, i32 %lower11, !dbg !148
  %3533 = extractvalue %5 %if_join353, 0, !dbg !360
  %3534 = getelementptr inbounds [0 x float], [0 x float]* %48, i64 0, i32 %lower11, !dbg !146
  %3535 = fadd float %2933, %3529, !dbg !364
  %3536 = fmul float %2937, %2957, !dbg !212
  %3537 = fmul float %2934, %2957, !dbg !212
  %3538 = fadd float %2931, %3537, !dbg !364
  %3539 = extractvalue %5 %3493, 0, !dbg !369
  %3540 = fmul float %3520, %3530, !dbg !367
  %3541 = fdiv float %3527, %if_join352, !dbg !370
  %3542 = fadd float %2932, %3536, !dbg !364
  %3543 = fmul float %3539, %3533, !dbg !369
  %3544 = fmul float %3540, %3541, !dbg !257
  %3545 = fmul float %3526, %3541, !dbg !255
  %3546 = fmul float %3543, %3541, !dbg !253
  %3547 = load i32, i32* %23, align 4, !dbg !125
  %3548 = add nsw i32 1, %3547, !dbg !125
  store float %3538, float* %3519, align 4, !dbg !151
  store float %3542, float* %3524, align 4, !dbg !150
  store float %3535, float* %3512, align 4, !dbg !149
  store float %3495, float* %3534, align 4, !dbg !146
  store float %3500, float* %3517, align 4, !dbg !147
  store float %3505, float* %3515, align 4, !dbg !144
  store float 0x3F1A36E2E0000000, float* %3514, align 4, !dbg !145
  store float 0x47EFFFFFE0000000, float* %3532, align 4, !dbg !148
  store i32 %3531, i32* %3525, align 4, !dbg !158
  store float %3546, float* %3513, align 4, !dbg !157
  store float %3545, float* %3518, align 4, !dbg !156
  store float %3544, float* %3523, align 4, !dbg !154
  store float %3528, float* %3522, align 4, !dbg !155
  store i32 %3548, i32* %3511, align 4, !dbg !153
  br label %unroll_step10, !dbg !168

expr_true363:                                     ; preds = %unroll_step7
  %3549 = extractvalue %1 %14, 5, !dbg !710
  %3550 = extractvalue %1 %14, 3, !dbg !713
  %3551 = extractvalue %1 %14, 1, !dbg !714
  %3552 = extractvalue %1 %14, 4, !dbg !715
  %3553 = extractvalue %1 %14, 6, !dbg !716
  %3554 = extractvalue %1 %14, 2, !dbg !717
  %3555 = getelementptr inbounds [0 x float], [0 x float]* %3551, i64 0, i32 %lower8, !dbg !380
  %vec_cast.i719 = bitcast float* %3555 to <8 x float>*, !dbg !380
  %cont_load.i720 = load <8 x float>, <8 x float>* %vec_cast.i719, align 4, !dbg !380
  %3556 = getelementptr inbounds [0 x float], [0 x float]* %3554, i64 0, i32 %lower8, !dbg !380
  %vec_cast1.i721 = bitcast float* %3556 to <8 x float>*, !dbg !380
  %cont_load2.i722 = load <8 x float>, <8 x float>* %vec_cast1.i721, align 4, !dbg !380
  %3557 = getelementptr inbounds [0 x float], [0 x float]* %3550, i64 0, i32 %lower8, !dbg !380
  %vec_cast3.i723 = bitcast float* %3557 to <8 x float>*, !dbg !380
  %cont_load4.i724 = load <8 x float>, <8 x float>* %vec_cast3.i723, align 4, !dbg !380
  %3558 = getelementptr inbounds [0 x float], [0 x float]* %3552, i64 0, i32 %lower8, !dbg !380
  %vec_cast5.i725 = bitcast float* %3558 to <8 x float>*, !dbg !380
  %cont_load6.i726 = load <8 x float>, <8 x float>* %vec_cast5.i725, align 4, !dbg !380
  %3559 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %cont_load6.i726, !dbg !718
  %3560 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> zeroinitializer, <8 x float> %cont_load6.i726, i8 1), !dbg !380
  %3561 = bitcast <8 x float> %3560 to <8 x i32>, !dbg !380
  %3562 = getelementptr inbounds [0 x float], [0 x float]* %3549, i64 0, i32 %lower8, !dbg !380
  %vec_cast7.i727 = bitcast float* %3562 to <8 x float>*, !dbg !380
  %cont_load8.i728 = load <8 x float>, <8 x float>* %vec_cast7.i727, align 4, !dbg !380
  %3563 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %3559, <8 x float> %cont_load6.i726, <8 x float> %3560), !dbg !380
  %3564 = getelementptr inbounds [0 x float], [0 x float]* %3553, i64 0, i32 %lower8, !dbg !380
  %vec_cast9.i729 = bitcast float* %3564 to <8 x float>*, !dbg !380
  %cont_load10.i730 = load <8 x float>, <8 x float>* %vec_cast9.i729, align 4, !dbg !380
  %3565 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> zeroinitializer, <8 x float> %cont_load8.i728, i8 1), !dbg !718
  %3566 = bitcast <8 x float> %3565 to <8 x i32>, !dbg !718
  %3567 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %cont_load8.i728, !dbg !718
  %3568 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %3567, <8 x float> %cont_load8.i728, <8 x float> %3565), !dbg !718
  %3569 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %cont_load10.i730, !dbg !718
  %3570 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> zeroinitializer, <8 x float> %cont_load10.i730, i8 1), !dbg !719
  %3571 = bitcast <8 x float> %3570 to <8 x i32>, !dbg !719
  %3572 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %3569, <8 x float> %cont_load10.i730, <8 x float> %3570), !dbg !720
  %3573 = extractvalue %0 %38, 10, !dbg !720
  %3574 = extractvalue %0 %33, 2, !dbg !721
  %3575 = extractvalue %0 %33, 4, !dbg !722
  %3576 = extractvalue %0 %33, 5, !dbg !723
  %3577 = extractvalue %0 %38, 8, !dbg !724
  %3578 = extractvalue %0 %38, 7, !dbg !725
  %3579 = extractvalue %0 %38, 11, !dbg !726
  %3580 = extractvalue %0 %33, 3, !dbg !727
  %3581 = extractvalue %0 %38, 6, !dbg !728
  %3582 = getelementptr inbounds [0 x i32], [0 x i32]* %3574, i64 0, i32 %lower8, !dbg !380
  %vec_cast11.i731 = bitcast i32* %3582 to <8 x i32>*, !dbg !380
  %cont_load12.i732 = load <8 x i32>, <8 x i32>* %vec_cast11.i731, align 4, !dbg !380
  %3583 = extractvalue %0 %38, 9, !dbg !729
  %3584 = mul nsw <8 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, %cont_load12.i732, !dbg !730
  %3585 = getelementptr inbounds [0 x float], [0 x float]* %3580, i64 0, i32 %lower8, !dbg !380
  %vec_cast13.i733 = bitcast float* %3585 to <8 x float>*, !dbg !380
  %cont_load14.i734 = load <8 x float>, <8 x float>* %vec_cast13.i733, align 4, !dbg !380
  %3586 = add nsw <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>, %3584, !dbg !731
  %3587 = add nsw <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, %3584, !dbg !732
  %3588 = getelementptr inbounds [0 x float], [0 x float]* %3575, i64 0, i32 %lower8, !dbg !380
  %vec_cast15.i735 = bitcast float* %3588 to <8 x float>*, !dbg !380
  %cont_load16.i736 = load <8 x float>, <8 x float>* %vec_cast15.i735, align 4, !dbg !380
  %3589 = fsub <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %cont_load16.i736, !dbg !733
  %3590 = getelementptr inbounds [0 x float], [0 x float]* %3576, i64 0, i32 %lower8, !dbg !380
  %vec_cast17.i737 = bitcast float* %3590 to <8 x float>*, !dbg !380
  %cont_load18.i738 = load <8 x float>, <8 x float>* %vec_cast17.i737, align 4, !dbg !380
  %3591 = fsub <8 x float> %3589, %cont_load18.i738, !dbg !733
  %3592 = getelementptr inbounds [0 x i32], [0 x i32]* %3581, i64 0, i32 %lower8, !dbg !380
  %vec_cast19.i739 = bitcast i32* %3592 to <8 x i32>*, !dbg !380
  %cont_load20.i740 = load <8 x i32>, <8 x i32>* %vec_cast19.i739, align 4, !dbg !380
  %3593 = getelementptr inbounds [0 x float], [0 x float]* %3577, i64 0, i32 %lower8, !dbg !380
  %vec_cast21.i741 = bitcast float* %3593 to <8 x float>*, !dbg !380
  %cont_load22.i742 = load <8 x float>, <8 x float>* %vec_cast21.i741, align 4, !dbg !380
  %extract70.i743 = extractelement <8 x float> %cont_load22.i742, i32 7, !dbg !380
  %extract68.i744 = extractelement <8 x float> %cont_load22.i742, i32 6, !dbg !380
  %extract66.i745 = extractelement <8 x float> %cont_load22.i742, i32 5, !dbg !380
  %extract64.i746 = extractelement <8 x float> %cont_load22.i742, i32 4, !dbg !380
  %extract62.i747 = extractelement <8 x float> %cont_load22.i742, i32 3, !dbg !380
  %extract60.i748 = extractelement <8 x float> %cont_load22.i742, i32 2, !dbg !380
  %extract58.i749 = extractelement <8 x float> %cont_load22.i742, i32 1, !dbg !380
  %extract.i750 = extractelement <8 x float> %cont_load22.i742, i32 0, !dbg !380
  %3594 = getelementptr inbounds [0 x float], [0 x float]* %3583, i64 0, i32 %lower8, !dbg !380
  %vec_cast23.i751 = bitcast float* %3594 to <8 x float>*, !dbg !380
  %cont_load24.i752 = load <8 x float>, <8 x float>* %vec_cast23.i751, align 4, !dbg !380
  %extract85.i753 = extractelement <8 x float> %cont_load24.i752, i32 7, !dbg !380
  %extract83.i754 = extractelement <8 x float> %cont_load24.i752, i32 6, !dbg !380
  %extract81.i755 = extractelement <8 x float> %cont_load24.i752, i32 5, !dbg !380
  %extract79.i756 = extractelement <8 x float> %cont_load24.i752, i32 4, !dbg !380
  %extract77.i757 = extractelement <8 x float> %cont_load24.i752, i32 3, !dbg !380
  %extract75.i758 = extractelement <8 x float> %cont_load24.i752, i32 2, !dbg !380
  %extract73.i759 = extractelement <8 x float> %cont_load24.i752, i32 1, !dbg !380
  %extract72.i760 = extractelement <8 x float> %cont_load24.i752, i32 0, !dbg !380
  %3595 = getelementptr inbounds [0 x float], [0 x float]* %3573, i64 0, i32 %lower8, !dbg !380
  %vec_cast25.i761 = bitcast float* %3595 to <8 x float>*, !dbg !380
  %cont_load26.i762 = load <8 x float>, <8 x float>* %vec_cast25.i761, align 4, !dbg !380
  %extract100.i763 = extractelement <8 x float> %cont_load26.i762, i32 7, !dbg !380
  %extract98.i764 = extractelement <8 x float> %cont_load26.i762, i32 6, !dbg !380
  %extract96.i765 = extractelement <8 x float> %cont_load26.i762, i32 5, !dbg !380
  %extract94.i766 = extractelement <8 x float> %cont_load26.i762, i32 4, !dbg !380
  %extract92.i767 = extractelement <8 x float> %cont_load26.i762, i32 3, !dbg !380
  %extract90.i768 = extractelement <8 x float> %cont_load26.i762, i32 2, !dbg !380
  %extract88.i769 = extractelement <8 x float> %cont_load26.i762, i32 1, !dbg !380
  %extract87.i770 = extractelement <8 x float> %cont_load26.i762, i32 0, !dbg !380
  %3596 = getelementptr inbounds [0 x float], [0 x float]* %3578, i64 0, i32 %lower8, !dbg !380
  %vec_cast27.i771 = bitcast float* %3596 to <8 x float>*, !dbg !380
  %cont_load28.i772 = load <8 x float>, <8 x float>* %vec_cast27.i771, align 4, !dbg !380
  %3597 = getelementptr inbounds [0 x i32], [0 x i32]* %3579, i64 0, i32 %lower8, !dbg !380
  %vec_cast29.i773 = bitcast i32* %3597 to <8 x i32>*, !dbg !380
  %cont_load30.i774 = load <8 x i32>, <8 x i32>* %vec_cast29.i773, align 4, !dbg !380
  %3598 = getelementptr inbounds [0 x i32], [0 x i32]* %indices_1042603, <8 x i64> zeroinitializer, <8 x i32> %3584, !dbg !380
  %3599 = bitcast [0 x i32]* %indices_1042603 to i8*, !dbg !380
  %3600 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %3599, <8 x i32> %3584, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 4), !dbg !380
  %3601 = bitcast <8 x float> %3600 to <8 x i32>, !dbg !380
  %3602 = getelementptr inbounds [0 x i32], [0 x i32]* %indices_1042603, <8 x i64> zeroinitializer, <8 x i32> %3587, !dbg !380
  %3603 = bitcast [0 x i32]* %indices_1042603 to i8*, !dbg !380
  %3604 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %3603, <8 x i32> %3587, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 4), !dbg !380
  %3605 = bitcast <8 x float> %3604 to <8 x i32>, !dbg !380
  %3606 = getelementptr inbounds [0 x i32], [0 x i32]* %indices_1042603, <8 x i64> zeroinitializer, <8 x i32> %3586, !dbg !380
  %3607 = bitcast [0 x i32]* %indices_1042603 to i8*, !dbg !380
  %3608 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %3607, <8 x i32> %3586, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 4), !dbg !380
  %3609 = bitcast <8 x float> %3608 to <8 x i32>, !dbg !380
  %3610 = getelementptr inbounds [0 x %2], [0 x %2]* %face_normals_1042601, <8 x i64> zeroinitializer, <8 x i32> %cont_load12.i732, !dbg !380
  %srov_gep128.i775 = getelementptr %2, <8 x %2*> %3610, i32 0, i32 0, !dbg !380
  %3611 = bitcast [0 x %2]* %face_normals_1042601 to i8*, !dbg !380
  %3612 = mul <8 x i32> %cont_load12.i732, <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>, !dbg !380
  %3613 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %3611, <8 x i32> %3612, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %srov_gep129.i776 = getelementptr %2, <8 x %2*> %3610, i32 0, i32 1, !dbg !380
  %3614 = bitcast [0 x %2]* %face_normals_1042601 to i8*, !dbg !380
  %3615 = mul <8 x i32> %cont_load12.i732, <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>, !dbg !380
  %3616 = add <8 x i32> %3615, <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, !dbg !380
  %3617 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %3614, <8 x i32> %3616, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %srov_gep130.i777 = getelementptr %2, <8 x %2*> %3610, i32 0, i32 2, !dbg !380
  %3618 = bitcast [0 x %2]* %face_normals_1042601 to i8*, !dbg !380
  %3619 = mul <8 x i32> %cont_load12.i732, <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>, !dbg !380
  %3620 = add <8 x i32> %3619, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>, !dbg !380
  %3621 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %3618, <8 x i32> %3620, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %3622 = getelementptr inbounds [0 x %2], [0 x %2]* %normals_1042600, <8 x i64> zeroinitializer, <8 x i32> %3601, !dbg !380
  %srov_gep.i778 = getelementptr %2, <8 x %2*> %3622, i32 0, i32 0, !dbg !380
  %3623 = bitcast [0 x %2]* %normals_1042600 to i8*, !dbg !380
  %3624 = mul <8 x i32> %3601, <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>, !dbg !380
  %3625 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %3623, <8 x i32> %3624, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %srov_gep120.i779 = getelementptr %2, <8 x %2*> %3622, i32 0, i32 1, !dbg !380
  %3626 = bitcast [0 x %2]* %normals_1042600 to i8*, !dbg !380
  %3627 = mul <8 x i32> %3601, <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>, !dbg !380
  %3628 = add <8 x i32> %3627, <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, !dbg !380
  %3629 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %3626, <8 x i32> %3628, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %srov_gep121.i780 = getelementptr %2, <8 x %2*> %3622, i32 0, i32 2, !dbg !380
  %3630 = bitcast [0 x %2]* %normals_1042600 to i8*, !dbg !380
  %3631 = mul <8 x i32> %3601, <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>, !dbg !380
  %3632 = add <8 x i32> %3631, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>, !dbg !380
  %3633 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %3630, <8 x i32> %3632, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %3634 = getelementptr inbounds [0 x %2], [0 x %2]* %normals_1042600, <8 x i64> zeroinitializer, <8 x i32> %3605, !dbg !380
  %srov_gep122.i781 = getelementptr %2, <8 x %2*> %3634, i32 0, i32 0, !dbg !380
  %3635 = bitcast [0 x %2]* %normals_1042600 to i8*, !dbg !380
  %3636 = mul <8 x i32> %3605, <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>, !dbg !380
  %3637 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %3635, <8 x i32> %3636, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %srov_gep123.i782 = getelementptr %2, <8 x %2*> %3634, i32 0, i32 1, !dbg !380
  %3638 = bitcast [0 x %2]* %normals_1042600 to i8*, !dbg !380
  %3639 = mul <8 x i32> %3605, <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>, !dbg !380
  %3640 = add <8 x i32> %3639, <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, !dbg !380
  %3641 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %3638, <8 x i32> %3640, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %srov_gep124.i783 = getelementptr %2, <8 x %2*> %3634, i32 0, i32 2, !dbg !380
  %3642 = bitcast [0 x %2]* %normals_1042600 to i8*, !dbg !380
  %3643 = mul <8 x i32> %3605, <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>, !dbg !380
  %3644 = add <8 x i32> %3643, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>, !dbg !380
  %3645 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %3642, <8 x i32> %3644, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %3646 = fmul <8 x float> %3591, %3633, !dbg !734
  %3647 = fmul <8 x float> %3591, %3625, !dbg !734
  %3648 = fmul <8 x float> %3591, %3629, !dbg !734
  %3649 = getelementptr inbounds [0 x %2], [0 x %2]* %normals_1042600, <8 x i64> zeroinitializer, <8 x i32> %3609, !dbg !380
  %srov_gep125.i784 = getelementptr %2, <8 x %2*> %3649, i32 0, i32 0, !dbg !380
  %3650 = bitcast [0 x %2]* %normals_1042600 to i8*, !dbg !380
  %3651 = mul <8 x i32> %3609, <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>, !dbg !380
  %3652 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %3650, <8 x i32> %3651, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %srov_gep126.i785 = getelementptr %2, <8 x %2*> %3649, i32 0, i32 1, !dbg !380
  %3653 = bitcast [0 x %2]* %normals_1042600 to i8*, !dbg !380
  %3654 = mul <8 x i32> %3609, <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>, !dbg !380
  %3655 = add <8 x i32> %3654, <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, !dbg !380
  %3656 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %3653, <8 x i32> %3655, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %srov_gep127.i786 = getelementptr %2, <8 x %2*> %3649, i32 0, i32 2, !dbg !380
  %3657 = bitcast [0 x %2]* %normals_1042600 to i8*, !dbg !380
  %3658 = mul <8 x i32> %3609, <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>, !dbg !380
  %3659 = add <8 x i32> %3658, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>, !dbg !380
  %3660 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %3657, <8 x i32> %3659, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %3661 = fmul <8 x float> %cont_load16.i736, %3645, !dbg !735
  %3662 = fmul <8 x float> %cont_load16.i736, %3637, !dbg !735
  %3663 = fmul <8 x float> %cont_load16.i736, %3641, !dbg !735
  %3664 = fadd <8 x float> %3646, %3661, !dbg !734
  %3665 = fadd <8 x float> %3647, %3662, !dbg !734
  %3666 = fadd <8 x float> %3648, %3663, !dbg !734
  %3667 = fmul <8 x float> %cont_load18.i738, %3660, !dbg !736
  %3668 = fmul <8 x float> %cont_load18.i738, %3652, !dbg !736
  %3669 = fmul <8 x float> %cont_load18.i738, %3656, !dbg !736
  %3670 = fadd <8 x float> %3664, %3667, !dbg !734
  %3671 = fadd <8 x float> %3665, %3668, !dbg !734
  %3672 = fadd <8 x float> %3666, %3669, !dbg !734
  %3673 = fmul <8 x float> %3670, %3670, !dbg !737
  %3674 = fmul <8 x float> %3671, %3671, !dbg !738
  %3675 = fmul <8 x float> %3672, %3672, !dbg !739
  %3676 = fadd <8 x float> %3674, %3675, !dbg !738
  %3677 = fadd <8 x float> %3676, %3673, !dbg !738
  %.mapped.i787 = call <8 x float> @llvm.sqrt.v8f32(<8 x float> %3677), !dbg !380
  %3678 = fmul <8 x float> %cont_load6.i726, %3613, !dbg !738
  %3679 = fmul <8 x float> %cont_load8.i728, %3617, !dbg !739
  %3680 = fmul <8 x float> %cont_load10.i730, %3621, !dbg !737
  %3681 = fadd <8 x float> %3678, %3679, !dbg !738
  %3682 = fadd <8 x float> %3681, %3680, !dbg !738
  %3683 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> %3682, <8 x float> zeroinitializer, i8 2), !dbg !740
  %3684 = bitcast <8 x float> %3683 to <8 x i32>, !dbg !740
  %3685 = xor <8 x i32> %3684, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1>, !dbg !380
  %.splatinsert39.i788 = insertelement <8 x i32> undef, i32 %width_1042605, i32 0, !dbg !380
  %.splat40.i789 = shufflevector <8 x i32> %.splatinsert39.i788, <8 x i32> undef, <8 x i32> zeroinitializer, !dbg !380
  %3686 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %3613, !dbg !741
  %3687 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %3621, !dbg !741
  %3688 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %3617, !dbg !741
  %3689 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %3686, <8 x float> %3613, <8 x float> %3683), !dbg !380
  %3690 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %3688, <8 x float> %3617, <8 x float> %3683), !dbg !380
  %3691 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %3687, <8 x float> %3621, <8 x float> %3683), !dbg !380
  %3692 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %.mapped.i787, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>), !dbg !742
  %3693 = fdiv <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3692, !dbg !742
  %3694 = fmul <8 x float> %3672, %3693, !dbg !743
  %3695 = fmul <8 x float> %3671, %3693, !dbg !743
  %3696 = fmul <8 x float> %3670, %3693, !dbg !743
  %3697 = fmul <8 x float> %cont_load8.i728, %3694, !dbg !739
  %3698 = fmul <8 x float> %cont_load6.i726, %3695, !dbg !738
  %3699 = fmul <8 x float> %cont_load10.i730, %3696, !dbg !737
  %3700 = fadd <8 x float> %3698, %3697, !dbg !738
  %3701 = fadd <8 x float> %3700, %3699, !dbg !738
  %3702 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> %3701, <8 x float> zeroinitializer, i8 2), !dbg !744
  %3703 = bitcast <8 x float> %3702 to <8 x i32>, !dbg !744
  %3704 = xor <8 x i32> %3703, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1>, !dbg !744
  %3705 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %3694, !dbg !741
  %3706 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %3695, !dbg !741
  %3707 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %3696, !dbg !741
  %3708 = bitcast <8 x i32> %3704 to <8 x float>, !dbg !380
  %3709 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %3695, <8 x float> %3706, <8 x float> %3708), !dbg !380
  %3710 = bitcast <8 x i32> %3704 to <8 x float>, !dbg !380
  %3711 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %3694, <8 x float> %3705, <8 x float> %3710), !dbg !380
  %3712 = bitcast <8 x i32> %3704 to <8 x float>, !dbg !380
  %3713 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %3696, <8 x float> %3707, <8 x float> %3712), !dbg !380
  %3714 = getelementptr inbounds [0 x %3], [0 x %3]* %texcoords_1042602, <8 x i64> zeroinitializer, <8 x i32> %3601, !dbg !380
  %srov_gep131.i790 = getelementptr %3, <8 x %3*> %3714, i32 0, i32 0, !dbg !380
  %3715 = bitcast [0 x %3]* %texcoords_1042602 to i8*, !dbg !380
  %3716 = mul <8 x i32> %3601, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>, !dbg !380
  %3717 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %3715, <8 x i32> %3716, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %srov_gep132.i791 = getelementptr %3, <8 x %3*> %3714, i32 0, i32 1, !dbg !380
  %3718 = bitcast [0 x %3]* %texcoords_1042602 to i8*, !dbg !380
  %3719 = mul <8 x i32> %3601, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>, !dbg !380
  %3720 = add <8 x i32> %3719, <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, !dbg !380
  %3721 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %3718, <8 x i32> %3720, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %3722 = getelementptr inbounds [0 x %3], [0 x %3]* %texcoords_1042602, <8 x i64> zeroinitializer, <8 x i32> %3605, !dbg !380
  %srov_gep133.i792 = getelementptr %3, <8 x %3*> %3722, i32 0, i32 0, !dbg !380
  %3723 = bitcast [0 x %3]* %texcoords_1042602 to i8*, !dbg !380
  %3724 = mul <8 x i32> %3605, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>, !dbg !380
  %3725 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %3723, <8 x i32> %3724, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %srov_gep134.i793 = getelementptr %3, <8 x %3*> %3722, i32 0, i32 1, !dbg !380
  %3726 = bitcast [0 x %3]* %texcoords_1042602 to i8*, !dbg !734
  %3727 = mul <8 x i32> %3605, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>, !dbg !734
  %3728 = add <8 x i32> %3727, <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, !dbg !734
  %3729 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %3726, <8 x i32> %3728, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !734
  %3730 = fmul <8 x float> %3591, %3717, !dbg !734
  %3731 = getelementptr inbounds [0 x %3], [0 x %3]* %texcoords_1042602, <8 x i64> zeroinitializer, <8 x i32> %3609, !dbg !380
  %srov_gep135.i794 = getelementptr %3, <8 x %3*> %3731, i32 0, i32 0, !dbg !380
  %3732 = bitcast [0 x %3]* %texcoords_1042602 to i8*, !dbg !380
  %3733 = mul <8 x i32> %3609, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>, !dbg !380
  %3734 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %3732, <8 x i32> %3733, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %srov_gep136.i795 = getelementptr %3, <8 x %3*> %3731, i32 0, i32 1, !dbg !380
  %3735 = bitcast [0 x %3]* %texcoords_1042602 to i8*, !dbg !745
  %3736 = mul <8 x i32> %3609, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>, !dbg !745
  %3737 = add <8 x i32> %3736, <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, !dbg !745
  %3738 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %3735, <8 x i32> %3737, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !745
  %3739 = fmul <8 x float> %cont_load16.i736, %3725, !dbg !735
  %3740 = fadd <8 x float> %3730, %3739, !dbg !734
  %3741 = fmul <8 x float> %cont_load18.i738, %3734, !dbg !736
  %3742 = fadd <8 x float> %3740, %3741, !dbg !734
  %.mapped31.i796 = call <8 x float> @xfloorf_avx2(<8 x float> %3742), !dbg !380
  %3743 = fmul <8 x float> %cont_load16.i736, %3729, !dbg !735
  %3744 = fmul <8 x float> %3591, %3721, !dbg !734
  %3745 = fadd <8 x float> %3744, %3743, !dbg !734
  %3746 = fmul <8 x float> %cont_load18.i738, %3738, !dbg !736
  %3747 = fadd <8 x float> %3745, %3746, !dbg !734
  %.mapped32.i797 = call <8 x float> @xfloorf_avx2(<8 x float> %3747), !dbg !380
  %3748 = sitofp i32 %width_1042605 to float, !dbg !746
  %3749 = fsub <8 x float> %3742, %.mapped31.i796, !dbg !747
  %.splatinsert.i798 = insertelement <8 x float> undef, float %3748, i32 0, !dbg !380
  %.splat.i799 = shufflevector <8 x float> %.splatinsert.i798, <8 x float> undef, <8 x i32> zeroinitializer, !dbg !380
  %u_SIMD.i800 = fmul <8 x float> %3749, %.splat.i799, !dbg !748
  %3750 = fptosi <8 x float> %u_SIMD.i800 to <8 x i32>, !dbg !749
  %3751 = sub nsw i32 %width_1042605, 1, !dbg !750
  %.splatinsert33.i801 = insertelement <8 x i32> undef, i32 %3751, i32 0, !dbg !380
  %.splat34.i802 = shufflevector <8 x i32> %.splatinsert33.i801, <8 x i32> undef, <8 x i32> zeroinitializer, !dbg !380
  %3752 = icmp slt <8 x i32> %3750, %.splat34.i802, !dbg !751
  %3753 = sext <8 x i1> %3752 to <8 x i32>, !dbg !751
  %3754 = icmp slt <8 x i32> %3750, %.splat34.i802, !dbg !747
  %3755 = select <8 x i1> %3754, <8 x i32> %3750, <8 x i32> %.splat34.i802, !dbg !747
  %3756 = fsub <8 x float> %3747, %.mapped32.i797, !dbg !747
  %3757 = sitofp i32 %height_1042606 to float, !dbg !752
  %3758 = sub nsw i32 %height_1042606, 1, !dbg !753
  %.splatinsert35.i803 = insertelement <8 x float> undef, float %3757, i32 0, !dbg !380
  %.splat36.i804 = shufflevector <8 x float> %.splatinsert35.i803, <8 x float> undef, <8 x i32> zeroinitializer, !dbg !380
  %v_SIMD.i805 = fmul <8 x float> %3756, %.splat36.i804, !dbg !754
  %3759 = fptosi <8 x float> %v_SIMD.i805 to <8 x i32>, !dbg !755
  %.splatinsert37.i806 = insertelement <8 x i32> undef, i32 %3758, i32 0, !dbg !380
  %.splat38.i807 = shufflevector <8 x i32> %.splatinsert37.i806, <8 x i32> undef, <8 x i32> zeroinitializer, !dbg !380
  %3760 = icmp slt <8 x i32> %3759, %.splat38.i807, !dbg !756
  %3761 = sext <8 x i1> %3760 to <8 x i32>, !dbg !756
  %3762 = icmp slt <8 x i32> %3759, %.splat38.i807, !dbg !757
  %3763 = select <8 x i1> %3762, <8 x i32> %3759, <8 x i32> %.splat38.i807, !dbg !757
  %3764 = add nsw <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, %3755, !dbg !757
  %3765 = icmp slt <8 x i32> %3764, %.splat34.i802, !dbg !751
  %3766 = sext <8 x i1> %3765 to <8 x i32>, !dbg !751
  %3767 = icmp slt <8 x i32> %3764, %.splat34.i802, !dbg !758
  %3768 = select <8 x i1> %3767, <8 x i32> %3764, <8 x i32> %.splat34.i802, !dbg !758
  %3769 = add nsw <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, %3763, !dbg !758
  %3770 = icmp slt <8 x i32> %3769, %.splat38.i807, !dbg !756
  %3771 = sext <8 x i1> %3770 to <8 x i32>, !dbg !756
  %3772 = icmp slt <8 x i32> %3769, %.splat38.i807, !dbg !759
  %3773 = select <8 x i1> %3772, <8 x i32> %3769, <8 x i32> %.splat38.i807, !dbg !759
  %3774 = mul nsw <8 x i32> %3773, %.splat40.i789, !dbg !759
  %3775 = add nsw <8 x i32> %3774, %3755, !dbg !759
  %3776 = sitofp <8 x i32> %3750 to <8 x float>, !dbg !710
  %3777 = mul nsw <8 x i32> %3763, %.splat40.i789, !dbg !759
  %3778 = sitofp <8 x i32> %3759 to <8 x float>, !dbg !716
  %3779 = fmul <8 x float> %3713, %3569, !dbg !737
  %3780 = fmul <8 x float> %3711, %3567, !dbg !739
  %3781 = add nsw <8 x i32> %3774, %3768, !dbg !759
  %3782 = fmul <8 x float> %3709, %3559, !dbg !738
  %kx_SIMD.i808 = fsub <8 x float> %u_SIMD.i800, %3776, !dbg !760
  %3783 = add nsw <8 x i32> %3777, %3768, !dbg !759
  %3784 = add nsw <8 x i32> %3777, %3755, !dbg !759
  %ky_SIMD.i809 = fsub <8 x float> %v_SIMD.i805, %3778, !dbg !761
  %3785 = fadd <8 x float> %3782, %3780, !dbg !738
  %3786 = fsub <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %kx_SIMD.i808, !dbg !762
  %3787 = fsub <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %ky_SIMD.i809, !dbg !762
  %3788 = fadd <8 x float> %3785, %3779, !dbg !738
  %3789 = getelementptr inbounds [0 x i32], [0 x i32]* %pixels_1042604, <8 x i64> zeroinitializer, <8 x i32> %3784, !dbg !380
  %3790 = bitcast [0 x i32]* %pixels_1042604 to i8*, !dbg !763
  %3791 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %3790, <8 x i32> %3784, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 4), !dbg !763
  %3792 = bitcast <8 x float> %3791 to <8 x i32>, !dbg !763
  %3793 = fmul <8 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, %3788, !dbg !763
  %3794 = fmul <8 x float> %3713, %3793, !dbg !743
  %3795 = fmul <8 x float> %3709, %3793, !dbg !743
  %3796 = fmul <8 x float> %3711, %3793, !dbg !743
  %r_SIMD.i810 = and <8 x i32> <i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255>, %3792, !dbg !764
  %3797 = lshr <8 x i32> %3792, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>, !dbg !765
  %3798 = lshr <8 x i32> %3792, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>, !dbg !766
  %3799 = getelementptr inbounds [0 x i32], [0 x i32]* %pixels_1042604, <8 x i64> zeroinitializer, <8 x i32> %3783, !dbg !380
  %3800 = bitcast [0 x i32]* %pixels_1042604 to i8*, !dbg !767
  %3801 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %3800, <8 x i32> %3783, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 4), !dbg !767
  %3802 = bitcast <8 x float> %3801 to <8 x i32>, !dbg !767
  %3803 = fsub <8 x float> %3794, %3569, !dbg !767
  %3804 = fsub <8 x float> %3795, %3559, !dbg !767
  %3805 = fsub <8 x float> %3796, %3567, !dbg !767
  %3806 = uitofp <8 x i32> %r_SIMD.i810 to <8 x float>, !dbg !768
  %g_SIMD.i811 = and <8 x i32> <i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255>, %3797, !dbg !769
  %b_SIMD.i812 = and <8 x i32> <i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255>, %3798, !dbg !770
  %3807 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %3806, !dbg !771
  %3808 = uitofp <8 x i32> %g_SIMD.i811 to <8 x float>, !dbg !772
  %3809 = uitofp <8 x i32> %b_SIMD.i812 to <8 x float>, !dbg !773
  %3810 = getelementptr inbounds [0 x i32], [0 x i32]* %pixels_1042604, <8 x i64> zeroinitializer, <8 x i32> %3775, !dbg !380
  %3811 = bitcast [0 x i32]* %pixels_1042604 to i8*, !dbg !764
  %3812 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %3811, <8 x i32> %3775, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 4), !dbg !764
  %3813 = bitcast <8 x float> %3812 to <8 x i32>, !dbg !764
  %r92_SIMD.i813 = and <8 x i32> <i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255>, %3802, !dbg !764
  %3814 = lshr <8 x i32> %3802, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>, !dbg !765
  %3815 = lshr <8 x i32> %3802, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>, !dbg !766
  %3816 = fmul <8 x float> %3786, %3807, !dbg !774
  %3817 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %3808, !dbg !775
  %3818 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %3809, !dbg !776
  %3819 = uitofp <8 x i32> %r92_SIMD.i813 to <8 x float>, !dbg !768
  %g93_SIMD.i814 = and <8 x i32> <i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255>, %3814, !dbg !769
  %b94_SIMD.i815 = and <8 x i32> <i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255>, %3815, !dbg !770
  %3820 = fmul <8 x float> %3786, %3817, !dbg !774
  %3821 = fmul <8 x float> %3786, %3818, !dbg !774
  %3822 = getelementptr inbounds [0 x i32], [0 x i32]* %pixels_1042604, <8 x i64> zeroinitializer, <8 x i32> %3781, !dbg !380
  %3823 = bitcast [0 x i32]* %pixels_1042604 to i8*, !dbg !764
  %3824 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %3823, <8 x i32> %3781, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 4), !dbg !764
  %3825 = bitcast <8 x float> %3824 to <8 x i32>, !dbg !764
  %r95_SIMD.i816 = and <8 x i32> <i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255>, %3813, !dbg !764
  %3826 = lshr <8 x i32> %3813, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>, !dbg !765
  %3827 = lshr <8 x i32> %3813, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>, !dbg !766
  %3828 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %3819, !dbg !771
  %3829 = uitofp <8 x i32> %g93_SIMD.i814 to <8 x float>, !dbg !772
  %3830 = uitofp <8 x i32> %b94_SIMD.i815 to <8 x float>, !dbg !773
  %3831 = uitofp <8 x i32> %r95_SIMD.i816 to <8 x float>, !dbg !768
  %g96_SIMD.i817 = and <8 x i32> <i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255>, %3826, !dbg !769
  %b97_SIMD.i818 = and <8 x i32> <i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255>, %3827, !dbg !770
  %3832 = fmul <8 x float> %kx_SIMD.i808, %3828, !dbg !777
  %3833 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %3829, !dbg !775
  %3834 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %3830, !dbg !776
  %r98_SIMD.i819 = and <8 x i32> <i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255>, %3825, !dbg !764
  %3835 = lshr <8 x i32> %3825, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>, !dbg !765
  %3836 = lshr <8 x i32> %3825, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>, !dbg !766
  %3837 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %3831, !dbg !771
  %3838 = uitofp <8 x i32> %g96_SIMD.i817 to <8 x float>, !dbg !772
  %3839 = uitofp <8 x i32> %b97_SIMD.i818 to <8 x float>, !dbg !773
  %3840 = fadd <8 x float> %3816, %3832, !dbg !774
  %3841 = fmul <8 x float> %kx_SIMD.i808, %3833, !dbg !777
  %3842 = fmul <8 x float> %kx_SIMD.i808, %3834, !dbg !777
  %3843 = uitofp <8 x i32> %r98_SIMD.i819 to <8 x float>, !dbg !768
  %g99_SIMD.i820 = and <8 x i32> <i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255>, %3835, !dbg !769
  %b100_SIMD.i821 = and <8 x i32> <i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255>, %3836, !dbg !770
  %3844 = fmul <8 x float> %3786, %3837, !dbg !774
  %3845 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %3838, !dbg !775
  %3846 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %3839, !dbg !776
  %3847 = fmul <8 x float> %3787, %3840, !dbg !774
  %3848 = fadd <8 x float> %3820, %3841, !dbg !774
  %3849 = fadd <8 x float> %3821, %3842, !dbg !774
  %3850 = icmp eq <8 x i32> %cont_load20.i740, zeroinitializer, !dbg !771
  %3851 = sext <8 x i1> %3850 to <8 x i32>, !dbg !771
  %3852 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %3843, !dbg !771
  %3853 = uitofp <8 x i32> %g99_SIMD.i820 to <8 x float>, !dbg !772
  %3854 = uitofp <8 x i32> %b100_SIMD.i821 to <8 x float>, !dbg !773
  %3855 = fmul <8 x float> %3786, %3845, !dbg !774
  %3856 = fmul <8 x float> %3786, %3846, !dbg !774
  %3857 = fmul <8 x float> %3787, %3848, !dbg !774
  %3858 = fmul <8 x float> %3787, %3849, !dbg !774
  %3859 = bitcast <8 x i32> %cont_load20.i740 to <8 x float>, !dbg !777
  %3860 = bitcast <8 x i32> %3851 to <8 x float>, !dbg !777
  %3861 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %3859, <8 x float> <float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000>, <8 x float> %3860), !dbg !777
  %3862 = bitcast <8 x float> %3861 to <8 x i32>, !dbg !777
  %3863 = fmul <8 x float> %kx_SIMD.i808, %3852, !dbg !777
  %3864 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %3853, !dbg !775
  %3865 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %3854, !dbg !776
  %3866 = shl <8 x i32> %3862, <i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13>, !dbg !778
  %3867 = fadd <8 x float> %3844, %3863, !dbg !774
  %3868 = fmul <8 x float> %kx_SIMD.i808, %3864, !dbg !777
  %3869 = fmul <8 x float> %kx_SIMD.i808, %3865, !dbg !777
  %3870 = xor <8 x i32> %3862, %3866, !dbg !779
  %3871 = fmul <8 x float> %ky_SIMD.i809, %3867, !dbg !777
  %3872 = fadd <8 x float> %3855, %3868, !dbg !774
  %3873 = fadd <8 x float> %3856, %3869, !dbg !774
  %3874 = lshr <8 x i32> %3870, <i32 17, i32 17, i32 17, i32 17, i32 17, i32 17, i32 17, i32 17>, !dbg !780
  %3875 = fadd <8 x float> %3847, %3871, !dbg !774
  %3876 = fmul <8 x float> %ky_SIMD.i809, %3872, !dbg !777
  %3877 = fmul <8 x float> %ky_SIMD.i809, %3873, !dbg !777
  %3878 = xor <8 x i32> %3870, %3874, !dbg !781
  %3879 = fmul <8 x float> <float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000>, %3875, !dbg !782
  %3880 = fmul <8 x float> <float 0x3FCB367A00000000, float 0x3FCB367A00000000, float 0x3FCB367A00000000, float 0x3FCB367A00000000, float 0x3FCB367A00000000, float 0x3FCB367A00000000, float 0x3FCB367A00000000, float 0x3FCB367A00000000>, %3875, !dbg !783
  %3881 = fadd <8 x float> %3857, %3876, !dbg !774
  %3882 = fadd <8 x float> %3858, %3877, !dbg !774
  %3883 = shl <8 x i32> %3878, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>, !dbg !784
  %3884 = fmul <8 x float> <float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000>, %3881, !dbg !785
  %3885 = fmul <8 x float> <float 0x3FE6E2EB20000000, float 0x3FE6E2EB20000000, float 0x3FE6E2EB20000000, float 0x3FE6E2EB20000000, float 0x3FE6E2EB20000000, float 0x3FE6E2EB20000000, float 0x3FE6E2EB20000000, float 0x3FE6E2EB20000000>, %3881, !dbg !786
  %3886 = fmul <8 x float> <float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000>, %3882, !dbg !787
  %3887 = fmul <8 x float> <float 0x3FB27BB300000000, float 0x3FB27BB300000000, float 0x3FB27BB300000000, float 0x3FB27BB300000000, float 0x3FB27BB300000000, float 0x3FB27BB300000000, float 0x3FB27BB300000000, float 0x3FB27BB300000000>, %3882, !dbg !788
  %3888 = xor <8 x i32> %3878, %3883, !dbg !789
  %3889 = fadd <8 x float> %3880, %3885, !dbg !783
  %3890 = fadd <8 x float> %3889, %3887, !dbg !783
  %3891 = icmp eq <8 x i32> %3888, zeroinitializer, !dbg !790
  %3892 = sext <8 x i1> %3891 to <8 x i32>, !dbg !790
  %3893 = fadd <8 x float> <float 0x3FE6E2EB20000000, float 0x3FE6E2EB20000000, float 0x3FE6E2EB20000000, float 0x3FE6E2EB20000000, float 0x3FE6E2EB20000000, float 0x3FE6E2EB20000000, float 0x3FE6E2EB20000000, float 0x3FE6E2EB20000000>, %3890, !dbg !790
  %3894 = bitcast <8 x i32> %3888 to <8 x float>, !dbg !791
  %3895 = bitcast <8 x i32> %3892 to <8 x float>, !dbg !791
  %3896 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %3894, <8 x float> <float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000>, <8 x float> %3895), !dbg !791
  %3897 = bitcast <8 x float> %3896 to <8 x i32>, !dbg !791
  %3898 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> %3893, <8 x float> zeroinitializer, i8 0), !dbg !380
  %3899 = bitcast <8 x float> %3898 to <8 x i32>, !dbg !380
  %3900 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %3893, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>), !dbg !792
  %3901 = fdiv <8 x float> <float 0x3FE6E2EB20000000, float 0x3FE6E2EB20000000, float 0x3FE6E2EB20000000, float 0x3FE6E2EB20000000, float 0x3FE6E2EB20000000, float 0x3FE6E2EB20000000, float 0x3FE6E2EB20000000, float 0x3FE6E2EB20000000>, %3900, !dbg !792
  %3902 = and <8 x i32> <i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607>, %3888, !dbg !793
  %3903 = shl <8 x i32> %3897, <i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13>, !dbg !778
  %3904 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %3901, <8 x float> zeroinitializer, <8 x float> %3898), !dbg !794
  %3905 = or <8 x i32> <i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216>, %3902, !dbg !794
  %3906 = xor <8 x i32> %3897, %3903, !dbg !779
  %3907 = fsub <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3904, !dbg !795
  %3908 = lshr <8 x i32> %3906, <i32 17, i32 17, i32 17, i32 17, i32 17, i32 17, i32 17, i32 17>, !dbg !780
  %3909 = bitcast <8 x i32> %3905 to <8 x float>, !dbg !380
  %3910 = fsub <8 x float> %3909, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, !dbg !796
  %3911 = xor <8 x i32> %3906, %3908, !dbg !781
  %3912 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> %3904, <8 x float> %3910, i8 2), !dbg !784
  %3913 = bitcast <8 x float> %3912 to <8 x i32>, !dbg !784
  %3914 = shl <8 x i32> %3911, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>, !dbg !784
  %3915 = xor <8 x i32> %3911, %3914, !dbg !789
  %3916 = icmp eq <8 x i32> %3915, zeroinitializer, !dbg !797
  %3917 = sext <8 x i1> %3916 to <8 x i32>, !dbg !797
  %3918 = bitcast <8 x i32> %3915 to <8 x float>, !dbg !778
  %3919 = bitcast <8 x i32> %3917 to <8 x float>, !dbg !778
  %3920 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %3918, <8 x float> <float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000>, <8 x float> %3919), !dbg !778
  %3921 = bitcast <8 x float> %3920 to <8 x i32>, !dbg !778
  %3922 = shl <8 x i32> %3921, <i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13>, !dbg !778
  %3923 = and <8 x i32> <i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607>, %3915, !dbg !793
  %3924 = xor <8 x i32> %3921, %3922, !dbg !779
  %3925 = or <8 x i32> <i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216>, %3923, !dbg !794
  %3926 = lshr <8 x i32> %3924, <i32 17, i32 17, i32 17, i32 17, i32 17, i32 17, i32 17, i32 17>, !dbg !780
  %3927 = xor <8 x i32> %3924, %3926, !dbg !781
  %3928 = bitcast <8 x i32> %3925 to <8 x float>, !dbg !380
  %3929 = fsub <8 x float> %3928, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, !dbg !796
  %3930 = shl <8 x i32> %3927, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>, !dbg !784
  %phi_SIMD.i822 = fmul <8 x float> <float 0x401921FB60000000, float 0x401921FB60000000, float 0x401921FB60000000, float 0x401921FB60000000, float 0x401921FB60000000, float 0x401921FB60000000, float 0x401921FB60000000, float 0x401921FB60000000>, %3929, !dbg !798
  %3931 = xor <8 x i32> %3927, %3930, !dbg !789
  %3932 = and <8 x i32> <i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607>, %3931, !dbg !793
  %3933 = or <8 x i32> <i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216>, %3932, !dbg !794
  %3934 = bitcast <8 x i32> %3933 to <8 x float>, !dbg !380
  %3935 = fsub <8 x float> %3934, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, !dbg !796
  %3936 = xor <8 x i32> %3913, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1>, !dbg !799
  %3937 = bitcast <8 x float> %3935 to <8 x i32>, !dbg !380
  %3938 = uitofp <8 x i32> %3937 to <8 x float>, !dbg !800
  %3939 = and <8 x i32> <i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607>, %3937, !dbg !801
  %y_SIMD.i823 = fmul <8 x float> <float 0x3E80000000000000, float 0x3E80000000000000, float 0x3E80000000000000, float 0x3E80000000000000, float 0x3E80000000000000, float 0x3E80000000000000, float 0x3E80000000000000, float 0x3E80000000000000>, %3938, !dbg !802
  %mx_SIMD.i824 = or <8 x i32> <i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608>, %3939, !dbg !803
  %3940 = fsub <8 x float> %y_SIMD.i823, <float 0x405F0E6EE0000000, float 0x405F0E6EE0000000, float 0x405F0E6EE0000000, float 0x405F0E6EE0000000, float 0x405F0E6EE0000000, float 0x405F0E6EE0000000, float 0x405F0E6EE0000000, float 0x405F0E6EE0000000>, !dbg !804
  %3941 = bitcast <8 x i32> %mx_SIMD.i824 to <8 x float>, !dbg !380
  %3942 = fmul <8 x float> <float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000>, %3941, !dbg !805
  %3943 = fadd <8 x float> <float 0x3FD6889F20000000, float 0x3FD6889F20000000, float 0x3FD6889F20000000, float 0x3FD6889F20000000, float 0x3FD6889F20000000, float 0x3FD6889F20000000, float 0x3FD6889F20000000, float 0x3FD6889F20000000>, %3941, !dbg !806
  %3944 = fsub <8 x float> %3940, %3942, !dbg !804
  %3945 = bitcast <8 x i32> %3936 to <8 x float>, !dbg !807
  %3946 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %3943, <8 x float> %3945), !dbg !807
  %3947 = fdiv <8 x float> <float 0x3FFB9D3460000000, float 0x3FFB9D3460000000, float 0x3FFB9D3460000000, float 0x3FFB9D3460000000, float 0x3FFB9D3460000000, float 0x3FFB9D3460000000, float 0x3FFB9D3460000000, float 0x3FFB9D3460000000>, %3946, !dbg !807
  %3948 = fsub <8 x float> %3944, %3947, !dbg !804
  %3949 = fmul <8 x float> <float 0x3F851D07E0000000, float 0x3F851D07E0000000, float 0x3F851D07E0000000, float 0x3F851D07E0000000, float 0x3F851D07E0000000, float 0x3F851D07E0000000, float 0x3F851D07E0000000, float 0x3F851D07E0000000>, %3948, !dbg !808
  %3950 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> %3949, <8 x float> <float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02>, i8 1), !dbg !809
  %3951 = bitcast <8 x float> %3950 to <8 x i32>, !dbg !809
  %3952 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> %3949, <8 x float> zeroinitializer, i8 1), !dbg !810
  %3953 = bitcast <8 x float> %3952 to <8 x i32>, !dbg !810
  %3954 = fcmp fast olt <8 x float> %3949, <float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02>, !dbg !811
  %3955 = select <8 x i1> %3954, <8 x float> <float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02>, <8 x float> %3949, !dbg !811
  %3956 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> zeroinitializer, <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %3952), !dbg !812
  %3957 = fadd <8 x float> <float 0x405E518A20000000, float 0x405E518A20000000, float 0x405E518A20000000, float 0x405E518A20000000, float 0x405E518A20000000, float 0x405E518A20000000, float 0x405E518A20000000, float 0x405E518A20000000>, %3955, !dbg !812
  %3958 = fptosi <8 x float> %3955 to <8 x i32>, !dbg !813
  %3959 = sitofp <8 x i32> %3958 to <8 x float>, !dbg !814
  %3960 = fsub <8 x float> %3955, %3959, !dbg !815
  %z_SIMD.i825 = fadd <8 x float> %3960, %3956, !dbg !815
  %3961 = fmul <8 x float> <float 0x3FF7D791A0000000, float 0x3FF7D791A0000000, float 0x3FF7D791A0000000, float 0x3FF7D791A0000000, float 0x3FF7D791A0000000, float 0x3FF7D791A0000000, float 0x3FF7D791A0000000, float 0x3FF7D791A0000000>, %z_SIMD.i825, !dbg !816
  %3962 = fsub <8 x float> <float 0x40135EBF00000000, float 0x40135EBF00000000, float 0x40135EBF00000000, float 0x40135EBF00000000, float 0x40135EBF00000000, float 0x40135EBF00000000, float 0x40135EBF00000000, float 0x40135EBF00000000>, %z_SIMD.i825, !dbg !817
  %3963 = bitcast <8 x i32> %3936 to <8 x float>, !dbg !818
  %3964 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %3962, <8 x float> %3963), !dbg !818
  %3965 = fdiv <8 x float> <float 0x403BBA5FC0000000, float 0x403BBA5FC0000000, float 0x403BBA5FC0000000, float 0x403BBA5FC0000000, float 0x403BBA5FC0000000, float 0x403BBA5FC0000000, float 0x403BBA5FC0000000, float 0x403BBA5FC0000000>, %3964, !dbg !818
  %3966 = fadd <8 x float> %3957, %3965, !dbg !812
  %3967 = fsub <8 x float> %3966, %3961, !dbg !812
  %3968 = fmul <8 x float> <float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000>, %3967, !dbg !819
  %3969 = fptosi <8 x float> %3968 to <8 x i32>, !dbg !820
  %3970 = bitcast <8 x i32> %3969 to <8 x float>, !dbg !380
  %.mapped44.i826 = call <8 x float> @xfminf_avx2(<8 x float> %3970, <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>), !dbg !380
  %3971 = fmul <8 x float> %.mapped44.i826, %.mapped44.i826, !dbg !821
  %3972 = fsub <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3971, !dbg !822
  %.mapped45.i827 = call <8 x float> @llvm.sqrt.v8f32(<8 x float> %3972), !dbg !380
  %.mapped46.i828 = call <8 x float> @xcosf_u1_avx2(<8 x float> %phi_SIMD.i822), !dbg !380
  %.mapped47.i829 = call <8 x float> @xsinf_u1_avx2(<8 x float> %phi_SIMD.i822), !dbg !380
  %x_SIMD.i830 = fmul <8 x float> %.mapped45.i827, %.mapped46.i828, !dbg !823
  %3973 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %3805, !dbg !824
  %3974 = fmul <8 x float> %3804, %.mapped44.i826, !dbg !737
  %3975 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> zeroinitializer, <8 x float> %3803, i8 2), !dbg !825
  %3976 = bitcast <8 x float> %3975 to <8 x i32>, !dbg !825
  %3977 = fmul <8 x float> %3804, %3805, !dbg !825
  %y101_SIMD.i831 = fmul <8 x float> %.mapped45.i827, %.mapped47.i829, !dbg !826
  %3978 = fmul <8 x float> %3803, %.mapped44.i826, !dbg !737
  %3979 = fmul <8 x float> %3805, %3805, !dbg !827
  %3980 = fmul <8 x float> %3805, %.mapped44.i826, !dbg !737
  %3981 = fmul <8 x float> %3973, %y101_SIMD.i831, !dbg !739
  %3982 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00>, <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %3975), !dbg !828
  %3983 = fmul <8 x float> %3982, %3804, !dbg !828
  %3984 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %3982, !dbg !829
  %3985 = fadd <8 x float> %3982, %3803, !dbg !830
  %3986 = fmul <8 x float> %3983, %3804, !dbg !828
  %3987 = fmul <8 x float> %3984, %3804, !dbg !829
  %3988 = bitcast <8 x i32> %3936 to <8 x float>, !dbg !831
  %3989 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %3985, <8 x float> %3988), !dbg !831
  %a_SIMD.i832 = fdiv <8 x float> <float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00>, %3989, !dbg !831
  %3990 = fmul <8 x float> %3986, %a_SIMD.i832, !dbg !828
  %3991 = fmul <8 x float> %3987, %x_SIMD.i830, !dbg !738
  %b102_SIMD.i833 = fmul <8 x float> %3977, %a_SIMD.i832, !dbg !825
  %3992 = fmul <8 x float> %3979, %a_SIMD.i832, !dbg !827
  %3993 = fadd <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3990, !dbg !832
  %3994 = fadd <8 x float> %3991, %3981, !dbg !738
  %3995 = fmul <8 x float> %b102_SIMD.i833, %y101_SIMD.i831, !dbg !739
  %3996 = fmul <8 x float> %3982, %b102_SIMD.i833, !dbg !833
  %3997 = fadd <8 x float> %3982, %3992, !dbg !834
  %3998 = fmul <8 x float> %3993, %x_SIMD.i830, !dbg !738
  %3999 = fadd <8 x float> %3994, %3978, !dbg !738
  %4000 = fadd <8 x float> %3998, %3995, !dbg !738
  %4001 = fmul <8 x float> %3996, %x_SIMD.i830, !dbg !738
  %4002 = fmul <8 x float> %3997, %y101_SIMD.i831, !dbg !739
  %4003 = fmul <8 x float> %3999, %3713, !dbg !737
  %4004 = fadd <8 x float> %4000, %3974, !dbg !738
  %4005 = fadd <8 x float> %4001, %4002, !dbg !738
  %4006 = fmul <8 x float> %4004, %3709, !dbg !738
  %4007 = fadd <8 x float> %4005, %3980, !dbg !738
  %4008 = fmul <8 x float> %4007, %3711, !dbg !739
  %4009 = fadd <8 x float> %4006, %4008, !dbg !738
  %4010 = fadd <8 x float> %4009, %4003, !dbg !738
  %4011 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> zeroinitializer, <8 x float> %4010, i8 2), !dbg !835
  %4012 = bitcast <8 x float> %4011 to <8 x i32>, !dbg !835
  %4013 = fcmp fast ole <8 x float> zeroinitializer, %4010, !dbg !836
  %4014 = select <8 x i1> %4013, <8 x float> %4010, <8 x float> zeroinitializer, !dbg !835
  %4015 = bitcast <8 x i32> %3936 to <8 x float>, !dbg !837
  %4016 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %.mapped44.i826, <8 x float> %4015), !dbg !837
  %4017 = fdiv <8 x float> %3935, %4016, !dbg !837
  %4018 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> %.mapped44.i826, <8 x float> zeroinitializer, i8 20), !dbg !838
  %4019 = bitcast <8 x float> %4018 to <8 x i32>, !dbg !838
  %4020 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> zeroinitializer, <8 x float> %4017, <8 x float> %4018), !dbg !839
  %4021 = fmul <8 x float> <float 9.700000e+01, float 9.700000e+01, float 9.700000e+01, float 9.700000e+01, float 9.700000e+01, float 9.700000e+01, float 9.700000e+01, float 9.700000e+01>, %4020, !dbg !839
  %pdf_SIMD.i834 = fmul <8 x float> <float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000>, %4021, !dbg !839
  %4022 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> zeroinitializer, <8 x float> %pdf_SIMD.i834, i8 1), !dbg !840
  %4023 = bitcast <8 x float> %4022 to <8 x i32>, !dbg !840
  %4024 = and <8 x i32> %3936, %4023, !dbg !840
  %4025 = xor <8 x i32> %4023, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1>, !dbg !840
  %4026 = and <8 x i32> %3936, %4025, !dbg !380
  %4027 = fmul <8 x float> %4007, %3690, !dbg !739
  %4028 = fmul <8 x float> %3999, %3691, !dbg !737
  %4029 = fmul <8 x float> %4004, %3689, !dbg !738
  %4030 = fadd <8 x float> %4029, %4027, !dbg !738
  %4031 = fadd <8 x float> %4030, %4028, !dbg !738
  %4032 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> zeroinitializer, <8 x float> %4031, i8 1), !dbg !841
  %4033 = bitcast <8 x float> %4032 to <8 x i32>, !dbg !841
  %4034 = and <8 x i32> %4024, %4033, !dbg !841
  %4035 = xor <8 x i32> %4033, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1>, !dbg !841
  %4036 = and <8 x i32> %4024, %4035, !dbg !380
  %4037 = or <8 x i32> %4026, %4036, !dbg !842
  %4038 = or <8 x i32> %4037, %4034, !dbg !842
  %4039 = bitcast <8 x i32> %4034 to <8 x float>, !dbg !715
  %4040 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %pdf_SIMD.i834, <8 x float> %4039), !dbg !715
  %4041 = xor <8 x i32> %4034, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1>, !dbg !715
  %4042 = and <8 x i32> %4038, %4041, !dbg !380
  %4043 = fmul <8 x float> <float 9.800000e+01, float 9.800000e+01, float 9.800000e+01, float 9.800000e+01, float 9.800000e+01, float 9.800000e+01, float 9.800000e+01, float 9.800000e+01>, %pdf_SIMD.i834, !dbg !843
  %4044 = bitcast <8 x i32> %4034 to <8 x float>, !dbg !843
  %4045 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> <float 9.700000e+01, float 9.700000e+01, float 9.700000e+01, float 9.700000e+01, float 9.700000e+01, float 9.700000e+01, float 9.700000e+01, float 9.700000e+01>, <8 x float> %4044), !dbg !843
  %4046 = fdiv <8 x float> %4043, %4045, !dbg !843
  %4047 = fmul <8 x float> zeroinitializer, %4046, !dbg !782
  %4048 = bitcast <8 x i32> %4042 to <8 x float>, !dbg !380
  %4049 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %4047, <8 x float> zeroinitializer, <8 x float> %4048), !dbg !380
  %4050 = bitcast <8 x i32> %4042 to <8 x float>, !dbg !380
  %4051 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %4046, <8 x float> zeroinitializer, <8 x float> %4050), !dbg !380
  %4052 = bitcast <8 x i32> %4042 to <8 x float>, !dbg !380
  %4053 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %4047, <8 x float> zeroinitializer, <8 x float> %4052), !dbg !380
  %4054 = fmul <8 x float> %3907, %3886, !dbg !844
  %4055 = fmul <8 x float> %3907, %3879, !dbg !845
  %4056 = fmul <8 x float> <float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000>, %4014, !dbg !846
  %4057 = fmul <8 x float> %3907, %3884, !dbg !847
  %4058 = fmul <8 x float> %3904, %4040, !dbg !777
  %4059 = fmul <8 x float> %3904, %4049, !dbg !848
  %4060 = fmul <8 x float> %3904, %4053, !dbg !849
  %4061 = fadd <8 x float> %4055, %4059, !dbg !845
  %4062 = fadd <8 x float> %4054, %4060, !dbg !844
  %4063 = fmul <8 x float> %3907, %4056, !dbg !774
  %4064 = fadd <8 x float> %4063, %4058, !dbg !774
  %4065 = fmul <8 x float> %3904, %4051, !dbg !850
  %4066 = fadd <8 x float> %4057, %4065, !dbg !847
  %4067 = fsub <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3935, !dbg !851
  %.mapped51.i835 = call <8 x float> @llvm.sqrt.v8f32(<8 x float> %4067), !dbg !380
  %.mapped52.i836 = call <8 x float> @llvm.sqrt.v8f32(<8 x float> %3935), !dbg !380
  %.mapped53.i837 = call <8 x float> @xcosf_u1_avx2(<8 x float> %phi_SIMD.i822), !dbg !380
  %.mapped54.i838 = call <8 x float> @xsinf_u1_avx2(<8 x float> %phi_SIMD.i822), !dbg !380
  %4068 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %3711, !dbg !824
  %x103_SIMD.i839 = fmul <8 x float> %.mapped52.i836, %.mapped53.i837, !dbg !823
  %4069 = fmul <8 x float> <float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000>, %.mapped51.i835, !dbg !846
  %4070 = fmul <8 x float> %3709, %.mapped51.i835, !dbg !737
  %y104_SIMD.i = fmul <8 x float> %.mapped52.i836, %.mapped54.i838, !dbg !826
  %4071 = fmul <8 x float> %4068, %y104_SIMD.i, !dbg !739
  %4072 = fmul <8 x float> %3713, %.mapped51.i835, !dbg !737
  %4073 = fmul <8 x float> %3711, %.mapped51.i835, !dbg !737
  %4074 = fmul <8 x float> %3709, %3711, !dbg !825
  %4075 = fmul <8 x float> %3711, %3711, !dbg !827
  %4076 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> zeroinitializer, <8 x float> %3713, i8 2), !dbg !852
  %4077 = bitcast <8 x float> %4076 to <8 x i32>, !dbg !852
  %4078 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> zeroinitializer, <8 x float> %4069, i8 1), !dbg !844
  %4079 = bitcast <8 x float> %4078 to <8 x i32>, !dbg !844
  %4080 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00>, <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %4076), !dbg !828
  %4081 = fmul <8 x float> %4080, %3709, !dbg !828
  %4082 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %4080, !dbg !829
  %4083 = fadd <8 x float> %4080, %3713, !dbg !830
  %4084 = fmul <8 x float> %4081, %3709, !dbg !828
  %4085 = fmul <8 x float> %4082, %3709, !dbg !829
  %4086 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %4083, <8 x float> %3912), !dbg !831
  %a105_SIMD.i = fdiv <8 x float> <float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00>, %4086, !dbg !831
  %4087 = fmul <8 x float> %4084, %a105_SIMD.i, !dbg !828
  %4088 = fmul <8 x float> %4085, %x103_SIMD.i839, !dbg !738
  %b106_SIMD.i840 = fmul <8 x float> %4074, %a105_SIMD.i, !dbg !825
  %4089 = fmul <8 x float> %4075, %a105_SIMD.i, !dbg !827
  %4090 = fadd <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %4087, !dbg !832
  %4091 = fadd <8 x float> %4088, %4071, !dbg !738
  %4092 = fmul <8 x float> %b106_SIMD.i840, %y104_SIMD.i, !dbg !739
  %4093 = fmul <8 x float> %4080, %b106_SIMD.i840, !dbg !833
  %4094 = fadd <8 x float> %4080, %4089, !dbg !834
  %4095 = fmul <8 x float> %4090, %x103_SIMD.i839, !dbg !738
  %4096 = fadd <8 x float> %4091, %4072, !dbg !738
  %4097 = fadd <8 x float> %4095, %4092, !dbg !738
  %4098 = fmul <8 x float> %4093, %x103_SIMD.i839, !dbg !738
  %4099 = fmul <8 x float> %4094, %y104_SIMD.i, !dbg !739
  %4100 = fadd <8 x float> %4097, %4070, !dbg !738
  %4101 = fadd <8 x float> %4098, %4099, !dbg !738
  %4102 = fadd <8 x float> %4101, %4073, !dbg !738
  %4103 = and <8 x i32> %3913, %4079, !dbg !840
  %4104 = xor <8 x i32> %4079, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1>, !dbg !840
  %4105 = and <8 x i32> %3913, %4104, !dbg !380
  %4106 = fmul <8 x float> %4102, %3690, !dbg !739
  %4107 = fmul <8 x float> %4100, %3689, !dbg !738
  %4108 = fmul <8 x float> %4096, %3691, !dbg !737
  %4109 = fadd <8 x float> %4107, %4106, !dbg !738
  %4110 = fadd <8 x float> %4109, %4108, !dbg !738
  %4111 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> zeroinitializer, <8 x float> %4110, i8 1), !dbg !841
  %4112 = bitcast <8 x float> %4111 to <8 x i32>, !dbg !841
  %4113 = and <8 x i32> %4103, %4112, !dbg !841
  %4114 = xor <8 x i32> %4112, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1>, !dbg !841
  %4115 = and <8 x i32> %4103, %4114, !dbg !380
  %4116 = or <8 x i32> %4105, %4115, !dbg !842
  %4117 = or <8 x i32> %4116, %4113, !dbg !842
  %4118 = bitcast <8 x i32> %4113 to <8 x float>, !dbg !715
  %4119 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %4069, <8 x float> %4118), !dbg !715
  %4120 = bitcast <8 x i32> %4113 to <8 x float>, !dbg !715
  %4121 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> zeroinitializer, <8 x float> %3879, <8 x float> %4120), !dbg !715
  %4122 = bitcast <8 x i32> %4113 to <8 x float>, !dbg !715
  %4123 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> zeroinitializer, <8 x float> %3884, <8 x float> %4122), !dbg !715
  %4124 = bitcast <8 x i32> %4113 to <8 x float>, !dbg !737
  %4125 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> zeroinitializer, <8 x float> %3886, <8 x float> %4124), !dbg !737
  %4126 = fmul <8 x float> %4096, %3803, !dbg !737
  %4127 = fmul <8 x float> %4100, %3804, !dbg !738
  %4128 = fmul <8 x float> %4102, %3805, !dbg !739
  %4129 = fadd <8 x float> %4127, %4128, !dbg !738
  %4130 = fadd <8 x float> %4129, %4126, !dbg !738
  %4131 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> zeroinitializer, <8 x float> %4130, i8 2), !dbg !853
  %4132 = bitcast <8 x float> %4131 to <8 x i32>, !dbg !853
  %4133 = fcmp fast ole <8 x float> zeroinitializer, %4130, !dbg !836
  %4134 = select <8 x i1> %4133, <8 x float> %4130, <8 x float> zeroinitializer, !dbg !853
  %4135 = bitcast <8 x float> %4134 to <8 x i32>, !dbg !380
  %4136 = uitofp <8 x i32> %4135 to <8 x float>, !dbg !800
  %4137 = fmul <8 x float> %3907, %4119, !dbg !774
  %4138 = fmul <8 x float> %3907, %4125, !dbg !844
  %4139 = fmul <8 x float> %3907, %4121, !dbg !845
  %4140 = and <8 x i32> <i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607>, %4135, !dbg !801
  %4141 = fmul <8 x float> %3907, %4123, !dbg !847
  %y107_SIMD.i841 = fmul <8 x float> <float 0x3E80000000000000, float 0x3E80000000000000, float 0x3E80000000000000, float 0x3E80000000000000, float 0x3E80000000000000, float 0x3E80000000000000, float 0x3E80000000000000, float 0x3E80000000000000>, %4136, !dbg !802
  %mx109_SIMD.i842 = or <8 x i32> <i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608>, %4140, !dbg !803
  %4142 = fsub <8 x float> %y107_SIMD.i841, <float 0x405F0E6EE0000000, float 0x405F0E6EE0000000, float 0x405F0E6EE0000000, float 0x405F0E6EE0000000, float 0x405F0E6EE0000000, float 0x405F0E6EE0000000, float 0x405F0E6EE0000000, float 0x405F0E6EE0000000>, !dbg !804
  %4143 = bitcast <8 x i32> %mx109_SIMD.i842 to <8 x float>, !dbg !380
  %4144 = fmul <8 x float> <float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000>, %4143, !dbg !805
  %4145 = fadd <8 x float> <float 0x3FD6889F20000000, float 0x3FD6889F20000000, float 0x3FD6889F20000000, float 0x3FD6889F20000000, float 0x3FD6889F20000000, float 0x3FD6889F20000000, float 0x3FD6889F20000000, float 0x3FD6889F20000000>, %4143, !dbg !806
  %4146 = fsub <8 x float> %4142, %4144, !dbg !804
  %4147 = bitcast <8 x i32> %4117 to <8 x float>, !dbg !807
  %4148 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %4145, <8 x float> %4147), !dbg !807
  %4149 = fdiv <8 x float> <float 0x3FFB9D3460000000, float 0x3FFB9D3460000000, float 0x3FFB9D3460000000, float 0x3FFB9D3460000000, float 0x3FFB9D3460000000, float 0x3FFB9D3460000000, float 0x3FFB9D3460000000, float 0x3FFB9D3460000000>, %4148, !dbg !807
  %4150 = fsub <8 x float> %4146, %4149, !dbg !804
  %4151 = fmul <8 x float> <float 9.600000e+01, float 9.600000e+01, float 9.600000e+01, float 9.600000e+01, float 9.600000e+01, float 9.600000e+01, float 9.600000e+01, float 9.600000e+01>, %4150, !dbg !808
  %4152 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> %4151, <8 x float> <float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02>, i8 1), !dbg !809
  %4153 = bitcast <8 x float> %4152 to <8 x i32>, !dbg !809
  %4154 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> %4151, <8 x float> zeroinitializer, i8 1), !dbg !810
  %4155 = bitcast <8 x float> %4154 to <8 x i32>, !dbg !810
  %4156 = fcmp fast olt <8 x float> %4151, <float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02>, !dbg !811
  %4157 = select <8 x i1> %4156, <8 x float> <float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02>, <8 x float> %4151, !dbg !811
  %4158 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> zeroinitializer, <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %4154), !dbg !812
  %4159 = fadd <8 x float> <float 0x405E518A20000000, float 0x405E518A20000000, float 0x405E518A20000000, float 0x405E518A20000000, float 0x405E518A20000000, float 0x405E518A20000000, float 0x405E518A20000000, float 0x405E518A20000000>, %4157, !dbg !812
  %4160 = fptosi <8 x float> %4157 to <8 x i32>, !dbg !813
  %4161 = sitofp <8 x i32> %4160 to <8 x float>, !dbg !814
  %4162 = fsub <8 x float> %4157, %4161, !dbg !815
  %z111_SIMD.i843 = fadd <8 x float> %4162, %4158, !dbg !815
  %4163 = fmul <8 x float> <float 0x3FF7D791A0000000, float 0x3FF7D791A0000000, float 0x3FF7D791A0000000, float 0x3FF7D791A0000000, float 0x3FF7D791A0000000, float 0x3FF7D791A0000000, float 0x3FF7D791A0000000, float 0x3FF7D791A0000000>, %z111_SIMD.i843, !dbg !816
  %4164 = fsub <8 x float> <float 0x40135EBF00000000, float 0x40135EBF00000000, float 0x40135EBF00000000, float 0x40135EBF00000000, float 0x40135EBF00000000, float 0x40135EBF00000000, float 0x40135EBF00000000, float 0x40135EBF00000000>, %z111_SIMD.i843, !dbg !817
  %4165 = bitcast <8 x i32> %4117 to <8 x float>, !dbg !818
  %4166 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %4164, <8 x float> %4165), !dbg !818
  %4167 = fdiv <8 x float> <float 0x403BBA5FC0000000, float 0x403BBA5FC0000000, float 0x403BBA5FC0000000, float 0x403BBA5FC0000000, float 0x403BBA5FC0000000, float 0x403BBA5FC0000000, float 0x403BBA5FC0000000, float 0x403BBA5FC0000000>, %4166, !dbg !818
  %4168 = fadd <8 x float> %4159, %4167, !dbg !812
  %4169 = fsub <8 x float> %4168, %4163, !dbg !812
  %4170 = fmul <8 x float> <float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000>, %4169, !dbg !819
  %4171 = fptosi <8 x float> %4170 to <8 x i32>, !dbg !820
  %4172 = bitcast <8 x i32> %4171 to <8 x float>, !dbg !380
  %4173 = fmul <8 x float> <float 9.700000e+01, float 9.700000e+01, float 9.700000e+01, float 9.700000e+01, float 9.700000e+01, float 9.700000e+01, float 9.700000e+01, float 9.700000e+01>, %4172, !dbg !854
  %4174 = fmul <8 x float> <float 9.800000e+01, float 9.800000e+01, float 9.800000e+01, float 9.800000e+01, float 9.800000e+01, float 9.800000e+01, float 9.800000e+01, float 9.800000e+01>, %4172, !dbg !855
  %4175 = fmul <8 x float> <float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000>, %4173, !dbg !854
  %4176 = fmul <8 x float> <float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000>, %4174, !dbg !855
  %4177 = fmul <8 x float> %3904, %4175, !dbg !777
  %4178 = fmul <8 x float> zeroinitializer, %4176, !dbg !782
  %4179 = fadd <8 x float> %4137, %4177, !dbg !774
  %4180 = fmul <8 x float> %3904, %4178, !dbg !848
  %4181 = fmul <8 x float> %3904, %4176, !dbg !850
  %4182 = fadd <8 x float> %4139, %4180, !dbg !845
  %4183 = fadd <8 x float> %4138, %4180, !dbg !844
  %4184 = fadd <8 x float> %4141, %4181, !dbg !847
  %4185 = xor <8 x i32> %4038, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1>, !dbg !380
  %4186 = and <8 x i32> %4185, %4117, !dbg !380
  %4187 = bitcast <8 x i32> %4038 to <8 x float>, !dbg !380
  %4188 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %4100, <8 x float> %4004, <8 x float> %4187), !dbg !380
  %4189 = bitcast <8 x i32> %4038 to <8 x float>, !dbg !380
  %4190 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %4102, <8 x float> %4007, <8 x float> %4189), !dbg !380
  %4191 = bitcast <8 x i32> %4038 to <8 x float>, !dbg !380
  %4192 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %4096, <8 x float> %3999, <8 x float> %4191), !dbg !380
  %4193 = bitcast <8 x i32> %4038 to <8 x float>, !dbg !380
  %4194 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %4119, <8 x float> %4040, <8 x float> %4193), !dbg !380
  %4195 = bitcast <8 x i32> %4038 to <8 x float>, !dbg !380
  %4196 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %.mapped51.i835, <8 x float> %4014, <8 x float> %4195), !dbg !380
  %4197 = bitcast <8 x i32> %4038 to <8 x float>, !dbg !380
  %4198 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %4121, <8 x float> %4049, <8 x float> %4197), !dbg !380
  %4199 = bitcast <8 x i32> %4038 to <8 x float>, !dbg !380
  %4200 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %4123, <8 x float> %4051, <8 x float> %4199), !dbg !380
  %4201 = bitcast <8 x i32> %4038 to <8 x float>, !dbg !380
  %4202 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %4125, <8 x float> %4053, <8 x float> %4201), !dbg !380
  %4203 = bitcast <8 x i32> %4038 to <8 x float>, !dbg !380
  %4204 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %4179, <8 x float> %4064, <8 x float> %4203), !dbg !380
  %4205 = bitcast <8 x i32> %4038 to <8 x float>, !dbg !380
  %4206 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %4182, <8 x float> %4061, <8 x float> %4205), !dbg !380
  %4207 = bitcast <8 x i32> %4038 to <8 x float>, !dbg !380
  %4208 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %4184, <8 x float> %4066, <8 x float> %4207), !dbg !380
  %4209 = bitcast <8 x i32> %4038 to <8 x float>, !dbg !380
  %4210 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %4183, <8 x float> %4062, <8 x float> %4209), !dbg !380
  %4211 = or <8 x i32> %4186, %4038, !dbg !856
  %.fca.0.insert.i844 = insertvalue %5 undef, float %extract.i750, 0, !dbg !856
  %.fca.0.insert59.i845 = insertvalue %5 undef, float %extract58.i749, 0, !dbg !856
  %.fca.0.insert61.i846 = insertvalue %5 undef, float %extract60.i748, 0, !dbg !856
  %.fca.0.insert63.i847 = insertvalue %5 undef, float %extract62.i747, 0, !dbg !856
  %.fca.0.insert65.i848 = insertvalue %5 undef, float %extract64.i746, 0, !dbg !856
  %.fca.0.insert67.i849 = insertvalue %5 undef, float %extract66.i745, 0, !dbg !856
  %.fca.0.insert69.i850 = insertvalue %5 undef, float %extract68.i744, 0, !dbg !856
  %.fca.0.insert71.i851 = insertvalue %5 undef, float %extract70.i743, 0, !dbg !856
  %.fca.1.insert.i852 = insertvalue %5 %.fca.0.insert.i844, float %extract72.i760, 1, !dbg !856
  %.fca.1.insert74.i853 = insertvalue %5 %.fca.0.insert59.i845, float %extract73.i759, 1, !dbg !856
  %.fca.1.insert76.i854 = insertvalue %5 %.fca.0.insert61.i846, float %extract75.i758, 1, !dbg !856
  %.fca.1.insert78.i855 = insertvalue %5 %.fca.0.insert63.i847, float %extract77.i757, 1, !dbg !856
  %.fca.1.insert80.i856 = insertvalue %5 %.fca.0.insert65.i848, float %extract79.i756, 1, !dbg !856
  %.fca.1.insert82.i857 = insertvalue %5 %.fca.0.insert67.i849, float %extract81.i755, 1, !dbg !856
  %.fca.1.insert84.i858 = insertvalue %5 %.fca.0.insert69.i850, float %extract83.i754, 1, !dbg !856
  %.fca.1.insert86.i859 = insertvalue %5 %.fca.0.insert71.i851, float %extract85.i753, 1, !dbg !856
  %.fca.2.insert.i860 = insertvalue %5 %.fca.1.insert.i852, float %extract87.i770, 2, !dbg !856
  %.fca.2.insert89.i861 = insertvalue %5 %.fca.1.insert74.i853, float %extract88.i769, 2, !dbg !856
  %.fca.2.insert91.i862 = insertvalue %5 %.fca.1.insert76.i854, float %extract90.i768, 2, !dbg !856
  %.fca.2.insert93.i863 = insertvalue %5 %.fca.1.insert78.i855, float %extract92.i767, 2, !dbg !856
  %.fca.2.insert95.i864 = insertvalue %5 %.fca.1.insert80.i856, float %extract94.i766, 2, !dbg !856
  %.fca.2.insert97.i865 = insertvalue %5 %.fca.1.insert82.i857, float %extract96.i765, 2, !dbg !856
  %.fca.2.insert99.i866 = insertvalue %5 %.fca.1.insert84.i858, float %extract98.i764, 2, !dbg !856
  %.fca.2.insert101.i867 = insertvalue %5 %.fca.1.insert86.i859, float %extract100.i763, 2, !dbg !856
  %4212 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %4190, !dbg !718
  %4213 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> zeroinitializer, <8 x float> %4190, i8 1), !dbg !719
  %4214 = bitcast <8 x float> %4213 to <8 x i32>, !dbg !719
  %4215 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %4212, <8 x float> %4190, <8 x float> %4213), !dbg !857
  %4216 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> zeroinitializer, <8 x float> %4192, i8 1), !dbg !718
  %4217 = bitcast <8 x float> %4216 to <8 x i32>, !dbg !718
  %4218 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %4192, !dbg !718
  %4219 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %4218, <8 x float> %4192, <8 x float> %4216), !dbg !858
  %4220 = extractvalue %0 %54, 9, !dbg !858
  %4221 = extractvalue %1 %45, 1, !dbg !859
  %4222 = extractvalue %1 %45, 4, !dbg !860
  %4223 = extractvalue %0 %54, 8, !dbg !861
  %4224 = extractvalue %1 %45, 5, !dbg !862
  %4225 = extractvalue %0 %54, 10, !dbg !863
  %4226 = extractvalue %1 %45, 3, !dbg !864
  %4227 = bitcast <8 x i32> %4211 to <8 x float>, !dbg !865
  %4228 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %4204, <8 x float> %4227), !dbg !865
  %4229 = fdiv <8 x float> %4196, %4228, !dbg !865
  %4230 = bitcast <8 x i32> %4211 to <8 x float>, !dbg !866
  %4231 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %4204, <8 x float> %4230), !dbg !866
  %4232 = fdiv <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %4231, !dbg !866
  %4233 = extractvalue %0 %54, 6, !dbg !867
  %4234 = extractvalue %0 %54, 11, !dbg !868
  %4235 = extractvalue %1 %45, 8, !dbg !869
  %4236 = extractvalue %0 %54, 7, !dbg !870
  %4237 = fmul <8 x float> %cont_load6.i726, %cont_load14.i734, !dbg !743
  %4238 = extractvalue %1 %45, 2, !dbg !871
  %4239 = extractvalue %1 %45, 7, !dbg !872
  %4240 = extractvalue %1 %45, 6, !dbg !873
  %4241 = fadd <8 x float> %cont_load.i720, %4237, !dbg !874
  %4242 = fmul <8 x float> %cont_load10.i730, %cont_load14.i734, !dbg !743
  %4243 = fmul <8 x float> %cont_load8.i728, %cont_load14.i734, !dbg !743
  %4244 = fadd <8 x float> %cont_load4.i724, %4242, !dbg !874
  %4245 = fmul <8 x float> %cont_load22.i742, %4206, !dbg !875
  %4246 = fmul <8 x float> %cont_load26.i762, %4210, !dbg !876
  %4247 = fadd <8 x float> %cont_load2.i722, %4243, !dbg !874
  %4248 = fmul <8 x float> %4245, %4229, !dbg !782
  %4249 = fmul <8 x float> %cont_load24.i752, %4208, !dbg !877
  %4250 = fmul <8 x float> %4246, %4229, !dbg !787
  %4251 = add nsw <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, %cont_load30.i774, !dbg !878
  %4252 = getelementptr inbounds [0 x float], [0 x float]* %4221, i64 0, i32 %lower8, !dbg !380
  %vec_cast104.i868 = bitcast float* %4252 to <8 x float>*, !dbg !380
  %4253 = icmp ne <8 x i32> %4211, zeroinitializer, !dbg !785
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %4241, <8 x float>* %vec_cast104.i868, i32 4, <8 x i1> %4253), !dbg !785
  %4254 = fmul <8 x float> %4249, %4229, !dbg !785
  %4255 = getelementptr inbounds [0 x float], [0 x float]* %4238, i64 0, i32 %lower8, !dbg !380
  %vec_cast105.i869 = bitcast float* %4255 to <8 x float>*, !dbg !380
  %4256 = icmp ne <8 x i32> %4211, zeroinitializer, !dbg !380
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %4247, <8 x float>* %vec_cast105.i869, i32 4, <8 x i1> %4256), !dbg !380
  %4257 = getelementptr inbounds [0 x float], [0 x float]* %4226, i64 0, i32 %lower8, !dbg !380
  %vec_cast106.i870 = bitcast float* %4257 to <8 x float>*, !dbg !380
  %4258 = icmp ne <8 x i32> %4211, zeroinitializer, !dbg !380
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %4244, <8 x float>* %vec_cast106.i870, i32 4, <8 x i1> %4258), !dbg !380
  %4259 = getelementptr inbounds [0 x float], [0 x float]* %4222, i64 0, i32 %lower8, !dbg !380
  %vec_cast107.i871 = bitcast float* %4259 to <8 x float>*, !dbg !380
  %4260 = icmp ne <8 x i32> %4211, zeroinitializer, !dbg !380
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %4188, <8 x float>* %vec_cast107.i871, i32 4, <8 x i1> %4260), !dbg !380
  %4261 = getelementptr inbounds [0 x float], [0 x float]* %4224, i64 0, i32 %lower8, !dbg !380
  %vec_cast108.i872 = bitcast float* %4261 to <8 x float>*, !dbg !380
  %4262 = icmp ne <8 x i32> %4211, zeroinitializer, !dbg !380
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %4190, <8 x float>* %vec_cast108.i872, i32 4, <8 x i1> %4262), !dbg !380
  %4263 = getelementptr inbounds [0 x float], [0 x float]* %4240, i64 0, i32 %lower8, !dbg !380
  %vec_cast109.i873 = bitcast float* %4263 to <8 x float>*, !dbg !380
  %4264 = icmp ne <8 x i32> %4211, zeroinitializer, !dbg !380
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %4192, <8 x float>* %vec_cast109.i873, i32 4, <8 x i1> %4264), !dbg !380
  %4265 = getelementptr inbounds [0 x float], [0 x float]* %4239, i64 0, i32 %lower8, !dbg !380
  %vec_cast110.i874 = bitcast float* %4265 to <8 x float>*, !dbg !380
  %4266 = icmp ne <8 x i32> %4211, zeroinitializer, !dbg !380
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> <float 0x3F1A36E2E0000000, float 0x3F1A36E2E0000000, float 0x3F1A36E2E0000000, float 0x3F1A36E2E0000000, float 0x3F1A36E2E0000000, float 0x3F1A36E2E0000000, float 0x3F1A36E2E0000000, float 0x3F1A36E2E0000000>, <8 x float>* %vec_cast110.i874, i32 4, <8 x i1> %4266), !dbg !380
  %4267 = getelementptr inbounds [0 x float], [0 x float]* %4235, i64 0, i32 %lower8, !dbg !380
  %vec_cast111.i875 = bitcast float* %4267 to <8 x float>*, !dbg !380
  %4268 = icmp ne <8 x i32> %4211, zeroinitializer, !dbg !380
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> <float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000>, <8 x float>* %vec_cast111.i875, i32 4, <8 x i1> %4268), !dbg !380
  %4269 = getelementptr inbounds [0 x i32], [0 x i32]* %4233, i64 0, i32 %lower8, !dbg !380
  %vec_cast112.i876 = bitcast i32* %4269 to <8 x i32>*, !dbg !380
  %4270 = icmp ne <8 x i32> %4211, zeroinitializer, !dbg !380
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %3931, <8 x i32>* %vec_cast112.i876, i32 4, <8 x i1> %4270), !dbg !380
  %4271 = getelementptr inbounds [0 x float], [0 x float]* %4223, i64 0, i32 %lower8, !dbg !380
  %vec_cast113.i877 = bitcast float* %4271 to <8 x float>*, !dbg !380
  %4272 = icmp ne <8 x i32> %4211, zeroinitializer, !dbg !380
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %4248, <8 x float>* %vec_cast113.i877, i32 4, <8 x i1> %4272), !dbg !380
  %4273 = getelementptr inbounds [0 x float], [0 x float]* %4220, i64 0, i32 %lower8, !dbg !380
  %vec_cast114.i878 = bitcast float* %4273 to <8 x float>*, !dbg !380
  %4274 = icmp ne <8 x i32> %4211, zeroinitializer, !dbg !380
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %4254, <8 x float>* %vec_cast114.i878, i32 4, <8 x i1> %4274), !dbg !380
  %4275 = getelementptr inbounds [0 x float], [0 x float]* %4225, i64 0, i32 %lower8, !dbg !380
  %vec_cast115.i879 = bitcast float* %4275 to <8 x float>*, !dbg !380
  %4276 = icmp ne <8 x i32> %4211, zeroinitializer, !dbg !380
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %4250, <8 x float>* %vec_cast115.i879, i32 4, <8 x i1> %4276), !dbg !380
  %4277 = getelementptr inbounds [0 x float], [0 x float]* %4236, i64 0, i32 %lower8, !dbg !380
  %vec_cast116.i880 = bitcast float* %4277 to <8 x float>*, !dbg !380
  %4278 = icmp ne <8 x i32> %4211, zeroinitializer, !dbg !380
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %4232, <8 x float>* %vec_cast116.i880, i32 4, <8 x i1> %4278), !dbg !380
  %4279 = getelementptr inbounds [0 x i32], [0 x i32]* %4234, i64 0, i32 %lower8, !dbg !380
  %vec_cast117.i881 = bitcast i32* %4279 to <8 x i32>*, !dbg !380
  %4280 = icmp ne <8 x i32> %4211, zeroinitializer, !dbg !879
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %4251, <8 x i32>* %vec_cast117.i881, i32 4, <8 x i1> %4280), !dbg !879
  br label %_cont364, !dbg !380

_cont364:                                         ; preds = %expr_true363
  %4281 = add nsw i32 8, %lower8, !dbg !167
  br label %unroll_step7, !dbg !168

expr_true365:                                     ; preds = %unroll_step4
  %4282 = getelementptr inbounds [0 x float], [0 x float]* %28, i64 0, i32 %lower5, !dbg !127
  %4283 = getelementptr inbounds [0 x float], [0 x float]* %27, i64 0, i32 %lower5, !dbg !126
  %4284 = getelementptr inbounds [0 x float], [0 x float]* %29, i64 0, i32 %lower5, !dbg !128
  %4285 = getelementptr inbounds [0 x float], [0 x float]* %32, i64 0, i32 %lower5, !dbg !131
  %4286 = getelementptr inbounds [0 x float], [0 x float]* %31, i64 0, i32 %lower5, !dbg !130
  %4287 = getelementptr inbounds [0 x float], [0 x float]* %30, i64 0, i32 %lower5, !dbg !129
  %4288 = load float, float* %4286, align 4, !dbg !130
  %4289 = load float, float* %4285, align 4, !dbg !131
  %4290 = load float, float* %4284, align 4, !dbg !128
  %4291 = load float, float* %4287, align 4, !dbg !129
  %4292 = fcmp olt float 0.000000e+00, %4291, !dbg !170
  %4293 = fsub float -0.000000e+00, %4291, !dbg !169
  %4294 = select i1 %4292, float %4291, float %4293, !dbg !171
  %4295 = load float, float* %4282, align 4, !dbg !127
  %4296 = fcmp olt float %4294, 0x3E45798EE0000000, !dbg !171
  %4297 = load float, float* %4283, align 4, !dbg !126
  br i1 %4296, label %expr_true367, label %expr_false366, !dbg !172

expr_false366:                                    ; preds = %expr_true365
  br label %safe_rcp_cont368, !dbg !173

expr_true367:                                     ; preds = %expr_true365
  br label %safe_rcp_cont368, !dbg !174

safe_rcp_cont368:                                 ; preds = %expr_true367, %expr_false366
  %4298 = fsub float -0.000000e+00, %4295, !dbg !169
  %4299 = fcmp olt float 0.000000e+00, %4295, !dbg !170
  %4300 = select i1 %4299, float %4295, float %4298, !dbg !171
  %4301 = fcmp olt float %4300, 0x3E45798EE0000000, !dbg !171
  br i1 %4301, label %expr_true370, label %expr_false369, !dbg !172

expr_false369:                                    ; preds = %safe_rcp_cont368
  br label %safe_rcp_cont371, !dbg !173

expr_true370:                                     ; preds = %safe_rcp_cont368
  br label %safe_rcp_cont371, !dbg !174

safe_rcp_cont371:                                 ; preds = %expr_true370, %expr_false369
  %4302 = fcmp olt float 0.000000e+00, %4297, !dbg !170
  %4303 = fsub float -0.000000e+00, %4297, !dbg !169
  %4304 = select i1 %4302, float %4297, float %4303, !dbg !171
  %4305 = fcmp olt float %4304, 0x3E45798EE0000000, !dbg !171
  br i1 %4305, label %expr_true373, label %expr_false372, !dbg !172

expr_false372:                                    ; preds = %safe_rcp_cont371
  br label %safe_rcp_cont374, !dbg !173

expr_true373:                                     ; preds = %safe_rcp_cont371
  br label %safe_rcp_cont374, !dbg !174

safe_rcp_cont374:                                 ; preds = %expr_true373, %expr_false372
  %4306 = getelementptr inbounds [0 x i32], [0 x i32]* %36, i64 0, i32 %lower5, !dbg !135
  %4307 = getelementptr inbounds [0 x i32], [0 x i32]* %40, i64 0, i32 %lower5, !dbg !139
  %4308 = getelementptr inbounds [0 x float], [0 x float]* %37, i64 0, i32 %lower5, !dbg !136
  %4309 = getelementptr inbounds [0 x float], [0 x float]* %42, i64 0, i32 %lower5, !dbg !141
  %4310 = getelementptr inbounds [0 x float], [0 x float]* %35, i64 0, i32 %lower5, !dbg !134
  %4311 = getelementptr inbounds [0 x i32], [0 x i32]* %44, i64 0, i32 %lower5, !dbg !143
  %4312 = load i32, i32* %4306, align 4, !dbg !135
  %4313 = getelementptr inbounds [0 x float], [0 x float]* %41, i64 0, i32 %lower5, !dbg !140
  %4314 = getelementptr inbounds [0 x float], [0 x float]* %39, i64 0, i32 %lower5, !dbg !138
  %4315 = getelementptr inbounds [0 x float], [0 x float]* %43, i64 0, i32 %lower5, !dbg !142
  %4316 = getelementptr inbounds [0 x float], [0 x float]* %34, i64 0, i32 %lower5, !dbg !133
  %4317 = getelementptr inbounds [0 x %2], [0 x %2]* %face_normals_1042601, i64 0, i32 %4312, !dbg !175
  %4318 = mul nsw i32 4, %4312, !dbg !176
  %4319 = load float, float* %4308, align 4, !dbg !136
  %4320 = add nsw i32 2, %4318, !dbg !177
  %4321 = add nsw i32 1, %4318, !dbg !178
  %4322 = getelementptr inbounds [0 x i32], [0 x i32]* %indices_1042603, i64 0, i32 %4318, !dbg !179
  %4323 = getelementptr inbounds [0 x i32], [0 x i32]* %indices_1042603, i64 0, i32 %4320, !dbg !180
  %4324 = getelementptr inbounds [0 x i32], [0 x i32]* %indices_1042603, i64 0, i32 %4321, !dbg !181
  %4325 = load float, float* %4310, align 4, !dbg !134
  %4326 = fsub float 1.000000e+00, %4325, !dbg !182
  %4327 = load float, float* %4316, align 4, !dbg !133
  %4328 = fsub float %4326, %4327, !dbg !182
  %4329 = load i32, i32* %4311, align 4, !dbg !143
  %4330 = load float, float* %4315, align 4, !dbg !142
  %4331 = load float, float* %4314, align 4, !dbg !138
  %4332 = load float, float* %4309, align 4, !dbg !141
  %4333 = insertvalue %5 undef, float %4330, 0, !dbg !183
  %4334 = insertvalue %5 %4333, float %4331, 1, !dbg !183
  %4335 = insertvalue %5 %4334, float %4332, 2, !dbg !183
  %4336 = load float, float* %4313, align 4, !dbg !140
  %4337 = load i32, i32* %4307, align 4, !dbg !139
  %4338 = insertvalue %4 undef, i32 %4329, 0, !dbg !184
  %4339 = insertvalue %4 %4338, %5 %4335, 1, !dbg !184
  %4340 = insertvalue %4 %4339, float %4336, 2, !dbg !184
  %4341 = insertvalue %4 %4340, i32 %4337, 3, !dbg !184
  store %4 %4341, %4* %state_1043564, align 4, !dbg !185
  %4342 = load i32, i32* %4322, align 4, !dbg !179
  %4343 = load i32, i32* %4324, align 4, !dbg !181
  %4344 = getelementptr inbounds [0 x %2], [0 x %2]* %normals_1042600, i64 0, i32 %4342, !dbg !186
  %4345 = load i32, i32* %4323, align 4, !dbg !180
  %4346 = getelementptr inbounds [0 x %2], [0 x %2]* %normals_1042600, i64 0, i32 %4343, !dbg !186
  %4347 = load %2, %2* %4317, align 4, !dbg !175
  %4348 = getelementptr inbounds [0 x %2], [0 x %2]* %normals_1042600, i64 0, i32 %4345, !dbg !186
  %4349 = load %2, %2* %4344, align 4, !dbg !186
  %4350 = load %2, %2* %4346, align 4, !dbg !186
  %4351 = extractvalue %2 %4349, 2, !dbg !187
  %4352 = extractvalue %2 %4349, 0, !dbg !188
  %4353 = extractvalue %2 %4349, 1, !dbg !189
  %4354 = fmul float %4328, %4351, !dbg !190
  %4355 = fmul float %4328, %4352, !dbg !190
  %4356 = fmul float %4328, %4353, !dbg !190
  %4357 = load %2, %2* %4348, align 4, !dbg !186
  %4358 = extractvalue %2 %4350, 2, !dbg !191
  %4359 = extractvalue %2 %4350, 0, !dbg !192
  %4360 = extractvalue %2 %4350, 1, !dbg !193
  %4361 = fmul float %4325, %4358, !dbg !194
  %4362 = fmul float %4325, %4359, !dbg !194
  %4363 = fmul float %4325, %4360, !dbg !194
  %4364 = extractvalue %2 %4357, 2, !dbg !195
  %4365 = extractvalue %2 %4357, 0, !dbg !196
  %4366 = extractvalue %2 %4357, 1, !dbg !197
  %4367 = fadd float %4354, %4361, !dbg !190
  %4368 = fadd float %4355, %4362, !dbg !190
  %4369 = fadd float %4356, %4363, !dbg !190
  %4370 = fmul float %4327, %4364, !dbg !198
  %4371 = fmul float %4327, %4365, !dbg !198
  %4372 = fmul float %4327, %4366, !dbg !198
  %4373 = fadd float %4367, %4370, !dbg !190
  %4374 = fadd float %4368, %4371, !dbg !190
  %4375 = fadd float %4369, %4372, !dbg !190
  %4376 = fmul float %4373, %4373, !dbg !199
  %4377 = fmul float %4374, %4374, !dbg !200
  %4378 = fmul float %4375, %4375, !dbg !201
  %4379 = fadd float %4377, %4378, !dbg !200
  %4380 = fadd float %4379, %4376, !dbg !200
  %4381 = call float @llvm.sqrt.f32(float %4380), !dbg !202
  br label %vec3_len_cont375, !dbg !202

vec3_len_cont375:                                 ; preds = %safe_rcp_cont374
  %vec3_len376 = phi float [ %4381, %safe_rcp_cont374 ]
  %4382 = extractvalue %2 %4347, 0, !dbg !204
  %4383 = extractvalue %2 %4347, 1, !dbg !205
  %4384 = extractvalue %2 %4347, 2, !dbg !203
  %4385 = fmul float %4291, %4382, !dbg !200
  %4386 = fmul float %4295, %4383, !dbg !201
  %4387 = fmul float %4297, %4384, !dbg !199
  %4388 = fadd float %4385, %4386, !dbg !200
  %4389 = fadd float %4388, %4387, !dbg !200
  %is_entering569 = fcmp ole float %4389, 0.000000e+00, !dbg !206
  br i1 %is_entering569, label %expr_true378, label %expr_false377, !dbg !207

expr_false377:                                    ; preds = %vec3_len_cont375
  %4390 = fsub float -0.000000e+00, %4384, !dbg !208
  %4391 = fsub float -0.000000e+00, %4382, !dbg !208
  %4392 = fsub float -0.000000e+00, %4383, !dbg !208
  %4393 = insertvalue %2 undef, float %4391, 0, !dbg !209
  %4394 = insertvalue %2 %4393, float %4392, 1, !dbg !209
  %4395 = insertvalue %2 %4394, float %4390, 2, !dbg !209
  br label %if_join379, !dbg !210

expr_true378:                                     ; preds = %vec3_len_cont375
  br label %if_join379, !dbg !210

if_join379:                                       ; preds = %expr_true378, %expr_false377
  %if_join380 = phi %2 [ %4347, %expr_true378 ], [ %4395, %expr_false377 ]
  %4396 = fdiv float 1.000000e+00, %vec3_len376, !dbg !211
  %4397 = fmul float %4374, %4396, !dbg !212
  %4398 = fmul float %4375, %4396, !dbg !212
  %4399 = fmul float %4373, %4396, !dbg !212
  %4400 = fmul float %4291, %4397, !dbg !200
  %4401 = fmul float %4295, %4398, !dbg !201
  %4402 = fmul float %4297, %4399, !dbg !199
  %4403 = fadd float %4400, %4401, !dbg !200
  %4404 = fadd float %4403, %4402, !dbg !200
  %4405 = fcmp ole float %4404, 0.000000e+00, !dbg !213
  br i1 %4405, label %expr_true382, label %expr_false381, !dbg !214

expr_false381:                                    ; preds = %if_join379
  %4406 = fsub float -0.000000e+00, %4397, !dbg !208
  %4407 = fsub float -0.000000e+00, %4399, !dbg !208
  %4408 = fsub float -0.000000e+00, %4398, !dbg !208
  %4409 = insertvalue %2 undef, float %4406, 0, !dbg !209
  %4410 = insertvalue %2 %4409, float %4408, 1, !dbg !209
  %4411 = insertvalue %2 %4410, float %4407, 2, !dbg !209
  br label %if_join383, !dbg !215

expr_true382:                                     ; preds = %if_join379
  %4412 = insertvalue %2 undef, float %4397, 0, !dbg !209
  %4413 = insertvalue %2 %4412, float %4398, 1, !dbg !209
  %4414 = insertvalue %2 %4413, float %4399, 2, !dbg !209
  br label %if_join383, !dbg !215

if_join383:                                       ; preds = %expr_true382, %expr_false381
  %if_join384 = phi %2 [ %4414, %expr_true382 ], [ %4411, %expr_false381 ]
  %4415 = extractvalue %2 %if_join380, 0, !dbg !204
  %4416 = load i32, i32* %24, align 4, !dbg !259
  %4417 = extractvalue %2 %if_join380, 2, !dbg !203
  %4418 = extractvalue %2 %if_join384, 1, !dbg !232
  %4419 = extractvalue %2 %if_join380, 1, !dbg !205
  %4420 = fmul float %4418, %4298, !dbg !201
  %4421 = extractvalue %2 %if_join384, 2, !dbg !238
  %4422 = icmp eq i32 %4416, 0, !dbg !253
  %4423 = extractvalue %2 %if_join384, 0, !dbg !233
  %4424 = fmul float %4421, %4303, !dbg !199
  %4425 = select i1 %4422, i32 1, i32 %4416, !dbg !260
  %4426 = fmul float %4423, %4293, !dbg !200
  %4427 = shl i32 %4425, 13, !dbg !261
  %4428 = fadd float %4426, %4420, !dbg !200
  %4429 = xor i32 %4425, %4427, !dbg !262
  %4430 = fadd float %4428, %4424, !dbg !200
  %4431 = lshr i32 %4429, 17, !dbg !263
  %4432 = fmul float 2.000000e+00, %4430, !dbg !251
  %4433 = xor i32 %4429, %4431, !dbg !264
  %4434 = fmul float %4421, %4432, !dbg !212
  %4435 = fmul float %4423, %4432, !dbg !212
  %4436 = fmul float %4418, %4432, !dbg !212
  %4437 = shl i32 %4433, 5, !dbg !265
  %4438 = fsub float %4434, %4303, !dbg !252
  %4439 = fsub float %4435, %4293, !dbg !252
  %4440 = fsub float %4436, %4298, !dbg !252
  %4441 = xor i32 %4433, %4437, !dbg !266
  store i32 %4441, i32* %24, align 4, !dbg !267
  %4442 = icmp eq i32 %4441, 0, !dbg !253
  %4443 = select i1 %4442, i32 1, i32 %4441, !dbg !260
  %4444 = and i32 8388607, %4441, !dbg !271
  %4445 = shl i32 %4443, 13, !dbg !261
  %4446 = or i32 1065353216, %4444, !dbg !273
  %4447 = xor i32 %4443, %4445, !dbg !262
  %4448 = bitcast i32 %4446 to float, !dbg !275
  %4449 = lshr i32 %4447, 17, !dbg !263
  %4450 = fsub float %4448, 1.000000e+00, !dbg !275
  %4451 = xor i32 %4447, %4449, !dbg !264
  %4452 = fcmp ole float 5.000000e-01, %4450, !dbg !276
  %4453 = shl i32 %4451, 5, !dbg !265
  %4454 = xor i32 %4451, %4453, !dbg !266
  %4455 = icmp eq i32 %4454, 0, !dbg !253
  %4456 = select i1 %4455, i32 1, i32 %4454, !dbg !260
  %4457 = shl i32 %4456, 13, !dbg !261
  %4458 = and i32 8388607, %4454, !dbg !271
  %4459 = xor i32 %4456, %4457, !dbg !262
  %4460 = or i32 1065353216, %4458, !dbg !273
  %4461 = lshr i32 %4459, 17, !dbg !263
  %4462 = bitcast i32 %4460 to float, !dbg !275
  %4463 = xor i32 %4459, %4461, !dbg !264
  %4464 = fsub float %4462, 1.000000e+00, !dbg !275
  %4465 = shl i32 %4463, 5, !dbg !265
  %phi570 = fmul float 0x401921FB60000000, %4464, !dbg !277
  %4466 = xor i32 %4463, %4465, !dbg !266
  %4467 = and i32 8388607, %4466, !dbg !271
  %4468 = or i32 1065353216, %4467, !dbg !273
  %4469 = bitcast i32 %4468 to float, !dbg !275
  %4470 = fsub float %4469, 1.000000e+00, !dbg !275
  br i1 %4452, label %expr_true415, label %expr_false385, !dbg !278

expr_false385:                                    ; preds = %if_join383
  store i32 %4454, i32* %24, align 4, !dbg !267
  %4471 = bitcast float %4470 to i32, !dbg !279
  %4472 = and i32 8388607, %4471, !dbg !281
  %4473 = uitofp i32 %4471 to float, !dbg !280
  %y571 = fmul float 0x3E80000000000000, %4473, !dbg !282
  store i32 %4466, i32* %24, align 4, !dbg !267
  %mx572 = or i32 1056964608, %4472, !dbg !283
  %4474 = fsub float %y571, 0x405F0E6EE0000000, !dbg !284
  %4475 = bitcast i32 %mx572 to float, !dbg !285
  %4476 = fmul float 0x3FF7F7EEA0000000, %4475, !dbg !286
  %4477 = fadd float 0x3FD6889F20000000, %4475, !dbg !287
  %4478 = fsub float %4474, %4476, !dbg !284
  %4479 = fdiv float 0x3FFB9D3460000000, %4477, !dbg !288
  %4480 = fsub float %4478, %4479, !dbg !284
  %4481 = fmul float 0x3F851D07E0000000, %4480, !dbg !289
  %4482 = fcmp olt float %4481, -1.260000e+02, !dbg !290
  %4483 = fcmp olt float %4481, 0.000000e+00, !dbg !291
  %4484 = select i1 %4482, float -1.260000e+02, float %4481, !dbg !292
  %4485 = select i1 %4483, float 1.000000e+00, float 0.000000e+00, !dbg !293
  %4486 = fadd float 0x405E518A20000000, %4484, !dbg !294
  %4487 = fptosi float %4484 to i32, !dbg !295
  %4488 = sitofp i32 %4487 to float, !dbg !296
  %4489 = fsub float %4484, %4488, !dbg !297
  %z573 = fadd float %4489, %4485, !dbg !297
  %4490 = fmul float 0x3FF7D791A0000000, %z573, !dbg !298
  %4491 = fsub float 0x40135EBF00000000, %z573, !dbg !299
  %4492 = fdiv float 0x403BBA5FC0000000, %4491, !dbg !300
  %4493 = fadd float %4486, %4492, !dbg !294
  %4494 = fsub float %4493, %4490, !dbg !294
  %4495 = fmul float 0x4160000000000000, %4494, !dbg !301
  %4496 = fptosi float %4495 to i32, !dbg !302
  %4497 = bitcast i32 %4496 to float, !dbg !303
  %4498 = call float @llvm.minnum.f32(float %4497, float 1.000000e+00), !dbg !304
  br label %_cont386, !dbg !304

_cont386:                                         ; preds = %expr_false385
  %c387 = phi float [ %4498, %expr_false385 ]
  %4499 = fmul float %c387, %c387, !dbg !305
  %4500 = fsub float 1.000000e+00, %4499, !dbg !306
  %4501 = call float @llvm.sqrt.f32(float %4500), !dbg !307
  br label %_cont388, !dbg !307

_cont388:                                         ; preds = %_cont386
  %s389 = phi float [ %4501, %_cont386 ]
  %4502 = call float @llvm.cos.f32(float %phi570), !dbg !308
  br label %_cont390, !dbg !308

_cont390:                                         ; preds = %_cont388
  %4503 = phi float [ %4502, %_cont388 ]
  %4504 = call float @llvm.sin.f32(float %phi570), !dbg !309
  br label %_cont391, !dbg !309

_cont391:                                         ; preds = %_cont390
  %4505 = phi float [ %4504, %_cont390 ]
  %4506 = fmul float %4440, %c387, !dbg !199
  %y574 = fmul float %s389, %4505, !dbg !313
  %4507 = fmul float %4439, %4440, !dbg !233
  %4508 = fmul float %4438, %c387, !dbg !199
  %x575 = fmul float %s389, %4503, !dbg !311
  %4509 = fmul float %4440, %4440, !dbg !310
  %4510 = fcmp ole float 0.000000e+00, %4438, !dbg !238
  %4511 = fsub float -0.000000e+00, %4440, !dbg !312
  %4512 = fmul float %4511, %y574, !dbg !201
  %4513 = fmul float %4439, %c387, !dbg !199
  %4514 = select i1 %4510, float 1.000000e+00, float -1.000000e+00, !dbg !314
  %4515 = fsub float -0.000000e+00, %4514, !dbg !316
  %4516 = fmul float %4514, %4439, !dbg !315
  %4517 = fadd float %4514, %4438, !dbg !317
  %4518 = fmul float %4515, %4439, !dbg !316
  %4519 = fmul float %4516, %4439, !dbg !315
  %a576 = fdiv float -1.000000e+00, %4517, !dbg !318
  %4520 = fmul float %4518, %x575, !dbg !200
  %4521 = fmul float %4519, %a576, !dbg !315
  %b577 = fmul float %4507, %a576, !dbg !233
  %4522 = fmul float %4509, %a576, !dbg !310
  %4523 = fadd float %4520, %4512, !dbg !200
  %4524 = fadd float 1.000000e+00, %4521, !dbg !319
  %4525 = fmul float %b577, %y574, !dbg !201
  %4526 = fmul float %4514, %b577, !dbg !320
  %4527 = fadd float %4514, %4522, !dbg !321
  %4528 = fadd float %4523, %4508, !dbg !200
  %4529 = fmul float %4524, %x575, !dbg !200
  %4530 = fadd float %4529, %4525, !dbg !200
  %4531 = fmul float %4526, %x575, !dbg !200
  %4532 = fmul float %4527, %y574, !dbg !201
  %4533 = fmul float %4528, %4421, !dbg !199
  %4534 = fadd float %4530, %4513, !dbg !200
  %4535 = fadd float %4531, %4532, !dbg !200
  %4536 = fmul float %4534, %4423, !dbg !200
  %4537 = fadd float %4535, %4506, !dbg !200
  %4538 = fmul float %4537, %4418, !dbg !201
  %4539 = fadd float %4536, %4538, !dbg !200
  %4540 = fadd float %4539, %4533, !dbg !200
  %4541 = fcmp ole float 0.000000e+00, %4540, !dbg !322
  br i1 %4541, label %expr_true393, label %expr_false392, !dbg !323

expr_false392:                                    ; preds = %_cont391
  br label %positive_cos_cont394, !dbg !324

expr_true393:                                     ; preds = %_cont391
  br label %positive_cos_cont394, !dbg !324

positive_cos_cont394:                             ; preds = %expr_true393, %expr_false392
  %cos395 = phi float [ %4540, %expr_true393 ], [ 0.000000e+00, %expr_false392 ]
  %4542 = fdiv float %4470, %c387, !dbg !325
  %4543 = fcmp une float %c387, 0.000000e+00, !dbg !326
  %4544 = select i1 %4543, float %4542, float 0.000000e+00, !dbg !327
  %4545 = fmul float 9.700000e+01, %4544, !dbg !328
  %pdf578 = fmul float 0x3FC45F3060000000, %4545, !dbg !328
  %4546 = fcmp olt float 0.000000e+00, %pdf578, !dbg !329
  br i1 %4546, label %expr_true397, label %expr_false396, !dbg !330

expr_false396:                                    ; preds = %positive_cos_cont394
  br label %jump_true399, !dbg !159

expr_true397:                                     ; preds = %positive_cos_cont394
  %4547 = fmul float %4528, %4417, !dbg !199
  %4548 = fmul float %4537, %4419, !dbg !201
  %4549 = fmul float %4534, %4415, !dbg !200
  %4550 = fadd float %4549, %4548, !dbg !200
  %4551 = fadd float %4550, %4547, !dbg !200
  %4552 = fcmp olt float 0.000000e+00, %4551, !dbg !331
  br i1 %4552, label %expr_true400, label %expr_false398, !dbg !332

expr_false398:                                    ; preds = %expr_true397
  br label %jump_true399, !dbg !159

jump_true399:                                     ; preds = %expr_false398, %expr_false396
  br label %infix_result401, !dbg !159

expr_true400:                                     ; preds = %expr_true397
  br label %infix_result401, !dbg !159

infix_result401:                                  ; preds = %expr_true400, %jump_true399
  %valid402 = phi i1 [ true, %expr_true400 ], [ false, %jump_true399 ]
  br i1 %valid402, label %expr_true404, label %expr_false403, !dbg !333

expr_false403:                                    ; preds = %infix_result401
  br label %if_join405, !dbg !334

expr_true404:                                     ; preds = %infix_result401
  br label %if_join405, !dbg !334

if_join405:                                       ; preds = %expr_true404, %expr_false403
  %if_join406 = phi float [ %pdf578, %expr_true404 ], [ 1.000000e+00, %expr_false403 ]
  br i1 %valid402, label %expr_true408, label %expr_false407, !dbg !129

expr_false407:                                    ; preds = %if_join405
  br label %if_join409, !dbg !335

expr_true408:                                     ; preds = %if_join405
  %4553 = fmul float 9.800000e+01, %pdf578, !dbg !336
  %4554 = fdiv float %4553, 9.700000e+01, !dbg !336
  %4555 = fmul float 0.000000e+00, %4554, !dbg !253
  %4556 = fmul float 1.000000e+00, %4554, !dbg !255
  %4557 = insertvalue %5 undef, float %4555, 0, !dbg !183
  %4558 = insertvalue %5 %4557, float %4556, 1, !dbg !183
  %4559 = insertvalue %5 %4558, float %4555, 2, !dbg !183
  br label %if_join409, !dbg !335

if_join409:                                       ; preds = %expr_true408, %expr_false407
  %if_join410 = phi %5 [ %4559, %expr_true408 ], [ zeroinitializer, %expr_false407 ]
  br i1 %4541, label %expr_true412, label %expr_false411, !dbg !323

expr_false411:                                    ; preds = %if_join409
  br label %positive_cos_cont413, !dbg !324

expr_true412:                                     ; preds = %if_join409
  br label %positive_cos_cont413, !dbg !324

positive_cos_cont413:                             ; preds = %expr_true412, %expr_false411
  %positive_cos414 = phi float [ %4540, %expr_true412 ], [ 0.000000e+00, %expr_false411 ]
  %4560 = extractvalue %5 %if_join410, 1, !dbg !338
  %4561 = fmul float 0x3FD45F3060000000, %positive_cos414, !dbg !340
  %4562 = fmul float 5.000000e-01, %if_join406, !dbg !247
  %4563 = fmul float 5.000000e-01, %4560, !dbg !344
  %4564 = insertvalue %2 undef, float %4534, 0, !dbg !209
  %4565 = insertvalue %2 %4564, float %4537, 1, !dbg !209
  %4566 = insertvalue %2 %4565, float %4528, 2, !dbg !209
  %4567 = fadd float 0x3FC45F3060000000, %4563, !dbg !337
  %4568 = extractvalue %5 %if_join410, 2, !dbg !341
  %4569 = fmul float 5.000000e-01, %4561, !dbg !250
  %4570 = extractvalue %5 %if_join410, 0, !dbg !339
  %4571 = fadd float %4569, %4562, !dbg !250
  %4572 = insertvalue %6 undef, %2 %4566, 0, !dbg !343
  %4573 = insertvalue %6 %4572, float %if_join406, 1, !dbg !343
  %4574 = insertvalue %6 %4573, float %cos395, 2, !dbg !343
  %4575 = insertvalue %6 %4574, %5 %if_join410, 3, !dbg !343
  %4576 = fmul float 5.000000e-01, %4568, !dbg !346
  %4577 = fmul float 5.000000e-01, %4570, !dbg !345
  %4578 = fadd float 0.000000e+00, %4576, !dbg !314
  %4579 = fadd float 0.000000e+00, %4577, !dbg !342
  %4580 = insertvalue %5 undef, float %4579, 0, !dbg !183
  %4581 = insertvalue %5 %4580, float %4567, 1, !dbg !183
  %4582 = insertvalue %5 %4581, float %4578, 2, !dbg !183
  br label %if_join445, !dbg !347

expr_true415:                                     ; preds = %if_join383
  %4583 = fsub float 1.000000e+00, %4470, !dbg !348
  store i32 %4454, i32* %24, align 4, !dbg !267
  store i32 %4466, i32* %24, align 4, !dbg !267
  %4584 = call float @llvm.sqrt.f32(float %4583), !dbg !349
  br label %_cont416, !dbg !349

_cont416:                                         ; preds = %expr_true415
  %c417 = phi float [ %4584, %expr_true415 ]
  %4585 = call float @llvm.sqrt.f32(float %4470), !dbg !350
  br label %_cont418, !dbg !350

_cont418:                                         ; preds = %_cont416
  %s419 = phi float [ %4585, %_cont416 ]
  %4586 = call float @llvm.cos.f32(float %phi570), !dbg !308
  br label %_cont420, !dbg !308

_cont420:                                         ; preds = %_cont418
  %4587 = phi float [ %4586, %_cont418 ]
  %4588 = call float @llvm.sin.f32(float %phi570), !dbg !309
  br label %_cont421, !dbg !309

_cont421:                                         ; preds = %_cont420
  %4589 = phi float [ %4588, %_cont420 ]
  %4590 = fmul float %4423, %c417, !dbg !199
  %4591 = fcmp ole float 0.000000e+00, %4421, !dbg !238
  %4592 = fmul float 0x3FD45F3060000000, %c417, !dbg !340
  %4593 = fsub float -0.000000e+00, %4418, !dbg !312
  %y579 = fmul float %s419, %4589, !dbg !313
  %4594 = fmul float %4593, %y579, !dbg !201
  %4595 = fmul float %4423, %4418, !dbg !233
  %4596 = fmul float %4421, %c417, !dbg !199
  %x580 = fmul float %s419, %4587, !dbg !311
  %4597 = fmul float %4418, %c417, !dbg !199
  %4598 = select i1 %4591, float 1.000000e+00, float -1.000000e+00, !dbg !314
  %4599 = fmul float %4418, %4418, !dbg !310
  %4600 = fcmp olt float 0.000000e+00, %4592, !dbg !329
  %4601 = fmul float %4598, %4423, !dbg !315
  %4602 = fsub float -0.000000e+00, %4598, !dbg !316
  %4603 = fadd float %4598, %4421, !dbg !317
  %4604 = fmul float %4601, %4423, !dbg !315
  %4605 = fmul float %4602, %4423, !dbg !316
  %a581 = fdiv float -1.000000e+00, %4603, !dbg !318
  %4606 = fmul float %4604, %a581, !dbg !315
  %4607 = fmul float %4605, %x580, !dbg !200
  %b582 = fmul float %4595, %a581, !dbg !233
  %4608 = fmul float %4599, %a581, !dbg !310
  %4609 = fadd float 1.000000e+00, %4606, !dbg !319
  %4610 = fadd float %4607, %4594, !dbg !200
  %4611 = fmul float %b582, %y579, !dbg !201
  %4612 = fmul float %4598, %b582, !dbg !320
  %4613 = fadd float %4598, %4608, !dbg !321
  %4614 = fmul float %4609, %x580, !dbg !200
  %4615 = fadd float %4610, %4596, !dbg !200
  %4616 = fadd float %4614, %4611, !dbg !200
  %4617 = fmul float %4612, %x580, !dbg !200
  %4618 = fmul float %4613, %y579, !dbg !201
  %4619 = fadd float %4616, %4590, !dbg !200
  %4620 = fadd float %4617, %4618, !dbg !200
  %4621 = fadd float %4620, %4597, !dbg !200
  br i1 %4600, label %expr_true423, label %expr_false422, !dbg !330

expr_false422:                                    ; preds = %_cont421
  br label %jump_true425, !dbg !159

expr_true423:                                     ; preds = %_cont421
  %4622 = fmul float %4615, %4417, !dbg !199
  %4623 = fmul float %4619, %4415, !dbg !200
  %4624 = fmul float %4621, %4419, !dbg !201
  %4625 = fadd float %4623, %4624, !dbg !200
  %4626 = fadd float %4625, %4622, !dbg !200
  %4627 = fcmp olt float 0.000000e+00, %4626, !dbg !331
  br i1 %4627, label %expr_true426, label %expr_false424, !dbg !332

expr_false424:                                    ; preds = %expr_true423
  br label %jump_true425, !dbg !159

jump_true425:                                     ; preds = %expr_false424, %expr_false422
  br label %infix_result427, !dbg !159

expr_true426:                                     ; preds = %expr_true423
  br label %infix_result427, !dbg !159

infix_result427:                                  ; preds = %expr_true426, %jump_true425
  %valid428 = phi i1 [ true, %expr_true426 ], [ false, %jump_true425 ]
  br i1 %valid428, label %expr_true430, label %expr_false429, !dbg !333

expr_false429:                                    ; preds = %infix_result427
  br label %if_join431, !dbg !334

expr_true430:                                     ; preds = %infix_result427
  br label %if_join431, !dbg !334

if_join431:                                       ; preds = %expr_true430, %expr_false429
  %if_join432 = phi float [ %4592, %expr_true430 ], [ 1.000000e+00, %expr_false429 ]
  br i1 %valid428, label %expr_true434, label %expr_false433, !dbg !129

expr_false433:                                    ; preds = %if_join431
  br label %if_join435, !dbg !335

expr_true434:                                     ; preds = %if_join431
  br label %if_join435, !dbg !335

if_join435:                                       ; preds = %expr_true434, %expr_false433
  %if_join436 = phi %5 [ { float 0.000000e+00, float 0x3FD45F3060000000, float 0.000000e+00 }, %expr_true434 ], [ zeroinitializer, %expr_false433 ]
  %4628 = fmul float %4615, %4438, !dbg !199
  %4629 = fmul float %4621, %4440, !dbg !201
  %4630 = fmul float %4619, %4439, !dbg !200
  %4631 = fadd float %4630, %4629, !dbg !200
  %4632 = fadd float %4631, %4628, !dbg !200
  %4633 = fcmp ole float 0.000000e+00, %4632, !dbg !322
  br i1 %4633, label %expr_true438, label %expr_false437, !dbg !323

expr_false437:                                    ; preds = %if_join435
  br label %positive_cos_cont439, !dbg !324

expr_true438:                                     ; preds = %if_join435
  br label %positive_cos_cont439, !dbg !324

positive_cos_cont439:                             ; preds = %expr_true438, %expr_false437
  %cos440 = phi float [ %4632, %expr_true438 ], [ 0.000000e+00, %expr_false437 ]
  br i1 %4633, label %expr_true442, label %expr_false441, !dbg !323

expr_false441:                                    ; preds = %positive_cos_cont439
  br label %positive_cos_cont443, !dbg !324

expr_true442:                                     ; preds = %positive_cos_cont439
  br label %positive_cos_cont443, !dbg !324

positive_cos_cont443:                             ; preds = %expr_true442, %expr_false441
  %cos444 = phi float [ %4632, %expr_true442 ], [ 0.000000e+00, %expr_false441 ]
  %4634 = insertvalue %2 undef, float %4619, 0, !dbg !209
  %4635 = insertvalue %2 %4634, float %4621, 1, !dbg !209
  %4636 = insertvalue %2 %4635, float %4615, 2, !dbg !209
  %4637 = extractvalue %5 %if_join436, 1, !dbg !351
  %4638 = fmul float 5.000000e-01, %if_join432, !dbg !250
  %4639 = extractvalue %5 %if_join436, 0, !dbg !353
  %4640 = fmul float 5.000000e-01, %4639, !dbg !342
  %4641 = bitcast float %cos444 to i32, !dbg !279
  %4642 = bitcast float %cos440 to i32, !dbg !279
  %4643 = extractvalue %5 %if_join436, 2, !dbg !352
  %4644 = and i32 8388607, %4642, !dbg !281
  %4645 = uitofp i32 %4642 to float, !dbg !280
  %4646 = uitofp i32 %4641 to float, !dbg !280
  %4647 = fmul float 5.000000e-01, %4637, !dbg !337
  %4648 = insertvalue %6 undef, %2 %4636, 0, !dbg !343
  %4649 = insertvalue %6 %4648, float %if_join432, 1, !dbg !343
  %4650 = insertvalue %6 %4649, float %c417, 2, !dbg !343
  %4651 = insertvalue %6 %4650, %5 %if_join436, 3, !dbg !343
  %4652 = and i32 8388607, %4641, !dbg !281
  %4653 = fmul float 5.000000e-01, %4643, !dbg !314
  %mx583 = or i32 1056964608, %4644, !dbg !283
  %y584 = fmul float 0x3E80000000000000, %4645, !dbg !282
  %y585 = fmul float 0x3E80000000000000, %4646, !dbg !282
  %mx586 = or i32 1056964608, %4652, !dbg !283
  %4654 = bitcast i32 %mx583 to float, !dbg !285
  %4655 = fsub float %y584, 0x405F0E6EE0000000, !dbg !284
  %4656 = fsub float %y585, 0x405F0E6EE0000000, !dbg !284
  %4657 = bitcast i32 %mx586 to float, !dbg !285
  %4658 = fmul float 0x3FF7F7EEA0000000, %4654, !dbg !286
  %4659 = fadd float 0x3FD6889F20000000, %4654, !dbg !287
  %4660 = fsub float %4655, %4658, !dbg !284
  %4661 = fmul float 0x3FF7F7EEA0000000, %4657, !dbg !286
  %4662 = fadd float 0x3FD6889F20000000, %4657, !dbg !287
  %4663 = fdiv float 0x3FFB9D3460000000, %4659, !dbg !288
  %4664 = fsub float %4660, %4663, !dbg !284
  %4665 = fsub float %4656, %4661, !dbg !284
  %4666 = fdiv float 0x3FFB9D3460000000, %4662, !dbg !288
  %4667 = fmul float 9.600000e+01, %4664, !dbg !289
  %4668 = fsub float %4665, %4666, !dbg !284
  %4669 = fcmp olt float %4667, -1.260000e+02, !dbg !290
  %4670 = fcmp olt float %4667, 0.000000e+00, !dbg !291
  %4671 = fmul float 9.600000e+01, %4668, !dbg !289
  %4672 = select i1 %4669, float -1.260000e+02, float %4667, !dbg !292
  %4673 = select i1 %4670, float 1.000000e+00, float 0.000000e+00, !dbg !293
  %4674 = fcmp olt float %4671, -1.260000e+02, !dbg !290
  %4675 = fcmp olt float %4671, 0.000000e+00, !dbg !291
  %4676 = fadd float 0x405E518A20000000, %4672, !dbg !294
  %4677 = fptosi float %4672 to i32, !dbg !295
  %4678 = select i1 %4674, float -1.260000e+02, float %4671, !dbg !292
  %4679 = select i1 %4675, float 1.000000e+00, float 0.000000e+00, !dbg !293
  %4680 = sitofp i32 %4677 to float, !dbg !296
  %4681 = fadd float 0x405E518A20000000, %4678, !dbg !294
  %4682 = fptosi float %4678 to i32, !dbg !295
  %4683 = fsub float %4672, %4680, !dbg !297
  %4684 = sitofp i32 %4682 to float, !dbg !296
  %z587 = fadd float %4683, %4673, !dbg !297
  %4685 = fsub float %4678, %4684, !dbg !297
  %4686 = fmul float 0x3FF7D791A0000000, %z587, !dbg !298
  %4687 = fsub float 0x40135EBF00000000, %z587, !dbg !299
  %z588 = fadd float %4685, %4679, !dbg !297
  %4688 = fdiv float 0x403BBA5FC0000000, %4687, !dbg !300
  %4689 = fmul float 0x3FF7D791A0000000, %z588, !dbg !298
  %4690 = fsub float 0x40135EBF00000000, %z588, !dbg !299
  %4691 = fadd float %4676, %4688, !dbg !294
  %4692 = fdiv float 0x403BBA5FC0000000, %4690, !dbg !300
  %4693 = fsub float %4691, %4686, !dbg !294
  %4694 = fadd float %4681, %4692, !dbg !294
  %4695 = fmul float 0x4160000000000000, %4693, !dbg !301
  %4696 = fsub float %4694, %4689, !dbg !294
  %4697 = fptosi float %4695 to i32, !dbg !302
  %4698 = fmul float 0x4160000000000000, %4696, !dbg !301
  %4699 = bitcast i32 %4697 to float, !dbg !303
  %4700 = fptosi float %4698 to i32, !dbg !302
  %4701 = fmul float 9.700000e+01, %4699, !dbg !355
  %4702 = bitcast i32 %4700 to float, !dbg !303
  %4703 = fmul float 0x3FC45F3060000000, %4701, !dbg !355
  %4704 = fmul float 9.800000e+01, %4702, !dbg !354
  %4705 = fmul float 5.000000e-01, %4703, !dbg !247
  %4706 = fmul float 0x3FC45F3060000000, %4704, !dbg !354
  %4707 = fadd float %4638, %4705, !dbg !250
  %4708 = fmul float 0.000000e+00, %4706, !dbg !253
  %4709 = fmul float 1.000000e+00, %4706, !dbg !255
  %4710 = fmul float 5.000000e-01, %4708, !dbg !345
  %4711 = fmul float 5.000000e-01, %4709, !dbg !344
  %4712 = fadd float %4640, %4710, !dbg !342
  %4713 = fadd float %4653, %4710, !dbg !314
  %4714 = fadd float %4647, %4711, !dbg !337
  %4715 = insertvalue %5 undef, float %4712, 0, !dbg !183
  %4716 = insertvalue %5 %4715, float %4714, 1, !dbg !183
  %4717 = insertvalue %5 %4716, float %4713, 2, !dbg !183
  br label %if_join445, !dbg !347

if_join445:                                       ; preds = %positive_cos_cont443, %positive_cos_cont413
  %if_join446 = phi %6 [ %4651, %positive_cos_cont443 ], [ %4575, %positive_cos_cont413 ]
  %if_join447 = phi float [ %4707, %positive_cos_cont443 ], [ %4571, %positive_cos_cont413 ]
  %if_join448 = phi %5 [ %4717, %positive_cos_cont443 ], [ %4582, %positive_cos_cont413 ]
  %4718 = extractvalue %6 %if_join446, 0, !dbg !356
  %4719 = load %5, %5* %25, align 4, !dbg !124
  %4720 = extractvalue %2 %4718, 0, !dbg !357
  %4721 = fsub float -0.000000e+00, %4720, !dbg !169
  %4722 = fcmp olt float 0.000000e+00, %4720, !dbg !170
  %4723 = select i1 %4722, float %4720, float %4721, !dbg !171
  %4724 = fcmp olt float %4723, 0x3E45798EE0000000, !dbg !171
  br i1 %4724, label %expr_true450, label %expr_false449, !dbg !347

expr_false449:                                    ; preds = %if_join445
  br label %safe_rcp_cont451, !dbg !173

expr_true450:                                     ; preds = %if_join445
  br label %safe_rcp_cont451, !dbg !174

safe_rcp_cont451:                                 ; preds = %expr_true450, %expr_false449
  %4725 = extractvalue %2 %4718, 1, !dbg !358
  %4726 = fsub float -0.000000e+00, %4725, !dbg !169
  %4727 = fcmp olt float 0.000000e+00, %4725, !dbg !170
  %4728 = select i1 %4727, float %4725, float %4726, !dbg !171
  %4729 = fcmp olt float %4728, 0x3E45798EE0000000, !dbg !171
  br i1 %4729, label %expr_true453, label %expr_false452, !dbg !172

expr_false452:                                    ; preds = %safe_rcp_cont451
  br label %safe_rcp_cont454, !dbg !173

expr_true453:                                     ; preds = %safe_rcp_cont451
  br label %safe_rcp_cont454, !dbg !174

safe_rcp_cont454:                                 ; preds = %expr_true453, %expr_false452
  %4730 = extractvalue %2 %4718, 2, !dbg !359
  %4731 = fsub float -0.000000e+00, %4730, !dbg !169
  %4732 = fcmp olt float 0.000000e+00, %4730, !dbg !170
  %4733 = select i1 %4732, float %4730, float %4731, !dbg !171
  %4734 = fcmp olt float %4733, 0x3E45798EE0000000, !dbg !171
  br i1 %4734, label %expr_true456, label %expr_false455, !dbg !172

expr_false455:                                    ; preds = %safe_rcp_cont454
  br label %safe_rcp_cont457, !dbg !173

expr_true456:                                     ; preds = %safe_rcp_cont454
  br label %safe_rcp_cont457, !dbg !174

safe_rcp_cont457:                                 ; preds = %expr_true456, %expr_false455
  %4735 = getelementptr inbounds [0 x float], [0 x float]* %50, i64 0, i32 %lower5, !dbg !148
  %4736 = load i32, i32* %24, align 4, !dbg !366
  %4737 = getelementptr inbounds [0 x i32], [0 x i32]* %60, i64 0, i32 %lower5, !dbg !158
  %4738 = extractvalue %5 %if_join448, 1, !dbg !362
  %4739 = extractvalue %6 %if_join446, 2, !dbg !365
  %4740 = add nsw i32 1, %lower5, !dbg !167
  %4741 = getelementptr inbounds [0 x float], [0 x float]* %51, i64 0, i32 %lower5, !dbg !149
  %4742 = getelementptr inbounds [0 x float], [0 x float]* %52, i64 0, i32 %lower5, !dbg !150
  %4743 = getelementptr inbounds [0 x float], [0 x float]* %58, i64 0, i32 %lower5, !dbg !156
  %4744 = getelementptr inbounds [0 x float], [0 x float]* %59, i64 0, i32 %lower5, !dbg !157
  %4745 = fdiv float %4739, %if_join447, !dbg !370
  %4746 = getelementptr inbounds [0 x float], [0 x float]* %56, i64 0, i32 %lower5, !dbg !154
  %4747 = getelementptr inbounds [0 x i32], [0 x i32]* %55, i64 0, i32 %lower5, !dbg !153
  %4748 = getelementptr inbounds [0 x float], [0 x float]* %53, i64 0, i32 %lower5, !dbg !151
  %4749 = extractvalue %5 %if_join448, 0, !dbg !360
  %4750 = getelementptr inbounds [0 x float], [0 x float]* %47, i64 0, i32 %lower5, !dbg !145
  %4751 = fmul float %4297, %4319, !dbg !212
  %4752 = getelementptr inbounds [0 x float], [0 x float]* %57, i64 0, i32 %lower5, !dbg !155
  %4753 = getelementptr inbounds [0 x float], [0 x float]* %46, i64 0, i32 %lower5, !dbg !144
  %4754 = getelementptr inbounds [0 x float], [0 x float]* %49, i64 0, i32 %lower5, !dbg !147
  %4755 = extractvalue %5 %if_join448, 2, !dbg !361
  %4756 = extractvalue %5 %4719, 1, !dbg !368
  %4757 = fdiv float 1.000000e+00, %if_join447, !dbg !363
  %4758 = fmul float %4291, %4319, !dbg !212
  %4759 = getelementptr inbounds [0 x float], [0 x float]* %48, i64 0, i32 %lower5, !dbg !146
  %4760 = fmul float %4756, %4738, !dbg !368
  %4761 = fmul float %4295, %4319, !dbg !212
  %4762 = fadd float %4289, %4761, !dbg !364
  %4763 = fmul float %4760, %4745, !dbg !255
  %4764 = fadd float %4290, %4751, !dbg !364
  %4765 = load i32, i32* %26, align 4, !dbg !125
  %4766 = fadd float %4288, %4758, !dbg !364
  %4767 = extractvalue %5 %4719, 2, !dbg !367
  %4768 = extractvalue %5 %4719, 0, !dbg !369
  %4769 = fmul float %4767, %4755, !dbg !367
  store float %4766, float* %4748, align 4, !dbg !151
  %4770 = fmul float %4768, %4749, !dbg !369
  %4771 = fmul float %4769, %4745, !dbg !257
  %4772 = add nsw i32 1, %4765, !dbg !125
  store float %4762, float* %4742, align 4, !dbg !150
  %4773 = fmul float %4770, %4745, !dbg !253
  store float %4764, float* %4741, align 4, !dbg !149
  store float %4720, float* %4759, align 4, !dbg !146
  store float %4725, float* %4754, align 4, !dbg !147
  store float %4730, float* %4753, align 4, !dbg !144
  store float 0x3F1A36E2E0000000, float* %4750, align 4, !dbg !145
  store float 0x47EFFFFFE0000000, float* %4735, align 4, !dbg !148
  store i32 %4736, i32* %4737, align 4, !dbg !158
  store float %4773, float* %4744, align 4, !dbg !157
  store float %4763, float* %4743, align 4, !dbg !156
  store float %4771, float* %4746, align 4, !dbg !154
  store float %4757, float* %4752, align 4, !dbg !155
  store i32 %4772, i32* %4747, align 4, !dbg !153
  br label %unroll_step4, !dbg !168

expr_true458:                                     ; preds = %unroll_step1
  %4774 = extractvalue %1 %14, 4, !dbg !880
  %4775 = extractvalue %1 %14, 5, !dbg !883
  %4776 = extractvalue %1 %14, 1, !dbg !884
  %4777 = extractvalue %1 %14, 6, !dbg !885
  %4778 = extractvalue %1 %14, 3, !dbg !886
  %4779 = extractvalue %1 %14, 2, !dbg !887
  %4780 = getelementptr inbounds [0 x float], [0 x float]* %4776, i64 0, i32 %lower2, !dbg !380
  %vec_cast.i882 = bitcast float* %4780 to <8 x float>*, !dbg !380
  %cont_load.i883 = load <8 x float>, <8 x float>* %vec_cast.i882, align 4, !dbg !380
  %4781 = getelementptr inbounds [0 x float], [0 x float]* %4779, i64 0, i32 %lower2, !dbg !380
  %vec_cast1.i884 = bitcast float* %4781 to <8 x float>*, !dbg !380
  %cont_load2.i885 = load <8 x float>, <8 x float>* %vec_cast1.i884, align 4, !dbg !380
  %4782 = getelementptr inbounds [0 x float], [0 x float]* %4778, i64 0, i32 %lower2, !dbg !380
  %vec_cast3.i886 = bitcast float* %4782 to <8 x float>*, !dbg !380
  %cont_load4.i887 = load <8 x float>, <8 x float>* %vec_cast3.i886, align 4, !dbg !380
  %4783 = getelementptr inbounds [0 x float], [0 x float]* %4774, i64 0, i32 %lower2, !dbg !380
  %vec_cast5.i888 = bitcast float* %4783 to <8 x float>*, !dbg !380
  %cont_load6.i889 = load <8 x float>, <8 x float>* %vec_cast5.i888, align 4, !dbg !380
  %4784 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> zeroinitializer, <8 x float> %cont_load6.i889, i8 1), !dbg !888
  %4785 = bitcast <8 x float> %4784 to <8 x i32>, !dbg !888
  %4786 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %cont_load6.i889, !dbg !888
  %4787 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %4786, <8 x float> %cont_load6.i889, <8 x float> %4784), !dbg !380
  %4788 = getelementptr inbounds [0 x float], [0 x float]* %4775, i64 0, i32 %lower2, !dbg !380
  %vec_cast7.i890 = bitcast float* %4788 to <8 x float>*, !dbg !380
  %cont_load8.i891 = load <8 x float>, <8 x float>* %vec_cast7.i890, align 4, !dbg !380
  %4789 = getelementptr inbounds [0 x float], [0 x float]* %4777, i64 0, i32 %lower2, !dbg !380
  %vec_cast9.i892 = bitcast float* %4789 to <8 x float>*, !dbg !380
  %cont_load10.i893 = load <8 x float>, <8 x float>* %vec_cast9.i892, align 4, !dbg !380
  %4790 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> zeroinitializer, <8 x float> %cont_load8.i891, i8 1), !dbg !888
  %4791 = bitcast <8 x float> %4790 to <8 x i32>, !dbg !888
  %4792 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %cont_load8.i891, !dbg !888
  %4793 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %4792, <8 x float> %cont_load8.i891, <8 x float> %4790), !dbg !889
  %4794 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> zeroinitializer, <8 x float> %cont_load10.i893, i8 1), !dbg !888
  %4795 = bitcast <8 x float> %4794 to <8 x i32>, !dbg !888
  %4796 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %cont_load10.i893, !dbg !888
  %4797 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %4796, <8 x float> %cont_load10.i893, <8 x float> %4794), !dbg !890
  %4798 = extractvalue %0 %33, 2, !dbg !890
  %4799 = extractvalue %0 %33, 3, !dbg !891
  %4800 = extractvalue %0 %38, 11, !dbg !892
  %4801 = extractvalue %0 %38, 9, !dbg !893
  %4802 = extractvalue %0 %38, 10, !dbg !894
  %4803 = extractvalue %0 %38, 8, !dbg !895
  %4804 = extractvalue %0 %38, 7, !dbg !896
  %4805 = getelementptr inbounds [0 x i32], [0 x i32]* %4798, i64 0, i32 %lower2, !dbg !380
  %vec_cast11.i894 = bitcast i32* %4805 to <8 x i32>*, !dbg !380
  %cont_load12.i895 = load <8 x i32>, <8 x i32>* %vec_cast11.i894, align 4, !dbg !380
  %4806 = extractvalue %0 %33, 5, !dbg !897
  %4807 = extractvalue %0 %38, 6, !dbg !898
  %4808 = extractvalue %0 %33, 4, !dbg !899
  %4809 = getelementptr inbounds [0 x float], [0 x float]* %4799, i64 0, i32 %lower2, !dbg !380
  %vec_cast13.i896 = bitcast float* %4809 to <8 x float>*, !dbg !380
  %cont_load14.i897 = load <8 x float>, <8 x float>* %vec_cast13.i896, align 4, !dbg !380
  %4810 = mul nsw <8 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, %cont_load12.i895, !dbg !900
  %4811 = getelementptr inbounds [0 x float], [0 x float]* %4808, i64 0, i32 %lower2, !dbg !380
  %vec_cast15.i898 = bitcast float* %4811 to <8 x float>*, !dbg !380
  %cont_load16.i899 = load <8 x float>, <8 x float>* %vec_cast15.i898, align 4, !dbg !380
  %4812 = add nsw <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>, %4810, !dbg !901
  %4813 = add nsw <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, %4810, !dbg !902
  %4814 = fsub <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %cont_load16.i899, !dbg !903
  %4815 = getelementptr inbounds [0 x float], [0 x float]* %4806, i64 0, i32 %lower2, !dbg !380
  %vec_cast17.i900 = bitcast float* %4815 to <8 x float>*, !dbg !380
  %cont_load18.i901 = load <8 x float>, <8 x float>* %vec_cast17.i900, align 4, !dbg !380
  %4816 = fsub <8 x float> %4814, %cont_load18.i901, !dbg !903
  %4817 = getelementptr inbounds [0 x i32], [0 x i32]* %4807, i64 0, i32 %lower2, !dbg !380
  %vec_cast19.i902 = bitcast i32* %4817 to <8 x i32>*, !dbg !380
  %cont_load20.i903 = load <8 x i32>, <8 x i32>* %vec_cast19.i902, align 4, !dbg !380
  %4818 = getelementptr inbounds [0 x float], [0 x float]* %4803, i64 0, i32 %lower2, !dbg !380
  %vec_cast21.i904 = bitcast float* %4818 to <8 x float>*, !dbg !380
  %cont_load22.i905 = load <8 x float>, <8 x float>* %vec_cast21.i904, align 4, !dbg !380
  %extract59.i = extractelement <8 x float> %cont_load22.i905, i32 7, !dbg !380
  %extract57.i = extractelement <8 x float> %cont_load22.i905, i32 6, !dbg !380
  %extract55.i = extractelement <8 x float> %cont_load22.i905, i32 5, !dbg !380
  %extract53.i = extractelement <8 x float> %cont_load22.i905, i32 4, !dbg !380
  %extract51.i = extractelement <8 x float> %cont_load22.i905, i32 3, !dbg !380
  %extract49.i = extractelement <8 x float> %cont_load22.i905, i32 2, !dbg !380
  %extract47.i = extractelement <8 x float> %cont_load22.i905, i32 1, !dbg !380
  %extract.i906 = extractelement <8 x float> %cont_load22.i905, i32 0, !dbg !380
  %4819 = getelementptr inbounds [0 x float], [0 x float]* %4801, i64 0, i32 %lower2, !dbg !380
  %vec_cast23.i907 = bitcast float* %4819 to <8 x float>*, !dbg !380
  %cont_load24.i908 = load <8 x float>, <8 x float>* %vec_cast23.i907, align 4, !dbg !380
  %extract74.i = extractelement <8 x float> %cont_load24.i908, i32 7, !dbg !380
  %extract72.i909 = extractelement <8 x float> %cont_load24.i908, i32 6, !dbg !380
  %extract70.i910 = extractelement <8 x float> %cont_load24.i908, i32 5, !dbg !380
  %extract68.i911 = extractelement <8 x float> %cont_load24.i908, i32 4, !dbg !380
  %extract66.i912 = extractelement <8 x float> %cont_load24.i908, i32 3, !dbg !380
  %extract64.i913 = extractelement <8 x float> %cont_load24.i908, i32 2, !dbg !380
  %extract62.i914 = extractelement <8 x float> %cont_load24.i908, i32 1, !dbg !380
  %extract61.i = extractelement <8 x float> %cont_load24.i908, i32 0, !dbg !380
  %4820 = getelementptr inbounds [0 x float], [0 x float]* %4802, i64 0, i32 %lower2, !dbg !380
  %vec_cast25.i915 = bitcast float* %4820 to <8 x float>*, !dbg !380
  %cont_load26.i916 = load <8 x float>, <8 x float>* %vec_cast25.i915, align 4, !dbg !380
  %extract89.i = extractelement <8 x float> %cont_load26.i916, i32 7, !dbg !380
  %extract87.i917 = extractelement <8 x float> %cont_load26.i916, i32 6, !dbg !380
  %extract85.i918 = extractelement <8 x float> %cont_load26.i916, i32 5, !dbg !380
  %extract83.i919 = extractelement <8 x float> %cont_load26.i916, i32 4, !dbg !380
  %extract81.i920 = extractelement <8 x float> %cont_load26.i916, i32 3, !dbg !380
  %extract79.i921 = extractelement <8 x float> %cont_load26.i916, i32 2, !dbg !380
  %extract77.i922 = extractelement <8 x float> %cont_load26.i916, i32 1, !dbg !380
  %extract76.i = extractelement <8 x float> %cont_load26.i916, i32 0, !dbg !380
  %4821 = getelementptr inbounds [0 x float], [0 x float]* %4804, i64 0, i32 %lower2, !dbg !380
  %vec_cast27.i923 = bitcast float* %4821 to <8 x float>*, !dbg !380
  %cont_load28.i924 = load <8 x float>, <8 x float>* %vec_cast27.i923, align 4, !dbg !380
  %4822 = getelementptr inbounds [0 x i32], [0 x i32]* %4800, i64 0, i32 %lower2, !dbg !380
  %vec_cast29.i925 = bitcast i32* %4822 to <8 x i32>*, !dbg !380
  %cont_load30.i926 = load <8 x i32>, <8 x i32>* %vec_cast29.i925, align 4, !dbg !380
  %4823 = getelementptr inbounds [0 x i32], [0 x i32]* %indices_1042603, <8 x i64> zeroinitializer, <8 x i32> %4810, !dbg !380
  %4824 = bitcast [0 x i32]* %indices_1042603 to i8*, !dbg !380
  %4825 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %4824, <8 x i32> %4810, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 4), !dbg !380
  %4826 = bitcast <8 x float> %4825 to <8 x i32>, !dbg !380
  %4827 = getelementptr inbounds [0 x i32], [0 x i32]* %indices_1042603, <8 x i64> zeroinitializer, <8 x i32> %4813, !dbg !380
  %4828 = bitcast [0 x i32]* %indices_1042603 to i8*, !dbg !380
  %4829 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %4828, <8 x i32> %4813, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 4), !dbg !380
  %4830 = bitcast <8 x float> %4829 to <8 x i32>, !dbg !380
  %4831 = getelementptr inbounds [0 x i32], [0 x i32]* %indices_1042603, <8 x i64> zeroinitializer, <8 x i32> %4812, !dbg !380
  %4832 = bitcast [0 x i32]* %indices_1042603 to i8*, !dbg !380
  %4833 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %4832, <8 x i32> %4812, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 4), !dbg !380
  %4834 = bitcast <8 x float> %4833 to <8 x i32>, !dbg !380
  %4835 = getelementptr inbounds [0 x %2], [0 x %2]* %face_normals_1042601, <8 x i64> zeroinitializer, <8 x i32> %cont_load12.i895, !dbg !380
  %srov_gep102.i = getelementptr %2, <8 x %2*> %4835, i32 0, i32 0, !dbg !380
  %4836 = bitcast [0 x %2]* %face_normals_1042601 to i8*, !dbg !380
  %4837 = mul <8 x i32> %cont_load12.i895, <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>, !dbg !380
  %4838 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %4836, <8 x i32> %4837, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %srov_gep103.i = getelementptr %2, <8 x %2*> %4835, i32 0, i32 1, !dbg !380
  %4839 = bitcast [0 x %2]* %face_normals_1042601 to i8*, !dbg !380
  %4840 = mul <8 x i32> %cont_load12.i895, <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>, !dbg !380
  %4841 = add <8 x i32> %4840, <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, !dbg !380
  %4842 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %4839, <8 x i32> %4841, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %srov_gep104.i = getelementptr %2, <8 x %2*> %4835, i32 0, i32 2, !dbg !380
  %4843 = bitcast [0 x %2]* %face_normals_1042601 to i8*, !dbg !380
  %4844 = mul <8 x i32> %cont_load12.i895, <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>, !dbg !380
  %4845 = add <8 x i32> %4844, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>, !dbg !380
  %4846 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %4843, <8 x i32> %4845, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %4847 = getelementptr inbounds [0 x %2], [0 x %2]* %normals_1042600, <8 x i64> zeroinitializer, <8 x i32> %4826, !dbg !380
  %srov_gep.i927 = getelementptr %2, <8 x %2*> %4847, i32 0, i32 0, !dbg !380
  %4848 = bitcast [0 x %2]* %normals_1042600 to i8*, !dbg !380
  %4849 = mul <8 x i32> %4826, <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>, !dbg !380
  %4850 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %4848, <8 x i32> %4849, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %srov_gep94.i = getelementptr %2, <8 x %2*> %4847, i32 0, i32 1, !dbg !380
  %4851 = bitcast [0 x %2]* %normals_1042600 to i8*, !dbg !380
  %4852 = mul <8 x i32> %4826, <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>, !dbg !380
  %4853 = add <8 x i32> %4852, <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, !dbg !380
  %4854 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %4851, <8 x i32> %4853, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %srov_gep95.i = getelementptr %2, <8 x %2*> %4847, i32 0, i32 2, !dbg !380
  %4855 = bitcast [0 x %2]* %normals_1042600 to i8*, !dbg !380
  %4856 = mul <8 x i32> %4826, <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>, !dbg !380
  %4857 = add <8 x i32> %4856, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>, !dbg !380
  %4858 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %4855, <8 x i32> %4857, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %4859 = getelementptr inbounds [0 x %2], [0 x %2]* %normals_1042600, <8 x i64> zeroinitializer, <8 x i32> %4830, !dbg !380
  %srov_gep96.i = getelementptr %2, <8 x %2*> %4859, i32 0, i32 0, !dbg !380
  %4860 = bitcast [0 x %2]* %normals_1042600 to i8*, !dbg !380
  %4861 = mul <8 x i32> %4830, <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>, !dbg !380
  %4862 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %4860, <8 x i32> %4861, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %srov_gep97.i = getelementptr %2, <8 x %2*> %4859, i32 0, i32 1, !dbg !380
  %4863 = bitcast [0 x %2]* %normals_1042600 to i8*, !dbg !380
  %4864 = mul <8 x i32> %4830, <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>, !dbg !380
  %4865 = add <8 x i32> %4864, <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, !dbg !380
  %4866 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %4863, <8 x i32> %4865, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %srov_gep98.i = getelementptr %2, <8 x %2*> %4859, i32 0, i32 2, !dbg !380
  %4867 = bitcast [0 x %2]* %normals_1042600 to i8*, !dbg !380
  %4868 = mul <8 x i32> %4830, <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>, !dbg !380
  %4869 = add <8 x i32> %4868, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>, !dbg !380
  %4870 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %4867, <8 x i32> %4869, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %4871 = fmul <8 x float> %4816, %4858, !dbg !904
  %4872 = fmul <8 x float> %4816, %4850, !dbg !904
  %4873 = fmul <8 x float> %4816, %4854, !dbg !904
  %4874 = getelementptr inbounds [0 x %2], [0 x %2]* %normals_1042600, <8 x i64> zeroinitializer, <8 x i32> %4834, !dbg !380
  %srov_gep99.i = getelementptr %2, <8 x %2*> %4874, i32 0, i32 0, !dbg !380
  %4875 = bitcast [0 x %2]* %normals_1042600 to i8*, !dbg !380
  %4876 = mul <8 x i32> %4834, <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>, !dbg !380
  %4877 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %4875, <8 x i32> %4876, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %srov_gep100.i = getelementptr %2, <8 x %2*> %4874, i32 0, i32 1, !dbg !380
  %4878 = bitcast [0 x %2]* %normals_1042600 to i8*, !dbg !380
  %4879 = mul <8 x i32> %4834, <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>, !dbg !380
  %4880 = add <8 x i32> %4879, <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, !dbg !380
  %4881 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %4878, <8 x i32> %4880, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %srov_gep101.i = getelementptr %2, <8 x %2*> %4874, i32 0, i32 2, !dbg !380
  %4882 = bitcast [0 x %2]* %normals_1042600 to i8*, !dbg !380
  %4883 = mul <8 x i32> %4834, <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>, !dbg !380
  %4884 = add <8 x i32> %4883, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>, !dbg !380
  %4885 = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef, i8* %4882, <8 x i32> %4884, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>, i8 1), !dbg !380
  %4886 = fmul <8 x float> %cont_load16.i899, %4870, !dbg !905
  %4887 = fmul <8 x float> %cont_load16.i899, %4862, !dbg !905
  %4888 = fmul <8 x float> %cont_load16.i899, %4866, !dbg !905
  %4889 = fadd <8 x float> %4871, %4886, !dbg !904
  %4890 = fadd <8 x float> %4872, %4887, !dbg !904
  %4891 = fadd <8 x float> %4873, %4888, !dbg !904
  %4892 = fmul <8 x float> %cont_load18.i901, %4885, !dbg !906
  %4893 = fmul <8 x float> %cont_load18.i901, %4877, !dbg !906
  %4894 = fmul <8 x float> %cont_load18.i901, %4881, !dbg !906
  %4895 = fadd <8 x float> %4889, %4892, !dbg !904
  %4896 = fadd <8 x float> %4890, %4893, !dbg !904
  %4897 = fadd <8 x float> %4891, %4894, !dbg !904
  %4898 = fmul <8 x float> %4895, %4895, !dbg !907
  %4899 = fmul <8 x float> %4896, %4896, !dbg !908
  %4900 = fmul <8 x float> %4897, %4897, !dbg !909
  %4901 = fadd <8 x float> %4899, %4900, !dbg !908
  %4902 = fadd <8 x float> %4901, %4898, !dbg !908
  %.mapped.i928 = call <8 x float> @llvm.sqrt.v8f32(<8 x float> %4902), !dbg !380
  %4903 = fmul <8 x float> %cont_load8.i891, %4842, !dbg !909
  %4904 = fmul <8 x float> %cont_load6.i889, %4838, !dbg !908
  %4905 = fmul <8 x float> %cont_load10.i893, %4846, !dbg !907
  %4906 = fadd <8 x float> %4904, %4903, !dbg !908
  %4907 = fadd <8 x float> %4906, %4905, !dbg !908
  %4908 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> %4907, <8 x float> zeroinitializer, i8 2), !dbg !910
  %4909 = bitcast <8 x float> %4908 to <8 x i32>, !dbg !910
  %4910 = xor <8 x i32> %4909, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1>, !dbg !380
  %4911 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %4838, !dbg !911
  %4912 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %4842, !dbg !911
  %4913 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %4846, !dbg !911
  %4914 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %4911, <8 x float> %4838, <8 x float> %4908), !dbg !380
  %4915 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %4912, <8 x float> %4842, <8 x float> %4908), !dbg !380
  %4916 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %4913, <8 x float> %4846, <8 x float> %4908), !dbg !380
  %4917 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %.mapped.i928, <8 x float> <float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000, float 0xFFFFFFFFE0000000>), !dbg !912
  %4918 = fdiv <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %4917, !dbg !912
  %4919 = fmul <8 x float> %4896, %4918, !dbg !913
  %4920 = fmul <8 x float> %4897, %4918, !dbg !913
  %4921 = fmul <8 x float> %4895, %4918, !dbg !913
  %4922 = fmul <8 x float> %cont_load6.i889, %4919, !dbg !908
  %4923 = fmul <8 x float> %cont_load8.i891, %4920, !dbg !909
  %4924 = fmul <8 x float> %cont_load10.i893, %4921, !dbg !907
  %4925 = fadd <8 x float> %4922, %4923, !dbg !908
  %4926 = fadd <8 x float> %4925, %4924, !dbg !908
  %4927 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> %4926, <8 x float> zeroinitializer, i8 2), !dbg !914
  %4928 = bitcast <8 x float> %4927 to <8 x i32>, !dbg !914
  %4929 = xor <8 x i32> %4928, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1>, !dbg !914
  %4930 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %4921, !dbg !911
  %4931 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %4919, !dbg !911
  %4932 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %4920, !dbg !911
  %4933 = bitcast <8 x i32> %4929 to <8 x float>, !dbg !380
  %4934 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %4919, <8 x float> %4931, <8 x float> %4933), !dbg !380
  %4935 = bitcast <8 x i32> %4929 to <8 x float>, !dbg !380
  %4936 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %4920, <8 x float> %4932, <8 x float> %4935), !dbg !380
  %4937 = bitcast <8 x i32> %4929 to <8 x float>, !dbg !380
  %4938 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %4921, <8 x float> %4930, <8 x float> %4937), !dbg !380
  %4939 = fmul <8 x float> %4936, %4792, !dbg !909
  %4940 = fmul <8 x float> %4938, %4796, !dbg !907
  %4941 = fmul <8 x float> %4934, %4786, !dbg !908
  %4942 = fadd <8 x float> %4941, %4939, !dbg !908
  %4943 = fadd <8 x float> %4942, %4940, !dbg !908
  %4944 = fmul <8 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, %4943, !dbg !915
  %4945 = icmp eq <8 x i32> %cont_load20.i903, zeroinitializer, !dbg !913
  %4946 = sext <8 x i1> %4945 to <8 x i32>, !dbg !913
  %4947 = fmul <8 x float> %4938, %4944, !dbg !913
  %4948 = fmul <8 x float> %4934, %4944, !dbg !913
  %4949 = fmul <8 x float> %4936, %4944, !dbg !913
  %4950 = bitcast <8 x i32> %cont_load20.i903 to <8 x float>, !dbg !916
  %4951 = bitcast <8 x i32> %4946 to <8 x float>, !dbg !916
  %4952 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %4950, <8 x float> <float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000>, <8 x float> %4951), !dbg !916
  %4953 = bitcast <8 x float> %4952 to <8 x i32>, !dbg !916
  %4954 = fsub <8 x float> %4947, %4796, !dbg !916
  %4955 = fsub <8 x float> %4948, %4786, !dbg !916
  %4956 = fsub <8 x float> %4949, %4792, !dbg !916
  %4957 = shl <8 x i32> %4953, <i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13>, !dbg !917
  %4958 = xor <8 x i32> %4953, %4957, !dbg !918
  %4959 = lshr <8 x i32> %4958, <i32 17, i32 17, i32 17, i32 17, i32 17, i32 17, i32 17, i32 17>, !dbg !919
  %4960 = xor <8 x i32> %4958, %4959, !dbg !920
  %4961 = shl <8 x i32> %4960, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>, !dbg !921
  %4962 = xor <8 x i32> %4960, %4961, !dbg !922
  %4963 = icmp eq <8 x i32> %4962, zeroinitializer, !dbg !923
  %4964 = sext <8 x i1> %4963 to <8 x i32>, !dbg !923
  %4965 = bitcast <8 x i32> %4962 to <8 x float>, !dbg !924
  %4966 = bitcast <8 x i32> %4964 to <8 x float>, !dbg !924
  %4967 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %4965, <8 x float> <float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000>, <8 x float> %4966), !dbg !924
  %4968 = bitcast <8 x float> %4967 to <8 x i32>, !dbg !924
  %4969 = and <8 x i32> <i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607>, %4962, !dbg !924
  %4970 = shl <8 x i32> %4968, <i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13>, !dbg !917
  %4971 = or <8 x i32> <i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216>, %4969, !dbg !925
  %4972 = xor <8 x i32> %4968, %4970, !dbg !918
  %4973 = lshr <8 x i32> %4972, <i32 17, i32 17, i32 17, i32 17, i32 17, i32 17, i32 17, i32 17>, !dbg !919
  %4974 = bitcast <8 x i32> %4971 to <8 x float>, !dbg !380
  %4975 = fsub <8 x float> %4974, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, !dbg !926
  %4976 = xor <8 x i32> %4972, %4973, !dbg !920
  %4977 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <8 x float> %4975, i8 2), !dbg !921
  %4978 = bitcast <8 x float> %4977 to <8 x i32>, !dbg !921
  %4979 = shl <8 x i32> %4976, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>, !dbg !921
  %4980 = xor <8 x i32> %4976, %4979, !dbg !922
  %4981 = icmp eq <8 x i32> %4980, zeroinitializer, !dbg !923
  %4982 = sext <8 x i1> %4981 to <8 x i32>, !dbg !923
  %4983 = bitcast <8 x i32> %4980 to <8 x float>, !dbg !917
  %4984 = bitcast <8 x i32> %4982 to <8 x float>, !dbg !917
  %4985 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %4983, <8 x float> <float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000, float 0x36A0000000000000>, <8 x float> %4984), !dbg !917
  %4986 = bitcast <8 x float> %4985 to <8 x i32>, !dbg !917
  %4987 = shl <8 x i32> %4986, <i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13>, !dbg !917
  %4988 = and <8 x i32> <i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607>, %4980, !dbg !924
  %4989 = xor <8 x i32> %4986, %4987, !dbg !918
  %4990 = or <8 x i32> <i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216>, %4988, !dbg !925
  %4991 = lshr <8 x i32> %4989, <i32 17, i32 17, i32 17, i32 17, i32 17, i32 17, i32 17, i32 17>, !dbg !919
  %4992 = xor <8 x i32> %4989, %4991, !dbg !920
  %4993 = bitcast <8 x i32> %4990 to <8 x float>, !dbg !380
  %4994 = fsub <8 x float> %4993, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, !dbg !926
  %4995 = shl <8 x i32> %4992, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>, !dbg !921
  %phi_SIMD.i929 = fmul <8 x float> <float 0x401921FB60000000, float 0x401921FB60000000, float 0x401921FB60000000, float 0x401921FB60000000, float 0x401921FB60000000, float 0x401921FB60000000, float 0x401921FB60000000, float 0x401921FB60000000>, %4994, !dbg !927
  %4996 = xor <8 x i32> %4992, %4995, !dbg !922
  %4997 = and <8 x i32> <i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607>, %4996, !dbg !924
  %4998 = or <8 x i32> <i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216>, %4997, !dbg !925
  %4999 = bitcast <8 x i32> %4998 to <8 x float>, !dbg !380
  %5000 = fsub <8 x float> %4999, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, !dbg !926
  %5001 = xor <8 x i32> %4978, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1>, !dbg !928
  %5002 = bitcast <8 x float> %5000 to <8 x i32>, !dbg !380
  %5003 = uitofp <8 x i32> %5002 to <8 x float>, !dbg !929
  %5004 = and <8 x i32> <i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607>, %5002, !dbg !930
  %y_SIMD.i930 = fmul <8 x float> <float 0x3E80000000000000, float 0x3E80000000000000, float 0x3E80000000000000, float 0x3E80000000000000, float 0x3E80000000000000, float 0x3E80000000000000, float 0x3E80000000000000, float 0x3E80000000000000>, %5003, !dbg !931
  %mx_SIMD.i931 = or <8 x i32> <i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608>, %5004, !dbg !932
  %5005 = fsub <8 x float> %y_SIMD.i930, <float 0x405F0E6EE0000000, float 0x405F0E6EE0000000, float 0x405F0E6EE0000000, float 0x405F0E6EE0000000, float 0x405F0E6EE0000000, float 0x405F0E6EE0000000, float 0x405F0E6EE0000000, float 0x405F0E6EE0000000>, !dbg !933
  %5006 = bitcast <8 x i32> %mx_SIMD.i931 to <8 x float>, !dbg !380
  %5007 = fmul <8 x float> <float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000>, %5006, !dbg !934
  %5008 = fadd <8 x float> <float 0x3FD6889F20000000, float 0x3FD6889F20000000, float 0x3FD6889F20000000, float 0x3FD6889F20000000, float 0x3FD6889F20000000, float 0x3FD6889F20000000, float 0x3FD6889F20000000, float 0x3FD6889F20000000>, %5006, !dbg !935
  %5009 = fsub <8 x float> %5005, %5007, !dbg !933
  %5010 = bitcast <8 x i32> %5001 to <8 x float>, !dbg !936
  %5011 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %5008, <8 x float> %5010), !dbg !936
  %5012 = fdiv <8 x float> <float 0x3FFB9D3460000000, float 0x3FFB9D3460000000, float 0x3FFB9D3460000000, float 0x3FFB9D3460000000, float 0x3FFB9D3460000000, float 0x3FFB9D3460000000, float 0x3FFB9D3460000000, float 0x3FFB9D3460000000>, %5011, !dbg !936
  %5013 = fsub <8 x float> %5009, %5012, !dbg !933
  %5014 = fmul <8 x float> <float 0x3F851D07E0000000, float 0x3F851D07E0000000, float 0x3F851D07E0000000, float 0x3F851D07E0000000, float 0x3F851D07E0000000, float 0x3F851D07E0000000, float 0x3F851D07E0000000, float 0x3F851D07E0000000>, %5013, !dbg !937
  %5015 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> %5014, <8 x float> <float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02>, i8 1), !dbg !938
  %5016 = bitcast <8 x float> %5015 to <8 x i32>, !dbg !938
  %5017 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> %5014, <8 x float> zeroinitializer, i8 1), !dbg !939
  %5018 = bitcast <8 x float> %5017 to <8 x i32>, !dbg !939
  %5019 = fcmp fast olt <8 x float> %5014, <float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02>, !dbg !940
  %5020 = select <8 x i1> %5019, <8 x float> <float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02>, <8 x float> %5014, !dbg !940
  %5021 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> zeroinitializer, <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %5017), !dbg !941
  %5022 = fadd <8 x float> <float 0x405E518A20000000, float 0x405E518A20000000, float 0x405E518A20000000, float 0x405E518A20000000, float 0x405E518A20000000, float 0x405E518A20000000, float 0x405E518A20000000, float 0x405E518A20000000>, %5020, !dbg !941
  %5023 = fptosi <8 x float> %5020 to <8 x i32>, !dbg !942
  %5024 = sitofp <8 x i32> %5023 to <8 x float>, !dbg !943
  %5025 = fsub <8 x float> %5020, %5024, !dbg !944
  %z_SIMD.i932 = fadd <8 x float> %5025, %5021, !dbg !944
  %5026 = fmul <8 x float> <float 0x3FF7D791A0000000, float 0x3FF7D791A0000000, float 0x3FF7D791A0000000, float 0x3FF7D791A0000000, float 0x3FF7D791A0000000, float 0x3FF7D791A0000000, float 0x3FF7D791A0000000, float 0x3FF7D791A0000000>, %z_SIMD.i932, !dbg !945
  %5027 = fsub <8 x float> <float 0x40135EBF00000000, float 0x40135EBF00000000, float 0x40135EBF00000000, float 0x40135EBF00000000, float 0x40135EBF00000000, float 0x40135EBF00000000, float 0x40135EBF00000000, float 0x40135EBF00000000>, %z_SIMD.i932, !dbg !946
  %5028 = bitcast <8 x i32> %5001 to <8 x float>, !dbg !947
  %5029 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %5027, <8 x float> %5028), !dbg !947
  %5030 = fdiv <8 x float> <float 0x403BBA5FC0000000, float 0x403BBA5FC0000000, float 0x403BBA5FC0000000, float 0x403BBA5FC0000000, float 0x403BBA5FC0000000, float 0x403BBA5FC0000000, float 0x403BBA5FC0000000, float 0x403BBA5FC0000000>, %5029, !dbg !947
  %5031 = fadd <8 x float> %5022, %5030, !dbg !941
  %5032 = fsub <8 x float> %5031, %5026, !dbg !941
  %5033 = fmul <8 x float> <float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000>, %5032, !dbg !948
  %5034 = fptosi <8 x float> %5033 to <8 x i32>, !dbg !949
  %5035 = bitcast <8 x i32> %5034 to <8 x float>, !dbg !380
  %.mapped33.i = call <8 x float> @xfminf_avx2(<8 x float> %5035, <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>), !dbg !380
  %5036 = fmul <8 x float> %.mapped33.i, %.mapped33.i, !dbg !950
  %5037 = fsub <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %5036, !dbg !951
  %.mapped34.i = call <8 x float> @llvm.sqrt.v8f32(<8 x float> %5037), !dbg !380
  %.mapped35.i = call <8 x float> @xcosf_u1_avx2(<8 x float> %phi_SIMD.i929), !dbg !380
  %.mapped36.i = call <8 x float> @xsinf_u1_avx2(<8 x float> %phi_SIMD.i929), !dbg !380
  %y78_SIMD.i = fmul <8 x float> %.mapped34.i, %.mapped36.i, !dbg !952
  %5038 = fmul <8 x float> %4956, %.mapped33.i, !dbg !907
  %5039 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> zeroinitializer, <8 x float> %4954, i8 2), !dbg !953
  %5040 = bitcast <8 x float> %5039 to <8 x i32>, !dbg !953
  %5041 = fmul <8 x float> %4956, %4956, !dbg !953
  %5042 = fmul <8 x float> %4955, %4956, !dbg !954
  %5043 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %4956, !dbg !955
  %x_SIMD.i933 = fmul <8 x float> %.mapped34.i, %.mapped35.i, !dbg !956
  %5044 = fmul <8 x float> %4954, %.mapped33.i, !dbg !907
  %5045 = fmul <8 x float> %4955, %.mapped33.i, !dbg !907
  %5046 = fmul <8 x float> %5043, %y78_SIMD.i, !dbg !909
  %5047 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00>, <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %5039), !dbg !957
  %5048 = fadd <8 x float> %5047, %4954, !dbg !957
  %5049 = fmul <8 x float> %5047, %4955, !dbg !958
  %5050 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %5047, !dbg !959
  %5051 = bitcast <8 x i32> %5001 to <8 x float>, !dbg !960
  %5052 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %5048, <8 x float> %5051), !dbg !960
  %a_SIMD.i934 = fdiv <8 x float> <float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00>, %5052, !dbg !960
  %5053 = fmul <8 x float> %5049, %4955, !dbg !958
  %5054 = fmul <8 x float> %5050, %4955, !dbg !959
  %b_SIMD.i935 = fmul <8 x float> %5042, %a_SIMD.i934, !dbg !954
  %5055 = fmul <8 x float> %5053, %a_SIMD.i934, !dbg !958
  %5056 = fmul <8 x float> %5041, %a_SIMD.i934, !dbg !953
  %5057 = fmul <8 x float> %5054, %x_SIMD.i933, !dbg !908
  %5058 = fmul <8 x float> %b_SIMD.i935, %y78_SIMD.i, !dbg !909
  %5059 = fmul <8 x float> %5047, %b_SIMD.i935, !dbg !961
  %5060 = fadd <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %5055, !dbg !962
  %5061 = fadd <8 x float> %5047, %5056, !dbg !963
  %5062 = fadd <8 x float> %5057, %5046, !dbg !908
  %5063 = fmul <8 x float> %5059, %x_SIMD.i933, !dbg !908
  %5064 = fmul <8 x float> %5060, %x_SIMD.i933, !dbg !908
  %5065 = fmul <8 x float> %5061, %y78_SIMD.i, !dbg !909
  %5066 = fadd <8 x float> %5062, %5044, !dbg !908
  %5067 = fadd <8 x float> %5063, %5065, !dbg !908
  %5068 = fadd <8 x float> %5064, %5058, !dbg !908
  %5069 = fmul <8 x float> %5066, %4938, !dbg !907
  %5070 = fadd <8 x float> %5067, %5038, !dbg !908
  %5071 = fadd <8 x float> %5068, %5045, !dbg !908
  %5072 = fmul <8 x float> %5070, %4936, !dbg !909
  %5073 = fmul <8 x float> %5071, %4934, !dbg !908
  %5074 = fadd <8 x float> %5073, %5072, !dbg !908
  %5075 = fadd <8 x float> %5074, %5069, !dbg !908
  %5076 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> zeroinitializer, <8 x float> %5075, i8 2), !dbg !964
  %5077 = bitcast <8 x float> %5076 to <8 x i32>, !dbg !964
  %5078 = fcmp fast ole <8 x float> zeroinitializer, %5075, !dbg !965
  %5079 = select <8 x i1> %5078, <8 x float> %5075, <8 x float> zeroinitializer, !dbg !964
  %5080 = bitcast <8 x i32> %5001 to <8 x float>, !dbg !966
  %5081 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %.mapped33.i, <8 x float> %5080), !dbg !966
  %5082 = fdiv <8 x float> %5000, %5081, !dbg !966
  %5083 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> %.mapped33.i, <8 x float> zeroinitializer, i8 20), !dbg !967
  %5084 = bitcast <8 x float> %5083 to <8 x i32>, !dbg !967
  %5085 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> zeroinitializer, <8 x float> %5082, <8 x float> %5083), !dbg !968
  %5086 = fmul <8 x float> <float 9.700000e+01, float 9.700000e+01, float 9.700000e+01, float 9.700000e+01, float 9.700000e+01, float 9.700000e+01, float 9.700000e+01, float 9.700000e+01>, %5085, !dbg !968
  %pdf_SIMD.i936 = fmul <8 x float> <float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000>, %5086, !dbg !968
  %5087 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> zeroinitializer, <8 x float> %pdf_SIMD.i936, i8 1), !dbg !969
  %5088 = bitcast <8 x float> %5087 to <8 x i32>, !dbg !969
  %5089 = and <8 x i32> %5001, %5088, !dbg !969
  %5090 = xor <8 x i32> %5088, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1>, !dbg !969
  %5091 = and <8 x i32> %5001, %5090, !dbg !380
  %5092 = fmul <8 x float> %5071, %4914, !dbg !908
  %5093 = fmul <8 x float> %5070, %4915, !dbg !909
  %5094 = fmul <8 x float> %5066, %4916, !dbg !907
  %5095 = fadd <8 x float> %5092, %5093, !dbg !908
  %5096 = fadd <8 x float> %5095, %5094, !dbg !908
  %5097 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> zeroinitializer, <8 x float> %5096, i8 1), !dbg !970
  %5098 = bitcast <8 x float> %5097 to <8 x i32>, !dbg !970
  %5099 = and <8 x i32> %5089, %5098, !dbg !970
  %5100 = xor <8 x i32> %5098, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1>, !dbg !970
  %5101 = and <8 x i32> %5089, %5100, !dbg !380
  %5102 = or <8 x i32> %5091, %5101, !dbg !971
  %5103 = or <8 x i32> %5102, %5099, !dbg !971
  %5104 = bitcast <8 x i32> %5099 to <8 x float>, !dbg !880
  %5105 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %pdf_SIMD.i936, <8 x float> %5104), !dbg !880
  %5106 = xor <8 x i32> %5099, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1>, !dbg !880
  %5107 = and <8 x i32> %5103, %5106, !dbg !380
  %5108 = fmul <8 x float> <float 9.800000e+01, float 9.800000e+01, float 9.800000e+01, float 9.800000e+01, float 9.800000e+01, float 9.800000e+01, float 9.800000e+01, float 9.800000e+01>, %pdf_SIMD.i936, !dbg !972
  %5109 = bitcast <8 x i32> %5099 to <8 x float>, !dbg !972
  %5110 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> <float 9.700000e+01, float 9.700000e+01, float 9.700000e+01, float 9.700000e+01, float 9.700000e+01, float 9.700000e+01, float 9.700000e+01, float 9.700000e+01>, <8 x float> %5109), !dbg !972
  %5111 = fdiv <8 x float> %5108, %5110, !dbg !972
  %5112 = fmul <8 x float> zeroinitializer, %5111, !dbg !973
  %5113 = bitcast <8 x i32> %5107 to <8 x float>, !dbg !380
  %5114 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %5112, <8 x float> zeroinitializer, <8 x float> %5113), !dbg !380
  %5115 = bitcast <8 x i32> %5107 to <8 x float>, !dbg !380
  %5116 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %5111, <8 x float> zeroinitializer, <8 x float> %5115), !dbg !380
  %5117 = bitcast <8 x i32> %5107 to <8 x float>, !dbg !380
  %5118 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %5112, <8 x float> zeroinitializer, <8 x float> %5117), !dbg !380
  %5119 = fmul <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, %5116, !dbg !974
  %5120 = fadd <8 x float> <float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000>, %5119, !dbg !975
  %5121 = fmul <8 x float> <float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000>, %5079, !dbg !976
  %5122 = fmul <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, %5114, !dbg !977
  %5123 = fmul <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, %5105, !dbg !978
  %5124 = fmul <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, %5121, !dbg !979
  %5125 = fadd <8 x float> zeroinitializer, %5122, !dbg !980
  %5126 = fmul <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, %5118, !dbg !981
  %5127 = fadd <8 x float> %5124, %5123, !dbg !979
  %5128 = fadd <8 x float> zeroinitializer, %5126, !dbg !982
  %5129 = fsub <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %5000, !dbg !983
  %.mapped40.i = call <8 x float> @llvm.sqrt.v8f32(<8 x float> %5129), !dbg !380
  %.mapped41.i = call <8 x float> @llvm.sqrt.v8f32(<8 x float> %5000), !dbg !380
  %.mapped42.i = call <8 x float> @xcosf_u1_avx2(<8 x float> %phi_SIMD.i929), !dbg !380
  %.mapped43.i = call <8 x float> @xsinf_u1_avx2(<8 x float> %phi_SIMD.i929), !dbg !380
  %5130 = fmul <8 x float> <float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000>, %.mapped40.i, !dbg !976
  %5131 = fmul <8 x float> %4934, %4936, !dbg !954
  %5132 = fmul <8 x float> %4936, %.mapped40.i, !dbg !907
  %5133 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> zeroinitializer, <8 x float> %5130, i8 1), !dbg !907
  %5134 = bitcast <8 x float> %5133 to <8 x i32>, !dbg !907
  %5135 = fmul <8 x float> %4934, %.mapped40.i, !dbg !907
  %x79_SIMD.i = fmul <8 x float> %.mapped41.i, %.mapped42.i, !dbg !956
  %5136 = fmul <8 x float> %4938, %.mapped40.i, !dbg !907
  %5137 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %4936, !dbg !955
  %5138 = fmul <8 x float> %4936, %4936, !dbg !953
  %5139 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> zeroinitializer, <8 x float> %4938, i8 2), !dbg !952
  %5140 = bitcast <8 x float> %5139 to <8 x i32>, !dbg !952
  %y80_SIMD.i = fmul <8 x float> %.mapped41.i, %.mapped43.i, !dbg !952
  %5141 = fmul <8 x float> %5137, %y80_SIMD.i, !dbg !909
  %5142 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00>, <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %5139), !dbg !959
  %5143 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %5142, !dbg !959
  %5144 = fmul <8 x float> %5142, %4934, !dbg !958
  %5145 = fadd <8 x float> %5142, %4938, !dbg !957
  %5146 = fmul <8 x float> %5143, %4934, !dbg !959
  %5147 = fmul <8 x float> %5144, %4934, !dbg !958
  %5148 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %5145, <8 x float> %4977), !dbg !960
  %a81_SIMD.i = fdiv <8 x float> <float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00>, %5148, !dbg !960
  %5149 = fmul <8 x float> %5146, %x79_SIMD.i, !dbg !908
  %5150 = fmul <8 x float> %5147, %a81_SIMD.i, !dbg !958
  %b82_SIMD.i = fmul <8 x float> %5131, %a81_SIMD.i, !dbg !954
  %5151 = fmul <8 x float> %5138, %a81_SIMD.i, !dbg !953
  %5152 = fadd <8 x float> %5149, %5141, !dbg !908
  %5153 = fadd <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %5150, !dbg !962
  %5154 = fmul <8 x float> %b82_SIMD.i, %y80_SIMD.i, !dbg !909
  %5155 = fmul <8 x float> %5142, %b82_SIMD.i, !dbg !961
  %5156 = fadd <8 x float> %5142, %5151, !dbg !963
  %5157 = fadd <8 x float> %5152, %5136, !dbg !908
  %5158 = fmul <8 x float> %5153, %x79_SIMD.i, !dbg !908
  %5159 = fadd <8 x float> %5158, %5154, !dbg !908
  %5160 = fmul <8 x float> %5155, %x79_SIMD.i, !dbg !908
  %5161 = fmul <8 x float> %5156, %y80_SIMD.i, !dbg !909
  %5162 = fadd <8 x float> %5159, %5135, !dbg !908
  %5163 = fadd <8 x float> %5160, %5161, !dbg !908
  %5164 = fadd <8 x float> %5163, %5132, !dbg !908
  %5165 = and <8 x i32> %4978, %5134, !dbg !969
  %5166 = xor <8 x i32> %5134, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1>, !dbg !969
  %5167 = and <8 x i32> %4978, %5166, !dbg !380
  %5168 = fmul <8 x float> %5162, %4914, !dbg !908
  %5169 = fmul <8 x float> %5157, %4916, !dbg !907
  %5170 = fmul <8 x float> %5164, %4915, !dbg !909
  %5171 = fadd <8 x float> %5168, %5170, !dbg !908
  %5172 = fadd <8 x float> %5171, %5169, !dbg !908
  %5173 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> zeroinitializer, <8 x float> %5172, i8 1), !dbg !970
  %5174 = bitcast <8 x float> %5173 to <8 x i32>, !dbg !970
  %5175 = and <8 x i32> %5165, %5174, !dbg !970
  %5176 = xor <8 x i32> %5174, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1>, !dbg !970
  %5177 = and <8 x i32> %5165, %5176, !dbg !380
  %5178 = or <8 x i32> %5167, %5177, !dbg !971
  %5179 = or <8 x i32> %5178, %5175, !dbg !971
  %5180 = bitcast <8 x i32> %5175 to <8 x float>, !dbg !880
  %5181 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %5130, <8 x float> %5180), !dbg !880
  %5182 = bitcast <8 x i32> %5175 to <8 x float>, !dbg !907
  %5183 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> zeroinitializer, <8 x float> <float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000>, <8 x float> %5182), !dbg !907
  %5184 = fmul <8 x float> %5157, %4954, !dbg !907
  %5185 = fmul <8 x float> %5162, %4955, !dbg !908
  %5186 = fmul <8 x float> %5164, %4956, !dbg !909
  %5187 = fadd <8 x float> %5185, %5186, !dbg !908
  %5188 = fadd <8 x float> %5187, %5184, !dbg !908
  %5189 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> zeroinitializer, <8 x float> %5188, i8 2), !dbg !984
  %5190 = bitcast <8 x float> %5189 to <8 x i32>, !dbg !984
  %5191 = fcmp fast ole <8 x float> zeroinitializer, %5188, !dbg !979
  %5192 = select <8 x i1> %5191, <8 x float> %5188, <8 x float> zeroinitializer, !dbg !979
  %5193 = fmul <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, %5181, !dbg !979
  %5194 = fmul <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, %5183, !dbg !975
  %5195 = bitcast <8 x float> %5192 to <8 x i32>, !dbg !380
  %5196 = uitofp <8 x i32> %5195 to <8 x float>, !dbg !929
  %5197 = and <8 x i32> <i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607>, %5195, !dbg !930
  %y83_SIMD.i = fmul <8 x float> <float 0x3E80000000000000, float 0x3E80000000000000, float 0x3E80000000000000, float 0x3E80000000000000, float 0x3E80000000000000, float 0x3E80000000000000, float 0x3E80000000000000, float 0x3E80000000000000>, %5196, !dbg !931
  %mx84_SIMD.i = or <8 x i32> <i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608>, %5197, !dbg !932
  %5198 = fsub <8 x float> %y83_SIMD.i, <float 0x405F0E6EE0000000, float 0x405F0E6EE0000000, float 0x405F0E6EE0000000, float 0x405F0E6EE0000000, float 0x405F0E6EE0000000, float 0x405F0E6EE0000000, float 0x405F0E6EE0000000, float 0x405F0E6EE0000000>, !dbg !933
  %5199 = bitcast <8 x i32> %mx84_SIMD.i to <8 x float>, !dbg !380
  %5200 = fmul <8 x float> <float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000, float 0x3FF7F7EEA0000000>, %5199, !dbg !934
  %5201 = fadd <8 x float> <float 0x3FD6889F20000000, float 0x3FD6889F20000000, float 0x3FD6889F20000000, float 0x3FD6889F20000000, float 0x3FD6889F20000000, float 0x3FD6889F20000000, float 0x3FD6889F20000000, float 0x3FD6889F20000000>, %5199, !dbg !935
  %5202 = fsub <8 x float> %5198, %5200, !dbg !933
  %5203 = bitcast <8 x i32> %5179 to <8 x float>, !dbg !936
  %5204 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %5201, <8 x float> %5203), !dbg !936
  %5205 = fdiv <8 x float> <float 0x3FFB9D3460000000, float 0x3FFB9D3460000000, float 0x3FFB9D3460000000, float 0x3FFB9D3460000000, float 0x3FFB9D3460000000, float 0x3FFB9D3460000000, float 0x3FFB9D3460000000, float 0x3FFB9D3460000000>, %5204, !dbg !936
  %5206 = fsub <8 x float> %5202, %5205, !dbg !933
  %5207 = fmul <8 x float> <float 9.600000e+01, float 9.600000e+01, float 9.600000e+01, float 9.600000e+01, float 9.600000e+01, float 9.600000e+01, float 9.600000e+01, float 9.600000e+01>, %5206, !dbg !937
  %5208 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> %5207, <8 x float> <float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02>, i8 1), !dbg !938
  %5209 = bitcast <8 x float> %5208 to <8 x i32>, !dbg !938
  %5210 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> %5207, <8 x float> zeroinitializer, i8 1), !dbg !939
  %5211 = bitcast <8 x float> %5210 to <8 x i32>, !dbg !939
  %5212 = fcmp fast olt <8 x float> %5207, <float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02>, !dbg !940
  %5213 = select <8 x i1> %5212, <8 x float> <float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02, float -1.260000e+02>, <8 x float> %5207, !dbg !940
  %5214 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> zeroinitializer, <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %5210), !dbg !941
  %5215 = fadd <8 x float> <float 0x405E518A20000000, float 0x405E518A20000000, float 0x405E518A20000000, float 0x405E518A20000000, float 0x405E518A20000000, float 0x405E518A20000000, float 0x405E518A20000000, float 0x405E518A20000000>, %5213, !dbg !941
  %5216 = fptosi <8 x float> %5213 to <8 x i32>, !dbg !942
  %5217 = sitofp <8 x i32> %5216 to <8 x float>, !dbg !943
  %5218 = fsub <8 x float> %5213, %5217, !dbg !944
  %z87_SIMD.i = fadd <8 x float> %5218, %5214, !dbg !944
  %5219 = fmul <8 x float> <float 0x3FF7D791A0000000, float 0x3FF7D791A0000000, float 0x3FF7D791A0000000, float 0x3FF7D791A0000000, float 0x3FF7D791A0000000, float 0x3FF7D791A0000000, float 0x3FF7D791A0000000, float 0x3FF7D791A0000000>, %z87_SIMD.i, !dbg !945
  %5220 = fsub <8 x float> <float 0x40135EBF00000000, float 0x40135EBF00000000, float 0x40135EBF00000000, float 0x40135EBF00000000, float 0x40135EBF00000000, float 0x40135EBF00000000, float 0x40135EBF00000000, float 0x40135EBF00000000>, %z87_SIMD.i, !dbg !946
  %5221 = bitcast <8 x i32> %5179 to <8 x float>, !dbg !947
  %5222 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %5220, <8 x float> %5221), !dbg !947
  %5223 = fdiv <8 x float> <float 0x403BBA5FC0000000, float 0x403BBA5FC0000000, float 0x403BBA5FC0000000, float 0x403BBA5FC0000000, float 0x403BBA5FC0000000, float 0x403BBA5FC0000000, float 0x403BBA5FC0000000, float 0x403BBA5FC0000000>, %5222, !dbg !947
  %5224 = fadd <8 x float> %5215, %5223, !dbg !941
  %5225 = fsub <8 x float> %5224, %5219, !dbg !941
  %5226 = fmul <8 x float> <float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000>, %5225, !dbg !948
  %5227 = fptosi <8 x float> %5226 to <8 x i32>, !dbg !949
  %5228 = bitcast <8 x i32> %5227 to <8 x float>, !dbg !380
  %5229 = fmul <8 x float> <float 9.800000e+01, float 9.800000e+01, float 9.800000e+01, float 9.800000e+01, float 9.800000e+01, float 9.800000e+01, float 9.800000e+01, float 9.800000e+01>, %5228, !dbg !985
  %5230 = fmul <8 x float> <float 9.700000e+01, float 9.700000e+01, float 9.700000e+01, float 9.700000e+01, float 9.700000e+01, float 9.700000e+01, float 9.700000e+01, float 9.700000e+01>, %5228, !dbg !986
  %5231 = fmul <8 x float> <float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000>, %5229, !dbg !985
  %5232 = fmul <8 x float> <float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000, float 0x3FC45F3060000000>, %5230, !dbg !986
  %5233 = fmul <8 x float> zeroinitializer, %5231, !dbg !973
  %5234 = fmul <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, %5232, !dbg !978
  %5235 = fmul <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, %5233, !dbg !977
  %5236 = fmul <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, %5231, !dbg !974
  %5237 = fadd <8 x float> %5193, %5234, !dbg !979
  %5238 = fadd <8 x float> zeroinitializer, %5235, !dbg !980
  %5239 = fadd <8 x float> zeroinitializer, %5235, !dbg !982
  %5240 = fadd <8 x float> %5194, %5236, !dbg !975
  %5241 = xor <8 x i32> %5103, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1>, !dbg !380
  %5242 = and <8 x i32> %5241, %5179, !dbg !380
  %5243 = bitcast <8 x i32> %5103 to <8 x float>, !dbg !380
  %5244 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %5162, <8 x float> %5071, <8 x float> %5243), !dbg !380
  %5245 = bitcast <8 x i32> %5103 to <8 x float>, !dbg !380
  %5246 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %5164, <8 x float> %5070, <8 x float> %5245), !dbg !380
  %5247 = bitcast <8 x i32> %5103 to <8 x float>, !dbg !380
  %5248 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %5157, <8 x float> %5066, <8 x float> %5247), !dbg !380
  %5249 = bitcast <8 x i32> %5103 to <8 x float>, !dbg !380
  %5250 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %5181, <8 x float> %5105, <8 x float> %5249), !dbg !380
  %5251 = bitcast <8 x i32> %5103 to <8 x float>, !dbg !380
  %5252 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %.mapped40.i, <8 x float> %5079, <8 x float> %5251), !dbg !380
  %5253 = bitcast <8 x i32> %5103 to <8 x float>, !dbg !380
  %5254 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> zeroinitializer, <8 x float> %5114, <8 x float> %5253), !dbg !380
  %5255 = bitcast <8 x i32> %5103 to <8 x float>, !dbg !380
  %5256 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %5183, <8 x float> %5116, <8 x float> %5255), !dbg !380
  %5257 = bitcast <8 x i32> %5103 to <8 x float>, !dbg !380
  %5258 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> zeroinitializer, <8 x float> %5118, <8 x float> %5257), !dbg !380
  %5259 = bitcast <8 x i32> %5103 to <8 x float>, !dbg !380
  %5260 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %5237, <8 x float> %5127, <8 x float> %5259), !dbg !380
  %5261 = bitcast <8 x i32> %5103 to <8 x float>, !dbg !380
  %5262 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %5238, <8 x float> %5125, <8 x float> %5261), !dbg !380
  %5263 = bitcast <8 x i32> %5103 to <8 x float>, !dbg !380
  %5264 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %5240, <8 x float> %5120, <8 x float> %5263), !dbg !380
  %5265 = bitcast <8 x i32> %5103 to <8 x float>, !dbg !380
  %5266 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %5239, <8 x float> %5128, <8 x float> %5265), !dbg !380
  %5267 = or <8 x i32> %5242, %5103, !dbg !987
  %.fca.0.insert.i937 = insertvalue %5 undef, float %extract.i906, 0, !dbg !987
  %.fca.0.insert48.i = insertvalue %5 undef, float %extract47.i, 0, !dbg !987
  %.fca.0.insert50.i = insertvalue %5 undef, float %extract49.i, 0, !dbg !987
  %.fca.0.insert52.i = insertvalue %5 undef, float %extract51.i, 0, !dbg !987
  %.fca.0.insert54.i = insertvalue %5 undef, float %extract53.i, 0, !dbg !987
  %.fca.0.insert56.i = insertvalue %5 undef, float %extract55.i, 0, !dbg !987
  %.fca.0.insert58.i = insertvalue %5 undef, float %extract57.i, 0, !dbg !987
  %.fca.0.insert60.i = insertvalue %5 undef, float %extract59.i, 0, !dbg !987
  %.fca.1.insert.i938 = insertvalue %5 %.fca.0.insert.i937, float %extract61.i, 1, !dbg !987
  %.fca.1.insert63.i = insertvalue %5 %.fca.0.insert48.i, float %extract62.i914, 1, !dbg !987
  %.fca.1.insert65.i = insertvalue %5 %.fca.0.insert50.i, float %extract64.i913, 1, !dbg !987
  %.fca.1.insert67.i = insertvalue %5 %.fca.0.insert52.i, float %extract66.i912, 1, !dbg !987
  %.fca.1.insert69.i = insertvalue %5 %.fca.0.insert54.i, float %extract68.i911, 1, !dbg !987
  %.fca.1.insert71.i = insertvalue %5 %.fca.0.insert56.i, float %extract70.i910, 1, !dbg !987
  %.fca.1.insert73.i = insertvalue %5 %.fca.0.insert58.i, float %extract72.i909, 1, !dbg !987
  %.fca.1.insert75.i = insertvalue %5 %.fca.0.insert60.i, float %extract74.i, 1, !dbg !987
  %.fca.2.insert.i939 = insertvalue %5 %.fca.1.insert.i938, float %extract76.i, 2, !dbg !987
  %.fca.2.insert78.i = insertvalue %5 %.fca.1.insert63.i, float %extract77.i922, 2, !dbg !987
  %.fca.2.insert80.i = insertvalue %5 %.fca.1.insert65.i, float %extract79.i921, 2, !dbg !987
  %.fca.2.insert82.i = insertvalue %5 %.fca.1.insert67.i, float %extract81.i920, 2, !dbg !987
  %.fca.2.insert84.i = insertvalue %5 %.fca.1.insert69.i, float %extract83.i919, 2, !dbg !987
  %.fca.2.insert86.i = insertvalue %5 %.fca.1.insert71.i, float %extract85.i918, 2, !dbg !987
  %.fca.2.insert88.i = insertvalue %5 %.fca.1.insert73.i, float %extract87.i917, 2, !dbg !987
  %.fca.2.insert90.i = insertvalue %5 %.fca.1.insert75.i, float %extract89.i, 2, !dbg !987
  %5268 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> zeroinitializer, <8 x float> %5246, i8 1), !dbg !888
  %5269 = bitcast <8 x float> %5268 to <8 x i32>, !dbg !888
  %5270 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %5246, !dbg !888
  %5271 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %5270, <8 x float> %5246, <8 x float> %5268), !dbg !888
  %5272 = fsub <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %5248, !dbg !888
  %5273 = call <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float> zeroinitializer, <8 x float> %5248, i8 1), !dbg !988
  %5274 = bitcast <8 x float> %5273 to <8 x i32>, !dbg !988
  %5275 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %5272, <8 x float> %5248, <8 x float> %5273), !dbg !989
  %5276 = extractvalue %0 %54, 10, !dbg !989
  %5277 = bitcast <8 x i32> %5267 to <8 x float>, !dbg !990
  %5278 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %5260, <8 x float> %5277), !dbg !990
  %5279 = fdiv <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %5278, !dbg !990
  %5280 = bitcast <8 x i32> %5267 to <8 x float>, !dbg !991
  %5281 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <8 x float> %5260, <8 x float> %5280), !dbg !991
  %5282 = fdiv <8 x float> %5252, %5281, !dbg !991
  %5283 = extractvalue %1 %45, 3, !dbg !992
  %5284 = extractvalue %0 %54, 6, !dbg !993
  %5285 = extractvalue %1 %45, 4, !dbg !994
  %5286 = extractvalue %1 %45, 1, !dbg !995
  %5287 = extractvalue %1 %45, 8, !dbg !996
  %5288 = fmul <8 x float> %cont_load8.i891, %cont_load14.i897, !dbg !913
  %5289 = fmul <8 x float> %cont_load22.i905, %5262, !dbg !997
  %5290 = extractvalue %0 %54, 11, !dbg !998
  %5291 = extractvalue %1 %45, 2, !dbg !999
  %5292 = extractvalue %0 %54, 9, !dbg !1000
  %5293 = fmul <8 x float> %cont_load6.i889, %cont_load14.i897, !dbg !913
  %5294 = extractvalue %1 %45, 7, !dbg !1001
  %5295 = extractvalue %0 %54, 8, !dbg !1002
  %5296 = extractvalue %0 %54, 7, !dbg !1003
  %5297 = extractvalue %1 %45, 6, !dbg !1004
  %5298 = extractvalue %1 %45, 5, !dbg !1005
  %5299 = fadd <8 x float> %cont_load2.i885, %5288, !dbg !1006
  %5300 = fadd <8 x float> %cont_load.i883, %5293, !dbg !1006
  %5301 = fmul <8 x float> %5289, %5282, !dbg !973
  %5302 = fmul <8 x float> %cont_load10.i893, %cont_load14.i897, !dbg !913
  %5303 = fmul <8 x float> %cont_load24.i908, %5264, !dbg !1007
  %5304 = fmul <8 x float> %cont_load26.i916, %5266, !dbg !1008
  %5305 = getelementptr inbounds [0 x float], [0 x float]* %5286, i64 0, i32 %lower2, !dbg !380
  %vec_cast93.i = bitcast float* %5305 to <8 x float>*, !dbg !380
  %5306 = icmp ne <8 x i32> %5267, zeroinitializer, !dbg !1006
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %5300, <8 x float>* %vec_cast93.i, i32 4, <8 x i1> %5306), !dbg !1006
  %5307 = fadd <8 x float> %cont_load4.i887, %5302, !dbg !1006
  %5308 = getelementptr inbounds [0 x float], [0 x float]* %5291, i64 0, i32 %lower2, !dbg !380
  %vec_cast94.i = bitcast float* %5308 to <8 x float>*, !dbg !380
  %5309 = icmp ne <8 x i32> %5267, zeroinitializer, !dbg !1009
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %5299, <8 x float>* %vec_cast94.i, i32 4, <8 x i1> %5309), !dbg !1009
  %5310 = fmul <8 x float> %5303, %5282, !dbg !1009
  %5311 = add nsw <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, %cont_load30.i926, !dbg !1010
  %5312 = fmul <8 x float> %5304, %5282, !dbg !1011
  %5313 = getelementptr inbounds [0 x float], [0 x float]* %5283, i64 0, i32 %lower2, !dbg !380
  %vec_cast95.i = bitcast float* %5313 to <8 x float>*, !dbg !380
  %5314 = icmp ne <8 x i32> %5267, zeroinitializer, !dbg !380
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %5307, <8 x float>* %vec_cast95.i, i32 4, <8 x i1> %5314), !dbg !380
  %5315 = getelementptr inbounds [0 x float], [0 x float]* %5285, i64 0, i32 %lower2, !dbg !380
  %vec_cast96.i = bitcast float* %5315 to <8 x float>*, !dbg !380
  %5316 = icmp ne <8 x i32> %5267, zeroinitializer, !dbg !380
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %5244, <8 x float>* %vec_cast96.i, i32 4, <8 x i1> %5316), !dbg !380
  %5317 = getelementptr inbounds [0 x float], [0 x float]* %5298, i64 0, i32 %lower2, !dbg !380
  %vec_cast97.i = bitcast float* %5317 to <8 x float>*, !dbg !380
  %5318 = icmp ne <8 x i32> %5267, zeroinitializer, !dbg !380
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %5246, <8 x float>* %vec_cast97.i, i32 4, <8 x i1> %5318), !dbg !380
  %5319 = getelementptr inbounds [0 x float], [0 x float]* %5297, i64 0, i32 %lower2, !dbg !380
  %vec_cast98.i = bitcast float* %5319 to <8 x float>*, !dbg !380
  %5320 = icmp ne <8 x i32> %5267, zeroinitializer, !dbg !380
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %5248, <8 x float>* %vec_cast98.i, i32 4, <8 x i1> %5320), !dbg !380
  %5321 = getelementptr inbounds [0 x float], [0 x float]* %5294, i64 0, i32 %lower2, !dbg !380
  %vec_cast99.i = bitcast float* %5321 to <8 x float>*, !dbg !380
  %5322 = icmp ne <8 x i32> %5267, zeroinitializer, !dbg !380
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> <float 0x3F1A36E2E0000000, float 0x3F1A36E2E0000000, float 0x3F1A36E2E0000000, float 0x3F1A36E2E0000000, float 0x3F1A36E2E0000000, float 0x3F1A36E2E0000000, float 0x3F1A36E2E0000000, float 0x3F1A36E2E0000000>, <8 x float>* %vec_cast99.i, i32 4, <8 x i1> %5322), !dbg !380
  %5323 = getelementptr inbounds [0 x float], [0 x float]* %5287, i64 0, i32 %lower2, !dbg !380
  %vec_cast100.i = bitcast float* %5323 to <8 x float>*, !dbg !380
  %5324 = icmp ne <8 x i32> %5267, zeroinitializer, !dbg !380
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> <float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000>, <8 x float>* %vec_cast100.i, i32 4, <8 x i1> %5324), !dbg !380
  %5325 = getelementptr inbounds [0 x i32], [0 x i32]* %5284, i64 0, i32 %lower2, !dbg !380
  %vec_cast101.i = bitcast i32* %5325 to <8 x i32>*, !dbg !380
  %5326 = icmp ne <8 x i32> %5267, zeroinitializer, !dbg !380
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %4996, <8 x i32>* %vec_cast101.i, i32 4, <8 x i1> %5326), !dbg !380
  %5327 = getelementptr inbounds [0 x float], [0 x float]* %5295, i64 0, i32 %lower2, !dbg !380
  %vec_cast102.i = bitcast float* %5327 to <8 x float>*, !dbg !380
  %5328 = icmp ne <8 x i32> %5267, zeroinitializer, !dbg !380
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %5301, <8 x float>* %vec_cast102.i, i32 4, <8 x i1> %5328), !dbg !380
  %5329 = getelementptr inbounds [0 x float], [0 x float]* %5292, i64 0, i32 %lower2, !dbg !380
  %vec_cast103.i = bitcast float* %5329 to <8 x float>*, !dbg !380
  %5330 = icmp ne <8 x i32> %5267, zeroinitializer, !dbg !380
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %5310, <8 x float>* %vec_cast103.i, i32 4, <8 x i1> %5330), !dbg !380
  %5331 = getelementptr inbounds [0 x float], [0 x float]* %5276, i64 0, i32 %lower2, !dbg !380
  %vec_cast104.i940 = bitcast float* %5331 to <8 x float>*, !dbg !380
  %5332 = icmp ne <8 x i32> %5267, zeroinitializer, !dbg !380
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %5312, <8 x float>* %vec_cast104.i940, i32 4, <8 x i1> %5332), !dbg !380
  %5333 = getelementptr inbounds [0 x float], [0 x float]* %5296, i64 0, i32 %lower2, !dbg !380
  %vec_cast105.i941 = bitcast float* %5333 to <8 x float>*, !dbg !380
  %5334 = icmp ne <8 x i32> %5267, zeroinitializer, !dbg !380
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %5279, <8 x float>* %vec_cast105.i941, i32 4, <8 x i1> %5334), !dbg !380
  %5335 = getelementptr inbounds [0 x i32], [0 x i32]* %5290, i64 0, i32 %lower2, !dbg !380
  %vec_cast106.i942 = bitcast i32* %5335 to <8 x i32>*, !dbg !380
  %5336 = icmp ne <8 x i32> %5267, zeroinitializer, !dbg !1012
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %5311, <8 x i32>* %vec_cast106.i942, i32 4, <8 x i1> %5336), !dbg !1012
  br label %_cont459, !dbg !380

_cont459:                                         ; preds = %expr_true458
  %5337 = add nsw i32 8, %lower2, !dbg !167
  br label %unroll_step1, !dbg !168
}

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.sqrt.f32(float) #0

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.floor.f32(float) #0

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.minnum.f32(float, float) #0

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.cos.f32(float) #0

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.sin.f32(float) #0

define internal void @lambda_1047894(i32 %j_1047896, i32 %_1047898, %1 %_1047899, %0 %_1047900, [0 x %3]* %_1047901, %0 %_1047902, i32 %_1047903, [0 x %2]* %_1047904, [0 x i32]* %_1047905, %0 %_1047906, [0 x %2]* %_1047907, i32 %_1047908, [0 x i32]* %_1047909, %1 %_1047910) #1 !dbg !372 {
lambda_1047894_start:
  %0 = extractvalue %1 %_1047899, 2, !dbg !1013
  %1 = extractvalue %1 %_1047899, 5, !dbg !1014
  %2 = extractvalue %1 %_1047899, 3, !dbg !1015
  %3 = extractvalue %1 %_1047899, 6, !dbg !1016
  %4 = extractvalue %1 %_1047899, 1, !dbg !1017
  %5 = extractvalue %1 %_1047899, 4, !dbg !1018
  %6 = add nsw i32 %_1047898, %j_1047896, !dbg !1019
  %7 = getelementptr inbounds [0 x float], [0 x float]* %0, i64 0, i32 %6, !dbg !1013
  %8 = getelementptr inbounds [0 x float], [0 x float]* %1, i64 0, i32 %6, !dbg !1014
  %9 = getelementptr inbounds [0 x float], [0 x float]* %2, i64 0, i32 %6, !dbg !1015
  %10 = getelementptr inbounds [0 x float], [0 x float]* %3, i64 0, i32 %6, !dbg !1016
  %11 = getelementptr inbounds [0 x float], [0 x float]* %4, i64 0, i32 %6, !dbg !1017
  %12 = getelementptr inbounds [0 x float], [0 x float]* %5, i64 0, i32 %6, !dbg !1018
  %13 = load float, float* %11, align 4, !dbg !1017
  %14 = load float, float* %7, align 4, !dbg !1013
  %15 = load float, float* %9, align 4, !dbg !1015
  %16 = load float, float* %12, align 4, !dbg !1018
  %17 = fcmp olt float 0.000000e+00, %16, !dbg !1020
  %18 = fsub float -0.000000e+00, %16, !dbg !1021
  %19 = load float, float* %8, align 4, !dbg !1014
  %20 = select i1 %17, float %16, float %18, !dbg !1022
  %21 = load float, float* %10, align 4, !dbg !1016
  %22 = fsub float -0.000000e+00, %19, !dbg !1021
  %23 = fcmp olt float 0.000000e+00, %19, !dbg !1020
  %24 = select i1 %23, float %19, float %22, !dbg !1022
  %25 = fcmp olt float 0.000000e+00, %21, !dbg !1020
  %26 = fsub float -0.000000e+00, %21, !dbg !1021
  %27 = select i1 %25, float %21, float %26, !dbg !1022
  %28 = extractvalue %0 %_1047906, 9, !dbg !1023
  %29 = extractvalue %0 %_1047902, 3, !dbg !1024
  %30 = extractvalue %0 %_1047906, 6, !dbg !1025
  %31 = getelementptr inbounds [0 x float], [0 x float]* %29, i64 0, i32 %6, !dbg !1024
  %32 = extractvalue %0 %_1047906, 11, !dbg !1026
  %33 = extractvalue %0 %_1047906, 7, !dbg !1027
  %34 = extractvalue %0 %_1047902, 5, !dbg !1028
  %35 = extractvalue %0 %_1047902, 4, !dbg !1029
  %36 = extractvalue %0 %_1047902, 2, !dbg !1030
  %37 = getelementptr inbounds [0 x float], [0 x float]* %33, i64 0, i32 %6, !dbg !1027
  %38 = extractvalue %0 %_1047906, 8, !dbg !1031
  %39 = getelementptr inbounds [0 x i32], [0 x i32]* %32, i64 0, i32 %6, !dbg !1026
  %40 = extractvalue %0 %_1047906, 10, !dbg !1032
  %41 = getelementptr inbounds [0 x float], [0 x float]* %28, i64 0, i32 %6, !dbg !1023
  %42 = getelementptr inbounds [0 x i32], [0 x i32]* %30, i64 0, i32 %6, !dbg !1025
  %43 = getelementptr inbounds [0 x float], [0 x float]* %34, i64 0, i32 %6, !dbg !1028
  %44 = getelementptr inbounds [0 x float], [0 x float]* %35, i64 0, i32 %6, !dbg !1029
  %45 = getelementptr inbounds [0 x i32], [0 x i32]* %36, i64 0, i32 %6, !dbg !1030
  %46 = getelementptr inbounds [0 x float], [0 x float]* %38, i64 0, i32 %6, !dbg !1031
  %47 = getelementptr inbounds [0 x float], [0 x float]* %40, i64 0, i32 %6, !dbg !1032
  %48 = load i32, i32* %45, align 4, !dbg !1030
  %49 = getelementptr inbounds [0 x %2], [0 x %2]* %_1047907, i64 0, i32 %48, !dbg !1033
  %50 = mul nsw i32 4, %48, !dbg !1034
  %51 = load float, float* %31, align 4, !dbg !1024
  %52 = add nsw i32 2, %50, !dbg !1035
  %53 = add nsw i32 1, %50, !dbg !1036
  %54 = getelementptr inbounds [0 x i32], [0 x i32]* %_1047905, i64 0, i32 %50, !dbg !1037
  %55 = getelementptr inbounds [0 x i32], [0 x i32]* %_1047905, i64 0, i32 %52, !dbg !1038
  %56 = getelementptr inbounds [0 x i32], [0 x i32]* %_1047905, i64 0, i32 %53, !dbg !1039
  %57 = load float, float* %44, align 4, !dbg !1029
  %58 = fsub float 1.000000e+00, %57, !dbg !1040
  %59 = load float, float* %43, align 4, !dbg !1028
  %60 = fsub float %58, %59, !dbg !1040
  %61 = load i32, i32* %42, align 4, !dbg !1025
  %62 = load float, float* %46, align 4, !dbg !1031
  %63 = load float, float* %41, align 4, !dbg !1023
  %64 = load float, float* %47, align 4, !dbg !1032
  %65 = load float, float* %37, align 4, !dbg !1027
  %66 = load i32, i32* %39, align 4, !dbg !1026
  %67 = load i32, i32* %54, align 4, !dbg !1037
  %68 = load i32, i32* %56, align 4, !dbg !1039
  %69 = getelementptr inbounds [0 x %2], [0 x %2]* %_1047904, i64 0, i32 %67, !dbg !1041
  %70 = load i32, i32* %55, align 4, !dbg !1038
  %71 = getelementptr inbounds [0 x %2], [0 x %2]* %_1047904, i64 0, i32 %68, !dbg !1041
  %srov_gep164 = getelementptr %2, %2* %49, i32 0, i32 0, !dbg !1033
  %72 = load float, float* %srov_gep164, !dbg !1033
  %srov_gep165 = getelementptr %2, %2* %49, i32 0, i32 1, !dbg !1033
  %73 = load float, float* %srov_gep165, !dbg !1033
  %srov_gep166 = getelementptr %2, %2* %49, i32 0, i32 2, !dbg !1033
  %74 = load float, float* %srov_gep166, !dbg !1033
  %75 = getelementptr inbounds [0 x %2], [0 x %2]* %_1047904, i64 0, i32 %70, !dbg !1041
  %srov_gep = getelementptr %2, %2* %69, i32 0, i32 0, !dbg !1041
  %76 = load float, float* %srov_gep, !dbg !1041
  %srov_gep156 = getelementptr %2, %2* %69, i32 0, i32 1, !dbg !1041
  %77 = load float, float* %srov_gep156, !dbg !1041
  %srov_gep157 = getelementptr %2, %2* %69, i32 0, i32 2, !dbg !1041
  %78 = load float, float* %srov_gep157, !dbg !1041
  %srov_gep158 = getelementptr %2, %2* %71, i32 0, i32 0, !dbg !1041
  %79 = load float, float* %srov_gep158, !dbg !1041
  %srov_gep159 = getelementptr %2, %2* %71, i32 0, i32 1, !dbg !1041
  %80 = load float, float* %srov_gep159, !dbg !1041
  %srov_gep160 = getelementptr %2, %2* %71, i32 0, i32 2, !dbg !1041
  %81 = load float, float* %srov_gep160, !dbg !1041
  %82 = extractvalue %2 undef, 0, !dbg !1042
  %83 = extractvalue %2 undef, 1, !dbg !1043
  %84 = fmul float %60, %78, !dbg !1044
  %85 = fmul float %60, %76, !dbg !1044
  %86 = fmul float %60, %77, !dbg !1044
  %srov_gep161 = getelementptr %2, %2* %75, i32 0, i32 0, !dbg !1041
  %87 = load float, float* %srov_gep161, !dbg !1041
  %srov_gep162 = getelementptr %2, %2* %75, i32 0, i32 1, !dbg !1041
  %88 = load float, float* %srov_gep162, !dbg !1041
  %srov_gep163 = getelementptr %2, %2* %75, i32 0, i32 2, !dbg !1041
  %89 = load float, float* %srov_gep163, !dbg !1041
  %90 = extractvalue %2 undef, 2, !dbg !1045
  %91 = extractvalue %2 undef, 0, !dbg !1046
  %92 = extractvalue %2 undef, 1, !dbg !1047
  %93 = fmul float %57, %81, !dbg !1048
  %94 = fmul float %57, %79, !dbg !1048
  %95 = fmul float %57, %80, !dbg !1048
  %96 = extractvalue %2 undef, 2, !dbg !1049
  %97 = extractvalue %2 undef, 0, !dbg !1050
  %98 = extractvalue %2 undef, 1, !dbg !1051
  %99 = fadd float %84, %93, !dbg !1044
  %100 = fadd float %85, %94, !dbg !1044
  %101 = fadd float %86, %95, !dbg !1044
  %102 = fmul float %59, %89, !dbg !1052
  %103 = fmul float %59, %87, !dbg !1052
  %104 = fmul float %59, %88, !dbg !1052
  %105 = fadd float %99, %102, !dbg !1044
  %106 = fadd float %100, %103, !dbg !1044
  %107 = fadd float %101, %104, !dbg !1044
  %108 = fmul float %105, %105, !dbg !1053
  %109 = fmul float %106, %106, !dbg !1054
  %110 = fmul float %107, %107, !dbg !1055
  %111 = fadd float %109, %110, !dbg !1054
  %112 = fadd float %111, %108, !dbg !1054
  %113 = call float @llvm.sqrt.f32(float %112), !dbg !1056
  %114 = extractvalue %2 undef, 0, !dbg !1057
  %115 = extractvalue %2 undef, 1, !dbg !1058
  %116 = extractvalue %2 undef, 2, !dbg !1059
  %117 = fmul float %16, %72, !dbg !1054
  %118 = fmul float %19, %73, !dbg !1055
  %119 = fmul float %21, %74, !dbg !1053
  %120 = fadd float %117, %118, !dbg !1054
  %121 = fadd float %120, %119, !dbg !1054
  %is_entering = fcmp ole float %121, 0.000000e+00, !dbg !1060
  %neg.is_entering = xor i1 %is_entering, true, !dbg !1061
  br label %expr_false7

expr_false7:                                      ; preds = %lambda_1047894_start
  %122 = fsub float -0.000000e+00, %72, !dbg !1062
  %123 = fsub float -0.000000e+00, %74, !dbg !1062
  %124 = fsub float -0.000000e+00, %73, !dbg !1062
  br label %if_join.s, !dbg !1063

if_join.s:                                        ; preds = %expr_false7
  %.R181.b = select i1 %is_entering, float %72, float %122
  %.R185.b = select i1 %is_entering, float %73, float %124
  %.R189.b = select i1 %is_entering, float %74, float %123
  br label %if_join

if_join:                                          ; preds = %if_join.s
  %125 = or i1 %is_entering, %neg.is_entering, !dbg !1064
  %126 = fdiv float 1.000000e+00, %113, !dbg !1064
  %127 = fmul float %105, %126, !dbg !1065
  %128 = fmul float %106, %126, !dbg !1065
  %129 = fmul float %107, %126, !dbg !1065
  %130 = fmul float %21, %127, !dbg !1053
  %131 = fmul float %16, %128, !dbg !1054
  %132 = fmul float %19, %129, !dbg !1055
  %133 = fadd float %131, %132, !dbg !1054
  %134 = fadd float %133, %130, !dbg !1054
  %135 = fcmp ole float %134, 0.000000e+00, !dbg !1066
  %neg. = xor i1 %135, true, !dbg !1067
  %edge_if_join.1 = and i1 %125, %neg., !dbg !1067
  %edge_if_join.0 = and i1 %125, %135, !dbg !1067
  br label %expr_false10

expr_false10:                                     ; preds = %if_join
  %136 = fsub float -0.000000e+00, %128, !dbg !1062
  %137 = fsub float -0.000000e+00, %127, !dbg !1062
  %138 = fsub float -0.000000e+00, %129, !dbg !1062
  br label %expr_true11, !dbg !1068

expr_true11:                                      ; preds = %expr_false10
  br label %if_join12.s, !dbg !1068

if_join12.s:                                      ; preds = %expr_true11
  %.R192.b = select i1 %edge_if_join.1, float %136, float %128
  %.R196.b = select i1 %edge_if_join.1, float %138, float %129
  %.R200.b = select i1 %edge_if_join.1, float %137, float %127
  br label %if_join12

if_join12:                                        ; preds = %if_join12.s
  %139 = or i1 %edge_if_join.0, %edge_if_join.1, !dbg !1069
  %140 = getelementptr inbounds [0 x %3], [0 x %3]* %_1047901, i64 0, i32 %67, !dbg !1069
  %141 = getelementptr inbounds [0 x %3], [0 x %3]* %_1047901, i64 0, i32 %70, !dbg !1069
  %142 = getelementptr inbounds [0 x %3], [0 x %3]* %_1047901, i64 0, i32 %68, !dbg !1069
  %srov_gep167 = getelementptr %3, %3* %140, i32 0, i32 0, !dbg !1069
  %143 = load float, float* %srov_gep167, !dbg !1069
  %srov_gep168 = getelementptr %3, %3* %140, i32 0, i32 1, !dbg !1069
  %144 = load float, float* %srov_gep168, !dbg !1069
  %srov_gep169 = getelementptr %3, %3* %142, i32 0, i32 0, !dbg !1069
  %145 = load float, float* %srov_gep169, !dbg !1069
  %srov_gep170 = getelementptr %3, %3* %142, i32 0, i32 1, !dbg !1069
  %146 = load float, float* %srov_gep170, !dbg !1069
  %147 = fmul float %60, %143, !dbg !1044
  %srov_gep171 = getelementptr %3, %3* %141, i32 0, i32 0, !dbg !1069
  %148 = load float, float* %srov_gep171, !dbg !1069
  %srov_gep172 = getelementptr %3, %3* %141, i32 0, i32 1, !dbg !1069
  %149 = load float, float* %srov_gep172, !dbg !1069
  %150 = fmul float %57, %145, !dbg !1048
  %151 = fadd float %147, %150, !dbg !1044
  %152 = fmul float %59, %148, !dbg !1052
  %153 = fadd float %151, %152, !dbg !1044
  %154 = call float @llvm.floor.f32(float %153), !dbg !1070
  %155 = extractvalue %3 undef, 1, !dbg !1071
  %156 = extractvalue %3 undef, 1, !dbg !1071
  %157 = fmul float %57, %146, !dbg !1048
  %158 = fmul float %60, %144, !dbg !1044
  %159 = fadd float %158, %157, !dbg !1044
  %160 = extractvalue %3 undef, 1, !dbg !1071
  %161 = fmul float %59, %149, !dbg !1052
  %162 = fadd float %159, %161, !dbg !1044
  %163 = call float @llvm.floor.f32(float %162), !dbg !1070
  %164 = sub nsw i32 %_1047908, 1, !dbg !1072
  %165 = sitofp i32 %_1047908 to float, !dbg !1073
  %166 = fsub float %153, %154, !dbg !1074
  %u = fmul float %166, %165, !dbg !1075
  %167 = fptosi float %u to i32, !dbg !1076
  %168 = icmp slt i32 %167, %164, !dbg !1077
  %x0 = select i1 %168, i32 %167, i32 %164, !dbg !1078
  %169 = sub nsw i32 %_1047903, 1, !dbg !1079
  %170 = sitofp i32 %_1047903 to float, !dbg !1080
  %171 = fsub float %162, %163, !dbg !1074
  %v = fmul float %171, %170, !dbg !1081
  %172 = fptosi float %v to i32, !dbg !1082
  %173 = icmp slt i32 %172, %169, !dbg !1077
  %. = select i1 %173, i32 %172, i32 %169, !dbg !1083
  %174 = add nsw i32 1, %x0, !dbg !1084
  %175 = icmp slt i32 %174, %164, !dbg !1077
  %x1 = select i1 %175, i32 %174, i32 %164, !dbg !1078
  %176 = add nsw i32 1, %., !dbg !1085
  %177 = icmp slt i32 %176, %169, !dbg !1077
  %.147 = select i1 %177, i32 %176, i32 %169, !dbg !1083
  %178 = mul nsw i32 %.147, %_1047908, !dbg !1086
  %179 = add nsw i32 %178, %x1, !dbg !1086
  %180 = getelementptr inbounds [0 x i32], [0 x i32]* %_1047909, i64 0, i32 %179, !dbg !1087
  %181 = add nsw i32 %178, %x0, !dbg !1086
  %182 = getelementptr inbounds [0 x i32], [0 x i32]* %_1047909, i64 0, i32 %181, !dbg !1087
  %183 = mul nsw i32 %., %_1047908, !dbg !1086
  %184 = add nsw i32 %183, %x0, !dbg !1086
  %185 = add nsw i32 %183, %x1, !dbg !1086
  %186 = getelementptr inbounds [0 x i32], [0 x i32]* %_1047909, i64 0, i32 %184, !dbg !1087
  %187 = getelementptr inbounds [0 x i32], [0 x i32]* %_1047909, i64 0, i32 %185, !dbg !1087
  %188 = load i32, i32* %186, align 4, !dbg !1087
  %189 = load i32, i32* %187, align 4, !dbg !1087
  %190 = load i32, i32* %182, align 4, !dbg !1087
  %191 = load i32, i32* %180, align 4, !dbg !1087
  %192 = extractvalue %2 undef, 1, !dbg !1058
  %193 = lshr i32 %190, 16, !dbg !1088
  %194 = extractvalue %2 undef, 0, !dbg !1057
  %195 = sitofp i32 %167 to float, !dbg !1014
  %196 = lshr i32 %189, 8, !dbg !1089
  %197 = extractvalue %2 undef, 1, !dbg !1090
  %r = and i32 255, %190, !dbg !1091
  %r112 = and i32 255, %189, !dbg !1091
  %198 = sitofp i32 %172 to float, !dbg !1016
  %g = and i32 255, %196, !dbg !1092
  %r113 = and i32 255, %188, !dbg !1091
  %199 = extractvalue %2 undef, 2, !dbg !1059
  %200 = uitofp i32 %g to float, !dbg !1093
  %201 = uitofp i32 %r112 to float, !dbg !1094
  %202 = fmul float %.R196.b, %22, !dbg !1055
  %b = and i32 255, %193, !dbg !1095
  %203 = fmul float %.R192.b, %18, !dbg !1054
  %204 = lshr i32 %188, 16, !dbg !1088
  %205 = lshr i32 %188, 8, !dbg !1089
  %kx = fsub float %u, %195, !dbg !1096
  %r114 = and i32 255, %191, !dbg !1091
  %206 = lshr i32 %189, 16, !dbg !1088
  %207 = lshr i32 %190, 8, !dbg !1089
  %208 = fmul float %.R200.b, %26, !dbg !1053
  %209 = uitofp i32 %r to float, !dbg !1094
  %ky = fsub float %v, %198, !dbg !1097
  %210 = lshr i32 %191, 8, !dbg !1089
  %211 = lshr i32 %191, 16, !dbg !1088
  %212 = uitofp i32 %r113 to float, !dbg !1094
  %213 = fmul float 0x3F70101020000000, %200, !dbg !1098
  %214 = fmul float 0x3F70101020000000, %201, !dbg !1099
  %215 = fadd float %203, %202, !dbg !1054
  %216 = uitofp i32 %b to float, !dbg !1100
  %b116 = and i32 255, %204, !dbg !1095
  %g117 = and i32 255, %205, !dbg !1092
  %217 = fmul float %kx, %213, !dbg !1101
  %218 = fsub float 1.000000e+00, %kx, !dbg !1102
  %219 = fmul float %kx, %214, !dbg !1101
  %220 = uitofp i32 %r114 to float, !dbg !1094
  %b119 = and i32 255, %206, !dbg !1095
  %g120 = and i32 255, %207, !dbg !1092
  %221 = fadd float %215, %208, !dbg !1054
  %222 = fmul float 0x3F70101020000000, %209, !dbg !1099
  %223 = fsub float 1.000000e+00, %ky, !dbg !1102
  %g121 = and i32 255, %210, !dbg !1092
  %b122 = and i32 255, %211, !dbg !1095
  %224 = fmul float 0x3F70101020000000, %212, !dbg !1099
  %225 = fmul float 0x3F70101020000000, %216, !dbg !1103
  %226 = uitofp i32 %b116 to float, !dbg !1100
  %227 = uitofp i32 %g117 to float, !dbg !1093
  %228 = fmul float %218, %222, !dbg !1104
  %229 = fmul float %218, %224, !dbg !1104
  %230 = fmul float %218, %225, !dbg !1104
  %231 = fadd float %229, %219, !dbg !1104
  %232 = fmul float 0x3F70101020000000, %220, !dbg !1099
  %233 = uitofp i32 %b119 to float, !dbg !1100
  %234 = uitofp i32 %g120 to float, !dbg !1093
  %235 = fmul float 2.000000e+00, %221, !dbg !1105
  %236 = fmul float %223, %231, !dbg !1104
  %237 = uitofp i32 %g121 to float, !dbg !1093
  %238 = uitofp i32 %b122 to float, !dbg !1100
  %239 = fmul float 0x3F70101020000000, %226, !dbg !1103
  %240 = fmul float 0x3F70101020000000, %227, !dbg !1098
  %241 = fmul float %kx, %232, !dbg !1101
  %242 = fmul float 0x3F70101020000000, %233, !dbg !1103
  %243 = fmul float 0x3F70101020000000, %234, !dbg !1098
  %244 = fmul float %.R200.b, %235, !dbg !1065
  %245 = fmul float %.R192.b, %235, !dbg !1065
  %246 = fmul float %.R196.b, %235, !dbg !1065
  %247 = fmul float 0x3F70101020000000, %237, !dbg !1098
  %248 = fmul float 0x3F70101020000000, %238, !dbg !1103
  %249 = fmul float %218, %239, !dbg !1104
  %250 = fmul float %218, %240, !dbg !1104
  %251 = fadd float %228, %241, !dbg !1104
  %252 = fmul float %kx, %242, !dbg !1101
  %253 = fmul float %218, %243, !dbg !1104
  %254 = fsub float %244, %26, !dbg !1106
  %255 = fsub float %245, %18, !dbg !1106
  %256 = fsub float %246, %22, !dbg !1106
  %257 = fmul float %kx, %247, !dbg !1101
  %258 = fmul float %kx, %248, !dbg !1101
  %259 = fadd float %249, %252, !dbg !1104
  %260 = fadd float %250, %217, !dbg !1104
  %261 = fmul float %ky, %251, !dbg !1101
  %262 = fadd float %253, %257, !dbg !1104
  %263 = fadd float %230, %258, !dbg !1104
  %264 = fmul float %223, %259, !dbg !1104
  %265 = fmul float %223, %260, !dbg !1104
  %266 = fadd float %236, %261, !dbg !1104
  %267 = fmul float %ky, %262, !dbg !1101
  %268 = fmul float %ky, %263, !dbg !1101
  %269 = fadd float %264, %268, !dbg !1104
  %270 = fadd float %265, %267, !dbg !1104
  %271 = fmul float 0x3FD45F3060000000, %266, !dbg !1107
  %272 = fmul float 0x3FCB367A00000000, %266, !dbg !1108
  %273 = fmul float 0x3FD45F3060000000, %269, !dbg !1109
  %274 = fmul float 0x3FB27BB300000000, %269, !dbg !1110
  %275 = fmul float 0x3FD45F3060000000, %270, !dbg !1111
  %276 = fmul float 0x3FE6E2EB20000000, %270, !dbg !1112
  %277 = fadd float %272, %276, !dbg !1108
  %278 = fadd float %277, %274, !dbg !1108
  %279 = icmp eq i32 %61, 0, !dbg !1107
  %280 = select i1 %279, i32 1, i32 %61, !dbg !1113
  %281 = shl i32 %280, 13, !dbg !1114
  %282 = xor i32 %280, %281, !dbg !1115
  %283 = lshr i32 %282, 17, !dbg !1116
  %284 = xor i32 %282, %283, !dbg !1117
  %285 = shl i32 %284, 5, !dbg !1118
  %286 = xor i32 %284, %285, !dbg !1119
  %287 = icmp eq i32 %286, 0, !dbg !1107
  %288 = fadd float %278, %278, !dbg !1120
  %289 = select i1 %287, i32 1, i32 %286, !dbg !1113
  %290 = fcmp oeq float %288, 0.000000e+00, !dbg !1121
  %291 = fdiv float %278, %288, !dbg !1122
  %292 = and i32 8388607, %286, !dbg !1123
  %293 = shl i32 %289, 13, !dbg !1114
  %294 = select i1 %290, float 0.000000e+00, float %291, !dbg !1124
  %295 = or i32 1065353216, %292, !dbg !1125
  %296 = xor i32 %289, %293, !dbg !1115
  %297 = fsub float 1.000000e+00, %294, !dbg !1126
  %298 = bitcast i32 %295 to float, !dbg !1127
  %299 = lshr i32 %296, 17, !dbg !1116
  %300 = fsub float %298, 1.000000e+00, !dbg !1127
  %301 = xor i32 %296, %299, !dbg !1117
  %302 = fcmp ole float %294, %300, !dbg !1128
  %303 = shl i32 %301, 5, !dbg !1118
  %304 = xor i32 %301, %303, !dbg !1119
  %305 = icmp eq i32 %304, 0, !dbg !1107
  %306 = select i1 %305, i32 1, i32 %304, !dbg !1113
  %307 = shl i32 %306, 13, !dbg !1114
  %308 = xor i32 %306, %307, !dbg !1115
  %309 = and i32 8388607, %304, !dbg !1123
  %310 = lshr i32 %308, 17, !dbg !1116
  %311 = or i32 1065353216, %309, !dbg !1125
  %312 = xor i32 %308, %310, !dbg !1117
  %313 = bitcast i32 %311 to float, !dbg !1127
  %314 = shl i32 %312, 5, !dbg !1118
  %315 = fsub float %313, 1.000000e+00, !dbg !1127
  %316 = xor i32 %312, %314, !dbg !1119
  %phi = fmul float 0x401921FB60000000, %315, !dbg !1129
  %317 = and i32 8388607, %316, !dbg !1123
  %318 = or i32 1065353216, %317, !dbg !1125
  %319 = bitcast i32 %318 to float, !dbg !1127
  %320 = fsub float %319, 1.000000e+00, !dbg !1127
  %neg.173 = xor i1 %302, true, !dbg !1130
  %edge_if_join12.1 = and i1 %139, %neg.173, !dbg !1130
  %edge_if_join12.0 = and i1 %139, %302, !dbg !1130
  br label %expr_false45

expr_false45:                                     ; preds = %if_join12
  %321 = bitcast float %320 to i32, !dbg !1131
  %322 = and i32 8388607, %321, !dbg !1132
  %323 = uitofp i32 %321 to float, !dbg !1133
  %mx = or i32 1056964608, %322, !dbg !1134
  %y = fmul float 0x3E80000000000000, %323, !dbg !1135
  %324 = bitcast i32 %mx to float, !dbg !1136
  %325 = fsub float %y, 0x405F0E6EE0000000, !dbg !1137
  %326 = fmul float 0x3FF7F7EEA0000000, %324, !dbg !1138
  %327 = fadd float 0x3FD6889F20000000, %324, !dbg !1139
  %328 = fsub float %325, %326, !dbg !1137
  %329 = fdiv float 0x3FFB9D3460000000, %327, !dbg !1140
  %330 = fsub float %328, %329, !dbg !1137
  %331 = fmul float 0x3FB3B13B20000000, %330, !dbg !1141
  %332 = fcmp olt float %331, -1.260000e+02, !dbg !1142
  %333 = fcmp olt float %331, 0.000000e+00, !dbg !1143
  %334 = select i1 %332, float -1.260000e+02, float %331, !dbg !1144
  %335 = select i1 %333, float 1.000000e+00, float 0.000000e+00, !dbg !1145
  %336 = fadd float 0x405E518A20000000, %334, !dbg !1146
  %337 = fptosi float %334 to i32, !dbg !1147
  %338 = sitofp i32 %337 to float, !dbg !1148
  %339 = fsub float %334, %338, !dbg !1149
  %z = fadd float %339, %335, !dbg !1149
  %340 = fmul float 0x3FF7D791A0000000, %z, !dbg !1150
  %341 = fsub float 0x40135EBF00000000, %z, !dbg !1151
  %342 = fdiv float 0x403BBA5FC0000000, %341, !dbg !1152
  %343 = fadd float %336, %342, !dbg !1146
  %344 = fsub float %343, %340, !dbg !1146
  %345 = fmul float 0x4160000000000000, %344, !dbg !1153
  %346 = fptosi float %345 to i32, !dbg !1154
  %347 = bitcast i32 %346 to float, !dbg !1155
  %348 = call float @llvm.minnum.f32(float %347, float 1.000000e+00), !dbg !1156
  %349 = fmul float %348, %348, !dbg !1157
  %350 = fsub float 1.000000e+00, %349, !dbg !1158
  %351 = call float @llvm.sqrt.f32(float %350), !dbg !1159
  %352 = call float @llvm.cos.f32(float %phi), !dbg !1160
  %353 = call float @llvm.sin.f32(float %phi), !dbg !1161
  %354 = fsub float -0.000000e+00, %256, !dbg !1162
  %355 = fmul float %255, %256, !dbg !1163
  %356 = fmul float %256, %348, !dbg !1053
  %357 = fmul float %256, %256, !dbg !1164
  %y135 = fmul float %351, %353, !dbg !1165
  %358 = fcmp ole float 0.000000e+00, %254, !dbg !1166
  %x = fmul float %351, %352, !dbg !1167
  %359 = select i1 %358, float 1.000000e+00, float -1.000000e+00, !dbg !1168
  %360 = fmul float %255, %348, !dbg !1053
  %361 = fsub float -0.000000e+00, %359, !dbg !1169
  %362 = fmul float %359, %255, !dbg !1170
  %363 = fmul float %254, %348, !dbg !1053
  %364 = fmul float %354, %y135, !dbg !1055
  %365 = fadd float %359, %254, !dbg !1171
  %366 = fmul float %361, %255, !dbg !1169
  %367 = fmul float %362, %255, !dbg !1170
  %a = fdiv float -1.000000e+00, %365, !dbg !1172
  %368 = fmul float %366, %x, !dbg !1054
  %369 = fmul float %367, %a, !dbg !1170
  %b136 = fmul float %355, %a, !dbg !1163
  %370 = fmul float %357, %a, !dbg !1164
  %371 = fadd float %368, %364, !dbg !1054
  %372 = fadd float 1.000000e+00, %369, !dbg !1173
  %373 = fmul float %b136, %y135, !dbg !1055
  %374 = fmul float %359, %b136, !dbg !1174
  %375 = fadd float %359, %370, !dbg !1175
  %376 = fadd float %371, %363, !dbg !1054
  %377 = fmul float %372, %x, !dbg !1054
  %378 = fadd float %377, %373, !dbg !1054
  %379 = fmul float %374, %x, !dbg !1054
  %380 = fmul float %375, %y135, !dbg !1055
  %381 = fmul float %376, %.R200.b, !dbg !1053
  %382 = fadd float %378, %360, !dbg !1054
  %383 = fadd float %379, %380, !dbg !1054
  %384 = fmul float %382, %.R192.b, !dbg !1054
  %385 = fadd float %383, %356, !dbg !1054
  %386 = fmul float %385, %.R196.b, !dbg !1055
  %387 = fadd float %384, %386, !dbg !1054
  %388 = fadd float %387, %381, !dbg !1054
  %389 = fcmp ole float 0.000000e+00, %388, !dbg !1176
  %cos = select i1 %389, float %388, float 0.000000e+00, !dbg !1177
  %390 = fcmp une float %348, 0.000000e+00, !dbg !1178
  %391 = fdiv float %320, %348, !dbg !1179
  %392 = select i1 %390, float %391, float 0.000000e+00, !dbg !1180
  %393 = fmul float 1.300000e+01, %392, !dbg !1181
  %pdf = fmul float 0x3FC45F3060000000, %393, !dbg !1181
  %394 = fcmp olt float 0.000000e+00, %pdf, !dbg !1182
  %edge_expr_false45.0 = and i1 %edge_if_join12.1, %394, !dbg !1183
  %neg.174 = xor i1 %394, true, !dbg !1183
  %edge_expr_false45.1 = and i1 %edge_if_join12.1, %neg.174, !dbg !1183
  br label %expr_true53

expr_true53:                                      ; preds = %expr_false45
  %395 = fmul float %382, %.R181.b, !dbg !1054
  %396 = fmul float %385, %.R185.b, !dbg !1055
  %397 = fmul float %376, %.R189.b, !dbg !1053
  %398 = fadd float %395, %396, !dbg !1054
  %399 = fadd float %398, %397, !dbg !1054
  %400 = fcmp olt float 0.000000e+00, %399, !dbg !1184
  %edge_expr_true53.0 = and i1 %edge_expr_false45.0, %400, !dbg !1185
  %neg.175 = xor i1 %400, true, !dbg !1185
  %edge_expr_true53.1 = and i1 %edge_expr_false45.0, %neg.175, !dbg !1185
  br label %expr_true55

expr_true55:                                      ; preds = %expr_true53
  br label %infix_result.s, !dbg !1186

infix_result.s:                                   ; preds = %expr_true55
  br label %infix_result

infix_result:                                     ; preds = %infix_result.s
  %401 = or i1 %edge_expr_false45.1, %edge_expr_true53.1, !dbg !1187
  %402 = or i1 %401, %edge_expr_true53.0, !dbg !1187
  %pdf. = select i1 %edge_expr_true53.0, float %pdf, float 1.000000e+00, !dbg !1187
  %edge_infix_result.0 = and i1 %402, %edge_expr_true53.0, !dbg !1018
  %neg.valid = xor i1 %edge_expr_true53.0, true, !dbg !1018
  %edge_infix_result.1 = and i1 %402, %neg.valid, !dbg !1018
  br label %expr_true61

expr_true61:                                      ; preds = %infix_result
  %403 = fmul float 1.400000e+01, %pdf, !dbg !1188
  %404 = fdiv float %403, 1.300000e+01, !dbg !1188
  %405 = fmul float %269, %404, !dbg !1109
  %406 = fmul float %266, %404, !dbg !1107
  %407 = fmul float %270, %404, !dbg !1111
  br label %if_join62.s, !dbg !1189

if_join62.s:                                      ; preds = %expr_true61
  %.b209 = select i1 %edge_infix_result.1, float 0.000000e+00, float %406
  %.b213 = select i1 %edge_infix_result.1, float 0.000000e+00, float %407
  %.b217 = select i1 %edge_infix_result.1, float 0.000000e+00, float %405
  br label %if_join62

if_join62:                                        ; preds = %if_join62.s
  %408 = or i1 %edge_infix_result.1, %edge_infix_result.0, !dbg !1190
  %409 = extractvalue %5 undef, 2, !dbg !1190
  %410 = fmul float 0x3FD45F3060000000, %cos, !dbg !1191
  %411 = fmul float %297, %273, !dbg !1168
  %412 = extractvalue %5 undef, 0, !dbg !1192
  %413 = fmul float %297, %271, !dbg !1193
  %414 = fmul float %297, %275, !dbg !1194
  %415 = fmul float %297, %410, !dbg !1104
  %416 = fmul float %294, %pdf., !dbg !1101
  %417 = fmul float %294, %.b217, !dbg !1195
  %418 = fadd float %411, %417, !dbg !1168
  %419 = fmul float %294, %.b209, !dbg !1196
  %420 = fadd float %413, %419, !dbg !1193
  %421 = fadd float %415, %416, !dbg !1104
  %422 = fmul float %294, %.b213, !dbg !1197
  %423 = fadd float %414, %422, !dbg !1194
  br label %expr_true67, !dbg !1198

expr_true67:                                      ; preds = %if_join62
  %424 = fsub float 1.000000e+00, %320, !dbg !1199
  %425 = call float @llvm.sqrt.f32(float %424), !dbg !1200
  %426 = call float @llvm.sqrt.f32(float %320), !dbg !1201
  %427 = call float @llvm.cos.f32(float %phi), !dbg !1160
  %428 = call float @llvm.sin.f32(float %phi), !dbg !1161
  %429 = fmul float %.R196.b, %425, !dbg !1053
  %x137 = fmul float %426, %427, !dbg !1167
  %430 = fmul float %.R196.b, %.R196.b, !dbg !1164
  %431 = fmul float %.R200.b, %425, !dbg !1053
  %432 = fmul float %.R192.b, %425, !dbg !1053
  %433 = fmul float 0x3FD45F3060000000, %425, !dbg !1191
  %434 = fcmp ole float 0.000000e+00, %.R200.b, !dbg !1166
  %435 = fsub float -0.000000e+00, %.R196.b, !dbg !1162
  %y138 = fmul float %426, %428, !dbg !1165
  %436 = fmul float %.R192.b, %.R196.b, !dbg !1163
  %437 = fmul float %435, %y138, !dbg !1055
  %438 = fcmp olt float 0.000000e+00, %433, !dbg !1182
  %439 = select i1 %434, float 1.000000e+00, float -1.000000e+00, !dbg !1168
  %440 = fsub float -0.000000e+00, %439, !dbg !1169
  %441 = fmul float %439, %.R192.b, !dbg !1170
  %442 = fadd float %439, %.R200.b, !dbg !1171
  %443 = fmul float %440, %.R192.b, !dbg !1169
  %444 = fmul float %441, %.R192.b, !dbg !1170
  %a139 = fdiv float -1.000000e+00, %442, !dbg !1172
  %445 = fmul float %443, %x137, !dbg !1054
  %446 = fmul float %444, %a139, !dbg !1170
  %b140 = fmul float %436, %a139, !dbg !1163
  %447 = fmul float %430, %a139, !dbg !1164
  %448 = fadd float %445, %437, !dbg !1054
  %449 = fadd float 1.000000e+00, %446, !dbg !1173
  %450 = fmul float %b140, %y138, !dbg !1055
  %451 = fmul float %439, %b140, !dbg !1174
  %452 = fadd float %439, %447, !dbg !1175
  %453 = fadd float %448, %431, !dbg !1054
  %454 = fmul float %449, %x137, !dbg !1054
  %455 = fadd float %454, %450, !dbg !1054
  %456 = fmul float %451, %x137, !dbg !1054
  %457 = fmul float %452, %y138, !dbg !1055
  %458 = fadd float %455, %432, !dbg !1054
  %459 = fadd float %456, %457, !dbg !1054
  %460 = fadd float %459, %429, !dbg !1054
  %edge_expr_true67.0 = and i1 %edge_if_join12.0, %438, !dbg !1183
  %neg.177 = xor i1 %438, true, !dbg !1183
  %edge_expr_true67.1 = and i1 %edge_if_join12.0, %neg.177, !dbg !1183
  br label %expr_true75

expr_true75:                                      ; preds = %expr_true67
  %461 = fmul float %453, %.R189.b, !dbg !1053
  %462 = fmul float %458, %.R181.b, !dbg !1054
  %463 = fmul float %460, %.R185.b, !dbg !1055
  %464 = fadd float %462, %463, !dbg !1054
  %465 = fadd float %464, %461, !dbg !1054
  %466 = fcmp olt float 0.000000e+00, %465, !dbg !1184
  %edge_expr_true75.0 = and i1 %edge_expr_true67.0, %466, !dbg !1185
  %neg.178 = xor i1 %466, true, !dbg !1185
  %edge_expr_true75.1 = and i1 %edge_expr_true67.0, %neg.178, !dbg !1185
  br label %expr_true78

expr_true78:                                      ; preds = %expr_true75
  br label %infix_result79.s, !dbg !1186

infix_result79.s:                                 ; preds = %expr_true78
  br label %infix_result79

infix_result79:                                   ; preds = %infix_result79.s
  %467 = or i1 %edge_expr_true67.1, %edge_expr_true75.1, !dbg !1187
  %468 = or i1 %467, %edge_expr_true75.0, !dbg !1187
  %.151 = select i1 %edge_expr_true75.0, float %433, float 1.000000e+00, !dbg !1187
  %if_join88.repl.0 = select i1 %edge_expr_true75.0, float %271, float 0.000000e+00, !dbg !1018
  %if_join88.repl.1 = select i1 %edge_expr_true75.0, float %275, float 0.000000e+00, !dbg !1018
  %if_join88.repl.2 = select i1 %edge_expr_true75.0, float %273, float 0.000000e+00, !dbg !1018
  %469 = fmul float %453, %254, !dbg !1053
  %470 = fmul float %458, %255, !dbg !1054
  %471 = fmul float %460, %256, !dbg !1055
  %472 = fadd float %470, %471, !dbg !1054
  %473 = fadd float %472, %469, !dbg !1054
  %474 = fcmp ole float 0.000000e+00, %473, !dbg !1176
  %.152 = select i1 %474, float %473, float 0.000000e+00, !dbg !1202
  %475 = bitcast float %.152 to i32, !dbg !1131
  %476 = fmul float %297, %.151, !dbg !1104
  %477 = fmul float %297, %if_join88.repl.1, !dbg !1194
  %478 = fmul float %297, %if_join88.repl.2, !dbg !1168
  %479 = and i32 8388607, %475, !dbg !1132
  %480 = uitofp i32 %475 to float, !dbg !1133
  %mx141 = or i32 1056964608, %479, !dbg !1134
  %481 = fmul float %297, %if_join88.repl.0, !dbg !1193
  %y142 = fmul float 0x3E80000000000000, %480, !dbg !1135
  %482 = bitcast i32 %mx141 to float, !dbg !1136
  %483 = fsub float %y142, 0x405F0E6EE0000000, !dbg !1137
  %484 = fmul float 0x3FF7F7EEA0000000, %482, !dbg !1138
  %485 = fadd float 0x3FD6889F20000000, %482, !dbg !1139
  %486 = fsub float %483, %484, !dbg !1137
  %487 = fdiv float 0x3FFB9D3460000000, %485, !dbg !1140
  %488 = fsub float %486, %487, !dbg !1137
  %489 = fmul float 1.200000e+01, %488, !dbg !1141
  %490 = fcmp olt float %489, -1.260000e+02, !dbg !1142
  %491 = fcmp olt float %489, 0.000000e+00, !dbg !1143
  %492 = select i1 %490, float -1.260000e+02, float %489, !dbg !1144
  %493 = select i1 %491, float 1.000000e+00, float 0.000000e+00, !dbg !1145
  %494 = fadd float 0x405E518A20000000, %492, !dbg !1146
  %495 = fptosi float %492 to i32, !dbg !1147
  %496 = sitofp i32 %495 to float, !dbg !1148
  %497 = fsub float %492, %496, !dbg !1149
  %z145 = fadd float %497, %493, !dbg !1149
  %498 = fmul float 0x3FF7D791A0000000, %z145, !dbg !1150
  %499 = fsub float 0x40135EBF00000000, %z145, !dbg !1151
  %500 = fdiv float 0x403BBA5FC0000000, %499, !dbg !1152
  %501 = fadd float %494, %500, !dbg !1146
  %502 = fsub float %501, %498, !dbg !1146
  %503 = fmul float 0x4160000000000000, %502, !dbg !1153
  %504 = fptosi float %503 to i32, !dbg !1154
  %505 = bitcast i32 %504 to float, !dbg !1155
  %506 = fmul float 1.300000e+01, %505, !dbg !1203
  %507 = fmul float 0x3FC45F3060000000, %506, !dbg !1203
  %508 = fmul float %294, %507, !dbg !1101
  %509 = fmul float 1.400000e+01, %505, !dbg !1204
  %510 = fadd float %476, %508, !dbg !1104
  %511 = fmul float 0x3FC45F3060000000, %509, !dbg !1204
  %512 = fmul float %266, %511, !dbg !1107
  %513 = fmul float %270, %511, !dbg !1111
  %514 = fmul float %269, %511, !dbg !1109
  %515 = fmul float %294, %512, !dbg !1196
  %516 = fmul float %294, %513, !dbg !1197
  %517 = fmul float %294, %514, !dbg !1195
  %518 = fadd float %481, %515, !dbg !1193
  %519 = fadd float %477, %516, !dbg !1194
  %520 = fadd float %478, %517, !dbg !1168
  br label %if_join97.s, !dbg !1198

if_join97.s:                                      ; preds = %infix_result79
  %.not = xor i1 %408, true
  %.b231271 = and i1 %.not, %468
  %.R235.b = select i1 %408, float %382, float %458
  %.R239.b = select i1 %408, float %385, float %460
  %.R243.b = select i1 %408, float %376, float %453
  %pdf..R.b = select i1 %408, float %pdf., float %.151
  %cos.R.b = select i1 %408, float %cos, float %425
  %.b209.R.b = select i1 %408, float %.b209, float %if_join88.repl.0
  %.b213.R.b = select i1 %408, float %.b213, float %if_join88.repl.1
  %.b217.R.b = select i1 %408, float %.b217, float %if_join88.repl.2
  %.R258.b = select i1 %408, float %421, float %510
  %.R262.b = select i1 %408, float %420, float %518
  %.R266.b = select i1 %408, float %423, float %519
  %.R270.b = select i1 %408, float %418, float %520
  br label %if_join97

if_join97:                                        ; preds = %if_join97.s
  %521 = or i1 %.b231271, %408, !dbg !1205
  %.fca.0.insert = insertvalue %5 undef, float %62, 0, !dbg !1205
  %.fca.1.insert = insertvalue %5 %.fca.0.insert, float %63, 1, !dbg !1205
  %.fca.2.insert = insertvalue %5 %.fca.1.insert, float %64, 2, !dbg !1205
  %522 = extractvalue %2 undef, 1, !dbg !1206
  %523 = fcmp olt float 0.000000e+00, %.R239.b, !dbg !1020
  %524 = fsub float -0.000000e+00, %.R239.b, !dbg !1021
  %525 = select i1 %523, float %.R239.b, float %524, !dbg !1022
  %526 = extractvalue %2 undef, 2, !dbg !1207
  %527 = fcmp olt float 0.000000e+00, %.R243.b, !dbg !1020
  %528 = fsub float -0.000000e+00, %.R243.b, !dbg !1021
  %529 = select i1 %527, float %.R243.b, float %528, !dbg !1022
  %530 = extractvalue %6 undef, 2, !dbg !1208
  %531 = extractvalue %1 %_1047910, 4, !dbg !1209
  %532 = extractvalue %0 %_1047900, 8, !dbg !1210
  %533 = extractvalue %0 %_1047900, 6, !dbg !1211
  %534 = getelementptr inbounds [0 x float], [0 x float]* %531, i64 0, i32 %6, !dbg !1209
  %535 = extractvalue %5 undef, 2, !dbg !1212
  %536 = fmul float %21, %51, !dbg !1065
  %537 = extractvalue %5 undef, 0, !dbg !1213
  %538 = fdiv float 1.000000e+00, %.R258.b, !dbg !1214
  %539 = extractvalue %0 %_1047900, 7, !dbg !1215
  %540 = extractvalue %1 %_1047910, 3, !dbg !1216
  %541 = extractvalue %1 %_1047910, 1, !dbg !1217
  %542 = extractvalue %0 %_1047900, 10, !dbg !1218
  %543 = extractvalue %1 %_1047910, 2, !dbg !1219
  %544 = getelementptr inbounds [0 x i32], [0 x i32]* %533, i64 0, i32 %6, !dbg !1211
  %545 = extractvalue %1 %_1047910, 7, !dbg !1220
  %546 = extractvalue %1 %_1047910, 6, !dbg !1221
  %547 = extractvalue %0 %_1047900, 9, !dbg !1222
  %548 = fmul float %16, %51, !dbg !1065
  %549 = extractvalue %1 %_1047910, 5, !dbg !1223
  %550 = fdiv float %cos.R.b, %.R258.b, !dbg !1224
  %551 = extractvalue %0 %_1047900, 11, !dbg !1225
  %552 = fadd float %13, %548, !dbg !1226
  %553 = getelementptr inbounds [0 x float], [0 x float]* %542, i64 0, i32 %6, !dbg !1218
  %554 = getelementptr inbounds [0 x float], [0 x float]* %543, i64 0, i32 %6, !dbg !1219
  %555 = extractvalue %1 %_1047910, 8, !dbg !1227
  %556 = getelementptr inbounds [0 x float], [0 x float]* %532, i64 0, i32 %6, !dbg !1210
  %557 = getelementptr inbounds [0 x float], [0 x float]* %539, i64 0, i32 %6, !dbg !1215
  %558 = getelementptr inbounds [0 x float], [0 x float]* %545, i64 0, i32 %6, !dbg !1220
  %559 = fmul float %19, %51, !dbg !1065
  %560 = fadd float %15, %536, !dbg !1226
  %561 = fmul float %62, %.R262.b, !dbg !1228
  %562 = getelementptr inbounds [0 x float], [0 x float]* %540, i64 0, i32 %6, !dbg !1216
  %563 = getelementptr inbounds [0 x float], [0 x float]* %541, i64 0, i32 %6, !dbg !1217
  %564 = getelementptr inbounds [0 x float], [0 x float]* %546, i64 0, i32 %6, !dbg !1221
  %565 = getelementptr inbounds [0 x float], [0 x float]* %547, i64 0, i32 %6, !dbg !1222
  %566 = getelementptr inbounds [0 x float], [0 x float]* %549, i64 0, i32 %6, !dbg !1223
  %567 = fmul float %561, %550, !dbg !1107
  %568 = getelementptr inbounds [0 x i32], [0 x i32]* %551, i64 0, i32 %6, !dbg !1225
  %569 = fmul float %63, %.R266.b, !dbg !1229
  %570 = getelementptr inbounds [0 x float], [0 x float]* %555, i64 0, i32 %6, !dbg !1227
  %571 = fadd float %14, %559, !dbg !1226
  store float %552, float* %563, align 4, !dbg !1217
  %572 = fmul float %64, %.R270.b, !dbg !1230
  %573 = fmul float %569, %550, !dbg !1111
  store float %571, float* %554, align 4, !dbg !1219
  %574 = add nsw i32 1, %66, !dbg !1231
  %575 = fmul float %572, %550, !dbg !1109
  store float %560, float* %562, align 4, !dbg !1216
  store float %.R235.b, float* %534, align 4, !dbg !1209
  store float %.R239.b, float* %566, align 4, !dbg !1223
  store float %.R243.b, float* %564, align 4, !dbg !1221
  store float 0x3F1A36E2E0000000, float* %558, align 4, !dbg !1220
  store float 0x47EFFFFFE0000000, float* %570, align 4, !dbg !1227
  store i32 %316, i32* %544, align 4, !dbg !1211
  store float %567, float* %556, align 4, !dbg !1210
  store float %573, float* %565, align 4, !dbg !1222
  store float %575, float* %553, align 4, !dbg !1218
  store float %538, float* %557, align 4, !dbg !1215
  store i32 %574, i32* %568, align 4, !dbg !1225
  ret void, !dbg !1232
}

define internal void @lambda_1046066(i32 %j_1046068, i32 %_1046070, [0 x i32]* %_1046071, %0 %_1046072, i32 %_1046073, [0 x %3]* %_1046074, %0 %_1046075, [0 x %2]* %_1046076, %1 %_1046077, %0 %_1046078, [0 x i32]* %_1046079, [0 x %2]* %_1046080, i32 %_1046081, %1 %_1046082) #1 !dbg !544 {
lambda_1046066_start:
  %0 = add nsw i32 %_1046081, %j_1046068, !dbg !1233
  %1 = extractvalue %1 %_1046082, 4, !dbg !1234
  %2 = extractvalue %1 %_1046082, 1, !dbg !1235
  %3 = extractvalue %1 %_1046082, 2, !dbg !1236
  %4 = extractvalue %1 %_1046082, 3, !dbg !1237
  %5 = getelementptr inbounds [0 x float], [0 x float]* %4, i64 0, i32 %0, !dbg !1237
  %6 = getelementptr inbounds [0 x float], [0 x float]* %3, i64 0, i32 %0, !dbg !1236
  %7 = getelementptr inbounds [0 x float], [0 x float]* %1, i64 0, i32 %0, !dbg !1234
  %8 = extractvalue %1 %_1046082, 5, !dbg !1238
  %9 = extractvalue %1 %_1046082, 6, !dbg !1239
  %10 = getelementptr inbounds [0 x float], [0 x float]* %8, i64 0, i32 %0, !dbg !1238
  %11 = getelementptr inbounds [0 x float], [0 x float]* %9, i64 0, i32 %0, !dbg !1239
  %12 = getelementptr inbounds [0 x float], [0 x float]* %2, i64 0, i32 %0, !dbg !1235
  %13 = load float, float* %12, align 4, !dbg !1235
  %14 = load float, float* %6, align 4, !dbg !1236
  %15 = load float, float* %5, align 4, !dbg !1237
  %16 = load float, float* %7, align 4, !dbg !1234
  %17 = fsub float -0.000000e+00, %16, !dbg !1240
  %18 = fcmp olt float 0.000000e+00, %16, !dbg !1241
  %19 = load float, float* %10, align 4, !dbg !1238
  %20 = select i1 %18, float %16, float %17, !dbg !1242
  %21 = load float, float* %11, align 4, !dbg !1239
  %22 = fcmp olt float 0.000000e+00, %19, !dbg !1241
  %23 = fsub float -0.000000e+00, %19, !dbg !1240
  %24 = select i1 %22, float %19, float %23, !dbg !1242
  %25 = fcmp olt float 0.000000e+00, %21, !dbg !1241
  %26 = fsub float -0.000000e+00, %21, !dbg !1240
  %27 = select i1 %25, float %21, float %26, !dbg !1242
  %28 = extractvalue %0 %_1046072, 2, !dbg !1243
  %29 = extractvalue %0 %_1046072, 3, !dbg !1244
  %30 = extractvalue %0 %_1046075, 7, !dbg !1245
  %31 = getelementptr inbounds [0 x i32], [0 x i32]* %28, i64 0, i32 %0, !dbg !1243
  %32 = extractvalue %0 %_1046075, 6, !dbg !1246
  %33 = extractvalue %0 %_1046075, 10, !dbg !1247
  %34 = extractvalue %0 %_1046072, 4, !dbg !1248
  %35 = extractvalue %0 %_1046072, 5, !dbg !1249
  %36 = extractvalue %0 %_1046075, 11, !dbg !1250
  %37 = getelementptr inbounds [0 x i32], [0 x i32]* %32, i64 0, i32 %0, !dbg !1246
  %38 = getelementptr inbounds [0 x float], [0 x float]* %33, i64 0, i32 %0, !dbg !1247
  %39 = getelementptr inbounds [0 x float], [0 x float]* %34, i64 0, i32 %0, !dbg !1248
  %40 = extractvalue %0 %_1046075, 9, !dbg !1251
  %41 = load i32, i32* %31, align 4, !dbg !1243
  %42 = getelementptr inbounds [0 x float], [0 x float]* %30, i64 0, i32 %0, !dbg !1245
  %43 = getelementptr inbounds [0 x float], [0 x float]* %29, i64 0, i32 %0, !dbg !1244
  %44 = extractvalue %0 %_1046075, 8, !dbg !1252
  %45 = getelementptr inbounds [0 x float], [0 x float]* %35, i64 0, i32 %0, !dbg !1249
  %46 = getelementptr inbounds [0 x i32], [0 x i32]* %36, i64 0, i32 %0, !dbg !1250
  %47 = getelementptr inbounds [0 x float], [0 x float]* %40, i64 0, i32 %0, !dbg !1251
  %48 = load float, float* %43, align 4, !dbg !1244
  %49 = getelementptr inbounds [0 x float], [0 x float]* %44, i64 0, i32 %0, !dbg !1252
  %50 = getelementptr inbounds [0 x %2], [0 x %2]* %_1046076, i64 0, i32 %41, !dbg !1253
  %51 = mul nsw i32 4, %41, !dbg !1254
  %52 = add nsw i32 2, %51, !dbg !1255
  %53 = add nsw i32 1, %51, !dbg !1256
  %54 = getelementptr inbounds [0 x i32], [0 x i32]* %_1046079, i64 0, i32 %51, !dbg !1257
  %55 = load float, float* %39, align 4, !dbg !1248
  %56 = getelementptr inbounds [0 x i32], [0 x i32]* %_1046079, i64 0, i32 %52, !dbg !1258
  %57 = getelementptr inbounds [0 x i32], [0 x i32]* %_1046079, i64 0, i32 %53, !dbg !1259
  %58 = fsub float 1.000000e+00, %55, !dbg !1260
  %59 = load float, float* %45, align 4, !dbg !1249
  %60 = fsub float %58, %59, !dbg !1260
  %61 = load i32, i32* %37, align 4, !dbg !1246
  %62 = load float, float* %49, align 4, !dbg !1252
  %63 = load float, float* %47, align 4, !dbg !1251
  %64 = load float, float* %38, align 4, !dbg !1247
  %65 = load float, float* %42, align 4, !dbg !1245
  %66 = load i32, i32* %46, align 4, !dbg !1250
  %67 = load i32, i32* %54, align 4, !dbg !1257
  %68 = load i32, i32* %57, align 4, !dbg !1259
  %69 = getelementptr inbounds [0 x %2], [0 x %2]* %_1046080, i64 0, i32 %67, !dbg !1261
  %70 = load i32, i32* %56, align 4, !dbg !1258
  %71 = getelementptr inbounds [0 x %2], [0 x %2]* %_1046080, i64 0, i32 %68, !dbg !1261
  %srov_gep128 = getelementptr %2, %2* %50, i32 0, i32 0, !dbg !1253
  %72 = load float, float* %srov_gep128, !dbg !1253
  %srov_gep129 = getelementptr %2, %2* %50, i32 0, i32 1, !dbg !1253
  %73 = load float, float* %srov_gep129, !dbg !1253
  %srov_gep130 = getelementptr %2, %2* %50, i32 0, i32 2, !dbg !1253
  %74 = load float, float* %srov_gep130, !dbg !1253
  %75 = getelementptr inbounds [0 x %2], [0 x %2]* %_1046080, i64 0, i32 %70, !dbg !1261
  %srov_gep = getelementptr %2, %2* %69, i32 0, i32 0, !dbg !1261
  %76 = load float, float* %srov_gep, !dbg !1261
  %srov_gep120 = getelementptr %2, %2* %69, i32 0, i32 1, !dbg !1261
  %77 = load float, float* %srov_gep120, !dbg !1261
  %srov_gep121 = getelementptr %2, %2* %69, i32 0, i32 2, !dbg !1261
  %78 = load float, float* %srov_gep121, !dbg !1261
  %srov_gep122 = getelementptr %2, %2* %71, i32 0, i32 0, !dbg !1261
  %79 = load float, float* %srov_gep122, !dbg !1261
  %srov_gep123 = getelementptr %2, %2* %71, i32 0, i32 1, !dbg !1261
  %80 = load float, float* %srov_gep123, !dbg !1261
  %srov_gep124 = getelementptr %2, %2* %71, i32 0, i32 2, !dbg !1261
  %81 = load float, float* %srov_gep124, !dbg !1261
  %82 = fmul float %60, %78, !dbg !1262
  %83 = fmul float %60, %76, !dbg !1262
  %84 = fmul float %60, %77, !dbg !1262
  %srov_gep125 = getelementptr %2, %2* %75, i32 0, i32 0, !dbg !1261
  %85 = load float, float* %srov_gep125, !dbg !1261
  %srov_gep126 = getelementptr %2, %2* %75, i32 0, i32 1, !dbg !1261
  %86 = load float, float* %srov_gep126, !dbg !1261
  %srov_gep127 = getelementptr %2, %2* %75, i32 0, i32 2, !dbg !1261
  %87 = load float, float* %srov_gep127, !dbg !1261
  %88 = fmul float %55, %81, !dbg !1263
  %89 = fmul float %55, %79, !dbg !1263
  %90 = fmul float %55, %80, !dbg !1263
  %91 = extractvalue %2 undef, 2, !dbg !1264
  %92 = extractvalue %2 undef, 0, !dbg !1265
  %93 = extractvalue %2 undef, 1, !dbg !1266
  %94 = fadd float %82, %88, !dbg !1262
  %95 = fadd float %83, %89, !dbg !1262
  %96 = fadd float %84, %90, !dbg !1262
  %97 = fmul float %59, %87, !dbg !1267
  %98 = fmul float %59, %85, !dbg !1267
  %99 = fmul float %59, %86, !dbg !1267
  %100 = fadd float %94, %97, !dbg !1262
  %101 = fadd float %95, %98, !dbg !1262
  %102 = fadd float %96, %99, !dbg !1262
  %103 = fmul float %100, %100, !dbg !1268
  %104 = fmul float %101, %101, !dbg !1269
  %105 = fmul float %102, %102, !dbg !1270
  %106 = fadd float %104, %105, !dbg !1269
  %107 = fadd float %106, %103, !dbg !1269
  %108 = call float @llvm.sqrt.f32(float %107), !dbg !1271
  %109 = extractvalue %2 undef, 0, !dbg !1272
  %110 = extractvalue %2 undef, 2, !dbg !1273
  %111 = extractvalue %2 undef, 1, !dbg !1274
  %112 = fmul float %16, %72, !dbg !1269
  %113 = fmul float %21, %74, !dbg !1268
  %114 = fmul float %19, %73, !dbg !1270
  %115 = fadd float %112, %114, !dbg !1269
  %116 = fadd float %115, %113, !dbg !1269
  %is_entering = fcmp ole float %116, 0.000000e+00, !dbg !1275
  %neg.is_entering = xor i1 %is_entering, true, !dbg !1276
  br label %expr_false7

expr_false7:                                      ; preds = %lambda_1046066_start
  %117 = fsub float -0.000000e+00, %73, !dbg !1277
  %118 = fsub float -0.000000e+00, %74, !dbg !1277
  %119 = fsub float -0.000000e+00, %72, !dbg !1277
  br label %if_join.s, !dbg !1278

if_join.s:                                        ; preds = %expr_false7
  %.R145.b = select i1 %is_entering, float %72, float %119
  %.R149.b = select i1 %is_entering, float %73, float %117
  %.R153.b = select i1 %is_entering, float %74, float %118
  br label %if_join

if_join:                                          ; preds = %if_join.s
  %120 = or i1 %is_entering, %neg.is_entering, !dbg !1279
  %121 = fdiv float 1.000000e+00, %108, !dbg !1279
  %122 = fmul float %101, %121, !dbg !1280
  %123 = fmul float %16, %122, !dbg !1269
  %124 = fmul float %102, %121, !dbg !1280
  %125 = fmul float %100, %121, !dbg !1280
  %126 = fmul float %19, %124, !dbg !1270
  %127 = fmul float %21, %125, !dbg !1268
  %128 = fadd float %123, %126, !dbg !1269
  %129 = fadd float %128, %127, !dbg !1269
  %130 = fcmp ole float %129, 0.000000e+00, !dbg !1281
  %neg. = xor i1 %130, true, !dbg !1282
  %edge_if_join.1 = and i1 %120, %neg., !dbg !1282
  %edge_if_join.0 = and i1 %120, %130, !dbg !1282
  br label %expr_false10

expr_false10:                                     ; preds = %if_join
  %131 = fsub float -0.000000e+00, %124, !dbg !1277
  %132 = fsub float -0.000000e+00, %125, !dbg !1277
  %133 = fsub float -0.000000e+00, %122, !dbg !1277
  br label %expr_true11, !dbg !1283

expr_true11:                                      ; preds = %expr_false10
  br label %if_join12.s, !dbg !1283

if_join12.s:                                      ; preds = %expr_true11
  %.R156.b = select i1 %edge_if_join.1, float %133, float %122
  %.R160.b = select i1 %edge_if_join.1, float %131, float %124
  %.R164.b = select i1 %edge_if_join.1, float %132, float %125
  br label %if_join12

if_join12:                                        ; preds = %if_join12.s
  %134 = or i1 %edge_if_join.0, %edge_if_join.1, !dbg !1284
  %135 = getelementptr inbounds [0 x %3], [0 x %3]* %_1046074, i64 0, i32 %70, !dbg !1284
  %136 = getelementptr inbounds [0 x %3], [0 x %3]* %_1046074, i64 0, i32 %67, !dbg !1284
  %137 = getelementptr inbounds [0 x %3], [0 x %3]* %_1046074, i64 0, i32 %68, !dbg !1284
  %srov_gep131 = getelementptr %3, %3* %136, i32 0, i32 0, !dbg !1284
  %138 = load float, float* %srov_gep131, !dbg !1284
  %srov_gep132 = getelementptr %3, %3* %136, i32 0, i32 1, !dbg !1284
  %139 = load float, float* %srov_gep132, !dbg !1284
  %srov_gep133 = getelementptr %3, %3* %137, i32 0, i32 0, !dbg !1284
  %140 = load float, float* %srov_gep133, !dbg !1284
  %srov_gep134 = getelementptr %3, %3* %137, i32 0, i32 1, !dbg !1284
  %141 = load float, float* %srov_gep134, !dbg !1284
  %142 = fmul float %60, %138, !dbg !1262
  %srov_gep135 = getelementptr %3, %3* %135, i32 0, i32 0, !dbg !1284
  %143 = load float, float* %srov_gep135, !dbg !1284
  %srov_gep136 = getelementptr %3, %3* %135, i32 0, i32 1, !dbg !1284
  %144 = load float, float* %srov_gep136, !dbg !1284
  %145 = fmul float %55, %140, !dbg !1263
  %146 = fadd float %142, %145, !dbg !1262
  %147 = fmul float %59, %143, !dbg !1267
  %148 = fadd float %146, %147, !dbg !1262
  %149 = call float @llvm.floor.f32(float %148), !dbg !1285
  %150 = fmul float %59, %144, !dbg !1267
  %151 = fmul float %60, %139, !dbg !1262
  %152 = fmul float %55, %141, !dbg !1263
  %153 = fadd float %151, %152, !dbg !1262
  %154 = fadd float %153, %150, !dbg !1262
  %155 = call float @llvm.floor.f32(float %154), !dbg !1285
  %156 = fsub float %148, %149, !dbg !1286
  %157 = sitofp i32 %_1046070 to float, !dbg !1287
  %158 = sub nsw i32 %_1046070, 1, !dbg !1288
  %u = fmul float %156, %157, !dbg !1289
  %159 = fptosi float %u to i32, !dbg !1290
  %160 = icmp slt i32 %159, %158, !dbg !1291
  %x0 = select i1 %160, i32 %159, i32 %158, !dbg !1292
  %161 = sitofp i32 %_1046073 to float, !dbg !1293
  %162 = fsub float %154, %155, !dbg !1286
  %163 = sub nsw i32 %_1046073, 1, !dbg !1294
  %v = fmul float %162, %161, !dbg !1295
  %164 = fptosi float %v to i32, !dbg !1296
  %165 = icmp slt i32 %164, %163, !dbg !1291
  %. = select i1 %165, i32 %164, i32 %163, !dbg !1297
  %166 = add nsw i32 1, %x0, !dbg !1298
  %167 = icmp slt i32 %166, %158, !dbg !1291
  %x1 = select i1 %167, i32 %166, i32 %158, !dbg !1292
  %168 = add nsw i32 1, %., !dbg !1299
  %169 = icmp slt i32 %168, %163, !dbg !1291
  %.113 = select i1 %169, i32 %168, i32 %163, !dbg !1297
  %170 = mul nsw i32 %.113, %_1046070, !dbg !1300
  %171 = mul nsw i32 %., %_1046070, !dbg !1300
  %172 = extractvalue %2 undef, 1, !dbg !1301
  %173 = add nsw i32 %170, %x0, !dbg !1300
  %174 = extractvalue %2 undef, 0, !dbg !1302
  %175 = extractvalue %2 undef, 2, !dbg !1303
  %176 = sitofp i32 %159 to float, !dbg !1238
  %177 = sitofp i32 %164 to float, !dbg !1239
  %178 = add nsw i32 %170, %x1, !dbg !1300
  %179 = add nsw i32 %171, %x1, !dbg !1300
  %180 = add nsw i32 %171, %x0, !dbg !1300
  %181 = fmul float %.R160.b, %23, !dbg !1270
  %182 = getelementptr inbounds [0 x i32], [0 x i32]* %_1046071, i64 0, i32 %173, !dbg !1304
  %183 = fmul float %.R156.b, %17, !dbg !1269
  %184 = fmul float %.R164.b, %26, !dbg !1268
  %kx = fsub float %u, %176, !dbg !1305
  %ky = fsub float %v, %177, !dbg !1306
  %185 = getelementptr inbounds [0 x i32], [0 x i32]* %_1046071, i64 0, i32 %178, !dbg !1304
  %186 = getelementptr inbounds [0 x i32], [0 x i32]* %_1046071, i64 0, i32 %179, !dbg !1304
  %187 = getelementptr inbounds [0 x i32], [0 x i32]* %_1046071, i64 0, i32 %180, !dbg !1304
  %188 = fadd float %183, %181, !dbg !1269
  %189 = fadd float %188, %184, !dbg !1269
  %190 = fsub float 1.000000e+00, %kx, !dbg !1307
  %191 = fsub float 1.000000e+00, %ky, !dbg !1307
  %192 = load i32, i32* %187, align 4, !dbg !1304
  %193 = fmul float 2.000000e+00, %189, !dbg !1308
  %194 = fmul float %.R164.b, %193, !dbg !1280
  %195 = fmul float %.R156.b, %193, !dbg !1280
  %196 = fmul float %.R160.b, %193, !dbg !1280
  %r = and i32 255, %192, !dbg !1309
  %197 = lshr i32 %192, 8, !dbg !1310
  %198 = lshr i32 %192, 16, !dbg !1311
  %199 = load i32, i32* %186, align 4, !dbg !1304
  %200 = fsub float %194, %26, !dbg !1312
  %201 = fsub float %195, %17, !dbg !1312
  %202 = fsub float %196, %23, !dbg !1312
  %203 = uitofp i32 %r to float, !dbg !1313
  %g = and i32 255, %197, !dbg !1314
  %b = and i32 255, %198, !dbg !1315
  %204 = fmul float 0x3F70101020000000, %203, !dbg !1316
  %205 = uitofp i32 %g to float, !dbg !1317
  %206 = uitofp i32 %b to float, !dbg !1318
  %207 = load i32, i32* %182, align 4, !dbg !1304
  %r92 = and i32 255, %199, !dbg !1309
  %208 = lshr i32 %199, 8, !dbg !1310
  %209 = lshr i32 %199, 16, !dbg !1311
  %210 = fmul float %190, %204, !dbg !1319
  %211 = fmul float 0x3F70101020000000, %205, !dbg !1320
  %212 = fmul float 0x3F70101020000000, %206, !dbg !1321
  %213 = uitofp i32 %r92 to float, !dbg !1313
  %g93 = and i32 255, %208, !dbg !1314
  %b94 = and i32 255, %209, !dbg !1315
  %214 = fmul float %190, %211, !dbg !1319
  %215 = fmul float %190, %212, !dbg !1319
  %216 = load i32, i32* %185, align 4, !dbg !1304
  %r95 = and i32 255, %207, !dbg !1309
  %217 = lshr i32 %207, 8, !dbg !1310
  %218 = lshr i32 %207, 16, !dbg !1311
  %219 = fmul float 0x3F70101020000000, %213, !dbg !1316
  %220 = uitofp i32 %g93 to float, !dbg !1317
  %221 = uitofp i32 %b94 to float, !dbg !1318
  %222 = uitofp i32 %r95 to float, !dbg !1313
  %g96 = and i32 255, %217, !dbg !1314
  %b97 = and i32 255, %218, !dbg !1315
  %223 = fmul float %kx, %219, !dbg !1322
  %224 = fmul float 0x3F70101020000000, %220, !dbg !1320
  %225 = fmul float 0x3F70101020000000, %221, !dbg !1321
  %r98 = and i32 255, %216, !dbg !1309
  %226 = lshr i32 %216, 8, !dbg !1310
  %227 = lshr i32 %216, 16, !dbg !1311
  %228 = fmul float 0x3F70101020000000, %222, !dbg !1316
  %229 = uitofp i32 %g96 to float, !dbg !1317
  %230 = uitofp i32 %b97 to float, !dbg !1318
  %231 = fadd float %210, %223, !dbg !1319
  %232 = fmul float %kx, %224, !dbg !1322
  %233 = fmul float %kx, %225, !dbg !1322
  %234 = uitofp i32 %r98 to float, !dbg !1313
  %g99 = and i32 255, %226, !dbg !1314
  %b100 = and i32 255, %227, !dbg !1315
  %235 = fmul float %190, %228, !dbg !1319
  %236 = fmul float 0x3F70101020000000, %229, !dbg !1320
  %237 = fmul float 0x3F70101020000000, %230, !dbg !1321
  %238 = fmul float %191, %231, !dbg !1319
  %239 = fadd float %214, %232, !dbg !1319
  %240 = fadd float %215, %233, !dbg !1319
  %241 = icmp eq i32 %61, 0, !dbg !1323
  %242 = fmul float 0x3F70101020000000, %234, !dbg !1316
  %243 = uitofp i32 %g99 to float, !dbg !1317
  %244 = uitofp i32 %b100 to float, !dbg !1318
  %245 = fmul float %190, %236, !dbg !1319
  %246 = fmul float %190, %237, !dbg !1319
  %247 = fmul float %191, %239, !dbg !1319
  %248 = fmul float %191, %240, !dbg !1319
  %249 = select i1 %241, i32 1, i32 %61, !dbg !1324
  %250 = fmul float %kx, %242, !dbg !1322
  %251 = fmul float 0x3F70101020000000, %243, !dbg !1320
  %252 = fmul float 0x3F70101020000000, %244, !dbg !1321
  %253 = shl i32 %249, 13, !dbg !1325
  %254 = fadd float %235, %250, !dbg !1319
  %255 = fmul float %kx, %251, !dbg !1322
  %256 = fmul float %kx, %252, !dbg !1322
  %257 = xor i32 %249, %253, !dbg !1326
  %258 = fmul float %ky, %254, !dbg !1322
  %259 = fadd float %245, %255, !dbg !1319
  %260 = fadd float %246, %256, !dbg !1319
  %261 = lshr i32 %257, 17, !dbg !1327
  %262 = fadd float %238, %258, !dbg !1319
  %263 = fmul float %ky, %259, !dbg !1322
  %264 = fmul float %ky, %260, !dbg !1322
  %265 = xor i32 %257, %261, !dbg !1328
  %266 = fmul float 0x3FCB367A00000000, %262, !dbg !1329
  %267 = fadd float %247, %263, !dbg !1319
  %268 = fadd float %248, %264, !dbg !1319
  %269 = shl i32 %265, 5, !dbg !1330
  %270 = fmul float 0x3FE6E2EB20000000, %267, !dbg !1331
  %271 = fmul float 0x3FB27BB300000000, %268, !dbg !1332
  %272 = xor i32 %265, %269, !dbg !1333
  %273 = fadd float %266, %270, !dbg !1329
  %274 = fadd float %273, %271, !dbg !1329
  %275 = icmp eq i32 %272, 0, !dbg !1323
  %276 = fadd float 0x3FE6E2EB20000000, %274, !dbg !1334
  %277 = select i1 %275, i32 1, i32 %272, !dbg !1324
  %278 = fcmp oeq float %276, 0.000000e+00, !dbg !1335
  %279 = fdiv float %274, %276, !dbg !1336
  %280 = and i32 8388607, %272, !dbg !1337
  %281 = shl i32 %277, 13, !dbg !1325
  %282 = select i1 %278, float 0.000000e+00, float %279, !dbg !1338
  %283 = or i32 1065353216, %280, !dbg !1339
  %284 = xor i32 %277, %281, !dbg !1326
  %285 = fsub float 1.000000e+00, %282, !dbg !1340
  %286 = bitcast i32 %283 to float, !dbg !1341
  %287 = lshr i32 %284, 17, !dbg !1327
  %288 = fsub float %286, 1.000000e+00, !dbg !1341
  %289 = xor i32 %284, %287, !dbg !1328
  %290 = fcmp ole float %282, %288, !dbg !1342
  %291 = shl i32 %289, 5, !dbg !1330
  %292 = xor i32 %289, %291, !dbg !1333
  %293 = icmp eq i32 %292, 0, !dbg !1323
  %294 = select i1 %293, i32 1, i32 %292, !dbg !1324
  %295 = shl i32 %294, 13, !dbg !1325
  %296 = xor i32 %294, %295, !dbg !1326
  %297 = and i32 8388607, %292, !dbg !1337
  %298 = lshr i32 %296, 17, !dbg !1327
  %299 = or i32 1065353216, %297, !dbg !1339
  %300 = xor i32 %296, %298, !dbg !1328
  %301 = bitcast i32 %299 to float, !dbg !1341
  %302 = shl i32 %300, 5, !dbg !1330
  %303 = fsub float %301, 1.000000e+00, !dbg !1341
  %304 = xor i32 %300, %302, !dbg !1333
  %phi = fmul float 0x401921FB60000000, %303, !dbg !1343
  %305 = and i32 8388607, %304, !dbg !1337
  %306 = or i32 1065353216, %305, !dbg !1339
  %307 = bitcast i32 %306 to float, !dbg !1341
  %308 = fsub float %307, 1.000000e+00, !dbg !1341
  %neg.137 = xor i1 %290, true, !dbg !1344
  %edge_if_join12.1 = and i1 %134, %neg.137, !dbg !1344
  %edge_if_join12.0 = and i1 %134, %290, !dbg !1344
  br label %expr_false27

expr_false27:                                     ; preds = %if_join12
  %309 = bitcast float %308 to i32, !dbg !1345
  %310 = and i32 8388607, %309, !dbg !1346
  %311 = uitofp i32 %309 to float, !dbg !1347
  %mx = or i32 1056964608, %310, !dbg !1348
  %y = fmul float 0x3E80000000000000, %311, !dbg !1349
  %312 = bitcast i32 %mx to float, !dbg !1350
  %313 = fsub float %y, 0x405F0E6EE0000000, !dbg !1351
  %314 = fmul float 0x3FF7F7EEA0000000, %312, !dbg !1352
  %315 = fadd float 0x3FD6889F20000000, %312, !dbg !1353
  %316 = fsub float %313, %314, !dbg !1351
  %317 = fdiv float 0x3FFB9D3460000000, %315, !dbg !1354
  %318 = fsub float %316, %317, !dbg !1351
  %319 = fmul float 0x3FB3B13B20000000, %318, !dbg !1355
  %320 = fcmp olt float %319, -1.260000e+02, !dbg !1356
  %321 = fcmp olt float %319, 0.000000e+00, !dbg !1357
  %322 = select i1 %320, float -1.260000e+02, float %319, !dbg !1358
  %323 = select i1 %321, float 1.000000e+00, float 0.000000e+00, !dbg !1359
  %324 = fadd float 0x405E518A20000000, %322, !dbg !1360
  %325 = fptosi float %322 to i32, !dbg !1361
  %326 = sitofp i32 %325 to float, !dbg !1362
  %327 = fsub float %322, %326, !dbg !1363
  %z = fadd float %327, %323, !dbg !1363
  %328 = fmul float 0x3FF7D791A0000000, %z, !dbg !1364
  %329 = fsub float 0x40135EBF00000000, %z, !dbg !1365
  %330 = fdiv float 0x403BBA5FC0000000, %329, !dbg !1366
  %331 = fadd float %324, %330, !dbg !1360
  %332 = fsub float %331, %328, !dbg !1360
  %333 = fmul float 0x4160000000000000, %332, !dbg !1367
  %334 = fptosi float %333 to i32, !dbg !1368
  %335 = bitcast i32 %334 to float, !dbg !1369
  %336 = call float @llvm.minnum.f32(float %335, float 1.000000e+00), !dbg !1370
  %337 = fmul float %336, %336, !dbg !1371
  %338 = fsub float 1.000000e+00, %337, !dbg !1372
  %339 = call float @llvm.sqrt.f32(float %338), !dbg !1373
  %340 = call float @llvm.cos.f32(float %phi), !dbg !1374
  %341 = call float @llvm.sin.f32(float %phi), !dbg !1375
  %x = fmul float %339, %340, !dbg !1376
  %342 = fmul float %202, %336, !dbg !1268
  %343 = fmul float %200, %336, !dbg !1268
  %344 = fmul float %202, %202, !dbg !1377
  %345 = fcmp ole float 0.000000e+00, %200, !dbg !1303
  %346 = fmul float %201, %336, !dbg !1268
  %347 = fsub float -0.000000e+00, %202, !dbg !1378
  %y101 = fmul float %339, %341, !dbg !1379
  %348 = fmul float %201, %202, !dbg !1302
  %349 = select i1 %345, float 1.000000e+00, float -1.000000e+00, !dbg !1380
  %350 = fmul float %347, %y101, !dbg !1270
  %351 = fsub float -0.000000e+00, %349, !dbg !1381
  %352 = fmul float %349, %201, !dbg !1382
  %353 = fadd float %349, %200, !dbg !1383
  %354 = fmul float %351, %201, !dbg !1381
  %355 = fmul float %352, %201, !dbg !1382
  %a = fdiv float -1.000000e+00, %353, !dbg !1384
  %356 = fmul float %354, %x, !dbg !1269
  %357 = fmul float %355, %a, !dbg !1382
  %b102 = fmul float %348, %a, !dbg !1302
  %358 = fmul float %344, %a, !dbg !1377
  %359 = fadd float %356, %350, !dbg !1269
  %360 = fadd float 1.000000e+00, %357, !dbg !1385
  %361 = fmul float %b102, %y101, !dbg !1270
  %362 = fmul float %349, %b102, !dbg !1386
  %363 = fadd float %349, %358, !dbg !1387
  %364 = fadd float %359, %343, !dbg !1269
  %365 = fmul float %360, %x, !dbg !1269
  %366 = fadd float %365, %361, !dbg !1269
  %367 = fmul float %362, %x, !dbg !1269
  %368 = fmul float %363, %y101, !dbg !1270
  %369 = fmul float %364, %.R164.b, !dbg !1268
  %370 = fadd float %366, %346, !dbg !1269
  %371 = fadd float %367, %368, !dbg !1269
  %372 = fmul float %370, %.R156.b, !dbg !1269
  %373 = fadd float %371, %342, !dbg !1269
  %374 = fmul float %373, %.R160.b, !dbg !1270
  %375 = fadd float %372, %374, !dbg !1269
  %376 = fadd float %375, %369, !dbg !1269
  %377 = fcmp ole float 0.000000e+00, %376, !dbg !1388
  %cos = select i1 %377, float %376, float 0.000000e+00, !dbg !1389
  %378 = fcmp une float %336, 0.000000e+00, !dbg !1390
  %379 = fdiv float %308, %336, !dbg !1391
  %380 = select i1 %378, float %379, float 0.000000e+00, !dbg !1392
  %381 = fmul float 1.300000e+01, %380, !dbg !1393
  %pdf = fmul float 0x3FC45F3060000000, %381, !dbg !1393
  %382 = fcmp olt float 0.000000e+00, %pdf, !dbg !1394
  %edge_expr_false27.0 = and i1 %edge_if_join12.1, %382, !dbg !1395
  %neg.138 = xor i1 %382, true, !dbg !1395
  %edge_expr_false27.1 = and i1 %edge_if_join12.1, %neg.138, !dbg !1395
  br label %expr_true35

expr_true35:                                      ; preds = %expr_false27
  %383 = fmul float %373, %.R149.b, !dbg !1270
  %384 = fmul float %370, %.R145.b, !dbg !1269
  %385 = fmul float %364, %.R153.b, !dbg !1268
  %386 = fadd float %384, %383, !dbg !1269
  %387 = fadd float %386, %385, !dbg !1269
  %388 = fcmp olt float 0.000000e+00, %387, !dbg !1396
  %edge_expr_true35.0 = and i1 %edge_expr_false27.0, %388, !dbg !1397
  %neg.139 = xor i1 %388, true, !dbg !1397
  %edge_expr_true35.1 = and i1 %edge_expr_false27.0, %neg.139, !dbg !1397
  br label %expr_true37

expr_true37:                                      ; preds = %expr_true35
  br label %infix_result.s, !dbg !1398

infix_result.s:                                   ; preds = %expr_true37
  br label %infix_result

infix_result:                                     ; preds = %infix_result.s
  %389 = or i1 %edge_expr_false27.1, %edge_expr_true35.1, !dbg !1399
  %390 = or i1 %389, %edge_expr_true35.0, !dbg !1399
  %pdf. = select i1 %edge_expr_true35.0, float %pdf, float 1.000000e+00, !dbg !1399
  %edge_infix_result.0 = and i1 %390, %edge_expr_true35.0, !dbg !1234
  %neg.valid = xor i1 %edge_expr_true35.0, true, !dbg !1234
  %edge_infix_result.1 = and i1 %390, %neg.valid, !dbg !1234
  br label %expr_true43

expr_true43:                                      ; preds = %infix_result
  %391 = fmul float 1.400000e+01, %pdf, !dbg !1400
  %392 = fdiv float %391, 1.300000e+01, !dbg !1400
  %393 = fmul float %267, %392, !dbg !1401
  %394 = fmul float %262, %392, !dbg !1323
  %395 = fmul float %268, %392, !dbg !1402
  br label %if_join44.s, !dbg !1403

if_join44.s:                                      ; preds = %expr_true43
  %.b173 = select i1 %edge_infix_result.1, float 0.000000e+00, float %394
  %.b177 = select i1 %edge_infix_result.1, float 0.000000e+00, float %393
  %.b181 = select i1 %edge_infix_result.1, float 0.000000e+00, float %395
  br label %if_join44

if_join44:                                        ; preds = %if_join44.s
  %396 = or i1 %edge_infix_result.1, %edge_infix_result.0, !dbg !1404
  %397 = fmul float 0.000000e+00, %285, !dbg !1404
  %398 = fmul float 0x3FD45F3060000000, %cos, !dbg !1405
  %399 = fmul float 0x3FD45F3060000000, %285, !dbg !1406
  %400 = extractvalue %5 undef, 0, !dbg !1407
  %401 = extractvalue %5 undef, 1, !dbg !1408
  %402 = fmul float %285, %398, !dbg !1319
  %403 = extractvalue %5 undef, 2, !dbg !1409
  %404 = fmul float %282, %.b177, !dbg !1410
  %405 = fmul float %282, %pdf., !dbg !1322
  %406 = fmul float %282, %.b181, !dbg !1411
  %407 = fadd float %397, %406, !dbg !1380
  %408 = fadd float %399, %404, !dbg !1406
  %409 = fmul float %282, %.b173, !dbg !1412
  %410 = fadd float %402, %405, !dbg !1319
  %411 = fadd float %397, %409, !dbg !1404
  br label %expr_true49, !dbg !1413

expr_true49:                                      ; preds = %if_join44
  %412 = fsub float 1.000000e+00, %308, !dbg !1414
  %413 = call float @llvm.sqrt.f32(float %412), !dbg !1415
  %414 = call float @llvm.sqrt.f32(float %308), !dbg !1416
  %415 = call float @llvm.cos.f32(float %phi), !dbg !1374
  %416 = call float @llvm.sin.f32(float %phi), !dbg !1375
  %417 = fcmp ole float 0.000000e+00, %.R164.b, !dbg !1303
  %418 = select i1 %417, float 1.000000e+00, float -1.000000e+00, !dbg !1380
  %419 = fsub float -0.000000e+00, %.R160.b, !dbg !1378
  %420 = fmul float 0x3FD45F3060000000, %413, !dbg !1405
  %421 = fmul float %.R160.b, %413, !dbg !1268
  %422 = fmul float %.R156.b, %413, !dbg !1268
  %423 = fmul float %.R164.b, %413, !dbg !1268
  %424 = fcmp olt float 0.000000e+00, %420, !dbg !1394
  %425 = fmul float %.R160.b, %.R160.b, !dbg !1377
  %426 = fadd float %418, %.R164.b, !dbg !1383
  %427 = fmul float %418, %.R156.b, !dbg !1382
  %428 = fmul float %.R156.b, %.R160.b, !dbg !1302
  %429 = fsub float -0.000000e+00, %418, !dbg !1381
  %x103 = fmul float %414, %415, !dbg !1376
  %a104 = fdiv float -1.000000e+00, %426, !dbg !1384
  %y105 = fmul float %414, %416, !dbg !1379
  %430 = fmul float %419, %y105, !dbg !1270
  %431 = fmul float %425, %a104, !dbg !1377
  %432 = fmul float %427, %.R156.b, !dbg !1382
  %b106 = fmul float %428, %a104, !dbg !1302
  %433 = fmul float %429, %.R156.b, !dbg !1381
  %434 = fmul float %433, %x103, !dbg !1269
  %435 = fmul float %432, %a104, !dbg !1382
  %436 = fmul float %b106, %y105, !dbg !1270
  %437 = fadd float %434, %430, !dbg !1269
  %438 = fadd float %418, %431, !dbg !1387
  %439 = fmul float %418, %b106, !dbg !1386
  %440 = fadd float 1.000000e+00, %435, !dbg !1385
  %441 = fadd float %437, %423, !dbg !1269
  %442 = fmul float %438, %y105, !dbg !1270
  %443 = fmul float %439, %x103, !dbg !1269
  %444 = fmul float %440, %x103, !dbg !1269
  %445 = fadd float %443, %442, !dbg !1269
  %446 = fadd float %444, %436, !dbg !1269
  %447 = fadd float %445, %421, !dbg !1269
  %448 = fadd float %446, %422, !dbg !1269
  %edge_expr_true49.0 = and i1 %edge_if_join12.0, %424, !dbg !1395
  %neg.141 = xor i1 %424, true, !dbg !1395
  %edge_expr_true49.1 = and i1 %edge_if_join12.0, %neg.141, !dbg !1395
  br label %expr_true57

expr_true57:                                      ; preds = %expr_true49
  %449 = fmul float %441, %.R153.b, !dbg !1268
  %450 = fmul float %447, %.R149.b, !dbg !1270
  %451 = fmul float %448, %.R145.b, !dbg !1269
  %452 = fadd float %451, %450, !dbg !1269
  %453 = fadd float %452, %449, !dbg !1269
  %454 = fcmp olt float 0.000000e+00, %453, !dbg !1396
  %edge_expr_true57.0 = and i1 %edge_expr_true49.0, %454, !dbg !1397
  %neg.142 = xor i1 %454, true, !dbg !1397
  %edge_expr_true57.1 = and i1 %edge_expr_true49.0, %neg.142, !dbg !1397
  br label %expr_true60

expr_true60:                                      ; preds = %expr_true57
  br label %infix_result61.s, !dbg !1398

infix_result61.s:                                 ; preds = %expr_true60
  br label %infix_result61

infix_result61:                                   ; preds = %infix_result61.s
  %455 = or i1 %edge_expr_true49.1, %edge_expr_true57.1, !dbg !1399
  %456 = or i1 %455, %edge_expr_true57.0, !dbg !1399
  %.115 = select i1 %edge_expr_true57.0, float %420, float 1.000000e+00, !dbg !1399
  %if_join70.repl.1 = select i1 %edge_expr_true57.0, float 0x3FD45F3060000000, float 0.000000e+00, !dbg !1234
  %457 = fmul float %441, %200, !dbg !1268
  %458 = fmul float %448, %201, !dbg !1269
  %459 = fmul float %447, %202, !dbg !1270
  %460 = fadd float %458, %459, !dbg !1269
  %461 = fadd float %460, %457, !dbg !1269
  %462 = fcmp ole float 0.000000e+00, %461, !dbg !1388
  %.116 = select i1 %462, float %461, float 0.000000e+00, !dbg !1417
  %463 = fmul float %285, %.115, !dbg !1319
  %464 = bitcast float %.116 to i32, !dbg !1345
  %465 = uitofp i32 %464 to float, !dbg !1347
  %466 = fmul float %285, %if_join70.repl.1, !dbg !1406
  %y107 = fmul float 0x3E80000000000000, %465, !dbg !1349
  %467 = fmul float %285, 0.000000e+00, !dbg !1380
  %468 = fsub float %y107, 0x405F0E6EE0000000, !dbg !1351
  %469 = fmul float %285, 0.000000e+00, !dbg !1404
  %470 = and i32 8388607, %464, !dbg !1346
  %mx109 = or i32 1056964608, %470, !dbg !1348
  %471 = bitcast i32 %mx109 to float, !dbg !1350
  %472 = fmul float 0x3FF7F7EEA0000000, %471, !dbg !1352
  %473 = fadd float 0x3FD6889F20000000, %471, !dbg !1353
  %474 = fsub float %468, %472, !dbg !1351
  %475 = fdiv float 0x3FFB9D3460000000, %473, !dbg !1354
  %476 = fsub float %474, %475, !dbg !1351
  %477 = fmul float 1.200000e+01, %476, !dbg !1355
  %478 = fcmp olt float %477, -1.260000e+02, !dbg !1356
  %479 = fcmp olt float %477, 0.000000e+00, !dbg !1357
  %480 = select i1 %478, float -1.260000e+02, float %477, !dbg !1358
  %481 = select i1 %479, float 1.000000e+00, float 0.000000e+00, !dbg !1359
  %482 = fadd float 0x405E518A20000000, %480, !dbg !1360
  %483 = fptosi float %480 to i32, !dbg !1361
  %484 = sitofp i32 %483 to float, !dbg !1362
  %485 = fsub float %480, %484, !dbg !1363
  %z111 = fadd float %485, %481, !dbg !1363
  %486 = fmul float 0x3FF7D791A0000000, %z111, !dbg !1364
  %487 = fsub float 0x40135EBF00000000, %z111, !dbg !1365
  %488 = fdiv float 0x403BBA5FC0000000, %487, !dbg !1366
  %489 = fadd float %482, %488, !dbg !1360
  %490 = fsub float %489, %486, !dbg !1360
  %491 = fmul float 0x4160000000000000, %490, !dbg !1367
  %492 = fptosi float %491 to i32, !dbg !1368
  %493 = bitcast i32 %492 to float, !dbg !1369
  %494 = fmul float 1.400000e+01, %493, !dbg !1418
  %495 = fmul float 1.300000e+01, %493, !dbg !1419
  %496 = fmul float 0x3FC45F3060000000, %494, !dbg !1418
  %497 = fmul float 0x3FC45F3060000000, %495, !dbg !1419
  %498 = fmul float %262, %496, !dbg !1323
  %499 = fmul float %267, %496, !dbg !1401
  %500 = fmul float %268, %496, !dbg !1402
  %501 = fmul float %282, %497, !dbg !1322
  %502 = fmul float %282, %498, !dbg !1412
  %503 = fmul float %282, %499, !dbg !1410
  %504 = fmul float %282, %500, !dbg !1411
  %505 = fadd float %463, %501, !dbg !1319
  %506 = fadd float %469, %502, !dbg !1404
  %507 = fadd float %466, %503, !dbg !1406
  %508 = fadd float %467, %504, !dbg !1380
  br label %if_join79.s, !dbg !1413

if_join79.s:                                      ; preds = %infix_result61
  %.not = xor i1 %396, true
  %.b195235 = and i1 %.not, %456
  %.R199.b = select i1 %396, float %370, float %448
  %.R203.b = select i1 %396, float %373, float %447
  %.R207.b = select i1 %396, float %364, float %441
  %pdf..R.b = select i1 %396, float %pdf., float %.115
  %cos.R.b = select i1 %396, float %cos, float %413
  %.b173.R.b = select i1 %396, float %.b173, float 0.000000e+00
  %.b177.R.b = select i1 %396, float %.b177, float %if_join70.repl.1
  %.b181.R.b = select i1 %396, float %.b181, float 0.000000e+00
  %.R222.b = select i1 %396, float %410, float %505
  %.R226.b = select i1 %396, float %411, float %506
  %.R230.b = select i1 %396, float %408, float %507
  %.R234.b = select i1 %396, float %407, float %508
  br label %if_join79

if_join79:                                        ; preds = %if_join79.s
  %509 = or i1 %.b195235, %396, !dbg !1420
  %.fca.0.insert = insertvalue %5 undef, float %62, 0, !dbg !1420
  %.fca.1.insert = insertvalue %5 %.fca.0.insert, float %63, 1, !dbg !1420
  %.fca.2.insert = insertvalue %5 %.fca.1.insert, float %64, 2, !dbg !1420
  %510 = fsub float -0.000000e+00, %.R203.b, !dbg !1240
  %511 = fcmp olt float 0.000000e+00, %.R203.b, !dbg !1241
  %512 = select i1 %511, float %.R203.b, float %510, !dbg !1242
  %513 = fcmp olt float 0.000000e+00, %.R207.b, !dbg !1241
  %514 = fsub float -0.000000e+00, %.R207.b, !dbg !1240
  %515 = select i1 %513, float %.R207.b, float %514, !dbg !1242
  %516 = extractvalue %1 %_1046077, 8, !dbg !1421
  %517 = extractvalue %1 %_1046077, 5, !dbg !1422
  %518 = extractvalue %0 %_1046078, 7, !dbg !1423
  %519 = getelementptr inbounds [0 x float], [0 x float]* %518, i64 0, i32 %0, !dbg !1423
  %520 = extractvalue %5 undef, 2, !dbg !1424
  %521 = getelementptr inbounds [0 x float], [0 x float]* %516, i64 0, i32 %0, !dbg !1421
  %522 = extractvalue %0 %_1046078, 8, !dbg !1425
  %523 = fdiv float 1.000000e+00, %.R222.b, !dbg !1426
  %524 = extractvalue %5 undef, 1, !dbg !1427
  %525 = extractvalue %1 %_1046077, 6, !dbg !1428
  %526 = extractvalue %1 %_1046077, 1, !dbg !1429
  %527 = extractvalue %1 %_1046077, 2, !dbg !1430
  %528 = extractvalue %1 %_1046077, 7, !dbg !1431
  %529 = extractvalue %0 %_1046078, 6, !dbg !1432
  %530 = extractvalue %0 %_1046078, 10, !dbg !1433
  %531 = extractvalue %0 %_1046078, 9, !dbg !1434
  %532 = extractvalue %5 undef, 0, !dbg !1435
  %533 = extractvalue %1 %_1046077, 4, !dbg !1436
  %534 = getelementptr inbounds [0 x float], [0 x float]* %517, i64 0, i32 %0, !dbg !1422
  %535 = extractvalue %1 %_1046077, 3, !dbg !1437
  %536 = getelementptr inbounds [0 x float], [0 x float]* %528, i64 0, i32 %0, !dbg !1431
  %537 = getelementptr inbounds [0 x float], [0 x float]* %525, i64 0, i32 %0, !dbg !1428
  %538 = getelementptr inbounds [0 x float], [0 x float]* %522, i64 0, i32 %0, !dbg !1425
  %539 = extractvalue %0 %_1046078, 11, !dbg !1438
  %540 = getelementptr inbounds [0 x float], [0 x float]* %535, i64 0, i32 %0, !dbg !1437
  %541 = fmul float %21, %48, !dbg !1280
  %542 = fmul float %62, %.R226.b, !dbg !1439
  %543 = fmul float %64, %.R234.b, !dbg !1440
  %544 = fmul float %63, %.R230.b, !dbg !1441
  %545 = getelementptr inbounds [0 x float], [0 x float]* %526, i64 0, i32 %0, !dbg !1429
  %546 = getelementptr inbounds [0 x float], [0 x float]* %527, i64 0, i32 %0, !dbg !1430
  %547 = getelementptr inbounds [0 x i32], [0 x i32]* %529, i64 0, i32 %0, !dbg !1432
  %548 = getelementptr inbounds [0 x float], [0 x float]* %530, i64 0, i32 %0, !dbg !1433
  %549 = getelementptr inbounds [0 x float], [0 x float]* %531, i64 0, i32 %0, !dbg !1434
  %550 = getelementptr inbounds [0 x float], [0 x float]* %533, i64 0, i32 %0, !dbg !1436
  %551 = fadd float %15, %541, !dbg !1442
  %552 = fmul float %19, %48, !dbg !1280
  %553 = fmul float %16, %48, !dbg !1280
  %554 = fadd float %14, %552, !dbg !1442
  %555 = fadd float %13, %553, !dbg !1442
  %556 = getelementptr inbounds [0 x i32], [0 x i32]* %539, i64 0, i32 %0, !dbg !1438
  %557 = fdiv float %cos.R.b, %.R222.b, !dbg !1443
  %558 = fmul float %542, %557, !dbg !1323
  %559 = fmul float %543, %557, !dbg !1402
  %560 = fmul float %544, %557, !dbg !1401
  %561 = add nsw i32 1, %66, !dbg !1444
  store float %555, float* %545, align 4, !dbg !1429
  store float %554, float* %546, align 4, !dbg !1430
  store float %551, float* %540, align 4, !dbg !1437
  store float %.R199.b, float* %550, align 4, !dbg !1436
  store float %.R203.b, float* %534, align 4, !dbg !1422
  store float %.R207.b, float* %537, align 4, !dbg !1428
  store float 0x3F1A36E2E0000000, float* %536, align 4, !dbg !1431
  store float 0x47EFFFFFE0000000, float* %521, align 4, !dbg !1421
  store i32 %304, i32* %547, align 4, !dbg !1432
  store float %558, float* %538, align 4, !dbg !1425
  store float %560, float* %549, align 4, !dbg !1434
  store float %559, float* %548, align 4, !dbg !1433
  store float %523, float* %519, align 4, !dbg !1423
  store i32 %561, i32* %556, align 4, !dbg !1438
  ret void, !dbg !1445
}

define internal void @lambda_1044224(i32 %j_1044226, [0 x %2]* %_1044228, i32 %_1044229, i32 %_1044230, %0 %_1044231, %1 %_1044232, i32 %_1044233, [0 x %3]* %_1044234, [0 x i32]* %_1044235, [0 x %2]* %_1044236, %1 %_1044237, %0 %_1044238, %0 %_1044239, [0 x i32]* %_1044240) #1 !dbg !711 {
lambda_1044224_start:
  %0 = extractvalue %1 %_1044232, 5, !dbg !1446
  %1 = extractvalue %1 %_1044232, 3, !dbg !1447
  %2 = extractvalue %1 %_1044232, 1, !dbg !1448
  %3 = extractvalue %1 %_1044232, 4, !dbg !1449
  %4 = extractvalue %1 %_1044232, 6, !dbg !1450
  %5 = extractvalue %1 %_1044232, 2, !dbg !1451
  %6 = add nsw i32 %_1044233, %j_1044226, !dbg !1452
  %7 = getelementptr inbounds [0 x float], [0 x float]* %0, i64 0, i32 %6, !dbg !1446
  %8 = getelementptr inbounds [0 x float], [0 x float]* %1, i64 0, i32 %6, !dbg !1447
  %9 = getelementptr inbounds [0 x float], [0 x float]* %2, i64 0, i32 %6, !dbg !1448
  %10 = getelementptr inbounds [0 x float], [0 x float]* %3, i64 0, i32 %6, !dbg !1449
  %11 = getelementptr inbounds [0 x float], [0 x float]* %4, i64 0, i32 %6, !dbg !1450
  %12 = getelementptr inbounds [0 x float], [0 x float]* %5, i64 0, i32 %6, !dbg !1451
  %13 = load float, float* %9, align 4, !dbg !1448
  %14 = load float, float* %12, align 4, !dbg !1451
  %15 = load float, float* %8, align 4, !dbg !1447
  %16 = load float, float* %10, align 4, !dbg !1449
  %17 = fsub float -0.000000e+00, %16, !dbg !1453
  %18 = fcmp olt float 0.000000e+00, %16, !dbg !1454
  %19 = load float, float* %7, align 4, !dbg !1446
  %20 = select i1 %18, float %16, float %17, !dbg !1455
  %21 = load float, float* %11, align 4, !dbg !1450
  %22 = fcmp olt float 0.000000e+00, %19, !dbg !1454
  %23 = fsub float -0.000000e+00, %19, !dbg !1453
  %24 = select i1 %22, float %19, float %23, !dbg !1455
  %25 = fsub float -0.000000e+00, %21, !dbg !1453
  %26 = fcmp olt float 0.000000e+00, %21, !dbg !1454
  %27 = select i1 %26, float %21, float %25, !dbg !1455
  %28 = extractvalue %0 %_1044239, 10, !dbg !1456
  %29 = extractvalue %0 %_1044231, 2, !dbg !1457
  %30 = extractvalue %0 %_1044231, 4, !dbg !1458
  %31 = getelementptr inbounds [0 x i32], [0 x i32]* %29, i64 0, i32 %6, !dbg !1457
  %32 = extractvalue %0 %_1044231, 5, !dbg !1459
  %33 = extractvalue %0 %_1044239, 8, !dbg !1460
  %34 = extractvalue %0 %_1044239, 7, !dbg !1461
  %35 = extractvalue %0 %_1044239, 11, !dbg !1462
  %36 = extractvalue %0 %_1044231, 3, !dbg !1463
  %37 = extractvalue %0 %_1044239, 6, !dbg !1464
  %38 = getelementptr inbounds [0 x float], [0 x float]* %34, i64 0, i32 %6, !dbg !1461
  %39 = getelementptr inbounds [0 x float], [0 x float]* %28, i64 0, i32 %6, !dbg !1456
  %40 = getelementptr inbounds [0 x float], [0 x float]* %33, i64 0, i32 %6, !dbg !1460
  %41 = getelementptr inbounds [0 x i32], [0 x i32]* %35, i64 0, i32 %6, !dbg !1462
  %42 = getelementptr inbounds [0 x float], [0 x float]* %30, i64 0, i32 %6, !dbg !1458
  %43 = load i32, i32* %31, align 4, !dbg !1457
  %44 = extractvalue %0 %_1044239, 9, !dbg !1465
  %45 = getelementptr inbounds [0 x float], [0 x float]* %32, i64 0, i32 %6, !dbg !1459
  %46 = getelementptr inbounds [0 x float], [0 x float]* %36, i64 0, i32 %6, !dbg !1463
  %47 = getelementptr inbounds [0 x i32], [0 x i32]* %37, i64 0, i32 %6, !dbg !1464
  %48 = getelementptr inbounds [0 x %2], [0 x %2]* %_1044228, i64 0, i32 %43, !dbg !1466
  %49 = mul nsw i32 4, %43, !dbg !1467
  %50 = getelementptr inbounds [0 x float], [0 x float]* %44, i64 0, i32 %6, !dbg !1465
  %51 = load float, float* %46, align 4, !dbg !1463
  %52 = add nsw i32 2, %49, !dbg !1468
  %53 = add nsw i32 1, %49, !dbg !1469
  %54 = getelementptr inbounds [0 x i32], [0 x i32]* %_1044240, i64 0, i32 %49, !dbg !1470
  %55 = getelementptr inbounds [0 x i32], [0 x i32]* %_1044240, i64 0, i32 %52, !dbg !1471
  %56 = getelementptr inbounds [0 x i32], [0 x i32]* %_1044240, i64 0, i32 %53, !dbg !1472
  %57 = load float, float* %42, align 4, !dbg !1458
  %58 = fsub float 1.000000e+00, %57, !dbg !1473
  %59 = load float, float* %45, align 4, !dbg !1459
  %60 = fsub float %58, %59, !dbg !1473
  %61 = load i32, i32* %47, align 4, !dbg !1464
  %62 = load float, float* %40, align 4, !dbg !1460
  %63 = load float, float* %50, align 4, !dbg !1465
  %64 = load float, float* %39, align 4, !dbg !1456
  %65 = load float, float* %38, align 4, !dbg !1461
  %66 = load i32, i32* %41, align 4, !dbg !1462
  %.fca.1.0.extract = extractvalue %4 undef, 1, 0, !dbg !1474
  %.fca.1.1.extract = extractvalue %4 undef, 1, 1, !dbg !1474
  %67 = load i32, i32* %54, align 4, !dbg !1470
  %68 = load i32, i32* %56, align 4, !dbg !1472
  %69 = getelementptr inbounds [0 x %2], [0 x %2]* %_1044236, i64 0, i32 %67, !dbg !1475
  %70 = load i32, i32* %55, align 4, !dbg !1471
  %71 = getelementptr inbounds [0 x %2], [0 x %2]* %_1044236, i64 0, i32 %68, !dbg !1475
  %srov_gep128 = getelementptr %2, %2* %48, i32 0, i32 0, !dbg !1466
  %72 = load float, float* %srov_gep128, !dbg !1466
  %srov_gep129 = getelementptr %2, %2* %48, i32 0, i32 1, !dbg !1466
  %73 = load float, float* %srov_gep129, !dbg !1466
  %srov_gep130 = getelementptr %2, %2* %48, i32 0, i32 2, !dbg !1466
  %74 = load float, float* %srov_gep130, !dbg !1466
  %75 = getelementptr inbounds [0 x %2], [0 x %2]* %_1044236, i64 0, i32 %70, !dbg !1475
  %srov_gep = getelementptr %2, %2* %69, i32 0, i32 0, !dbg !1475
  %76 = load float, float* %srov_gep, !dbg !1475
  %srov_gep120 = getelementptr %2, %2* %69, i32 0, i32 1, !dbg !1475
  %77 = load float, float* %srov_gep120, !dbg !1475
  %srov_gep121 = getelementptr %2, %2* %69, i32 0, i32 2, !dbg !1475
  %78 = load float, float* %srov_gep121, !dbg !1475
  %srov_gep122 = getelementptr %2, %2* %71, i32 0, i32 0, !dbg !1475
  %79 = load float, float* %srov_gep122, !dbg !1475
  %srov_gep123 = getelementptr %2, %2* %71, i32 0, i32 1, !dbg !1475
  %80 = load float, float* %srov_gep123, !dbg !1475
  %srov_gep124 = getelementptr %2, %2* %71, i32 0, i32 2, !dbg !1475
  %81 = load float, float* %srov_gep124, !dbg !1475
  %82 = fmul float %60, %78, !dbg !1476
  %83 = fmul float %60, %76, !dbg !1476
  %84 = fmul float %60, %77, !dbg !1476
  %srov_gep125 = getelementptr %2, %2* %75, i32 0, i32 0, !dbg !1475
  %85 = load float, float* %srov_gep125, !dbg !1475
  %srov_gep126 = getelementptr %2, %2* %75, i32 0, i32 1, !dbg !1475
  %86 = load float, float* %srov_gep126, !dbg !1475
  %srov_gep127 = getelementptr %2, %2* %75, i32 0, i32 2, !dbg !1475
  %87 = load float, float* %srov_gep127, !dbg !1475
  %88 = fmul float %57, %81, !dbg !1477
  %89 = fmul float %57, %79, !dbg !1477
  %90 = fmul float %57, %80, !dbg !1477
  %91 = fadd float %82, %88, !dbg !1476
  %92 = fadd float %83, %89, !dbg !1476
  %93 = fadd float %84, %90, !dbg !1476
  %94 = fmul float %59, %87, !dbg !1478
  %95 = fmul float %59, %85, !dbg !1478
  %96 = fmul float %59, %86, !dbg !1478
  %97 = fadd float %91, %94, !dbg !1476
  %98 = fadd float %92, %95, !dbg !1476
  %99 = fadd float %93, %96, !dbg !1476
  %100 = fmul float %97, %97, !dbg !1479
  %101 = fmul float %98, %98, !dbg !1480
  %102 = fmul float %99, %99, !dbg !1481
  %103 = fadd float %101, %102, !dbg !1480
  %104 = fadd float %103, %100, !dbg !1480
  %105 = call float @llvm.sqrt.f32(float %104), !dbg !1482
  %106 = extractvalue %2 undef, 1, !dbg !1483
  %107 = extractvalue %2 undef, 2, !dbg !1484
  %108 = fmul float %16, %72, !dbg !1480
  %109 = fmul float %19, %73, !dbg !1481
  %110 = fmul float %21, %74, !dbg !1479
  %111 = fadd float %108, %109, !dbg !1480
  %112 = fadd float %111, %110, !dbg !1480
  %is_entering = fcmp ole float %112, 0.000000e+00, !dbg !1485
  %neg.is_entering = xor i1 %is_entering, true, !dbg !1486
  br label %expr_false7

expr_false7:                                      ; preds = %lambda_1044224_start
  %113 = fsub float -0.000000e+00, %72, !dbg !1487
  %114 = fsub float -0.000000e+00, %74, !dbg !1487
  %115 = fsub float -0.000000e+00, %73, !dbg !1487
  br label %if_join.s, !dbg !1488

if_join.s:                                        ; preds = %expr_false7
  %.R145.b = select i1 %is_entering, float %72, float %113
  %.R149.b = select i1 %is_entering, float %73, float %115
  %.R153.b = select i1 %is_entering, float %74, float %114
  br label %if_join

if_join:                                          ; preds = %if_join.s
  %116 = or i1 %is_entering, %neg.is_entering, !dbg !1489
  %117 = fdiv float 1.000000e+00, %105, !dbg !1489
  %118 = fmul float %99, %117, !dbg !1490
  %119 = fmul float %98, %117, !dbg !1490
  %120 = fmul float %97, %117, !dbg !1490
  %121 = fmul float %19, %118, !dbg !1481
  %122 = fmul float %16, %119, !dbg !1480
  %123 = fmul float %21, %120, !dbg !1479
  %124 = fadd float %122, %121, !dbg !1480
  %125 = fadd float %124, %123, !dbg !1480
  %126 = fcmp ole float %125, 0.000000e+00, !dbg !1491
  %neg. = xor i1 %126, true, !dbg !1492
  %edge_if_join.1 = and i1 %116, %neg., !dbg !1492
  %edge_if_join.0 = and i1 %116, %126, !dbg !1492
  br label %expr_false10

expr_false10:                                     ; preds = %if_join
  %127 = fsub float -0.000000e+00, %118, !dbg !1487
  %128 = fsub float -0.000000e+00, %119, !dbg !1487
  %129 = fsub float -0.000000e+00, %120, !dbg !1487
  br label %expr_true11, !dbg !1493

expr_true11:                                      ; preds = %expr_false10
  br label %if_join12.s, !dbg !1493

if_join12.s:                                      ; preds = %expr_true11
  %.R156.b = select i1 %edge_if_join.1, float %128, float %119
  %.R160.b = select i1 %edge_if_join.1, float %127, float %118
  %.R164.b = select i1 %edge_if_join.1, float %129, float %120
  br label %if_join12

if_join12:                                        ; preds = %if_join12.s
  %130 = or i1 %edge_if_join.0, %edge_if_join.1, !dbg !1494
  %131 = getelementptr inbounds [0 x %3], [0 x %3]* %_1044234, i64 0, i32 %70, !dbg !1494
  %132 = getelementptr inbounds [0 x %3], [0 x %3]* %_1044234, i64 0, i32 %68, !dbg !1494
  %133 = getelementptr inbounds [0 x %3], [0 x %3]* %_1044234, i64 0, i32 %67, !dbg !1494
  %srov_gep131 = getelementptr %3, %3* %133, i32 0, i32 0, !dbg !1494
  %134 = load float, float* %srov_gep131, !dbg !1494
  %srov_gep132 = getelementptr %3, %3* %133, i32 0, i32 1, !dbg !1494
  %135 = load float, float* %srov_gep132, !dbg !1494
  %srov_gep133 = getelementptr %3, %3* %132, i32 0, i32 0, !dbg !1494
  %136 = load float, float* %srov_gep133, !dbg !1494
  %srov_gep134 = getelementptr %3, %3* %132, i32 0, i32 1, !dbg !1494
  %137 = load float, float* %srov_gep134, !dbg !1494
  %138 = fmul float %60, %134, !dbg !1476
  %srov_gep135 = getelementptr %3, %3* %131, i32 0, i32 0, !dbg !1494
  %139 = load float, float* %srov_gep135, !dbg !1494
  %srov_gep136 = getelementptr %3, %3* %131, i32 0, i32 1, !dbg !1494
  %140 = load float, float* %srov_gep136, !dbg !1494
  %141 = extractvalue %3 undef, 0, !dbg !1495
  %142 = fmul float %57, %136, !dbg !1477
  %143 = extractvalue %3 undef, 0, !dbg !1495
  %144 = fadd float %138, %142, !dbg !1476
  %145 = fmul float %59, %139, !dbg !1478
  %146 = fadd float %144, %145, !dbg !1476
  %147 = call float @llvm.floor.f32(float %146), !dbg !1496
  %148 = extractvalue %3 undef, 1, !dbg !1497
  %149 = fmul float %57, %137, !dbg !1477
  %150 = extractvalue %3 undef, 1, !dbg !1497
  %151 = fmul float %60, %135, !dbg !1476
  %152 = extractvalue %3 undef, 1, !dbg !1497
  %153 = fadd float %151, %149, !dbg !1476
  %154 = fmul float %59, %140, !dbg !1478
  %155 = fadd float %153, %154, !dbg !1476
  %156 = call float @llvm.floor.f32(float %155), !dbg !1496
  %157 = sitofp i32 %_1044229 to float, !dbg !1498
  %158 = fsub float %146, %147, !dbg !1499
  %u = fmul float %158, %157, !dbg !1500
  %159 = fptosi float %u to i32, !dbg !1501
  %160 = sub nsw i32 %_1044229, 1, !dbg !1502
  %161 = icmp slt i32 %159, %160, !dbg !1503
  %x0 = select i1 %161, i32 %159, i32 %160, !dbg !1504
  %162 = fsub float %155, %156, !dbg !1499
  %163 = sitofp i32 %_1044230 to float, !dbg !1505
  %164 = sub nsw i32 %_1044230, 1, !dbg !1506
  %v = fmul float %162, %163, !dbg !1507
  %165 = fptosi float %v to i32, !dbg !1508
  %166 = icmp slt i32 %165, %164, !dbg !1503
  %. = select i1 %166, i32 %165, i32 %164, !dbg !1509
  %167 = add nsw i32 1, %x0, !dbg !1510
  %168 = icmp slt i32 %167, %160, !dbg !1503
  %x1 = select i1 %168, i32 %167, i32 %160, !dbg !1504
  %169 = add nsw i32 1, %., !dbg !1511
  %170 = icmp slt i32 %169, %164, !dbg !1503
  %.113 = select i1 %170, i32 %169, i32 %164, !dbg !1509
  %171 = mul nsw i32 %.113, %_1044229, !dbg !1512
  %172 = add nsw i32 %171, %x0, !dbg !1512
  %173 = sitofp i32 %159 to float, !dbg !1446
  %174 = mul nsw i32 %., %_1044229, !dbg !1512
  %175 = sitofp i32 %165 to float, !dbg !1450
  %176 = fmul float %.R164.b, %25, !dbg !1479
  %177 = fmul float %.R160.b, %23, !dbg !1481
  %178 = add nsw i32 %171, %x1, !dbg !1512
  %179 = fmul float %.R156.b, %17, !dbg !1480
  %180 = getelementptr inbounds [0 x i32], [0 x i32]* %_1044235, i64 0, i32 %172, !dbg !1513
  %kx = fsub float %u, %173, !dbg !1514
  %181 = add nsw i32 %174, %x1, !dbg !1512
  %182 = add nsw i32 %174, %x0, !dbg !1512
  %ky = fsub float %v, %175, !dbg !1515
  %183 = fadd float %179, %177, !dbg !1480
  %184 = getelementptr inbounds [0 x i32], [0 x i32]* %_1044235, i64 0, i32 %178, !dbg !1513
  %185 = fsub float 1.000000e+00, %kx, !dbg !1516
  %186 = getelementptr inbounds [0 x i32], [0 x i32]* %_1044235, i64 0, i32 %181, !dbg !1513
  %187 = getelementptr inbounds [0 x i32], [0 x i32]* %_1044235, i64 0, i32 %182, !dbg !1513
  %188 = fsub float 1.000000e+00, %ky, !dbg !1516
  %189 = fadd float %183, %176, !dbg !1480
  %190 = load i32, i32* %187, align 4, !dbg !1513
  %191 = fmul float 2.000000e+00, %189, !dbg !1517
  %192 = fmul float %.R164.b, %191, !dbg !1490
  %193 = fmul float %.R156.b, %191, !dbg !1490
  %194 = fmul float %.R160.b, %191, !dbg !1490
  %r = and i32 255, %190, !dbg !1518
  %195 = lshr i32 %190, 8, !dbg !1519
  %196 = lshr i32 %190, 16, !dbg !1520
  %197 = load i32, i32* %186, align 4, !dbg !1513
  %198 = fsub float %192, %25, !dbg !1521
  %199 = fsub float %193, %17, !dbg !1521
  %200 = fsub float %194, %23, !dbg !1521
  %201 = uitofp i32 %r to float, !dbg !1522
  %g = and i32 255, %195, !dbg !1523
  %b = and i32 255, %196, !dbg !1524
  %202 = fmul float 0x3F70101020000000, %201, !dbg !1525
  %203 = uitofp i32 %g to float, !dbg !1526
  %204 = uitofp i32 %b to float, !dbg !1527
  %205 = load i32, i32* %180, align 4, !dbg !1513
  %r92 = and i32 255, %197, !dbg !1518
  %206 = lshr i32 %197, 8, !dbg !1519
  %207 = lshr i32 %197, 16, !dbg !1520
  %208 = fmul float %185, %202, !dbg !1528
  %209 = fmul float 0x3F70101020000000, %203, !dbg !1529
  %210 = fmul float 0x3F70101020000000, %204, !dbg !1530
  %211 = uitofp i32 %r92 to float, !dbg !1522
  %g93 = and i32 255, %206, !dbg !1523
  %b94 = and i32 255, %207, !dbg !1524
  %212 = fmul float %185, %209, !dbg !1528
  %213 = fmul float %185, %210, !dbg !1528
  %214 = load i32, i32* %184, align 4, !dbg !1513
  %r95 = and i32 255, %205, !dbg !1518
  %215 = lshr i32 %205, 8, !dbg !1519
  %216 = lshr i32 %205, 16, !dbg !1520
  %217 = fmul float 0x3F70101020000000, %211, !dbg !1525
  %218 = uitofp i32 %g93 to float, !dbg !1526
  %219 = uitofp i32 %b94 to float, !dbg !1527
  %220 = uitofp i32 %r95 to float, !dbg !1522
  %g96 = and i32 255, %215, !dbg !1523
  %b97 = and i32 255, %216, !dbg !1524
  %221 = fmul float %kx, %217, !dbg !1531
  %222 = fmul float 0x3F70101020000000, %218, !dbg !1529
  %223 = fmul float 0x3F70101020000000, %219, !dbg !1530
  %r98 = and i32 255, %214, !dbg !1518
  %224 = lshr i32 %214, 8, !dbg !1519
  %225 = lshr i32 %214, 16, !dbg !1520
  %226 = fmul float 0x3F70101020000000, %220, !dbg !1525
  %227 = uitofp i32 %g96 to float, !dbg !1526
  %228 = uitofp i32 %b97 to float, !dbg !1527
  %229 = fadd float %208, %221, !dbg !1528
  %230 = fmul float %kx, %222, !dbg !1531
  %231 = fmul float %kx, %223, !dbg !1531
  %232 = uitofp i32 %r98 to float, !dbg !1522
  %g99 = and i32 255, %224, !dbg !1523
  %b100 = and i32 255, %225, !dbg !1524
  %233 = fmul float %185, %226, !dbg !1528
  %234 = fmul float 0x3F70101020000000, %227, !dbg !1529
  %235 = fmul float 0x3F70101020000000, %228, !dbg !1530
  %236 = fmul float %188, %229, !dbg !1528
  %237 = fadd float %212, %230, !dbg !1528
  %238 = fadd float %213, %231, !dbg !1528
  %239 = icmp eq i32 %61, 0, !dbg !1532
  %240 = fmul float 0x3F70101020000000, %232, !dbg !1525
  %241 = uitofp i32 %g99 to float, !dbg !1526
  %242 = uitofp i32 %b100 to float, !dbg !1527
  %243 = fmul float %185, %234, !dbg !1528
  %244 = fmul float %185, %235, !dbg !1528
  %245 = fmul float %188, %237, !dbg !1528
  %246 = fmul float %188, %238, !dbg !1528
  %247 = select i1 %239, i32 1, i32 %61, !dbg !1533
  %248 = fmul float %kx, %240, !dbg !1531
  %249 = fmul float 0x3F70101020000000, %241, !dbg !1529
  %250 = fmul float 0x3F70101020000000, %242, !dbg !1530
  %251 = shl i32 %247, 13, !dbg !1534
  %252 = fadd float %233, %248, !dbg !1528
  %253 = fmul float %kx, %249, !dbg !1531
  %254 = fmul float %kx, %250, !dbg !1531
  %255 = xor i32 %247, %251, !dbg !1535
  %256 = fmul float %ky, %252, !dbg !1531
  %257 = fadd float %243, %253, !dbg !1528
  %258 = fadd float %244, %254, !dbg !1528
  %259 = lshr i32 %255, 17, !dbg !1536
  %260 = fadd float %236, %256, !dbg !1528
  %261 = fmul float %ky, %257, !dbg !1531
  %262 = fmul float %ky, %258, !dbg !1531
  %263 = xor i32 %255, %259, !dbg !1537
  %264 = fmul float 0x3FD45F3060000000, %260, !dbg !1532
  %265 = fmul float 0x3FCB367A00000000, %260, !dbg !1538
  %266 = fadd float %245, %261, !dbg !1528
  %267 = fadd float %246, %262, !dbg !1528
  %268 = shl i32 %263, 5, !dbg !1539
  %269 = fmul float 0x3FD45F3060000000, %266, !dbg !1540
  %270 = fmul float 0x3FE6E2EB20000000, %266, !dbg !1541
  %271 = fmul float 0x3FD45F3060000000, %267, !dbg !1542
  %272 = fmul float 0x3FB27BB300000000, %267, !dbg !1543
  %273 = xor i32 %263, %268, !dbg !1544
  %274 = fadd float %265, %270, !dbg !1538
  %275 = fadd float %274, %272, !dbg !1538
  %276 = icmp eq i32 %273, 0, !dbg !1532
  %277 = fadd float 0x3FE6E2EB20000000, %275, !dbg !1545
  %278 = select i1 %276, i32 1, i32 %273, !dbg !1533
  %279 = fcmp oeq float %277, 0.000000e+00, !dbg !1546
  %280 = fdiv float 0x3FE6E2EB20000000, %277, !dbg !1547
  %281 = and i32 8388607, %273, !dbg !1548
  %282 = shl i32 %278, 13, !dbg !1534
  %283 = select i1 %279, float 0.000000e+00, float %280, !dbg !1549
  %284 = or i32 1065353216, %281, !dbg !1550
  %285 = xor i32 %278, %282, !dbg !1535
  %286 = fsub float 1.000000e+00, %283, !dbg !1551
  %287 = bitcast i32 %284 to float, !dbg !1552
  %288 = lshr i32 %285, 17, !dbg !1536
  %289 = fsub float %287, 1.000000e+00, !dbg !1552
  %290 = xor i32 %285, %288, !dbg !1537
  %291 = fcmp ole float %283, %289, !dbg !1553
  %292 = shl i32 %290, 5, !dbg !1539
  %293 = xor i32 %290, %292, !dbg !1544
  %294 = icmp eq i32 %293, 0, !dbg !1532
  %295 = select i1 %294, i32 1, i32 %293, !dbg !1533
  %296 = shl i32 %295, 13, !dbg !1534
  %297 = and i32 8388607, %293, !dbg !1548
  %298 = xor i32 %295, %296, !dbg !1535
  %299 = or i32 1065353216, %297, !dbg !1550
  %300 = lshr i32 %298, 17, !dbg !1536
  %301 = bitcast i32 %299 to float, !dbg !1552
  %302 = xor i32 %298, %300, !dbg !1537
  %303 = fsub float %301, 1.000000e+00, !dbg !1552
  %304 = shl i32 %302, 5, !dbg !1539
  %phi = fmul float 0x401921FB60000000, %303, !dbg !1554
  %305 = xor i32 %302, %304, !dbg !1544
  %306 = and i32 8388607, %305, !dbg !1548
  %307 = or i32 1065353216, %306, !dbg !1550
  %308 = bitcast i32 %307 to float, !dbg !1552
  %309 = fsub float %308, 1.000000e+00, !dbg !1552
  %neg.137 = xor i1 %291, true, !dbg !1555
  %edge_if_join12.1 = and i1 %130, %neg.137, !dbg !1555
  %edge_if_join12.0 = and i1 %130, %291, !dbg !1555
  br label %expr_false27

expr_false27:                                     ; preds = %if_join12
  %310 = bitcast float %309 to i32, !dbg !1556
  %311 = uitofp i32 %310 to float, !dbg !1557
  %312 = and i32 8388607, %310, !dbg !1558
  %y = fmul float 0x3E80000000000000, %311, !dbg !1559
  %mx = or i32 1056964608, %312, !dbg !1560
  %313 = fsub float %y, 0x405F0E6EE0000000, !dbg !1561
  %314 = bitcast i32 %mx to float, !dbg !1562
  %315 = fmul float 0x3FF7F7EEA0000000, %314, !dbg !1563
  %316 = fadd float 0x3FD6889F20000000, %314, !dbg !1564
  %317 = fsub float %313, %315, !dbg !1561
  %318 = fdiv float 0x3FFB9D3460000000, %316, !dbg !1565
  %319 = fsub float %317, %318, !dbg !1561
  %320 = fmul float 0x3F851D07E0000000, %319, !dbg !1566
  %321 = fcmp olt float %320, -1.260000e+02, !dbg !1567
  %322 = fcmp olt float %320, 0.000000e+00, !dbg !1568
  %323 = select i1 %321, float -1.260000e+02, float %320, !dbg !1569
  %324 = select i1 %322, float 1.000000e+00, float 0.000000e+00, !dbg !1570
  %325 = fadd float 0x405E518A20000000, %323, !dbg !1571
  %326 = fptosi float %323 to i32, !dbg !1572
  %327 = sitofp i32 %326 to float, !dbg !1573
  %328 = fsub float %323, %327, !dbg !1574
  %z = fadd float %328, %324, !dbg !1574
  %329 = fmul float 0x3FF7D791A0000000, %z, !dbg !1575
  %330 = fsub float 0x40135EBF00000000, %z, !dbg !1576
  %331 = fdiv float 0x403BBA5FC0000000, %330, !dbg !1577
  %332 = fadd float %325, %331, !dbg !1571
  %333 = fsub float %332, %329, !dbg !1571
  %334 = fmul float 0x4160000000000000, %333, !dbg !1578
  %335 = fptosi float %334 to i32, !dbg !1579
  %336 = bitcast i32 %335 to float, !dbg !1580
  %337 = call float @llvm.minnum.f32(float %336, float 1.000000e+00), !dbg !1581
  %338 = fmul float %337, %337, !dbg !1582
  %339 = fsub float 1.000000e+00, %338, !dbg !1583
  %340 = call float @llvm.sqrt.f32(float %339), !dbg !1584
  %341 = call float @llvm.cos.f32(float %phi), !dbg !1585
  %342 = call float @llvm.sin.f32(float %phi), !dbg !1586
  %x = fmul float %340, %341, !dbg !1587
  %343 = fsub float -0.000000e+00, %200, !dbg !1588
  %344 = fmul float %199, %337, !dbg !1479
  %345 = fcmp ole float 0.000000e+00, %198, !dbg !1589
  %346 = fmul float %199, %200, !dbg !1590
  %y101 = fmul float %340, %342, !dbg !1591
  %347 = fmul float %198, %337, !dbg !1479
  %348 = fmul float %200, %200, !dbg !1592
  %349 = fmul float %200, %337, !dbg !1479
  %350 = fmul float %343, %y101, !dbg !1481
  %351 = select i1 %345, float 1.000000e+00, float -1.000000e+00, !dbg !1593
  %352 = fmul float %351, %199, !dbg !1594
  %353 = fsub float -0.000000e+00, %351, !dbg !1595
  %354 = fadd float %351, %198, !dbg !1596
  %355 = fmul float %352, %199, !dbg !1594
  %356 = fmul float %353, %199, !dbg !1595
  %a = fdiv float -1.000000e+00, %354, !dbg !1597
  %357 = fmul float %355, %a, !dbg !1594
  %358 = fmul float %356, %x, !dbg !1480
  %b102 = fmul float %346, %a, !dbg !1590
  %359 = fmul float %348, %a, !dbg !1592
  %360 = fadd float 1.000000e+00, %357, !dbg !1598
  %361 = fadd float %358, %350, !dbg !1480
  %362 = fmul float %b102, %y101, !dbg !1481
  %363 = fmul float %351, %b102, !dbg !1599
  %364 = fadd float %351, %359, !dbg !1600
  %365 = fmul float %360, %x, !dbg !1480
  %366 = fadd float %361, %347, !dbg !1480
  %367 = fadd float %365, %362, !dbg !1480
  %368 = fmul float %363, %x, !dbg !1480
  %369 = fmul float %364, %y101, !dbg !1481
  %370 = fmul float %366, %.R164.b, !dbg !1479
  %371 = fadd float %367, %344, !dbg !1480
  %372 = fadd float %368, %369, !dbg !1480
  %373 = fmul float %371, %.R156.b, !dbg !1480
  %374 = fadd float %372, %349, !dbg !1480
  %375 = fmul float %374, %.R160.b, !dbg !1481
  %376 = fadd float %373, %375, !dbg !1480
  %377 = fadd float %376, %370, !dbg !1480
  %378 = fcmp ole float 0.000000e+00, %377, !dbg !1601
  %cos = select i1 %378, float %377, float 0.000000e+00, !dbg !1602
  %379 = fdiv float %309, %337, !dbg !1603
  %380 = fcmp une float %337, 0.000000e+00, !dbg !1604
  %381 = select i1 %380, float %379, float 0.000000e+00, !dbg !1605
  %382 = fmul float 9.700000e+01, %381, !dbg !1606
  %pdf = fmul float 0x3FC45F3060000000, %382, !dbg !1606
  %383 = fcmp olt float 0.000000e+00, %pdf, !dbg !1607
  %edge_expr_false27.0 = and i1 %edge_if_join12.1, %383, !dbg !1608
  %neg.138 = xor i1 %383, true, !dbg !1608
  %edge_expr_false27.1 = and i1 %edge_if_join12.1, %neg.138, !dbg !1608
  br label %expr_true35

expr_true35:                                      ; preds = %expr_false27
  %384 = fmul float %374, %.R149.b, !dbg !1481
  %385 = fmul float %366, %.R153.b, !dbg !1479
  %386 = fmul float %371, %.R145.b, !dbg !1480
  %387 = fadd float %386, %384, !dbg !1480
  %388 = fadd float %387, %385, !dbg !1480
  %389 = fcmp olt float 0.000000e+00, %388, !dbg !1609
  %edge_expr_true35.0 = and i1 %edge_expr_false27.0, %389, !dbg !1610
  %neg.139 = xor i1 %389, true, !dbg !1610
  %edge_expr_true35.1 = and i1 %edge_expr_false27.0, %neg.139, !dbg !1610
  br label %expr_true37

expr_true37:                                      ; preds = %expr_true35
  br label %infix_result.s, !dbg !1611

infix_result.s:                                   ; preds = %expr_true37
  br label %infix_result

infix_result:                                     ; preds = %infix_result.s
  %390 = or i1 %edge_expr_false27.1, %edge_expr_true35.1, !dbg !1612
  %391 = or i1 %390, %edge_expr_true35.0, !dbg !1612
  %pdf. = select i1 %edge_expr_true35.0, float %pdf, float 1.000000e+00, !dbg !1612
  %edge_infix_result.0 = and i1 %391, %edge_expr_true35.0, !dbg !1449
  %neg.valid = xor i1 %edge_expr_true35.0, true, !dbg !1449
  %edge_infix_result.1 = and i1 %391, %neg.valid, !dbg !1449
  br label %expr_true43

expr_true43:                                      ; preds = %infix_result
  %392 = fmul float 9.800000e+01, %pdf, !dbg !1613
  %393 = fdiv float %392, 9.700000e+01, !dbg !1613
  %394 = fmul float 0.000000e+00, %393, !dbg !1532
  br label %if_join44.s, !dbg !1614

if_join44.s:                                      ; preds = %expr_true43
  %.b173 = select i1 %edge_infix_result.1, float 0.000000e+00, float %394
  %.b177 = select i1 %edge_infix_result.1, float 0.000000e+00, float %393
  %.b181 = select i1 %edge_infix_result.1, float 0.000000e+00, float %394
  br label %if_join44

if_join44:                                        ; preds = %if_join44.s
  %395 = or i1 %edge_infix_result.1, %edge_infix_result.0, !dbg !1593
  %396 = fmul float %286, %271, !dbg !1593
  %397 = fmul float %286, %264, !dbg !1615
  %398 = fmul float 0x3FD45F3060000000, %cos, !dbg !1616
  %399 = fmul float %286, %269, !dbg !1617
  %400 = fmul float %283, %pdf., !dbg !1531
  %401 = fmul float %283, %.b173, !dbg !1618
  %402 = fmul float %283, %.b181, !dbg !1619
  %403 = fadd float %397, %401, !dbg !1615
  %404 = fadd float %396, %402, !dbg !1593
  %405 = fmul float %286, %398, !dbg !1528
  %406 = fadd float %405, %400, !dbg !1528
  %407 = fmul float %283, %.b177, !dbg !1620
  %408 = fadd float %399, %407, !dbg !1617
  br label %expr_true49, !dbg !1621

expr_true49:                                      ; preds = %if_join44
  %409 = fsub float 1.000000e+00, %309, !dbg !1622
  %410 = call float @llvm.sqrt.f32(float %409), !dbg !1623
  %411 = call float @llvm.sqrt.f32(float %309), !dbg !1624
  %412 = call float @llvm.cos.f32(float %phi), !dbg !1585
  %413 = call float @llvm.sin.f32(float %phi), !dbg !1586
  %414 = fsub float -0.000000e+00, %.R160.b, !dbg !1588
  %x103 = fmul float %411, %412, !dbg !1587
  %415 = fmul float 0x3FD45F3060000000, %410, !dbg !1616
  %416 = fmul float %.R156.b, %410, !dbg !1479
  %y104 = fmul float %411, %413, !dbg !1591
  %417 = fmul float %414, %y104, !dbg !1481
  %418 = fmul float %.R164.b, %410, !dbg !1479
  %419 = fmul float %.R160.b, %410, !dbg !1479
  %420 = fmul float %.R156.b, %.R160.b, !dbg !1590
  %421 = fmul float %.R160.b, %.R160.b, !dbg !1592
  %422 = fcmp ole float 0.000000e+00, %.R164.b, !dbg !1589
  %423 = fcmp olt float 0.000000e+00, %415, !dbg !1607
  %424 = select i1 %422, float 1.000000e+00, float -1.000000e+00, !dbg !1593
  %425 = fmul float %424, %.R156.b, !dbg !1594
  %426 = fsub float -0.000000e+00, %424, !dbg !1595
  %427 = fadd float %424, %.R164.b, !dbg !1596
  %428 = fmul float %425, %.R156.b, !dbg !1594
  %429 = fmul float %426, %.R156.b, !dbg !1595
  %a105 = fdiv float -1.000000e+00, %427, !dbg !1597
  %430 = fmul float %428, %a105, !dbg !1594
  %431 = fmul float %429, %x103, !dbg !1480
  %b106 = fmul float %420, %a105, !dbg !1590
  %432 = fmul float %421, %a105, !dbg !1592
  %433 = fadd float 1.000000e+00, %430, !dbg !1598
  %434 = fadd float %431, %417, !dbg !1480
  %435 = fmul float %b106, %y104, !dbg !1481
  %436 = fmul float %424, %b106, !dbg !1599
  %437 = fadd float %424, %432, !dbg !1600
  %438 = fmul float %433, %x103, !dbg !1480
  %439 = fadd float %434, %418, !dbg !1480
  %440 = fadd float %438, %435, !dbg !1480
  %441 = fmul float %436, %x103, !dbg !1480
  %442 = fmul float %437, %y104, !dbg !1481
  %443 = fadd float %440, %416, !dbg !1480
  %444 = fadd float %441, %442, !dbg !1480
  %445 = fadd float %444, %419, !dbg !1480
  %edge_expr_true49.0 = and i1 %edge_if_join12.0, %423, !dbg !1608
  %neg.141 = xor i1 %423, true, !dbg !1608
  %edge_expr_true49.1 = and i1 %edge_if_join12.0, %neg.141, !dbg !1608
  br label %expr_true57

expr_true57:                                      ; preds = %expr_true49
  %446 = fmul float %445, %.R149.b, !dbg !1481
  %447 = fmul float %443, %.R145.b, !dbg !1480
  %448 = fmul float %439, %.R153.b, !dbg !1479
  %449 = fadd float %447, %446, !dbg !1480
  %450 = fadd float %449, %448, !dbg !1480
  %451 = fcmp olt float 0.000000e+00, %450, !dbg !1609
  %edge_expr_true57.0 = and i1 %edge_expr_true49.0, %451, !dbg !1610
  %neg.142 = xor i1 %451, true, !dbg !1610
  %edge_expr_true57.1 = and i1 %edge_expr_true49.0, %neg.142, !dbg !1610
  br label %expr_true60

expr_true60:                                      ; preds = %expr_true57
  br label %infix_result61.s, !dbg !1611

infix_result61.s:                                 ; preds = %expr_true60
  br label %infix_result61

infix_result61:                                   ; preds = %infix_result61.s
  %452 = or i1 %edge_expr_true49.1, %edge_expr_true57.1, !dbg !1612
  %453 = or i1 %452, %edge_expr_true57.0, !dbg !1612
  %.115 = select i1 %edge_expr_true57.0, float %415, float 1.000000e+00, !dbg !1612
  %if_join70.repl.0 = select i1 %edge_expr_true57.0, float %264, float 0.000000e+00, !dbg !1449
  %if_join70.repl.1 = select i1 %edge_expr_true57.0, float %269, float 0.000000e+00, !dbg !1449
  %if_join70.repl.2 = select i1 %edge_expr_true57.0, float %271, float 0.000000e+00, !dbg !1449
  %454 = fmul float %439, %198, !dbg !1479
  %455 = fmul float %443, %199, !dbg !1480
  %456 = fmul float %445, %200, !dbg !1481
  %457 = fadd float %455, %456, !dbg !1480
  %458 = fadd float %457, %454, !dbg !1480
  %459 = fcmp ole float 0.000000e+00, %458, !dbg !1601
  %.116 = select i1 %459, float %458, float 0.000000e+00, !dbg !1625
  %460 = bitcast float %.116 to i32, !dbg !1556
  %461 = uitofp i32 %460 to float, !dbg !1557
  %462 = fmul float %286, %.115, !dbg !1528
  %463 = fmul float %286, %if_join70.repl.2, !dbg !1593
  %464 = fmul float %286, %if_join70.repl.0, !dbg !1615
  %465 = and i32 8388607, %460, !dbg !1558
  %466 = fmul float %286, %if_join70.repl.1, !dbg !1617
  %y107 = fmul float 0x3E80000000000000, %461, !dbg !1559
  %mx109 = or i32 1056964608, %465, !dbg !1560
  %467 = fsub float %y107, 0x405F0E6EE0000000, !dbg !1561
  %468 = bitcast i32 %mx109 to float, !dbg !1562
  %469 = fmul float 0x3FF7F7EEA0000000, %468, !dbg !1563
  %470 = fadd float 0x3FD6889F20000000, %468, !dbg !1564
  %471 = fsub float %467, %469, !dbg !1561
  %472 = fdiv float 0x3FFB9D3460000000, %470, !dbg !1565
  %473 = fsub float %471, %472, !dbg !1561
  %474 = fmul float 9.600000e+01, %473, !dbg !1566
  %475 = fcmp olt float %474, -1.260000e+02, !dbg !1567
  %476 = fcmp olt float %474, 0.000000e+00, !dbg !1568
  %477 = select i1 %475, float -1.260000e+02, float %474, !dbg !1569
  %478 = select i1 %476, float 1.000000e+00, float 0.000000e+00, !dbg !1570
  %479 = fadd float 0x405E518A20000000, %477, !dbg !1571
  %480 = fptosi float %477 to i32, !dbg !1572
  %481 = sitofp i32 %480 to float, !dbg !1573
  %482 = fsub float %477, %481, !dbg !1574
  %z111 = fadd float %482, %478, !dbg !1574
  %483 = fmul float 0x3FF7D791A0000000, %z111, !dbg !1575
  %484 = fsub float 0x40135EBF00000000, %z111, !dbg !1576
  %485 = fdiv float 0x403BBA5FC0000000, %484, !dbg !1577
  %486 = fadd float %479, %485, !dbg !1571
  %487 = fsub float %486, %483, !dbg !1571
  %488 = fmul float 0x4160000000000000, %487, !dbg !1578
  %489 = fptosi float %488 to i32, !dbg !1579
  %490 = bitcast i32 %489 to float, !dbg !1580
  %491 = fmul float 9.700000e+01, %490, !dbg !1626
  %492 = fmul float 9.800000e+01, %490, !dbg !1627
  %493 = fmul float 0x3FC45F3060000000, %491, !dbg !1626
  %494 = fmul float 0x3FC45F3060000000, %492, !dbg !1627
  %495 = fmul float %283, %493, !dbg !1531
  %496 = fmul float 0.000000e+00, %494, !dbg !1532
  %497 = fadd float %462, %495, !dbg !1528
  %498 = fmul float %283, %496, !dbg !1618
  %499 = fmul float %283, %494, !dbg !1620
  %500 = fadd float %464, %498, !dbg !1615
  %501 = fadd float %463, %498, !dbg !1593
  %502 = fadd float %466, %499, !dbg !1617
  br label %if_join79.s, !dbg !1621

if_join79.s:                                      ; preds = %infix_result61
  %.not = xor i1 %395, true
  %.b195235 = and i1 %.not, %453
  %.R199.b = select i1 %395, float %371, float %443
  %.R203.b = select i1 %395, float %374, float %445
  %.R207.b = select i1 %395, float %366, float %439
  %pdf..R.b = select i1 %395, float %pdf., float %.115
  %cos.R.b = select i1 %395, float %cos, float %410
  %.b173.R.b = select i1 %395, float %.b173, float %if_join70.repl.0
  %.b177.R.b = select i1 %395, float %.b177, float %if_join70.repl.1
  %.b181.R.b = select i1 %395, float %.b181, float %if_join70.repl.2
  %.R222.b = select i1 %395, float %406, float %497
  %.R226.b = select i1 %395, float %403, float %500
  %.R230.b = select i1 %395, float %408, float %502
  %.R234.b = select i1 %395, float %404, float %501
  br label %if_join79

if_join79:                                        ; preds = %if_join79.s
  %503 = or i1 %.b195235, %395, !dbg !1628
  %.fca.0.insert = insertvalue %5 undef, float %62, 0, !dbg !1628
  %.fca.1.insert = insertvalue %5 %.fca.0.insert, float %63, 1, !dbg !1628
  %.fca.2.insert = insertvalue %5 %.fca.1.insert, float %64, 2, !dbg !1628
  %504 = fsub float -0.000000e+00, %.R203.b, !dbg !1453
  %505 = fcmp olt float 0.000000e+00, %.R203.b, !dbg !1454
  %506 = select i1 %505, float %.R203.b, float %504, !dbg !1455
  %507 = fcmp olt float 0.000000e+00, %.R207.b, !dbg !1454
  %508 = fsub float -0.000000e+00, %.R207.b, !dbg !1453
  %509 = select i1 %507, float %.R207.b, float %508, !dbg !1455
  %510 = extractvalue %0 %_1044238, 9, !dbg !1629
  %511 = extractvalue %1 %_1044237, 1, !dbg !1630
  %512 = extractvalue %6 undef, 2, !dbg !1631
  %513 = extractvalue %1 %_1044237, 4, !dbg !1632
  %514 = extractvalue %0 %_1044238, 8, !dbg !1633
  %515 = extractvalue %1 %_1044237, 5, !dbg !1634
  %516 = extractvalue %0 %_1044238, 10, !dbg !1635
  %517 = extractvalue %5 undef, 1, !dbg !1636
  %518 = extractvalue %1 %_1044237, 3, !dbg !1637
  %519 = fdiv float %cos.R.b, %.R222.b, !dbg !1638
  %520 = fdiv float 1.000000e+00, %.R222.b, !dbg !1639
  %521 = extractvalue %0 %_1044238, 6, !dbg !1640
  %522 = extractvalue %5 undef, 0, !dbg !1641
  %523 = getelementptr inbounds [0 x float], [0 x float]* %518, i64 0, i32 %6, !dbg !1637
  %524 = extractvalue %0 %_1044238, 11, !dbg !1642
  %525 = getelementptr inbounds [0 x float], [0 x float]* %514, i64 0, i32 %6, !dbg !1633
  %526 = extractvalue %1 %_1044237, 8, !dbg !1643
  %527 = getelementptr inbounds [0 x i32], [0 x i32]* %521, i64 0, i32 %6, !dbg !1640
  %528 = extractvalue %0 %_1044238, 7, !dbg !1644
  %529 = fmul float %16, %51, !dbg !1490
  %530 = extractvalue %1 %_1044237, 2, !dbg !1645
  %531 = extractvalue %1 %_1044237, 7, !dbg !1646
  %532 = extractvalue %5 undef, 2, !dbg !1647
  %533 = getelementptr inbounds [0 x float], [0 x float]* %515, i64 0, i32 %6, !dbg !1634
  %534 = extractvalue %1 %_1044237, 6, !dbg !1648
  %535 = getelementptr inbounds [0 x float], [0 x float]* %511, i64 0, i32 %6, !dbg !1630
  %536 = getelementptr inbounds [0 x float], [0 x float]* %510, i64 0, i32 %6, !dbg !1629
  %537 = getelementptr inbounds [0 x float], [0 x float]* %513, i64 0, i32 %6, !dbg !1632
  %538 = fadd float %13, %529, !dbg !1649
  %539 = getelementptr inbounds [0 x float], [0 x float]* %516, i64 0, i32 %6, !dbg !1635
  %540 = fmul float %21, %51, !dbg !1490
  %541 = fmul float %19, %51, !dbg !1490
  %542 = fadd float %15, %540, !dbg !1649
  %543 = fmul float %62, %.R226.b, !dbg !1650
  %544 = getelementptr inbounds [0 x i32], [0 x i32]* %524, i64 0, i32 %6, !dbg !1642
  %545 = getelementptr inbounds [0 x float], [0 x float]* %526, i64 0, i32 %6, !dbg !1643
  %546 = getelementptr inbounds [0 x float], [0 x float]* %528, i64 0, i32 %6, !dbg !1644
  %547 = getelementptr inbounds [0 x float], [0 x float]* %530, i64 0, i32 %6, !dbg !1645
  %548 = getelementptr inbounds [0 x float], [0 x float]* %531, i64 0, i32 %6, !dbg !1646
  %549 = fmul float %64, %.R234.b, !dbg !1651
  %550 = getelementptr inbounds [0 x float], [0 x float]* %534, i64 0, i32 %6, !dbg !1648
  %551 = fadd float %14, %541, !dbg !1649
  %552 = fmul float %543, %519, !dbg !1532
  %553 = fmul float %63, %.R230.b, !dbg !1652
  %554 = fmul float %549, %519, !dbg !1542
  %555 = add nsw i32 1, %66, !dbg !1653
  store float %538, float* %535, align 4, !dbg !1630
  %556 = fmul float %553, %519, !dbg !1540
  store float %551, float* %547, align 4, !dbg !1645
  store float %542, float* %523, align 4, !dbg !1637
  store float %.R199.b, float* %537, align 4, !dbg !1632
  store float %.R203.b, float* %533, align 4, !dbg !1634
  store float %.R207.b, float* %550, align 4, !dbg !1648
  store float 0x3F1A36E2E0000000, float* %548, align 4, !dbg !1646
  store float 0x47EFFFFFE0000000, float* %545, align 4, !dbg !1643
  store i32 %305, i32* %527, align 4, !dbg !1640
  store float %552, float* %525, align 4, !dbg !1633
  store float %556, float* %536, align 4, !dbg !1629
  store float %554, float* %539, align 4, !dbg !1635
  store float %520, float* %546, align 4, !dbg !1644
  store i32 %555, i32* %544, align 4, !dbg !1642
  ret void, !dbg !1654
}

define internal void @lambda_1042651(i32 %j_1042653, %1 %_1042655, %0 %_1042656, i32 %_1042657, %1 %_1042658, %0 %_1042659, [0 x i32]* %_1042660, %0 %_1042661, [0 x %2]* %_1042662, [0 x %2]* %_1042663) #1 !dbg !881 {
lambda_1042651_start:
  %0 = extractvalue %1 %_1042658, 4, !dbg !1655
  %1 = extractvalue %1 %_1042658, 5, !dbg !1656
  %2 = extractvalue %1 %_1042658, 1, !dbg !1657
  %3 = extractvalue %1 %_1042658, 6, !dbg !1658
  %4 = extractvalue %1 %_1042658, 3, !dbg !1659
  %5 = add nsw i32 %_1042657, %j_1042653, !dbg !1660
  %6 = getelementptr inbounds [0 x float], [0 x float]* %0, i64 0, i32 %5, !dbg !1655
  %7 = extractvalue %1 %_1042658, 2, !dbg !1661
  %8 = getelementptr inbounds [0 x float], [0 x float]* %1, i64 0, i32 %5, !dbg !1656
  %9 = getelementptr inbounds [0 x float], [0 x float]* %2, i64 0, i32 %5, !dbg !1657
  %10 = getelementptr inbounds [0 x float], [0 x float]* %3, i64 0, i32 %5, !dbg !1658
  %11 = load float, float* %9, align 4, !dbg !1657
  %12 = getelementptr inbounds [0 x float], [0 x float]* %4, i64 0, i32 %5, !dbg !1659
  %13 = getelementptr inbounds [0 x float], [0 x float]* %7, i64 0, i32 %5, !dbg !1661
  %14 = load float, float* %13, align 4, !dbg !1661
  %15 = load float, float* %12, align 4, !dbg !1659
  %16 = load float, float* %6, align 4, !dbg !1655
  %17 = fcmp olt float 0.000000e+00, %16, !dbg !1662
  %18 = fsub float -0.000000e+00, %16, !dbg !1663
  %19 = select i1 %17, float %16, float %18, !dbg !1664
  %20 = load float, float* %8, align 4, !dbg !1656
  %21 = load float, float* %10, align 4, !dbg !1658
  %22 = fcmp olt float 0.000000e+00, %20, !dbg !1662
  %23 = fsub float -0.000000e+00, %20, !dbg !1663
  %24 = select i1 %22, float %20, float %23, !dbg !1664
  %25 = fcmp olt float 0.000000e+00, %21, !dbg !1662
  %26 = fsub float -0.000000e+00, %21, !dbg !1663
  %27 = select i1 %25, float %21, float %26, !dbg !1664
  %28 = extractvalue %0 %_1042659, 2, !dbg !1665
  %29 = extractvalue %0 %_1042659, 3, !dbg !1666
  %30 = getelementptr inbounds [0 x i32], [0 x i32]* %28, i64 0, i32 %5, !dbg !1665
  %31 = extractvalue %0 %_1042661, 11, !dbg !1667
  %32 = extractvalue %0 %_1042661, 9, !dbg !1668
  %33 = extractvalue %0 %_1042661, 10, !dbg !1669
  %34 = extractvalue %0 %_1042661, 8, !dbg !1670
  %35 = getelementptr inbounds [0 x i32], [0 x i32]* %31, i64 0, i32 %5, !dbg !1667
  %36 = getelementptr inbounds [0 x float], [0 x float]* %34, i64 0, i32 %5, !dbg !1670
  %37 = extractvalue %0 %_1042661, 7, !dbg !1671
  %38 = getelementptr inbounds [0 x float], [0 x float]* %32, i64 0, i32 %5, !dbg !1668
  %39 = load i32, i32* %30, align 4, !dbg !1665
  %40 = getelementptr inbounds [0 x float], [0 x float]* %29, i64 0, i32 %5, !dbg !1666
  %41 = extractvalue %0 %_1042659, 5, !dbg !1672
  %42 = extractvalue %0 %_1042661, 6, !dbg !1673
  %43 = extractvalue %0 %_1042659, 4, !dbg !1674
  %44 = getelementptr inbounds [0 x float], [0 x float]* %33, i64 0, i32 %5, !dbg !1669
  %45 = getelementptr inbounds [0 x float], [0 x float]* %37, i64 0, i32 %5, !dbg !1671
  %46 = load float, float* %40, align 4, !dbg !1666
  %47 = getelementptr inbounds [0 x float], [0 x float]* %41, i64 0, i32 %5, !dbg !1672
  %48 = getelementptr inbounds [0 x i32], [0 x i32]* %42, i64 0, i32 %5, !dbg !1673
  %49 = getelementptr inbounds [0 x float], [0 x float]* %43, i64 0, i32 %5, !dbg !1674
  %50 = getelementptr inbounds [0 x %2], [0 x %2]* %_1042662, i64 0, i32 %39, !dbg !1675
  %51 = mul nsw i32 4, %39, !dbg !1676
  %52 = load float, float* %49, align 4, !dbg !1674
  %53 = add nsw i32 2, %51, !dbg !1677
  %54 = add nsw i32 1, %51, !dbg !1678
  %55 = getelementptr inbounds [0 x i32], [0 x i32]* %_1042660, i64 0, i32 %51, !dbg !1679
  %56 = getelementptr inbounds [0 x i32], [0 x i32]* %_1042660, i64 0, i32 %53, !dbg !1680
  %57 = getelementptr inbounds [0 x i32], [0 x i32]* %_1042660, i64 0, i32 %54, !dbg !1681
  %58 = fsub float 1.000000e+00, %52, !dbg !1682
  %59 = load float, float* %47, align 4, !dbg !1672
  %60 = fsub float %58, %59, !dbg !1682
  %61 = load i32, i32* %48, align 4, !dbg !1673
  %62 = load float, float* %36, align 4, !dbg !1670
  %63 = load float, float* %38, align 4, !dbg !1668
  %64 = load float, float* %44, align 4, !dbg !1669
  %65 = load float, float* %45, align 4, !dbg !1671
  %66 = load i32, i32* %35, align 4, !dbg !1667
  %.fca.1.0.extract = extractvalue %4 undef, 1, 0, !dbg !1683
  %.fca.1.1.extract = extractvalue %4 undef, 1, 1, !dbg !1683
  %.fca.1.2.extract = extractvalue %4 undef, 1, 2, !dbg !1683
  %67 = load i32, i32* %55, align 4, !dbg !1679
  %68 = load i32, i32* %57, align 4, !dbg !1681
  %69 = getelementptr inbounds [0 x %2], [0 x %2]* %_1042663, i64 0, i32 %67, !dbg !1684
  %70 = load i32, i32* %56, align 4, !dbg !1680
  %71 = getelementptr inbounds [0 x %2], [0 x %2]* %_1042663, i64 0, i32 %68, !dbg !1684
  %srov_gep102 = getelementptr %2, %2* %50, i32 0, i32 0, !dbg !1675
  %72 = load float, float* %srov_gep102, !dbg !1675
  %srov_gep103 = getelementptr %2, %2* %50, i32 0, i32 1, !dbg !1675
  %73 = load float, float* %srov_gep103, !dbg !1675
  %srov_gep104 = getelementptr %2, %2* %50, i32 0, i32 2, !dbg !1675
  %74 = load float, float* %srov_gep104, !dbg !1675
  %75 = getelementptr inbounds [0 x %2], [0 x %2]* %_1042663, i64 0, i32 %70, !dbg !1684
  %srov_gep = getelementptr %2, %2* %69, i32 0, i32 0, !dbg !1684
  %76 = load float, float* %srov_gep, !dbg !1684
  %srov_gep94 = getelementptr %2, %2* %69, i32 0, i32 1, !dbg !1684
  %77 = load float, float* %srov_gep94, !dbg !1684
  %srov_gep95 = getelementptr %2, %2* %69, i32 0, i32 2, !dbg !1684
  %78 = load float, float* %srov_gep95, !dbg !1684
  %srov_gep96 = getelementptr %2, %2* %71, i32 0, i32 0, !dbg !1684
  %79 = load float, float* %srov_gep96, !dbg !1684
  %srov_gep97 = getelementptr %2, %2* %71, i32 0, i32 1, !dbg !1684
  %80 = load float, float* %srov_gep97, !dbg !1684
  %srov_gep98 = getelementptr %2, %2* %71, i32 0, i32 2, !dbg !1684
  %81 = load float, float* %srov_gep98, !dbg !1684
  %82 = fmul float %60, %78, !dbg !1685
  %83 = fmul float %60, %76, !dbg !1685
  %84 = fmul float %60, %77, !dbg !1685
  %srov_gep99 = getelementptr %2, %2* %75, i32 0, i32 0, !dbg !1684
  %85 = load float, float* %srov_gep99, !dbg !1684
  %srov_gep100 = getelementptr %2, %2* %75, i32 0, i32 1, !dbg !1684
  %86 = load float, float* %srov_gep100, !dbg !1684
  %srov_gep101 = getelementptr %2, %2* %75, i32 0, i32 2, !dbg !1684
  %87 = load float, float* %srov_gep101, !dbg !1684
  %88 = fmul float %52, %81, !dbg !1686
  %89 = fmul float %52, %79, !dbg !1686
  %90 = fmul float %52, %80, !dbg !1686
  %91 = fadd float %82, %88, !dbg !1685
  %92 = fadd float %83, %89, !dbg !1685
  %93 = fadd float %84, %90, !dbg !1685
  %94 = fmul float %59, %87, !dbg !1687
  %95 = fmul float %59, %85, !dbg !1687
  %96 = fmul float %59, %86, !dbg !1687
  %97 = fadd float %91, %94, !dbg !1685
  %98 = fadd float %92, %95, !dbg !1685
  %99 = fadd float %93, %96, !dbg !1685
  %100 = fmul float %97, %97, !dbg !1688
  %101 = fmul float %98, %98, !dbg !1689
  %102 = fmul float %99, %99, !dbg !1690
  %103 = fadd float %101, %102, !dbg !1689
  %104 = fadd float %103, %100, !dbg !1689
  %105 = call float @llvm.sqrt.f32(float %104), !dbg !1691
  %106 = extractvalue %2 undef, 1, !dbg !1692
  %107 = extractvalue %2 undef, 0, !dbg !1693
  %108 = extractvalue %2 undef, 2, !dbg !1694
  %109 = fmul float %20, %73, !dbg !1690
  %110 = fmul float %16, %72, !dbg !1689
  %111 = fmul float %21, %74, !dbg !1688
  %112 = fadd float %110, %109, !dbg !1689
  %113 = fadd float %112, %111, !dbg !1689
  %is_entering = fcmp ole float %113, 0.000000e+00, !dbg !1695
  %neg.is_entering = xor i1 %is_entering, true, !dbg !1696
  br label %expr_false7

expr_false7:                                      ; preds = %lambda_1042651_start
  %114 = fsub float -0.000000e+00, %72, !dbg !1697
  %115 = fsub float -0.000000e+00, %73, !dbg !1697
  %116 = fsub float -0.000000e+00, %74, !dbg !1697
  br label %if_join.s, !dbg !1698

if_join.s:                                        ; preds = %expr_false7
  %.R113.b = select i1 %is_entering, float %72, float %114
  %.R117.b = select i1 %is_entering, float %73, float %115
  %.R121.b = select i1 %is_entering, float %74, float %116
  br label %if_join

if_join:                                          ; preds = %if_join.s
  %117 = or i1 %is_entering, %neg.is_entering, !dbg !1699
  %118 = fdiv float 1.000000e+00, %105, !dbg !1699
  %119 = fmul float %98, %118, !dbg !1700
  %120 = fmul float %99, %118, !dbg !1700
  %121 = fmul float %97, %118, !dbg !1700
  %122 = fmul float %16, %119, !dbg !1689
  %123 = fmul float %20, %120, !dbg !1690
  %124 = fmul float %21, %121, !dbg !1688
  %125 = fadd float %122, %123, !dbg !1689
  %126 = fadd float %125, %124, !dbg !1689
  %127 = fcmp ole float %126, 0.000000e+00, !dbg !1701
  %neg. = xor i1 %127, true, !dbg !1702
  %edge_if_join.1 = and i1 %117, %neg., !dbg !1702
  %edge_if_join.0 = and i1 %117, %127, !dbg !1702
  br label %expr_false10

expr_false10:                                     ; preds = %if_join
  %128 = fsub float -0.000000e+00, %121, !dbg !1697
  %129 = fsub float -0.000000e+00, %119, !dbg !1697
  %130 = fsub float -0.000000e+00, %120, !dbg !1697
  br label %expr_true11, !dbg !1703

expr_true11:                                      ; preds = %expr_false10
  br label %if_join12.s, !dbg !1703

if_join12.s:                                      ; preds = %expr_true11
  %.R124.b = select i1 %edge_if_join.1, float %129, float %119
  %.R128.b = select i1 %edge_if_join.1, float %130, float %120
  %.R132.b = select i1 %edge_if_join.1, float %128, float %121
  br label %if_join12

if_join12:                                        ; preds = %if_join12.s
  %131 = or i1 %edge_if_join.0, %edge_if_join.1, !dbg !1692
  %132 = extractvalue %2 undef, 1, !dbg !1692
  %133 = extractvalue %2 undef, 1, !dbg !1704
  %134 = extractvalue %2 undef, 2, !dbg !1705
  %135 = extractvalue %2 undef, 2, !dbg !1694
  %136 = extractvalue %2 undef, 0, !dbg !1693
  %137 = extractvalue %2 undef, 0, !dbg !1706
  %138 = fmul float %.R128.b, %23, !dbg !1690
  %139 = fmul float %.R132.b, %26, !dbg !1688
  %140 = fmul float %.R124.b, %18, !dbg !1689
  %141 = fadd float %140, %138, !dbg !1689
  %142 = fadd float %141, %139, !dbg !1689
  %143 = fmul float 2.000000e+00, %142, !dbg !1707
  %144 = icmp eq i32 %61, 0, !dbg !1708
  %145 = fmul float %.R132.b, %143, !dbg !1700
  %146 = fmul float %.R124.b, %143, !dbg !1700
  %147 = fmul float %.R128.b, %143, !dbg !1700
  %148 = select i1 %144, i32 1, i32 %61, !dbg !1709
  %149 = fsub float %145, %26, !dbg !1710
  %150 = fsub float %146, %18, !dbg !1710
  %151 = fsub float %147, %23, !dbg !1710
  %152 = shl i32 %148, 13, !dbg !1711
  %153 = xor i32 %148, %152, !dbg !1712
  %154 = lshr i32 %153, 17, !dbg !1713
  %155 = xor i32 %153, %154, !dbg !1714
  %156 = shl i32 %155, 5, !dbg !1715
  %157 = xor i32 %155, %156, !dbg !1716
  %158 = icmp eq i32 %157, 0, !dbg !1708
  %159 = select i1 %158, i32 1, i32 %157, !dbg !1709
  %160 = and i32 8388607, %157, !dbg !1717
  %161 = shl i32 %159, 13, !dbg !1711
  %162 = or i32 1065353216, %160, !dbg !1718
  %163 = xor i32 %159, %161, !dbg !1712
  %164 = bitcast i32 %162 to float, !dbg !1719
  %165 = lshr i32 %163, 17, !dbg !1713
  %166 = fsub float %164, 1.000000e+00, !dbg !1719
  %167 = xor i32 %163, %165, !dbg !1714
  %168 = fcmp ole float 5.000000e-01, %166, !dbg !1720
  %169 = shl i32 %167, 5, !dbg !1715
  %170 = xor i32 %167, %169, !dbg !1716
  %171 = icmp eq i32 %170, 0, !dbg !1708
  %172 = select i1 %171, i32 1, i32 %170, !dbg !1709
  %173 = shl i32 %172, 13, !dbg !1711
  %174 = and i32 8388607, %170, !dbg !1717
  %175 = xor i32 %172, %173, !dbg !1712
  %176 = or i32 1065353216, %174, !dbg !1718
  %177 = lshr i32 %175, 17, !dbg !1713
  %178 = bitcast i32 %176 to float, !dbg !1719
  %179 = xor i32 %175, %177, !dbg !1714
  %180 = fsub float %178, 1.000000e+00, !dbg !1719
  %181 = shl i32 %179, 5, !dbg !1715
  %phi = fmul float 0x401921FB60000000, %180, !dbg !1721
  %182 = xor i32 %179, %181, !dbg !1716
  %183 = and i32 8388607, %182, !dbg !1717
  %184 = or i32 1065353216, %183, !dbg !1718
  %185 = bitcast i32 %184 to float, !dbg !1719
  %186 = fsub float %185, 1.000000e+00, !dbg !1719
  %neg.105 = xor i1 %168, true, !dbg !1722
  %edge_if_join12.1 = and i1 %131, %neg.105, !dbg !1722
  %edge_if_join12.0 = and i1 %131, %168, !dbg !1722
  br label %expr_false14

expr_false14:                                     ; preds = %if_join12
  %187 = bitcast float %186 to i32, !dbg !1723
  %188 = uitofp i32 %187 to float, !dbg !1724
  %189 = and i32 8388607, %187, !dbg !1725
  %y = fmul float 0x3E80000000000000, %188, !dbg !1726
  %mx = or i32 1056964608, %189, !dbg !1727
  %190 = fsub float %y, 0x405F0E6EE0000000, !dbg !1728
  %191 = bitcast i32 %mx to float, !dbg !1729
  %192 = fmul float 0x3FF7F7EEA0000000, %191, !dbg !1730
  %193 = fadd float 0x3FD6889F20000000, %191, !dbg !1731
  %194 = fsub float %190, %192, !dbg !1728
  %195 = fdiv float 0x3FFB9D3460000000, %193, !dbg !1732
  %196 = fsub float %194, %195, !dbg !1728
  %197 = fmul float 0x3F851D07E0000000, %196, !dbg !1733
  %198 = fcmp olt float %197, -1.260000e+02, !dbg !1734
  %199 = fcmp olt float %197, 0.000000e+00, !dbg !1735
  %200 = select i1 %198, float -1.260000e+02, float %197, !dbg !1736
  %201 = select i1 %199, float 1.000000e+00, float 0.000000e+00, !dbg !1737
  %202 = fadd float 0x405E518A20000000, %200, !dbg !1738
  %203 = fptosi float %200 to i32, !dbg !1739
  %204 = sitofp i32 %203 to float, !dbg !1740
  %205 = fsub float %200, %204, !dbg !1741
  %z = fadd float %205, %201, !dbg !1741
  %206 = fmul float 0x3FF7D791A0000000, %z, !dbg !1742
  %207 = fsub float 0x40135EBF00000000, %z, !dbg !1743
  %208 = fdiv float 0x403BBA5FC0000000, %207, !dbg !1744
  %209 = fadd float %202, %208, !dbg !1738
  %210 = fsub float %209, %206, !dbg !1738
  %211 = fmul float 0x4160000000000000, %210, !dbg !1745
  %212 = fptosi float %211 to i32, !dbg !1746
  %213 = bitcast i32 %212 to float, !dbg !1747
  %214 = call float @llvm.minnum.f32(float %213, float 1.000000e+00), !dbg !1748
  %215 = fmul float %214, %214, !dbg !1749
  %216 = fsub float 1.000000e+00, %215, !dbg !1750
  %217 = call float @llvm.sqrt.f32(float %216), !dbg !1751
  %218 = call float @llvm.cos.f32(float %phi), !dbg !1752
  %219 = call float @llvm.sin.f32(float %phi), !dbg !1753
  %y78 = fmul float %217, %219, !dbg !1754
  %220 = fmul float %151, %214, !dbg !1688
  %221 = fcmp ole float 0.000000e+00, %149, !dbg !1705
  %222 = fmul float %151, %151, !dbg !1755
  %223 = fmul float %150, %151, !dbg !1706
  %224 = fsub float -0.000000e+00, %151, !dbg !1756
  %x = fmul float %217, %218, !dbg !1757
  %225 = fmul float %149, %214, !dbg !1688
  %226 = fmul float %150, %214, !dbg !1688
  %227 = fmul float %224, %y78, !dbg !1690
  %228 = select i1 %221, float 1.000000e+00, float -1.000000e+00, !dbg !1758
  %229 = fadd float %228, %149, !dbg !1759
  %230 = fmul float %228, %150, !dbg !1760
  %231 = fsub float -0.000000e+00, %228, !dbg !1761
  %a = fdiv float -1.000000e+00, %229, !dbg !1762
  %232 = fmul float %230, %150, !dbg !1760
  %233 = fmul float %231, %150, !dbg !1761
  %b = fmul float %223, %a, !dbg !1706
  %234 = fmul float %232, %a, !dbg !1760
  %235 = fmul float %222, %a, !dbg !1755
  %236 = fmul float %233, %x, !dbg !1689
  %237 = fmul float %b, %y78, !dbg !1690
  %238 = fmul float %228, %b, !dbg !1763
  %239 = fadd float 1.000000e+00, %234, !dbg !1764
  %240 = fadd float %228, %235, !dbg !1765
  %241 = fadd float %236, %227, !dbg !1689
  %242 = fmul float %238, %x, !dbg !1689
  %243 = fmul float %239, %x, !dbg !1689
  %244 = fmul float %240, %y78, !dbg !1690
  %245 = fadd float %241, %225, !dbg !1689
  %246 = fadd float %242, %244, !dbg !1689
  %247 = fadd float %243, %237, !dbg !1689
  %248 = fmul float %245, %.R132.b, !dbg !1688
  %249 = fadd float %246, %220, !dbg !1689
  %250 = fadd float %247, %226, !dbg !1689
  %251 = fmul float %249, %.R128.b, !dbg !1690
  %252 = fmul float %250, %.R124.b, !dbg !1689
  %253 = fadd float %252, %251, !dbg !1689
  %254 = fadd float %253, %248, !dbg !1689
  %255 = fcmp ole float 0.000000e+00, %254, !dbg !1766
  %cos = select i1 %255, float %254, float 0.000000e+00, !dbg !1767
  %256 = fdiv float %186, %214, !dbg !1768
  %257 = fcmp une float %214, 0.000000e+00, !dbg !1769
  %258 = select i1 %257, float %256, float 0.000000e+00, !dbg !1770
  %259 = fmul float 9.700000e+01, %258, !dbg !1771
  %pdf = fmul float 0x3FC45F3060000000, %259, !dbg !1771
  %260 = fcmp olt float 0.000000e+00, %pdf, !dbg !1772
  %edge_expr_false14.0 = and i1 %edge_if_join12.1, %260, !dbg !1773
  %neg.106 = xor i1 %260, true, !dbg !1773
  %edge_expr_false14.1 = and i1 %edge_if_join12.1, %neg.106, !dbg !1773
  br label %expr_true21

expr_true21:                                      ; preds = %expr_false14
  %261 = fmul float %250, %.R113.b, !dbg !1689
  %262 = fmul float %249, %.R117.b, !dbg !1690
  %263 = fmul float %245, %.R121.b, !dbg !1688
  %264 = fadd float %261, %262, !dbg !1689
  %265 = fadd float %264, %263, !dbg !1689
  %266 = fcmp olt float 0.000000e+00, %265, !dbg !1774
  %edge_expr_true21.0 = and i1 %edge_expr_false14.0, %266, !dbg !1775
  %neg.107 = xor i1 %266, true, !dbg !1775
  %edge_expr_true21.1 = and i1 %edge_expr_false14.0, %neg.107, !dbg !1775
  br label %expr_true23

expr_true23:                                      ; preds = %expr_true21
  br label %infix_result.s, !dbg !1776

infix_result.s:                                   ; preds = %expr_true23
  br label %infix_result

infix_result:                                     ; preds = %infix_result.s
  %267 = or i1 %edge_expr_false14.1, %edge_expr_true21.1, !dbg !1777
  %268 = or i1 %267, %edge_expr_true21.0, !dbg !1777
  %pdf. = select i1 %edge_expr_true21.0, float %pdf, float 1.000000e+00, !dbg !1777
  %edge_infix_result.0 = and i1 %268, %edge_expr_true21.0, !dbg !1655
  %neg.valid = xor i1 %edge_expr_true21.0, true, !dbg !1655
  %edge_infix_result.1 = and i1 %268, %neg.valid, !dbg !1655
  br label %expr_true29

expr_true29:                                      ; preds = %infix_result
  %269 = fmul float 9.800000e+01, %pdf, !dbg !1778
  %270 = fdiv float %269, 9.700000e+01, !dbg !1778
  %271 = fmul float 0.000000e+00, %270, !dbg !1708
  br label %if_join30.s, !dbg !1779

if_join30.s:                                      ; preds = %expr_true29
  %.b141 = select i1 %edge_infix_result.1, float 0.000000e+00, float %271
  %.b145 = select i1 %edge_infix_result.1, float 0.000000e+00, float %270
  %.b149 = select i1 %edge_infix_result.1, float 0.000000e+00, float %271
  br label %if_join30

if_join30:                                        ; preds = %if_join30.s
  %272 = or i1 %edge_infix_result.1, %edge_infix_result.0, !dbg !1780
  %273 = extractvalue %5 undef, 0, !dbg !1780
  %274 = extractvalue %5 undef, 1, !dbg !1781
  %275 = fmul float 5.000000e-01, %.b145, !dbg !1782
  %276 = fadd float 0x3FC45F3060000000, %275, !dbg !1783
  %277 = fmul float 0x3FD45F3060000000, %cos, !dbg !1784
  %278 = fmul float 5.000000e-01, %.b141, !dbg !1785
  %279 = extractvalue %5 undef, 2, !dbg !1786
  %280 = fmul float 5.000000e-01, %pdf., !dbg !1787
  %281 = fmul float 5.000000e-01, %277, !dbg !1788
  %282 = fadd float 0.000000e+00, %278, !dbg !1789
  %283 = fmul float 5.000000e-01, %.b149, !dbg !1790
  %284 = fadd float %281, %280, !dbg !1788
  %285 = fadd float 0.000000e+00, %283, !dbg !1758
  br label %expr_true35, !dbg !1791

expr_true35:                                      ; preds = %if_join30
  %286 = fsub float 1.000000e+00, %186, !dbg !1792
  %287 = call float @llvm.sqrt.f32(float %286), !dbg !1793
  %288 = call float @llvm.sqrt.f32(float %186), !dbg !1794
  %289 = call float @llvm.cos.f32(float %phi), !dbg !1752
  %290 = call float @llvm.sin.f32(float %phi), !dbg !1753
  %291 = fmul float 0x3FD45F3060000000, %287, !dbg !1784
  %292 = fmul float %.R124.b, %.R128.b, !dbg !1706
  %293 = fmul float %.R128.b, %287, !dbg !1688
  %294 = fcmp olt float 0.000000e+00, %291, !dbg !1772
  %295 = fmul float %.R124.b, %287, !dbg !1688
  %x79 = fmul float %288, %289, !dbg !1757
  %296 = fmul float %.R132.b, %287, !dbg !1688
  %297 = fsub float -0.000000e+00, %.R128.b, !dbg !1756
  %298 = fmul float %.R128.b, %.R128.b, !dbg !1755
  %299 = fcmp ole float 0.000000e+00, %.R132.b, !dbg !1705
  %y80 = fmul float %288, %290, !dbg !1754
  %300 = fmul float %297, %y80, !dbg !1690
  %301 = select i1 %299, float 1.000000e+00, float -1.000000e+00, !dbg !1758
  %302 = fsub float -0.000000e+00, %301, !dbg !1761
  %303 = fmul float %301, %.R124.b, !dbg !1760
  %304 = fadd float %301, %.R132.b, !dbg !1759
  %305 = fmul float %302, %.R124.b, !dbg !1761
  %306 = fmul float %303, %.R124.b, !dbg !1760
  %a81 = fdiv float -1.000000e+00, %304, !dbg !1762
  %307 = fmul float %305, %x79, !dbg !1689
  %308 = fmul float %306, %a81, !dbg !1760
  %b82 = fmul float %292, %a81, !dbg !1706
  %309 = fmul float %298, %a81, !dbg !1755
  %310 = fadd float %307, %300, !dbg !1689
  %311 = fadd float 1.000000e+00, %308, !dbg !1764
  %312 = fmul float %b82, %y80, !dbg !1690
  %313 = fmul float %301, %b82, !dbg !1763
  %314 = fadd float %301, %309, !dbg !1765
  %315 = fadd float %310, %296, !dbg !1689
  %316 = fmul float %311, %x79, !dbg !1689
  %317 = fadd float %316, %312, !dbg !1689
  %318 = fmul float %313, %x79, !dbg !1689
  %319 = fmul float %314, %y80, !dbg !1690
  %320 = fadd float %317, %295, !dbg !1689
  %321 = fadd float %318, %319, !dbg !1689
  %322 = fadd float %321, %293, !dbg !1689
  %edge_expr_true35.0 = and i1 %edge_if_join12.0, %294, !dbg !1773
  %neg.109 = xor i1 %294, true, !dbg !1773
  %edge_expr_true35.1 = and i1 %edge_if_join12.0, %neg.109, !dbg !1773
  br label %expr_true43

expr_true43:                                      ; preds = %expr_true35
  %323 = fmul float %320, %.R113.b, !dbg !1689
  %324 = fmul float %315, %.R121.b, !dbg !1688
  %325 = fmul float %322, %.R117.b, !dbg !1690
  %326 = fadd float %323, %325, !dbg !1689
  %327 = fadd float %326, %324, !dbg !1689
  %328 = fcmp olt float 0.000000e+00, %327, !dbg !1774
  %edge_expr_true43.0 = and i1 %edge_expr_true35.0, %328, !dbg !1775
  %neg.110 = xor i1 %328, true, !dbg !1775
  %edge_expr_true43.1 = and i1 %edge_expr_true35.0, %neg.110, !dbg !1775
  br label %expr_true46

expr_true46:                                      ; preds = %expr_true43
  br label %infix_result47.s, !dbg !1776

infix_result47.s:                                 ; preds = %expr_true46
  br label %infix_result47

infix_result47:                                   ; preds = %infix_result47.s
  %329 = or i1 %edge_expr_true35.1, %edge_expr_true43.1, !dbg !1777
  %330 = or i1 %329, %edge_expr_true43.0, !dbg !1777
  %.89 = select i1 %edge_expr_true43.0, float %291, float 1.000000e+00, !dbg !1777
  %if_join56.repl.1 = select i1 %edge_expr_true43.0, float 0x3FD45F3060000000, float 0.000000e+00, !dbg !1655
  %331 = fmul float %315, %149, !dbg !1688
  %332 = fmul float %320, %150, !dbg !1689
  %333 = fmul float %322, %151, !dbg !1690
  %334 = fadd float %332, %333, !dbg !1689
  %335 = fadd float %334, %331, !dbg !1689
  %336 = fcmp ole float 0.000000e+00, %335, !dbg !1766
  %.90 = select i1 %336, float %335, float 0.000000e+00, !dbg !1795
  %337 = bitcast float %.90 to i32, !dbg !1723
  %338 = fmul float 5.000000e-01, %.89, !dbg !1788
  %339 = fmul float 5.000000e-01, %if_join56.repl.1, !dbg !1783
  %340 = fmul float 5.000000e-01, 0.000000e+00, !dbg !1758
  %341 = uitofp i32 %337 to float, !dbg !1724
  %342 = and i32 8388607, %337, !dbg !1725
  %343 = fmul float 5.000000e-01, 0.000000e+00, !dbg !1789
  %y83 = fmul float 0x3E80000000000000, %341, !dbg !1726
  %mx84 = or i32 1056964608, %342, !dbg !1727
  %344 = fsub float %y83, 0x405F0E6EE0000000, !dbg !1728
  %345 = bitcast i32 %mx84 to float, !dbg !1729
  %346 = fmul float 0x3FF7F7EEA0000000, %345, !dbg !1730
  %347 = fadd float 0x3FD6889F20000000, %345, !dbg !1731
  %348 = fsub float %344, %346, !dbg !1728
  %349 = fdiv float 0x3FFB9D3460000000, %347, !dbg !1732
  %350 = fsub float %348, %349, !dbg !1728
  %351 = fmul float 9.600000e+01, %350, !dbg !1733
  %352 = fcmp olt float %351, -1.260000e+02, !dbg !1734
  %353 = fcmp olt float %351, 0.000000e+00, !dbg !1735
  %354 = select i1 %352, float -1.260000e+02, float %351, !dbg !1736
  %355 = select i1 %353, float 1.000000e+00, float 0.000000e+00, !dbg !1737
  %356 = fadd float 0x405E518A20000000, %354, !dbg !1738
  %357 = fptosi float %354 to i32, !dbg !1739
  %358 = sitofp i32 %357 to float, !dbg !1740
  %359 = fsub float %354, %358, !dbg !1741
  %z87 = fadd float %359, %355, !dbg !1741
  %360 = fmul float 0x3FF7D791A0000000, %z87, !dbg !1742
  %361 = fsub float 0x40135EBF00000000, %z87, !dbg !1743
  %362 = fdiv float 0x403BBA5FC0000000, %361, !dbg !1744
  %363 = fadd float %356, %362, !dbg !1738
  %364 = fsub float %363, %360, !dbg !1738
  %365 = fmul float 0x4160000000000000, %364, !dbg !1745
  %366 = fptosi float %365 to i32, !dbg !1746
  %367 = bitcast i32 %366 to float, !dbg !1747
  %368 = fmul float 9.800000e+01, %367, !dbg !1796
  %369 = fmul float 9.700000e+01, %367, !dbg !1797
  %370 = fmul float 0x3FC45F3060000000, %368, !dbg !1796
  %371 = fmul float 0x3FC45F3060000000, %369, !dbg !1797
  %372 = fmul float 0.000000e+00, %370, !dbg !1708
  %373 = fmul float 5.000000e-01, %371, !dbg !1787
  %374 = fmul float 5.000000e-01, %372, !dbg !1785
  %375 = fmul float 5.000000e-01, %370, !dbg !1782
  %376 = fadd float %338, %373, !dbg !1788
  %377 = fadd float %343, %374, !dbg !1789
  %378 = fadd float %340, %374, !dbg !1758
  %379 = fadd float %339, %375, !dbg !1783
  br label %if_join65.s, !dbg !1791

if_join65.s:                                      ; preds = %infix_result47
  %.not = xor i1 %272, true
  %.b163203 = and i1 %.not, %330
  %.R167.b = select i1 %272, float %250, float %320
  %.R171.b = select i1 %272, float %249, float %322
  %.R175.b = select i1 %272, float %245, float %315
  %pdf..R.b = select i1 %272, float %pdf., float %.89
  %cos.R.b = select i1 %272, float %cos, float %287
  %.b141.R.b = select i1 %272, float %.b141, float 0.000000e+00
  %.b145.R.b = select i1 %272, float %.b145, float %if_join56.repl.1
  %.b149.R.b = select i1 %272, float %.b149, float 0.000000e+00
  %.R190.b = select i1 %272, float %284, float %376
  %.R194.b = select i1 %272, float %282, float %377
  %.R198.b = select i1 %272, float %276, float %379
  %.R202.b = select i1 %272, float %285, float %378
  br label %if_join65

if_join65:                                        ; preds = %if_join65.s
  %380 = or i1 %.b163203, %272, !dbg !1798
  %.fca.0.insert = insertvalue %5 undef, float %62, 0, !dbg !1798
  %.fca.1.insert = insertvalue %5 %.fca.0.insert, float %63, 1, !dbg !1798
  %.fca.2.insert = insertvalue %5 %.fca.1.insert, float %64, 2, !dbg !1798
  %381 = fcmp olt float 0.000000e+00, %.R171.b, !dbg !1662
  %382 = fsub float -0.000000e+00, %.R171.b, !dbg !1663
  %383 = select i1 %381, float %.R171.b, float %382, !dbg !1664
  %384 = fsub float -0.000000e+00, %.R175.b, !dbg !1663
  %385 = fcmp olt float 0.000000e+00, %.R175.b, !dbg !1662
  %386 = select i1 %385, float %.R175.b, float %384, !dbg !1664
  %387 = extractvalue %0 %_1042656, 10, !dbg !1799
  %388 = fdiv float 1.000000e+00, %.R190.b, !dbg !1800
  %389 = fdiv float %cos.R.b, %.R190.b, !dbg !1801
  %390 = extractvalue %1 %_1042655, 3, !dbg !1802
  %391 = getelementptr inbounds [0 x float], [0 x float]* %390, i64 0, i32 %5, !dbg !1802
  %392 = extractvalue %0 %_1042656, 6, !dbg !1803
  %393 = getelementptr inbounds [0 x float], [0 x float]* %387, i64 0, i32 %5, !dbg !1799
  %394 = extractvalue %1 %_1042655, 4, !dbg !1804
  %395 = extractvalue %1 %_1042655, 1, !dbg !1805
  %396 = extractvalue %1 %_1042655, 8, !dbg !1806
  %397 = fmul float %20, %46, !dbg !1700
  %398 = fmul float %62, %.R194.b, !dbg !1807
  %399 = extractvalue %0 %_1042656, 11, !dbg !1808
  %400 = extractvalue %1 %_1042655, 2, !dbg !1809
  %401 = extractvalue %0 %_1042656, 9, !dbg !1810
  %402 = fmul float %16, %46, !dbg !1700
  %403 = extractvalue %1 %_1042655, 7, !dbg !1811
  %404 = extractvalue %0 %_1042656, 8, !dbg !1812
  %405 = extractvalue %0 %_1042656, 7, !dbg !1813
  %406 = extractvalue %1 %_1042655, 6, !dbg !1814
  %407 = extractvalue %1 %_1042655, 5, !dbg !1815
  %408 = getelementptr inbounds [0 x float], [0 x float]* %401, i64 0, i32 %5, !dbg !1810
  %409 = fadd float %14, %397, !dbg !1816
  %410 = getelementptr inbounds [0 x float], [0 x float]* %404, i64 0, i32 %5, !dbg !1812
  %411 = fadd float %11, %402, !dbg !1816
  %412 = fmul float %398, %389, !dbg !1708
  %413 = getelementptr inbounds [0 x i32], [0 x i32]* %392, i64 0, i32 %5, !dbg !1803
  %414 = getelementptr inbounds [0 x float], [0 x float]* %394, i64 0, i32 %5, !dbg !1804
  %415 = getelementptr inbounds [0 x float], [0 x float]* %395, i64 0, i32 %5, !dbg !1805
  %416 = fmul float %21, %46, !dbg !1700
  %417 = getelementptr inbounds [0 x float], [0 x float]* %396, i64 0, i32 %5, !dbg !1806
  %418 = getelementptr inbounds [0 x i32], [0 x i32]* %399, i64 0, i32 %5, !dbg !1808
  %419 = getelementptr inbounds [0 x float], [0 x float]* %400, i64 0, i32 %5, !dbg !1809
  %420 = fmul float %63, %.R198.b, !dbg !1817
  %421 = getelementptr inbounds [0 x float], [0 x float]* %403, i64 0, i32 %5, !dbg !1811
  %422 = getelementptr inbounds [0 x float], [0 x float]* %405, i64 0, i32 %5, !dbg !1813
  %423 = getelementptr inbounds [0 x float], [0 x float]* %406, i64 0, i32 %5, !dbg !1814
  %424 = getelementptr inbounds [0 x float], [0 x float]* %407, i64 0, i32 %5, !dbg !1815
  %425 = fmul float %64, %.R202.b, !dbg !1818
  store float %411, float* %415, align 4, !dbg !1805
  %426 = fadd float %15, %416, !dbg !1816
  store float %409, float* %419, align 4, !dbg !1809
  %427 = fmul float %420, %389, !dbg !1819
  %428 = add nsw i32 1, %66, !dbg !1820
  %429 = fmul float %425, %389, !dbg !1821
  store float %426, float* %391, align 4, !dbg !1802
  store float %.R167.b, float* %414, align 4, !dbg !1804
  store float %.R171.b, float* %424, align 4, !dbg !1815
  store float %.R175.b, float* %423, align 4, !dbg !1814
  store float 0x3F1A36E2E0000000, float* %421, align 4, !dbg !1811
  store float 0x47EFFFFFE0000000, float* %417, align 4, !dbg !1806
  store i32 %182, i32* %413, align 4, !dbg !1803
  store float %412, float* %410, align 4, !dbg !1812
  store float %427, float* %408, align 4, !dbg !1810
  store float %429, float* %393, align 4, !dbg !1799
  store float %388, float* %422, align 4, !dbg !1813
  store i32 %428, i32* %418, align 4, !dbg !1808
  ret void, !dbg !1822
}

; Function Attrs: nounwind readnone speculatable willreturn
declare <8 x float> @llvm.sqrt.v8f32(<8 x float>) #2

; Function Attrs: nounwind readonly willreturn
declare <8 x i32> @llvm.masked.gather.v8i32.v8p0i32(<8 x i32*>, i32 immarg, <8 x i1>, <8 x i32>) #3

; Function Attrs: nounwind readonly willreturn
declare <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*>, i32 immarg, <8 x i1>, <8 x float>) #3

; Function Attrs: norecurse nounwind readnone uwtable
define dso_local <8 x float> @xfloorf_avx2(<8 x float> %0) local_unnamed_addr #4 {
  %2 = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %0) #8
  %3 = sitofp <8 x i32> %2 to <8 x float>
  %4 = fsub contract <8 x float> %0, %3
  %5 = fcmp olt <8 x float> %4, zeroinitializer
  %6 = fadd contract <8 x float> %4, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %7 = select <8 x i1> %5, <8 x float> %6, <8 x float> %4
  %8 = bitcast <8 x float> %0 to <4 x i64>
  %9 = and <4 x i64> %8, <i64 9223372034707292159, i64 9223372034707292159, i64 9223372034707292159, i64 9223372034707292159>
  %10 = bitcast <4 x i64> %9 to <8 x float>
  %11 = fcmp oeq <8 x float> %10, <float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000>
  %12 = fcmp oge <8 x float> %10, <float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000, float 0x4160000000000000>
  %13 = or <8 x i1> %12, %11
  %14 = fsub contract <8 x float> %0, %7
  %15 = bitcast <8 x float> %14 to <4 x i64>
  %16 = and <4 x i64> %15, <i64 9223372034707292159, i64 9223372034707292159, i64 9223372034707292159, i64 9223372034707292159>
  %17 = and <4 x i64> %8, <i64 -9223372034707292160, i64 -9223372034707292160, i64 -9223372034707292160, i64 -9223372034707292160>
  %18 = or <4 x i64> %16, %17
  %19 = bitcast <4 x i64> %18 to <8 x float>
  %20 = select <8 x i1> %13, <8 x float> %0, <8 x float> %19
  ret <8 x float> %20
}

; Function Attrs: nounwind readnone
declare <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float>) #5

; Function Attrs: norecurse nounwind readnone uwtable
define dso_local <8 x float> @xfminf_avx2(<8 x float> %0, <8 x float> %1) local_unnamed_addr #4 {
  %3 = fcmp uno <8 x float> %1, zeroinitializer
  %4 = tail call <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %0, <8 x float> %1) #8
  %5 = select <8 x i1> %3, <8 x float> %0, <8 x float> %4
  ret <8 x float> %5
}

; Function Attrs: nounwind readnone
declare <8 x float> @llvm.x86.avx.min.ps.256(<8 x float>, <8 x float>) #5

; Function Attrs: norecurse nounwind readnone uwtable
define dso_local <8 x float> @xcosf_u1_avx2(<8 x float> %0) local_unnamed_addr #4 {
  %2 = bitcast <8 x float> %0 to <4 x i64>
  %3 = and <4 x i64> %2, <i64 9223372034707292159, i64 9223372034707292159, i64 9223372034707292159, i64 9223372034707292159>
  %4 = bitcast <4 x i64> %3 to <8 x float>
  %5 = fcmp olt <8 x float> %4, <float 1.250000e+02, float 1.250000e+02, float 1.250000e+02, float 1.250000e+02, float 1.250000e+02, float 1.250000e+02, float 1.250000e+02, float 1.250000e+02>
  %6 = sext <8 x i1> %5 to <8 x i32>
  %7 = shufflevector <8 x i32> %6, <8 x i32> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %8 = shufflevector <8 x i32> %6, <8 x i32> undef, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %9 = and <4 x i32> %8, %7
  %10 = bitcast <4 x i32> %9 to <2 x i64>
  %11 = tail call i32 @llvm.x86.sse41.ptestc(<2 x i64> %10, <2 x i64> <i64 -1, i64 -1>) #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %41, label %13

13:                                               ; preds = %1
  %14 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %0, <8 x float> <float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000>, <8 x float> <float -5.000000e-01, float -5.000000e-01, float -5.000000e-01, float -5.000000e-01, float -5.000000e-01, float -5.000000e-01, float -5.000000e-01, float -5.000000e-01>) #8
  %15 = tail call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %14, i32 8) #8
  %16 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %15, <8 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>) #8
  %17 = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> %16) #8
  %18 = fmul contract <8 x float> %16, <float 0xBFF921C000000000, float 0xBFF921C000000000, float 0xBFF921C000000000, float 0xBFF921C000000000, float 0xBFF921C000000000, float 0xBFF921C000000000, float 0xBFF921C000000000, float 0xBFF921C000000000>
  %19 = fadd contract <8 x float> %18, %0
  %20 = fsub contract <8 x float> %19, %0
  %21 = fsub contract <8 x float> %19, %20
  %22 = fsub contract <8 x float> %0, %21
  %23 = fsub contract <8 x float> %18, %20
  %24 = fadd contract <8 x float> %23, %22
  %25 = fmul contract <8 x float> %16, <float 0xBF0DAA0000000000, float 0xBF0DAA0000000000, float 0xBF0DAA0000000000, float 0xBF0DAA0000000000, float 0xBF0DAA0000000000, float 0xBF0DAA0000000000, float 0xBF0DAA0000000000, float 0xBF0DAA0000000000>
  %26 = fadd contract <8 x float> %25, %19
  %27 = fsub contract <8 x float> %26, %19
  %28 = fsub contract <8 x float> %26, %27
  %29 = fsub contract <8 x float> %19, %28
  %30 = fsub contract <8 x float> %25, %27
  %31 = fadd contract <8 x float> %30, %29
  %32 = fadd contract <8 x float> %24, %31
  %33 = fmul contract <8 x float> %16, <float 0xBE110B4620000000, float 0xBE110B4620000000, float 0xBE110B4620000000, float 0xBE110B4620000000, float 0xBE110B4620000000, float 0xBE110B4620000000, float 0xBE110B4620000000, float 0xBE110B4620000000>
  %34 = fadd contract <8 x float> %33, %26
  %35 = fsub contract <8 x float> %34, %26
  %36 = fsub contract <8 x float> %34, %35
  %37 = fsub contract <8 x float> %26, %36
  %38 = fsub contract <8 x float> %33, %35
  %39 = fadd contract <8 x float> %38, %37
  %40 = fadd contract <8 x float> %39, %32
  br label %138

41:                                               ; preds = %1
  %42 = fmul contract <8 x float> %0, <float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000>
  %43 = fneg <8 x float> %42
  %44 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %0, <8 x float> <float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000>, <8 x float> %43) #8
  %45 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %0, <8 x float> <float 0x3E4B939100000000, float 0x3E4B939100000000, float 0x3E4B939100000000, float 0x3E4B939100000000, float 0x3E4B939100000000, float 0x3E4B939100000000, float 0x3E4B939100000000, float 0x3E4B939100000000>, <8 x float> %44) #8
  %46 = fadd contract <8 x float> %42, <float -5.000000e-01, float -5.000000e-01, float -5.000000e-01, float -5.000000e-01, float -5.000000e-01, float -5.000000e-01, float -5.000000e-01, float -5.000000e-01>
  %47 = fsub contract <8 x float> %46, %42
  %48 = fsub contract <8 x float> %46, %47
  %49 = fsub contract <8 x float> %42, %48
  %50 = fsub contract <8 x float> <float -5.000000e-01, float -5.000000e-01, float -5.000000e-01, float -5.000000e-01, float -5.000000e-01, float -5.000000e-01, float -5.000000e-01, float -5.000000e-01>, %47
  %51 = fadd contract <8 x float> %50, %49
  %52 = fadd contract <8 x float> %45, %51
  %53 = fmul contract <8 x float> %46, <float 0x3EF0000000000000, float 0x3EF0000000000000, float 0x3EF0000000000000, float 0x3EF0000000000000, float 0x3EF0000000000000, float 0x3EF0000000000000, float 0x3EF0000000000000, float 0x3EF0000000000000>
  %54 = tail call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %53, i32 8) #8
  %55 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %54, <8 x float> <float -6.553600e+04, float -6.553600e+04, float -6.553600e+04, float -6.553600e+04, float -6.553600e+04, float -6.553600e+04, float -6.553600e+04, float -6.553600e+04>, <8 x float> %46) #8
  %56 = fadd contract <8 x float> %52, %55
  %57 = tail call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %56, i32 8) #8
  %58 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %57, <8 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>) #8
  %59 = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> %58) #8
  %60 = fmul contract <8 x float> %54, <float 1.310720e+05, float 1.310720e+05, float 1.310720e+05, float 1.310720e+05, float 1.310720e+05, float 1.310720e+05, float 1.310720e+05, float 1.310720e+05>
  %61 = fadd contract <8 x float> %60, %58
  %62 = fsub contract <8 x float> %60, %61
  %63 = fadd contract <8 x float> %58, %62
  %64 = fmul contract <8 x float> %61, <float 0xBFF921E000000000, float 0xBFF921E000000000, float 0xBFF921E000000000, float 0xBFF921E000000000, float 0xBFF921E000000000, float 0xBFF921E000000000, float 0xBFF921E000000000, float 0xBFF921E000000000>
  %65 = fneg <8 x float> %64
  %66 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %61, <8 x float> <float 0xBFF921E000000000, float 0xBFF921E000000000, float 0xBFF921E000000000, float 0xBFF921E000000000, float 0xBFF921E000000000, float 0xBFF921E000000000, float 0xBFF921E000000000, float 0xBFF921E000000000>, <8 x float> %65) #8
  %67 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %63, <8 x float> <float 0xBFF921E000000000, float 0xBFF921E000000000, float 0xBFF921E000000000, float 0xBFF921E000000000, float 0xBFF921E000000000, float 0xBFF921E000000000, float 0xBFF921E000000000, float 0xBFF921E000000000>, <8 x float> %66) #8
  %68 = fadd contract <8 x float> %64, %0
  %69 = fsub contract <8 x float> %68, %0
  %70 = fsub contract <8 x float> %68, %69
  %71 = fsub contract <8 x float> %0, %70
  %72 = fsub contract <8 x float> %64, %69
  %73 = fadd contract <8 x float> %72, %71
  %74 = fadd contract <8 x float> %67, %73
  %75 = fadd contract <8 x float> %68, %74
  %76 = fsub contract <8 x float> %68, %75
  %77 = fadd contract <8 x float> %74, %76
  %78 = fmul contract <8 x float> %61, <float 0xBEFB544000000000, float 0xBEFB544000000000, float 0xBEFB544000000000, float 0xBEFB544000000000, float 0xBEFB544000000000, float 0xBEFB544000000000, float 0xBEFB544000000000, float 0xBEFB544000000000>
  %79 = fneg <8 x float> %78
  %80 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %61, <8 x float> <float 0xBEFB544000000000, float 0xBEFB544000000000, float 0xBEFB544000000000, float 0xBEFB544000000000, float 0xBEFB544000000000, float 0xBEFB544000000000, float 0xBEFB544000000000, float 0xBEFB544000000000>, <8 x float> %79) #8
  %81 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %63, <8 x float> <float 0xBEFB544000000000, float 0xBEFB544000000000, float 0xBEFB544000000000, float 0xBEFB544000000000, float 0xBEFB544000000000, float 0xBEFB544000000000, float 0xBEFB544000000000, float 0xBEFB544000000000>, <8 x float> %80) #8
  %82 = fadd contract <8 x float> %78, %75
  %83 = fsub contract <8 x float> %82, %75
  %84 = fsub contract <8 x float> %82, %83
  %85 = fsub contract <8 x float> %75, %84
  %86 = fsub contract <8 x float> %78, %83
  %87 = fadd contract <8 x float> %86, %85
  %88 = fadd contract <8 x float> %81, %77
  %89 = fadd contract <8 x float> %88, %87
  %90 = fadd contract <8 x float> %82, %89
  %91 = fsub contract <8 x float> %82, %90
  %92 = fadd contract <8 x float> %89, %91
  %93 = fmul contract <8 x float> %61, <float 0xBDD0B46000000000, float 0xBDD0B46000000000, float 0xBDD0B46000000000, float 0xBDD0B46000000000, float 0xBDD0B46000000000, float 0xBDD0B46000000000, float 0xBDD0B46000000000, float 0xBDD0B46000000000>
  %94 = fneg <8 x float> %93
  %95 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %61, <8 x float> <float 0xBDD0B46000000000, float 0xBDD0B46000000000, float 0xBDD0B46000000000, float 0xBDD0B46000000000, float 0xBDD0B46000000000, float 0xBDD0B46000000000, float 0xBDD0B46000000000, float 0xBDD0B46000000000>, <8 x float> %94) #8
  %96 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %63, <8 x float> <float 0xBDD0B46000000000, float 0xBDD0B46000000000, float 0xBDD0B46000000000, float 0xBDD0B46000000000, float 0xBDD0B46000000000, float 0xBDD0B46000000000, float 0xBDD0B46000000000, float 0xBDD0B46000000000>, <8 x float> %95) #8
  %97 = fadd contract <8 x float> %93, %90
  %98 = fsub contract <8 x float> %97, %90
  %99 = fsub contract <8 x float> %97, %98
  %100 = fsub contract <8 x float> %90, %99
  %101 = fsub contract <8 x float> %93, %98
  %102 = fadd contract <8 x float> %101, %100
  %103 = fadd contract <8 x float> %96, %92
  %104 = fadd contract <8 x float> %103, %102
  %105 = fadd contract <8 x float> %97, %104
  %106 = fsub contract <8 x float> %97, %105
  %107 = fadd contract <8 x float> %104, %106
  %108 = fmul contract <8 x float> %61, <float 0xBC91A62000000000, float 0xBC91A62000000000, float 0xBC91A62000000000, float 0xBC91A62000000000, float 0xBC91A62000000000, float 0xBC91A62000000000, float 0xBC91A62000000000, float 0xBC91A62000000000>
  %109 = fneg <8 x float> %108
  %110 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %61, <8 x float> <float 0xBC91A62000000000, float 0xBC91A62000000000, float 0xBC91A62000000000, float 0xBC91A62000000000, float 0xBC91A62000000000, float 0xBC91A62000000000, float 0xBC91A62000000000, float 0xBC91A62000000000>, <8 x float> %109) #8
  %111 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %63, <8 x float> <float 0xBC91A62000000000, float 0xBC91A62000000000, float 0xBC91A62000000000, float 0xBC91A62000000000, float 0xBC91A62000000000, float 0xBC91A62000000000, float 0xBC91A62000000000, float 0xBC91A62000000000>, <8 x float> %110) #8
  %112 = fadd contract <8 x float> %108, %105
  %113 = fsub contract <8 x float> %112, %105
  %114 = fsub contract <8 x float> %112, %113
  %115 = fsub contract <8 x float> %105, %114
  %116 = fsub contract <8 x float> %108, %113
  %117 = fadd contract <8 x float> %116, %115
  %118 = fadd contract <8 x float> %111, %107
  %119 = fadd contract <8 x float> %118, %117
  %120 = fadd contract <8 x float> %112, %119
  %121 = fsub contract <8 x float> %112, %120
  %122 = fadd contract <8 x float> %119, %121
  %123 = fmul contract <8 x float> %61, <float 0xBB78CC5180000000, float 0xBB78CC5180000000, float 0xBB78CC5180000000, float 0xBB78CC5180000000, float 0xBB78CC5180000000, float 0xBB78CC5180000000, float 0xBB78CC5180000000, float 0xBB78CC5180000000>
  %124 = fneg <8 x float> %123
  %125 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %61, <8 x float> <float 0xBB78CC5180000000, float 0xBB78CC5180000000, float 0xBB78CC5180000000, float 0xBB78CC5180000000, float 0xBB78CC5180000000, float 0xBB78CC5180000000, float 0xBB78CC5180000000, float 0xBB78CC5180000000>, <8 x float> %124) #8
  %126 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %63, <8 x float> <float 0xBB78CC5180000000, float 0xBB78CC5180000000, float 0xBB78CC5180000000, float 0xBB78CC5180000000, float 0xBB78CC5180000000, float 0xBB78CC5180000000, float 0xBB78CC5180000000, float 0xBB78CC5180000000>, <8 x float> %125) #8
  %127 = fadd contract <8 x float> %123, %120
  %128 = fsub contract <8 x float> %127, %120
  %129 = fsub contract <8 x float> %127, %128
  %130 = fsub contract <8 x float> %120, %129
  %131 = fsub contract <8 x float> %123, %128
  %132 = fadd contract <8 x float> %131, %130
  %133 = fadd contract <8 x float> %126, %122
  %134 = fadd contract <8 x float> %133, %132
  %135 = fadd contract <8 x float> %127, %134
  %136 = fsub contract <8 x float> %127, %135
  %137 = fadd contract <8 x float> %134, %136
  br label %138

138:                                              ; preds = %41, %13
  %139 = phi <8 x float> [ %135, %41 ], [ %34, %13 ]
  %140 = phi <8 x float> [ %137, %41 ], [ %40, %13 ]
  %141 = phi <8 x i32> [ %59, %41 ], [ %17, %13 ]
  %142 = fmul contract <8 x float> %139, %139
  %143 = fadd contract <8 x float> %139, %139
  %144 = fneg <8 x float> %142
  %145 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %139, <8 x float> %139, <8 x float> %144) #8
  %146 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %143, <8 x float> %140, <8 x float> %145) #8
  %147 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %142, <8 x float> <float 0x3EC5E150E0000000, float 0x3EC5E150E0000000, float 0x3EC5E150E0000000, float 0x3EC5E150E0000000, float 0x3EC5E150E0000000, float 0x3EC5E150E0000000, float 0x3EC5E150E0000000, float 0x3EC5E150E0000000>, <8 x float> <float 0xBF29F75D60000000, float 0xBF29F75D60000000, float 0xBF29F75D60000000, float 0xBF29F75D60000000, float 0xBF29F75D60000000, float 0xBF29F75D60000000, float 0xBF29F75D60000000, float 0xBF29F75D60000000>) #8
  %148 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %147, <8 x float> %142, <8 x float> <float 0x3F8110EEE0000000, float 0x3F8110EEE0000000, float 0x3F8110EEE0000000, float 0x3F8110EEE0000000, float 0x3F8110EEE0000000, float 0x3F8110EEE0000000, float 0x3F8110EEE0000000, float 0x3F8110EEE0000000>) #8
  %149 = fmul contract <8 x float> %142, %148
  %150 = fadd contract <8 x float> %149, <float 0xBFC55554C0000000, float 0xBFC55554C0000000, float 0xBFC55554C0000000, float 0xBFC55554C0000000, float 0xBFC55554C0000000, float 0xBFC55554C0000000, float 0xBFC55554C0000000, float 0xBFC55554C0000000>
  %151 = fsub contract <8 x float> <float 0xBFC55554C0000000, float 0xBFC55554C0000000, float 0xBFC55554C0000000, float 0xBFC55554C0000000, float 0xBFC55554C0000000, float 0xBFC55554C0000000, float 0xBFC55554C0000000, float 0xBFC55554C0000000>, %150
  %152 = fadd contract <8 x float> %149, %151
  %153 = fmul contract <8 x float> %142, %150
  %154 = fneg <8 x float> %153
  %155 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %150, <8 x float> %142, <8 x float> %154) #8
  %156 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %152, <8 x float> %142, <8 x float> %155) #8
  %157 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %150, <8 x float> %146, <8 x float> %156) #8
  %158 = fadd contract <8 x float> %153, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %159 = fsub contract <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %158
  %160 = fadd contract <8 x float> %153, %159
  %161 = fadd contract <8 x float> %160, %157
  %162 = fmul contract <8 x float> %139, %161
  %163 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %140, <8 x float> %158, <8 x float> %162) #8
  %164 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %139, <8 x float> %158, <8 x float> %163) #8
  %165 = and <8 x i32> %141, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %166 = icmp eq <8 x i32> %165, zeroinitializer
  %167 = sext <8 x i1> %166 to <8 x i32>
  %168 = bitcast <8 x i32> %167 to <4 x i64>
  %169 = and <4 x i64> %168, <i64 -9223372034707292160, i64 -9223372034707292160, i64 -9223372034707292160, i64 -9223372034707292160>
  %170 = bitcast <8 x float> %164 to <4 x i64>
  %171 = xor <4 x i64> %169, %170
  %172 = fcmp oeq <8 x float> %4, <float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000>
  %173 = sext <8 x i1> %172 to <8 x i32>
  %174 = bitcast <8 x i32> %173 to <4 x i64>
  %175 = fcmp ogt <8 x float> %4, <float 5.000000e+09, float 5.000000e+09, float 5.000000e+09, float 5.000000e+09, float 5.000000e+09, float 5.000000e+09, float 5.000000e+09, float 5.000000e+09>
  %176 = sext <8 x i1> %175 to <8 x i32>
  %177 = bitcast <8 x i32> %176 to <4 x i64>
  %178 = xor <4 x i64> %177, <i64 -1, i64 -1, i64 -1, i64 -1>
  %179 = or <4 x i64> %174, %178
  %180 = and <4 x i64> %171, %179
  %181 = bitcast <4 x i64> %180 to <8 x float>
  ret <8 x float> %181
}

; Function Attrs: nounwind readnone
declare i32 @llvm.x86.sse41.ptestc(<2 x i64>, <2 x i64>) #5

; Function Attrs: nounwind readnone speculatable willreturn
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #0

; Function Attrs: nounwind readnone
declare <8 x float> @llvm.x86.avx.round.ps.256(<8 x float>, i32 immarg) #5

; Function Attrs: nounwind readnone
declare <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float>) #5

; Function Attrs: norecurse nounwind readnone uwtable
define dso_local <8 x float> @xsinf_u1_avx2(<8 x float> %0) local_unnamed_addr #4 {
  %2 = bitcast <8 x float> %0 to <4 x i64>
  %3 = and <4 x i64> %2, <i64 9223372034707292159, i64 9223372034707292159, i64 9223372034707292159, i64 9223372034707292159>
  %4 = bitcast <4 x i64> %3 to <8 x float>
  %5 = fcmp olt <8 x float> %4, <float 1.250000e+02, float 1.250000e+02, float 1.250000e+02, float 1.250000e+02, float 1.250000e+02, float 1.250000e+02, float 1.250000e+02, float 1.250000e+02>
  %6 = sext <8 x i1> %5 to <8 x i32>
  %7 = shufflevector <8 x i32> %6, <8 x i32> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %8 = shufflevector <8 x i32> %6, <8 x i32> undef, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %9 = and <4 x i32> %8, %7
  %10 = bitcast <4 x i32> %9 to <2 x i64>
  %11 = tail call i32 @llvm.x86.sse41.ptestc(<2 x i64> %10, <2 x i64> <i64 -1, i64 -1>) #8
  %12 = icmp eq i32 %11, 0
  %13 = fmul contract <8 x float> %0, <float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000>
  br i1 %12, label %30, label %14

14:                                               ; preds = %1
  %15 = tail call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %13, i32 8) #8
  %16 = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> %15) #8
  %17 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %15, <8 x float> <float 0xC00921C000000000, float 0xC00921C000000000, float 0xC00921C000000000, float 0xC00921C000000000, float 0xC00921C000000000, float 0xC00921C000000000, float 0xC00921C000000000, float 0xC00921C000000000>, <8 x float> %0) #8
  %18 = fmul contract <8 x float> %15, <float 0xBF1DAA0000000000, float 0xBF1DAA0000000000, float 0xBF1DAA0000000000, float 0xBF1DAA0000000000, float 0xBF1DAA0000000000, float 0xBF1DAA0000000000, float 0xBF1DAA0000000000, float 0xBF1DAA0000000000>
  %19 = fadd contract <8 x float> %17, %18
  %20 = fsub contract <8 x float> %19, %17
  %21 = fsub contract <8 x float> %19, %20
  %22 = fsub contract <8 x float> %17, %21
  %23 = fsub contract <8 x float> %18, %20
  %24 = fadd contract <8 x float> %23, %22
  %25 = fmul contract <8 x float> %15, <float 0xBE210B4620000000, float 0xBE210B4620000000, float 0xBE210B4620000000, float 0xBE210B4620000000, float 0xBE210B4620000000, float 0xBE210B4620000000, float 0xBE210B4620000000, float 0xBE210B4620000000>
  %26 = fadd contract <8 x float> %25, %19
  %27 = fsub contract <8 x float> %19, %26
  %28 = fadd contract <8 x float> %25, %27
  %29 = fadd contract <8 x float> %28, %24
  br label %118

30:                                               ; preds = %1
  %31 = fneg <8 x float> %13
  %32 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %0, <8 x float> <float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000, float 0x3FD45F3060000000>, <8 x float> %31) #8
  %33 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %0, <8 x float> <float 0x3E4B939100000000, float 0x3E4B939100000000, float 0x3E4B939100000000, float 0x3E4B939100000000, float 0x3E4B939100000000, float 0x3E4B939100000000, float 0x3E4B939100000000, float 0x3E4B939100000000>, <8 x float> %32) #8
  %34 = fmul contract <8 x float> %13, <float 0x3EF0000000000000, float 0x3EF0000000000000, float 0x3EF0000000000000, float 0x3EF0000000000000, float 0x3EF0000000000000, float 0x3EF0000000000000, float 0x3EF0000000000000, float 0x3EF0000000000000>
  %35 = tail call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %34, i32 8) #8
  %36 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %35, <8 x float> <float -6.553600e+04, float -6.553600e+04, float -6.553600e+04, float -6.553600e+04, float -6.553600e+04, float -6.553600e+04, float -6.553600e+04, float -6.553600e+04>, <8 x float> %13) #8
  %37 = fadd contract <8 x float> %33, %36
  %38 = tail call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %37, i32 8) #8
  %39 = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> %38) #8
  %40 = fmul contract <8 x float> %35, <float 6.553600e+04, float 6.553600e+04, float 6.553600e+04, float 6.553600e+04, float 6.553600e+04, float 6.553600e+04, float 6.553600e+04, float 6.553600e+04>
  %41 = fadd contract <8 x float> %40, %38
  %42 = fsub contract <8 x float> %40, %41
  %43 = fadd contract <8 x float> %38, %42
  %44 = fmul contract <8 x float> %41, <float 0xC00921E000000000, float 0xC00921E000000000, float 0xC00921E000000000, float 0xC00921E000000000, float 0xC00921E000000000, float 0xC00921E000000000, float 0xC00921E000000000, float 0xC00921E000000000>
  %45 = fneg <8 x float> %44
  %46 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %41, <8 x float> <float 0xC00921E000000000, float 0xC00921E000000000, float 0xC00921E000000000, float 0xC00921E000000000, float 0xC00921E000000000, float 0xC00921E000000000, float 0xC00921E000000000, float 0xC00921E000000000>, <8 x float> %45) #8
  %47 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %43, <8 x float> <float 0xC00921E000000000, float 0xC00921E000000000, float 0xC00921E000000000, float 0xC00921E000000000, float 0xC00921E000000000, float 0xC00921E000000000, float 0xC00921E000000000, float 0xC00921E000000000>, <8 x float> %46) #8
  %48 = fadd contract <8 x float> %44, %0
  %49 = fsub contract <8 x float> %48, %0
  %50 = fsub contract <8 x float> %48, %49
  %51 = fsub contract <8 x float> %0, %50
  %52 = fsub contract <8 x float> %44, %49
  %53 = fadd contract <8 x float> %52, %51
  %54 = fadd contract <8 x float> %47, %53
  %55 = fadd contract <8 x float> %48, %54
  %56 = fsub contract <8 x float> %48, %55
  %57 = fadd contract <8 x float> %54, %56
  %58 = fmul contract <8 x float> %41, <float 0xBF0B544000000000, float 0xBF0B544000000000, float 0xBF0B544000000000, float 0xBF0B544000000000, float 0xBF0B544000000000, float 0xBF0B544000000000, float 0xBF0B544000000000, float 0xBF0B544000000000>
  %59 = fneg <8 x float> %58
  %60 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %41, <8 x float> <float 0xBF0B544000000000, float 0xBF0B544000000000, float 0xBF0B544000000000, float 0xBF0B544000000000, float 0xBF0B544000000000, float 0xBF0B544000000000, float 0xBF0B544000000000, float 0xBF0B544000000000>, <8 x float> %59) #8
  %61 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %43, <8 x float> <float 0xBF0B544000000000, float 0xBF0B544000000000, float 0xBF0B544000000000, float 0xBF0B544000000000, float 0xBF0B544000000000, float 0xBF0B544000000000, float 0xBF0B544000000000, float 0xBF0B544000000000>, <8 x float> %60) #8
  %62 = fadd contract <8 x float> %58, %55
  %63 = fsub contract <8 x float> %62, %55
  %64 = fsub contract <8 x float> %62, %63
  %65 = fsub contract <8 x float> %55, %64
  %66 = fsub contract <8 x float> %58, %63
  %67 = fadd contract <8 x float> %66, %65
  %68 = fadd contract <8 x float> %61, %57
  %69 = fadd contract <8 x float> %68, %67
  %70 = fadd contract <8 x float> %62, %69
  %71 = fsub contract <8 x float> %62, %70
  %72 = fadd contract <8 x float> %69, %71
  %73 = fmul contract <8 x float> %41, <float 0xBDE0B46000000000, float 0xBDE0B46000000000, float 0xBDE0B46000000000, float 0xBDE0B46000000000, float 0xBDE0B46000000000, float 0xBDE0B46000000000, float 0xBDE0B46000000000, float 0xBDE0B46000000000>
  %74 = fneg <8 x float> %73
  %75 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %41, <8 x float> <float 0xBDE0B46000000000, float 0xBDE0B46000000000, float 0xBDE0B46000000000, float 0xBDE0B46000000000, float 0xBDE0B46000000000, float 0xBDE0B46000000000, float 0xBDE0B46000000000, float 0xBDE0B46000000000>, <8 x float> %74) #8
  %76 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %43, <8 x float> <float 0xBDE0B46000000000, float 0xBDE0B46000000000, float 0xBDE0B46000000000, float 0xBDE0B46000000000, float 0xBDE0B46000000000, float 0xBDE0B46000000000, float 0xBDE0B46000000000, float 0xBDE0B46000000000>, <8 x float> %75) #8
  %77 = fadd contract <8 x float> %73, %70
  %78 = fsub contract <8 x float> %77, %70
  %79 = fsub contract <8 x float> %77, %78
  %80 = fsub contract <8 x float> %70, %79
  %81 = fsub contract <8 x float> %73, %78
  %82 = fadd contract <8 x float> %81, %80
  %83 = fadd contract <8 x float> %76, %72
  %84 = fadd contract <8 x float> %83, %82
  %85 = fadd contract <8 x float> %77, %84
  %86 = fsub contract <8 x float> %77, %85
  %87 = fadd contract <8 x float> %84, %86
  %88 = fmul contract <8 x float> %41, <float 0xBCA1A62000000000, float 0xBCA1A62000000000, float 0xBCA1A62000000000, float 0xBCA1A62000000000, float 0xBCA1A62000000000, float 0xBCA1A62000000000, float 0xBCA1A62000000000, float 0xBCA1A62000000000>
  %89 = fneg <8 x float> %88
  %90 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %41, <8 x float> <float 0xBCA1A62000000000, float 0xBCA1A62000000000, float 0xBCA1A62000000000, float 0xBCA1A62000000000, float 0xBCA1A62000000000, float 0xBCA1A62000000000, float 0xBCA1A62000000000, float 0xBCA1A62000000000>, <8 x float> %89) #8
  %91 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %43, <8 x float> <float 0xBCA1A62000000000, float 0xBCA1A62000000000, float 0xBCA1A62000000000, float 0xBCA1A62000000000, float 0xBCA1A62000000000, float 0xBCA1A62000000000, float 0xBCA1A62000000000, float 0xBCA1A62000000000>, <8 x float> %90) #8
  %92 = fadd contract <8 x float> %88, %85
  %93 = fsub contract <8 x float> %92, %85
  %94 = fsub contract <8 x float> %92, %93
  %95 = fsub contract <8 x float> %85, %94
  %96 = fsub contract <8 x float> %88, %93
  %97 = fadd contract <8 x float> %96, %95
  %98 = fadd contract <8 x float> %91, %87
  %99 = fadd contract <8 x float> %98, %97
  %100 = fadd contract <8 x float> %92, %99
  %101 = fsub contract <8 x float> %92, %100
  %102 = fadd contract <8 x float> %99, %101
  %103 = fmul contract <8 x float> %41, <float 0xBB88CC5180000000, float 0xBB88CC5180000000, float 0xBB88CC5180000000, float 0xBB88CC5180000000, float 0xBB88CC5180000000, float 0xBB88CC5180000000, float 0xBB88CC5180000000, float 0xBB88CC5180000000>
  %104 = fneg <8 x float> %103
  %105 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %41, <8 x float> <float 0xBB88CC5180000000, float 0xBB88CC5180000000, float 0xBB88CC5180000000, float 0xBB88CC5180000000, float 0xBB88CC5180000000, float 0xBB88CC5180000000, float 0xBB88CC5180000000, float 0xBB88CC5180000000>, <8 x float> %104) #8
  %106 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %43, <8 x float> <float 0xBB88CC5180000000, float 0xBB88CC5180000000, float 0xBB88CC5180000000, float 0xBB88CC5180000000, float 0xBB88CC5180000000, float 0xBB88CC5180000000, float 0xBB88CC5180000000, float 0xBB88CC5180000000>, <8 x float> %105) #8
  %107 = fadd contract <8 x float> %103, %100
  %108 = fsub contract <8 x float> %107, %100
  %109 = fsub contract <8 x float> %107, %108
  %110 = fsub contract <8 x float> %100, %109
  %111 = fsub contract <8 x float> %103, %108
  %112 = fadd contract <8 x float> %111, %110
  %113 = fadd contract <8 x float> %106, %102
  %114 = fadd contract <8 x float> %113, %112
  %115 = fadd contract <8 x float> %107, %114
  %116 = fsub contract <8 x float> %107, %115
  %117 = fadd contract <8 x float> %114, %116
  br label %118

118:                                              ; preds = %30, %14
  %119 = phi <8 x float> [ %115, %30 ], [ %26, %14 ]
  %120 = phi <8 x float> [ %117, %30 ], [ %29, %14 ]
  %121 = phi <8 x i32> [ %39, %30 ], [ %16, %14 ]
  %122 = fmul contract <8 x float> %119, %119
  %123 = fadd contract <8 x float> %119, %119
  %124 = fneg <8 x float> %122
  %125 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %119, <8 x float> %119, <8 x float> %124) #8
  %126 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %123, <8 x float> %120, <8 x float> %125) #8
  %127 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %122, <8 x float> <float 0x3EC5E150E0000000, float 0x3EC5E150E0000000, float 0x3EC5E150E0000000, float 0x3EC5E150E0000000, float 0x3EC5E150E0000000, float 0x3EC5E150E0000000, float 0x3EC5E150E0000000, float 0x3EC5E150E0000000>, <8 x float> <float 0xBF29F75D60000000, float 0xBF29F75D60000000, float 0xBF29F75D60000000, float 0xBF29F75D60000000, float 0xBF29F75D60000000, float 0xBF29F75D60000000, float 0xBF29F75D60000000, float 0xBF29F75D60000000>) #8
  %128 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %127, <8 x float> %122, <8 x float> <float 0x3F8110EEE0000000, float 0x3F8110EEE0000000, float 0x3F8110EEE0000000, float 0x3F8110EEE0000000, float 0x3F8110EEE0000000, float 0x3F8110EEE0000000, float 0x3F8110EEE0000000, float 0x3F8110EEE0000000>) #8
  %129 = fmul contract <8 x float> %122, %128
  %130 = fadd contract <8 x float> %129, <float 0xBFC55554C0000000, float 0xBFC55554C0000000, float 0xBFC55554C0000000, float 0xBFC55554C0000000, float 0xBFC55554C0000000, float 0xBFC55554C0000000, float 0xBFC55554C0000000, float 0xBFC55554C0000000>
  %131 = fsub contract <8 x float> <float 0xBFC55554C0000000, float 0xBFC55554C0000000, float 0xBFC55554C0000000, float 0xBFC55554C0000000, float 0xBFC55554C0000000, float 0xBFC55554C0000000, float 0xBFC55554C0000000, float 0xBFC55554C0000000>, %130
  %132 = fadd contract <8 x float> %129, %131
  %133 = fmul contract <8 x float> %122, %130
  %134 = fneg <8 x float> %133
  %135 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %130, <8 x float> %122, <8 x float> %134) #8
  %136 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %132, <8 x float> %122, <8 x float> %135) #8
  %137 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %130, <8 x float> %126, <8 x float> %136) #8
  %138 = fadd contract <8 x float> %133, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %139 = fsub contract <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %138
  %140 = fadd contract <8 x float> %133, %139
  %141 = fadd contract <8 x float> %140, %137
  %142 = fmul contract <8 x float> %119, %141
  %143 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %120, <8 x float> %138, <8 x float> %142) #8
  %144 = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %119, <8 x float> %138, <8 x float> %143) #8
  %145 = shl <8 x i32> %121, <i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31>
  %146 = ashr exact <8 x i32> %145, <i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31>
  %147 = bitcast <8 x i32> %146 to <4 x i64>
  %148 = and <4 x i64> %147, <i64 -9223372034707292160, i64 -9223372034707292160, i64 -9223372034707292160, i64 -9223372034707292160>
  %149 = bitcast <8 x float> %144 to <4 x i64>
  %150 = xor <4 x i64> %148, %149
  %151 = bitcast <4 x i64> %150 to <8 x float>
  %152 = fcmp oeq <8 x float> %4, <float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000>
  %153 = sext <8 x i1> %152 to <8 x i32>
  %154 = bitcast <8 x i32> %153 to <4 x i64>
  %155 = bitcast <8 x float> %0 to <8 x i32>
  %156 = icmp eq <8 x i32> %155, <i32 -2147483648, i32 -2147483648, i32 -2147483648, i32 -2147483648, i32 -2147483648, i32 -2147483648, i32 -2147483648, i32 -2147483648>
  %157 = fcmp ogt <8 x float> %4, <float 5.000000e+09, float 5.000000e+09, float 5.000000e+09, float 5.000000e+09, float 5.000000e+09, float 5.000000e+09, float 5.000000e+09, float 5.000000e+09>
  %158 = or <8 x i1> %157, %156
  %159 = sext <8 x i1> %158 to <8 x i32>
  %160 = bitcast <8 x i32> %159 to <4 x i64>
  %161 = xor <4 x i64> %154, <i64 -1, i64 -1, i64 -1, i64 -1>
  %162 = and <4 x i64> %160, %161
  %163 = bitcast <4 x i64> %162 to <8 x float>
  %164 = tail call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %151, <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, <8 x float> %163) #8
  ret <8 x float> %164
}

; Function Attrs: nounwind readnone
declare <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float>, <8 x float>, <8 x float>) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.masked.store.v8f32.p0v8f32(<8 x float>, <8 x float>*, i32 immarg, <8 x i1>) #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.masked.store.v8i32.p0v8i32(<8 x i32>, <8 x i32>*, i32 immarg, <8 x i1>) #6

; Function Attrs: nounwind readnone
declare <8 x float> @llvm.x86.avx.cmp.ps.256(<8 x float>, <8 x float>, i8 immarg) #5

; Function Attrs: nounwind readonly
declare <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float>, i8*, <8 x i32>, <8 x float>, i8 immarg) #7

attributes #0 = { nounwind readnone speculatable willreturn }
attributes #1 = { "target-features"="+sse2,+cx16,+sahf,-tbm,-avx512ifma,+sha,-gfni,-fma4,-vpclmulqdq,+prfchw,+bmi2,-cldemote,+fsgsbase,-ptwrite,+xsavec,+popcnt,+aes,-avx512bitalg,-movdiri,+xsaves,-avx512er,-avx512vnni,-avx512vpopcntdq,-pconfig,+clwb,-avx512f,+clzero,-pku,+mmx,-lwp,+rdpid,-xop,+rdseed,-waitpkg,-movdir64b,+sse4a,-avx512bw,+clflushopt,+xsave,-avx512vbmi2,+64bit,-avx512vl,-invpcid,-avx512cd,+avx,-vaes,+cx8,+fma,-rtm,+bmi,-enqcmd,+rdrnd,+mwaitx,+sse4.1,+sse4.2,+avx2,+fxsr,+wbnoinvd,+sse,+lzcnt,+pclmul,-prefetchwt1,+f16c,+ssse3,-sgx,-shstk,+cmov,-avx512vbmi,-avx512bf16,+movbe,+xsaveopt,-avx512dq,+adx,-avx512pf,+sse3," }
attributes #2 = { nounwind readnone speculatable willreturn "target-features"="+sse2,+cx16,+sahf,-tbm,-avx512ifma,+sha,-gfni,-fma4,-vpclmulqdq,+prfchw,+bmi2,-cldemote,+fsgsbase,-ptwrite,+xsavec,+popcnt,+aes,-avx512bitalg,-movdiri,+xsaves,-avx512er,-avx512vnni,-avx512vpopcntdq,-pconfig,+clwb,-avx512f,+clzero,-pku,+mmx,-lwp,+rdpid,-xop,+rdseed,-waitpkg,-movdir64b,+sse4a,-avx512bw,+clflushopt,+xsave,-avx512vbmi2,+64bit,-avx512vl,-invpcid,-avx512cd,+avx,-vaes,+cx8,+fma,-rtm,+bmi,-enqcmd,+rdrnd,+mwaitx,+sse4.1,+sse4.2,+avx2,+fxsr,+wbnoinvd,+sse,+lzcnt,+pclmul,-prefetchwt1,+f16c,+ssse3,-sgx,-shstk,+cmov,-avx512vbmi,-avx512bf16,+movbe,+xsaveopt,-avx512dq,+adx,-avx512pf,+sse3," }
attributes #3 = { nounwind readonly willreturn }
attributes #4 = { norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="256" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+sse2,+cx16,+sahf,-tbm,-avx512ifma,+sha,-gfni,-fma4,-vpclmulqdq,+prfchw,+bmi2,-cldemote,+fsgsbase,-ptwrite,+xsavec,+popcnt,+aes,-avx512bitalg,-movdiri,+xsaves,-avx512er,-avx512vnni,-avx512vpopcntdq,-pconfig,+clwb,-avx512f,+clzero,-pku,+mmx,-lwp,+rdpid,-xop,+rdseed,-waitpkg,-movdir64b,+sse4a,-avx512bw,+clflushopt,+xsave,-avx512vbmi2,+64bit,-avx512vl,-invpcid,-avx512cd,+avx,-vaes,+cx8,+fma,-rtm,+bmi,-enqcmd,+rdrnd,+mwaitx,+sse4.1,+sse4.2,+avx2,+fxsr,+wbnoinvd,+sse,+lzcnt,+pclmul,-prefetchwt1,+f16c,+ssse3,-sgx,-shstk,+cmov,-avx512vbmi,-avx512bf16,+movbe,+xsaveopt,-avx512dq,+adx,-avx512pf,+sse3," "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { argmemonly nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C, file: !2, producer: "Impala", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !3)
!2 = !DIFile(filename: "/home/niklas/repos/anydsl/rodent/build/tools/bench_shading/./bench_shading", directory: "")
!3 = !{}
!4 = distinct !DISubprogram(name: "cpu_sort_primary", linkageName: "cpu_sort_primary", scope: null, file: !5, line: 35, type: !6, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DIFile(filename: "mapping_cpu.impala", directory: "/home/niklas/repos/anydsl/rodent/src/render")
!6 = !DISubroutineType(types: !3)
!7 = !DILocation(line: 35, column: 1, scope: !4)
!8 = !DILocation(line: 39, column: 23, scope: !4)
!9 = !DILocation(line: 1, column: 1, scope: !4)
!10 = !DILocation(line: 88, column: 8, scope: !4)
!11 = !DILocation(line: 88, column: 20, scope: !4)
!12 = !DILocation(line: 42, column: 23, scope: !4)
!13 = !DILocation(line: 43, column: 18, scope: !4)
!14 = !DILocation(line: 46, column: 9, scope: !4)
!15 = !DILocation(line: 73, column: 31, scope: !4)
!16 = !DILocation(line: 81, column: 31, scope: !4)
!17 = !DILocation(line: 79, column: 31, scope: !4)
!18 = !DILocation(line: 78, column: 31, scope: !4)
!19 = !DILocation(line: 62, column: 31, scope: !4)
!20 = !DILocation(line: 75, column: 31, scope: !4)
!21 = !DILocation(line: 64, column: 31, scope: !4)
!22 = !DILocation(line: 74, column: 31, scope: !4)
!23 = !DILocation(line: 80, column: 31, scope: !4)
!24 = !DILocation(line: 77, column: 31, scope: !4)
!25 = !DILocation(line: 65, column: 31, scope: !4)
!26 = !DILocation(line: 76, column: 31, scope: !4)
!27 = !DILocation(line: 69, column: 31, scope: !4)
!28 = !DILocation(line: 68, column: 31, scope: !4)
!29 = !DILocation(line: 70, column: 31, scope: !4)
!30 = !DILocation(line: 82, column: 31, scope: !4)
!31 = !DILocation(line: 63, column: 31, scope: !4)
!32 = !DILocation(line: 67, column: 31, scope: !4)
!33 = !DILocation(line: 66, column: 31, scope: !4)
!34 = !DILocation(line: 90, column: 14, scope: !4)
!35 = !DILocation(line: 90, column: 5, scope: !4)
!36 = !DILocation(line: 91, column: 1, scope: !4)
!37 = !DILocation(line: 55, column: 29, scope: !4)
!38 = !DILocation(line: 55, column: 44, scope: !4)
!39 = !DILocation(line: 56, column: 13, scope: !4)
!40 = !DILocation(line: 57, column: 21, scope: !4)
!41 = !DILocation(line: 57, column: 15, scope: !4)
!42 = !DILocation(line: 90, column: 21, scope: !4)
!43 = !DILocation(line: 90, column: 9, scope: !4)
!44 = !DILocation(line: 58, column: 27, scope: !4)
!45 = !DILocation(line: 58, column: 43, scope: !4)
!46 = !DILocation(line: 59, column: 16, scope: !4)
!47 = !DILocation(line: 59, column: 27, scope: !4)
!48 = !DILocation(line: 84, column: 17, scope: !4)
!49 = !DILocation(line: 85, column: 13, scope: !4)
!50 = !DILocation(line: 60, column: 25, scope: !4)
!51 = !DILocation(line: 62, column: 59, scope: !4)
!52 = !DILocation(line: 62, column: 75, scope: !4)
!53 = !DILocation(line: 145, column: 15, scope: !4)
!54 = !DILocation(line: 146, column: 10, scope: !4)
!55 = !DILocation(line: 146, column: 5, scope: !4)
!56 = !DILocation(line: 147, column: 5, scope: !4)
!57 = !DILocation(line: 63, column: 59, scope: !4)
!58 = !DILocation(line: 63, column: 78, scope: !4)
!59 = !DILocation(line: 139, column: 15, scope: !4)
!60 = !DILocation(line: 140, column: 10, scope: !4)
!61 = !DILocation(line: 140, column: 5, scope: !4)
!62 = !DILocation(line: 141, column: 5, scope: !4)
!63 = !DILocation(line: 64, column: 59, scope: !4)
!64 = !DILocation(line: 64, column: 78, scope: !4)
!65 = !DILocation(line: 65, column: 59, scope: !4)
!66 = !DILocation(line: 65, column: 78, scope: !4)
!67 = !DILocation(line: 66, column: 59, scope: !4)
!68 = !DILocation(line: 66, column: 78, scope: !4)
!69 = !DILocation(line: 67, column: 59, scope: !4)
!70 = !DILocation(line: 67, column: 78, scope: !4)
!71 = !DILocation(line: 68, column: 59, scope: !4)
!72 = !DILocation(line: 68, column: 78, scope: !4)
!73 = !DILocation(line: 69, column: 59, scope: !4)
!74 = !DILocation(line: 69, column: 77, scope: !4)
!75 = !DILocation(line: 70, column: 59, scope: !4)
!76 = !DILocation(line: 70, column: 77, scope: !4)
!77 = !DILocation(line: 72, column: 31, scope: !4)
!78 = !DILocation(line: 72, column: 58, scope: !4)
!79 = !DILocation(line: 72, column: 74, scope: !4)
!80 = !DILocation(line: 73, column: 58, scope: !4)
!81 = !DILocation(line: 73, column: 74, scope: !4)
!82 = !DILocation(line: 74, column: 58, scope: !4)
!83 = !DILocation(line: 74, column: 68, scope: !4)
!84 = !DILocation(line: 75, column: 58, scope: !4)
!85 = !DILocation(line: 75, column: 68, scope: !4)
!86 = !DILocation(line: 76, column: 58, scope: !4)
!87 = !DILocation(line: 76, column: 68, scope: !4)
!88 = !DILocation(line: 77, column: 58, scope: !4)
!89 = !DILocation(line: 77, column: 70, scope: !4)
!90 = !DILocation(line: 151, column: 15, scope: !4)
!91 = !DILocation(line: 152, column: 10, scope: !4)
!92 = !DILocation(line: 152, column: 5, scope: !4)
!93 = !DILocation(line: 153, column: 5, scope: !4)
!94 = !DILocation(line: 78, column: 58, scope: !4)
!95 = !DILocation(line: 78, column: 70, scope: !4)
!96 = !DILocation(line: 79, column: 58, scope: !4)
!97 = !DILocation(line: 79, column: 76, scope: !4)
!98 = !DILocation(line: 80, column: 58, scope: !4)
!99 = !DILocation(line: 80, column: 76, scope: !4)
!100 = !DILocation(line: 81, column: 58, scope: !4)
!101 = !DILocation(line: 81, column: 76, scope: !4)
!102 = !DILocation(line: 82, column: 58, scope: !4)
!103 = !DILocation(line: 82, column: 72, scope: !4)
!104 = !DILocation(line: 86, column: 9, scope: !4)
!105 = !DILocation(line: 48, column: 25, scope: !4)
!106 = !DILocation(line: 48, column: 9, scope: !4)
!107 = !DILocation(line: 49, column: 14, scope: !4)
!108 = !DILocation(line: 49, column: 9, scope: !4)
!109 = !DILocation(line: 50, column: 9, scope: !4)
!110 = !DILocation(line: 43, column: 9, scope: !4)
!111 = !DILocation(line: 40, column: 9, scope: !4)
!112 = distinct !DISubprogram(name: "cpu_bench_shading", linkageName: "cpu_bench_shading", scope: null, file: !113, line: 22, type: !6, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!113 = !DIFile(filename: "bench_shading.impala", directory: "/home/niklas/repos/anydsl/rodent/tools/bench_shading")
!114 = !DILocation(line: 22, column: 1, scope: !112)
!115 = !DILocation(line: 68, column: 37, scope: !112)
!116 = !DILocation(line: 10, column: 50, scope: !112)
!117 = !DILocation(line: 66, column: 24, scope: !112)
!118 = !DILocation(line: 67, column: 37, scope: !112)
!119 = !DILocation(line: 65, column: 24, scope: !112)
!120 = !DILocation(line: 10, column: 33, scope: !112)
!121 = !DILocation(line: 39, column: 54, scope: !112)
!122 = !DILocation(line: 36, column: 54, scope: !112)
!123 = !DILocation(line: 88, column: 47, scope: !112)
!124 = !DILocation(line: 90, column: 48, scope: !112)
!125 = !DILocation(line: 97, column: 17, scope: !112)
!126 = !DILocation(line: 72, column: 23, scope: !112)
!127 = !DILocation(line: 71, column: 23, scope: !112)
!128 = !DILocation(line: 69, column: 23, scope: !112)
!129 = !DILocation(line: 70, column: 23, scope: !112)
!130 = !DILocation(line: 67, column: 23, scope: !112)
!131 = !DILocation(line: 68, column: 23, scope: !112)
!132 = !DILocation(line: 37, column: 62, scope: !112)
!133 = !DILocation(line: 101, column: 23, scope: !112)
!134 = !DILocation(line: 100, column: 23, scope: !112)
!135 = !DILocation(line: 98, column: 13, scope: !112)
!136 = !DILocation(line: 99, column: 13, scope: !112)
!137 = !DILocation(line: 38, column: 64, scope: !112)
!138 = !DILocation(line: 129, column: 55, scope: !112)
!139 = !DILocation(line: 131, column: 22, scope: !112)
!140 = !DILocation(line: 130, column: 22, scope: !112)
!141 = !DILocation(line: 129, column: 77, scope: !112)
!142 = !DILocation(line: 129, column: 33, scope: !112)
!143 = !DILocation(line: 128, column: 22, scope: !112)
!144 = !DILocation(line: 87, column: 9, scope: !112)
!145 = !DILocation(line: 88, column: 9, scope: !112)
!146 = !DILocation(line: 85, column: 9, scope: !112)
!147 = !DILocation(line: 86, column: 9, scope: !112)
!148 = !DILocation(line: 89, column: 9, scope: !112)
!149 = !DILocation(line: 84, column: 9, scope: !112)
!150 = !DILocation(line: 83, column: 9, scope: !112)
!151 = !DILocation(line: 82, column: 9, scope: !112)
!152 = !DILocation(line: 40, column: 64, scope: !112)
!153 = !DILocation(line: 144, column: 9, scope: !112)
!154 = !DILocation(line: 142, column: 9, scope: !112)
!155 = !DILocation(line: 143, column: 9, scope: !112)
!156 = !DILocation(line: 141, column: 9, scope: !112)
!157 = !DILocation(line: 140, column: 9, scope: !112)
!158 = !DILocation(line: 139, column: 9, scope: !112)
!159 = !DILocation(line: 1, column: 1, scope: !112)
!160 = !DILocation(line: 88, column: 8, scope: !112)
!161 = !DILocation(line: 88, column: 20, scope: !112)
!162 = !DILocation(line: 91, column: 5, scope: !112)
!163 = !DILocation(line: 65, column: 32, scope: !112)
!164 = !DILocation(line: 93, column: 6, scope: !112)
!165 = !DILocation(line: 93, column: 5, scope: !112)
!166 = !DILocation(line: 66, column: 32, scope: !112)
!167 = !DILocation(line: 90, column: 21, scope: !112)
!168 = !DILocation(line: 90, column: 9, scope: !112)
!169 = !DILocation(line: 84, column: 28, scope: !112)
!170 = !DILocation(line: 84, column: 15, scope: !112)
!171 = !DILocation(line: 84, column: 8, scope: !112)
!172 = !DILocation(line: 84, column: 40, scope: !112)
!173 = !DILocation(line: 84, column: 83, scope: !112)
!174 = !DILocation(line: 80, column: 1, scope: !112)
!175 = !DILocation(line: 70, column: 29, scope: !112)
!176 = !DILocation(line: 71, column: 38, scope: !112)
!177 = !DILocation(line: 71, column: 78, scope: !112)
!178 = !DILocation(line: 71, column: 58, scope: !112)
!179 = !DILocation(line: 71, column: 30, scope: !112)
!180 = !DILocation(line: 71, column: 70, scope: !112)
!181 = !DILocation(line: 71, column: 50, scope: !112)
!182 = !DILocation(line: 123, column: 6, scope: !112)
!183 = !DILocation(line: 8, column: 5, scope: !112)
!184 = !DILocation(line: 127, column: 9, scope: !112)
!185 = !DILocation(line: 81, column: 17, scope: !112)
!186 = !DILocation(line: 69, column: 29, scope: !112)
!187 = !DILocation(line: 99, column: 18, scope: !112)
!188 = !DILocation(line: 97, column: 18, scope: !112)
!189 = !DILocation(line: 98, column: 18, scope: !112)
!190 = !DILocation(line: 123, column: 5, scope: !112)
!191 = !DILocation(line: 99, column: 23, scope: !112)
!192 = !DILocation(line: 97, column: 23, scope: !112)
!193 = !DILocation(line: 98, column: 23, scope: !112)
!194 = !DILocation(line: 123, column: 28, scope: !112)
!195 = !DILocation(line: 99, column: 28, scope: !112)
!196 = !DILocation(line: 97, column: 28, scope: !112)
!197 = !DILocation(line: 98, column: 28, scope: !112)
!198 = !DILocation(line: 123, column: 37, scope: !112)
!199 = !DILocation(line: 60, column: 65, scope: !112)
!200 = !DILocation(line: 60, column: 41, scope: !112)
!201 = !DILocation(line: 60, column: 53, scope: !112)
!202 = !DILocation(line: 78, column: 50, scope: !112)
!203 = !DILocation(line: 60, column: 71, scope: !112)
!204 = !DILocation(line: 60, column: 47, scope: !112)
!205 = !DILocation(line: 60, column: 59, scope: !112)
!206 = !DILocation(line: 28, column: 31, scope: !112)
!207 = !DILocation(line: 46, column: 43, scope: !112)
!208 = !DILocation(line: 52, column: 49, scope: !112)
!209 = !DILocation(line: 20, column: 49, scope: !112)
!210 = !DILocation(line: 46, column: 90, scope: !112)
!211 = !DILocation(line: 82, column: 70, scope: !112)
!212 = !DILocation(line: 45, column: 64, scope: !112)
!213 = !DILocation(line: 48, column: 57, scope: !112)
!214 = !DILocation(line: 48, column: 89, scope: !112)
!215 = !DILocation(line: 48, column: 126, scope: !112)
!216 = !DILocation(line: 72, column: 53, scope: !112)
!217 = !DILocation(line: 24, column: 60, scope: !112)
!218 = !DILocation(line: 49, column: 34, scope: !112)
!219 = !DILocation(line: 24, column: 65, scope: !112)
!220 = !DILocation(line: 49, column: 30, scope: !112)
!221 = !DILocation(line: 65, column: 17, scope: !112)
!222 = !DILocation(line: 67, column: 27, scope: !112)
!223 = !DILocation(line: 138, column: 32, scope: !112)
!224 = !DILocation(line: 138, column: 36, scope: !112)
!225 = !DILocation(line: 138, column: 53, scope: !112)
!226 = !DILocation(line: 66, column: 17, scope: !112)
!227 = !DILocation(line: 68, column: 27, scope: !112)
!228 = !DILocation(line: 69, column: 27, scope: !112)
!229 = !DILocation(line: 70, column: 27, scope: !112)
!230 = !DILocation(line: 44, column: 51, scope: !112)
!231 = !DILocation(line: 44, column: 44, scope: !112)
!232 = !DILocation(line: 32, column: 19, scope: !112)
!233 = !DILocation(line: 32, column: 13, scope: !112)
!234 = !DILocation(line: 30, column: 22, scope: !112)
!235 = !DILocation(line: 28, column: 21, scope: !112)
!236 = !DILocation(line: 30, column: 21, scope: !112)
!237 = !DILocation(line: 29, column: 22, scope: !112)
!238 = !DILocation(line: 30, column: 23, scope: !112)
!239 = !DILocation(line: 29, column: 21, scope: !112)
!240 = !DILocation(line: 72, column: 18, scope: !112)
!241 = !DILocation(line: 33, column: 25, scope: !112)
!242 = !DILocation(line: 119, column: 6, scope: !112)
!243 = !DILocation(line: 71, column: 18, scope: !112)
!244 = !DILocation(line: 31, column: 25, scope: !112)
!245 = !DILocation(line: 32, column: 25, scope: !112)
!246 = !DILocation(line: 33, column: 24, scope: !112)
!247 = !DILocation(line: 119, column: 22, scope: !112)
!248 = !DILocation(line: 31, column: 24, scope: !112)
!249 = !DILocation(line: 32, column: 24, scope: !112)
!250 = !DILocation(line: 119, column: 5, scope: !112)
!251 = !DILocation(line: 74, column: 68, scope: !112)
!252 = !DILocation(line: 42, column: 64, scope: !112)
!253 = !DILocation(line: 24, column: 16, scope: !112)
!254 = !DILocation(line: 34, column: 5, scope: !112)
!255 = !DILocation(line: 24, column: 25, scope: !112)
!256 = !DILocation(line: 34, column: 21, scope: !112)
!257 = !DILocation(line: 24, column: 34, scope: !112)
!258 = !DILocation(line: 34, column: 37, scope: !112)
!259 = !DILocation(line: 23, column: 17, scope: !112)
!260 = !DILocation(line: 24, column: 9, scope: !112)
!261 = !DILocation(line: 25, column: 10, scope: !112)
!262 = !DILocation(line: 25, column: 5, scope: !112)
!263 = !DILocation(line: 26, column: 10, scope: !112)
!264 = !DILocation(line: 26, column: 5, scope: !112)
!265 = !DILocation(line: 27, column: 10, scope: !112)
!266 = !DILocation(line: 27, column: 5, scope: !112)
!267 = !DILocation(line: 28, column: 5, scope: !112)
!268 = !DILocation(line: 62, column: 65, scope: !112)
!269 = !DILocation(line: 62, column: 24, scope: !112)
!270 = !DILocation(line: 62, column: 55, scope: !112)
!271 = !DILocation(line: 10, column: 39, scope: !112)
!272 = !DILocation(line: 62, column: 17, scope: !112)
!273 = !DILocation(line: 10, column: 18, scope: !112)
!274 = !DILocation(line: 28, column: 17, scope: !112)
!275 = !DILocation(line: 10, column: 5, scope: !112)
!276 = !DILocation(line: 177, column: 43, scope: !112)
!277 = !DILocation(line: 79, column: 15, scope: !112)
!278 = !DILocation(line: 177, column: 57, scope: !112)
!279 = !DILocation(line: 43, column: 14, scope: !112)
!280 = !DILocation(line: 45, column: 14, scope: !112)
!281 = !DILocation(line: 44, column: 15, scope: !112)
!282 = !DILocation(line: 45, column: 13, scope: !112)
!283 = !DILocation(line: 44, column: 14, scope: !112)
!284 = !DILocation(line: 47, column: 5, scope: !112)
!285 = !DILocation(line: 46, column: 13, scope: !112)
!286 = !DILocation(line: 47, column: 25, scope: !112)
!287 = !DILocation(line: 47, column: 59, scope: !112)
!288 = !DILocation(line: 47, column: 44, scope: !112)
!289 = !DILocation(line: 60, column: 14, scope: !112)
!290 = !DILocation(line: 52, column: 25, scope: !112)
!291 = !DILocation(line: 51, column: 25, scope: !112)
!292 = !DILocation(line: 52, column: 18, scope: !112)
!293 = !DILocation(line: 51, column: 18, scope: !112)
!294 = !DILocation(line: 55, column: 36, scope: !112)
!295 = !DILocation(line: 53, column: 13, scope: !112)
!296 = !DILocation(line: 54, column: 22, scope: !112)
!297 = !DILocation(line: 54, column: 13, scope: !112)
!298 = !DILocation(line: 55, column: 93, scope: !112)
!299 = !DILocation(line: 55, column: 74, scope: !112)
!300 = !DILocation(line: 55, column: 59, scope: !112)
!301 = !DILocation(line: 55, column: 14, scope: !112)
!302 = !DILocation(line: 55, column: 13, scope: !112)
!303 = !DILocation(line: 56, column: 5, scope: !112)
!304 = !DILocation(line: 90, column: 13, scope: !112)
!305 = !DILocation(line: 91, column: 31, scope: !112)
!306 = !DILocation(line: 91, column: 24, scope: !112)
!307 = !DILocation(line: 91, column: 13, scope: !112)
!308 = !DILocation(line: 39, column: 17, scope: !112)
!309 = !DILocation(line: 40, column: 17, scope: !112)
!310 = !DILocation(line: 35, column: 34, scope: !112)
!311 = !DILocation(line: 39, column: 13, scope: !112)
!312 = !DILocation(line: 35, column: 49, scope: !112)
!313 = !DILocation(line: 40, column: 13, scope: !112)
!314 = !DILocation(line: 30, column: 16, scope: !112)
!315 = !DILocation(line: 34, column: 31, scope: !112)
!316 = !DILocation(line: 34, column: 63, scope: !112)
!317 = !DILocation(line: 31, column: 22, scope: !112)
!318 = !DILocation(line: 31, column: 13, scope: !112)
!319 = !DILocation(line: 34, column: 24, scope: !112)
!320 = !DILocation(line: 34, column: 53, scope: !112)
!321 = !DILocation(line: 35, column: 27, scope: !112)
!322 = !DILocation(line: 135, column: 8, scope: !112)
!323 = !DILocation(line: 135, column: 18, scope: !112)
!324 = !DILocation(line: 135, column: 40, scope: !112)
!325 = !DILocation(line: 98, column: 37, scope: !112)
!326 = !DILocation(line: 98, column: 26, scope: !112)
!327 = !DILocation(line: 98, column: 19, scope: !112)
!328 = !DILocation(line: 99, column: 15, scope: !112)
!329 = !DILocation(line: 65, column: 18, scope: !112)
!330 = !DILocation(line: 65, column: 27, scope: !112)
!331 = !DILocation(line: 65, column: 46, scope: !112)
!332 = !DILocation(line: 65, column: 87, scope: !112)
!333 = !DILocation(line: 68, column: 21, scope: !112)
!334 = !DILocation(line: 68, column: 43, scope: !112)
!335 = !DILocation(line: 70, column: 48, scope: !112)
!336 = !DILocation(line: 118, column: 40, scope: !112)
!337 = !DILocation(line: 29, column: 16, scope: !112)
!338 = !DILocation(line: 29, column: 39, scope: !112)
!339 = !DILocation(line: 28, column: 39, scope: !112)
!340 = !DILocation(line: 73, column: 44, scope: !112)
!341 = !DILocation(line: 30, column: 39, scope: !112)
!342 = !DILocation(line: 28, column: 16, scope: !112)
!343 = !DILocation(line: 66, column: 5, scope: !112)
!344 = !DILocation(line: 29, column: 35, scope: !112)
!345 = !DILocation(line: 28, column: 35, scope: !112)
!346 = !DILocation(line: 30, column: 35, scope: !112)
!347 = !DILocation(line: 187, column: 13, scope: !112)
!348 = !DILocation(line: 77, column: 24, scope: !112)
!349 = !DILocation(line: 77, column: 13, scope: !112)
!350 = !DILocation(line: 78, column: 13, scope: !112)
!351 = !DILocation(line: 29, column: 29, scope: !112)
!352 = !DILocation(line: 30, column: 29, scope: !112)
!353 = !DILocation(line: 28, column: 29, scope: !112)
!354 = !DILocation(line: 107, column: 28, scope: !112)
!355 = !DILocation(line: 85, column: 5, scope: !112)
!356 = !DILocation(line: 188, column: 34, scope: !112)
!357 = !DILocation(line: 89, column: 38, scope: !112)
!358 = !DILocation(line: 89, column: 55, scope: !112)
!359 = !DILocation(line: 89, column: 72, scope: !112)
!360 = !DILocation(line: 20, column: 22, scope: !112)
!361 = !DILocation(line: 20, column: 44, scope: !112)
!362 = !DILocation(line: 20, column: 33, scope: !112)
!363 = !DILocation(line: 91, column: 63, scope: !112)
!364 = !DILocation(line: 39, column: 64, scope: !112)
!365 = !DILocation(line: 188, column: 64, scope: !112)
!366 = !DILocation(line: 94, column: 17, scope: !112)
!367 = !DILocation(line: 20, column: 38, scope: !112)
!368 = !DILocation(line: 20, column: 27, scope: !112)
!369 = !DILocation(line: 20, column: 16, scope: !112)
!370 = !DILocation(line: 90, column: 78, scope: !112)
!371 = !DILocation(line: 68, column: 23, scope: !372, inlinedAt: !374)
!372 = distinct !DISubprogram(name: "lambda_1047894", linkageName: "lambda_1047894", scope: null, file: !373, line: 67, type: !6, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!373 = !DIFile(filename: "cpu_common.impala", directory: "/home/niklas/repos/anydsl/rodent/src/core")
!374 = distinct !DILocation(line: 67, column: 22, scope: !112)
!375 = !DILocation(line: 71, column: 23, scope: !372, inlinedAt: !374)
!376 = !DILocation(line: 69, column: 23, scope: !372, inlinedAt: !374)
!377 = !DILocation(line: 72, column: 23, scope: !372, inlinedAt: !374)
!378 = !DILocation(line: 67, column: 23, scope: !372, inlinedAt: !374)
!379 = !DILocation(line: 70, column: 23, scope: !372, inlinedAt: !374)
!380 = !DILocation(line: 67, column: 22, scope: !112)
!381 = !DILocation(line: 84, column: 28, scope: !372, inlinedAt: !374)
!382 = !DILocation(line: 84, column: 8, scope: !372, inlinedAt: !374)
!383 = !DILocation(line: 84, column: 15, scope: !372, inlinedAt: !374)
!384 = !DILocation(line: 129, column: 55, scope: !372, inlinedAt: !374)
!385 = !DILocation(line: 99, column: 13, scope: !372, inlinedAt: !374)
!386 = !DILocation(line: 128, column: 22, scope: !372, inlinedAt: !374)
!387 = !DILocation(line: 131, column: 22, scope: !372, inlinedAt: !374)
!388 = !DILocation(line: 130, column: 22, scope: !372, inlinedAt: !374)
!389 = !DILocation(line: 101, column: 23, scope: !372, inlinedAt: !374)
!390 = !DILocation(line: 100, column: 23, scope: !372, inlinedAt: !374)
!391 = !DILocation(line: 98, column: 13, scope: !372, inlinedAt: !374)
!392 = !DILocation(line: 129, column: 33, scope: !372, inlinedAt: !374)
!393 = !DILocation(line: 129, column: 77, scope: !372, inlinedAt: !374)
!394 = !DILocation(line: 71, column: 38, scope: !372, inlinedAt: !374)
!395 = !DILocation(line: 71, column: 78, scope: !372, inlinedAt: !374)
!396 = !DILocation(line: 71, column: 58, scope: !372, inlinedAt: !374)
!397 = !DILocation(line: 123, column: 6, scope: !372, inlinedAt: !374)
!398 = !DILocation(line: 123, column: 5, scope: !372, inlinedAt: !374)
!399 = !DILocation(line: 123, column: 28, scope: !372, inlinedAt: !374)
!400 = !DILocation(line: 123, column: 37, scope: !372, inlinedAt: !374)
!401 = !DILocation(line: 60, column: 65, scope: !372, inlinedAt: !374)
!402 = !DILocation(line: 60, column: 41, scope: !372, inlinedAt: !374)
!403 = !DILocation(line: 60, column: 53, scope: !372, inlinedAt: !374)
!404 = !DILocation(line: 46, column: 43, scope: !372, inlinedAt: !374)
!405 = !DILocation(line: 52, column: 49, scope: !372, inlinedAt: !374)
!406 = !DILocation(line: 82, column: 70, scope: !372, inlinedAt: !374)
!407 = !DILocation(line: 45, column: 64, scope: !372, inlinedAt: !374)
!408 = !DILocation(line: 48, column: 89, scope: !372, inlinedAt: !374)
!409 = !DILocation(line: 67, column: 37, scope: !372, inlinedAt: !374)
!410 = !DILocation(line: 65, column: 24, scope: !372, inlinedAt: !374)
!411 = !DILocation(line: 49, column: 30, scope: !372, inlinedAt: !374)
!412 = !DILocation(line: 65, column: 17, scope: !372, inlinedAt: !374)
!413 = !DILocation(line: 67, column: 27, scope: !372, inlinedAt: !374)
!414 = !DILocation(line: 138, column: 36, scope: !372, inlinedAt: !374)
!415 = !DILocation(line: 68, column: 37, scope: !372, inlinedAt: !374)
!416 = !DILocation(line: 66, column: 24, scope: !372, inlinedAt: !374)
!417 = !DILocation(line: 66, column: 17, scope: !372, inlinedAt: !374)
!418 = !DILocation(line: 68, column: 27, scope: !372, inlinedAt: !374)
!419 = !DILocation(line: 138, column: 53, scope: !372, inlinedAt: !374)
!420 = !DILocation(line: 69, column: 27, scope: !372, inlinedAt: !374)
!421 = !DILocation(line: 70, column: 27, scope: !372, inlinedAt: !374)
!422 = !DILocation(line: 44, column: 51, scope: !372, inlinedAt: !374)
!423 = !DILocation(line: 60, column: 59, scope: !372, inlinedAt: !374)
!424 = !DILocation(line: 30, column: 22, scope: !372, inlinedAt: !374)
!425 = !DILocation(line: 29, column: 22, scope: !372, inlinedAt: !374)
!426 = !DILocation(line: 28, column: 21, scope: !372, inlinedAt: !374)
!427 = !DILocation(line: 29, column: 21, scope: !372, inlinedAt: !374)
!428 = !DILocation(line: 32, column: 25, scope: !372, inlinedAt: !374)
!429 = !DILocation(line: 31, column: 25, scope: !372, inlinedAt: !374)
!430 = !DILocation(line: 30, column: 21, scope: !372, inlinedAt: !374)
!431 = !DILocation(line: 71, column: 18, scope: !372, inlinedAt: !374)
!432 = !DILocation(line: 72, column: 18, scope: !372, inlinedAt: !374)
!433 = !DILocation(line: 32, column: 24, scope: !372, inlinedAt: !374)
!434 = !DILocation(line: 31, column: 24, scope: !372, inlinedAt: !374)
!435 = !DILocation(line: 33, column: 25, scope: !372, inlinedAt: !374)
!436 = !DILocation(line: 119, column: 22, scope: !372, inlinedAt: !374)
!437 = !DILocation(line: 119, column: 6, scope: !372, inlinedAt: !374)
!438 = !DILocation(line: 33, column: 24, scope: !372, inlinedAt: !374)
!439 = !DILocation(line: 119, column: 5, scope: !372, inlinedAt: !374)
!440 = !DILocation(line: 74, column: 68, scope: !372, inlinedAt: !374)
!441 = !DILocation(line: 42, column: 64, scope: !372, inlinedAt: !374)
!442 = !DILocation(line: 24, column: 16, scope: !372, inlinedAt: !374)
!443 = !DILocation(line: 34, column: 5, scope: !372, inlinedAt: !374)
!444 = !DILocation(line: 24, column: 34, scope: !372, inlinedAt: !374)
!445 = !DILocation(line: 34, column: 37, scope: !372, inlinedAt: !374)
!446 = !DILocation(line: 24, column: 25, scope: !372, inlinedAt: !374)
!447 = !DILocation(line: 34, column: 21, scope: !372, inlinedAt: !374)
!448 = !DILocation(line: 24, column: 9, scope: !372, inlinedAt: !374)
!449 = !DILocation(line: 25, column: 10, scope: !372, inlinedAt: !374)
!450 = !DILocation(line: 25, column: 5, scope: !372, inlinedAt: !374)
!451 = !DILocation(line: 26, column: 10, scope: !372, inlinedAt: !374)
!452 = !DILocation(line: 26, column: 5, scope: !372, inlinedAt: !374)
!453 = !DILocation(line: 27, column: 10, scope: !372, inlinedAt: !374)
!454 = !DILocation(line: 27, column: 5, scope: !372, inlinedAt: !374)
!455 = !DILocation(line: 62, column: 65, scope: !372, inlinedAt: !374)
!456 = !DILocation(line: 62, column: 24, scope: !372, inlinedAt: !374)
!457 = !DILocation(line: 62, column: 55, scope: !372, inlinedAt: !374)
!458 = !DILocation(line: 10, column: 39, scope: !372, inlinedAt: !374)
!459 = !DILocation(line: 10, column: 18, scope: !372, inlinedAt: !374)
!460 = !DILocation(line: 28, column: 17, scope: !372, inlinedAt: !374)
!461 = !DILocation(line: 10, column: 5, scope: !372, inlinedAt: !374)
!462 = !DILocation(line: 79, column: 15, scope: !372, inlinedAt: !374)
!463 = !DILocation(line: 177, column: 57, scope: !372, inlinedAt: !374)
!464 = !DILocation(line: 44, column: 15, scope: !372, inlinedAt: !374)
!465 = !DILocation(line: 45, column: 14, scope: !372, inlinedAt: !374)
!466 = !DILocation(line: 44, column: 14, scope: !372, inlinedAt: !374)
!467 = !DILocation(line: 45, column: 13, scope: !372, inlinedAt: !374)
!468 = !DILocation(line: 47, column: 5, scope: !372, inlinedAt: !374)
!469 = !DILocation(line: 47, column: 25, scope: !372, inlinedAt: !374)
!470 = !DILocation(line: 47, column: 59, scope: !372, inlinedAt: !374)
!471 = !DILocation(line: 47, column: 44, scope: !372, inlinedAt: !374)
!472 = !DILocation(line: 60, column: 14, scope: !372, inlinedAt: !374)
!473 = !DILocation(line: 51, column: 25, scope: !372, inlinedAt: !374)
!474 = !DILocation(line: 52, column: 18, scope: !372, inlinedAt: !374)
!475 = !DILocation(line: 51, column: 18, scope: !372, inlinedAt: !374)
!476 = !DILocation(line: 55, column: 36, scope: !372, inlinedAt: !374)
!477 = !DILocation(line: 53, column: 13, scope: !372, inlinedAt: !374)
!478 = !DILocation(line: 54, column: 22, scope: !372, inlinedAt: !374)
!479 = !DILocation(line: 54, column: 13, scope: !372, inlinedAt: !374)
!480 = !DILocation(line: 55, column: 93, scope: !372, inlinedAt: !374)
!481 = !DILocation(line: 55, column: 74, scope: !372, inlinedAt: !374)
!482 = !DILocation(line: 55, column: 59, scope: !372, inlinedAt: !374)
!483 = !DILocation(line: 55, column: 14, scope: !372, inlinedAt: !374)
!484 = !DILocation(line: 55, column: 13, scope: !372, inlinedAt: !374)
!485 = !DILocation(line: 91, column: 31, scope: !372, inlinedAt: !374)
!486 = !DILocation(line: 91, column: 24, scope: !372, inlinedAt: !374)
!487 = !DILocation(line: 35, column: 49, scope: !372, inlinedAt: !374)
!488 = !DILocation(line: 32, column: 13, scope: !372, inlinedAt: !374)
!489 = !DILocation(line: 35, column: 34, scope: !372, inlinedAt: !374)
!490 = !DILocation(line: 40, column: 13, scope: !372, inlinedAt: !374)
!491 = !DILocation(line: 39, column: 13, scope: !372, inlinedAt: !374)
!492 = !DILocation(line: 34, column: 63, scope: !372, inlinedAt: !374)
!493 = !DILocation(line: 34, column: 31, scope: !372, inlinedAt: !374)
!494 = !DILocation(line: 31, column: 22, scope: !372, inlinedAt: !374)
!495 = !DILocation(line: 31, column: 13, scope: !372, inlinedAt: !374)
!496 = !DILocation(line: 34, column: 24, scope: !372, inlinedAt: !374)
!497 = !DILocation(line: 34, column: 53, scope: !372, inlinedAt: !374)
!498 = !DILocation(line: 35, column: 27, scope: !372, inlinedAt: !374)
!499 = !DILocation(line: 135, column: 18, scope: !372, inlinedAt: !374)
!500 = !DILocation(line: 98, column: 26, scope: !372, inlinedAt: !374)
!501 = !DILocation(line: 98, column: 37, scope: !372, inlinedAt: !374)
!502 = !DILocation(line: 99, column: 15, scope: !372, inlinedAt: !374)
!503 = !DILocation(line: 65, column: 27, scope: !372, inlinedAt: !374)
!504 = !DILocation(line: 65, column: 87, scope: !372, inlinedAt: !374)
!505 = !DILocation(line: 68, column: 43, scope: !372, inlinedAt: !374)
!506 = !DILocation(line: 118, column: 40, scope: !372, inlinedAt: !374)
!507 = !DILocation(line: 73, column: 44, scope: !372, inlinedAt: !374)
!508 = !DILocation(line: 30, column: 16, scope: !372, inlinedAt: !374)
!509 = !DILocation(line: 28, column: 16, scope: !372, inlinedAt: !374)
!510 = !DILocation(line: 29, column: 16, scope: !372, inlinedAt: !374)
!511 = !DILocation(line: 30, column: 35, scope: !372, inlinedAt: !374)
!512 = !DILocation(line: 28, column: 35, scope: !372, inlinedAt: !374)
!513 = !DILocation(line: 29, column: 35, scope: !372, inlinedAt: !374)
!514 = !DILocation(line: 77, column: 24, scope: !372, inlinedAt: !374)
!515 = !DILocation(line: 135, column: 40, scope: !372, inlinedAt: !374)
!516 = !DILocation(line: 85, column: 5, scope: !372, inlinedAt: !374)
!517 = !DILocation(line: 107, column: 28, scope: !372, inlinedAt: !374)
!518 = !DILocation(line: 90, column: 48, scope: !372, inlinedAt: !374)
!519 = !DILocation(line: 89, column: 72, scope: !372, inlinedAt: !374)
!520 = !DILocation(line: 188, column: 64, scope: !372, inlinedAt: !374)
!521 = !DILocation(line: 85, column: 9, scope: !372, inlinedAt: !374)
!522 = !DILocation(line: 140, column: 9, scope: !372, inlinedAt: !374)
!523 = !DILocation(line: 139, column: 9, scope: !372, inlinedAt: !374)
!524 = !DILocation(line: 91, column: 63, scope: !372, inlinedAt: !374)
!525 = !DILocation(line: 143, column: 9, scope: !372, inlinedAt: !374)
!526 = !DILocation(line: 84, column: 9, scope: !372, inlinedAt: !374)
!527 = !DILocation(line: 82, column: 9, scope: !372, inlinedAt: !374)
!528 = !DILocation(line: 142, column: 9, scope: !372, inlinedAt: !374)
!529 = !DILocation(line: 83, column: 9, scope: !372, inlinedAt: !374)
!530 = !DILocation(line: 88, column: 9, scope: !372, inlinedAt: !374)
!531 = !DILocation(line: 87, column: 9, scope: !372, inlinedAt: !374)
!532 = !DILocation(line: 141, column: 9, scope: !372, inlinedAt: !374)
!533 = !DILocation(line: 86, column: 9, scope: !372, inlinedAt: !374)
!534 = !DILocation(line: 90, column: 78, scope: !372, inlinedAt: !374)
!535 = !DILocation(line: 144, column: 9, scope: !372, inlinedAt: !374)
!536 = !DILocation(line: 39, column: 64, scope: !372, inlinedAt: !374)
!537 = !DILocation(line: 89, column: 9, scope: !372, inlinedAt: !374)
!538 = !DILocation(line: 20, column: 16, scope: !372, inlinedAt: !374)
!539 = !DILocation(line: 20, column: 27, scope: !372, inlinedAt: !374)
!540 = !DILocation(line: 20, column: 38, scope: !372, inlinedAt: !374)
!541 = !DILocation(line: 97, column: 17, scope: !372, inlinedAt: !374)
!542 = !DILocation(line: 145, column: 5, scope: !372, inlinedAt: !374)
!543 = !DILocation(line: 70, column: 23, scope: !544, inlinedAt: !545)
!544 = distinct !DISubprogram(name: "lambda_1046066", linkageName: "lambda_1046066", scope: null, file: !373, line: 67, type: !6, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!545 = distinct !DILocation(line: 67, column: 22, scope: !112)
!546 = !DILocation(line: 67, column: 23, scope: !544, inlinedAt: !545)
!547 = !DILocation(line: 68, column: 23, scope: !544, inlinedAt: !545)
!548 = !DILocation(line: 69, column: 23, scope: !544, inlinedAt: !545)
!549 = !DILocation(line: 71, column: 23, scope: !544, inlinedAt: !545)
!550 = !DILocation(line: 72, column: 23, scope: !544, inlinedAt: !545)
!551 = !DILocation(line: 84, column: 28, scope: !544, inlinedAt: !545)
!552 = !DILocation(line: 84, column: 15, scope: !544, inlinedAt: !545)
!553 = !DILocation(line: 98, column: 13, scope: !544, inlinedAt: !545)
!554 = !DILocation(line: 99, column: 13, scope: !544, inlinedAt: !545)
!555 = !DILocation(line: 130, column: 22, scope: !544, inlinedAt: !545)
!556 = !DILocation(line: 128, column: 22, scope: !544, inlinedAt: !545)
!557 = !DILocation(line: 129, column: 77, scope: !544, inlinedAt: !545)
!558 = !DILocation(line: 100, column: 23, scope: !544, inlinedAt: !545)
!559 = !DILocation(line: 101, column: 23, scope: !544, inlinedAt: !545)
!560 = !DILocation(line: 131, column: 22, scope: !544, inlinedAt: !545)
!561 = !DILocation(line: 129, column: 55, scope: !544, inlinedAt: !545)
!562 = !DILocation(line: 129, column: 33, scope: !544, inlinedAt: !545)
!563 = !DILocation(line: 71, column: 38, scope: !544, inlinedAt: !545)
!564 = !DILocation(line: 71, column: 78, scope: !544, inlinedAt: !545)
!565 = !DILocation(line: 71, column: 58, scope: !544, inlinedAt: !545)
!566 = !DILocation(line: 123, column: 6, scope: !544, inlinedAt: !545)
!567 = !DILocation(line: 123, column: 5, scope: !544, inlinedAt: !545)
!568 = !DILocation(line: 123, column: 28, scope: !544, inlinedAt: !545)
!569 = !DILocation(line: 123, column: 37, scope: !544, inlinedAt: !545)
!570 = !DILocation(line: 60, column: 65, scope: !544, inlinedAt: !545)
!571 = !DILocation(line: 60, column: 41, scope: !544, inlinedAt: !545)
!572 = !DILocation(line: 60, column: 53, scope: !544, inlinedAt: !545)
!573 = !DILocation(line: 46, column: 43, scope: !544, inlinedAt: !545)
!574 = !DILocation(line: 52, column: 49, scope: !544, inlinedAt: !545)
!575 = !DILocation(line: 82, column: 70, scope: !544, inlinedAt: !545)
!576 = !DILocation(line: 45, column: 64, scope: !544, inlinedAt: !545)
!577 = !DILocation(line: 48, column: 89, scope: !544, inlinedAt: !545)
!578 = !DILocation(line: 49, column: 30, scope: !544, inlinedAt: !545)
!579 = !DILocation(line: 65, column: 24, scope: !544, inlinedAt: !545)
!580 = !DILocation(line: 67, column: 37, scope: !544, inlinedAt: !545)
!581 = !DILocation(line: 65, column: 17, scope: !544, inlinedAt: !545)
!582 = !DILocation(line: 67, column: 27, scope: !544, inlinedAt: !545)
!583 = !DILocation(line: 138, column: 36, scope: !544, inlinedAt: !545)
!584 = !DILocation(line: 66, column: 24, scope: !544, inlinedAt: !545)
!585 = !DILocation(line: 68, column: 37, scope: !544, inlinedAt: !545)
!586 = !DILocation(line: 66, column: 17, scope: !544, inlinedAt: !545)
!587 = !DILocation(line: 68, column: 27, scope: !544, inlinedAt: !545)
!588 = !DILocation(line: 138, column: 53, scope: !544, inlinedAt: !545)
!589 = !DILocation(line: 69, column: 27, scope: !544, inlinedAt: !545)
!590 = !DILocation(line: 70, column: 27, scope: !544, inlinedAt: !545)
!591 = !DILocation(line: 44, column: 51, scope: !544, inlinedAt: !545)
!592 = !DILocation(line: 71, column: 18, scope: !544, inlinedAt: !545)
!593 = !DILocation(line: 72, column: 18, scope: !544, inlinedAt: !545)
!594 = !DILocation(line: 119, column: 6, scope: !544, inlinedAt: !545)
!595 = !DILocation(line: 74, column: 68, scope: !544, inlinedAt: !545)
!596 = !DILocation(line: 28, column: 21, scope: !544, inlinedAt: !545)
!597 = !DILocation(line: 29, column: 22, scope: !544, inlinedAt: !545)
!598 = !DILocation(line: 30, column: 22, scope: !544, inlinedAt: !545)
!599 = !DILocation(line: 42, column: 64, scope: !544, inlinedAt: !545)
!600 = !DILocation(line: 31, column: 25, scope: !544, inlinedAt: !545)
!601 = !DILocation(line: 29, column: 21, scope: !544, inlinedAt: !545)
!602 = !DILocation(line: 30, column: 21, scope: !544, inlinedAt: !545)
!603 = !DILocation(line: 31, column: 24, scope: !544, inlinedAt: !545)
!604 = !DILocation(line: 32, column: 25, scope: !544, inlinedAt: !545)
!605 = !DILocation(line: 33, column: 25, scope: !544, inlinedAt: !545)
!606 = !DILocation(line: 119, column: 5, scope: !544, inlinedAt: !545)
!607 = !DILocation(line: 32, column: 24, scope: !544, inlinedAt: !545)
!608 = !DILocation(line: 33, column: 24, scope: !544, inlinedAt: !545)
!609 = !DILocation(line: 119, column: 22, scope: !544, inlinedAt: !545)
!610 = !DILocation(line: 25, column: 10, scope: !544, inlinedAt: !545)
!611 = !DILocation(line: 25, column: 5, scope: !544, inlinedAt: !545)
!612 = !DILocation(line: 26, column: 10, scope: !544, inlinedAt: !545)
!613 = !DILocation(line: 26, column: 5, scope: !544, inlinedAt: !545)
!614 = !DILocation(line: 34, column: 5, scope: !544, inlinedAt: !545)
!615 = !DILocation(line: 27, column: 10, scope: !544, inlinedAt: !545)
!616 = !DILocation(line: 34, column: 21, scope: !544, inlinedAt: !545)
!617 = !DILocation(line: 34, column: 37, scope: !544, inlinedAt: !545)
!618 = !DILocation(line: 27, column: 5, scope: !544, inlinedAt: !545)
!619 = !DILocation(line: 62, column: 65, scope: !544, inlinedAt: !545)
!620 = !DILocation(line: 62, column: 24, scope: !544, inlinedAt: !545)
!621 = !DILocation(line: 62, column: 55, scope: !544, inlinedAt: !545)
!622 = !DILocation(line: 10, column: 39, scope: !544, inlinedAt: !545)
!623 = !DILocation(line: 10, column: 18, scope: !544, inlinedAt: !545)
!624 = !DILocation(line: 28, column: 17, scope: !544, inlinedAt: !545)
!625 = !DILocation(line: 10, column: 5, scope: !544, inlinedAt: !545)
!626 = !DILocation(line: 24, column: 9, scope: !544, inlinedAt: !545)
!627 = !DILocation(line: 79, column: 15, scope: !544, inlinedAt: !545)
!628 = !DILocation(line: 177, column: 57, scope: !544, inlinedAt: !545)
!629 = !DILocation(line: 44, column: 15, scope: !544, inlinedAt: !545)
!630 = !DILocation(line: 45, column: 14, scope: !544, inlinedAt: !545)
!631 = !DILocation(line: 44, column: 14, scope: !544, inlinedAt: !545)
!632 = !DILocation(line: 45, column: 13, scope: !544, inlinedAt: !545)
!633 = !DILocation(line: 47, column: 5, scope: !544, inlinedAt: !545)
!634 = !DILocation(line: 47, column: 25, scope: !544, inlinedAt: !545)
!635 = !DILocation(line: 47, column: 59, scope: !544, inlinedAt: !545)
!636 = !DILocation(line: 47, column: 44, scope: !544, inlinedAt: !545)
!637 = !DILocation(line: 60, column: 14, scope: !544, inlinedAt: !545)
!638 = !DILocation(line: 51, column: 25, scope: !544, inlinedAt: !545)
!639 = !DILocation(line: 52, column: 18, scope: !544, inlinedAt: !545)
!640 = !DILocation(line: 51, column: 18, scope: !544, inlinedAt: !545)
!641 = !DILocation(line: 55, column: 36, scope: !544, inlinedAt: !545)
!642 = !DILocation(line: 53, column: 13, scope: !544, inlinedAt: !545)
!643 = !DILocation(line: 54, column: 22, scope: !544, inlinedAt: !545)
!644 = !DILocation(line: 54, column: 13, scope: !544, inlinedAt: !545)
!645 = !DILocation(line: 55, column: 93, scope: !544, inlinedAt: !545)
!646 = !DILocation(line: 55, column: 74, scope: !544, inlinedAt: !545)
!647 = !DILocation(line: 55, column: 59, scope: !544, inlinedAt: !545)
!648 = !DILocation(line: 55, column: 14, scope: !544, inlinedAt: !545)
!649 = !DILocation(line: 55, column: 13, scope: !544, inlinedAt: !545)
!650 = !DILocation(line: 91, column: 31, scope: !544, inlinedAt: !545)
!651 = !DILocation(line: 91, column: 24, scope: !544, inlinedAt: !545)
!652 = !DILocation(line: 39, column: 13, scope: !544, inlinedAt: !545)
!653 = !DILocation(line: 35, column: 34, scope: !544, inlinedAt: !545)
!654 = !DILocation(line: 35, column: 49, scope: !544, inlinedAt: !545)
!655 = !DILocation(line: 40, column: 13, scope: !544, inlinedAt: !545)
!656 = !DILocation(line: 32, column: 13, scope: !544, inlinedAt: !545)
!657 = !DILocation(line: 34, column: 63, scope: !544, inlinedAt: !545)
!658 = !DILocation(line: 34, column: 31, scope: !544, inlinedAt: !545)
!659 = !DILocation(line: 31, column: 22, scope: !544, inlinedAt: !545)
!660 = !DILocation(line: 31, column: 13, scope: !544, inlinedAt: !545)
!661 = !DILocation(line: 34, column: 24, scope: !544, inlinedAt: !545)
!662 = !DILocation(line: 34, column: 53, scope: !544, inlinedAt: !545)
!663 = !DILocation(line: 35, column: 27, scope: !544, inlinedAt: !545)
!664 = !DILocation(line: 135, column: 18, scope: !544, inlinedAt: !545)
!665 = !DILocation(line: 98, column: 26, scope: !544, inlinedAt: !545)
!666 = !DILocation(line: 98, column: 37, scope: !544, inlinedAt: !545)
!667 = !DILocation(line: 99, column: 15, scope: !544, inlinedAt: !545)
!668 = !DILocation(line: 65, column: 27, scope: !544, inlinedAt: !545)
!669 = !DILocation(line: 65, column: 87, scope: !544, inlinedAt: !545)
!670 = !DILocation(line: 68, column: 43, scope: !544, inlinedAt: !545)
!671 = !DILocation(line: 118, column: 40, scope: !544, inlinedAt: !545)
!672 = !DILocation(line: 24, column: 25, scope: !544, inlinedAt: !545)
!673 = !DILocation(line: 24, column: 16, scope: !544, inlinedAt: !545)
!674 = !DILocation(line: 24, column: 34, scope: !544, inlinedAt: !545)
!675 = !DILocation(line: 28, column: 16, scope: !544, inlinedAt: !545)
!676 = !DILocation(line: 73, column: 44, scope: !544, inlinedAt: !545)
!677 = !DILocation(line: 29, column: 16, scope: !544, inlinedAt: !545)
!678 = !DILocation(line: 29, column: 35, scope: !544, inlinedAt: !545)
!679 = !DILocation(line: 30, column: 35, scope: !544, inlinedAt: !545)
!680 = !DILocation(line: 30, column: 16, scope: !544, inlinedAt: !545)
!681 = !DILocation(line: 28, column: 35, scope: !544, inlinedAt: !545)
!682 = !DILocation(line: 77, column: 24, scope: !544, inlinedAt: !545)
!683 = !DILocation(line: 135, column: 40, scope: !544, inlinedAt: !545)
!684 = !DILocation(line: 107, column: 28, scope: !544, inlinedAt: !545)
!685 = !DILocation(line: 85, column: 5, scope: !544, inlinedAt: !545)
!686 = !DILocation(line: 90, column: 48, scope: !544, inlinedAt: !545)
!687 = !DILocation(line: 84, column: 8, scope: !544, inlinedAt: !545)
!688 = !DILocation(line: 89, column: 9, scope: !544, inlinedAt: !545)
!689 = !DILocation(line: 86, column: 9, scope: !544, inlinedAt: !545)
!690 = !DILocation(line: 143, column: 9, scope: !544, inlinedAt: !545)
!691 = !DILocation(line: 140, column: 9, scope: !544, inlinedAt: !545)
!692 = !DILocation(line: 91, column: 63, scope: !544, inlinedAt: !545)
!693 = !DILocation(line: 87, column: 9, scope: !544, inlinedAt: !545)
!694 = !DILocation(line: 82, column: 9, scope: !544, inlinedAt: !545)
!695 = !DILocation(line: 83, column: 9, scope: !544, inlinedAt: !545)
!696 = !DILocation(line: 88, column: 9, scope: !544, inlinedAt: !545)
!697 = !DILocation(line: 139, column: 9, scope: !544, inlinedAt: !545)
!698 = !DILocation(line: 142, column: 9, scope: !544, inlinedAt: !545)
!699 = !DILocation(line: 141, column: 9, scope: !544, inlinedAt: !545)
!700 = !DILocation(line: 85, column: 9, scope: !544, inlinedAt: !545)
!701 = !DILocation(line: 84, column: 9, scope: !544, inlinedAt: !545)
!702 = !DILocation(line: 144, column: 9, scope: !544, inlinedAt: !545)
!703 = !DILocation(line: 20, column: 16, scope: !544, inlinedAt: !545)
!704 = !DILocation(line: 20, column: 38, scope: !544, inlinedAt: !545)
!705 = !DILocation(line: 20, column: 27, scope: !544, inlinedAt: !545)
!706 = !DILocation(line: 39, column: 64, scope: !544, inlinedAt: !545)
!707 = !DILocation(line: 90, column: 78, scope: !544, inlinedAt: !545)
!708 = !DILocation(line: 97, column: 17, scope: !544, inlinedAt: !545)
!709 = !DILocation(line: 145, column: 5, scope: !544, inlinedAt: !545)
!710 = !DILocation(line: 71, column: 23, scope: !711, inlinedAt: !712)
!711 = distinct !DISubprogram(name: "lambda_1044224", linkageName: "lambda_1044224", scope: null, file: !373, line: 67, type: !6, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!712 = distinct !DILocation(line: 67, column: 22, scope: !112)
!713 = !DILocation(line: 69, column: 23, scope: !711, inlinedAt: !712)
!714 = !DILocation(line: 67, column: 23, scope: !711, inlinedAt: !712)
!715 = !DILocation(line: 70, column: 23, scope: !711, inlinedAt: !712)
!716 = !DILocation(line: 72, column: 23, scope: !711, inlinedAt: !712)
!717 = !DILocation(line: 68, column: 23, scope: !711, inlinedAt: !712)
!718 = !DILocation(line: 84, column: 28, scope: !711, inlinedAt: !712)
!719 = !DILocation(line: 84, column: 8, scope: !711, inlinedAt: !712)
!720 = !DILocation(line: 129, column: 77, scope: !711, inlinedAt: !712)
!721 = !DILocation(line: 98, column: 13, scope: !711, inlinedAt: !712)
!722 = !DILocation(line: 100, column: 23, scope: !711, inlinedAt: !712)
!723 = !DILocation(line: 101, column: 23, scope: !711, inlinedAt: !712)
!724 = !DILocation(line: 129, column: 33, scope: !711, inlinedAt: !712)
!725 = !DILocation(line: 130, column: 22, scope: !711, inlinedAt: !712)
!726 = !DILocation(line: 131, column: 22, scope: !711, inlinedAt: !712)
!727 = !DILocation(line: 99, column: 13, scope: !711, inlinedAt: !712)
!728 = !DILocation(line: 128, column: 22, scope: !711, inlinedAt: !712)
!729 = !DILocation(line: 129, column: 55, scope: !711, inlinedAt: !712)
!730 = !DILocation(line: 71, column: 38, scope: !711, inlinedAt: !712)
!731 = !DILocation(line: 71, column: 78, scope: !711, inlinedAt: !712)
!732 = !DILocation(line: 71, column: 58, scope: !711, inlinedAt: !712)
!733 = !DILocation(line: 123, column: 6, scope: !711, inlinedAt: !712)
!734 = !DILocation(line: 123, column: 5, scope: !711, inlinedAt: !712)
!735 = !DILocation(line: 123, column: 28, scope: !711, inlinedAt: !712)
!736 = !DILocation(line: 123, column: 37, scope: !711, inlinedAt: !712)
!737 = !DILocation(line: 60, column: 65, scope: !711, inlinedAt: !712)
!738 = !DILocation(line: 60, column: 41, scope: !711, inlinedAt: !712)
!739 = !DILocation(line: 60, column: 53, scope: !711, inlinedAt: !712)
!740 = !DILocation(line: 46, column: 43, scope: !711, inlinedAt: !712)
!741 = !DILocation(line: 52, column: 49, scope: !711, inlinedAt: !712)
!742 = !DILocation(line: 82, column: 70, scope: !711, inlinedAt: !712)
!743 = !DILocation(line: 45, column: 64, scope: !711, inlinedAt: !712)
!744 = !DILocation(line: 48, column: 89, scope: !711, inlinedAt: !712)
!745 = !DILocation(line: 24, column: 60, scope: !711, inlinedAt: !712)
!746 = !DILocation(line: 65, column: 24, scope: !711, inlinedAt: !712)
!747 = !DILocation(line: 49, column: 30, scope: !711, inlinedAt: !712)
!748 = !DILocation(line: 65, column: 17, scope: !711, inlinedAt: !712)
!749 = !DILocation(line: 67, column: 27, scope: !711, inlinedAt: !712)
!750 = !DILocation(line: 67, column: 37, scope: !711, inlinedAt: !712)
!751 = !DILocation(line: 138, column: 36, scope: !711, inlinedAt: !712)
!752 = !DILocation(line: 66, column: 24, scope: !711, inlinedAt: !712)
!753 = !DILocation(line: 68, column: 37, scope: !711, inlinedAt: !712)
!754 = !DILocation(line: 66, column: 17, scope: !711, inlinedAt: !712)
!755 = !DILocation(line: 68, column: 27, scope: !711, inlinedAt: !712)
!756 = !DILocation(line: 138, column: 53, scope: !711, inlinedAt: !712)
!757 = !DILocation(line: 69, column: 27, scope: !711, inlinedAt: !712)
!758 = !DILocation(line: 70, column: 27, scope: !711, inlinedAt: !712)
!759 = !DILocation(line: 44, column: 51, scope: !711, inlinedAt: !712)
!760 = !DILocation(line: 71, column: 18, scope: !711, inlinedAt: !712)
!761 = !DILocation(line: 72, column: 18, scope: !711, inlinedAt: !712)
!762 = !DILocation(line: 119, column: 6, scope: !711, inlinedAt: !712)
!763 = !DILocation(line: 74, column: 68, scope: !711, inlinedAt: !712)
!764 = !DILocation(line: 28, column: 21, scope: !711, inlinedAt: !712)
!765 = !DILocation(line: 29, column: 22, scope: !711, inlinedAt: !712)
!766 = !DILocation(line: 30, column: 22, scope: !711, inlinedAt: !712)
!767 = !DILocation(line: 42, column: 64, scope: !711, inlinedAt: !712)
!768 = !DILocation(line: 31, column: 25, scope: !711, inlinedAt: !712)
!769 = !DILocation(line: 29, column: 21, scope: !711, inlinedAt: !712)
!770 = !DILocation(line: 30, column: 21, scope: !711, inlinedAt: !712)
!771 = !DILocation(line: 31, column: 24, scope: !711, inlinedAt: !712)
!772 = !DILocation(line: 32, column: 25, scope: !711, inlinedAt: !712)
!773 = !DILocation(line: 33, column: 25, scope: !711, inlinedAt: !712)
!774 = !DILocation(line: 119, column: 5, scope: !711, inlinedAt: !712)
!775 = !DILocation(line: 32, column: 24, scope: !711, inlinedAt: !712)
!776 = !DILocation(line: 33, column: 24, scope: !711, inlinedAt: !712)
!777 = !DILocation(line: 119, column: 22, scope: !711, inlinedAt: !712)
!778 = !DILocation(line: 25, column: 10, scope: !711, inlinedAt: !712)
!779 = !DILocation(line: 25, column: 5, scope: !711, inlinedAt: !712)
!780 = !DILocation(line: 26, column: 10, scope: !711, inlinedAt: !712)
!781 = !DILocation(line: 26, column: 5, scope: !711, inlinedAt: !712)
!782 = !DILocation(line: 24, column: 16, scope: !711, inlinedAt: !712)
!783 = !DILocation(line: 34, column: 5, scope: !711, inlinedAt: !712)
!784 = !DILocation(line: 27, column: 10, scope: !711, inlinedAt: !712)
!785 = !DILocation(line: 24, column: 25, scope: !711, inlinedAt: !712)
!786 = !DILocation(line: 34, column: 21, scope: !711, inlinedAt: !712)
!787 = !DILocation(line: 24, column: 34, scope: !711, inlinedAt: !712)
!788 = !DILocation(line: 34, column: 37, scope: !711, inlinedAt: !712)
!789 = !DILocation(line: 27, column: 5, scope: !711, inlinedAt: !712)
!790 = !DILocation(line: 62, column: 65, scope: !711, inlinedAt: !712)
!791 = !DILocation(line: 62, column: 24, scope: !711, inlinedAt: !712)
!792 = !DILocation(line: 62, column: 55, scope: !711, inlinedAt: !712)
!793 = !DILocation(line: 10, column: 39, scope: !711, inlinedAt: !712)
!794 = !DILocation(line: 10, column: 18, scope: !711, inlinedAt: !712)
!795 = !DILocation(line: 28, column: 17, scope: !711, inlinedAt: !712)
!796 = !DILocation(line: 10, column: 5, scope: !711, inlinedAt: !712)
!797 = !DILocation(line: 24, column: 9, scope: !711, inlinedAt: !712)
!798 = !DILocation(line: 79, column: 15, scope: !711, inlinedAt: !712)
!799 = !DILocation(line: 177, column: 57, scope: !711, inlinedAt: !712)
!800 = !DILocation(line: 45, column: 14, scope: !711, inlinedAt: !712)
!801 = !DILocation(line: 44, column: 15, scope: !711, inlinedAt: !712)
!802 = !DILocation(line: 45, column: 13, scope: !711, inlinedAt: !712)
!803 = !DILocation(line: 44, column: 14, scope: !711, inlinedAt: !712)
!804 = !DILocation(line: 47, column: 5, scope: !711, inlinedAt: !712)
!805 = !DILocation(line: 47, column: 25, scope: !711, inlinedAt: !712)
!806 = !DILocation(line: 47, column: 59, scope: !711, inlinedAt: !712)
!807 = !DILocation(line: 47, column: 44, scope: !711, inlinedAt: !712)
!808 = !DILocation(line: 60, column: 14, scope: !711, inlinedAt: !712)
!809 = !DILocation(line: 51, column: 25, scope: !711, inlinedAt: !712)
!810 = !DILocation(line: 52, column: 18, scope: !711, inlinedAt: !712)
!811 = !DILocation(line: 51, column: 18, scope: !711, inlinedAt: !712)
!812 = !DILocation(line: 55, column: 36, scope: !711, inlinedAt: !712)
!813 = !DILocation(line: 53, column: 13, scope: !711, inlinedAt: !712)
!814 = !DILocation(line: 54, column: 22, scope: !711, inlinedAt: !712)
!815 = !DILocation(line: 54, column: 13, scope: !711, inlinedAt: !712)
!816 = !DILocation(line: 55, column: 93, scope: !711, inlinedAt: !712)
!817 = !DILocation(line: 55, column: 74, scope: !711, inlinedAt: !712)
!818 = !DILocation(line: 55, column: 59, scope: !711, inlinedAt: !712)
!819 = !DILocation(line: 55, column: 14, scope: !711, inlinedAt: !712)
!820 = !DILocation(line: 55, column: 13, scope: !711, inlinedAt: !712)
!821 = !DILocation(line: 91, column: 31, scope: !711, inlinedAt: !712)
!822 = !DILocation(line: 91, column: 24, scope: !711, inlinedAt: !712)
!823 = !DILocation(line: 39, column: 13, scope: !711, inlinedAt: !712)
!824 = !DILocation(line: 35, column: 49, scope: !711, inlinedAt: !712)
!825 = !DILocation(line: 32, column: 13, scope: !711, inlinedAt: !712)
!826 = !DILocation(line: 40, column: 13, scope: !711, inlinedAt: !712)
!827 = !DILocation(line: 35, column: 34, scope: !711, inlinedAt: !712)
!828 = !DILocation(line: 34, column: 31, scope: !711, inlinedAt: !712)
!829 = !DILocation(line: 34, column: 63, scope: !711, inlinedAt: !712)
!830 = !DILocation(line: 31, column: 22, scope: !711, inlinedAt: !712)
!831 = !DILocation(line: 31, column: 13, scope: !711, inlinedAt: !712)
!832 = !DILocation(line: 34, column: 24, scope: !711, inlinedAt: !712)
!833 = !DILocation(line: 34, column: 53, scope: !711, inlinedAt: !712)
!834 = !DILocation(line: 35, column: 27, scope: !711, inlinedAt: !712)
!835 = !DILocation(line: 135, column: 18, scope: !711, inlinedAt: !712)
!836 = !DILocation(line: 135, column: 8, scope: !711, inlinedAt: !712)
!837 = !DILocation(line: 98, column: 37, scope: !711, inlinedAt: !712)
!838 = !DILocation(line: 98, column: 19, scope: !711, inlinedAt: !712)
!839 = !DILocation(line: 99, column: 15, scope: !711, inlinedAt: !712)
!840 = !DILocation(line: 65, column: 27, scope: !711, inlinedAt: !712)
!841 = !DILocation(line: 65, column: 87, scope: !711, inlinedAt: !712)
!842 = !DILocation(line: 68, column: 43, scope: !711, inlinedAt: !712)
!843 = !DILocation(line: 118, column: 40, scope: !711, inlinedAt: !712)
!844 = !DILocation(line: 30, column: 16, scope: !711, inlinedAt: !712)
!845 = !DILocation(line: 28, column: 16, scope: !711, inlinedAt: !712)
!846 = !DILocation(line: 73, column: 44, scope: !711, inlinedAt: !712)
!847 = !DILocation(line: 29, column: 16, scope: !711, inlinedAt: !712)
!848 = !DILocation(line: 28, column: 35, scope: !711, inlinedAt: !712)
!849 = !DILocation(line: 30, column: 35, scope: !711, inlinedAt: !712)
!850 = !DILocation(line: 29, column: 35, scope: !711, inlinedAt: !712)
!851 = !DILocation(line: 77, column: 24, scope: !711, inlinedAt: !712)
!852 = !DILocation(line: 65, column: 18, scope: !711, inlinedAt: !712)
!853 = !DILocation(line: 135, column: 40, scope: !711, inlinedAt: !712)
!854 = !DILocation(line: 85, column: 5, scope: !711, inlinedAt: !712)
!855 = !DILocation(line: 107, column: 28, scope: !711, inlinedAt: !712)
!856 = !DILocation(line: 90, column: 48, scope: !711, inlinedAt: !712)
!857 = !DILocation(line: 84, column: 15, scope: !711, inlinedAt: !712)
!858 = !DILocation(line: 141, column: 9, scope: !711, inlinedAt: !712)
!859 = !DILocation(line: 82, column: 9, scope: !711, inlinedAt: !712)
!860 = !DILocation(line: 85, column: 9, scope: !711, inlinedAt: !712)
!861 = !DILocation(line: 140, column: 9, scope: !711, inlinedAt: !712)
!862 = !DILocation(line: 86, column: 9, scope: !711, inlinedAt: !712)
!863 = !DILocation(line: 142, column: 9, scope: !711, inlinedAt: !712)
!864 = !DILocation(line: 84, column: 9, scope: !711, inlinedAt: !712)
!865 = !DILocation(line: 90, column: 78, scope: !711, inlinedAt: !712)
!866 = !DILocation(line: 91, column: 63, scope: !711, inlinedAt: !712)
!867 = !DILocation(line: 139, column: 9, scope: !711, inlinedAt: !712)
!868 = !DILocation(line: 144, column: 9, scope: !711, inlinedAt: !712)
!869 = !DILocation(line: 89, column: 9, scope: !711, inlinedAt: !712)
!870 = !DILocation(line: 143, column: 9, scope: !711, inlinedAt: !712)
!871 = !DILocation(line: 83, column: 9, scope: !711, inlinedAt: !712)
!872 = !DILocation(line: 88, column: 9, scope: !711, inlinedAt: !712)
!873 = !DILocation(line: 87, column: 9, scope: !711, inlinedAt: !712)
!874 = !DILocation(line: 39, column: 64, scope: !711, inlinedAt: !712)
!875 = !DILocation(line: 20, column: 16, scope: !711, inlinedAt: !712)
!876 = !DILocation(line: 20, column: 38, scope: !711, inlinedAt: !712)
!877 = !DILocation(line: 20, column: 27, scope: !711, inlinedAt: !712)
!878 = !DILocation(line: 97, column: 17, scope: !711, inlinedAt: !712)
!879 = !DILocation(line: 145, column: 5, scope: !711, inlinedAt: !712)
!880 = !DILocation(line: 70, column: 23, scope: !881, inlinedAt: !882)
!881 = distinct !DISubprogram(name: "lambda_1042651", linkageName: "lambda_1042651", scope: null, file: !373, line: 67, type: !6, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!882 = distinct !DILocation(line: 67, column: 22, scope: !112)
!883 = !DILocation(line: 71, column: 23, scope: !881, inlinedAt: !882)
!884 = !DILocation(line: 67, column: 23, scope: !881, inlinedAt: !882)
!885 = !DILocation(line: 72, column: 23, scope: !881, inlinedAt: !882)
!886 = !DILocation(line: 69, column: 23, scope: !881, inlinedAt: !882)
!887 = !DILocation(line: 68, column: 23, scope: !881, inlinedAt: !882)
!888 = !DILocation(line: 84, column: 28, scope: !881, inlinedAt: !882)
!889 = !DILocation(line: 84, column: 15, scope: !881, inlinedAt: !882)
!890 = !DILocation(line: 98, column: 13, scope: !881, inlinedAt: !882)
!891 = !DILocation(line: 99, column: 13, scope: !881, inlinedAt: !882)
!892 = !DILocation(line: 131, column: 22, scope: !881, inlinedAt: !882)
!893 = !DILocation(line: 129, column: 55, scope: !881, inlinedAt: !882)
!894 = !DILocation(line: 129, column: 77, scope: !881, inlinedAt: !882)
!895 = !DILocation(line: 129, column: 33, scope: !881, inlinedAt: !882)
!896 = !DILocation(line: 130, column: 22, scope: !881, inlinedAt: !882)
!897 = !DILocation(line: 101, column: 23, scope: !881, inlinedAt: !882)
!898 = !DILocation(line: 128, column: 22, scope: !881, inlinedAt: !882)
!899 = !DILocation(line: 100, column: 23, scope: !881, inlinedAt: !882)
!900 = !DILocation(line: 71, column: 38, scope: !881, inlinedAt: !882)
!901 = !DILocation(line: 71, column: 78, scope: !881, inlinedAt: !882)
!902 = !DILocation(line: 71, column: 58, scope: !881, inlinedAt: !882)
!903 = !DILocation(line: 123, column: 6, scope: !881, inlinedAt: !882)
!904 = !DILocation(line: 123, column: 5, scope: !881, inlinedAt: !882)
!905 = !DILocation(line: 123, column: 28, scope: !881, inlinedAt: !882)
!906 = !DILocation(line: 123, column: 37, scope: !881, inlinedAt: !882)
!907 = !DILocation(line: 60, column: 65, scope: !881, inlinedAt: !882)
!908 = !DILocation(line: 60, column: 41, scope: !881, inlinedAt: !882)
!909 = !DILocation(line: 60, column: 53, scope: !881, inlinedAt: !882)
!910 = !DILocation(line: 46, column: 43, scope: !881, inlinedAt: !882)
!911 = !DILocation(line: 52, column: 49, scope: !881, inlinedAt: !882)
!912 = !DILocation(line: 82, column: 70, scope: !881, inlinedAt: !882)
!913 = !DILocation(line: 45, column: 64, scope: !881, inlinedAt: !882)
!914 = !DILocation(line: 48, column: 89, scope: !881, inlinedAt: !882)
!915 = !DILocation(line: 74, column: 68, scope: !881, inlinedAt: !882)
!916 = !DILocation(line: 42, column: 64, scope: !881, inlinedAt: !882)
!917 = !DILocation(line: 25, column: 10, scope: !881, inlinedAt: !882)
!918 = !DILocation(line: 25, column: 5, scope: !881, inlinedAt: !882)
!919 = !DILocation(line: 26, column: 10, scope: !881, inlinedAt: !882)
!920 = !DILocation(line: 26, column: 5, scope: !881, inlinedAt: !882)
!921 = !DILocation(line: 27, column: 10, scope: !881, inlinedAt: !882)
!922 = !DILocation(line: 27, column: 5, scope: !881, inlinedAt: !882)
!923 = !DILocation(line: 24, column: 9, scope: !881, inlinedAt: !882)
!924 = !DILocation(line: 10, column: 39, scope: !881, inlinedAt: !882)
!925 = !DILocation(line: 10, column: 18, scope: !881, inlinedAt: !882)
!926 = !DILocation(line: 10, column: 5, scope: !881, inlinedAt: !882)
!927 = !DILocation(line: 79, column: 15, scope: !881, inlinedAt: !882)
!928 = !DILocation(line: 177, column: 57, scope: !881, inlinedAt: !882)
!929 = !DILocation(line: 45, column: 14, scope: !881, inlinedAt: !882)
!930 = !DILocation(line: 44, column: 15, scope: !881, inlinedAt: !882)
!931 = !DILocation(line: 45, column: 13, scope: !881, inlinedAt: !882)
!932 = !DILocation(line: 44, column: 14, scope: !881, inlinedAt: !882)
!933 = !DILocation(line: 47, column: 5, scope: !881, inlinedAt: !882)
!934 = !DILocation(line: 47, column: 25, scope: !881, inlinedAt: !882)
!935 = !DILocation(line: 47, column: 59, scope: !881, inlinedAt: !882)
!936 = !DILocation(line: 47, column: 44, scope: !881, inlinedAt: !882)
!937 = !DILocation(line: 60, column: 14, scope: !881, inlinedAt: !882)
!938 = !DILocation(line: 51, column: 25, scope: !881, inlinedAt: !882)
!939 = !DILocation(line: 52, column: 18, scope: !881, inlinedAt: !882)
!940 = !DILocation(line: 51, column: 18, scope: !881, inlinedAt: !882)
!941 = !DILocation(line: 55, column: 36, scope: !881, inlinedAt: !882)
!942 = !DILocation(line: 53, column: 13, scope: !881, inlinedAt: !882)
!943 = !DILocation(line: 54, column: 22, scope: !881, inlinedAt: !882)
!944 = !DILocation(line: 54, column: 13, scope: !881, inlinedAt: !882)
!945 = !DILocation(line: 55, column: 93, scope: !881, inlinedAt: !882)
!946 = !DILocation(line: 55, column: 74, scope: !881, inlinedAt: !882)
!947 = !DILocation(line: 55, column: 59, scope: !881, inlinedAt: !882)
!948 = !DILocation(line: 55, column: 14, scope: !881, inlinedAt: !882)
!949 = !DILocation(line: 55, column: 13, scope: !881, inlinedAt: !882)
!950 = !DILocation(line: 91, column: 31, scope: !881, inlinedAt: !882)
!951 = !DILocation(line: 91, column: 24, scope: !881, inlinedAt: !882)
!952 = !DILocation(line: 40, column: 13, scope: !881, inlinedAt: !882)
!953 = !DILocation(line: 35, column: 34, scope: !881, inlinedAt: !882)
!954 = !DILocation(line: 32, column: 13, scope: !881, inlinedAt: !882)
!955 = !DILocation(line: 35, column: 49, scope: !881, inlinedAt: !882)
!956 = !DILocation(line: 39, column: 13, scope: !881, inlinedAt: !882)
!957 = !DILocation(line: 31, column: 22, scope: !881, inlinedAt: !882)
!958 = !DILocation(line: 34, column: 31, scope: !881, inlinedAt: !882)
!959 = !DILocation(line: 34, column: 63, scope: !881, inlinedAt: !882)
!960 = !DILocation(line: 31, column: 13, scope: !881, inlinedAt: !882)
!961 = !DILocation(line: 34, column: 53, scope: !881, inlinedAt: !882)
!962 = !DILocation(line: 34, column: 24, scope: !881, inlinedAt: !882)
!963 = !DILocation(line: 35, column: 27, scope: !881, inlinedAt: !882)
!964 = !DILocation(line: 135, column: 18, scope: !881, inlinedAt: !882)
!965 = !DILocation(line: 135, column: 8, scope: !881, inlinedAt: !882)
!966 = !DILocation(line: 98, column: 37, scope: !881, inlinedAt: !882)
!967 = !DILocation(line: 98, column: 19, scope: !881, inlinedAt: !882)
!968 = !DILocation(line: 99, column: 15, scope: !881, inlinedAt: !882)
!969 = !DILocation(line: 65, column: 27, scope: !881, inlinedAt: !882)
!970 = !DILocation(line: 65, column: 87, scope: !881, inlinedAt: !882)
!971 = !DILocation(line: 68, column: 43, scope: !881, inlinedAt: !882)
!972 = !DILocation(line: 118, column: 40, scope: !881, inlinedAt: !882)
!973 = !DILocation(line: 24, column: 16, scope: !881, inlinedAt: !882)
!974 = !DILocation(line: 29, column: 35, scope: !881, inlinedAt: !882)
!975 = !DILocation(line: 29, column: 16, scope: !881, inlinedAt: !882)
!976 = !DILocation(line: 73, column: 44, scope: !881, inlinedAt: !882)
!977 = !DILocation(line: 28, column: 35, scope: !881, inlinedAt: !882)
!978 = !DILocation(line: 119, column: 22, scope: !881, inlinedAt: !882)
!979 = !DILocation(line: 119, column: 5, scope: !881, inlinedAt: !882)
!980 = !DILocation(line: 28, column: 16, scope: !881, inlinedAt: !882)
!981 = !DILocation(line: 30, column: 35, scope: !881, inlinedAt: !882)
!982 = !DILocation(line: 30, column: 16, scope: !881, inlinedAt: !882)
!983 = !DILocation(line: 77, column: 24, scope: !881, inlinedAt: !882)
!984 = !DILocation(line: 135, column: 40, scope: !881, inlinedAt: !882)
!985 = !DILocation(line: 107, column: 28, scope: !881, inlinedAt: !882)
!986 = !DILocation(line: 85, column: 5, scope: !881, inlinedAt: !882)
!987 = !DILocation(line: 90, column: 48, scope: !881, inlinedAt: !882)
!988 = !DILocation(line: 84, column: 8, scope: !881, inlinedAt: !882)
!989 = !DILocation(line: 142, column: 9, scope: !881, inlinedAt: !882)
!990 = !DILocation(line: 91, column: 63, scope: !881, inlinedAt: !882)
!991 = !DILocation(line: 90, column: 78, scope: !881, inlinedAt: !882)
!992 = !DILocation(line: 84, column: 9, scope: !881, inlinedAt: !882)
!993 = !DILocation(line: 139, column: 9, scope: !881, inlinedAt: !882)
!994 = !DILocation(line: 85, column: 9, scope: !881, inlinedAt: !882)
!995 = !DILocation(line: 82, column: 9, scope: !881, inlinedAt: !882)
!996 = !DILocation(line: 89, column: 9, scope: !881, inlinedAt: !882)
!997 = !DILocation(line: 20, column: 16, scope: !881, inlinedAt: !882)
!998 = !DILocation(line: 144, column: 9, scope: !881, inlinedAt: !882)
!999 = !DILocation(line: 83, column: 9, scope: !881, inlinedAt: !882)
!1000 = !DILocation(line: 141, column: 9, scope: !881, inlinedAt: !882)
!1001 = !DILocation(line: 88, column: 9, scope: !881, inlinedAt: !882)
!1002 = !DILocation(line: 140, column: 9, scope: !881, inlinedAt: !882)
!1003 = !DILocation(line: 143, column: 9, scope: !881, inlinedAt: !882)
!1004 = !DILocation(line: 87, column: 9, scope: !881, inlinedAt: !882)
!1005 = !DILocation(line: 86, column: 9, scope: !881, inlinedAt: !882)
!1006 = !DILocation(line: 39, column: 64, scope: !881, inlinedAt: !882)
!1007 = !DILocation(line: 20, column: 27, scope: !881, inlinedAt: !882)
!1008 = !DILocation(line: 20, column: 38, scope: !881, inlinedAt: !882)
!1009 = !DILocation(line: 24, column: 25, scope: !881, inlinedAt: !882)
!1010 = !DILocation(line: 97, column: 17, scope: !881, inlinedAt: !882)
!1011 = !DILocation(line: 24, column: 34, scope: !881, inlinedAt: !882)
!1012 = !DILocation(line: 145, column: 5, scope: !881, inlinedAt: !882)
!1013 = !DILocation(line: 68, column: 23, scope: !372)
!1014 = !DILocation(line: 71, column: 23, scope: !372)
!1015 = !DILocation(line: 69, column: 23, scope: !372)
!1016 = !DILocation(line: 72, column: 23, scope: !372)
!1017 = !DILocation(line: 67, column: 23, scope: !372)
!1018 = !DILocation(line: 70, column: 23, scope: !372)
!1019 = !DILocation(line: 68, column: 24, scope: !372)
!1020 = !DILocation(line: 84, column: 15, scope: !372)
!1021 = !DILocation(line: 84, column: 28, scope: !372)
!1022 = !DILocation(line: 84, column: 8, scope: !372)
!1023 = !DILocation(line: 129, column: 55, scope: !372)
!1024 = !DILocation(line: 99, column: 13, scope: !372)
!1025 = !DILocation(line: 128, column: 22, scope: !372)
!1026 = !DILocation(line: 131, column: 22, scope: !372)
!1027 = !DILocation(line: 130, column: 22, scope: !372)
!1028 = !DILocation(line: 101, column: 23, scope: !372)
!1029 = !DILocation(line: 100, column: 23, scope: !372)
!1030 = !DILocation(line: 98, column: 13, scope: !372)
!1031 = !DILocation(line: 129, column: 33, scope: !372)
!1032 = !DILocation(line: 129, column: 77, scope: !372)
!1033 = !DILocation(line: 70, column: 29, scope: !372)
!1034 = !DILocation(line: 71, column: 38, scope: !372)
!1035 = !DILocation(line: 71, column: 78, scope: !372)
!1036 = !DILocation(line: 71, column: 58, scope: !372)
!1037 = !DILocation(line: 71, column: 30, scope: !372)
!1038 = !DILocation(line: 71, column: 70, scope: !372)
!1039 = !DILocation(line: 71, column: 50, scope: !372)
!1040 = !DILocation(line: 123, column: 6, scope: !372)
!1041 = !DILocation(line: 69, column: 29, scope: !372)
!1042 = !DILocation(line: 97, column: 18, scope: !372)
!1043 = !DILocation(line: 98, column: 18, scope: !372)
!1044 = !DILocation(line: 123, column: 5, scope: !372)
!1045 = !DILocation(line: 99, column: 23, scope: !372)
!1046 = !DILocation(line: 97, column: 23, scope: !372)
!1047 = !DILocation(line: 98, column: 23, scope: !372)
!1048 = !DILocation(line: 123, column: 28, scope: !372)
!1049 = !DILocation(line: 99, column: 28, scope: !372)
!1050 = !DILocation(line: 97, column: 28, scope: !372)
!1051 = !DILocation(line: 98, column: 28, scope: !372)
!1052 = !DILocation(line: 123, column: 37, scope: !372)
!1053 = !DILocation(line: 60, column: 65, scope: !372)
!1054 = !DILocation(line: 60, column: 41, scope: !372)
!1055 = !DILocation(line: 60, column: 53, scope: !372)
!1056 = !DILocation(line: 78, column: 50, scope: !372)
!1057 = !DILocation(line: 60, column: 47, scope: !372)
!1058 = !DILocation(line: 60, column: 59, scope: !372)
!1059 = !DILocation(line: 60, column: 71, scope: !372)
!1060 = !DILocation(line: 28, column: 31, scope: !372)
!1061 = !DILocation(line: 46, column: 43, scope: !372)
!1062 = !DILocation(line: 52, column: 49, scope: !372)
!1063 = !DILocation(line: 46, column: 90, scope: !372)
!1064 = !DILocation(line: 82, column: 70, scope: !372)
!1065 = !DILocation(line: 45, column: 64, scope: !372)
!1066 = !DILocation(line: 48, column: 57, scope: !372)
!1067 = !DILocation(line: 48, column: 89, scope: !372)
!1068 = !DILocation(line: 48, column: 126, scope: !372)
!1069 = !DILocation(line: 72, column: 53, scope: !372)
!1070 = !DILocation(line: 49, column: 34, scope: !372)
!1071 = !DILocation(line: 24, column: 65, scope: !372)
!1072 = !DILocation(line: 67, column: 37, scope: !372)
!1073 = !DILocation(line: 65, column: 24, scope: !372)
!1074 = !DILocation(line: 49, column: 30, scope: !372)
!1075 = !DILocation(line: 65, column: 17, scope: !372)
!1076 = !DILocation(line: 67, column: 27, scope: !372)
!1077 = !DILocation(line: 138, column: 32, scope: !372)
!1078 = !DILocation(line: 138, column: 36, scope: !372)
!1079 = !DILocation(line: 68, column: 37, scope: !372)
!1080 = !DILocation(line: 66, column: 24, scope: !372)
!1081 = !DILocation(line: 66, column: 17, scope: !372)
!1082 = !DILocation(line: 68, column: 27, scope: !372)
!1083 = !DILocation(line: 138, column: 53, scope: !372)
!1084 = !DILocation(line: 69, column: 27, scope: !372)
!1085 = !DILocation(line: 70, column: 27, scope: !372)
!1086 = !DILocation(line: 44, column: 51, scope: !372)
!1087 = !DILocation(line: 44, column: 44, scope: !372)
!1088 = !DILocation(line: 30, column: 22, scope: !372)
!1089 = !DILocation(line: 29, column: 22, scope: !372)
!1090 = !DILocation(line: 32, column: 19, scope: !372)
!1091 = !DILocation(line: 28, column: 21, scope: !372)
!1092 = !DILocation(line: 29, column: 21, scope: !372)
!1093 = !DILocation(line: 32, column: 25, scope: !372)
!1094 = !DILocation(line: 31, column: 25, scope: !372)
!1095 = !DILocation(line: 30, column: 21, scope: !372)
!1096 = !DILocation(line: 71, column: 18, scope: !372)
!1097 = !DILocation(line: 72, column: 18, scope: !372)
!1098 = !DILocation(line: 32, column: 24, scope: !372)
!1099 = !DILocation(line: 31, column: 24, scope: !372)
!1100 = !DILocation(line: 33, column: 25, scope: !372)
!1101 = !DILocation(line: 119, column: 22, scope: !372)
!1102 = !DILocation(line: 119, column: 6, scope: !372)
!1103 = !DILocation(line: 33, column: 24, scope: !372)
!1104 = !DILocation(line: 119, column: 5, scope: !372)
!1105 = !DILocation(line: 74, column: 68, scope: !372)
!1106 = !DILocation(line: 42, column: 64, scope: !372)
!1107 = !DILocation(line: 24, column: 16, scope: !372)
!1108 = !DILocation(line: 34, column: 5, scope: !372)
!1109 = !DILocation(line: 24, column: 34, scope: !372)
!1110 = !DILocation(line: 34, column: 37, scope: !372)
!1111 = !DILocation(line: 24, column: 25, scope: !372)
!1112 = !DILocation(line: 34, column: 21, scope: !372)
!1113 = !DILocation(line: 24, column: 9, scope: !372)
!1114 = !DILocation(line: 25, column: 10, scope: !372)
!1115 = !DILocation(line: 25, column: 5, scope: !372)
!1116 = !DILocation(line: 26, column: 10, scope: !372)
!1117 = !DILocation(line: 26, column: 5, scope: !372)
!1118 = !DILocation(line: 27, column: 10, scope: !372)
!1119 = !DILocation(line: 27, column: 5, scope: !372)
!1120 = !DILocation(line: 62, column: 65, scope: !372)
!1121 = !DILocation(line: 62, column: 24, scope: !372)
!1122 = !DILocation(line: 62, column: 55, scope: !372)
!1123 = !DILocation(line: 10, column: 39, scope: !372)
!1124 = !DILocation(line: 62, column: 17, scope: !372)
!1125 = !DILocation(line: 10, column: 18, scope: !372)
!1126 = !DILocation(line: 28, column: 17, scope: !372)
!1127 = !DILocation(line: 10, column: 5, scope: !372)
!1128 = !DILocation(line: 177, column: 43, scope: !372)
!1129 = !DILocation(line: 79, column: 15, scope: !372)
!1130 = !DILocation(line: 177, column: 57, scope: !372)
!1131 = !DILocation(line: 43, column: 14, scope: !372)
!1132 = !DILocation(line: 44, column: 15, scope: !372)
!1133 = !DILocation(line: 45, column: 14, scope: !372)
!1134 = !DILocation(line: 44, column: 14, scope: !372)
!1135 = !DILocation(line: 45, column: 13, scope: !372)
!1136 = !DILocation(line: 46, column: 13, scope: !372)
!1137 = !DILocation(line: 47, column: 5, scope: !372)
!1138 = !DILocation(line: 47, column: 25, scope: !372)
!1139 = !DILocation(line: 47, column: 59, scope: !372)
!1140 = !DILocation(line: 47, column: 44, scope: !372)
!1141 = !DILocation(line: 60, column: 14, scope: !372)
!1142 = !DILocation(line: 52, column: 25, scope: !372)
!1143 = !DILocation(line: 51, column: 25, scope: !372)
!1144 = !DILocation(line: 52, column: 18, scope: !372)
!1145 = !DILocation(line: 51, column: 18, scope: !372)
!1146 = !DILocation(line: 55, column: 36, scope: !372)
!1147 = !DILocation(line: 53, column: 13, scope: !372)
!1148 = !DILocation(line: 54, column: 22, scope: !372)
!1149 = !DILocation(line: 54, column: 13, scope: !372)
!1150 = !DILocation(line: 55, column: 93, scope: !372)
!1151 = !DILocation(line: 55, column: 74, scope: !372)
!1152 = !DILocation(line: 55, column: 59, scope: !372)
!1153 = !DILocation(line: 55, column: 14, scope: !372)
!1154 = !DILocation(line: 55, column: 13, scope: !372)
!1155 = !DILocation(line: 56, column: 5, scope: !372)
!1156 = !DILocation(line: 90, column: 13, scope: !372)
!1157 = !DILocation(line: 91, column: 31, scope: !372)
!1158 = !DILocation(line: 91, column: 24, scope: !372)
!1159 = !DILocation(line: 91, column: 13, scope: !372)
!1160 = !DILocation(line: 39, column: 17, scope: !372)
!1161 = !DILocation(line: 40, column: 17, scope: !372)
!1162 = !DILocation(line: 35, column: 49, scope: !372)
!1163 = !DILocation(line: 32, column: 13, scope: !372)
!1164 = !DILocation(line: 35, column: 34, scope: !372)
!1165 = !DILocation(line: 40, column: 13, scope: !372)
!1166 = !DILocation(line: 30, column: 23, scope: !372)
!1167 = !DILocation(line: 39, column: 13, scope: !372)
!1168 = !DILocation(line: 30, column: 16, scope: !372)
!1169 = !DILocation(line: 34, column: 63, scope: !372)
!1170 = !DILocation(line: 34, column: 31, scope: !372)
!1171 = !DILocation(line: 31, column: 22, scope: !372)
!1172 = !DILocation(line: 31, column: 13, scope: !372)
!1173 = !DILocation(line: 34, column: 24, scope: !372)
!1174 = !DILocation(line: 34, column: 53, scope: !372)
!1175 = !DILocation(line: 35, column: 27, scope: !372)
!1176 = !DILocation(line: 135, column: 8, scope: !372)
!1177 = !DILocation(line: 135, column: 18, scope: !372)
!1178 = !DILocation(line: 98, column: 26, scope: !372)
!1179 = !DILocation(line: 98, column: 37, scope: !372)
!1180 = !DILocation(line: 98, column: 19, scope: !372)
!1181 = !DILocation(line: 99, column: 15, scope: !372)
!1182 = !DILocation(line: 65, column: 18, scope: !372)
!1183 = !DILocation(line: 65, column: 27, scope: !372)
!1184 = !DILocation(line: 65, column: 46, scope: !372)
!1185 = !DILocation(line: 65, column: 87, scope: !372)
!1186 = !DILocation(line: 1, column: 1, scope: !372)
!1187 = !DILocation(line: 68, column: 43, scope: !372)
!1188 = !DILocation(line: 118, column: 40, scope: !372)
!1189 = !DILocation(line: 70, column: 48, scope: !372)
!1190 = !DILocation(line: 30, column: 39, scope: !372)
!1191 = !DILocation(line: 73, column: 44, scope: !372)
!1192 = !DILocation(line: 28, column: 39, scope: !372)
!1193 = !DILocation(line: 28, column: 16, scope: !372)
!1194 = !DILocation(line: 29, column: 16, scope: !372)
!1195 = !DILocation(line: 30, column: 35, scope: !372)
!1196 = !DILocation(line: 28, column: 35, scope: !372)
!1197 = !DILocation(line: 29, column: 35, scope: !372)
!1198 = !DILocation(line: 187, column: 13, scope: !372)
!1199 = !DILocation(line: 77, column: 24, scope: !372)
!1200 = !DILocation(line: 77, column: 13, scope: !372)
!1201 = !DILocation(line: 78, column: 13, scope: !372)
!1202 = !DILocation(line: 135, column: 40, scope: !372)
!1203 = !DILocation(line: 85, column: 5, scope: !372)
!1204 = !DILocation(line: 107, column: 28, scope: !372)
!1205 = !DILocation(line: 90, column: 48, scope: !372)
!1206 = !DILocation(line: 89, column: 55, scope: !372)
!1207 = !DILocation(line: 89, column: 72, scope: !372)
!1208 = !DILocation(line: 188, column: 64, scope: !372)
!1209 = !DILocation(line: 85, column: 9, scope: !372)
!1210 = !DILocation(line: 140, column: 9, scope: !372)
!1211 = !DILocation(line: 139, column: 9, scope: !372)
!1212 = !DILocation(line: 20, column: 44, scope: !372)
!1213 = !DILocation(line: 20, column: 22, scope: !372)
!1214 = !DILocation(line: 91, column: 63, scope: !372)
!1215 = !DILocation(line: 143, column: 9, scope: !372)
!1216 = !DILocation(line: 84, column: 9, scope: !372)
!1217 = !DILocation(line: 82, column: 9, scope: !372)
!1218 = !DILocation(line: 142, column: 9, scope: !372)
!1219 = !DILocation(line: 83, column: 9, scope: !372)
!1220 = !DILocation(line: 88, column: 9, scope: !372)
!1221 = !DILocation(line: 87, column: 9, scope: !372)
!1222 = !DILocation(line: 141, column: 9, scope: !372)
!1223 = !DILocation(line: 86, column: 9, scope: !372)
!1224 = !DILocation(line: 90, column: 78, scope: !372)
!1225 = !DILocation(line: 144, column: 9, scope: !372)
!1226 = !DILocation(line: 39, column: 64, scope: !372)
!1227 = !DILocation(line: 89, column: 9, scope: !372)
!1228 = !DILocation(line: 20, column: 16, scope: !372)
!1229 = !DILocation(line: 20, column: 27, scope: !372)
!1230 = !DILocation(line: 20, column: 38, scope: !372)
!1231 = !DILocation(line: 97, column: 17, scope: !372)
!1232 = !DILocation(line: 145, column: 5, scope: !372)
!1233 = !DILocation(line: 68, column: 24, scope: !544)
!1234 = !DILocation(line: 70, column: 23, scope: !544)
!1235 = !DILocation(line: 67, column: 23, scope: !544)
!1236 = !DILocation(line: 68, column: 23, scope: !544)
!1237 = !DILocation(line: 69, column: 23, scope: !544)
!1238 = !DILocation(line: 71, column: 23, scope: !544)
!1239 = !DILocation(line: 72, column: 23, scope: !544)
!1240 = !DILocation(line: 84, column: 28, scope: !544)
!1241 = !DILocation(line: 84, column: 15, scope: !544)
!1242 = !DILocation(line: 84, column: 8, scope: !544)
!1243 = !DILocation(line: 98, column: 13, scope: !544)
!1244 = !DILocation(line: 99, column: 13, scope: !544)
!1245 = !DILocation(line: 130, column: 22, scope: !544)
!1246 = !DILocation(line: 128, column: 22, scope: !544)
!1247 = !DILocation(line: 129, column: 77, scope: !544)
!1248 = !DILocation(line: 100, column: 23, scope: !544)
!1249 = !DILocation(line: 101, column: 23, scope: !544)
!1250 = !DILocation(line: 131, column: 22, scope: !544)
!1251 = !DILocation(line: 129, column: 55, scope: !544)
!1252 = !DILocation(line: 129, column: 33, scope: !544)
!1253 = !DILocation(line: 70, column: 29, scope: !544)
!1254 = !DILocation(line: 71, column: 38, scope: !544)
!1255 = !DILocation(line: 71, column: 78, scope: !544)
!1256 = !DILocation(line: 71, column: 58, scope: !544)
!1257 = !DILocation(line: 71, column: 30, scope: !544)
!1258 = !DILocation(line: 71, column: 70, scope: !544)
!1259 = !DILocation(line: 71, column: 50, scope: !544)
!1260 = !DILocation(line: 123, column: 6, scope: !544)
!1261 = !DILocation(line: 69, column: 29, scope: !544)
!1262 = !DILocation(line: 123, column: 5, scope: !544)
!1263 = !DILocation(line: 123, column: 28, scope: !544)
!1264 = !DILocation(line: 99, column: 28, scope: !544)
!1265 = !DILocation(line: 97, column: 28, scope: !544)
!1266 = !DILocation(line: 98, column: 28, scope: !544)
!1267 = !DILocation(line: 123, column: 37, scope: !544)
!1268 = !DILocation(line: 60, column: 65, scope: !544)
!1269 = !DILocation(line: 60, column: 41, scope: !544)
!1270 = !DILocation(line: 60, column: 53, scope: !544)
!1271 = !DILocation(line: 78, column: 50, scope: !544)
!1272 = !DILocation(line: 60, column: 47, scope: !544)
!1273 = !DILocation(line: 60, column: 71, scope: !544)
!1274 = !DILocation(line: 60, column: 59, scope: !544)
!1275 = !DILocation(line: 28, column: 31, scope: !544)
!1276 = !DILocation(line: 46, column: 43, scope: !544)
!1277 = !DILocation(line: 52, column: 49, scope: !544)
!1278 = !DILocation(line: 46, column: 90, scope: !544)
!1279 = !DILocation(line: 82, column: 70, scope: !544)
!1280 = !DILocation(line: 45, column: 64, scope: !544)
!1281 = !DILocation(line: 48, column: 57, scope: !544)
!1282 = !DILocation(line: 48, column: 89, scope: !544)
!1283 = !DILocation(line: 48, column: 126, scope: !544)
!1284 = !DILocation(line: 72, column: 53, scope: !544)
!1285 = !DILocation(line: 49, column: 34, scope: !544)
!1286 = !DILocation(line: 49, column: 30, scope: !544)
!1287 = !DILocation(line: 65, column: 24, scope: !544)
!1288 = !DILocation(line: 67, column: 37, scope: !544)
!1289 = !DILocation(line: 65, column: 17, scope: !544)
!1290 = !DILocation(line: 67, column: 27, scope: !544)
!1291 = !DILocation(line: 138, column: 32, scope: !544)
!1292 = !DILocation(line: 138, column: 36, scope: !544)
!1293 = !DILocation(line: 66, column: 24, scope: !544)
!1294 = !DILocation(line: 68, column: 37, scope: !544)
!1295 = !DILocation(line: 66, column: 17, scope: !544)
!1296 = !DILocation(line: 68, column: 27, scope: !544)
!1297 = !DILocation(line: 138, column: 53, scope: !544)
!1298 = !DILocation(line: 69, column: 27, scope: !544)
!1299 = !DILocation(line: 70, column: 27, scope: !544)
!1300 = !DILocation(line: 44, column: 51, scope: !544)
!1301 = !DILocation(line: 32, column: 19, scope: !544)
!1302 = !DILocation(line: 32, column: 13, scope: !544)
!1303 = !DILocation(line: 30, column: 23, scope: !544)
!1304 = !DILocation(line: 44, column: 44, scope: !544)
!1305 = !DILocation(line: 71, column: 18, scope: !544)
!1306 = !DILocation(line: 72, column: 18, scope: !544)
!1307 = !DILocation(line: 119, column: 6, scope: !544)
!1308 = !DILocation(line: 74, column: 68, scope: !544)
!1309 = !DILocation(line: 28, column: 21, scope: !544)
!1310 = !DILocation(line: 29, column: 22, scope: !544)
!1311 = !DILocation(line: 30, column: 22, scope: !544)
!1312 = !DILocation(line: 42, column: 64, scope: !544)
!1313 = !DILocation(line: 31, column: 25, scope: !544)
!1314 = !DILocation(line: 29, column: 21, scope: !544)
!1315 = !DILocation(line: 30, column: 21, scope: !544)
!1316 = !DILocation(line: 31, column: 24, scope: !544)
!1317 = !DILocation(line: 32, column: 25, scope: !544)
!1318 = !DILocation(line: 33, column: 25, scope: !544)
!1319 = !DILocation(line: 119, column: 5, scope: !544)
!1320 = !DILocation(line: 32, column: 24, scope: !544)
!1321 = !DILocation(line: 33, column: 24, scope: !544)
!1322 = !DILocation(line: 119, column: 22, scope: !544)
!1323 = !DILocation(line: 24, column: 16, scope: !544)
!1324 = !DILocation(line: 24, column: 9, scope: !544)
!1325 = !DILocation(line: 25, column: 10, scope: !544)
!1326 = !DILocation(line: 25, column: 5, scope: !544)
!1327 = !DILocation(line: 26, column: 10, scope: !544)
!1328 = !DILocation(line: 26, column: 5, scope: !544)
!1329 = !DILocation(line: 34, column: 5, scope: !544)
!1330 = !DILocation(line: 27, column: 10, scope: !544)
!1331 = !DILocation(line: 34, column: 21, scope: !544)
!1332 = !DILocation(line: 34, column: 37, scope: !544)
!1333 = !DILocation(line: 27, column: 5, scope: !544)
!1334 = !DILocation(line: 62, column: 65, scope: !544)
!1335 = !DILocation(line: 62, column: 24, scope: !544)
!1336 = !DILocation(line: 62, column: 55, scope: !544)
!1337 = !DILocation(line: 10, column: 39, scope: !544)
!1338 = !DILocation(line: 62, column: 17, scope: !544)
!1339 = !DILocation(line: 10, column: 18, scope: !544)
!1340 = !DILocation(line: 28, column: 17, scope: !544)
!1341 = !DILocation(line: 10, column: 5, scope: !544)
!1342 = !DILocation(line: 177, column: 43, scope: !544)
!1343 = !DILocation(line: 79, column: 15, scope: !544)
!1344 = !DILocation(line: 177, column: 57, scope: !544)
!1345 = !DILocation(line: 43, column: 14, scope: !544)
!1346 = !DILocation(line: 44, column: 15, scope: !544)
!1347 = !DILocation(line: 45, column: 14, scope: !544)
!1348 = !DILocation(line: 44, column: 14, scope: !544)
!1349 = !DILocation(line: 45, column: 13, scope: !544)
!1350 = !DILocation(line: 46, column: 13, scope: !544)
!1351 = !DILocation(line: 47, column: 5, scope: !544)
!1352 = !DILocation(line: 47, column: 25, scope: !544)
!1353 = !DILocation(line: 47, column: 59, scope: !544)
!1354 = !DILocation(line: 47, column: 44, scope: !544)
!1355 = !DILocation(line: 60, column: 14, scope: !544)
!1356 = !DILocation(line: 52, column: 25, scope: !544)
!1357 = !DILocation(line: 51, column: 25, scope: !544)
!1358 = !DILocation(line: 52, column: 18, scope: !544)
!1359 = !DILocation(line: 51, column: 18, scope: !544)
!1360 = !DILocation(line: 55, column: 36, scope: !544)
!1361 = !DILocation(line: 53, column: 13, scope: !544)
!1362 = !DILocation(line: 54, column: 22, scope: !544)
!1363 = !DILocation(line: 54, column: 13, scope: !544)
!1364 = !DILocation(line: 55, column: 93, scope: !544)
!1365 = !DILocation(line: 55, column: 74, scope: !544)
!1366 = !DILocation(line: 55, column: 59, scope: !544)
!1367 = !DILocation(line: 55, column: 14, scope: !544)
!1368 = !DILocation(line: 55, column: 13, scope: !544)
!1369 = !DILocation(line: 56, column: 5, scope: !544)
!1370 = !DILocation(line: 90, column: 13, scope: !544)
!1371 = !DILocation(line: 91, column: 31, scope: !544)
!1372 = !DILocation(line: 91, column: 24, scope: !544)
!1373 = !DILocation(line: 91, column: 13, scope: !544)
!1374 = !DILocation(line: 39, column: 17, scope: !544)
!1375 = !DILocation(line: 40, column: 17, scope: !544)
!1376 = !DILocation(line: 39, column: 13, scope: !544)
!1377 = !DILocation(line: 35, column: 34, scope: !544)
!1378 = !DILocation(line: 35, column: 49, scope: !544)
!1379 = !DILocation(line: 40, column: 13, scope: !544)
!1380 = !DILocation(line: 30, column: 16, scope: !544)
!1381 = !DILocation(line: 34, column: 63, scope: !544)
!1382 = !DILocation(line: 34, column: 31, scope: !544)
!1383 = !DILocation(line: 31, column: 22, scope: !544)
!1384 = !DILocation(line: 31, column: 13, scope: !544)
!1385 = !DILocation(line: 34, column: 24, scope: !544)
!1386 = !DILocation(line: 34, column: 53, scope: !544)
!1387 = !DILocation(line: 35, column: 27, scope: !544)
!1388 = !DILocation(line: 135, column: 8, scope: !544)
!1389 = !DILocation(line: 135, column: 18, scope: !544)
!1390 = !DILocation(line: 98, column: 26, scope: !544)
!1391 = !DILocation(line: 98, column: 37, scope: !544)
!1392 = !DILocation(line: 98, column: 19, scope: !544)
!1393 = !DILocation(line: 99, column: 15, scope: !544)
!1394 = !DILocation(line: 65, column: 18, scope: !544)
!1395 = !DILocation(line: 65, column: 27, scope: !544)
!1396 = !DILocation(line: 65, column: 46, scope: !544)
!1397 = !DILocation(line: 65, column: 87, scope: !544)
!1398 = !DILocation(line: 1, column: 1, scope: !544)
!1399 = !DILocation(line: 68, column: 43, scope: !544)
!1400 = !DILocation(line: 118, column: 40, scope: !544)
!1401 = !DILocation(line: 24, column: 25, scope: !544)
!1402 = !DILocation(line: 24, column: 34, scope: !544)
!1403 = !DILocation(line: 70, column: 48, scope: !544)
!1404 = !DILocation(line: 28, column: 16, scope: !544)
!1405 = !DILocation(line: 73, column: 44, scope: !544)
!1406 = !DILocation(line: 29, column: 16, scope: !544)
!1407 = !DILocation(line: 28, column: 39, scope: !544)
!1408 = !DILocation(line: 29, column: 39, scope: !544)
!1409 = !DILocation(line: 30, column: 39, scope: !544)
!1410 = !DILocation(line: 29, column: 35, scope: !544)
!1411 = !DILocation(line: 30, column: 35, scope: !544)
!1412 = !DILocation(line: 28, column: 35, scope: !544)
!1413 = !DILocation(line: 187, column: 13, scope: !544)
!1414 = !DILocation(line: 77, column: 24, scope: !544)
!1415 = !DILocation(line: 77, column: 13, scope: !544)
!1416 = !DILocation(line: 78, column: 13, scope: !544)
!1417 = !DILocation(line: 135, column: 40, scope: !544)
!1418 = !DILocation(line: 107, column: 28, scope: !544)
!1419 = !DILocation(line: 85, column: 5, scope: !544)
!1420 = !DILocation(line: 90, column: 48, scope: !544)
!1421 = !DILocation(line: 89, column: 9, scope: !544)
!1422 = !DILocation(line: 86, column: 9, scope: !544)
!1423 = !DILocation(line: 143, column: 9, scope: !544)
!1424 = !DILocation(line: 20, column: 44, scope: !544)
!1425 = !DILocation(line: 140, column: 9, scope: !544)
!1426 = !DILocation(line: 91, column: 63, scope: !544)
!1427 = !DILocation(line: 20, column: 33, scope: !544)
!1428 = !DILocation(line: 87, column: 9, scope: !544)
!1429 = !DILocation(line: 82, column: 9, scope: !544)
!1430 = !DILocation(line: 83, column: 9, scope: !544)
!1431 = !DILocation(line: 88, column: 9, scope: !544)
!1432 = !DILocation(line: 139, column: 9, scope: !544)
!1433 = !DILocation(line: 142, column: 9, scope: !544)
!1434 = !DILocation(line: 141, column: 9, scope: !544)
!1435 = !DILocation(line: 20, column: 22, scope: !544)
!1436 = !DILocation(line: 85, column: 9, scope: !544)
!1437 = !DILocation(line: 84, column: 9, scope: !544)
!1438 = !DILocation(line: 144, column: 9, scope: !544)
!1439 = !DILocation(line: 20, column: 16, scope: !544)
!1440 = !DILocation(line: 20, column: 38, scope: !544)
!1441 = !DILocation(line: 20, column: 27, scope: !544)
!1442 = !DILocation(line: 39, column: 64, scope: !544)
!1443 = !DILocation(line: 90, column: 78, scope: !544)
!1444 = !DILocation(line: 97, column: 17, scope: !544)
!1445 = !DILocation(line: 145, column: 5, scope: !544)
!1446 = !DILocation(line: 71, column: 23, scope: !711)
!1447 = !DILocation(line: 69, column: 23, scope: !711)
!1448 = !DILocation(line: 67, column: 23, scope: !711)
!1449 = !DILocation(line: 70, column: 23, scope: !711)
!1450 = !DILocation(line: 72, column: 23, scope: !711)
!1451 = !DILocation(line: 68, column: 23, scope: !711)
!1452 = !DILocation(line: 68, column: 24, scope: !711)
!1453 = !DILocation(line: 84, column: 28, scope: !711)
!1454 = !DILocation(line: 84, column: 15, scope: !711)
!1455 = !DILocation(line: 84, column: 8, scope: !711)
!1456 = !DILocation(line: 129, column: 77, scope: !711)
!1457 = !DILocation(line: 98, column: 13, scope: !711)
!1458 = !DILocation(line: 100, column: 23, scope: !711)
!1459 = !DILocation(line: 101, column: 23, scope: !711)
!1460 = !DILocation(line: 129, column: 33, scope: !711)
!1461 = !DILocation(line: 130, column: 22, scope: !711)
!1462 = !DILocation(line: 131, column: 22, scope: !711)
!1463 = !DILocation(line: 99, column: 13, scope: !711)
!1464 = !DILocation(line: 128, column: 22, scope: !711)
!1465 = !DILocation(line: 129, column: 55, scope: !711)
!1466 = !DILocation(line: 70, column: 29, scope: !711)
!1467 = !DILocation(line: 71, column: 38, scope: !711)
!1468 = !DILocation(line: 71, column: 78, scope: !711)
!1469 = !DILocation(line: 71, column: 58, scope: !711)
!1470 = !DILocation(line: 71, column: 30, scope: !711)
!1471 = !DILocation(line: 71, column: 70, scope: !711)
!1472 = !DILocation(line: 71, column: 50, scope: !711)
!1473 = !DILocation(line: 123, column: 6, scope: !711)
!1474 = !DILocation(line: 81, column: 17, scope: !711)
!1475 = !DILocation(line: 69, column: 29, scope: !711)
!1476 = !DILocation(line: 123, column: 5, scope: !711)
!1477 = !DILocation(line: 123, column: 28, scope: !711)
!1478 = !DILocation(line: 123, column: 37, scope: !711)
!1479 = !DILocation(line: 60, column: 65, scope: !711)
!1480 = !DILocation(line: 60, column: 41, scope: !711)
!1481 = !DILocation(line: 60, column: 53, scope: !711)
!1482 = !DILocation(line: 78, column: 50, scope: !711)
!1483 = !DILocation(line: 60, column: 59, scope: !711)
!1484 = !DILocation(line: 60, column: 71, scope: !711)
!1485 = !DILocation(line: 28, column: 31, scope: !711)
!1486 = !DILocation(line: 46, column: 43, scope: !711)
!1487 = !DILocation(line: 52, column: 49, scope: !711)
!1488 = !DILocation(line: 46, column: 90, scope: !711)
!1489 = !DILocation(line: 82, column: 70, scope: !711)
!1490 = !DILocation(line: 45, column: 64, scope: !711)
!1491 = !DILocation(line: 48, column: 57, scope: !711)
!1492 = !DILocation(line: 48, column: 89, scope: !711)
!1493 = !DILocation(line: 48, column: 126, scope: !711)
!1494 = !DILocation(line: 72, column: 53, scope: !711)
!1495 = !DILocation(line: 24, column: 60, scope: !711)
!1496 = !DILocation(line: 49, column: 34, scope: !711)
!1497 = !DILocation(line: 24, column: 65, scope: !711)
!1498 = !DILocation(line: 65, column: 24, scope: !711)
!1499 = !DILocation(line: 49, column: 30, scope: !711)
!1500 = !DILocation(line: 65, column: 17, scope: !711)
!1501 = !DILocation(line: 67, column: 27, scope: !711)
!1502 = !DILocation(line: 67, column: 37, scope: !711)
!1503 = !DILocation(line: 138, column: 32, scope: !711)
!1504 = !DILocation(line: 138, column: 36, scope: !711)
!1505 = !DILocation(line: 66, column: 24, scope: !711)
!1506 = !DILocation(line: 68, column: 37, scope: !711)
!1507 = !DILocation(line: 66, column: 17, scope: !711)
!1508 = !DILocation(line: 68, column: 27, scope: !711)
!1509 = !DILocation(line: 138, column: 53, scope: !711)
!1510 = !DILocation(line: 69, column: 27, scope: !711)
!1511 = !DILocation(line: 70, column: 27, scope: !711)
!1512 = !DILocation(line: 44, column: 51, scope: !711)
!1513 = !DILocation(line: 44, column: 44, scope: !711)
!1514 = !DILocation(line: 71, column: 18, scope: !711)
!1515 = !DILocation(line: 72, column: 18, scope: !711)
!1516 = !DILocation(line: 119, column: 6, scope: !711)
!1517 = !DILocation(line: 74, column: 68, scope: !711)
!1518 = !DILocation(line: 28, column: 21, scope: !711)
!1519 = !DILocation(line: 29, column: 22, scope: !711)
!1520 = !DILocation(line: 30, column: 22, scope: !711)
!1521 = !DILocation(line: 42, column: 64, scope: !711)
!1522 = !DILocation(line: 31, column: 25, scope: !711)
!1523 = !DILocation(line: 29, column: 21, scope: !711)
!1524 = !DILocation(line: 30, column: 21, scope: !711)
!1525 = !DILocation(line: 31, column: 24, scope: !711)
!1526 = !DILocation(line: 32, column: 25, scope: !711)
!1527 = !DILocation(line: 33, column: 25, scope: !711)
!1528 = !DILocation(line: 119, column: 5, scope: !711)
!1529 = !DILocation(line: 32, column: 24, scope: !711)
!1530 = !DILocation(line: 33, column: 24, scope: !711)
!1531 = !DILocation(line: 119, column: 22, scope: !711)
!1532 = !DILocation(line: 24, column: 16, scope: !711)
!1533 = !DILocation(line: 24, column: 9, scope: !711)
!1534 = !DILocation(line: 25, column: 10, scope: !711)
!1535 = !DILocation(line: 25, column: 5, scope: !711)
!1536 = !DILocation(line: 26, column: 10, scope: !711)
!1537 = !DILocation(line: 26, column: 5, scope: !711)
!1538 = !DILocation(line: 34, column: 5, scope: !711)
!1539 = !DILocation(line: 27, column: 10, scope: !711)
!1540 = !DILocation(line: 24, column: 25, scope: !711)
!1541 = !DILocation(line: 34, column: 21, scope: !711)
!1542 = !DILocation(line: 24, column: 34, scope: !711)
!1543 = !DILocation(line: 34, column: 37, scope: !711)
!1544 = !DILocation(line: 27, column: 5, scope: !711)
!1545 = !DILocation(line: 62, column: 65, scope: !711)
!1546 = !DILocation(line: 62, column: 24, scope: !711)
!1547 = !DILocation(line: 62, column: 55, scope: !711)
!1548 = !DILocation(line: 10, column: 39, scope: !711)
!1549 = !DILocation(line: 62, column: 17, scope: !711)
!1550 = !DILocation(line: 10, column: 18, scope: !711)
!1551 = !DILocation(line: 28, column: 17, scope: !711)
!1552 = !DILocation(line: 10, column: 5, scope: !711)
!1553 = !DILocation(line: 177, column: 43, scope: !711)
!1554 = !DILocation(line: 79, column: 15, scope: !711)
!1555 = !DILocation(line: 177, column: 57, scope: !711)
!1556 = !DILocation(line: 43, column: 14, scope: !711)
!1557 = !DILocation(line: 45, column: 14, scope: !711)
!1558 = !DILocation(line: 44, column: 15, scope: !711)
!1559 = !DILocation(line: 45, column: 13, scope: !711)
!1560 = !DILocation(line: 44, column: 14, scope: !711)
!1561 = !DILocation(line: 47, column: 5, scope: !711)
!1562 = !DILocation(line: 46, column: 13, scope: !711)
!1563 = !DILocation(line: 47, column: 25, scope: !711)
!1564 = !DILocation(line: 47, column: 59, scope: !711)
!1565 = !DILocation(line: 47, column: 44, scope: !711)
!1566 = !DILocation(line: 60, column: 14, scope: !711)
!1567 = !DILocation(line: 52, column: 25, scope: !711)
!1568 = !DILocation(line: 51, column: 25, scope: !711)
!1569 = !DILocation(line: 52, column: 18, scope: !711)
!1570 = !DILocation(line: 51, column: 18, scope: !711)
!1571 = !DILocation(line: 55, column: 36, scope: !711)
!1572 = !DILocation(line: 53, column: 13, scope: !711)
!1573 = !DILocation(line: 54, column: 22, scope: !711)
!1574 = !DILocation(line: 54, column: 13, scope: !711)
!1575 = !DILocation(line: 55, column: 93, scope: !711)
!1576 = !DILocation(line: 55, column: 74, scope: !711)
!1577 = !DILocation(line: 55, column: 59, scope: !711)
!1578 = !DILocation(line: 55, column: 14, scope: !711)
!1579 = !DILocation(line: 55, column: 13, scope: !711)
!1580 = !DILocation(line: 56, column: 5, scope: !711)
!1581 = !DILocation(line: 90, column: 13, scope: !711)
!1582 = !DILocation(line: 91, column: 31, scope: !711)
!1583 = !DILocation(line: 91, column: 24, scope: !711)
!1584 = !DILocation(line: 91, column: 13, scope: !711)
!1585 = !DILocation(line: 39, column: 17, scope: !711)
!1586 = !DILocation(line: 40, column: 17, scope: !711)
!1587 = !DILocation(line: 39, column: 13, scope: !711)
!1588 = !DILocation(line: 35, column: 49, scope: !711)
!1589 = !DILocation(line: 30, column: 23, scope: !711)
!1590 = !DILocation(line: 32, column: 13, scope: !711)
!1591 = !DILocation(line: 40, column: 13, scope: !711)
!1592 = !DILocation(line: 35, column: 34, scope: !711)
!1593 = !DILocation(line: 30, column: 16, scope: !711)
!1594 = !DILocation(line: 34, column: 31, scope: !711)
!1595 = !DILocation(line: 34, column: 63, scope: !711)
!1596 = !DILocation(line: 31, column: 22, scope: !711)
!1597 = !DILocation(line: 31, column: 13, scope: !711)
!1598 = !DILocation(line: 34, column: 24, scope: !711)
!1599 = !DILocation(line: 34, column: 53, scope: !711)
!1600 = !DILocation(line: 35, column: 27, scope: !711)
!1601 = !DILocation(line: 135, column: 8, scope: !711)
!1602 = !DILocation(line: 135, column: 18, scope: !711)
!1603 = !DILocation(line: 98, column: 37, scope: !711)
!1604 = !DILocation(line: 98, column: 26, scope: !711)
!1605 = !DILocation(line: 98, column: 19, scope: !711)
!1606 = !DILocation(line: 99, column: 15, scope: !711)
!1607 = !DILocation(line: 65, column: 18, scope: !711)
!1608 = !DILocation(line: 65, column: 27, scope: !711)
!1609 = !DILocation(line: 65, column: 46, scope: !711)
!1610 = !DILocation(line: 65, column: 87, scope: !711)
!1611 = !DILocation(line: 1, column: 1, scope: !711)
!1612 = !DILocation(line: 68, column: 43, scope: !711)
!1613 = !DILocation(line: 118, column: 40, scope: !711)
!1614 = !DILocation(line: 70, column: 48, scope: !711)
!1615 = !DILocation(line: 28, column: 16, scope: !711)
!1616 = !DILocation(line: 73, column: 44, scope: !711)
!1617 = !DILocation(line: 29, column: 16, scope: !711)
!1618 = !DILocation(line: 28, column: 35, scope: !711)
!1619 = !DILocation(line: 30, column: 35, scope: !711)
!1620 = !DILocation(line: 29, column: 35, scope: !711)
!1621 = !DILocation(line: 187, column: 13, scope: !711)
!1622 = !DILocation(line: 77, column: 24, scope: !711)
!1623 = !DILocation(line: 77, column: 13, scope: !711)
!1624 = !DILocation(line: 78, column: 13, scope: !711)
!1625 = !DILocation(line: 135, column: 40, scope: !711)
!1626 = !DILocation(line: 85, column: 5, scope: !711)
!1627 = !DILocation(line: 107, column: 28, scope: !711)
!1628 = !DILocation(line: 90, column: 48, scope: !711)
!1629 = !DILocation(line: 141, column: 9, scope: !711)
!1630 = !DILocation(line: 82, column: 9, scope: !711)
!1631 = !DILocation(line: 188, column: 64, scope: !711)
!1632 = !DILocation(line: 85, column: 9, scope: !711)
!1633 = !DILocation(line: 140, column: 9, scope: !711)
!1634 = !DILocation(line: 86, column: 9, scope: !711)
!1635 = !DILocation(line: 142, column: 9, scope: !711)
!1636 = !DILocation(line: 20, column: 33, scope: !711)
!1637 = !DILocation(line: 84, column: 9, scope: !711)
!1638 = !DILocation(line: 90, column: 78, scope: !711)
!1639 = !DILocation(line: 91, column: 63, scope: !711)
!1640 = !DILocation(line: 139, column: 9, scope: !711)
!1641 = !DILocation(line: 20, column: 22, scope: !711)
!1642 = !DILocation(line: 144, column: 9, scope: !711)
!1643 = !DILocation(line: 89, column: 9, scope: !711)
!1644 = !DILocation(line: 143, column: 9, scope: !711)
!1645 = !DILocation(line: 83, column: 9, scope: !711)
!1646 = !DILocation(line: 88, column: 9, scope: !711)
!1647 = !DILocation(line: 20, column: 44, scope: !711)
!1648 = !DILocation(line: 87, column: 9, scope: !711)
!1649 = !DILocation(line: 39, column: 64, scope: !711)
!1650 = !DILocation(line: 20, column: 16, scope: !711)
!1651 = !DILocation(line: 20, column: 38, scope: !711)
!1652 = !DILocation(line: 20, column: 27, scope: !711)
!1653 = !DILocation(line: 97, column: 17, scope: !711)
!1654 = !DILocation(line: 145, column: 5, scope: !711)
!1655 = !DILocation(line: 70, column: 23, scope: !881)
!1656 = !DILocation(line: 71, column: 23, scope: !881)
!1657 = !DILocation(line: 67, column: 23, scope: !881)
!1658 = !DILocation(line: 72, column: 23, scope: !881)
!1659 = !DILocation(line: 69, column: 23, scope: !881)
!1660 = !DILocation(line: 68, column: 24, scope: !881)
!1661 = !DILocation(line: 68, column: 23, scope: !881)
!1662 = !DILocation(line: 84, column: 15, scope: !881)
!1663 = !DILocation(line: 84, column: 28, scope: !881)
!1664 = !DILocation(line: 84, column: 8, scope: !881)
!1665 = !DILocation(line: 98, column: 13, scope: !881)
!1666 = !DILocation(line: 99, column: 13, scope: !881)
!1667 = !DILocation(line: 131, column: 22, scope: !881)
!1668 = !DILocation(line: 129, column: 55, scope: !881)
!1669 = !DILocation(line: 129, column: 77, scope: !881)
!1670 = !DILocation(line: 129, column: 33, scope: !881)
!1671 = !DILocation(line: 130, column: 22, scope: !881)
!1672 = !DILocation(line: 101, column: 23, scope: !881)
!1673 = !DILocation(line: 128, column: 22, scope: !881)
!1674 = !DILocation(line: 100, column: 23, scope: !881)
!1675 = !DILocation(line: 70, column: 29, scope: !881)
!1676 = !DILocation(line: 71, column: 38, scope: !881)
!1677 = !DILocation(line: 71, column: 78, scope: !881)
!1678 = !DILocation(line: 71, column: 58, scope: !881)
!1679 = !DILocation(line: 71, column: 30, scope: !881)
!1680 = !DILocation(line: 71, column: 70, scope: !881)
!1681 = !DILocation(line: 71, column: 50, scope: !881)
!1682 = !DILocation(line: 123, column: 6, scope: !881)
!1683 = !DILocation(line: 81, column: 17, scope: !881)
!1684 = !DILocation(line: 69, column: 29, scope: !881)
!1685 = !DILocation(line: 123, column: 5, scope: !881)
!1686 = !DILocation(line: 123, column: 28, scope: !881)
!1687 = !DILocation(line: 123, column: 37, scope: !881)
!1688 = !DILocation(line: 60, column: 65, scope: !881)
!1689 = !DILocation(line: 60, column: 41, scope: !881)
!1690 = !DILocation(line: 60, column: 53, scope: !881)
!1691 = !DILocation(line: 78, column: 50, scope: !881)
!1692 = !DILocation(line: 60, column: 59, scope: !881)
!1693 = !DILocation(line: 60, column: 47, scope: !881)
!1694 = !DILocation(line: 60, column: 71, scope: !881)
!1695 = !DILocation(line: 28, column: 31, scope: !881)
!1696 = !DILocation(line: 46, column: 43, scope: !881)
!1697 = !DILocation(line: 52, column: 49, scope: !881)
!1698 = !DILocation(line: 46, column: 90, scope: !881)
!1699 = !DILocation(line: 82, column: 70, scope: !881)
!1700 = !DILocation(line: 45, column: 64, scope: !881)
!1701 = !DILocation(line: 48, column: 57, scope: !881)
!1702 = !DILocation(line: 48, column: 89, scope: !881)
!1703 = !DILocation(line: 48, column: 126, scope: !881)
!1704 = !DILocation(line: 32, column: 19, scope: !881)
!1705 = !DILocation(line: 30, column: 23, scope: !881)
!1706 = !DILocation(line: 32, column: 13, scope: !881)
!1707 = !DILocation(line: 74, column: 68, scope: !881)
!1708 = !DILocation(line: 24, column: 16, scope: !881)
!1709 = !DILocation(line: 24, column: 9, scope: !881)
!1710 = !DILocation(line: 42, column: 64, scope: !881)
!1711 = !DILocation(line: 25, column: 10, scope: !881)
!1712 = !DILocation(line: 25, column: 5, scope: !881)
!1713 = !DILocation(line: 26, column: 10, scope: !881)
!1714 = !DILocation(line: 26, column: 5, scope: !881)
!1715 = !DILocation(line: 27, column: 10, scope: !881)
!1716 = !DILocation(line: 27, column: 5, scope: !881)
!1717 = !DILocation(line: 10, column: 39, scope: !881)
!1718 = !DILocation(line: 10, column: 18, scope: !881)
!1719 = !DILocation(line: 10, column: 5, scope: !881)
!1720 = !DILocation(line: 177, column: 43, scope: !881)
!1721 = !DILocation(line: 79, column: 15, scope: !881)
!1722 = !DILocation(line: 177, column: 57, scope: !881)
!1723 = !DILocation(line: 43, column: 14, scope: !881)
!1724 = !DILocation(line: 45, column: 14, scope: !881)
!1725 = !DILocation(line: 44, column: 15, scope: !881)
!1726 = !DILocation(line: 45, column: 13, scope: !881)
!1727 = !DILocation(line: 44, column: 14, scope: !881)
!1728 = !DILocation(line: 47, column: 5, scope: !881)
!1729 = !DILocation(line: 46, column: 13, scope: !881)
!1730 = !DILocation(line: 47, column: 25, scope: !881)
!1731 = !DILocation(line: 47, column: 59, scope: !881)
!1732 = !DILocation(line: 47, column: 44, scope: !881)
!1733 = !DILocation(line: 60, column: 14, scope: !881)
!1734 = !DILocation(line: 52, column: 25, scope: !881)
!1735 = !DILocation(line: 51, column: 25, scope: !881)
!1736 = !DILocation(line: 52, column: 18, scope: !881)
!1737 = !DILocation(line: 51, column: 18, scope: !881)
!1738 = !DILocation(line: 55, column: 36, scope: !881)
!1739 = !DILocation(line: 53, column: 13, scope: !881)
!1740 = !DILocation(line: 54, column: 22, scope: !881)
!1741 = !DILocation(line: 54, column: 13, scope: !881)
!1742 = !DILocation(line: 55, column: 93, scope: !881)
!1743 = !DILocation(line: 55, column: 74, scope: !881)
!1744 = !DILocation(line: 55, column: 59, scope: !881)
!1745 = !DILocation(line: 55, column: 14, scope: !881)
!1746 = !DILocation(line: 55, column: 13, scope: !881)
!1747 = !DILocation(line: 56, column: 5, scope: !881)
!1748 = !DILocation(line: 90, column: 13, scope: !881)
!1749 = !DILocation(line: 91, column: 31, scope: !881)
!1750 = !DILocation(line: 91, column: 24, scope: !881)
!1751 = !DILocation(line: 91, column: 13, scope: !881)
!1752 = !DILocation(line: 39, column: 17, scope: !881)
!1753 = !DILocation(line: 40, column: 17, scope: !881)
!1754 = !DILocation(line: 40, column: 13, scope: !881)
!1755 = !DILocation(line: 35, column: 34, scope: !881)
!1756 = !DILocation(line: 35, column: 49, scope: !881)
!1757 = !DILocation(line: 39, column: 13, scope: !881)
!1758 = !DILocation(line: 30, column: 16, scope: !881)
!1759 = !DILocation(line: 31, column: 22, scope: !881)
!1760 = !DILocation(line: 34, column: 31, scope: !881)
!1761 = !DILocation(line: 34, column: 63, scope: !881)
!1762 = !DILocation(line: 31, column: 13, scope: !881)
!1763 = !DILocation(line: 34, column: 53, scope: !881)
!1764 = !DILocation(line: 34, column: 24, scope: !881)
!1765 = !DILocation(line: 35, column: 27, scope: !881)
!1766 = !DILocation(line: 135, column: 8, scope: !881)
!1767 = !DILocation(line: 135, column: 18, scope: !881)
!1768 = !DILocation(line: 98, column: 37, scope: !881)
!1769 = !DILocation(line: 98, column: 26, scope: !881)
!1770 = !DILocation(line: 98, column: 19, scope: !881)
!1771 = !DILocation(line: 99, column: 15, scope: !881)
!1772 = !DILocation(line: 65, column: 18, scope: !881)
!1773 = !DILocation(line: 65, column: 27, scope: !881)
!1774 = !DILocation(line: 65, column: 46, scope: !881)
!1775 = !DILocation(line: 65, column: 87, scope: !881)
!1776 = !DILocation(line: 1, column: 1, scope: !881)
!1777 = !DILocation(line: 68, column: 43, scope: !881)
!1778 = !DILocation(line: 118, column: 40, scope: !881)
!1779 = !DILocation(line: 70, column: 48, scope: !881)
!1780 = !DILocation(line: 28, column: 39, scope: !881)
!1781 = !DILocation(line: 29, column: 39, scope: !881)
!1782 = !DILocation(line: 29, column: 35, scope: !881)
!1783 = !DILocation(line: 29, column: 16, scope: !881)
!1784 = !DILocation(line: 73, column: 44, scope: !881)
!1785 = !DILocation(line: 28, column: 35, scope: !881)
!1786 = !DILocation(line: 30, column: 39, scope: !881)
!1787 = !DILocation(line: 119, column: 22, scope: !881)
!1788 = !DILocation(line: 119, column: 5, scope: !881)
!1789 = !DILocation(line: 28, column: 16, scope: !881)
!1790 = !DILocation(line: 30, column: 35, scope: !881)
!1791 = !DILocation(line: 187, column: 13, scope: !881)
!1792 = !DILocation(line: 77, column: 24, scope: !881)
!1793 = !DILocation(line: 77, column: 13, scope: !881)
!1794 = !DILocation(line: 78, column: 13, scope: !881)
!1795 = !DILocation(line: 135, column: 40, scope: !881)
!1796 = !DILocation(line: 107, column: 28, scope: !881)
!1797 = !DILocation(line: 85, column: 5, scope: !881)
!1798 = !DILocation(line: 90, column: 48, scope: !881)
!1799 = !DILocation(line: 142, column: 9, scope: !881)
!1800 = !DILocation(line: 91, column: 63, scope: !881)
!1801 = !DILocation(line: 90, column: 78, scope: !881)
!1802 = !DILocation(line: 84, column: 9, scope: !881)
!1803 = !DILocation(line: 139, column: 9, scope: !881)
!1804 = !DILocation(line: 85, column: 9, scope: !881)
!1805 = !DILocation(line: 82, column: 9, scope: !881)
!1806 = !DILocation(line: 89, column: 9, scope: !881)
!1807 = !DILocation(line: 20, column: 16, scope: !881)
!1808 = !DILocation(line: 144, column: 9, scope: !881)
!1809 = !DILocation(line: 83, column: 9, scope: !881)
!1810 = !DILocation(line: 141, column: 9, scope: !881)
!1811 = !DILocation(line: 88, column: 9, scope: !881)
!1812 = !DILocation(line: 140, column: 9, scope: !881)
!1813 = !DILocation(line: 143, column: 9, scope: !881)
!1814 = !DILocation(line: 87, column: 9, scope: !881)
!1815 = !DILocation(line: 86, column: 9, scope: !881)
!1816 = !DILocation(line: 39, column: 64, scope: !881)
!1817 = !DILocation(line: 20, column: 27, scope: !881)
!1818 = !DILocation(line: 20, column: 38, scope: !881)
!1819 = !DILocation(line: 24, column: 25, scope: !881)
!1820 = !DILocation(line: 97, column: 17, scope: !881)
!1821 = !DILocation(line: 24, column: 34, scope: !881)
!1822 = !DILocation(line: 145, column: 5, scope: !881)
