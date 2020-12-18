module MatrixGen
implicit none
real::aaa=20
public:: RandMatrix

contains
 
function RandMatrix(rows,columns) result(matrix)
implicit none
integer::rows,columns
integer::i,j
real:: matrix(rows,columns)
do i=1,rows
 do j=1,columns
   matrix(i,j)=aaa*(time()*rand()*1e-9/(i+j))
 end do
end do
end function RandMatrix

subroutine Array(x,AVG)
implicit none
real, dimension (:,:), intent(in):: x ! maximum array
integer:: s(2)
real, intent(out)::AVG
S= shape(x)
AVG=sum(x)/real(s(1)*s(2))
end subroutine Array

end module MatrixGen


Program assignment7
use MatrixGen
implicit none
real, allocatable :: a(:,:)
real::average
integer:: n,m,i
print*, 'This program creates a nxm matrix with random value elements between 0 to 20'
print*, 'Then calculates the average value of the matrix elements, and displays it on the screen' 
print*, 'Enter n and m respectively (comma separated)'
read(*,*) n,m 
! creation of nxm random matrix
allocate(a(n,m))
a=RandMatrix (n,m)
print*, 'the generated matrix is'
do i=1,n
  write(*,*) a(i,:)
end do
Call Array(a,average)
print*, 'the average value of the matrix elements is:', average
end program assignment7

