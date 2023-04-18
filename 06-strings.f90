program strings
    implicit none
    character (len=30) :: str = "I'm a string"
    character (len=30) :: str2 = " that is longer"
    character (len=30) :: str3

    str3 = trim(str) // trim(str2)
    str = adjustl(str) ! trim left
    str = adjustr(str) ! trim right

    print *, str3
    print *, str3(1:3) ! substring
    print "(a9, i1)", "Index at ", index(str, "string") ! search of index of substring
    print *, len(str) ! length

end program strings