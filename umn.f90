function umn(m, n, x, y, L)
  implicit none
  real(8) umn
  real(8), parameter :: pi=3.141590d0
  integer(4) m, n
  real(8) x, y, L
  umn=cos(m*pi*x/L)*cos(n*pi*y/L)-cos(n*pi*x/L)*cos(m*pi*y/L)
end function umn

