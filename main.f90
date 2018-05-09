program main
  implicit none
  integer(4) i, j, m, n
  real(8), external :: umn
  real(8) x, y, L
  real(8) disp
  open(1, file='in.dat', action='read', status='old')
  open(2, file='umn.dat', action='write')
  read(1,*) m
  read(1,*) n
  read(1,*) L
  close(1)
  do i=0,1500
    x=dble(i)*0.010d0
    do j=0, 1500
      y=dble(j)*0.010d0
      disp=umn(m, n, x, y, L)
      if(abs(disp) .le. 1.0d-05) then
        write(2, 10) x, y, abs(disp)
      end if
    end do
  end do
  close(2)
  10 format(2f7.2, f10.5)
end program main

      
