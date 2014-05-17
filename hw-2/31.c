#include <stdio.h>
#include <stdlib.h>
//#include <string.h>
int main()	{
	int i,n;
//	printf("write two int numbers\n");
	scanf("%i",&n);
//	scanf("%i",&j);
	float a[n+1];
	for (i=1; i<=n; i++ )
		scanf("%f",&a[i]);

	float s=0;

	for (i=1; i<=n; i++ )
               	s+=a[i];
	printf("%f\n",s);
/*	int n;
	if (i==j)
		printf("they are equal\n");
	else	{if (i>j)
		printf("first more\n");
	else	
		printf("second more\n");};


	char s1, s2[j];
	scanf("%s",s1);
*/
	return 0;
}

