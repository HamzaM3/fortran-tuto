
program main
    use shape
    use shape_mod
    use triangle_mod
    implicit none
    
    ! variable of the class declared
    type(triangle_m) :: tri

    ! procedure call of the shape
    call set_shape(10.1, 10.1)
    print *, get_area1()

    ! setting fields of triangle
    tri%x = 10
    tri%y = 20

    print "(a3, f5.2)", "ok:", tri%x
    print "(a3, f5.2)", "ok:", tri%y
    ! method call
    print "(a3, f8.2)", "ok:", tri%get_area()
end program main