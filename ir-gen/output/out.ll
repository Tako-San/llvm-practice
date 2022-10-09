; ModuleID = 'top'
source_filename = "top"

@SURF_CUR = common global i8* null, align 8
@SURF_NEXT = common global i8* null, align 8

declare available_externally i8 @getZeroOrOne()

declare available_externally void @init(i64 %0, i64 %1)

declare available_externally i8 @finished()

define internal void @fillRand() {
entry:
  br label %loop

return:                                           ; preds = %loop
  ret void

loop:                                             ; preds = %loop, %entry
  %idx = phi i64 [ 0, %entry ], [ %inc, %loop ]
  %val = call i8 @getZeroOrOne()
  %surf = load i8*, i8** @SURF_CUR, align 8
  %ePtr = getelementptr i8, i8* %surf, i64 %idx
  store i8 %val, i8* %ePtr, align 1
  %inc = add nuw nsw i64 %idx, 1
  %cmp = icmp eq i64 %inc, 230400
  br i1 %cmp, label %return, label %loop
}

define i32 @main() {
entry:
  %0 = alloca [230400 x i8], align 1
  %1 = alloca [230400 x i8], align 1
  %2 = getelementptr [230400 x i8], [230400 x i8]* %0, i64 0, i64 0
  store i8* %2, i8** @SURF_CUR, align 8
  call void @fillRand()
  %3 = getelementptr [230400 x i8], [230400 x i8]* %1, i64 0, i64 0
  store i8* %3, i8** @SURF_NEXT, align 8
  call void @init(i64 360, i64 640)
  br label %loop.cond

loop.cond:                                        ; preds = %loop.body, %entry
  %4 = call i8 @finished()
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %loop.body, label %return

loop.body:                                        ; preds = %loop.cond
  br label %loop.cond

return:                                           ; preds = %loop.cond
  ret i32 0
}
