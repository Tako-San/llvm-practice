; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@SURF_CUR = dso_local global i8* null, align 8
@SURF_NEXT = dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [230400 x i8], align 16
  %3 = alloca [230400 x i8], align 16
  store i32 0, i32* %1, align 4
  %4 = getelementptr inbounds [230400 x i8], [230400 x i8]* %2, i64 0, i64 0
  store i8* %4, i8** @SURF_CUR, align 8
  call void @fillRand()
  %5 = getelementptr inbounds [230400 x i8], [230400 x i8]* %3, i64 0, i64 0
  store i8* %5, i8** @SURF_NEXT, align 8
  call void @init(i64 noundef 360, i64 noundef 640)
  br label %6

6:                                                ; preds = %10, %0
  %7 = call zeroext i8 @finished()
  %8 = icmp ne i8 %7, 0
  %9 = xor i1 %8, true
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  call void @calcSurf()
  call void @swap()
  call void @draw()
  br label %6, !llvm.loop !6

11:                                               ; preds = %6
  ret i32 0
}

declare void @init(i64 noundef, i64 noundef) #1

declare zeroext i8 @finished() #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fillRand() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 230400, i64* %1, align 8
  store i64 0, i64* %2, align 8
  br label %3

3:                                                ; preds = %12, %0
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* %1, align 8
  %6 = icmp ult i64 %4, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  %8 = call zeroext i8 @getZeroOrOne()
  %9 = load i8*, i8** @SURF_CUR, align 8
  %10 = load i64, i64* %2, align 8
  %11 = getelementptr inbounds i8, i8* %9, i64 %10
  store i8 %8, i8* %11, align 1
  br label %12

12:                                               ; preds = %7
  %13 = load i64, i64* %2, align 8
  %14 = add i64 %13, 1
  store i64 %14, i64* %2, align 8
  br label %3, !llvm.loop !8

15:                                               ; preds = %3
  ret void
}

declare zeroext i8 @getZeroOrOne() #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calcSurf() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  br label %3

3:                                                ; preds = %23, %0
  %4 = load i64, i64* %1, align 8
  %5 = icmp ult i64 %4, 360
  br i1 %5, label %6, label %26

6:                                                ; preds = %3
  store i64 0, i64* %2, align 8
  br label %7

7:                                                ; preds = %19, %6
  %8 = load i64, i64* %2, align 8
  %9 = icmp ult i64 %8, 640
  br i1 %9, label %10, label %22

10:                                               ; preds = %7
  %11 = load i64, i64* %2, align 8
  %12 = load i64, i64* %1, align 8
  %13 = call zeroext i8 @calcState(i64 noundef %11, i64 noundef %12)
  %14 = load i8*, i8** @SURF_NEXT, align 8
  %15 = load i64, i64* %2, align 8
  %16 = load i64, i64* %1, align 8
  %17 = call i64 @idx(i64 noundef %15, i64 noundef %16)
  %18 = getelementptr inbounds i8, i8* %14, i64 %17
  store i8 %13, i8* %18, align 1
  br label %19

19:                                               ; preds = %10
  %20 = load i64, i64* %2, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* %2, align 8
  br label %7, !llvm.loop !9

22:                                               ; preds = %7
  br label %23

23:                                               ; preds = %22
  %24 = load i64, i64* %1, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %1, align 8
  br label %3, !llvm.loop !10

26:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @calcState(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i8 0, i8* %6, align 1
  store i8 1, i8* %7, align 1
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i64 @countNeighbours(i64 noundef %10, i64 noundef %11)
  store i64 %12, i64* %8, align 8
  %13 = load i8*, i8** @SURF_CUR, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @idx(i64 noundef %14, i64 noundef %15)
  %17 = getelementptr inbounds i8, i8* %13, i64 %16
  %18 = load i8, i8* %17, align 1
  store i8 %18, i8* %9, align 1
  %19 = load i8, i8* %9, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* %6, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load i64, i64* %8, align 8
  %26 = icmp eq i64 %25, 3
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i8, i8* %7, align 1
  store i8 %28, i8* %3, align 1
  br label %45

29:                                               ; preds = %24, %2
  %30 = load i8, i8* %9, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8, i8* %7, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load i64, i64* %8, align 8
  %37 = icmp ult i64 %36, 4
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i64, i64* %8, align 8
  %40 = icmp ugt i64 %39, 1
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i8, i8* %7, align 1
  store i8 %42, i8* %3, align 1
  br label %45

43:                                               ; preds = %38, %35, %29
  %44 = load i8, i8* %6, align 1
  store i8 %44, i8* %3, align 1
  br label %45

45:                                               ; preds = %43, %41, %27
  %46 = load i8, i8* %3, align 1
  ret i8 %46
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @idx(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = mul i64 %5, 640
  %7 = load i64, i64* %3, align 8
  %8 = add i64 %6, %7
  ret i64 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @countNeighbours(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp ugt i64 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8
  %10 = icmp ugt i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %8
  %12 = load i64, i64* %4, align 8
  %13 = icmp ult i64 %12, 639
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = load i64, i64* %5, align 8
  %16 = icmp ult i64 %15, 359
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @countNeighboursCommon(i64 noundef %18, i64 noundef %19)
  store i64 %20, i64* %3, align 8
  br label %22

21:                                               ; preds = %14, %11, %8, %2
  store i64 0, i64* %3, align 8
  br label %22

22:                                               ; preds = %21, %17
  %23 = load i64, i64* %3, align 8
  ret i64 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @countNeighboursCommon(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %6 = load i8*, i8** @SURF_CUR, align 8
  %7 = load i64, i64* %3, align 8
  %8 = sub i64 %7, 1
  %9 = load i64, i64* %4, align 8
  %10 = sub i64 %9, 1
  %11 = call i64 @idx(i64 noundef %8, i64 noundef %10)
  %12 = getelementptr inbounds i8, i8* %6, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = call i64 @filled(i8 noundef zeroext %13)
  %15 = load i64, i64* %5, align 8
  %16 = add i64 %15, %14
  store i64 %16, i64* %5, align 8
  %17 = load i8*, i8** @SURF_CUR, align 8
  %18 = load i64, i64* %3, align 8
  %19 = sub i64 %18, 1
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @idx(i64 noundef %19, i64 noundef %20)
  %22 = getelementptr inbounds i8, i8* %17, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = call i64 @filled(i8 noundef zeroext %23)
  %25 = load i64, i64* %5, align 8
  %26 = add i64 %25, %24
  store i64 %26, i64* %5, align 8
  %27 = load i8*, i8** @SURF_CUR, align 8
  %28 = load i64, i64* %3, align 8
  %29 = sub i64 %28, 1
  %30 = load i64, i64* %4, align 8
  %31 = add i64 %30, 1
  %32 = call i64 @idx(i64 noundef %29, i64 noundef %31)
  %33 = getelementptr inbounds i8, i8* %27, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = call i64 @filled(i8 noundef zeroext %34)
  %36 = load i64, i64* %5, align 8
  %37 = add i64 %36, %35
  store i64 %37, i64* %5, align 8
  %38 = load i8*, i8** @SURF_CUR, align 8
  %39 = load i64, i64* %3, align 8
  %40 = load i64, i64* %4, align 8
  %41 = sub i64 %40, 1
  %42 = call i64 @idx(i64 noundef %39, i64 noundef %41)
  %43 = getelementptr inbounds i8, i8* %38, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = call i64 @filled(i8 noundef zeroext %44)
  %46 = load i64, i64* %5, align 8
  %47 = add i64 %46, %45
  store i64 %47, i64* %5, align 8
  %48 = load i8*, i8** @SURF_CUR, align 8
  %49 = load i64, i64* %3, align 8
  %50 = load i64, i64* %4, align 8
  %51 = add i64 %50, 1
  %52 = call i64 @idx(i64 noundef %49, i64 noundef %51)
  %53 = getelementptr inbounds i8, i8* %48, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = call i64 @filled(i8 noundef zeroext %54)
  %56 = load i64, i64* %5, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %5, align 8
  %58 = load i8*, i8** @SURF_CUR, align 8
  %59 = load i64, i64* %3, align 8
  %60 = add i64 %59, 1
  %61 = load i64, i64* %4, align 8
  %62 = sub i64 %61, 1
  %63 = call i64 @idx(i64 noundef %60, i64 noundef %62)
  %64 = getelementptr inbounds i8, i8* %58, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = call i64 @filled(i8 noundef zeroext %65)
  %67 = load i64, i64* %5, align 8
  %68 = add i64 %67, %66
  store i64 %68, i64* %5, align 8
  %69 = load i8*, i8** @SURF_CUR, align 8
  %70 = load i64, i64* %3, align 8
  %71 = add i64 %70, 1
  %72 = load i64, i64* %4, align 8
  %73 = call i64 @idx(i64 noundef %71, i64 noundef %72)
  %74 = getelementptr inbounds i8, i8* %69, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = call i64 @filled(i8 noundef zeroext %75)
  %77 = load i64, i64* %5, align 8
  %78 = add i64 %77, %76
  store i64 %78, i64* %5, align 8
  %79 = load i8*, i8** @SURF_CUR, align 8
  %80 = load i64, i64* %3, align 8
  %81 = add i64 %80, 1
  %82 = load i64, i64* %4, align 8
  %83 = add i64 %82, 1
  %84 = call i64 @idx(i64 noundef %81, i64 noundef %83)
  %85 = getelementptr inbounds i8, i8* %79, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = call i64 @filled(i8 noundef zeroext %86)
  %88 = load i64, i64* %5, align 8
  %89 = add i64 %88, %87
  store i64 %89, i64* %5, align 8
  %90 = load i64, i64* %5, align 8
  ret i64 %90
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @filled(i8 noundef zeroext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = zext i8 %3 to i32
  %5 = icmp ne i32 %4, 0
  %6 = zext i1 %5 to i32
  %7 = sext i32 %6 to i64
  ret i64 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swap() #0 {
  %1 = alloca i8*, align 8
  %2 = load i8*, i8** @SURF_NEXT, align 8
  store i8* %2, i8** %1, align 8
  %3 = load i8*, i8** @SURF_CUR, align 8
  store i8* %3, i8** @SURF_NEXT, align 8
  %4 = load i8*, i8** %1, align 8
  store i8* %4, i8** @SURF_CUR, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  br label %3

3:                                                ; preds = %23, %0
  %4 = load i64, i64* %1, align 8
  %5 = icmp ult i64 %4, 360
  br i1 %5, label %6, label %26

6:                                                ; preds = %3
  store i64 0, i64* %2, align 8
  br label %7

7:                                                ; preds = %19, %6
  %8 = load i64, i64* %2, align 8
  %9 = icmp ult i64 %8, 640
  br i1 %9, label %10, label %22

10:                                               ; preds = %7
  %11 = load i64, i64* %1, align 8
  %12 = load i64, i64* %2, align 8
  %13 = load i8*, i8** @SURF_CUR, align 8
  %14 = load i64, i64* %2, align 8
  %15 = load i64, i64* %1, align 8
  %16 = call i64 @idx(i64 noundef %14, i64 noundef %15)
  %17 = getelementptr inbounds i8, i8* %13, i64 %16
  %18 = load i8, i8* %17, align 1
  call void @putPixel(i64 noundef %11, i64 noundef %12, i8 noundef zeroext %18)
  br label %19

19:                                               ; preds = %10
  %20 = load i64, i64* %2, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* %2, align 8
  br label %7, !llvm.loop !11

22:                                               ; preds = %7
  br label %23

23:                                               ; preds = %22
  %24 = load i64, i64* %1, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %1, align 8
  br label %3, !llvm.loop !12

26:                                               ; preds = %3
  call void @flush()
  ret void
}

declare void @putPixel(i64 noundef, i64 noundef, i8 noundef zeroext) #1

declare void @flush() #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
