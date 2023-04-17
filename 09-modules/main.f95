! to compile this do:
! gfortran -c mult_mod.f95 main.f95
! gfotran mult_mod.o main.o

program main
    use mult_mod
    implicit none
    integer :: r_ans

    print "(a8, i2)", "5 * 4 = ", mult(5,4)

end program main