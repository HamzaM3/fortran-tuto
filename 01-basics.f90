! compile with:
!   gfortran basics.f95
! then execute ./a.out

program basics
    implicit none
    character*20 :: name

    print *, "enter name"
    read *, name
    print *, "hello ", name

    print *, trim("   trimmed   ")
end program basics