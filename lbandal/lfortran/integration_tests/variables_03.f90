program variables_03
implicit none
integer :: x
logical :: b
x = 2
b = (x /= 2)
if (b) error stop

b = (x == 2)
if (.not. b) error stop

b = .not. (x == 2)
if (b) error stop

b = (x == 2)
b = .not. b
if (b) error stop
end program
