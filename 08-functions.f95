program functions
    implicit none
    integer :: ans, ans2, ans3
    real :: r_ans

    ans = get_sum(5,4)
    print "(a8, i3)", "5 + 4 = ", ans

    ans2 = get_sum2(5,4)
    print "(a8, i3)", "5 + 4 = ", ans2

    ans3 = factorial(5)
    print "(a8, i5)", "5! = ", ans3

contains
    integer function get_sum(n1, n2)
        implicit none
        integer :: n1, n2, sum
        sum = n1 + n2 ! one operation => return (?)
    end function get_sum

    ! declare return variable (else void)
    function get_sum2(n1, n2) result(sum)
        implicit none
        integer, intent(in) :: n1, n2 ! type of inputs
        integer :: sum
        sum = n1 + n2
    end function get_sum2

    ! prevent modifiation of input vars (does it do it without it ?)
    pure function get_sum3(n1, n2) result(sum)
        implicit none
        integer, intent(in) :: n1
        integer, intent(in), optional :: n2
        integer :: sum
        if(present(n2)) then
            sum = n1 + n2
        else
            sum = n1 + 1
        end if
    end function get_sum3

    ! recursive has to be declared
    recursive function factorial(n) result(o)
        integer :: n,o
        if (n == 1) then
            o = 1
        else
            o = n * factorial(n - 1)
        end if
    end function factorial


end program functions