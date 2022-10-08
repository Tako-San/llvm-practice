; ModuleID = 'main.cc'
source_filename = "main.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.gol::Surf" = type { i64, i64, i8* }

$_ZN3gol4SurfC2Ev = comdat any

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z4drawN3gol4SurfE(%"struct.gol::Surf"* noundef byval(%"struct.gol::Surf") align 8 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 0, i64* %2, align 8
  br label %4

4:                                                ; preds = %32, %1
  %5 = load i64, i64* %2, align 8
  %6 = getelementptr inbounds %"struct.gol::Surf", %"struct.gol::Surf"* %0, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %35

9:                                                ; preds = %4
  store i64 0, i64* %3, align 8
  br label %10

10:                                               ; preds = %28, %9
  %11 = load i64, i64* %3, align 8
  %12 = getelementptr inbounds %"struct.gol::Surf", %"struct.gol::Surf"* %0, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %11, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %10
  %16 = load i64, i64* %2, align 8
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds %"struct.gol::Surf", %"struct.gol::Surf"* %0, i32 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = load i64, i64* %2, align 8
  %21 = getelementptr inbounds %"struct.gol::Surf", %"struct.gol::Surf"* %0, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = mul i64 %20, %22
  %24 = load i64, i64* %3, align 8
  %25 = add i64 %23, %24
  %26 = getelementptr inbounds i8, i8* %19, i64 %25
  %27 = load i8, i8* %26, align 1
  call void @_ZN2dw8putPixelEmmh(i64 noundef %16, i64 noundef %17, i8 noundef zeroext %27)
  br label %28

28:                                               ; preds = %15
  %29 = load i64, i64* %3, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %3, align 8
  br label %10, !llvm.loop !6

31:                                               ; preds = %10
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %2, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %2, align 8
  br label %4, !llvm.loop !8

35:                                               ; preds = %4
  call void @_ZN2dw5flushEv()
  ret void
}

declare void @_ZN2dw8putPixelEmmh(i64 noundef, i64 noundef, i8 noundef zeroext) #1

declare void @_ZN2dw5flushEv() #1

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #2 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %"struct.gol::Surf", align 8
  %5 = alloca %"struct.gol::Surf", align 8
  %6 = alloca %"struct.gol::Surf", align 8
  store i32 0, i32* %1, align 4
  store i64 180, i64* %2, align 8
  store i64 320, i64* %3, align 8
  call void @_ZN3gol4SurfC2Ev(%"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24) %4) #5
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* %2, align 8
  call void @_ZN3gol9constructERNS_4SurfEmm(%"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %7, i64 noundef %8)
  call void @_ZN3gol8fillRandERNS_4SurfE(%"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24) %4)
  call void @_ZN3gol4SurfC2Ev(%"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24) %5) #5
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* %2, align 8
  call void @_ZN3gol9constructERNS_4SurfEmm(%"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %9, i64 noundef %10)
  %11 = load i64, i64* %2, align 8
  %12 = load i64, i64* %3, align 8
  call void @_ZN2dw4initEmm(i64 noundef %11, i64 noundef %12)
  br label %13

13:                                               ; preds = %16, %0
  %14 = call noundef zeroext i1 @_ZN2dw8finishedEv()
  %15 = xor i1 %14, true
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  call void @_ZN2dw12processEventEv()
  call void @_ZN3gol8calcSurfERNS_4SurfERKS0_(%"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24) %5, %"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24) %4)
  call void @_ZN3gol4swapERNS_4SurfES1_(%"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24) %5, %"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24) %4)
  %17 = bitcast %"struct.gol::Surf"* %6 to i8*
  %18 = bitcast %"struct.gol::Surf"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 24, i1 false)
  call void @_Z4drawN3gol4SurfE(%"struct.gol::Surf"* noundef byval(%"struct.gol::Surf") align 8 %6)
  br label %13, !llvm.loop !9

19:                                               ; preds = %13
  call void @_ZN3gol7destroyERNS_4SurfE(%"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24) %4)
  call void @_ZN3gol7destroyERNS_4SurfE(%"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24) %5)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN3gol4SurfC2Ev(%"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca %"struct.gol::Surf"*, align 8
  store %"struct.gol::Surf"* %0, %"struct.gol::Surf"** %2, align 8
  %3 = load %"struct.gol::Surf"*, %"struct.gol::Surf"** %2, align 8
  %4 = getelementptr inbounds %"struct.gol::Surf", %"struct.gol::Surf"* %3, i32 0, i32 0
  store i64 0, i64* %4, align 8
  %5 = getelementptr inbounds %"struct.gol::Surf", %"struct.gol::Surf"* %3, i32 0, i32 1
  store i64 0, i64* %5, align 8
  %6 = getelementptr inbounds %"struct.gol::Surf", %"struct.gol::Surf"* %3, i32 0, i32 2
  store i8* null, i8** %6, align 8
  ret void
}

declare void @_ZN3gol9constructERNS_4SurfEmm(%"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24), i64 noundef, i64 noundef) #1

declare void @_ZN3gol8fillRandERNS_4SurfE(%"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24)) #1

declare void @_ZN2dw4initEmm(i64 noundef, i64 noundef) #1

declare noundef zeroext i1 @_ZN2dw8finishedEv() #1

declare void @_ZN2dw12processEventEv() #1

declare void @_ZN3gol8calcSurfERNS_4SurfERKS0_(%"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24), %"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24)) #1

declare void @_ZN3gol4swapERNS_4SurfES1_(%"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24), %"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24)) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare void @_ZN3gol7destroyERNS_4SurfE(%"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24)) #1

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind }

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
