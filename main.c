/*
 * main.c Patching all the works together
 *  Created on: May 9th, 2018
 *      Author: Rajendra P. Adhikari
 */
#include<stdio.h>
#include<stdlib.h>
#include<math.h>
FILE *in1, *out1;

double umn(int, int, double, double, double);
int main(){
  int i, j, m, n;
  double x, y, L;
  double disp;
  double eps=1.0e-04;
  in1=fopen("in.dat","r");
  out1=fopen("umn.dat","w");
 if(in1 == NULL) {
      printf(" File read error! \n");   
      exit(1);             
  }
  fscanf(in1,"%d %d %lf\n",&m, &n, &L);
  fclose(in1);
  for(i=0; i<=15000; i++) {
    x=(double)i*0.001;
    for(j=0; j<=15000; j++) {
      y=(double)j*0.001;
      disp=umn(m, n, x, y, L);
      if(fabs(disp) <= eps) {
        fprintf(out1,"%lf %lf %lf\n", x, y, fabs(disp));
       }
    }
  }
  fclose(out1);
}

