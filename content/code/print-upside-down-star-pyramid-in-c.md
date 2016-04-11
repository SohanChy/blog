+++

title = "How to printf a upside down star pyramid in C"
tags = [ " C ", "gists"]

description = "Here's my simple approach to writing a program to find prime numbers in C..."

lastmod = "2015-06-28"
date = "2015-06-28"

image = "code/printf-a-upside-down-star-pyramid.png"
#slug = "prologue"
#series = [ "SomeSeries" ]
#project_url = "https://github.com/spf13/hugo"

+++

Here's my approach to this beginner problem. 
Nested loops are used to format the pyramids print structure. This problem is basically taught to get students used to basic **nested loops**.

```
#include <stdio.h>

int main()
{
    int input;
    do {
        printf("ODD input please: ");
        scanf("%d",&input);
    }
    while (input%2==0);


    int x;
    for(x=input;x>0;x=x-2)
    {
        printf("\t\t\t");
        int j=input-x;;
        while(j>0)
            {
        printf(" ");
            j=j-2;
            }

        int i;
        for(i=x;i>0;i=i-1)
            {
        printf("*");
            }
        printf("\n");
    }

    return 0;
}
```

The gist is hosted here:
[https://gist.github.com/2161158a9e2ee06a1eda](https://gist.github.com/2161158a9e2ee06a1eda)