program myapp

    implicit none

    real, parameter :: PI = 3.432442
    real :: a = 0.0, b = 0.0
    double precision :: d = 1.232312321313d+0
    integer :: i = 2
    logical :: ok = .true.
    character (len = 10) :: v
    complex :: j = (1.0, 1.0)

    print *, huge(a) ! biggest float
    print *, huge(i) ! biggest int
    print *, tiny(a) ! smallest float

    ! get type
    print "(a4, i1)", "Int ", kind(i)

    !! formating look at video

    print "(3i4)", 100, 23, 423
    print "(a9)", "okay fine"
    print "(f1.4)", 3.14342
    print "(e1.4)", 3.14342
    print "(a4, /, i1)", "data", 23 ! "/" is for newline

    ! print in variable
    write(v, "(a8)") "in here"
    print *, v, d

    ! arithmetic with + - * /
    ! modulus: mod(x, y)

    ! random_number(variable) -> random var in the variable

    ! a lot of math functs with MAX, SIN,...


end program myapp