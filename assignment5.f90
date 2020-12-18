program Assignment5
implicit none
real,dimension (:,:), allocatable::table ! maximum array 
real::a,b,c
logical::check
integer::m,i,S(2),ios
character(len=20)::name
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
m=int(abs(b-a)/c)+1
allocate(table(m,1:3))
table=0  ! assign values to table's elements 
print*,'enter your name (single word maximum 20 characters) for file creation'
read*, name
open(1, file = trim(name)//'.txt',form='formatted',ACCESS='Sequential',iostat=ios &
   ,status ='new', ERR=10)
write(1,101) 'In this table the range of ',int(a),'to ',int(b),'Centigrade in converted to Fahrenheit and Kelvin'
101 format(a,i3,a,i3,a) 
write(1,*) 'Centigrade   Fahrenheit  Kelvin' 
do i=1,m
table(i,1)=a+(i-1)*c
table(i,2)=1.8*table(i,1)+32
table(i,3)=table(i,1)+273.15
write(1,102)table(i,1),table(i,2),table(i,3)
enddo
102 format(1x,f6.2,6x,f6.2,7x,f6.2)
S=shape(table)
write(1,103) 'Your table has',S(1),' rows, and ',S(2),' columns'
103 format(a,i3,a,i1,a)
deallocate(table)
stop
10 print*,'Cannot create your table'
End program Assignment5