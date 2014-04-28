#include <stdio.h>
#include <stdlib.h>

int main()	{

	
	float cx=1;
	float k=0.6;
	int N;
	printf("type number of dots\n");  
	scanf("%i", &N);

	float h=(0.5)/N;
	float dt=k*h/cx;
	int stepnumber=2/h;
        printf("stepnumber:%i\n", stepnumber);

	float original[N];

double iinput[N];
float y[N];
float yy[N];
float iynput[N];

	int j,i;


        for (i=0; N>=i; i++)  		// fill original array
                original[i]=0;
        for (i=(N/4); 3*N/4>=i; i++)      
                original[i]=1;


//	printf("type firs value start\n");	// fill first array
//	for (i=0; n>=i; i++)
//		scanf("%f\n", &input[i]);

		// show original
	for (i=0; N>=i; i++)
                printf("%f ", original[i]);
        printf("\n");


        for (i=0; N>=i; i++)                     // clone original  -> y
		y[i]=original[i];

        for (j=0; stepnumber>=j; j++)   {       // major loop
                     
		// shift in yy
        	for (i=0; N>i; i++)	//new to yy		
                	if (0==i) yy[i]=y[i]*(1-cx*dt/h)+y[N-1]*cx*dt/h;
				else  yy[i]=y[i]*(1-cx*dt/h)+y[i-1]*cx*dt/h;
		
	        for (i=0; N>i; i++)     // clone yy-> y
        	        y[i]=yy[i];
	printf("step: %i \n", j);

	};


//        for (i=0; n>i; i++)
//               printf("%f ", yy[i]);
//        printf("\n");

//show result
	for (i=0; N>=i; i++)
	printf("%f ", y[i]);
	printf("\n");


	return 1;
}
