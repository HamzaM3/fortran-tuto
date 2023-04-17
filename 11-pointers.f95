program pointers
    implicit none
    ! pointers
    integer, pointer :: ptr1, ptr2

    ! array of pointers
    integer, pointer, dimension(:) :: a_ptr1 

    ! already allocated value targetable by a pointer
    integer, target :: target1 
    
    allocate(ptr1) ! allocate memory
    ptr1 = 5 ! fill memory of pointer (how to modify pointer itself ?)

    print "(a5, i1)", "ptr1 ", ptr1

    ! pointers take target1 pointer value
    ptr2 => target1

    ! modification of ptr2, which modifies target1
    ptr2 = 1 
    ptr2 = ptr2 + 2

    print "(a5, i1)", "ptr2 ", ptr2
    print "(a8, i1)", "ptr2 -> ", target1

    ! detargetization
    nullify(ptr2)
    ! ptr2 = 4 give a seg fault

    print "(a4, i1)", "ptr2", ptr2 ! not pointing to anything
    print "(a8, i1)", "ptr2 -> ", target1 ! value remained

    ! deallocation of memory
    deallocate(ptr1)

end program pointers