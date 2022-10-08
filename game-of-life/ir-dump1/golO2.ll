; ModuleID = 'gol.c'
source_filename = "gol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Surf = type { i64, i64, i8* }

; Function Attrs: mustprogress nofree nosync nounwind uwtable willreturn
define dso_local void @swap(%struct.Surf* nocapture noundef %0, %struct.Surf* nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.Surf, align 8
  %4 = bitcast %struct.Surf* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4)
  %5 = bitcast %struct.Surf* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %4, i8* noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !5
  %6 = bitcast %struct.Surf* %1 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %5, i8* noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !5
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %6, i8* noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !5
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @construct(%struct.Surf* nocapture noundef writeonly %0, i8* noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.Surf, %struct.Surf* %0, i64 0, i32 0
  store i64 %3, i64* %5, align 8, !tbaa !12
  %6 = getelementptr inbounds %struct.Surf, %struct.Surf* %0, i64 0, i32 1
  store i64 %2, i64* %6, align 8, !tbaa !14
  %7 = getelementptr inbounds %struct.Surf, %struct.Surf* %0, i64 0, i32 2
  store i8* %1, i8** %7, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local void @setVal(%struct.Surf* nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #4 {
  %5 = getelementptr inbounds %struct.Surf, %struct.Surf* %0, i64 0, i32 2
  %6 = load i8*, i8** %5, align 8, !tbaa !15
  %7 = getelementptr inbounds %struct.Surf, %struct.Surf* %0, i64 0, i32 1
  %8 = load i64, i64* %7, align 8, !tbaa !14
  %9 = mul i64 %8, %2
  %10 = add i64 %9, %1
  %11 = getelementptr inbounds i8, i8* %6, i64 %10
  store i8 %3, i8* %11, align 1, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local zeroext i8 @getVal(%struct.Surf* nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.Surf, %struct.Surf* %0, i64 0, i32 2
  %5 = load i8*, i8** %4, align 8, !tbaa !15
  %6 = getelementptr inbounds %struct.Surf, %struct.Surf* %0, i64 0, i32 1
  %7 = load i64, i64* %6, align 8, !tbaa !14
  %8 = mul i64 %7, %2
  %9 = add i64 %8, %1
  %10 = getelementptr inbounds i8, i8* %5, i64 %9
  %11 = load i8, i8* %10, align 1, !tbaa !16
  ret i8 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @filled(i8 noundef zeroext %0) local_unnamed_addr #6 {
  %2 = icmp ne i8 %0, 0
  %3 = zext i1 %2 to i64
  ret i64 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i64 @countNeighboursCommon(%struct.Surf* nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #5 {
  %4 = add i64 %1, -1
  %5 = add i64 %2, -1
  %6 = getelementptr inbounds %struct.Surf, %struct.Surf* %0, i64 0, i32 2
  %7 = load i8*, i8** %6, align 8, !tbaa !15
  %8 = getelementptr inbounds %struct.Surf, %struct.Surf* %0, i64 0, i32 1
  %9 = load i64, i64* %8, align 8, !tbaa !14
  %10 = mul i64 %9, %5
  %11 = add i64 %10, %4
  %12 = getelementptr inbounds i8, i8* %7, i64 %11
  %13 = load i8, i8* %12, align 1, !tbaa !16
  %14 = icmp ne i8 %13, 0
  %15 = zext i1 %14 to i64
  %16 = mul i64 %9, %2
  %17 = add i64 %16, %4
  %18 = getelementptr inbounds i8, i8* %7, i64 %17
  %19 = load i8, i8* %18, align 1, !tbaa !16
  %20 = icmp ne i8 %19, 0
  %21 = zext i1 %20 to i64
  %22 = add nuw nsw i64 %21, %15
  %23 = add i64 %2, 1
  %24 = mul i64 %9, %23
  %25 = add i64 %24, %4
  %26 = getelementptr inbounds i8, i8* %7, i64 %25
  %27 = load i8, i8* %26, align 1, !tbaa !16
  %28 = icmp ne i8 %27, 0
  %29 = zext i1 %28 to i64
  %30 = add nuw nsw i64 %22, %29
  %31 = add i64 %10, %1
  %32 = getelementptr inbounds i8, i8* %7, i64 %31
  %33 = load i8, i8* %32, align 1, !tbaa !16
  %34 = icmp ne i8 %33, 0
  %35 = zext i1 %34 to i64
  %36 = add nuw nsw i64 %30, %35
  %37 = add i64 %24, %1
  %38 = getelementptr inbounds i8, i8* %7, i64 %37
  %39 = load i8, i8* %38, align 1, !tbaa !16
  %40 = icmp ne i8 %39, 0
  %41 = zext i1 %40 to i64
  %42 = add nuw nsw i64 %36, %41
  %43 = add i64 %1, 1
  %44 = add i64 %10, %43
  %45 = getelementptr inbounds i8, i8* %7, i64 %44
  %46 = load i8, i8* %45, align 1, !tbaa !16
  %47 = icmp ne i8 %46, 0
  %48 = zext i1 %47 to i64
  %49 = add nuw nsw i64 %42, %48
  %50 = add i64 %16, %43
  %51 = getelementptr inbounds i8, i8* %7, i64 %50
  %52 = load i8, i8* %51, align 1, !tbaa !16
  %53 = icmp ne i8 %52, 0
  %54 = zext i1 %53 to i64
  %55 = add nuw nsw i64 %49, %54
  %56 = add i64 %24, %43
  %57 = getelementptr inbounds i8, i8* %7, i64 %56
  %58 = load i8, i8* %57, align 1, !tbaa !16
  %59 = icmp ne i8 %58, 0
  %60 = zext i1 %59 to i64
  %61 = add nuw nsw i64 %55, %60
  ret i64 %61
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i64 @countNeighbours(%struct.Surf* nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #5 {
  %4 = icmp ne i64 %1, 0
  %5 = icmp ne i64 %2, 0
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %74

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Surf, %struct.Surf* %0, i64 0, i32 1
  %9 = load i64, i64* %8, align 8, !tbaa !14
  %10 = add i64 %9, -1
  %11 = icmp ugt i64 %10, %1
  br i1 %11, label %12, label %74

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.Surf, %struct.Surf* %0, i64 0, i32 0
  %14 = load i64, i64* %13, align 8, !tbaa !12
  %15 = add i64 %14, -1
  %16 = icmp ugt i64 %15, %2
  br i1 %16, label %17, label %74

17:                                               ; preds = %12
  %18 = add i64 %1, -1
  %19 = add i64 %2, -1
  %20 = getelementptr inbounds %struct.Surf, %struct.Surf* %0, i64 0, i32 2
  %21 = load i8*, i8** %20, align 8, !tbaa !15
  %22 = mul i64 %9, %19
  %23 = add i64 %22, %18
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1, !tbaa !16
  %26 = icmp ne i8 %25, 0
  %27 = zext i1 %26 to i64
  %28 = mul i64 %9, %2
  %29 = add i64 %28, %18
  %30 = getelementptr inbounds i8, i8* %21, i64 %29
  %31 = load i8, i8* %30, align 1, !tbaa !16
  %32 = icmp ne i8 %31, 0
  %33 = zext i1 %32 to i64
  %34 = add nuw nsw i64 %33, %27
  %35 = add nuw i64 %2, 1
  %36 = mul i64 %9, %35
  %37 = add i64 %36, %18
  %38 = getelementptr inbounds i8, i8* %21, i64 %37
  %39 = load i8, i8* %38, align 1, !tbaa !16
  %40 = icmp ne i8 %39, 0
  %41 = zext i1 %40 to i64
  %42 = add nuw nsw i64 %34, %41
  %43 = add i64 %22, %1
  %44 = getelementptr inbounds i8, i8* %21, i64 %43
  %45 = load i8, i8* %44, align 1, !tbaa !16
  %46 = icmp ne i8 %45, 0
  %47 = zext i1 %46 to i64
  %48 = add nuw nsw i64 %42, %47
  %49 = add i64 %36, %1
  %50 = getelementptr inbounds i8, i8* %21, i64 %49
  %51 = load i8, i8* %50, align 1, !tbaa !16
  %52 = icmp ne i8 %51, 0
  %53 = zext i1 %52 to i64
  %54 = add nuw nsw i64 %48, %53
  %55 = add nuw i64 %1, 1
  %56 = add i64 %22, %55
  %57 = getelementptr inbounds i8, i8* %21, i64 %56
  %58 = load i8, i8* %57, align 1, !tbaa !16
  %59 = icmp ne i8 %58, 0
  %60 = zext i1 %59 to i64
  %61 = add nuw nsw i64 %54, %60
  %62 = add i64 %28, %55
  %63 = getelementptr inbounds i8, i8* %21, i64 %62
  %64 = load i8, i8* %63, align 1, !tbaa !16
  %65 = icmp ne i8 %64, 0
  %66 = zext i1 %65 to i64
  %67 = add nuw nsw i64 %61, %66
  %68 = add i64 %36, %55
  %69 = getelementptr inbounds i8, i8* %21, i64 %68
  %70 = load i8, i8* %69, align 1, !tbaa !16
  %71 = icmp ne i8 %70, 0
  %72 = zext i1 %71 to i64
  %73 = add nuw nsw i64 %67, %72
  br label %74

74:                                               ; preds = %3, %7, %12, %17
  %75 = phi i64 [ %73, %17 ], [ 0, %12 ], [ 0, %7 ], [ 0, %3 ]
  ret i64 %75
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local zeroext i8 @calcState(%struct.Surf* nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #5 {
  %4 = tail call i64 @countNeighbours(%struct.Surf* noundef %0, i64 noundef %1, i64 noundef %2)
  %5 = getelementptr inbounds %struct.Surf, %struct.Surf* %0, i64 0, i32 2
  %6 = load i8*, i8** %5, align 8, !tbaa !15
  %7 = getelementptr inbounds %struct.Surf, %struct.Surf* %0, i64 0, i32 1
  %8 = load i64, i64* %7, align 8, !tbaa !14
  %9 = mul i64 %8, %2
  %10 = add i64 %9, %1
  %11 = getelementptr inbounds i8, i8* %6, i64 %10
  %12 = load i8, i8* %11, align 1, !tbaa !16
  %13 = icmp eq i8 %12, 0
  %14 = icmp eq i64 %4, 3
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %23, label %16

16:                                               ; preds = %3
  %17 = icmp eq i8 %12, 1
  %18 = icmp ult i64 %4, 4
  %19 = select i1 %17, i1 %18, i1 false
  %20 = icmp ugt i64 %4, 1
  %21 = select i1 %19, i1 %20, i1 false
  %22 = zext i1 %21 to i8
  br label %23

23:                                               ; preds = %16, %3
  %24 = phi i8 [ 1, %3 ], [ %22, %16 ]
  ret i8 %24
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @calcSurf(%struct.Surf* nocapture noundef readonly %0, %struct.Surf* nocapture noundef readonly %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.Surf, %struct.Surf* %1, i64 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !12
  %5 = getelementptr inbounds %struct.Surf, %struct.Surf* %1, i64 0, i32 1
  %6 = load i64, i64* %5, align 8, !tbaa !14
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  %9 = icmp eq i64 %4, 0
  %10 = getelementptr inbounds %struct.Surf, %struct.Surf* %1, i64 0, i32 2
  %11 = getelementptr inbounds %struct.Surf, %struct.Surf* %0, i64 0, i32 2
  %12 = getelementptr inbounds %struct.Surf, %struct.Surf* %0, i64 0, i32 1
  br label %13

13:                                               ; preds = %8, %16
  %14 = phi i64 [ 0, %8 ], [ %17, %16 ]
  br i1 %9, label %16, label %19

15:                                               ; preds = %16, %2
  ret void

16:                                               ; preds = %38, %13
  %17 = add nuw i64 %14, 1
  %18 = icmp eq i64 %17, %6
  br i1 %18, label %15, label %13, !llvm.loop !17

19:                                               ; preds = %13, %38
  %20 = phi i64 [ %45, %38 ], [ 0, %13 ]
  %21 = tail call i64 @countNeighbours(%struct.Surf* noundef %1, i64 noundef %14, i64 noundef %20) #8
  %22 = load i8*, i8** %10, align 8, !tbaa !15
  %23 = load i64, i64* %5, align 8, !tbaa !14
  %24 = mul i64 %23, %20
  %25 = add i64 %24, %14
  %26 = getelementptr inbounds i8, i8* %22, i64 %25
  %27 = load i8, i8* %26, align 1, !tbaa !16
  %28 = icmp eq i8 %27, 0
  %29 = icmp eq i64 %21, 3
  %30 = select i1 %28, i1 %29, i1 false
  br i1 %30, label %38, label %31

31:                                               ; preds = %19
  %32 = icmp eq i8 %27, 1
  %33 = icmp ult i64 %21, 4
  %34 = select i1 %32, i1 %33, i1 false
  %35 = icmp ugt i64 %21, 1
  %36 = select i1 %34, i1 %35, i1 false
  %37 = zext i1 %36 to i8
  br label %38

38:                                               ; preds = %19, %31
  %39 = phi i8 [ 1, %19 ], [ %37, %31 ]
  %40 = load i8*, i8** %11, align 8, !tbaa !15
  %41 = load i64, i64* %12, align 8, !tbaa !14
  %42 = mul i64 %41, %20
  %43 = add i64 %42, %14
  %44 = getelementptr inbounds i8, i8* %40, i64 %43
  store i8 %39, i8* %44, align 1, !tbaa !16
  %45 = add nuw i64 %20, 1
  %46 = icmp eq i64 %45, %4
  br i1 %46, label %16, label %19, !llvm.loop !19
}

attributes #0 = { mustprogress nofree nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!5 = !{i64 0, i64 8, !6, i64 8, i64 8, !6, i64 16, i64 8, !10}
!6 = !{!7, !7, i64 0}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!13, !7, i64 0}
!13 = !{!"", !7, i64 0, !7, i64 8, !11, i64 16}
!14 = !{!13, !7, i64 8}
!15 = !{!13, !11, i64 16}
!16 = !{!8, !8, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = distinct !{!19, !18}
