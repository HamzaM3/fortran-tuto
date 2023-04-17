! subclass
module triangle_mod
    use shape_mod
    implicit none

    ! extends
    type, extends(shape_m), public :: triangle_m
        ! declaration of accessible methods
        contains
            procedure :: get_area
    end type triangle_m

    contains
        ! this for object
        real function get_area(this) result(area)
            class(triangle_m) :: this
            area = this%y * this%x * 0.5
        end function get_area

end module triangle_mod