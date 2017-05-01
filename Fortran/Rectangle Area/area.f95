Program AreaPerimeter
Implicit none
!program to find the area/perimeter
!of a rectangle
Real::length,breadth,area,perimeter
Write(*,*)'Enter the breadth'
Read(*,*)Breadth
Write(*,*)'Enter the lenght'
Read(*,*)length
area=length*breadth
perimeter=2*(length+breadth)
Write(*,*)'area=',area 
Write(*,*)'perimeter=',perimeter
Stop
End
