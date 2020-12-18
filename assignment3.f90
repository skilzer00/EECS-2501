program Assignment3
implicit none
real,dimension (210,3)::table ! maximum array 
real::a,b,c
logical::check
integer::m,i
check=.true.
do while (check)
 print*,'enter the lower and upper temperature &
&limit of your table (separate with a comma)'
 read(*,*) a,b
 if ((a > 200.0 .OR. a < -10.0) .OR. (b > 200.0 .OR. b < -10.0)) then
    print*, 'Your temperature(s) is not between -10 and 200 Centigrade'
    else 
    ! sort the entries
    if (a>b) then
    a=a+b; b=a-b; a=a-b
    end if
    do while (check)
    print*,'enter the  increment of your table, a value between 1 and', abs(b-a)
    read(*,*) c
    if (c > 1.0 .and. c < abs(b-a)) then
    check=.false.
    end if
    end do
 end if 
end do
! creating the table
m=int(abs(b-a)/c)
table(1:210,1:3)=0  ! assign values to table's elements 
print*, '  centigrade       Fahrenheit       Kelvin'
do i=1,m+1
table(i,1)=a+(i-1)*c
table(i,2)=1.8*table(i,1)+32
table(i,3)=table(i,1)+273.15
print*,table(i,1),table(i,2),table(i,3)
enddo
print*, 'your table has',m+1,'rows, and',3,'columns'
End program Assignment3