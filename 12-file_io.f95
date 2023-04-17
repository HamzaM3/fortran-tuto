program file_io
    implicit none
    character (len=100) :: str = "I'm a string", str2 = "Again, a string"
    character (len=100) :: str3

    integer :: err_status
    character(256) :: err_iomsg

    ! open a file and set the file descriptor to 10
    ! file descriptor * is stdout
    ! status can be:
    !     - new => create new file
    !     - old => modify old file
    !     - scratch => destroy file after use (temporary)
    open(10, file="data.dat", status="new", iostat=err_status, iomsg=err_iomsg)
    if (err_status /= 0) then
        write (*, *) 'Error ', trim(err_iomsg) ! write to stdout
        stop ! stop program
    end if
    
    ! write to file with file 10
    write (10, "(A)") str
    write (10, "(A)") str2

    write (*, '(A)') "file written"
    close(10) ! close file (use file descriptor)

    open(11, file='data.dat', status='old')

    ! read from file line by line
    read(11, '(A)') str3
    write (*, '(A)')  "file content: " // trim(str3)

    read(11, '(A)') str3
    write (*, '(A)')  "file content: " // trim(str3)

    close(11, status="Delete") ! close with delete

    write (*, '(A)') "file deleted"
end program file_io