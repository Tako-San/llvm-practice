; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Surf = type { i64, i64, i8* }

; Function Attrs: nounwind uwtable
define dso_local void @fillRand(%struct.Surf* nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Surf, %struct.Surf* %0, i64 0, i32 0
  %3 = load i64, i64* %2, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.Surf, %struct.Surf* %0, i64 0, i32 1
  %5 = load i64, i64* %4, align 8, !tbaa !11
  %6 = mul i64 %5, %3
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.Surf, %struct.Surf* %0, i64 0, i32 2
  br label %11

10:                                               ; preds = %11, %1
  ret void

11:                                               ; preds = %8, %11
  %12 = phi i64 [ 0, %8 ], [ %16, %11 ]
  %13 = tail call zeroext i8 @getZeroOrOne() #4
  %14 = load i8*, i8** %9, align 8, !tbaa !12
  %15 = getelementptr inbounds i8, i8* %14, i64 %12
  store i8 %13, i8* %15, align 1, !tbaa !13
  %16 = add nuw i64 %12, 1
  %17 = icmp eq i64 %16, %6
  br i1 %17, label %10, label %11, !llvm.loop !14
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare zeroext i8 @getZeroOrOne() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @draw(%struct.Surf* nocapture noundef readonly byval(%struct.Surf) align 8 %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Surf, %struct.Surf* %0, i64 0, i32 0
  %3 = load i64, i64* %2, align 8, !tbaa !5
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Surf, %struct.Surf* %0, i64 0, i32 1
  %7 = load i64, i64* %6, align 8, !tbaa !11
  %8 = icmp eq i64 %7, 0
  %9 = getelementptr inbounds %struct.Surf, %struct.Surf* %0, i64 0, i32 2
  %10 = load i8*, i8** %9, align 8
  br label %11

11:                                               ; preds = %5, %16
  %12 = phi i64 [ 0, %5 ], [ %17, %16 ]
  br i1 %8, label %16, label %13

13:                                               ; preds = %11
  %14 = mul i64 %7, %12
  br label %19

15:                                               ; preds = %16, %1
  tail call void @flush() #4
  ret void

16:                                               ; preds = %19, %11
  %17 = add nuw i64 %12, 1
  %18 = icmp eq i64 %17, %3
  br i1 %18, label %15, label %11, !llvm.loop !16

19:                                               ; preds = %13, %19
  %20 = phi i64 [ 0, %13 ], [ %24, %19 ]
  %21 = add i64 %14, %20
  %22 = getelementptr inbounds i8, i8* %10, i64 %21
  %23 = load i8, i8* %22, align 1, !tbaa !13
  tail call void @putPixel(i64 noundef %12, i64 noundef %20, i8 noundef zeroext %23) #4
  %24 = add nuw i64 %20, 1
  %25 = icmp eq i64 %24, %7
  br i1 %25, label %16, label %19, !llvm.loop !17
}

declare void @putPixel(i64 noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @flush() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca %struct.Surf, align 8
  %2 = alloca %struct.Surf, align 8
  %3 = bitcast %struct.Surf* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #4
  %4 = tail call i8* @llvm.stacksave()
  %5 = alloca [230400 x i8], align 16
  %6 = getelementptr inbounds [230400 x i8], [230400 x i8]* %5, i64 0, i64 0
  call void @construct(%struct.Surf* noundef nonnull %1, i8* noundef nonnull %6, i64 noundef 640, i64 noundef 360) #4
  %7 = getelementptr inbounds %struct.Surf, %struct.Surf* %1, i64 0, i32 0
  %8 = load i64, i64* %7, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.Surf, %struct.Surf* %1, i64 0, i32 1
  %10 = load i64, i64* %9, align 8, !tbaa !11
  %11 = mul i64 %10, %8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %0
  %14 = getelementptr inbounds %struct.Surf, %struct.Surf* %1, i64 0, i32 2
  br label %15

15:                                               ; preds = %15, %13
  %16 = phi i64 [ 0, %13 ], [ %20, %15 ]
  %17 = call zeroext i8 @getZeroOrOne() #4
  %18 = load i8*, i8** %14, align 8, !tbaa !12
  %19 = getelementptr inbounds i8, i8* %18, i64 %16
  store i8 %17, i8* %19, align 1, !tbaa !13
  %20 = add nuw i64 %16, 1
  %21 = icmp eq i64 %20, %11
  br i1 %21, label %22, label %15, !llvm.loop !14

22:                                               ; preds = %15, %0
  %23 = bitcast %struct.Surf* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %23) #4
  %24 = alloca [230400 x i8], align 16
  %25 = getelementptr inbounds [230400 x i8], [230400 x i8]* %24, i64 0, i64 0
  call void @construct(%struct.Surf* noundef nonnull %2, i8* noundef nonnull %25, i64 noundef 640, i64 noundef 360) #4
  call void @init(i64 noundef 360, i64 noundef 640) #4
  %26 = call zeroext i8 @finished() #4
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %54

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.Surf, %struct.Surf* %1, i64 0, i32 2
  br label %30

30:                                               ; preds = %28, %51
  call void @calcSurf(%struct.Surf* noundef nonnull %2, %struct.Surf* noundef nonnull %1) #4
  call void @swap(%struct.Surf* noundef nonnull %2, %struct.Surf* noundef nonnull %1) #4
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load i8*, i8** %29, align 8
  %34 = icmp eq i64 %31, 0
  br i1 %34, label %51, label %35

35:                                               ; preds = %30
  %36 = icmp eq i64 %32, 0
  br label %37

37:                                               ; preds = %41, %35
  %38 = phi i64 [ 0, %35 ], [ %42, %41 ]
  br i1 %36, label %41, label %39

39:                                               ; preds = %37
  %40 = mul i64 %38, %32
  br label %44

41:                                               ; preds = %44, %37
  %42 = add nuw i64 %38, 1
  %43 = icmp eq i64 %42, %31
  br i1 %43, label %51, label %37, !llvm.loop !16

44:                                               ; preds = %44, %39
  %45 = phi i64 [ 0, %39 ], [ %49, %44 ]
  %46 = add i64 %45, %40
  %47 = getelementptr inbounds i8, i8* %33, i64 %46
  %48 = load i8, i8* %47, align 1, !tbaa !13
  call void @putPixel(i64 noundef %38, i64 noundef %45, i8 noundef zeroext %48) #4
  %49 = add nuw i64 %45, 1
  %50 = icmp eq i64 %49, %32
  br i1 %50, label %41, label %44, !llvm.loop !17

51:                                               ; preds = %41, %30
  call void @flush() #4
  %52 = call zeroext i8 @finished() #4
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %30, label %54, !llvm.loop !18

54:                                               ; preds = %51, %22
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %23) #4
  call void @llvm.stackrestore(i8* %4)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #4
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #3

declare void @construct(%struct.Surf* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @init(i64 noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i8 @finished() local_unnamed_addr #2

declare void @calcSurf(%struct.Surf* noundef, %struct.Surf* noundef) local_unnamed_addr #2

declare void @swap(%struct.Surf* noundef, %struct.Surf* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!5 = !{!6, !7, i64 0}
!6 = !{!"", !7, i64 0, !7, i64 8, !10, i64 16}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!6, !7, i64 8}
!12 = !{!6, !10, i64 16}
!13 = !{!8, !8, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !15}
