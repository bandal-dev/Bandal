program derived_types_03
implicit none

type :: X
    integer :: i
end type

type(X) :: b

contains

    subroutine Y()
    type :: A
        integer :: i
    end type
    type(A) :: b
    end subroutine

    integer function Z()
    type :: A
        integer :: i
    end type
    type(A) :: b
    Z = 5
    end function

end
