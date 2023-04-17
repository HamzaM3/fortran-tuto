program app 
    implicit none

    integer :: age = 1
    integer :: n = 1
    integer :: m = 0
    logical :: T, F

    ! conditional (!! different is /=)
    if ((age <= 2)) then
        print *, "baby"
    else if (age <= 10) then
        print *, "child" 
    else if (age <= 18) then
        print *, "teenager"
    else
        print *, "adult"
    end if

    T = .true.
    F = .false.
    print *, (T .and. F)
    print *, (T .or. F)
    print *, (.not. F)

    print *, (3 == 2)
    print *, (1 /= 2)
    
    ! like switch
    select case(age)
    case(1)
        print *, 'ok'
    case(2:10)
        print *, 'ok'
    case(11, 12, 15)
        print *, 'ok'
    case default
        print *, "ok"
    end select

    ! range loop (start, end, step)
    do n = 1, 10, 2
        print "(i1)", n
    end do

    ! while loop
    n = 0
    do while (n < 10)
        if (mod(n, 2) == 0) then
            print "(i1)", m
            cycle ! like continue
        end if
        m = m + 1
        if (m >= 10) then
            exit ! like break
        end if
        n = n + 1
    end do

    

end program app