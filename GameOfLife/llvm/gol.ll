; ModuleID = 'gol.c'
source_filename = "gol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Surf = type { i64, i64, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swap(%struct.Surf* noundef %0, %struct.Surf* noundef %1) #0 {
  %3 = alloca %struct.Surf*, align 8
  %4 = alloca %struct.Surf*, align 8
  %5 = alloca %struct.Surf, align 8
  store %struct.Surf* %0, %struct.Surf** %3, align 8
  store %struct.Surf* %1, %struct.Surf** %4, align 8
  %6 = load %struct.Surf*, %struct.Surf** %3, align 8
  %7 = bitcast %struct.Surf* %5 to i8*
  %8 = bitcast %struct.Surf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 24, i1 false)
  %9 = load %struct.Surf*, %struct.Surf** %3, align 8
  %10 = load %struct.Surf*, %struct.Surf** %4, align 8
  %11 = bitcast %struct.Surf* %9 to i8*
  %12 = bitcast %struct.Surf* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 24, i1 false)
  %13 = load %struct.Surf*, %struct.Surf** %4, align 8
  %14 = bitcast %struct.Surf* %13 to i8*
  %15 = bitcast %struct.Surf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 24, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @construct(%struct.Surf* noundef %0, i8* noundef %1, i64 noundef %2, i64 noundef %3) #0 {
  %5 = alloca %struct.Surf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.Surf* %0, %struct.Surf** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.Surf*, %struct.Surf** %5, align 8
  %11 = getelementptr inbounds %struct.Surf, %struct.Surf* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load %struct.Surf*, %struct.Surf** %5, align 8
  %14 = getelementptr inbounds %struct.Surf, %struct.Surf* %13, i32 0, i32 1
  store i64 %12, i64* %14, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load %struct.Surf*, %struct.Surf** %5, align 8
  %17 = getelementptr inbounds %struct.Surf, %struct.Surf* %16, i32 0, i32 2
  store i8* %15, i8** %17, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setVal(%struct.Surf* noundef %0, i64 noundef %1, i64 noundef %2, i8 noundef zeroext %3) #0 {
  %5 = alloca %struct.Surf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  store %struct.Surf* %0, %struct.Surf** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8 %3, i8* %8, align 1
  %9 = load i8, i8* %8, align 1
  %10 = load %struct.Surf*, %struct.Surf** %5, align 8
  %11 = getelementptr inbounds %struct.Surf, %struct.Surf* %10, i32 0, i32 2
  %12 = load i8*, i8** %11, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load %struct.Surf*, %struct.Surf** %5, align 8
  %15 = getelementptr inbounds %struct.Surf, %struct.Surf* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = mul i64 %13, %16
  %18 = load i64, i64* %6, align 8
  %19 = add i64 %17, %18
  %20 = getelementptr inbounds i8, i8* %12, i64 %19
  store i8 %9, i8* %20, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @getVal(%struct.Surf* noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.Surf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.Surf* %0, %struct.Surf** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.Surf*, %struct.Surf** %4, align 8
  %8 = getelementptr inbounds %struct.Surf, %struct.Surf* %7, i32 0, i32 2
  %9 = load i8*, i8** %8, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.Surf*, %struct.Surf** %4, align 8
  %12 = getelementptr inbounds %struct.Surf, %struct.Surf* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = mul i64 %10, %13
  %15 = load i64, i64* %5, align 8
  %16 = add i64 %14, %15
  %17 = getelementptr inbounds i8, i8* %9, i64 %16
  %18 = load i8, i8* %17, align 1
  ret i8 %18
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @filled(i8 noundef zeroext %0) #0 {
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
define dso_local i64 @countNeighboursCommon(%struct.Surf* noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.Surf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.Surf* %0, %struct.Surf** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %8 = load %struct.Surf*, %struct.Surf** %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = sub i64 %9, 1
  %11 = load i64, i64* %6, align 8
  %12 = sub i64 %11, 1
  %13 = call zeroext i8 @getVal(%struct.Surf* noundef %8, i64 noundef %10, i64 noundef %12)
  %14 = call i64 @filled(i8 noundef zeroext %13)
  %15 = load i64, i64* %7, align 8
  %16 = add i64 %15, %14
  store i64 %16, i64* %7, align 8
  %17 = load %struct.Surf*, %struct.Surf** %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = sub i64 %18, 1
  %20 = load i64, i64* %6, align 8
  %21 = call zeroext i8 @getVal(%struct.Surf* noundef %17, i64 noundef %19, i64 noundef %20)
  %22 = call i64 @filled(i8 noundef zeroext %21)
  %23 = load i64, i64* %7, align 8
  %24 = add i64 %23, %22
  store i64 %24, i64* %7, align 8
  %25 = load %struct.Surf*, %struct.Surf** %4, align 8
  %26 = load i64, i64* %5, align 8
  %27 = sub i64 %26, 1
  %28 = load i64, i64* %6, align 8
  %29 = add i64 %28, 1
  %30 = call zeroext i8 @getVal(%struct.Surf* noundef %25, i64 noundef %27, i64 noundef %29)
  %31 = call i64 @filled(i8 noundef zeroext %30)
  %32 = load i64, i64* %7, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %7, align 8
  %34 = load %struct.Surf*, %struct.Surf** %4, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = sub i64 %36, 1
  %38 = call zeroext i8 @getVal(%struct.Surf* noundef %34, i64 noundef %35, i64 noundef %37)
  %39 = call i64 @filled(i8 noundef zeroext %38)
  %40 = load i64, i64* %7, align 8
  %41 = add i64 %40, %39
  store i64 %41, i64* %7, align 8
  %42 = load %struct.Surf*, %struct.Surf** %4, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = add i64 %44, 1
  %46 = call zeroext i8 @getVal(%struct.Surf* noundef %42, i64 noundef %43, i64 noundef %45)
  %47 = call i64 @filled(i8 noundef zeroext %46)
  %48 = load i64, i64* %7, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %7, align 8
  %50 = load %struct.Surf*, %struct.Surf** %4, align 8
  %51 = load i64, i64* %5, align 8
  %52 = add i64 %51, 1
  %53 = load i64, i64* %6, align 8
  %54 = sub i64 %53, 1
  %55 = call zeroext i8 @getVal(%struct.Surf* noundef %50, i64 noundef %52, i64 noundef %54)
  %56 = call i64 @filled(i8 noundef zeroext %55)
  %57 = load i64, i64* %7, align 8
  %58 = add i64 %57, %56
  store i64 %58, i64* %7, align 8
  %59 = load %struct.Surf*, %struct.Surf** %4, align 8
  %60 = load i64, i64* %5, align 8
  %61 = add i64 %60, 1
  %62 = load i64, i64* %6, align 8
  %63 = call zeroext i8 @getVal(%struct.Surf* noundef %59, i64 noundef %61, i64 noundef %62)
  %64 = call i64 @filled(i8 noundef zeroext %63)
  %65 = load i64, i64* %7, align 8
  %66 = add i64 %65, %64
  store i64 %66, i64* %7, align 8
  %67 = load %struct.Surf*, %struct.Surf** %4, align 8
  %68 = load i64, i64* %5, align 8
  %69 = add i64 %68, 1
  %70 = load i64, i64* %6, align 8
  %71 = add i64 %70, 1
  %72 = call zeroext i8 @getVal(%struct.Surf* noundef %67, i64 noundef %69, i64 noundef %71)
  %73 = call i64 @filled(i8 noundef zeroext %72)
  %74 = load i64, i64* %7, align 8
  %75 = add i64 %74, %73
  store i64 %75, i64* %7, align 8
  %76 = load i64, i64* %7, align 8
  ret i64 %76
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @countNeighbours(%struct.Surf* noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.Surf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.Surf* %0, %struct.Surf** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = icmp ugt i64 %8, 0
  br i1 %9, label %10, label %32

10:                                               ; preds = %3
  %11 = load i64, i64* %7, align 8
  %12 = icmp ugt i64 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %10
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.Surf*, %struct.Surf** %5, align 8
  %16 = getelementptr inbounds %struct.Surf, %struct.Surf* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = sub i64 %17, 1
  %19 = icmp ult i64 %14, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %13
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.Surf*, %struct.Surf** %5, align 8
  %23 = getelementptr inbounds %struct.Surf, %struct.Surf* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = sub i64 %24, 1
  %26 = icmp ult i64 %21, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load %struct.Surf*, %struct.Surf** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i64 @countNeighboursCommon(%struct.Surf* noundef %28, i64 noundef %29, i64 noundef %30)
  store i64 %31, i64* %4, align 8
  br label %33

32:                                               ; preds = %20, %13, %10, %3
  store i64 0, i64* %4, align 8
  br label %33

33:                                               ; preds = %32, %27
  %34 = load i64, i64* %4, align 8
  ret i64 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @calcState(%struct.Surf* noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca %struct.Surf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  store %struct.Surf* %0, %struct.Surf** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8 0, i8* %8, align 1
  store i8 1, i8* %9, align 1
  %12 = load %struct.Surf*, %struct.Surf** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i64 @countNeighbours(%struct.Surf* noundef %12, i64 noundef %13, i64 noundef %14)
  store i64 %15, i64* %10, align 8
  %16 = load %struct.Surf*, %struct.Surf** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call zeroext i8 @getVal(%struct.Surf* noundef %16, i64 noundef %17, i64 noundef %18)
  store i8 %19, i8* %11, align 1
  %20 = load i8, i8* %11, align 1
  %21 = zext i8 %20 to i32
  %22 = load i8, i8* %8, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load i64, i64* %10, align 8
  %27 = icmp eq i64 %26, 3
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i8, i8* %9, align 1
  store i8 %29, i8* %4, align 1
  br label %46

30:                                               ; preds = %25, %3
  %31 = load i8, i8* %11, align 1
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* %9, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load i64, i64* %10, align 8
  %38 = icmp ult i64 %37, 4
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i64, i64* %10, align 8
  %41 = icmp ugt i64 %40, 1
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i8, i8* %9, align 1
  store i8 %43, i8* %4, align 1
  br label %46

44:                                               ; preds = %39, %36, %30
  %45 = load i8, i8* %8, align 1
  store i8 %45, i8* %4, align 1
  br label %46

46:                                               ; preds = %44, %42, %28
  %47 = load i8, i8* %4, align 1
  ret i8 %47
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @calcSurf(%struct.Surf* noundef %0, %struct.Surf* noundef %1) #0 {
  %3 = alloca %struct.Surf*, align 8
  %4 = alloca %struct.Surf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.Surf* %0, %struct.Surf** %3, align 8
  store %struct.Surf* %1, %struct.Surf** %4, align 8
  %9 = load %struct.Surf*, %struct.Surf** %4, align 8
  %10 = getelementptr inbounds %struct.Surf, %struct.Surf* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  %12 = load %struct.Surf*, %struct.Surf** %4, align 8
  %13 = getelementptr inbounds %struct.Surf, %struct.Surf* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %15

15:                                               ; preds = %36, %2
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %15
  store i64 0, i64* %8, align 8
  br label %20

20:                                               ; preds = %32, %19
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load %struct.Surf*, %struct.Surf** %3, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.Surf*, %struct.Surf** %4, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call zeroext i8 @calcState(%struct.Surf* noundef %28, i64 noundef %29, i64 noundef %30)
  call void @setVal(%struct.Surf* noundef %25, i64 noundef %26, i64 noundef %27, i8 noundef zeroext %31)
  br label %32

32:                                               ; preds = %24
  %33 = load i64, i64* %8, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %8, align 8
  br label %20, !llvm.loop !6

35:                                               ; preds = %20
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %7, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %7, align 8
  br label %15, !llvm.loop !8

39:                                               ; preds = %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }

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
