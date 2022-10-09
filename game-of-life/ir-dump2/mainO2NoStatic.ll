; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@SURF_NEXT = dso_local local_unnamed_addr global i8* null, align 8
@SURF_CUR = dso_local local_unnamed_addr global i8* null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local void @swap() local_unnamed_addr #0 {
  %1 = load i8*, i8** @SURF_NEXT, align 8, !tbaa !5
  %2 = load i8*, i8** @SURF_CUR, align 8, !tbaa !5
  store i8* %2, i8** @SURF_NEXT, align 8, !tbaa !5
  store i8* %1, i8** @SURF_CUR, align 8, !tbaa !5
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @filled(i8 noundef zeroext %0) local_unnamed_addr #2 {
  %2 = icmp ne i8 %0, 0
  %3 = zext i1 %2 to i64
  ret i64 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @idx(i64 noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = mul i64 %1, 640
  %4 = add i64 %3, %0
  ret i64 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i64 @countNeighboursCommon(i64 noundef %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = load i8*, i8** @SURF_CUR, align 8, !tbaa !5
  %4 = add i64 %0, -1
  %5 = mul i64 %1, 640
  %6 = add i64 %5, -640
  %7 = add i64 %6, %4
  %8 = getelementptr inbounds i8, i8* %3, i64 %7
  %9 = load i8, i8* %8, align 1, !tbaa !9
  %10 = icmp ne i8 %9, 0
  %11 = zext i1 %10 to i64
  %12 = add i64 %5, %4
  %13 = getelementptr inbounds i8, i8* %3, i64 %12
  %14 = load i8, i8* %13, align 1, !tbaa !9
  %15 = icmp ne i8 %14, 0
  %16 = zext i1 %15 to i64
  %17 = add nuw nsw i64 %16, %11
  %18 = add i64 %5, 640
  %19 = add i64 %18, %4
  %20 = getelementptr inbounds i8, i8* %3, i64 %19
  %21 = load i8, i8* %20, align 1, !tbaa !9
  %22 = icmp ne i8 %21, 0
  %23 = zext i1 %22 to i64
  %24 = add nuw nsw i64 %17, %23
  %25 = add i64 %6, %0
  %26 = getelementptr inbounds i8, i8* %3, i64 %25
  %27 = load i8, i8* %26, align 1, !tbaa !9
  %28 = icmp ne i8 %27, 0
  %29 = zext i1 %28 to i64
  %30 = add nuw nsw i64 %24, %29
  %31 = add i64 %18, %0
  %32 = getelementptr inbounds i8, i8* %3, i64 %31
  %33 = load i8, i8* %32, align 1, !tbaa !9
  %34 = icmp ne i8 %33, 0
  %35 = zext i1 %34 to i64
  %36 = add nuw nsw i64 %30, %35
  %37 = add i64 %0, 1
  %38 = add i64 %6, %37
  %39 = getelementptr inbounds i8, i8* %3, i64 %38
  %40 = load i8, i8* %39, align 1, !tbaa !9
  %41 = icmp ne i8 %40, 0
  %42 = zext i1 %41 to i64
  %43 = add nuw nsw i64 %36, %42
  %44 = add i64 %5, %37
  %45 = getelementptr inbounds i8, i8* %3, i64 %44
  %46 = load i8, i8* %45, align 1, !tbaa !9
  %47 = icmp ne i8 %46, 0
  %48 = zext i1 %47 to i64
  %49 = add nuw nsw i64 %43, %48
  %50 = add i64 %18, %37
  %51 = getelementptr inbounds i8, i8* %3, i64 %50
  %52 = load i8, i8* %51, align 1, !tbaa !9
  %53 = icmp ne i8 %52, 0
  %54 = zext i1 %53 to i64
  %55 = add nuw nsw i64 %49, %54
  ret i64 %55
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i64 @countNeighbours(i64 noundef %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = add i64 %0, -1
  %4 = icmp ult i64 %3, 638
  %5 = add i64 %1, -1
  %6 = icmp ult i64 %5, 358
  %7 = and i1 %4, %6
  br i1 %7, label %8, label %61

8:                                                ; preds = %2
  %9 = load i8*, i8** @SURF_CUR, align 8, !tbaa !5
  %10 = mul nuw nsw i64 %1, 640
  %11 = add nsw i64 %10, -640
  %12 = add nuw nsw i64 %11, %3
  %13 = getelementptr inbounds i8, i8* %9, i64 %12
  %14 = load i8, i8* %13, align 1, !tbaa !9
  %15 = icmp ne i8 %14, 0
  %16 = zext i1 %15 to i64
  %17 = add nuw nsw i64 %10, %3
  %18 = getelementptr inbounds i8, i8* %9, i64 %17
  %19 = load i8, i8* %18, align 1, !tbaa !9
  %20 = icmp ne i8 %19, 0
  %21 = zext i1 %20 to i64
  %22 = add nuw nsw i64 %21, %16
  %23 = add nuw nsw i64 %10, 640
  %24 = add nuw nsw i64 %23, %3
  %25 = getelementptr inbounds i8, i8* %9, i64 %24
  %26 = load i8, i8* %25, align 1, !tbaa !9
  %27 = icmp ne i8 %26, 0
  %28 = zext i1 %27 to i64
  %29 = add nuw nsw i64 %22, %28
  %30 = add nuw nsw i64 %11, %0
  %31 = getelementptr inbounds i8, i8* %9, i64 %30
  %32 = load i8, i8* %31, align 1, !tbaa !9
  %33 = icmp ne i8 %32, 0
  %34 = zext i1 %33 to i64
  %35 = add nuw nsw i64 %29, %34
  %36 = add nuw nsw i64 %23, %0
  %37 = getelementptr inbounds i8, i8* %9, i64 %36
  %38 = load i8, i8* %37, align 1, !tbaa !9
  %39 = icmp ne i8 %38, 0
  %40 = zext i1 %39 to i64
  %41 = add nuw nsw i64 %35, %40
  %42 = add nuw nsw i64 %0, 1
  %43 = add nuw nsw i64 %11, %42
  %44 = getelementptr inbounds i8, i8* %9, i64 %43
  %45 = load i8, i8* %44, align 1, !tbaa !9
  %46 = icmp ne i8 %45, 0
  %47 = zext i1 %46 to i64
  %48 = add nuw nsw i64 %41, %47
  %49 = add nuw nsw i64 %10, %42
  %50 = getelementptr inbounds i8, i8* %9, i64 %49
  %51 = load i8, i8* %50, align 1, !tbaa !9
  %52 = icmp ne i8 %51, 0
  %53 = zext i1 %52 to i64
  %54 = add nuw nsw i64 %48, %53
  %55 = add nuw nsw i64 %23, %42
  %56 = getelementptr inbounds i8, i8* %9, i64 %55
  %57 = load i8, i8* %56, align 1, !tbaa !9
  %58 = icmp ne i8 %57, 0
  %59 = zext i1 %58 to i64
  %60 = add nuw nsw i64 %54, %59
  br label %61

61:                                               ; preds = %2, %8
  %62 = phi i64 [ %60, %8 ], [ 0, %2 ]
  ret i64 %62
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local zeroext i8 @calcState(i64 noundef %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = add i64 %0, -1
  %4 = icmp ult i64 %3, 638
  %5 = add i64 %1, -1
  %6 = icmp ult i64 %5, 358
  %7 = and i1 %4, %6
  %8 = load i8*, i8** @SURF_CUR, align 8, !tbaa !5
  %9 = mul i64 %1, 640
  br i1 %7, label %14, label %10

10:                                               ; preds = %2
  %11 = add i64 %9, %0
  %12 = getelementptr inbounds i8, i8* %8, i64 %11
  %13 = load i8, i8* %12, align 1, !tbaa !9
  br label %71

14:                                               ; preds = %2
  %15 = add nsw i64 %9, -640
  %16 = add nuw nsw i64 %15, %3
  %17 = getelementptr inbounds i8, i8* %8, i64 %16
  %18 = load i8, i8* %17, align 1, !tbaa !9
  %19 = icmp ne i8 %18, 0
  %20 = zext i1 %19 to i64
  %21 = add nuw nsw i64 %9, %3
  %22 = getelementptr inbounds i8, i8* %8, i64 %21
  %23 = load i8, i8* %22, align 1, !tbaa !9
  %24 = icmp ne i8 %23, 0
  %25 = zext i1 %24 to i64
  %26 = add nuw nsw i64 %25, %20
  %27 = add nuw nsw i64 %9, 640
  %28 = add nuw nsw i64 %27, %3
  %29 = getelementptr inbounds i8, i8* %8, i64 %28
  %30 = load i8, i8* %29, align 1, !tbaa !9
  %31 = icmp ne i8 %30, 0
  %32 = zext i1 %31 to i64
  %33 = add nuw nsw i64 %26, %32
  %34 = add nuw nsw i64 %15, %0
  %35 = getelementptr inbounds i8, i8* %8, i64 %34
  %36 = load i8, i8* %35, align 1, !tbaa !9
  %37 = icmp ne i8 %36, 0
  %38 = zext i1 %37 to i64
  %39 = add nuw nsw i64 %33, %38
  %40 = add nuw nsw i64 %27, %0
  %41 = getelementptr inbounds i8, i8* %8, i64 %40
  %42 = load i8, i8* %41, align 1, !tbaa !9
  %43 = icmp ne i8 %42, 0
  %44 = zext i1 %43 to i64
  %45 = add nuw nsw i64 %39, %44
  %46 = add nuw nsw i64 %0, 1
  %47 = add nuw nsw i64 %15, %46
  %48 = getelementptr inbounds i8, i8* %8, i64 %47
  %49 = load i8, i8* %48, align 1, !tbaa !9
  %50 = icmp ne i8 %49, 0
  %51 = zext i1 %50 to i64
  %52 = add nuw nsw i64 %45, %51
  %53 = add nuw nsw i64 %9, %46
  %54 = getelementptr inbounds i8, i8* %8, i64 %53
  %55 = load i8, i8* %54, align 1, !tbaa !9
  %56 = icmp ne i8 %55, 0
  %57 = zext i1 %56 to i64
  %58 = add nuw nsw i64 %52, %57
  %59 = add nuw nsw i64 %27, %46
  %60 = getelementptr inbounds i8, i8* %8, i64 %59
  %61 = load i8, i8* %60, align 1, !tbaa !9
  %62 = icmp ne i8 %61, 0
  %63 = zext i1 %62 to i64
  %64 = add nuw nsw i64 %58, %63
  %65 = add nuw nsw i64 %9, %0
  %66 = getelementptr inbounds i8, i8* %8, i64 %65
  %67 = load i8, i8* %66, align 1, !tbaa !9
  %68 = icmp eq i8 %67, 0
  %69 = icmp eq i64 %64, 3
  %70 = select i1 %68, i1 %69, i1 false
  br i1 %70, label %80, label %71

71:                                               ; preds = %10, %14
  %72 = phi i8 [ %13, %10 ], [ %67, %14 ]
  %73 = phi i64 [ 0, %10 ], [ %64, %14 ]
  %74 = icmp eq i8 %72, 1
  %75 = icmp ult i64 %73, 4
  %76 = select i1 %74, i1 %75, i1 false
  %77 = icmp ugt i64 %73, 1
  %78 = select i1 %76, i1 %77, i1 false
  %79 = zext i1 %78 to i8
  br label %80

80:                                               ; preds = %71, %14
  %81 = phi i8 [ 1, %14 ], [ %79, %71 ]
  ret i8 %81
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @calcSurf() local_unnamed_addr #4 {
  br label %1

1:                                                ; preds = %0, %5
  %2 = phi i64 [ 0, %0 ], [ %6, %5 ]
  %3 = mul nuw nsw i64 %2, 640
  br label %8

4:                                                ; preds = %5
  ret void

5:                                                ; preds = %8
  %6 = add nuw nsw i64 %2, 1
  %7 = icmp eq i64 %6, 360
  br i1 %7, label %4, label %1, !llvm.loop !10

8:                                                ; preds = %1, %8
  %9 = phi i64 [ 0, %1 ], [ %14, %8 ]
  %10 = tail call zeroext i8 @calcState(i64 noundef %9, i64 noundef %2)
  %11 = load i8*, i8** @SURF_NEXT, align 8, !tbaa !5
  %12 = add nuw nsw i64 %9, %3
  %13 = getelementptr inbounds i8, i8* %11, i64 %12
  store i8 %10, i8* %13, align 1, !tbaa !9
  %14 = add nuw nsw i64 %9, 1
  %15 = icmp eq i64 %14, 640
  br i1 %15, label %5, label %8, !llvm.loop !12
}

; Function Attrs: nounwind uwtable
define dso_local void @fillRand() local_unnamed_addr #5 {
  br label %2

1:                                                ; preds = %2
  ret void

2:                                                ; preds = %0, %2
  %3 = phi i64 [ 0, %0 ], [ %7, %2 ]
  %4 = tail call zeroext i8 @getZeroOrOne() #7
  %5 = load i8*, i8** @SURF_CUR, align 8, !tbaa !5
  %6 = getelementptr inbounds i8, i8* %5, i64 %3
  store i8 %4, i8* %6, align 1, !tbaa !9
  %7 = add nuw nsw i64 %3, 1
  %8 = icmp eq i64 %7, 230400
  br i1 %8, label %1, label %2, !llvm.loop !13
}

declare zeroext i8 @getZeroOrOne() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @draw() local_unnamed_addr #5 {
  br label %1

1:                                                ; preds = %0, %5
  %2 = phi i64 [ 0, %0 ], [ %6, %5 ]
  %3 = mul nuw nsw i64 %2, 640
  br label %8

4:                                                ; preds = %5
  tail call void @flush() #7
  ret void

5:                                                ; preds = %8
  %6 = add nuw nsw i64 %2, 1
  %7 = icmp eq i64 %6, 360
  br i1 %7, label %4, label %1, !llvm.loop !14

8:                                                ; preds = %1, %8
  %9 = phi i64 [ 0, %1 ], [ %14, %8 ]
  %10 = load i8*, i8** @SURF_CUR, align 8, !tbaa !5
  %11 = add nuw nsw i64 %9, %3
  %12 = getelementptr inbounds i8, i8* %10, i64 %11
  %13 = load i8, i8* %12, align 1, !tbaa !9
  tail call void @putPixel(i64 noundef %2, i64 noundef %9, i8 noundef zeroext %13) #7
  %14 = add nuw nsw i64 %9, 1
  %15 = icmp eq i64 %14, 640
  br i1 %15, label %5, label %8, !llvm.loop !15
}

declare void @putPixel(i64 noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #6

declare void @flush() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #5 {
  %1 = alloca [230400 x i8], align 16
  %2 = alloca [230400 x i8], align 16
  %3 = getelementptr inbounds [230400 x i8], [230400 x i8]* %1, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 230400, i8* nonnull %3) #7
  store i8* %3, i8** @SURF_CUR, align 8, !tbaa !5
  br label %4

4:                                                ; preds = %4, %0
  %5 = phi i64 [ 0, %0 ], [ %9, %4 ]
  %6 = call zeroext i8 @getZeroOrOne() #7
  %7 = load i8*, i8** @SURF_CUR, align 8, !tbaa !5
  %8 = getelementptr inbounds i8, i8* %7, i64 %5
  store i8 %6, i8* %8, align 1, !tbaa !9
  %9 = add nuw nsw i64 %5, 1
  %10 = icmp eq i64 %9, 230400
  br i1 %10, label %11, label %4, !llvm.loop !13

11:                                               ; preds = %4
  %12 = getelementptr inbounds [230400 x i8], [230400 x i8]* %2, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 230400, i8* nonnull %12) #7
  store i8* %12, i8** @SURF_NEXT, align 8, !tbaa !5
  call void @init(i64 noundef 360, i64 noundef 640) #7
  %13 = call zeroext i8 @finished() #7
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %51

15:                                               ; preds = %11, %21
  %16 = phi i64 [ %22, %21 ], [ 0, %11 ]
  %17 = mul nuw nsw i64 %16, 640
  br label %23

18:                                               ; preds = %23
  %19 = add nuw nsw i64 %16, 1
  %20 = icmp eq i64 %19, 360
  br i1 %20, label %31, label %21

21:                                               ; preds = %18, %48
  %22 = phi i64 [ %19, %18 ], [ 0, %48 ]
  br label %15, !llvm.loop !16

23:                                               ; preds = %23, %15
  %24 = phi i64 [ 0, %15 ], [ %29, %23 ]
  %25 = call zeroext i8 @calcState(i64 noundef %24, i64 noundef %16) #7
  %26 = load i8*, i8** @SURF_NEXT, align 8, !tbaa !5
  %27 = add nuw nsw i64 %24, %17
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8 %25, i8* %28, align 1, !tbaa !9
  %29 = add nuw nsw i64 %24, 1
  %30 = icmp eq i64 %29, 640
  br i1 %30, label %18, label %23, !llvm.loop !12

31:                                               ; preds = %18
  %32 = load i8*, i8** @SURF_NEXT, align 8, !tbaa !5
  %33 = load i8*, i8** @SURF_CUR, align 8, !tbaa !5
  store i8* %33, i8** @SURF_NEXT, align 8, !tbaa !5
  store i8* %32, i8** @SURF_CUR, align 8, !tbaa !5
  br label %34

34:                                               ; preds = %37, %31
  %35 = phi i64 [ 0, %31 ], [ %38, %37 ]
  %36 = mul nuw nsw i64 %35, 640
  br label %40

37:                                               ; preds = %40
  %38 = add nuw nsw i64 %35, 1
  %39 = icmp eq i64 %38, 360
  br i1 %39, label %48, label %34, !llvm.loop !14

40:                                               ; preds = %40, %34
  %41 = phi i64 [ 0, %34 ], [ %46, %40 ]
  %42 = load i8*, i8** @SURF_CUR, align 8, !tbaa !5
  %43 = add nuw nsw i64 %41, %36
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  %45 = load i8, i8* %44, align 1, !tbaa !9
  call void @putPixel(i64 noundef %35, i64 noundef %41, i8 noundef zeroext %45) #7
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, 640
  br i1 %47, label %37, label %40, !llvm.loop !15

48:                                               ; preds = %37
  call void @flush() #7
  %49 = call zeroext i8 @finished() #7
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %21, label %51

51:                                               ; preds = %48, %11
  call void @llvm.lifetime.end.p0i8(i64 230400, i8* nonnull %12) #7
  call void @llvm.lifetime.end.p0i8(i64 230400, i8* nonnull %3) #7
  ret i32 0
}

declare void @init(i64 noundef, i64 noundef) local_unnamed_addr #6

declare zeroext i8 @finished() local_unnamed_addr #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

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
!16 = distinct !{!16, !11}
