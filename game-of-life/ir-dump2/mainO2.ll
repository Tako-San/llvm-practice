; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@SURF_CUR = dso_local local_unnamed_addr global i8* null, align 8
@SURF_NEXT = dso_local local_unnamed_addr global i8* null, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca [230400 x i8], align 16
  %2 = alloca [230400 x i8], align 16
  %3 = getelementptr inbounds [230400 x i8], [230400 x i8]* %1, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 230400, i8* nonnull %3) #3 ; Tako: We may ignore it
  store i8* %3, i8** @SURF_CUR, align 8, !tbaa !5
  br label %4

4:                                                ; preds = %4, %0
  %5 = phi i64 [ 0, %0 ], [ %9, %4 ]
  %6 = call zeroext i8 @getZeroOrOne() #3
  %7 = load i8*, i8** @SURF_CUR, align 8, !tbaa !5
  %8 = getelementptr inbounds i8, i8* %7, i64 %5
  store i8 %6, i8* %8, align 1, !tbaa !9
  %9 = add nuw nsw i64 %5, 1
  %10 = icmp eq i64 %9, 230400
  br i1 %10, label %11, label %4, !llvm.loop !10

11:                                               ; preds = %4
  %12 = getelementptr inbounds [230400 x i8], [230400 x i8]* %2, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 230400, i8* nonnull %12) #3
  store i8* %12, i8** @SURF_NEXT, align 8, !tbaa !5
  call void @init(i64 noundef 360, i64 noundef 640) #3
  %13 = call zeroext i8 @finished() #3
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %131

15:                                               ; preds = %11, %25
  %16 = phi i64 [ %26, %25 ], [ 0, %11 ]
  %17 = add nsw i64 %16, -1
  %18 = icmp ult i64 %17, 358
  %19 = mul nuw nsw i64 %16, 640
  %20 = add nsw i64 %19, -640
  %21 = add nuw nsw i64 %19, 640
  br label %27

22:                                               ; preds = %104
  %23 = add nuw nsw i64 %16, 1
  %24 = icmp eq i64 %23, 360
  br i1 %24, label %111, label %25

25:                                               ; preds = %22, %128
  %26 = phi i64 [ %23, %22 ], [ 0, %128 ]
  br label %15, !llvm.loop !12

27:                                               ; preds = %104, %15
  %28 = phi i64 [ 0, %15 ], [ %105, %104 ]
  %29 = add nsw i64 %28, -1
  %30 = icmp ult i64 %29, 638
  %31 = and i1 %18, %30
  %32 = load i8*, i8** @SURF_CUR, align 8, !tbaa !5
  br i1 %31, label %38, label %33

33:                                               ; preds = %27
  %34 = add nuw nsw i64 %28, %19
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1, !tbaa !9
  %37 = add nuw nsw i64 %28, 1
  br label %93

38:                                               ; preds = %27
  %39 = add nuw nsw i64 %29, %20
  %40 = getelementptr inbounds i8, i8* %32, i64 %39
  %41 = load i8, i8* %40, align 1, !tbaa !9
  %42 = icmp ne i8 %41, 0
  %43 = zext i1 %42 to i64
  %44 = add nuw nsw i64 %29, %19
  %45 = getelementptr inbounds i8, i8* %32, i64 %44
  %46 = load i8, i8* %45, align 1, !tbaa !9
  %47 = icmp ne i8 %46, 0
  %48 = zext i1 %47 to i64
  %49 = add nuw nsw i64 %48, %43
  %50 = add nuw nsw i64 %29, %21
  %51 = getelementptr inbounds i8, i8* %32, i64 %50
  %52 = load i8, i8* %51, align 1, !tbaa !9
  %53 = icmp ne i8 %52, 0
  %54 = zext i1 %53 to i64
  %55 = add nuw nsw i64 %49, %54
  %56 = add nuw nsw i64 %28, %20
  %57 = getelementptr inbounds i8, i8* %32, i64 %56
  %58 = load i8, i8* %57, align 1, !tbaa !9
  %59 = icmp ne i8 %58, 0
  %60 = zext i1 %59 to i64
  %61 = add nuw nsw i64 %55, %60
  %62 = add nuw nsw i64 %28, %21
  %63 = getelementptr inbounds i8, i8* %32, i64 %62
  %64 = load i8, i8* %63, align 1, !tbaa !9
  %65 = icmp ne i8 %64, 0
  %66 = zext i1 %65 to i64
  %67 = add nuw nsw i64 %61, %66
  %68 = add nuw nsw i64 %28, 1
  %69 = add nuw nsw i64 %68, %20
  %70 = getelementptr inbounds i8, i8* %32, i64 %69
  %71 = load i8, i8* %70, align 1, !tbaa !9
  %72 = icmp ne i8 %71, 0
  %73 = zext i1 %72 to i64
  %74 = add nuw nsw i64 %67, %73
  %75 = add nuw nsw i64 %68, %19
  %76 = getelementptr inbounds i8, i8* %32, i64 %75
  %77 = load i8, i8* %76, align 1, !tbaa !9
  %78 = icmp ne i8 %77, 0
  %79 = zext i1 %78 to i64
  %80 = add nuw nsw i64 %74, %79
  %81 = add nuw nsw i64 %68, %21
  %82 = getelementptr inbounds i8, i8* %32, i64 %81
  %83 = load i8, i8* %82, align 1, !tbaa !9
  %84 = icmp ne i8 %83, 0
  %85 = zext i1 %84 to i64
  %86 = add nuw nsw i64 %80, %85
  %87 = add nuw nsw i64 %28, %19
  %88 = getelementptr inbounds i8, i8* %32, i64 %87
  %89 = load i8, i8* %88, align 1, !tbaa !9
  %90 = icmp eq i8 %89, 0
  %91 = icmp eq i64 %86, 3
  %92 = select i1 %90, i1 %91, i1 false
  br i1 %92, label %104, label %93

93:                                               ; preds = %38, %33
  %94 = phi i64 [ %68, %38 ], [ %37, %33 ]
  %95 = phi i64 [ %87, %38 ], [ %34, %33 ]
  %96 = phi i8 [ %89, %38 ], [ %36, %33 ]
  %97 = phi i64 [ %86, %38 ], [ 0, %33 ]
  %98 = icmp eq i8 %96, 1
  %99 = icmp ult i64 %97, 4
  %100 = select i1 %98, i1 %99, i1 false
  %101 = icmp ugt i64 %97, 1
  %102 = select i1 %100, i1 %101, i1 false
  %103 = zext i1 %102 to i8
  br label %104

104:                                              ; preds = %93, %38
  %105 = phi i64 [ %68, %38 ], [ %94, %93 ]
  %106 = phi i64 [ %87, %38 ], [ %95, %93 ]
  %107 = phi i8 [ 1, %38 ], [ %103, %93 ]
  %108 = load i8*, i8** @SURF_NEXT, align 8, !tbaa !5
  %109 = getelementptr inbounds i8, i8* %108, i64 %106
  store i8 %107, i8* %109, align 1, !tbaa !9
  %110 = icmp eq i64 %105, 640
  br i1 %110, label %22, label %27, !llvm.loop !13

111:                                              ; preds = %22
  %112 = load i8*, i8** @SURF_NEXT, align 8, !tbaa !5
  %113 = load i8*, i8** @SURF_CUR, align 8, !tbaa !5
  store i8* %113, i8** @SURF_NEXT, align 8, !tbaa !5
  store i8* %112, i8** @SURF_CUR, align 8, !tbaa !5
  br label %114

114:                                              ; preds = %117, %111
  %115 = phi i64 [ 0, %111 ], [ %118, %117 ]
  %116 = mul nuw nsw i64 %115, 640
  br label %120

117:                                              ; preds = %120
  %118 = add nuw nsw i64 %115, 1
  %119 = icmp eq i64 %118, 360
  br i1 %119, label %128, label %114, !llvm.loop !14

120:                                              ; preds = %120, %114
  %121 = phi i64 [ 0, %114 ], [ %126, %120 ]
  %122 = load i8*, i8** @SURF_CUR, align 8, !tbaa !5
  %123 = add nuw nsw i64 %121, %116
  %124 = getelementptr inbounds i8, i8* %122, i64 %123
  %125 = load i8, i8* %124, align 1, !tbaa !9
  call void @putPixel(i64 noundef %115, i64 noundef %121, i8 noundef zeroext %125) #3
  %126 = add nuw nsw i64 %121, 1
  %127 = icmp eq i64 %126, 640
  br i1 %127, label %117, label %120, !llvm.loop !15

128:                                              ; preds = %117
  call void @flush() #3
  %129 = call zeroext i8 @finished() #3
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %25, label %131

131:                                              ; preds = %128, %11
  call void @llvm.lifetime.end.p0i8(i64 230400, i8* nonnull %12) #3
  call void @llvm.lifetime.end.p0i8(i64 230400, i8* nonnull %3) #3
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @init(i64 noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i8 @finished() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare zeroext i8 @getZeroOrOne() local_unnamed_addr #2

declare void @putPixel(i64 noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @flush() local_unnamed_addr #2

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
