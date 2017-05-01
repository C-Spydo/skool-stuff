program tryarray
Real,Dimension(3,4)::newarray
Do i=1,3
  do j=1,4
    Write(*,*)'Enter data for row ',i,'and column ',j
    Read(*,*)newarray(i,j)
    end do
 end do
Write(*,*)newarray
end program