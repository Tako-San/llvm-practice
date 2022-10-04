; ModuleID = 'gol.cc'
source_filename = "gol.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.gol::Surf" = type { i64, i64, i8* }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.0 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon.0 = type { i64, [8 x i8] }
%"class.std::random_device" = type { %union.anon }
%union.anon = type { %"class.std::mersenne_twister_engine" }
%"class.std::mersenne_twister_engine" = type { [624 x i64], i64 }

$__clang_call_terminate = comdat any

@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1

; Function Attrs: mustprogress nofree nosync nounwind uwtable willreturn
define dso_local void @_ZN3gol4swapERNS_4SurfES1_(%"struct.gol::Surf"* nocapture noundef nonnull align 8 dereferenceable(24) %0, %"struct.gol::Surf"* nocapture noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 {
  %3 = alloca %"struct.gol::Surf", align 8
  %4 = bitcast %"struct.gol::Surf"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4)
  %5 = bitcast %"struct.gol::Surf"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %4, i8* noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !5
  %6 = bitcast %"struct.gol::Surf"* %1 to i8*
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

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3gol9constructERNS_4SurfEmm(%"struct.gol::Surf"* nocapture noundef nonnull writeonly align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %"struct.gol::Surf", %"struct.gol::Surf"* %0, i64 0, i32 0
  store i64 %2, i64* %4, align 8, !tbaa !12
  %5 = getelementptr inbounds %"struct.gol::Surf", %"struct.gol::Surf"* %0, i64 0, i32 1
  store i64 %1, i64* %5, align 8, !tbaa !14
  %6 = mul i64 %2, %1
  %7 = tail call noalias noundef nonnull i8* @_Znam(i64 noundef %6) #15
  %8 = getelementptr inbounds %"struct.gol::Surf", %"struct.gol::Surf"* %0, i64 0, i32 2
  store i8* %7, i8** %8, align 8, !tbaa !15
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znam(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN3gol7destroyERNS_4SurfE(%"struct.gol::Surf"* nocapture noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %"struct.gol::Surf", %"struct.gol::Surf"* %0, i64 0, i32 2
  %3 = bitcast %"struct.gol::Surf"* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %4 = load i8*, i8** %2, align 8, !tbaa !15
  %5 = icmp eq i8* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @_ZdaPv(i8* noundef nonnull %4) #16
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(i8* noundef) local_unnamed_addr #6

; Function Attrs: uwtable
define dso_local void @_ZN3gol8fillRandERNS_4SurfE(%"struct.gol::Surf"* nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) local_unnamed_addr #7 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = alloca %"class.std::random_device", align 8
  %4 = bitcast %"class.std::random_device"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 5000, i8* nonnull %4) #17
  %5 = bitcast %"class.std::__cxx11::basic_string"* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %5) #17
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 2
  %7 = bitcast %"class.std::__cxx11::basic_string"* %2 to %union.anon.0**
  store %union.anon.0* %6, %union.anon.0** %7, align 8, !tbaa !16
  %8 = bitcast %union.anon.0* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(7) %8, i8* noundef nonnull align 1 dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 7, i1 false) #17
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 1
  store i64 7, i64* %9, align 8, !tbaa !18
  %10 = getelementptr inbounds i8, i8* %8, i64 7
  store i8 0, i8* %10, align 1, !tbaa !20
  invoke void @_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::random_device"* noundef nonnull align 8 dereferenceable(5000) %3, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %2)
          to label %11 unwind label %16

11:                                               ; preds = %1
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8, !tbaa !21
  %14 = icmp eq i8* %13, %8
  br i1 %14, label %25, label %15

15:                                               ; preds = %11
  call void @_ZdlPv(i8* noundef %13) #17
  br label %25

16:                                               ; preds = %1
  %17 = landingpad { i8*, i32 }
          cleanup
  %18 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8, !tbaa !21
  %20 = icmp eq i8* %19, %8
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  call void @_ZdlPv(i8* noundef %19) #17
  br label %24

22:                                               ; preds = %54, %24
  %23 = phi { i8*, i32 } [ %17, %24 ], [ %50, %54 ]
  resume { i8*, i32 } %23

24:                                               ; preds = %21, %16
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %5) #17
  br label %22

25:                                               ; preds = %15, %11
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %5) #17
  %26 = getelementptr inbounds %"struct.gol::Surf", %"struct.gol::Surf"* %0, i64 0, i32 0
  %27 = load i64, i64* %26, align 8, !tbaa !12
  %28 = getelementptr inbounds %"struct.gol::Surf", %"struct.gol::Surf"* %0, i64 0, i32 1
  %29 = load i64, i64* %28, align 8, !tbaa !14
  %30 = mul i64 %29, %27
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds %"struct.gol::Surf", %"struct.gol::Surf"* %0, i64 0, i32 2
  br label %39

34:                                               ; preds = %42, %25
  invoke void @_ZNSt13random_device7_M_finiEv(%"class.std::random_device"* noundef nonnull align 8 dereferenceable(5000) %3)
          to label %38 unwind label %35

35:                                               ; preds = %34
  %36 = landingpad { i8*, i32 }
          catch i8* null
  %37 = extractvalue { i8*, i32 } %36, 0
  call void @__clang_call_terminate(i8* %37) #18
  unreachable

38:                                               ; preds = %34
  call void @llvm.lifetime.end.p0i8(i64 5000, i8* nonnull %4) #17
  ret void

39:                                               ; preds = %32, %42
  %40 = phi i64 [ 0, %32 ], [ %47, %42 ]
  %41 = invoke noundef i32 @_ZNSt13random_device9_M_getvalEv(%"class.std::random_device"* noundef nonnull align 8 dereferenceable(5000) %3)
          to label %42 unwind label %49

42:                                               ; preds = %39
  %43 = lshr i32 %41, 31
  %44 = trunc i32 %43 to i8
  %45 = load i8*, i8** %33, align 8, !tbaa !15
  %46 = getelementptr inbounds i8, i8* %45, i64 %40
  store i8 %44, i8* %46, align 1, !tbaa !20
  %47 = add nuw i64 %40, 1
  %48 = icmp eq i64 %47, %30
  br i1 %48, label %34, label %39, !llvm.loop !22

49:                                               ; preds = %39
  %50 = landingpad { i8*, i32 }
          cleanup
  invoke void @_ZNSt13random_device7_M_finiEv(%"class.std::random_device"* noundef nonnull align 8 dereferenceable(5000) %3)
          to label %54 unwind label %51

51:                                               ; preds = %49
  %52 = landingpad { i8*, i32 }
          catch i8* null
  %53 = extractvalue { i8*, i32 } %52, 0
  call void @__clang_call_terminate(i8* %53) #18
  unreachable

54:                                               ; preds = %49
  call void @llvm.lifetime.end.p0i8(i64 5000, i8* nonnull %4) #17
  br label %22
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local void @_ZN3gol6setValERNS_4SurfEmmh(%"struct.gol::Surf"* nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #8 {
  %5 = getelementptr inbounds %"struct.gol::Surf", %"struct.gol::Surf"* %0, i64 0, i32 2
  %6 = load i8*, i8** %5, align 8, !tbaa !15
  %7 = getelementptr inbounds %"struct.gol::Surf", %"struct.gol::Surf"* %0, i64 0, i32 1
  %8 = load i64, i64* %7, align 8, !tbaa !14
  %9 = mul i64 %8, %2
  %10 = add i64 %9, %1
  %11 = getelementptr inbounds i8, i8* %6, i64 %10
  store i8 %3, i8* %11, align 1, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef zeroext i8 @_ZN3gol6getValERKNS_4SurfEmm(%"struct.gol::Surf"* nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #9 {
  %4 = getelementptr inbounds %"struct.gol::Surf", %"struct.gol::Surf"* %0, i64 0, i32 2
  %5 = load i8*, i8** %4, align 8, !tbaa !15
  %6 = getelementptr inbounds %"struct.gol::Surf", %"struct.gol::Surf"* %0, i64 0, i32 1
  %7 = load i64, i64* %6, align 8, !tbaa !14
  %8 = mul i64 %7, %2
  %9 = add i64 %8, %1
  %10 = getelementptr inbounds i8, i8* %5, i64 %9
  %11 = load i8, i8* %10, align 1, !tbaa !20
  ret i8 %11
}

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i64 @_ZN3gol21countNeighboursCommonERKNS_4SurfEmm(%"struct.gol::Surf"* nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #10 {
  %4 = add i64 %1, -1
  %5 = add i64 %2, -1
  %6 = getelementptr inbounds %"struct.gol::Surf", %"struct.gol::Surf"* %0, i64 0, i32 2
  %7 = load i8*, i8** %6, align 8, !tbaa !15
  %8 = getelementptr inbounds %"struct.gol::Surf", %"struct.gol::Surf"* %0, i64 0, i32 1
  %9 = load i64, i64* %8, align 8, !tbaa !14
  %10 = mul i64 %9, %5
  %11 = add i64 %10, %4
  %12 = getelementptr inbounds i8, i8* %7, i64 %11
  %13 = load i8, i8* %12, align 1, !tbaa !20
  %14 = icmp ne i8 %13, 0
  %15 = zext i1 %14 to i64
  %16 = mul i64 %9, %2
  %17 = add i64 %16, %4
  %18 = getelementptr inbounds i8, i8* %7, i64 %17
  %19 = load i8, i8* %18, align 1, !tbaa !20
  %20 = icmp ne i8 %19, 0
  %21 = zext i1 %20 to i64
  %22 = add nuw nsw i64 %21, %15
  %23 = add i64 %2, 1
  %24 = mul i64 %9, %23
  %25 = add i64 %24, %4
  %26 = getelementptr inbounds i8, i8* %7, i64 %25
  %27 = load i8, i8* %26, align 1, !tbaa !20
  %28 = icmp ne i8 %27, 0
  %29 = zext i1 %28 to i64
  %30 = add nuw nsw i64 %22, %29
  %31 = add i64 %10, %1
  %32 = getelementptr inbounds i8, i8* %7, i64 %31
  %33 = load i8, i8* %32, align 1, !tbaa !20
  %34 = icmp ne i8 %33, 0
  %35 = zext i1 %34 to i64
  %36 = add nuw nsw i64 %30, %35
  %37 = add i64 %24, %1
  %38 = getelementptr inbounds i8, i8* %7, i64 %37
  %39 = load i8, i8* %38, align 1, !tbaa !20
  %40 = icmp ne i8 %39, 0
  %41 = zext i1 %40 to i64
  %42 = add nuw nsw i64 %36, %41
  %43 = add i64 %1, 1
  %44 = add i64 %10, %43
  %45 = getelementptr inbounds i8, i8* %7, i64 %44
  %46 = load i8, i8* %45, align 1, !tbaa !20
  %47 = icmp ne i8 %46, 0
  %48 = zext i1 %47 to i64
  %49 = add nuw nsw i64 %42, %48
  %50 = add i64 %16, %43
  %51 = getelementptr inbounds i8, i8* %7, i64 %50
  %52 = load i8, i8* %51, align 1, !tbaa !20
  %53 = icmp ne i8 %52, 0
  %54 = zext i1 %53 to i64
  %55 = add nuw nsw i64 %49, %54
  %56 = add i64 %24, %43
  %57 = getelementptr inbounds i8, i8* %7, i64 %56
  %58 = load i8, i8* %57, align 1, !tbaa !20
  %59 = icmp ne i8 %58, 0
  %60 = zext i1 %59 to i64
  %61 = add nuw nsw i64 %55, %60
  ret i64 %61
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i64 @_ZN3gol15countNeighboursERKNS_4SurfEmm(%"struct.gol::Surf"* nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #9 {
  %4 = icmp ne i64 %1, 0
  %5 = icmp ne i64 %2, 0
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %74

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"struct.gol::Surf", %"struct.gol::Surf"* %0, i64 0, i32 1
  %9 = load i64, i64* %8, align 8, !tbaa !14
  %10 = add i64 %9, -1
  %11 = icmp ugt i64 %10, %1
  br i1 %11, label %12, label %74

12:                                               ; preds = %7
  %13 = getelementptr inbounds %"struct.gol::Surf", %"struct.gol::Surf"* %0, i64 0, i32 0
  %14 = load i64, i64* %13, align 8, !tbaa !12
  %15 = add i64 %14, -1
  %16 = icmp ugt i64 %15, %2
  br i1 %16, label %17, label %74

17:                                               ; preds = %12
  %18 = add i64 %1, -1
  %19 = add i64 %2, -1
  %20 = getelementptr inbounds %"struct.gol::Surf", %"struct.gol::Surf"* %0, i64 0, i32 2
  %21 = load i8*, i8** %20, align 8, !tbaa !15
  %22 = mul i64 %9, %19
  %23 = add i64 %22, %18
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1, !tbaa !20
  %26 = icmp ne i8 %25, 0
  %27 = zext i1 %26 to i64
  %28 = mul i64 %9, %2
  %29 = add i64 %28, %18
  %30 = getelementptr inbounds i8, i8* %21, i64 %29
  %31 = load i8, i8* %30, align 1, !tbaa !20
  %32 = icmp ne i8 %31, 0
  %33 = zext i1 %32 to i64
  %34 = add nuw nsw i64 %33, %27
  %35 = add nuw i64 %2, 1
  %36 = mul i64 %9, %35
  %37 = add i64 %36, %18
  %38 = getelementptr inbounds i8, i8* %21, i64 %37
  %39 = load i8, i8* %38, align 1, !tbaa !20
  %40 = icmp ne i8 %39, 0
  %41 = zext i1 %40 to i64
  %42 = add nuw nsw i64 %34, %41
  %43 = add i64 %22, %1
  %44 = getelementptr inbounds i8, i8* %21, i64 %43
  %45 = load i8, i8* %44, align 1, !tbaa !20
  %46 = icmp ne i8 %45, 0
  %47 = zext i1 %46 to i64
  %48 = add nuw nsw i64 %42, %47
  %49 = add i64 %36, %1
  %50 = getelementptr inbounds i8, i8* %21, i64 %49
  %51 = load i8, i8* %50, align 1, !tbaa !20
  %52 = icmp ne i8 %51, 0
  %53 = zext i1 %52 to i64
  %54 = add nuw nsw i64 %48, %53
  %55 = add nuw i64 %1, 1
  %56 = add i64 %22, %55
  %57 = getelementptr inbounds i8, i8* %21, i64 %56
  %58 = load i8, i8* %57, align 1, !tbaa !20
  %59 = icmp ne i8 %58, 0
  %60 = zext i1 %59 to i64
  %61 = add nuw nsw i64 %54, %60
  %62 = add i64 %28, %55
  %63 = getelementptr inbounds i8, i8* %21, i64 %62
  %64 = load i8, i8* %63, align 1, !tbaa !20
  %65 = icmp ne i8 %64, 0
  %66 = zext i1 %65 to i64
  %67 = add nuw nsw i64 %61, %66
  %68 = add i64 %36, %55
  %69 = getelementptr inbounds i8, i8* %21, i64 %68
  %70 = load i8, i8* %69, align 1, !tbaa !20
  %71 = icmp ne i8 %70, 0
  %72 = zext i1 %71 to i64
  %73 = add nuw nsw i64 %67, %72
  br label %74

74:                                               ; preds = %3, %7, %12, %17
  %75 = phi i64 [ %73, %17 ], [ 0, %12 ], [ 0, %7 ], [ 0, %3 ]
  ret i64 %75
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef zeroext i8 @_ZN3gol9calcStateERKNS_4SurfEmm(%"struct.gol::Surf"* nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #9 {
  %4 = tail call noundef i64 @_ZN3gol15countNeighboursERKNS_4SurfEmm(%"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2)
  %5 = getelementptr inbounds %"struct.gol::Surf", %"struct.gol::Surf"* %0, i64 0, i32 2
  %6 = load i8*, i8** %5, align 8, !tbaa !15
  %7 = getelementptr inbounds %"struct.gol::Surf", %"struct.gol::Surf"* %0, i64 0, i32 1
  %8 = load i64, i64* %7, align 8, !tbaa !14
  %9 = mul i64 %8, %2
  %10 = add i64 %9, %1
  %11 = getelementptr inbounds i8, i8* %6, i64 %10
  %12 = load i8, i8* %11, align 1, !tbaa !20
  %13 = icmp eq i8 %12, 0
  %14 = icmp eq i64 %4, 3
  %15 = and i1 %14, %13
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = icmp eq i8 %12, 1
  %18 = and i64 %4, -2
  %19 = icmp eq i64 %18, 2
  %20 = and i1 %19, %17
  %21 = zext i1 %20 to i8
  br label %22

22:                                               ; preds = %16, %3
  %23 = phi i8 [ 1, %3 ], [ %21, %16 ]
  ret i8 %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @_ZN3gol8calcSurfERNS_4SurfERKS0_(%"struct.gol::Surf"* nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, %"struct.gol::Surf"* nocapture noundef nonnull readonly align 8 dereferenceable(24) %1) local_unnamed_addr #11 {
  %3 = getelementptr inbounds %"struct.gol::Surf", %"struct.gol::Surf"* %1, i64 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !12
  %5 = getelementptr inbounds %"struct.gol::Surf", %"struct.gol::Surf"* %1, i64 0, i32 1
  %6 = load i64, i64* %5, align 8, !tbaa !14
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  %9 = icmp eq i64 %4, 0
  %10 = getelementptr inbounds %"struct.gol::Surf", %"struct.gol::Surf"* %1, i64 0, i32 2
  %11 = getelementptr inbounds %"struct.gol::Surf", %"struct.gol::Surf"* %0, i64 0, i32 2
  %12 = getelementptr inbounds %"struct.gol::Surf", %"struct.gol::Surf"* %0, i64 0, i32 1
  br label %13

13:                                               ; preds = %8, %16
  %14 = phi i64 [ 0, %8 ], [ %17, %16 ]
  br i1 %9, label %16, label %19

15:                                               ; preds = %16, %2
  ret void

16:                                               ; preds = %37, %13
  %17 = add nuw i64 %14, 1
  %18 = icmp eq i64 %17, %6
  br i1 %18, label %15, label %13, !llvm.loop !24

19:                                               ; preds = %13, %37
  %20 = phi i64 [ %44, %37 ], [ 0, %13 ]
  %21 = tail call noundef i64 @_ZN3gol15countNeighboursERKNS_4SurfEmm(%"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %14, i64 noundef %20) #17
  %22 = load i8*, i8** %10, align 8, !tbaa !15
  %23 = load i64, i64* %5, align 8, !tbaa !14
  %24 = mul i64 %23, %20
  %25 = add i64 %24, %14
  %26 = getelementptr inbounds i8, i8* %22, i64 %25
  %27 = load i8, i8* %26, align 1, !tbaa !20
  %28 = icmp eq i8 %27, 0
  %29 = icmp eq i64 %21, 3
  %30 = and i1 %29, %28
  br i1 %30, label %37, label %31

31:                                               ; preds = %19
  %32 = icmp eq i8 %27, 1
  %33 = and i64 %21, -2
  %34 = icmp eq i64 %33, 2
  %35 = and i1 %34, %32
  %36 = zext i1 %35 to i8
  br label %37

37:                                               ; preds = %19, %31
  %38 = phi i8 [ 1, %19 ], [ %36, %31 ]
  %39 = load i8*, i8** %11, align 8, !tbaa !15
  %40 = load i64, i64* %12, align 8, !tbaa !14
  %41 = mul i64 %40, %20
  %42 = add i64 %41, %14
  %43 = getelementptr inbounds i8, i8* %39, i64 %42
  store i8 %38, i8* %43, align 1, !tbaa !20
  %44 = add nuw i64 %20, 1
  %45 = icmp eq i64 %44, %4
  br i1 %45, label %16, label %19, !llvm.loop !25
}

declare void @_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::random_device"* noundef nonnull align 8 dereferenceable(5000), %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #12

declare i8* @__cxa_begin_catch(i8*) local_unnamed_addr

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) local_unnamed_addr #13 comdat {
  %2 = tail call i8* @__cxa_begin_catch(i8* %0) #17
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) local_unnamed_addr #6

declare void @_ZNSt13random_device7_M_finiEv(%"class.std::random_device"* noundef nonnull align 8 dereferenceable(5000)) local_unnamed_addr #12

declare noundef i32 @_ZNSt13random_device9_M_getvalEv(%"class.std::random_device"* noundef nonnull align 8 dereferenceable(5000)) local_unnamed_addr #12

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #14

attributes #0 = { mustprogress nofree nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noinline noreturn nounwind }
attributes #14 = { argmemonly nofree nounwind willreturn writeonly }
attributes #15 = { builtin allocsize(0) }
attributes #16 = { builtin nounwind }
attributes #17 = { nounwind }
attributes #18 = { noreturn nounwind }

!llvm.linker.options = !{}
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
!9 = !{!"Simple C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!13, !7, i64 0}
!13 = !{!"_ZTSN3gol4SurfE", !7, i64 0, !7, i64 8, !11, i64 16}
!14 = !{!13, !7, i64 8}
!15 = !{!13, !11, i64 16}
!16 = !{!17, !11, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!18 = !{!19, !7, i64 8}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !17, i64 0, !7, i64 8, !8, i64 16}
!20 = !{!8, !8, i64 0}
!21 = !{!19, !11, i64 0}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = distinct !{!24, !23}
!25 = distinct !{!25, !23}
