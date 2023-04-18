! abstract classes or types 
module shape_mod
    implicit none
    type, abstract :: shape_m
        real :: x, y ! fields
        
        contains
            ! declaration of abstract method of type shape_area
            procedure(shape_area), deferred :: get_area 
    end type shape_m

    interface
        function shape_area(this) result(area)
            ! use shape_m as type
            import :: shape_m
            class(shape_m) :: this
            real :: area
        end function shape_area
    end interface
end module shape_mod