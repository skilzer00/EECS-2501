program Assignment2
implicit none 
! declaration
character (len=65) :: name    
integer :: m, sum, i 
! Input     
! output and expressions 
print*, 'This program prints all odd numbers between 0 &
&to maximum 1000, and calculates the sum of them.'
print*, 'Please enter your name (use maximum 65 letters)'
read(*,*) name
print*, 'Please enter your desire integers number( your &
&number should be between 0 to 1000)'
read(*,*) m
sum=0
do i=1,m,2
print*,i
  sum=sum+i
end do
print*, 'The sum of these odd numbers is:',sum
print*, 'Thank you',name,'for using this code.'
End program Assignment2