void mySort(int d[], unsigned int n)
	{
	int i, j,temp;
	for(j=1; j<n; j++) 
		{
		temp= d[j];
		i=j-1;

		while (i >= 0 && d[i] > temp)
       			{
           		d[i+1] = d[i];
           		i = i-1;
       			}

		d[i+1] = temp;
		}

	}
