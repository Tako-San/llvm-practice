; ModuleID = 'main.cc'
source_filename = "main.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.gol::Surf" = type { i64, i64, i8* }

; Function Attrs: mustprogress uwtable
define dso_local void @_Z4drawN3gol4SurfE(%"struct.gol::Surf"* nocapture noundef readonly byval(%"struct.gol::Surf") align 8 %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %"struct.gol::Surf", %"struct.gol::Surf"* %0, i64 0, i32 0
  %3 = load i64, i64* %2, align 8, !tbaa !5
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.gol::Surf", %"struct.gol::Surf"* %0, i64 0, i32 1
  %7 = load i64, i64* %6, align 8, !tbaa !11
  %8 = icmp eq i64 %7, 0
  %9 = getelementptr inbounds %"struct.gol::Surf", %"struct.gol::Surf"* %0, i64 0, i32 2
  %10 = load i8*, i8** %9, align 8
  br label %11

11:                                               ; preds = %5, %16
  %12 = phi i64 [ 0, %5 ], [ %17, %16 ]
  br i1 %8, label %16, label %13

13:                                               ; preds = %11
  %14 = mul i64 %7, %12
  br label %19

15:                                               ; preds = %16, %1
  tail call void @_ZN2dw5flushEv()
  ret void

16:                                               ; preds = %19, %11
  %17 = add nuw i64 %12, 1
  %18 = icmp eq i64 %17, %3
  br i1 %18, label %15, label %11, !llvm.loop !12

19:                                               ; preds = %13, %19
  %20 = phi i64 [ 0, %13 ], [ %24, %19 ]
  %21 = add i64 %14, %20
  %22 = getelementptr inbounds i8, i8* %10, i64 %21
  %23 = load i8, i8* %22, align 1, !tbaa !14
  tail call void @_ZN2dw8putPixelEmmh(i64 noundef %12, i64 noundef %20, i8 noundef zeroext %23)
  %24 = add nuw i64 %20, 1
  %25 = icmp eq i64 %24, %7
  br i1 %25, label %16, label %19, !llvm.loop !15
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @_ZN2dw8putPixelEmmh(i64 noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare void @_ZN2dw5flushEv() local_unnamed_addr #2

; Function Attrs: norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
  %1 = alloca %"struct.gol::Surf", align 8
  %2 = alloca %"struct.gol::Surf", align 8
  %3 = bitcast %"struct.gol::Surf"* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #5
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false) #5
  call void @_ZN3gol9constructERNS_4SurfEmm(%"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 640, i64 noundef 360)
  call void @_ZN3gol8fillRandERNS_4SurfE(%"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24) %1)
  %4 = bitcast %"struct.gol::Surf"* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #5
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false) #5
  call void @_ZN3gol9constructERNS_4SurfEmm(%"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 640, i64 noundef 360)
  call void @_ZN2dw4initEmm(i64 noundef 360, i64 noundef 640)
  %5 = call noundef zeroext i1 @_ZN2dw8finishedEv()
  br i1 %5, label %33, label %6

6:                                                ; preds = %0
  %7 = getelementptr inbounds %"struct.gol::Surf", %"struct.gol::Surf"* %1, i64 0, i32 0
  %8 = getelementptr inbounds %"struct.gol::Surf", %"struct.gol::Surf"* %1, i64 0, i32 1
  %9 = getelementptr inbounds %"struct.gol::Surf", %"struct.gol::Surf"* %1, i64 0, i32 2
  br label %10

10:                                               ; preds = %6, %31
  call void @_ZN3gol8calcSurfERNS_4SurfERKS0_(%"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24) %2, %"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24) %1)
  call void @_ZN3gol4swapERNS_4SurfES1_(%"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24) %2, %"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24) %1)
  %11 = load i64, i64* %7, align 8, !tbaa.struct !16
  %12 = load i64, i64* %8, align 8, !tbaa.struct !19
  %13 = load i8*, i8** %9, align 8, !tbaa.struct !20
  %14 = icmp eq i64 %11, 0
  br i1 %14, label %31, label %15

15:                                               ; preds = %10
  %16 = icmp eq i64 %12, 0
  br label %17

17:                                               ; preds = %21, %15
  %18 = phi i64 [ 0, %15 ], [ %22, %21 ]
  br i1 %16, label %21, label %19

19:                                               ; preds = %17
  %20 = mul i64 %18, %12
  br label %24

21:                                               ; preds = %24, %17
  %22 = add nuw i64 %18, 1
  %23 = icmp eq i64 %22, %11
  br i1 %23, label %31, label %17, !llvm.loop !12

24:                                               ; preds = %24, %19
  %25 = phi i64 [ 0, %19 ], [ %29, %24 ]
  %26 = add i64 %25, %20
  %27 = getelementptr inbounds i8, i8* %13, i64 %26
  %28 = load i8, i8* %27, align 1, !tbaa !14
  call void @_ZN2dw8putPixelEmmh(i64 noundef %18, i64 noundef %25, i8 noundef zeroext %28)
  %29 = add nuw i64 %25, 1
  %30 = icmp eq i64 %29, %12
  br i1 %30, label %21, label %24, !llvm.loop !15

31:                                               ; preds = %21, %10
  call void @_ZN2dw5flushEv()
  %32 = call noundef zeroext i1 @_ZN2dw8finishedEv()
  br i1 %32, label %33, label %10, !llvm.loop !21

33:                                               ; preds = %31, %0
  call void @_ZN3gol7destroyERNS_4SurfE(%"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24) %1)
  call void @_ZN3gol7destroyERNS_4SurfE(%"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #5
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #5
  ret i32 0
}

declare void @_ZN3gol9constructERNS_4SurfEmm(%"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24), i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZN3gol8fillRandERNS_4SurfE(%"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN2dw4initEmm(i64 noundef, i64 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2dw8finishedEv() local_unnamed_addr #2

declare void @_ZN3gol8calcSurfERNS_4SurfERKS0_(%"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24), %"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN3gol4swapERNS_4SurfES1_(%"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24), %"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN3gol7destroyERNS_4SurfE(%"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!5 = !{!6, !7, i64 0}
!6 = !{!"_ZTSN3gol4SurfE", !7, i64 0, !7, i64 8, !10, i64 16}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!6, !7, i64 8}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!8, !8, i64 0}
!15 = distinct !{!15, !13}
!16 = !{i64 0, i64 8, !17, i64 8, i64 8, !17, i64 16, i64 8, !18}
!17 = !{!7, !7, i64 0}
!18 = !{!10, !10, i64 0}
!19 = !{i64 0, i64 8, !17, i64 8, i64 8, !18}
!20 = !{i64 0, i64 8, !18}
!21 = distinct !{!21, !13}
