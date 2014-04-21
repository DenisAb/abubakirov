#include <stdio.h>
#include <stdlib.h>

int main()	{
int n=10;
float input[n];
double iinput[n];
int i;
float y[n];
float yy[n];
float iynput[n];

int j;

	float h=1;
	float cx=3;
	float dt=0.1*h/cx;

	printf("type firs value start\n");	// fill first array
	for (i=0; n>=i; i++)
		scanf("%f\n", &input[i]);
        for (i=0; n>=i; i++)
                printf("%f ", input[i]);
        printf("\n");



        for (i=0; n>=i; i++)                     // inp -> y
                y[i]=input[i];

        
//for  (j=1; j<=1; j++)				////////// main loop
//{

        for (i=0; n>i; i++)	//new to yy		
                if (0==i) yy[i]=y[i]*(1-cx*dt/h)+y[n-1]*cx*dt/h;
			else  yy[i]=y[i]*(1-cx*dt/h)+y[i-1]*cx*dt/h;
		
        for (i=0; n>i; i++)     // value yy -> y
                y[i]=yy[i];
//};	


        for (i=0; n>i; i++)
               printf("%f ", yy[i]);
        printf("\n");


	return 1;
}
