@.str = private unnamed_addr constant [13 x i8] c"hello world\0A\00"

declare i32 @puts(i8* nocapture) nounwind

define i32 @fun(){
entry:
    br label %while_cond

while_cond:
    %i = phi i32 [ 0, %entry ], [%i.next, %true]
    %sum = phi i32 [0, %entry], [%sum.next, %true]
    %cond = icmp ugt i32 %i, 100
    br i1 %cond, label %false, label %true
true:
    %sum.next = add i32 %sum, %i
    %i.next = add i32 %i, 1
    br label %while_cond
false:
    %0 = getelementptr [13 x i8], [13 x i8]* @.str, i64 0, i64 0
    call i32 @puts(i8* %0)
    ret i32 %sum;
}