Real FUNCTION Fact(a)
Real::a,f
Integer::J
f=1
if(a<=1)Then
  f=1
  Else
    Do J=a,2,-1  !Counting downwards
      f=f*J
    End Do
    Fact=f
    end if
Return
End Function

Program factorial
Real::n,NFactorial
Write(*,*)'Enter the value of n '
Read(*,*)n
NFactorial=Fact(n)
Write(*,*)'Factorial of ',n,'=',NFactorial
Stop 
End