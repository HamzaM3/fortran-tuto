! single object with subroutines modifying its private state
! and accessors
module shape
    implicit none
    real, private :: height = 1
    real, private :: width = 1

    public :: set_shape, get_area1

    contains
        subroutine set_shape(h, w)
            implicit none
            real, intent(in) :: h, w
            height = h
            width = w
        end subroutine set_shape

        real function get_area1() result(u)
            implicit none
            u = height * width
        end function get_area1
end module shape