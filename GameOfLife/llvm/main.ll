; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Surf = type { i64, i64, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fillRand(%struct.Surf* noundef %0) #0 {
  %2 = alloca %struct.Surf*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.Surf* %0, %struct.Surf** %2, align 8
  %5 = load %struct.Surf*, %struct.Surf** %2, align 8
  %6 = getelementptr inbounds %struct.Surf, %struct.Surf* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.Surf*, %struct.Surf** %2, align 8
  %9 = getelementptr inbounds %struct.Surf, %struct.Surf* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = mul i64 %7, %10
  store i64 %11, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %12

12:                                               ; preds = %23, %1
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* %3, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %12
  %17 = call zeroext i8 @getZeroOrOne()
  %18 = load %struct.Surf*, %struct.Surf** %2, align 8
  %19 = getelementptr inbounds %struct.Surf, %struct.Surf* %18, i32 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = load i64, i64* %4, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  store i8 %17, i8* %22, align 1
  br label %23

23:                                               ; preds = %16
  %24 = load i64, i64* %4, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %4, align 8
  br label %12, !llvm.loop !6

26:                                               ; preds = %12
  ret void
}

declare zeroext i8 @getZeroOrOne() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @draw(%struct.Surf* noundef byval(%struct.Surf) align 8 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 0, i64* %2, align 8
  br label %4

4:                                                ; preds = %32, %1
  %5 = load i64, i64* %2, align 8
  %6 = getelementptr inbounds %struct.Surf, %struct.Surf* %0, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %35

9:                                                ; preds = %4
  store i64 0, i64* %3, align 8
  br label %10

10:                                               ; preds = %28, %9
  %11 = load i64, i64* %3, align 8
  %12 = getelementptr inbounds %struct.Surf, %struct.Surf* %0, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %11, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %10
  %16 = load i64, i64* %2, align 8
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds %struct.Surf, %struct.Surf* %0, i32 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = load i64, i64* %2, align 8
  %21 = getelementptr inbounds %struct.Surf, %struct.Surf* %0, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = mul i64 %20, %22
  %24 = load i64, i64* %3, align 8
  %25 = add i64 %23, %24
  %26 = getelementptr inbounds i8, i8* %19, i64 %25
  %27 = load i8, i8* %26, align 1
  call void @putPixel(i64 noundef %16, i64 noundef %17, i8 noundef zeroext %27)
  br label %28

28:                                               ; preds = %15
  %29 = load i64, i64* %3, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %3, align 8
  br label %10, !llvm.loop !8

31:                                               ; preds = %10
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %2, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %2, align 8
  br label %4, !llvm.loop !9

35:                                               ; preds = %4
  call void @flush()
  ret void
}

declare void @putPixel(i64 noundef, i64 noundef, i8 noundef zeroext) #1

declare void @flush() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.Surf, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.Surf, align 8
  %8 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i64 360, i64* %2, align 8
  store i64 640, i64* %3, align 8
  %9 = load i64, i64* %2, align 8
  %10 = load i64, i64* %3, align 8
  %11 = mul i64 %9, %10
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* %2, align 8
  call void @construct(%struct.Surf* noundef %4, i8* noundef %13, i64 noundef %14, i64 noundef %15)
  call void @fillRand(%struct.Surf* noundef %4)
  %16 = load i64, i64* %2, align 8
  %17 = load i64, i64* %3, align 8
  %18 = mul i64 %16, %17
  %19 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* %2, align 8
  call void @construct(%struct.Surf* noundef %7, i8* noundef %19, i64 noundef %20, i64 noundef %21)
  %22 = load i64, i64* %2, align 8
  %23 = load i64, i64* %3, align 8
  call void @init(i64 noundef %22, i64 noundef %23)
  br label %24

24:                                               ; preds = %28, %0
  %25 = call zeroext i8 @finished()
  %26 = icmp ne i8 %25, 0
  %27 = xor i1 %26, true
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  call void @calcSurf(%struct.Surf* noundef %7, %struct.Surf* noundef %4)
  call void @swap(%struct.Surf* noundef %7, %struct.Surf* noundef %4)
  call void @draw(%struct.Surf* noundef byval(%struct.Surf) align 8 %4)
  br label %24, !llvm.loop !10

29:                                               ; preds = %24
  store i32 0, i32* %1, align 4
  %30 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %30)
  %31 = load i32, i32* %1, align 4
  ret i32 %31
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #2

declare void @construct(%struct.Surf* noundef, i8* noundef, i64 noundef, i64 noundef) #1

declare void @init(i64 noundef, i64 noundef) #1

declare zeroext i8 @finished() #1

declare void @calcSurf(%struct.Surf* noundef, %struct.Surf* noundef) #1

declare void @swap(%struct.Surf* noundef, %struct.Surf* noundef) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind willreturn }

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
