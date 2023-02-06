program forallloop_01
implicit none
real, dimension(10000) :: a, b, c
real :: scalar
integer :: i, nsize
scalar = 10
nsize = size(a)
forall (i = 1:nsize)
    a(i) = 5
    b(i) = 5
end forall
call triad(a, b, scalar, c)
print *, "End Stream Triad"

contains

    subroutine triad(a, b, scalar, c)
    real, intent(in) :: a(:), b(:), scalar
    real, intent(out) :: c(:)
    integer :: N, i
    N = size(a)
    forall (i = 1:N) c(i) = a(i) + scalar * b(i)
    end subroutine

end program
