program arrays
    implicit none

    integer, dimension(1:5) :: a1, a2, a3 ! array of int of size 5
    real, dimension(1:50) :: aR1 ! array of floats of size 50
    integer, dimension(5,5) :: a4 ! matrix shape (5,5)
    integer :: n, m, x, y
    integer, dimension (:), allocatable :: a5 !unallocated array (to be allocated)
    integer :: num_vals = 0
    integer, dimension(1:9) :: a6 = (/1,3,4,5,4,5,6,3,2/) ! values at initialization
    integer, dimension(1:3, 1:3) :: a7 ! matrix

    ! indexation
    a1(1) = 5
    print "(i1)", a1(1)

    do n = 1,5
        a1(n) = n
    end do

    do n = 1,5
        print "(i1)", a1(n)
    end do

    ! range index
    print "(3i2)", a1(1:3)
    print "(2i2)", a1(1:3:2)

    ! 2 dimensions
    do n = 1,5
        do m = 1,5
            a4(n, m) = n
        end do
    end do

    do n = 1,5
        do m = 1,5
            print "(i1,a1,i1,a3,i1)", n, " ", m, " : ", a4(n, m)
        end do
    end do
    
    ! row extraction
    do n = 1,5
        print "(5i1)", (a4(n,m), m = 1,5)
    end do

    ! shape information
    print "(i2)", size(a1)
    print "(i2)", size(a4)
    print "(i2)", rank(a1)
    print "(i2)", Shape(a4)

    ! dynamic allocation (with "allocatable" above)
    print *, "Size of array? "
    read *, num_vals
    allocate(a5(1:num_vals))

    do n = 1, num_vals
        a5(n) = n
    end do

    a2 = (/1,2,3,4,5/)
    print "(5i1)", (a2(m), m = 1,5) ! array creation through comprehension

    ! assignation with reshaping (has to be possible)
    a7 = reshape(a6, (/3,3/))

    ! aggregation with logical condition
    print "(l1)", all(a1 == a2, 1)
    print "(l1)", any(a1 == a2, 1)
    print "(l1)", count(a1 == a2, 1)

    ! other aggregation functions
    print "(i1)", maxval(a1)
    print "(i1)", minval(a1)
    
    print "(i3)", product(a1)
    print "(i2)", sum(a1)

end program arrays