program Assignment1
implicit none 
! declaration
character (len=25) :: name    
real (Kind=8) :: pi, area  ! it is up to you to specify kind
integer :: student_number, radius 
! Input     
name= " First-name Last-name"
student_number = 500111111
radius= 11
! output and expressions 
print*, 'Hello, my name is ',name,', and my student number is',student_number
pi=4*atan(1.0)
area=pi*real(radius)**2
print*, 'The area of a',radius,'-m-radius circle is:', area, 'square meters'
End program Assignment1