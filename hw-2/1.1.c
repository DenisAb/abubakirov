#include <stdio.h>
#include <stdlib.h>

int main()	{
	int i,j;
//	printf("write two int numbers\n");
	scanf("%i",&i);
	scanf("%i",&j);

	if (i==j)
		printf("they are equal\n");
	else	{if (i>j)
		printf("first more\n");
	else	
		printf("second more\n");};




	return 0;
}
