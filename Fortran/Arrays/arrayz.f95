!fooling around with arrays in fortran class
program arraytinz
Real,Dimension(5,4)::score
real::max,sumstd
Do i=1,5
  do j=1,4
    Write(*,*)'Enter data for row ',i,'and column ',j
    Read(*,*)score(i,j)
    end do
 end do
Write(*,*)score
max=score(1,1)
Do i=1,5
  do j=1,4
    if (score(i,j)>max) then
      max=score(i,j)
     	end if
  end do
end do
write(*,*)'The maximum score is ',max,'by student ',i,'in course ', j
Do i=1,5
  sumstd=0
  meanstd=0
  do j=1,4
	sumstd=sumstd+score(i,j)
  end do
  meanstd=sumstd/4
  write(*,*)'The total score for student ',i,'is 'sumstd
end do
end program