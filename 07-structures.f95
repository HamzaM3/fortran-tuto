program structures
    implicit none
    ! type declaration
    type Customer
        character (len=40) :: name
        integer :: age
        real :: balance
    end type Customer

    ! array of structures
    type (Customer), dimension(5) :: customers
    integer :: n

    type (Customer) :: cust1

    ! the old dot operator was a percent !!
    cust1%name = "Sally Smith"
    cust1%age = 34
    cust1%balance = 200000.0

    ! assignation of structures
    customers(1) = cust1

    customers(2)%name = "Tom May"
    customers(2)%age = 42
    customers(2)%balance = 2320309.0

    do n = 1,2
        ! auto format of structures
        print *, customers(n)
    end do
end program structures