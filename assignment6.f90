Program assignment6
implicit none
integer :: ArrayLength
  write(*,*) ArrayLength('data.dat')
end program assignment6

function ArrayLength(input) result(n)
! this function take the Name of a text file and returns its length 
implicit none
character(len=*) :: input
integer :: n,stat
real::x
open(20,file=trim(input))
n=-1
stat=0
do while(stat == 0)
     n=n+1
     read(20,*,iostat=stat)x
enddo
rewind(20)
end function ArrayLength