#include <stdio.h>
#include <stdlib.h>
#include "drawme.h"
int main()	{

	
	double cx=1;
	double k=0.6;
	int N;
	printf("type number of dots\n");  
	scanf("%i", &N);

	double h=(2.0)/N;
	double dt=k*h/cx;
	int stepnumber=2.0/cx/dt;
//        printf("stepnumber:%i\n", stepnumber);

	double original[N];

double  iinput[N];
double y[N];
double yy[N];
double x[N];

	int j,i;

        for (i=0; N>=i; i++){
                x[i]=1.0*(2*i-N)/N;
		printf("%lf ", x[i]);
	};


	


        for (i=0; N>=i; i++)  		// fill original array
                original[i]=0;
        for (i=(N/4); 3*N/4>=i; i++)      
                original[i]=1;

		// show original
	for (i=0; N>=i; i++)
                printf(" %i:%lf ",i, original[i]);
        printf("\n");


        for (i=0; N>=i; i++)                     // clone original  -> y
		y[i]=original[i];

        for (j=0; 10*stepnumber>=j; j++)   {       // major loop
                     
		// shift in yy
        	for (i=0; N>i; i++)	//new to yy		
                	if (0==i) yy[i]=y[i]*(1-cx*dt/h)+y[N-2]*cx*dt/h;
				else  yy[i]=y[i]*(1-cx*dt/h)+y[i-1]*cx*dt/h;
		
	        for (i=0; N>i; i++)     // clone yy-> y
        	        y[i]=yy[i];
	printf("step: %i \n", j);

	};

//show result
	for (i=0; N>=i; i++)
	printf("%lf ", y[i]);
	printf("\n");
	char* title ="qw";

	DM_plot_1d(x, y, N, "thhis is title", 1);
//         DM_plot_1d_etalon(double *array_x, double *array_y, double *array_etalon,
//         unsigned int len, char *title, char screen)
//


	return 1;
}
