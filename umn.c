double sin(double);
double cos(double);
double umn(int m, int n, double x, double y, double L) {
  static const double pi=3.14159265359; 
  return cos((double)m*pi*x/L)*cos((double)n*pi*y/L)
        -cos((double)n*pi*x/L)*cos((double)m*pi*y/L);
}
 
