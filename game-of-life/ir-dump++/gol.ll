; ModuleID = 'gol.cc'
source_filename = "gol.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.gol::Surf" = type { i64, i64, i8* }
%"class.std::random_device" = type { %union.anon }
%union.anon = type { %"class.std::mersenne_twister_engine" }
%"class.std::mersenne_twister_engine" = type { [624 x i64], i64 }
%"class.std::uniform_int_distribution" = type { %"struct.std::uniform_int_distribution<unsigned char>::param_type" }
%"struct.std::uniform_int_distribution<unsigned char>::param_type" = type { i8, i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.0 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon.0 = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }
%"struct.std::forward_iterator_tag" = type { i8 }
%"struct.std::random_access_iterator_tag" = type { i8 }
%"class.__gnu_cxx::new_allocator" = type { i8 }

$_ZNSt13random_deviceC2Ev = comdat any

$_ZNSt24uniform_int_distributionIhEC2Ehh = comdat any

$_ZNSt24uniform_int_distributionIhEclISt13random_deviceEEhRT_ = comdat any

$_ZNSt13random_deviceD2Ev = comdat any

$_ZSt5clampImERKT_S2_S2_S2_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_ = comdat any

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev = comdat any

$_ZNSt14pointer_traitsIPcE10pointer_toERc = comdat any

$_ZSt9addressofIcEPT_RS0_ = comdat any

$_ZSt11__addressofIcEPT_RS0_ = comdat any

$_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc = comdat any

$_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_ = comdat any

$_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_ = comdat any

$_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_ = comdat any

$_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv = comdat any

$__clang_call_terminate = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm = comdat any

$_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv = comdat any

$_ZNSt16allocator_traitsISaIcEE8allocateERS0_m = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_ = comdat any

$_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv = comdat any

$_ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv = comdat any

$_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm = comdat any

$_ZNSt11char_traitsIcE6assignERcRKc = comdat any

$_ZNSt11char_traitsIcE4copyEPcPKcm = comdat any

$_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm = comdat any

$_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv = comdat any

$_ZNSt14pointer_traitsIPKcE10pointer_toERS0_ = comdat any

$_ZSt9addressofIKcEPT_RS1_ = comdat any

$_ZSt11__addressofIKcEPT_RS1_ = comdat any

$_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm = comdat any

$_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm = comdat any

$_ZNSt24uniform_int_distributionIhE10param_typeC2Ehh = comdat any

$_ZNSt24uniform_int_distributionIhEclISt13random_deviceEEhRT_RKNS0_10param_typeE = comdat any

$_ZNKSt24uniform_int_distributionIhE10param_type1bEv = comdat any

$_ZNKSt24uniform_int_distributionIhE10param_type1aEv = comdat any

$_ZNSt24uniform_int_distributionIhE5_S_ndImSt13random_devicejEET1_RT0_S3_ = comdat any

$_ZNSt13random_deviceclEv = comdat any

@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"basic_string::_M_construct null not valid\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_ZN3gol4swapERNS_4SurfES1_(%"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24) %0, %"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24) %1) #0 {
  %3 = alloca %"struct.gol::Surf"*, align 8
  %4 = alloca %"struct.gol::Surf"*, align 8
  %5 = alloca %"struct.gol::Surf", align 8
  store %"struct.gol::Surf"* %0, %"struct.gol::Surf"** %3, align 8
  store %"struct.gol::Surf"* %1, %"struct.gol::Surf"** %4, align 8
  %6 = load %"struct.gol::Surf"*, %"struct.gol::Surf"** %3, align 8
  %7 = bitcast %"struct.gol::Surf"* %5 to i8*
  %8 = bitcast %"struct.gol::Surf"* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 24, i1 false)
  %9 = load %"struct.gol::Surf"*, %"struct.gol::Surf"** %4, align 8
  %10 = load %"struct.gol::Surf"*, %"struct.gol::Surf"** %3, align 8
  %11 = bitcast %"struct.gol::Surf"* %10 to i8*
  %12 = bitcast %"struct.gol::Surf"* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 24, i1 false)
  %13 = load %"struct.gol::Surf"*, %"struct.gol::Surf"** %4, align 8
  %14 = bitcast %"struct.gol::Surf"* %13 to i8*
  %15 = bitcast %"struct.gol::Surf"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 24, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN3gol9constructERNS_4SurfEmm(%"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) #2 {
  %4 = alloca %"struct.gol::Surf"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %"struct.gol::Surf"* %0, %"struct.gol::Surf"** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load %"struct.gol::Surf"*, %"struct.gol::Surf"** %4, align 8
  %9 = getelementptr inbounds %"struct.gol::Surf", %"struct.gol::Surf"* %8, i32 0, i32 0
  store i64 %7, i64* %9, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load %"struct.gol::Surf"*, %"struct.gol::Surf"** %4, align 8
  %12 = getelementptr inbounds %"struct.gol::Surf", %"struct.gol::Surf"* %11, i32 0, i32 1
  store i64 %10, i64* %12, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* %5, align 8
  %15 = mul i64 %13, %14
  %16 = call noalias noundef nonnull i8* @_Znam(i64 noundef %15) #11
  %17 = load %"struct.gol::Surf"*, %"struct.gol::Surf"** %4, align 8
  %18 = getelementptr inbounds %"struct.gol::Surf", %"struct.gol::Surf"* %17, i32 0, i32 2
  store i8* %16, i8** %18, align 8
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znam(i64 noundef) #3

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_ZN3gol7destroyERNS_4SurfE(%"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24) %0) #0 {
  %2 = alloca %"struct.gol::Surf"*, align 8
  store %"struct.gol::Surf"* %0, %"struct.gol::Surf"** %2, align 8
  %3 = load %"struct.gol::Surf"*, %"struct.gol::Surf"** %2, align 8
  %4 = getelementptr inbounds %"struct.gol::Surf", %"struct.gol::Surf"* %3, i32 0, i32 0
  store i64 0, i64* %4, align 8
  %5 = load %"struct.gol::Surf"*, %"struct.gol::Surf"** %2, align 8
  %6 = getelementptr inbounds %"struct.gol::Surf", %"struct.gol::Surf"* %5, i32 0, i32 1
  store i64 0, i64* %6, align 8
  %7 = load %"struct.gol::Surf"*, %"struct.gol::Surf"** %2, align 8
  %8 = getelementptr inbounds %"struct.gol::Surf", %"struct.gol::Surf"* %7, i32 0, i32 2
  %9 = load i8*, i8** %8, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  call void @_ZdaPv(i8* noundef %9) #12
  br label %12

12:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(i8* noundef) #4

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN3gol8fillRandERNS_4SurfE(%"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24) %0) #2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"struct.gol::Surf"*, align 8
  %3 = alloca %"class.std::random_device", align 8
  %4 = alloca %"class.std::uniform_int_distribution", align 1
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %"struct.gol::Surf"* %0, %"struct.gol::Surf"** %2, align 8
  call void @_ZNSt13random_deviceC2Ev(%"class.std::random_device"* noundef nonnull align 8 dereferenceable(5000) %3)
  invoke void @_ZNSt24uniform_int_distributionIhEC2Ehh(%"class.std::uniform_int_distribution"* noundef nonnull align 1 dereferenceable(2) %4, i8 noundef zeroext 0, i8 noundef zeroext 1)
          to label %9 unwind label %32

9:                                                ; preds = %1
  %10 = load %"struct.gol::Surf"*, %"struct.gol::Surf"** %2, align 8
  %11 = getelementptr inbounds %"struct.gol::Surf", %"struct.gol::Surf"* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %"struct.gol::Surf"*, %"struct.gol::Surf"** %2, align 8
  %14 = getelementptr inbounds %"struct.gol::Surf", %"struct.gol::Surf"* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = mul i64 %12, %15
  store i64 %16, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %17

17:                                               ; preds = %29, %9
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %17
  %22 = invoke noundef zeroext i8 @_ZNSt24uniform_int_distributionIhEclISt13random_deviceEEhRT_(%"class.std::uniform_int_distribution"* noundef nonnull align 1 dereferenceable(2) %4, %"class.std::random_device"* noundef nonnull align 8 dereferenceable(5000) %3)
          to label %23 unwind label %32

23:                                               ; preds = %21
  %24 = load %"struct.gol::Surf"*, %"struct.gol::Surf"** %2, align 8
  %25 = getelementptr inbounds %"struct.gol::Surf", %"struct.gol::Surf"* %24, i32 0, i32 2
  %26 = load i8*, i8** %25, align 8
  %27 = load i64, i64* %8, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8 %22, i8* %28, align 1
  br label %29

29:                                               ; preds = %23
  %30 = load i64, i64* %8, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %8, align 8
  br label %17, !llvm.loop !6

32:                                               ; preds = %21, %1
  %33 = landingpad { i8*, i32 }
          cleanup
  %34 = extractvalue { i8*, i32 } %33, 0
  store i8* %34, i8** %5, align 8
  %35 = extractvalue { i8*, i32 } %33, 1
  store i32 %35, i32* %6, align 4
  call void @_ZNSt13random_deviceD2Ev(%"class.std::random_device"* noundef nonnull align 8 dereferenceable(5000) %3) #13
  br label %37

36:                                               ; preds = %17
  call void @_ZNSt13random_deviceD2Ev(%"class.std::random_device"* noundef nonnull align 8 dereferenceable(5000) %3) #13
  ret void

37:                                               ; preds = %32
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = insertvalue { i8*, i32 } undef, i8* %38, 0
  %41 = insertvalue { i8*, i32 } %40, i32 %39, 1
  resume { i8*, i32 } %41
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt13random_deviceC2Ev(%"class.std::random_device"* noundef nonnull align 8 dereferenceable(5000) %0) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::random_device"*, align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::allocator", align 1
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %"class.std::random_device"* %0, %"class.std::random_device"** %2, align 8
  %7 = load %"class.std::random_device"*, %"class.std::random_device"** %2, align 8
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %4) #13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %3, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %4)
          to label %8 unwind label %10

8:                                                ; preds = %1
  invoke void @_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::random_device"* noundef nonnull align 8 dereferenceable(5000) %7, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %3)
          to label %9 unwind label %14

9:                                                ; preds = %8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %4) #13
  ret void

10:                                               ; preds = %1
  %11 = landingpad { i8*, i32 }
          cleanup
  %12 = extractvalue { i8*, i32 } %11, 0
  store i8* %12, i8** %5, align 8
  %13 = extractvalue { i8*, i32 } %11, 1
  store i32 %13, i32* %6, align 4
  br label %18

14:                                               ; preds = %8
  %15 = landingpad { i8*, i32 }
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  store i8* %16, i8** %5, align 8
  %17 = extractvalue { i8*, i32 } %15, 1
  store i32 %17, i32* %6, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %3) #13
  br label %18

18:                                               ; preds = %14, %10
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %4) #13
  br label %19

19:                                               ; preds = %18
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = insertvalue { i8*, i32 } undef, i8* %20, 0
  %23 = insertvalue { i8*, i32 } %22, i32 %21, 1
  resume { i8*, i32 } %23
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt24uniform_int_distributionIhEC2Ehh(%"class.std::uniform_int_distribution"* noundef nonnull align 1 dereferenceable(2) %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #5 comdat align 2 {
  %4 = alloca %"class.std::uniform_int_distribution"*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %"class.std::uniform_int_distribution"* %0, %"class.std::uniform_int_distribution"** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %7 = load %"class.std::uniform_int_distribution"*, %"class.std::uniform_int_distribution"** %4, align 8
  %8 = getelementptr inbounds %"class.std::uniform_int_distribution", %"class.std::uniform_int_distribution"* %7, i32 0, i32 0
  %9 = load i8, i8* %5, align 1
  %10 = load i8, i8* %6, align 1
  call void @_ZNSt24uniform_int_distributionIhE10param_typeC2Ehh(%"struct.std::uniform_int_distribution<unsigned char>::param_type"* noundef nonnull align 1 dereferenceable(2) %8, i8 noundef zeroext %9, i8 noundef zeroext %10)
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i8 @_ZNSt24uniform_int_distributionIhEclISt13random_deviceEEhRT_(%"class.std::uniform_int_distribution"* noundef nonnull align 1 dereferenceable(2) %0, %"class.std::random_device"* noundef nonnull align 8 dereferenceable(5000) %1) #2 comdat align 2 {
  %3 = alloca %"class.std::uniform_int_distribution"*, align 8
  %4 = alloca %"class.std::random_device"*, align 8
  store %"class.std::uniform_int_distribution"* %0, %"class.std::uniform_int_distribution"** %3, align 8
  store %"class.std::random_device"* %1, %"class.std::random_device"** %4, align 8
  %5 = load %"class.std::uniform_int_distribution"*, %"class.std::uniform_int_distribution"** %3, align 8
  %6 = load %"class.std::random_device"*, %"class.std::random_device"** %4, align 8
  %7 = getelementptr inbounds %"class.std::uniform_int_distribution", %"class.std::uniform_int_distribution"* %5, i32 0, i32 0
  %8 = call noundef zeroext i8 @_ZNSt24uniform_int_distributionIhEclISt13random_deviceEEhRT_RKNS0_10param_typeE(%"class.std::uniform_int_distribution"* noundef nonnull align 1 dereferenceable(2) %5, %"class.std::random_device"* noundef nonnull align 8 dereferenceable(5000) %6, %"struct.std::uniform_int_distribution<unsigned char>::param_type"* noundef nonnull align 1 dereferenceable(2) %7)
  ret i8 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt13random_deviceD2Ev(%"class.std::random_device"* noundef nonnull align 8 dereferenceable(5000) %0) unnamed_addr #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::random_device"*, align 8
  store %"class.std::random_device"* %0, %"class.std::random_device"** %2, align 8
  %3 = load %"class.std::random_device"*, %"class.std::random_device"** %2, align 8
  invoke void @_ZNSt13random_device7_M_finiEv(%"class.std::random_device"* noundef nonnull align 8 dereferenceable(5000) %3)
          to label %4 unwind label %5

4:                                                ; preds = %1
  ret void

5:                                                ; preds = %1
  %6 = landingpad { i8*, i32 }
          catch i8* null
  %7 = extractvalue { i8*, i32 } %6, 0
  call void @__clang_call_terminate(i8* %7) #14
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_ZN3gol6setValERNS_4SurfEmmh(%"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i8 noundef zeroext %3) #0 {
  %5 = alloca %"struct.gol::Surf"*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  store %"struct.gol::Surf"* %0, %"struct.gol::Surf"** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8 %3, i8* %8, align 1
  %9 = load i8, i8* %8, align 1
  %10 = load %"struct.gol::Surf"*, %"struct.gol::Surf"** %5, align 8
  %11 = getelementptr inbounds %"struct.gol::Surf", %"struct.gol::Surf"* %10, i32 0, i32 2
  %12 = load i8*, i8** %11, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load %"struct.gol::Surf"*, %"struct.gol::Surf"** %5, align 8
  %15 = getelementptr inbounds %"struct.gol::Surf", %"struct.gol::Surf"* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = mul i64 %13, %16
  %18 = load i64, i64* %6, align 8
  %19 = add i64 %17, %18
  %20 = getelementptr inbounds i8, i8* %12, i64 %19
  store i8 %9, i8* %20, align 1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef zeroext i8 @_ZN3gol6getValERKNS_4SurfEmm(%"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca %"struct.gol::Surf"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %"struct.gol::Surf"* %0, %"struct.gol::Surf"** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"struct.gol::Surf"*, %"struct.gol::Surf"** %4, align 8
  %8 = getelementptr inbounds %"struct.gol::Surf", %"struct.gol::Surf"* %7, i32 0, i32 2
  %9 = load i8*, i8** %8, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load %"struct.gol::Surf"*, %"struct.gol::Surf"** %4, align 8
  %12 = getelementptr inbounds %"struct.gol::Surf", %"struct.gol::Surf"* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = mul i64 %10, %13
  %15 = load i64, i64* %5, align 8
  %16 = add i64 %14, %15
  %17 = getelementptr inbounds i8, i8* %9, i64 %16
  %18 = load i8, i8* %17, align 1
  ret i8 %18
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef i64 @_ZN3gol21countNeighboursCommonERKNS_4SurfEmm(%"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) #2 {
  %4 = alloca %"struct.gol::Surf"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  store %"struct.gol::Surf"* %0, %"struct.gol::Surf"** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %32 = load %"struct.gol::Surf"*, %"struct.gol::Surf"** %4, align 8
  %33 = load i64, i64* %5, align 8
  %34 = sub i64 %33, 1
  %35 = load i64, i64* %6, align 8
  %36 = sub i64 %35, 1
  %37 = call noundef zeroext i8 @_ZN3gol6getValERKNS_4SurfEmm(%"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24) %32, i64 noundef %34, i64 noundef %36)
  %38 = zext i8 %37 to i64
  store i64 %38, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 1, i64* %10, align 8
  %39 = call noundef nonnull align 8 dereferenceable(8) i64* @_ZSt5clampImERKT_S2_S2_S2_(i64* noundef nonnull align 8 dereferenceable(8) %8, i64* noundef nonnull align 8 dereferenceable(8) %9, i64* noundef nonnull align 8 dereferenceable(8) %10)
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = add i64 %41, %40
  store i64 %42, i64* %7, align 8
  %43 = load %"struct.gol::Surf"*, %"struct.gol::Surf"** %4, align 8
  %44 = load i64, i64* %5, align 8
  %45 = sub i64 %44, 1
  %46 = load i64, i64* %6, align 8
  %47 = call noundef zeroext i8 @_ZN3gol6getValERKNS_4SurfEmm(%"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24) %43, i64 noundef %45, i64 noundef %46)
  %48 = zext i8 %47 to i64
  store i64 %48, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 1, i64* %13, align 8
  %49 = call noundef nonnull align 8 dereferenceable(8) i64* @_ZSt5clampImERKT_S2_S2_S2_(i64* noundef nonnull align 8 dereferenceable(8) %11, i64* noundef nonnull align 8 dereferenceable(8) %12, i64* noundef nonnull align 8 dereferenceable(8) %13)
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %7, align 8
  %52 = add i64 %51, %50
  store i64 %52, i64* %7, align 8
  %53 = load %"struct.gol::Surf"*, %"struct.gol::Surf"** %4, align 8
  %54 = load i64, i64* %5, align 8
  %55 = sub i64 %54, 1
  %56 = load i64, i64* %6, align 8
  %57 = add i64 %56, 1
  %58 = call noundef zeroext i8 @_ZN3gol6getValERKNS_4SurfEmm(%"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24) %53, i64 noundef %55, i64 noundef %57)
  %59 = zext i8 %58 to i64
  store i64 %59, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 1, i64* %16, align 8
  %60 = call noundef nonnull align 8 dereferenceable(8) i64* @_ZSt5clampImERKT_S2_S2_S2_(i64* noundef nonnull align 8 dereferenceable(8) %14, i64* noundef nonnull align 8 dereferenceable(8) %15, i64* noundef nonnull align 8 dereferenceable(8) %16)
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %7, align 8
  %63 = add i64 %62, %61
  store i64 %63, i64* %7, align 8
  %64 = load %"struct.gol::Surf"*, %"struct.gol::Surf"** %4, align 8
  %65 = load i64, i64* %5, align 8
  %66 = load i64, i64* %6, align 8
  %67 = sub i64 %66, 1
  %68 = call noundef zeroext i8 @_ZN3gol6getValERKNS_4SurfEmm(%"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24) %64, i64 noundef %65, i64 noundef %67)
  %69 = zext i8 %68 to i64
  store i64 %69, i64* %17, align 8
  store i64 0, i64* %18, align 8
  store i64 1, i64* %19, align 8
  %70 = call noundef nonnull align 8 dereferenceable(8) i64* @_ZSt5clampImERKT_S2_S2_S2_(i64* noundef nonnull align 8 dereferenceable(8) %17, i64* noundef nonnull align 8 dereferenceable(8) %18, i64* noundef nonnull align 8 dereferenceable(8) %19)
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %7, align 8
  %73 = add i64 %72, %71
  store i64 %73, i64* %7, align 8
  %74 = load %"struct.gol::Surf"*, %"struct.gol::Surf"** %4, align 8
  %75 = load i64, i64* %5, align 8
  %76 = load i64, i64* %6, align 8
  %77 = add i64 %76, 1
  %78 = call noundef zeroext i8 @_ZN3gol6getValERKNS_4SurfEmm(%"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24) %74, i64 noundef %75, i64 noundef %77)
  %79 = zext i8 %78 to i64
  store i64 %79, i64* %20, align 8
  store i64 0, i64* %21, align 8
  store i64 1, i64* %22, align 8
  %80 = call noundef nonnull align 8 dereferenceable(8) i64* @_ZSt5clampImERKT_S2_S2_S2_(i64* noundef nonnull align 8 dereferenceable(8) %20, i64* noundef nonnull align 8 dereferenceable(8) %21, i64* noundef nonnull align 8 dereferenceable(8) %22)
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %7, align 8
  %83 = add i64 %82, %81
  store i64 %83, i64* %7, align 8
  %84 = load %"struct.gol::Surf"*, %"struct.gol::Surf"** %4, align 8
  %85 = load i64, i64* %5, align 8
  %86 = add i64 %85, 1
  %87 = load i64, i64* %6, align 8
  %88 = sub i64 %87, 1
  %89 = call noundef zeroext i8 @_ZN3gol6getValERKNS_4SurfEmm(%"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24) %84, i64 noundef %86, i64 noundef %88)
  %90 = zext i8 %89 to i64
  store i64 %90, i64* %23, align 8
  store i64 0, i64* %24, align 8
  store i64 1, i64* %25, align 8
  %91 = call noundef nonnull align 8 dereferenceable(8) i64* @_ZSt5clampImERKT_S2_S2_S2_(i64* noundef nonnull align 8 dereferenceable(8) %23, i64* noundef nonnull align 8 dereferenceable(8) %24, i64* noundef nonnull align 8 dereferenceable(8) %25)
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %7, align 8
  %94 = add i64 %93, %92
  store i64 %94, i64* %7, align 8
  %95 = load %"struct.gol::Surf"*, %"struct.gol::Surf"** %4, align 8
  %96 = load i64, i64* %5, align 8
  %97 = add i64 %96, 1
  %98 = load i64, i64* %6, align 8
  %99 = call noundef zeroext i8 @_ZN3gol6getValERKNS_4SurfEmm(%"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24) %95, i64 noundef %97, i64 noundef %98)
  %100 = zext i8 %99 to i64
  store i64 %100, i64* %26, align 8
  store i64 0, i64* %27, align 8
  store i64 1, i64* %28, align 8
  %101 = call noundef nonnull align 8 dereferenceable(8) i64* @_ZSt5clampImERKT_S2_S2_S2_(i64* noundef nonnull align 8 dereferenceable(8) %26, i64* noundef nonnull align 8 dereferenceable(8) %27, i64* noundef nonnull align 8 dereferenceable(8) %28)
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %7, align 8
  %104 = add i64 %103, %102
  store i64 %104, i64* %7, align 8
  %105 = load %"struct.gol::Surf"*, %"struct.gol::Surf"** %4, align 8
  %106 = load i64, i64* %5, align 8
  %107 = add i64 %106, 1
  %108 = load i64, i64* %6, align 8
  %109 = add i64 %108, 1
  %110 = call noundef zeroext i8 @_ZN3gol6getValERKNS_4SurfEmm(%"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24) %105, i64 noundef %107, i64 noundef %109)
  %111 = zext i8 %110 to i64
  store i64 %111, i64* %29, align 8
  store i64 0, i64* %30, align 8
  store i64 1, i64* %31, align 8
  %112 = call noundef nonnull align 8 dereferenceable(8) i64* @_ZSt5clampImERKT_S2_S2_S2_(i64* noundef nonnull align 8 dereferenceable(8) %29, i64* noundef nonnull align 8 dereferenceable(8) %30, i64* noundef nonnull align 8 dereferenceable(8) %31)
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %7, align 8
  %115 = add i64 %114, %113
  store i64 %115, i64* %7, align 8
  %116 = load i64, i64* %7, align 8
  ret i64 %116
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) i64* @_ZSt5clampImERKT_S2_S2_S2_(i64* noundef nonnull align 8 dereferenceable(8) %0, i64* noundef nonnull align 8 dereferenceable(8) %1, i64* noundef nonnull align 8 dereferenceable(8) %2) #0 comdat {
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  br label %7

7:                                                ; preds = %3
  br label %8

8:                                                ; preds = %7
  %9 = load i64*, i64** %4, align 8
  %10 = load i64, i64* %9, align 8
  %11 = load i64*, i64** %5, align 8
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %10, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = load i64*, i64** %5, align 8
  br label %28

16:                                               ; preds = %8
  %17 = load i64*, i64** %6, align 8
  %18 = load i64, i64* %17, align 8
  %19 = load i64*, i64** %4, align 8
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %18, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i64*, i64** %6, align 8
  br label %26

24:                                               ; preds = %16
  %25 = load i64*, i64** %4, align 8
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i64* [ %23, %22 ], [ %25, %24 ]
  br label %28

28:                                               ; preds = %26, %14
  %29 = phi i64* [ %15, %14 ], [ %27, %26 ]
  ret i64* %29
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef i64 @_ZN3gol15countNeighboursERKNS_4SurfEmm(%"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) #2 {
  %4 = alloca i64, align 8
  %5 = alloca %"struct.gol::Surf"*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %"struct.gol::Surf"* %0, %"struct.gol::Surf"** %5, align 8
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
  %15 = load %"struct.gol::Surf"*, %"struct.gol::Surf"** %5, align 8
  %16 = getelementptr inbounds %"struct.gol::Surf", %"struct.gol::Surf"* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = sub i64 %17, 1
  %19 = icmp ult i64 %14, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %13
  %21 = load i64, i64* %7, align 8
  %22 = load %"struct.gol::Surf"*, %"struct.gol::Surf"** %5, align 8
  %23 = getelementptr inbounds %"struct.gol::Surf", %"struct.gol::Surf"* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = sub i64 %24, 1
  %26 = icmp ult i64 %21, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load %"struct.gol::Surf"*, %"struct.gol::Surf"** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call noundef i64 @_ZN3gol21countNeighboursCommonERKNS_4SurfEmm(%"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24) %28, i64 noundef %29, i64 noundef %30)
  store i64 %31, i64* %4, align 8
  br label %33

32:                                               ; preds = %20, %13, %10, %3
  store i64 0, i64* %4, align 8
  br label %33

33:                                               ; preds = %32, %27
  %34 = load i64, i64* %4, align 8
  ret i64 %34
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef zeroext i8 @_ZN3gol9calcStateERKNS_4SurfEmm(%"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) #2 {
  %4 = alloca i8, align 1
  %5 = alloca %"struct.gol::Surf"*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  store %"struct.gol::Surf"* %0, %"struct.gol::Surf"** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8 0, i8* %8, align 1
  store i8 1, i8* %9, align 1
  %12 = load %"struct.gol::Surf"*, %"struct.gol::Surf"** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call noundef i64 @_ZN3gol15countNeighboursERKNS_4SurfEmm(%"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24) %12, i64 noundef %13, i64 noundef %14)
  store i64 %15, i64* %10, align 8
  %16 = load %"struct.gol::Surf"*, %"struct.gol::Surf"** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call noundef zeroext i8 @_ZN3gol6getValERKNS_4SurfEmm(%"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24) %16, i64 noundef %17, i64 noundef %18)
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

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN3gol8calcSurfERNS_4SurfERKS0_(%"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24) %0, %"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24) %1) #2 {
  %3 = alloca %"struct.gol::Surf"*, align 8
  %4 = alloca %"struct.gol::Surf"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %"struct.gol::Surf"* %0, %"struct.gol::Surf"** %3, align 8
  store %"struct.gol::Surf"* %1, %"struct.gol::Surf"** %4, align 8
  %9 = load %"struct.gol::Surf"*, %"struct.gol::Surf"** %4, align 8
  %10 = getelementptr inbounds %"struct.gol::Surf", %"struct.gol::Surf"* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  %12 = load %"struct.gol::Surf"*, %"struct.gol::Surf"** %4, align 8
  %13 = getelementptr inbounds %"struct.gol::Surf", %"struct.gol::Surf"* %12, i32 0, i32 1
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
  %25 = load %"struct.gol::Surf"*, %"struct.gol::Surf"** %3, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load %"struct.gol::Surf"*, %"struct.gol::Surf"** %4, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call noundef zeroext i8 @_ZN3gol9calcStateERKNS_4SurfEmm(%"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24) %28, i64 noundef %29, i64 noundef %30)
  call void @_ZN3gol6setValERNS_4SurfEmmh(%"struct.gol::Surf"* noundef nonnull align 8 dereferenceable(24) %25, i64 noundef %26, i64 noundef %27, i8 noundef zeroext %31)
  br label %32

32:                                               ; preds = %24
  %33 = load i64, i64* %8, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %8, align 8
  br label %20, !llvm.loop !8

35:                                               ; preds = %20
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %7, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %7, align 8
  br label %15, !llvm.loop !9

39:                                               ; preds = %15
  ret void
}

declare void @_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::random_device"* noundef nonnull align 8 dereferenceable(5000), %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) #7

; Function Attrs: nounwind
declare void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #8

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i8* noundef %1, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %"class.std::allocator"*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %"struct.std::forward_iterator_tag", align 1
  %11 = alloca %"struct.std::random_access_iterator_tag", align 1
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %4, align 8
  store i8* %1, i8** %5, align 8
  store %"class.std::allocator"* %2, %"class.std::allocator"** %6, align 8
  %12 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %4, align 8
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %12, i32 0, i32 0
  %14 = call noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %12)
  %15 = load %"class.std::allocator"*, %"class.std::allocator"** %6, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(%"struct.std::__cxx11::basic_string<char>::_Alloc_hider"* noundef nonnull align 8 dereferenceable(8) %13, i8* noundef %14, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %15)
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = invoke noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(i8* noundef %20)
          to label %22 unwind label %31

22:                                               ; preds = %18
  %23 = getelementptr inbounds i8, i8* %19, i64 %21
  br label %25

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i8* [ %23, %22 ], [ inttoptr (i64 1 to i8*), %24 ]
  store i8* %26, i8** %7, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = bitcast %"struct.std::random_access_iterator_tag"* %11 to %"struct.std::forward_iterator_tag"*
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %12, i8* noundef %27, i8* noundef %28)
          to label %30 unwind label %31

30:                                               ; preds = %25
  ret void

31:                                               ; preds = %25, %18
  %32 = landingpad { i8*, i32 }
          cleanup
  %33 = extractvalue { i8*, i32 } %32, 0
  store i8* %33, i8** %8, align 8
  %34 = extractvalue { i8*, i32 } %32, 1
  store i32 %34, i32* %9, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev(%"struct.std::__cxx11::basic_string<char>::_Alloc_hider"* noundef nonnull align 8 dereferenceable(8) %13) #13
  br label %35

35:                                               ; preds = %31
  %36 = load i8*, i8** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = insertvalue { i8*, i32 } undef, i8* %36, 0
  %39 = insertvalue { i8*, i32 } %38, i32 %37, 1
  resume { i8*, i32 } %39
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %2, align 8
  %5 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %2, align 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %5)
          to label %6 unwind label %8

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i32 0, i32 0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev(%"struct.std::__cxx11::basic_string<char>::_Alloc_hider"* noundef nonnull align 8 dereferenceable(8) %7) #13
  ret void

8:                                                ; preds = %1
  %9 = landingpad { i8*, i32 }
          catch i8* null
  %10 = extractvalue { i8*, i32 } %9, 0
  store i8* %10, i8** %3, align 8
  %11 = extractvalue { i8*, i32 } %9, 1
  store i32 %11, i32* %4, align 4
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i32 0, i32 0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev(%"struct.std::__cxx11::basic_string<char>::_Alloc_hider"* noundef nonnull align 8 dereferenceable(8) %12) #13
  br label %13

13:                                               ; preds = %8
  %14 = load i8*, i8** %3, align 8
  call void @__clang_call_terminate(i8* %14) #14
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
  %2 = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %2, align 8
  %3 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i32 0, i32 2
  %5 = bitcast %union.anon.0* %4 to [16 x i8]*
  %6 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %7 = call noundef i8* @_ZNSt14pointer_traitsIPcE10pointer_toERc(i8* noundef nonnull align 1 dereferenceable(1) %6) #13
  ret i8* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(%"struct.std::__cxx11::basic_string<char>::_Alloc_hider"* noundef nonnull align 8 dereferenceable(8) %0, i8* noundef %1, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #6 comdat align 2 {
  %4 = alloca %"struct.std::__cxx11::basic_string<char>::_Alloc_hider"*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %"class.std::allocator"*, align 8
  store %"struct.std::__cxx11::basic_string<char>::_Alloc_hider"* %0, %"struct.std::__cxx11::basic_string<char>::_Alloc_hider"** %4, align 8
  store i8* %1, i8** %5, align 8
  store %"class.std::allocator"* %2, %"class.std::allocator"** %6, align 8
  %7 = load %"struct.std::__cxx11::basic_string<char>::_Alloc_hider"*, %"struct.std::__cxx11::basic_string<char>::_Alloc_hider"** %4, align 8
  %8 = bitcast %"struct.std::__cxx11::basic_string<char>::_Alloc_hider"* %7 to %"class.std::allocator"*
  %9 = load %"class.std::allocator"*, %"class.std::allocator"** %6, align 8
  call void @_ZNSaIcEC2ERKS_(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %8, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %9) #13
  %10 = getelementptr inbounds %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", %"struct.std::__cxx11::basic_string<char>::_Alloc_hider"* %7, i32 0, i32 0
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %10, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(i8* noundef %0) #2 comdat align 2 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  store i8* %5, i8** %2, align 8
  br i1 false, label %6, label %9

6:                                                ; preds = %1
  %7 = load i8*, i8** %4, align 8
  %8 = call noundef i64 @_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc(i8* noundef %7)
  store i64 %8, i64* %3, align 8
  br label %12

9:                                                ; preds = %1
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @strlen(i8* noundef %10) #13
  store i64 %11, i64* %3, align 8
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i64, i64* %3, align 8
  ret i64 %13
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i8* noundef %1, i8* noundef %2) #2 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca %"struct.std::forward_iterator_tag", align 1
  %5 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_(i8* noundef %12)
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ne i8* %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  call void @_ZSt19__throw_logic_errorPKc(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0)) #15
  unreachable

19:                                               ; preds = %14, %3
  %20 = load i8*, i8** %6, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(i8* noundef %20, i8* noundef %21)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp ugt i64 %23, 15
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = call noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11, i64* noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 0)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11, i8* noundef %26)
  %27 = load i64, i64* %8, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %27)
  br label %28

28:                                               ; preds = %25, %19
  %29 = invoke noundef i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11)
          to label %30 unwind label %33

30:                                               ; preds = %28
  %31 = load i8*, i8** %6, align 8
  %32 = load i8*, i8** %7, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(i8* noundef %29, i8* noundef %31, i8* noundef %32) #13
  br label %46

33:                                               ; preds = %28
  %34 = landingpad { i8*, i32 }
          catch i8* null
  %35 = extractvalue { i8*, i32 } %34, 0
  store i8* %35, i8** %9, align 8
  %36 = extractvalue { i8*, i32 } %34, 1
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %33
  %38 = load i8*, i8** %9, align 8
  %39 = call i8* @__cxa_begin_catch(i8* %38) #13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11)
          to label %40 unwind label %41

40:                                               ; preds = %37
  invoke void @__cxa_rethrow() #15
          to label %56 unwind label %41

41:                                               ; preds = %40, %37
  %42 = landingpad { i8*, i32 }
          cleanup
  %43 = extractvalue { i8*, i32 } %42, 0
  store i8* %43, i8** %9, align 8
  %44 = extractvalue { i8*, i32 } %42, 1
  store i32 %44, i32* %10, align 4
  invoke void @__cxa_end_catch()
          to label %45 unwind label %53

45:                                               ; preds = %41
  br label %48

46:                                               ; preds = %30
  %47 = load i64, i64* %8, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %47)
  ret void

48:                                               ; preds = %45
  %49 = load i8*, i8** %9, align 8
  %50 = load i32, i32* %10, align 4
  %51 = insertvalue { i8*, i32 } undef, i8* %49, 0
  %52 = insertvalue { i8*, i32 } %51, i32 %50, 1
  resume { i8*, i32 } %52

53:                                               ; preds = %41
  %54 = landingpad { i8*, i32 }
          catch i8* null
  %55 = extractvalue { i8*, i32 } %54, 0
  call void @__clang_call_terminate(i8* %55) #14
  unreachable

56:                                               ; preds = %40
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev(%"struct.std::__cxx11::basic_string<char>::_Alloc_hider"* noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca %"struct.std::__cxx11::basic_string<char>::_Alloc_hider"*, align 8
  store %"struct.std::__cxx11::basic_string<char>::_Alloc_hider"* %0, %"struct.std::__cxx11::basic_string<char>::_Alloc_hider"** %2, align 8
  %3 = load %"struct.std::__cxx11::basic_string<char>::_Alloc_hider"*, %"struct.std::__cxx11::basic_string<char>::_Alloc_hider"** %2, align 8
  %4 = bitcast %"struct.std::__cxx11::basic_string<char>::_Alloc_hider"* %3 to %"class.std::allocator"*
  call void @_ZNSaIcED2Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %4) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i8* @_ZNSt14pointer_traitsIPcE10pointer_toERc(i8* noundef nonnull align 1 dereferenceable(1) %0) #0 comdat align 2 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call noundef i8* @_ZSt9addressofIcEPT_RS0_(i8* noundef nonnull align 1 dereferenceable(1) %3) #13
  ret i8* %4
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i8* @_ZSt9addressofIcEPT_RS0_(i8* noundef nonnull align 1 dereferenceable(1) %0) #0 comdat {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call noundef i8* @_ZSt11__addressofIcEPT_RS0_(i8* noundef nonnull align 1 dereferenceable(1) %3) #13
  ret i8* %4
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i8* @_ZSt11__addressofIcEPT_RS0_(i8* noundef nonnull align 1 dereferenceable(1) %0) #0 comdat {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  ret i8* %3
}

; Function Attrs: nounwind
declare void @_ZNSaIcEC2ERKS_(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #8

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc(i8* noundef %0) #2 comdat align 2 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %11, %1
  %6 = load i8*, i8** %2, align 8
  %7 = load i64, i64* %3, align 8
  %8 = getelementptr inbounds i8, i8* %6, i64 %7
  store i8 0, i8* %4, align 1
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_(i8* noundef nonnull align 1 dereferenceable(1) %8, i8* noundef nonnull align 1 dereferenceable(1) %4)
  %10 = xor i1 %9, true
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = load i64, i64* %3, align 8
  %13 = add i64 %12, 1
  store i64 %13, i64* %3, align 8
  br label %5, !llvm.loop !10

14:                                               ; preds = %5
  %15 = load i64, i64* %3, align 8
  ret i64 %15
}

; Function Attrs: nounwind
declare i64 @strlen(i8* noundef) #8

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_(i8* noundef nonnull align 1 dereferenceable(1) %0, i8* noundef nonnull align 1 dereferenceable(1) %1) #0 comdat align 2 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = load i8*, i8** %4, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %7, %10
  ret i1 %11
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_(i8* noundef %0) #0 comdat {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = icmp eq i8* %3, null
  ret i1 %4
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(i8* noundef) #9

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(i8* noundef %0, i8* noundef %1) #2 comdat {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %"struct.std::random_access_iterator_tag", align 1
  %6 = alloca %"struct.std::random_access_iterator_tag", align 1
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load i8*, i8** %4, align 8
  call void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(i8** noundef nonnull align 8 dereferenceable(8) %3)
  %9 = call noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(i8* noundef %7, i8* noundef %8)
  ret i64 %9
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i8* noundef %1) #0 comdat align 2 {
  %3 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %4 = alloca i8*, align 8
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", %"struct.std::__cxx11::basic_string<char>::_Alloc_hider"* %7, i32 0, i32 0
  store i8* %6, i8** %8, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64* noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) #2 comdat align 2 {
  %4 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %4, align 8
  %8 = load i64*, i64** %5, align 8
  %9 = load i64, i64* %8, align 8
  %10 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %7) #13
  %11 = icmp ugt i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  call void @_ZSt20__throw_length_errorPKc(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0)) #15
  unreachable

13:                                               ; preds = %3
  %14 = load i64*, i64** %5, align 8
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %13
  %19 = load i64*, i64** %5, align 8
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = mul i64 2, %21
  %23 = icmp ult i64 %20, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %18
  %25 = load i64, i64* %6, align 8
  %26 = mul i64 2, %25
  %27 = load i64*, i64** %5, align 8
  store i64 %26, i64* %27, align 8
  %28 = load i64*, i64** %5, align 8
  %29 = load i64, i64* %28, align 8
  %30 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %7) #13
  %31 = icmp ugt i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %7) #13
  %34 = load i64*, i64** %5, align 8
  store i64 %33, i64* %34, align 8
  br label %35

35:                                               ; preds = %32, %24
  br label %36

36:                                               ; preds = %35, %18, %13
  %37 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %7)
  %38 = load i64*, i64** %5, align 8
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, 1
  %41 = call noundef i8* @_ZNSt16allocator_traitsISaIcEE8allocateERS0_m(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %37, i64 noundef %40)
  ret i8* %41
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #0 comdat align 2 {
  %3 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i32 0, i32 2
  %8 = bitcast %union.anon.0* %7 to i64*
  store i64 %6, i64* %8, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(i8* noundef %0, i8* noundef %1, i8* noundef %2) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = ptrtoint i8* %9 to i64
  %12 = ptrtoint i8* %10 to i64
  %13 = sub i64 %11, %12
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm(i8* noundef %7, i8* noundef %8, i64 noundef %13)
          to label %14 unwind label %15

14:                                               ; preds = %3
  ret void

15:                                               ; preds = %3
  %16 = landingpad { i8*, i32 }
          catch i8* null
  %17 = extractvalue { i8*, i32 } %16, 0
  call void @__clang_call_terminate(i8* %17) #14
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
  %2 = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %2, align 8
  %3 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", %"struct.std::__cxx11::basic_string<char>::_Alloc_hider"* %4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  ret i8* %6
}

declare i8* @__cxa_begin_catch(i8*)

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0) #2 comdat align 2 {
  %2 = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %2, align 8
  %3 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %2, align 8
  %4 = call noundef zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %3)
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i32 0, i32 2
  %7 = bitcast %union.anon.0* %6 to i64*
  %8 = load i64, i64* %7, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %8) #13
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

declare void @__cxa_rethrow()

declare void @__cxa_end_catch()

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #10 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #13
  call void @_ZSt9terminatev() #14
  unreachable
}

declare void @_ZSt9terminatev()

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #2 comdat align 2 {
  %3 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %3, align 8
  %7 = load i64, i64* %4, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %7)
  %8 = call noundef i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %6)
  %9 = load i64, i64* %4, align 8
  %10 = getelementptr inbounds i8, i8* %8, i64 %9
  store i8 0, i8* %5, align 1
  call void @_ZNSt11char_traitsIcE6assignERcRKc(i8* noundef nonnull align 1 dereferenceable(1) %10, i8* noundef nonnull align 1 dereferenceable(1) %5) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(i8* noundef %0, i8* noundef %1) #0 comdat {
  %3 = alloca %"struct.std::random_access_iterator_tag", align 1
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = ptrtoint i8* %6 to i64
  %9 = ptrtoint i8* %7 to i64
  %10 = sub i64 %8, %9
  ret i64 %10
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(i8** noundef nonnull align 8 dereferenceable(8) %0) #0 comdat {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %2, align 8
  %3 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %2, align 8
  %4 = invoke noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %3)
          to label %5 unwind label %9

5:                                                ; preds = %1
  %6 = call noundef i64 @_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %4) #13
  %7 = sub i64 %6, 1
  %8 = udiv i64 %7, 2
  ret i64 %8

9:                                                ; preds = %1
  %10 = landingpad { i8*, i32 }
          catch i8* null
  %11 = extractvalue { i8*, i32 } %10, 0
  call void @__clang_call_terminate(i8* %11) #14
  unreachable
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(i8* noundef) #9

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i8* @_ZNSt16allocator_traitsISaIcEE8allocateERS0_m(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #2 comdat align 2 {
  %3 = alloca %"class.std::allocator"*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %"class.std::allocator"*, align 8
  %6 = alloca i64, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %5, align 8
  store i64 %1, i64* %6, align 8
  %7 = load %"class.std::allocator"*, %"class.std::allocator"** %5, align 8
  %8 = load i64, i64* %6, align 8
  store %"class.std::allocator"* %7, %"class.std::allocator"** %3, align 8
  store i64 %8, i64* %4, align 8
  %9 = load %"class.std::allocator"*, %"class.std::allocator"** %3, align 8
  %10 = bitcast %"class.std::allocator"* %9 to %"class.__gnu_cxx::new_allocator"*
  %11 = load i64, i64* %4, align 8
  %12 = call noundef i8* @_ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %10, i64 noundef %11, i8* noundef null)
  ret i8* %12
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
  %2 = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %2, align 8
  %3 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::__cxx11::basic_string<char>::_Alloc_hider"* %4 to %"class.std::allocator"*
  ret %"class.std::allocator"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %0) #0 comdat align 2 {
  %2 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %2, align 8
  ret i64 -1
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
  %2 = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %2, align 8
  %3 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::__cxx11::basic_string<char>::_Alloc_hider"* %4 to %"class.std::allocator"*
  ret %"class.std::allocator"* %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i8* @_ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, i8* noundef %2) #2 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call noundef i64 @_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %7) #13
  %10 = icmp ugt i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load i64, i64* %5, align 8
  %13 = icmp ugt i64 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  call void @_ZSt28__throw_bad_array_new_lengthv() #15
  unreachable

15:                                               ; preds = %11
  call void @_ZSt17__throw_bad_allocv() #15
  unreachable

16:                                               ; preds = %3
  %17 = load i64, i64* %5, align 8
  %18 = mul i64 %17, 1
  %19 = call noalias noundef nonnull i8* @_Znwm(i64 noundef %18) #16
  ret i8* %19
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %0) #0 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %2, align 8
  ret i64 9223372036854775807
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() #9

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znwm(i64 noundef) #3

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm(i8* noundef %0, i8* noundef %1, i64 noundef %2) #2 comdat align 2 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 1
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load i8*, i8** %4, align 8
  %11 = load i8*, i8** %5, align 8
  call void @_ZNSt11char_traitsIcE6assignERcRKc(i8* noundef nonnull align 1 dereferenceable(1) %10, i8* noundef nonnull align 1 dereferenceable(1) %11) #13
  br label %17

12:                                               ; preds = %3
  %13 = load i8*, i8** %4, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call noundef i8* @_ZNSt11char_traitsIcE4copyEPcPKcm(i8* noundef %13, i8* noundef %14, i64 noundef %15)
  br label %17

17:                                               ; preds = %12, %9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt11char_traitsIcE6assignERcRKc(i8* noundef nonnull align 1 dereferenceable(1) %0, i8* noundef nonnull align 1 dereferenceable(1) %1) #0 comdat align 2 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load i8, i8* %5, align 1
  %7 = load i8*, i8** %3, align 8
  store i8 %6, i8* %7, align 1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i8* @_ZNSt11char_traitsIcE4copyEPcPKcm(i8* noundef %0, i8* noundef %1, i64 noundef %2) #0 comdat align 2 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %4, align 8
  br label %16

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i64, i64* %7, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %13, i8* align 1 %14, i64 %15, i1 false)
  store i8* %13, i8** %4, align 8
  br label %16

16:                                               ; preds = %12, %10
  %17 = load i8*, i8** %4, align 8
  ret i8* %17
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0) #2 comdat align 2 {
  %2 = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %2, align 8
  %3 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %2, align 8
  %4 = call noundef i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %3)
  %5 = call noundef i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %3)
  %6 = icmp eq i8* %4, %5
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %3, align 8
  %6 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %5)
  %7 = call noundef i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %5)
  %8 = load i64, i64* %4, align 8
  %9 = add i64 %8, 1
  invoke void @_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %6, i8* noundef %7, i64 noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %2
  ret void

11:                                               ; preds = %2
  %12 = landingpad { i8*, i32 }
          catch i8* null
  %13 = extractvalue { i8*, i32 } %12, 0
  call void @__clang_call_terminate(i8* %13) #14
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
  %2 = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %2, align 8
  %3 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i32 0, i32 2
  %5 = bitcast %union.anon.0* %4 to [16 x i8]*
  %6 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %7 = call noundef i8* @_ZNSt14pointer_traitsIPKcE10pointer_toERS0_(i8* noundef nonnull align 1 dereferenceable(1) %6) #13
  ret i8* %7
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i8* @_ZNSt14pointer_traitsIPKcE10pointer_toERS0_(i8* noundef nonnull align 1 dereferenceable(1) %0) #0 comdat align 2 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call noundef i8* @_ZSt9addressofIKcEPT_RS1_(i8* noundef nonnull align 1 dereferenceable(1) %3) #13
  ret i8* %4
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i8* @_ZSt9addressofIKcEPT_RS1_(i8* noundef nonnull align 1 dereferenceable(1) %0) #0 comdat {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call noundef i8* @_ZSt11__addressofIKcEPT_RS1_(i8* noundef nonnull align 1 dereferenceable(1) %3) #13
  ret i8* %4
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i8* @_ZSt11__addressofIKcEPT_RS1_(i8* noundef nonnull align 1 dereferenceable(1) %0) #0 comdat {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  ret i8* %3
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %0, i8* noundef %1, i64 noundef %2) #2 comdat align 2 {
  %4 = alloca %"class.std::allocator"*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %"class.std::allocator"*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  %10 = load %"class.std::allocator"*, %"class.std::allocator"** %7, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = load i64, i64* %9, align 8
  store %"class.std::allocator"* %10, %"class.std::allocator"** %4, align 8
  store i8* %11, i8** %5, align 8
  store i64 %12, i64* %6, align 8
  %13 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8
  %14 = bitcast %"class.std::allocator"* %13 to %"class.__gnu_cxx::new_allocator"*
  %15 = load i8*, i8** %5, align 8
  %16 = load i64, i64* %6, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %14, i8* noundef %15, i64 noundef %16)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %0, i8* noundef %1, i64 noundef %2) #0 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %4, align 8
  %8 = load i8*, i8** %5, align 8
  call void @_ZdlPv(i8* noundef %8) #13
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) #4

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #0 comdat align 2 {
  %3 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i32 0, i32 1
  store i64 %6, i64* %7, align 8
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSaIcED2Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #8

declare void @_ZNSt13random_device7_M_finiEv(%"class.std::random_device"* noundef nonnull align 8 dereferenceable(5000)) #7

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt24uniform_int_distributionIhE10param_typeC2Ehh(%"struct.std::uniform_int_distribution<unsigned char>::param_type"* noundef nonnull align 1 dereferenceable(2) %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #6 comdat align 2 {
  %4 = alloca %"struct.std::uniform_int_distribution<unsigned char>::param_type"*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %"struct.std::uniform_int_distribution<unsigned char>::param_type"* %0, %"struct.std::uniform_int_distribution<unsigned char>::param_type"** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %7 = load %"struct.std::uniform_int_distribution<unsigned char>::param_type"*, %"struct.std::uniform_int_distribution<unsigned char>::param_type"** %4, align 8
  %8 = getelementptr inbounds %"struct.std::uniform_int_distribution<unsigned char>::param_type", %"struct.std::uniform_int_distribution<unsigned char>::param_type"* %7, i32 0, i32 0
  %9 = load i8, i8* %5, align 1
  store i8 %9, i8* %8, align 1
  %10 = getelementptr inbounds %"struct.std::uniform_int_distribution<unsigned char>::param_type", %"struct.std::uniform_int_distribution<unsigned char>::param_type"* %7, i32 0, i32 1
  %11 = load i8, i8* %6, align 1
  store i8 %11, i8* %10, align 1
  br label %12

12:                                               ; preds = %3
  br label %13

13:                                               ; preds = %12
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i8 @_ZNSt24uniform_int_distributionIhEclISt13random_deviceEEhRT_RKNS0_10param_typeE(%"class.std::uniform_int_distribution"* noundef nonnull align 1 dereferenceable(2) %0, %"class.std::random_device"* noundef nonnull align 8 dereferenceable(5000) %1, %"struct.std::uniform_int_distribution<unsigned char>::param_type"* noundef nonnull align 1 dereferenceable(2) %2) #2 comdat align 2 {
  %4 = alloca %"class.std::uniform_int_distribution"*, align 8
  %5 = alloca %"class.std::random_device"*, align 8
  %6 = alloca %"struct.std::uniform_int_distribution<unsigned char>::param_type"*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %"struct.std::uniform_int_distribution<unsigned char>::param_type", align 1
  store %"class.std::uniform_int_distribution"* %0, %"class.std::uniform_int_distribution"** %4, align 8
  store %"class.std::random_device"* %1, %"class.std::random_device"** %5, align 8
  store %"struct.std::uniform_int_distribution<unsigned char>::param_type"* %2, %"struct.std::uniform_int_distribution<unsigned char>::param_type"** %6, align 8
  %17 = load %"class.std::uniform_int_distribution"*, %"class.std::uniform_int_distribution"** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %18 = load %"struct.std::uniform_int_distribution<unsigned char>::param_type"*, %"struct.std::uniform_int_distribution<unsigned char>::param_type"** %6, align 8
  %19 = call noundef zeroext i8 @_ZNKSt24uniform_int_distributionIhE10param_type1bEv(%"struct.std::uniform_int_distribution<unsigned char>::param_type"* noundef nonnull align 1 dereferenceable(2) %18)
  %20 = zext i8 %19 to i32
  %21 = load %"struct.std::uniform_int_distribution<unsigned char>::param_type"*, %"struct.std::uniform_int_distribution<unsigned char>::param_type"** %6, align 8
  %22 = call noundef zeroext i8 @_ZNKSt24uniform_int_distributionIhE10param_type1aEv(%"struct.std::uniform_int_distribution<unsigned char>::param_type"* noundef nonnull align 1 dereferenceable(2) %21)
  %23 = zext i8 %22 to i32
  %24 = sub i32 %20, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ugt i32 -1, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %3
  %28 = load i32, i32* %10, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %13, align 4
  %31 = load %"class.std::random_device"*, %"class.std::random_device"** %5, align 8
  %32 = load i32, i32* %13, align 4
  %33 = call noundef i32 @_ZNSt24uniform_int_distributionIhE5_S_ndImSt13random_devicejEET1_RT0_S3_(%"class.std::random_device"* noundef nonnull align 8 dereferenceable(5000) %31, i32 noundef %32)
  store i32 %33, i32* %11, align 4
  br label %67

34:                                               ; preds = %3
  %35 = load i32, i32* %10, align 4
  %36 = icmp ult i32 -1, %35
  br i1 %36, label %37, label %62

37:                                               ; preds = %34
  br label %38

38:                                               ; preds = %59, %37
  store i32 0, i32* %15, align 4
  %39 = load %"class.std::random_device"*, %"class.std::random_device"** %5, align 8
  %40 = load i32, i32* %10, align 4
  %41 = udiv i32 %40, 0
  %42 = trunc i32 %41 to i8
  call void @_ZNSt24uniform_int_distributionIhE10param_typeC2Ehh(%"struct.std::uniform_int_distribution<unsigned char>::param_type"* noundef nonnull align 1 dereferenceable(2) %16, i8 noundef zeroext 0, i8 noundef zeroext %42)
  %43 = call noundef zeroext i8 @_ZNSt24uniform_int_distributionIhEclISt13random_deviceEEhRT_RKNS0_10param_typeE(%"class.std::uniform_int_distribution"* noundef nonnull align 1 dereferenceable(2) %17, %"class.std::random_device"* noundef nonnull align 8 dereferenceable(5000) %39, %"struct.std::uniform_int_distribution<unsigned char>::param_type"* noundef nonnull align 1 dereferenceable(2) %16)
  %44 = zext i8 %43 to i32
  %45 = mul i32 0, %44
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = load %"class.std::random_device"*, %"class.std::random_device"** %5, align 8
  %48 = call noundef i32 @_ZNSt13random_deviceclEv(%"class.std::random_device"* noundef nonnull align 8 dereferenceable(5000) %47)
  %49 = sub i32 %48, 0
  %50 = add i32 %46, %49
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %38
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ugt i32 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp ult i32 %56, %57
  br label %59

59:                                               ; preds = %55, %51
  %60 = phi i1 [ true, %51 ], [ %58, %55 ]
  br i1 %60, label %38, label %61, !llvm.loop !11

61:                                               ; preds = %59
  br label %66

62:                                               ; preds = %34
  %63 = load %"class.std::random_device"*, %"class.std::random_device"** %5, align 8
  %64 = call noundef i32 @_ZNSt13random_deviceclEv(%"class.std::random_device"* noundef nonnull align 8 dereferenceable(5000) %63)
  %65 = sub i32 %64, 0
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %62, %61
  br label %67

67:                                               ; preds = %66, %27
  %68 = load i32, i32* %11, align 4
  %69 = load %"struct.std::uniform_int_distribution<unsigned char>::param_type"*, %"struct.std::uniform_int_distribution<unsigned char>::param_type"** %6, align 8
  %70 = call noundef zeroext i8 @_ZNKSt24uniform_int_distributionIhE10param_type1aEv(%"struct.std::uniform_int_distribution<unsigned char>::param_type"* noundef nonnull align 1 dereferenceable(2) %69)
  %71 = zext i8 %70 to i32
  %72 = add i32 %68, %71
  %73 = trunc i32 %72 to i8
  ret i8 %73
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i8 @_ZNKSt24uniform_int_distributionIhE10param_type1bEv(%"struct.std::uniform_int_distribution<unsigned char>::param_type"* noundef nonnull align 1 dereferenceable(2) %0) #0 comdat align 2 {
  %2 = alloca %"struct.std::uniform_int_distribution<unsigned char>::param_type"*, align 8
  store %"struct.std::uniform_int_distribution<unsigned char>::param_type"* %0, %"struct.std::uniform_int_distribution<unsigned char>::param_type"** %2, align 8
  %3 = load %"struct.std::uniform_int_distribution<unsigned char>::param_type"*, %"struct.std::uniform_int_distribution<unsigned char>::param_type"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::uniform_int_distribution<unsigned char>::param_type", %"struct.std::uniform_int_distribution<unsigned char>::param_type"* %3, i32 0, i32 1
  %5 = load i8, i8* %4, align 1
  ret i8 %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i8 @_ZNKSt24uniform_int_distributionIhE10param_type1aEv(%"struct.std::uniform_int_distribution<unsigned char>::param_type"* noundef nonnull align 1 dereferenceable(2) %0) #0 comdat align 2 {
  %2 = alloca %"struct.std::uniform_int_distribution<unsigned char>::param_type"*, align 8
  store %"struct.std::uniform_int_distribution<unsigned char>::param_type"* %0, %"struct.std::uniform_int_distribution<unsigned char>::param_type"** %2, align 8
  %3 = load %"struct.std::uniform_int_distribution<unsigned char>::param_type"*, %"struct.std::uniform_int_distribution<unsigned char>::param_type"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::uniform_int_distribution<unsigned char>::param_type", %"struct.std::uniform_int_distribution<unsigned char>::param_type"* %3, i32 0, i32 0
  %5 = load i8, i8* %4, align 1
  ret i8 %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt24uniform_int_distributionIhE5_S_ndImSt13random_devicejEET1_RT0_S3_(%"class.std::random_device"* noundef nonnull align 8 dereferenceable(5000) %0, i32 noundef %1) #2 comdat align 2 {
  %3 = alloca %"class.std::random_device"*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %"class.std::random_device"* %0, %"class.std::random_device"** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %"class.std::random_device"*, %"class.std::random_device"** %3, align 8
  %9 = call noundef i32 @_ZNSt13random_deviceclEv(%"class.std::random_device"* noundef nonnull align 8 dereferenceable(5000) %8)
  %10 = zext i32 %9 to i64
  %11 = load i32, i32* %4, align 4
  %12 = zext i32 %11 to i64
  %13 = mul i64 %10, %12
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = sub i32 0, %20
  %22 = load i32, i32* %4, align 4
  %23 = urem i32 %21, %22
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %28, %19
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = load %"class.std::random_device"*, %"class.std::random_device"** %3, align 8
  %30 = call noundef i32 @_ZNSt13random_deviceclEv(%"class.std::random_device"* noundef nonnull align 8 dereferenceable(5000) %29)
  %31 = zext i32 %30 to i64
  %32 = load i32, i32* %4, align 4
  %33 = zext i32 %32 to i64
  %34 = mul i64 %31, %33
  store i64 %34, i64* %5, align 8
  %35 = load i64, i64* %5, align 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %6, align 4
  br label %24, !llvm.loop !12

37:                                               ; preds = %24
  br label %38

38:                                               ; preds = %37, %2
  %39 = load i64, i64* %5, align 8
  %40 = lshr i64 %39, 32
  %41 = trunc i64 %40 to i32
  ret i32 %41
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt13random_deviceclEv(%"class.std::random_device"* noundef nonnull align 8 dereferenceable(5000) %0) #2 comdat align 2 {
  %2 = alloca %"class.std::random_device"*, align 8
  store %"class.std::random_device"* %0, %"class.std::random_device"** %2, align 8
  %3 = load %"class.std::random_device"*, %"class.std::random_device"** %2, align 8
  %4 = call noundef i32 @_ZNSt13random_device9_M_getvalEv(%"class.std::random_device"* noundef nonnull align 8 dereferenceable(5000) %3)
  ret i32 %4
}

declare noundef i32 @_ZNSt13random_device9_M_getvalEv(%"class.std::random_device"* noundef nonnull align 8 dereferenceable(5000)) #7

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind }
attributes #11 = { builtin allocsize(0) }
attributes #12 = { builtin nounwind }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }
attributes #16 = { allocsize(0) }

!llvm.linker.options = !{}
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
