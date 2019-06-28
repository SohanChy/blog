+++

title = "How to write a simple program to check prime numbers in C"
tags = [ " C ", "gists"]

description = "Here's my simple approach to writing a program to find prime numbers in C..."

lastmod = "2015-07-26"
date = "2015-07-26"

image = "covers/numbers.jpg"


#slug = "prologue"
#series = [ "SomeSeries" ]
#project_url = "https://github.com/spf13/hugo"

+++

I find Prime finding &amp; prime checking interesting because it introduces the concept of translating mathematical logic to programming logic. 
While writing this you also learn by hand how to do little tweaks and improvements to make a program better. After seeing this program, anyone who wishes to learn more should write a program to print all prime numbers from 1-n by adapting the logic used in this program in a loop.
Here's my simple approach to writing a program to find prime numbers in C.

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


The gist can be found at [https://gist.github.com/SohanChy/bff3490f203b91c5284e](https://gist.github.com/SohanChy/bff3490f203b91c5284e)