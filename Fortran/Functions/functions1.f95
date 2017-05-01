SUBROUTINE sumAv(x,y,sum,av)
!no local variable declaration
sum=x+y
av=sum/2.0
RETURN
End Subroutine

Program testSubroutine
Real a,b,add,mean
Write(*,*)'Enter the value of a '
Read(*,*)a
Write(*,*)'Enter the value of b '
Read(*,*)b
!invoke the subroutine sum
CALL sumAv(a,b,add,mean)
Write(*,*)'Sum= ',add,'Mean= ',mean
Stop 
End
