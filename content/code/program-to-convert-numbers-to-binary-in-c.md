+++

title = "How to write a program Convert Numbers to Binary in C"
tags = [ " C ", "gists"]

description = "This program converts numbers to binary in C using simple basic C concepts..."

lastmod = "2015-06-22"
date = "2015-06-22"

#image = "bg-9-full.jpg"

#slug = "prologue"
#series = [ "SomeSeries" ]
#project_url = "https://github.com/spf13/hugo"

+++

Here is my very basic my approach to this problem. 
This program converts numbers to binary in C using simple basic C concepts. I guess this problem is supposed to teach how to **work around** a limitation/quirk when programming, and basically encourages to think a bit differently.

    #include<stdio.h>
    
    int main(void) {
        int input,binary=0,x;
    
    //Take and see if input is a positive number
        do {
            printf("Please enter POSITIVE a number:");
            scanf("%d",&input);}
        while(input<0);
    
        x=input;
    
    //Convert to binary
    //Using 0 causes problems, so using 9 instead of 0
        while(x!=0)
        {
            binary=binary*10;
            if(x%2==1){
            binary=binary+1;
            }
            if(x%2==0){
            binary=binary+9;
            }
            
            x=x/2;
        }
    
    //Its in binary but its reversed
    //The 0s are in 0 we need to fix that as well
    //reverse and replace here
    int temp=binary,reverse=0,y;
        while(temp!=0)
        {
            y=temp%10;
            if(y==9){y=0;}
            reverse=(reverse*10)+y;
            temp=temp/10;
        }
    
    
    //Print the result
        printf("\n\t\t\t%d",reverse);
    
        return 0;
    }

Gist at [https://gist.github.com/SohanChy/bff3490f203b91c5284e](https://gist.github.com/SohanChy/bff3490f203b91c5284e)