!Factorial(okemakinde samson)
program factorialcomp
integer factorial,n,i
print *,'Enter the value of n for the factorial'
Read *,N
factorial=1
if (N<=1)then
  factorial=1
   else
	DO i=1,N
  		factorial=factorial*I
  		end do

end if
Write(*,*)'Factorial of',n,'=',factorial
End program