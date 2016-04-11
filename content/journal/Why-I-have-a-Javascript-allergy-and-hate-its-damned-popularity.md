+++

title = "Why I have a Javascript allergy and hate its popularity so much."
tags = [ "ramblings","JS","motivation"]

description = "Even though I've been acquainted with JS for some time now, my past feeling towards it resembled something along the lines of a skin allergy that causes itching in the whole body..."

#lastmod = "2016-03-10"
date = "2016-03-10"

image = "maybe-tommorow.png"

#slug = "prologue"
#series = [ "SomeSeries" ]
#project_url = "https://github.com/spf13/hugo"

+++

This is 2016, and if you aren't aboard the Javascript bullet train,  you aren't doing it right.  
I am writing this mostly as a rant, and this isn't written for JS Ninjas, its for people like me who are coming to JS from C++, Java,etc and feeling very confused and lost.

![enter image description here](http://i.imgur.com/DwFCt8l.png)

> In a world where we proud ourselves in creating something in HTML5+JS,
> that runs on a modern quad-core system while delivering the
> performance that existed on 16-bit or even 8-bit systems with less
> than 10 MHz CPU's -- well in this world JS is going to stick around
> for a long time. And I fear things are going to get much shittier than
> this.  - Redditor /u/narancs

The explosion of JS in both front-end and back-end has forced me to start trying to learn the damn thing. Even though I've been acquainted with JS for some time now, my past feeling towards it resembled something along the lines of a skin allergy that causes itching in the whole body.
Before you bring out your chainsaws written in Node.js and cut me in half before I can even react.js, let me explain myself first.


----------


Many of javascripts simplest designs are very counter intuitive and can be very confusing.

    var x = "5";
    x = x + 1;
    console.log(x);    // x is 51
You may be thinking, hey you dumbass, you initialized x as a string.
Of course it concatenated.
Well now lets try,

    var x = "5";
    x = x - 1;
    console.log(x);    // x is 4

Basically the + operator treats it as a string, while the - operator typecasts it into a integer and subtracts.
This is just wonderful and not confusing at all!

In javascript,
You can declare global variables inside functions, by mistake.

    function doStuff()
    {
       x = 5;  // x is now a global variable
    }

    doStuff();

    console.log(x);    //outputs 5


If you pass a variable to a function and change it, it will change only within the function.

    function addFive(x)
    {
        x = x + 5;
    }

    var num = 4;
    addFive(num);
    console.log(num);    //output is 4;

Expected, right?
But... if you pass an object, it is automatically passed by reference, and any change done inside is also changed on the outside.

    function addFive(x)
        {
            x.value = x.value + 5;
        }
    var num = {};
    num.value = 4;

    addFive(num);
    console.log(num.value);    //output is 9


And guess what, you can't pass a variable by reference even if you want to. What is the solution? Convert it to a object, pass it, do stuff, then again change it back to a variable.
That's Just. Freaking. Awesome.

The first thing almost every guide says is that Javascript is an object oriented programming(OOP) language,
If you already have experience with C++/Java or some other OOP language, you might be thinking WoHoo!
But stop, don't be so happy.

JS is OOP alright, but there's a strong possibility that its not exactly what you are expecting...

What most people understand by Object Oriented Programming is this:

 - You have Classes, they are like blueprints.
 - Classes have objects, like blueprints have Cars.
 - Classes can inherit other Classes and add stuff.

Even though each car can have different colors, different speeds, etc; they still have the same blueprint, only their implementation changes. If a car blueprint does not have wings in it, a car made from that blueprint can not have wings. Common sense right?

NOPE. What you are thinking about is Class based OOP,
But Javascript is a [Prototype based OOP language](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Details_of_the_Object_Model#Class-based_vs._prototype-based_languages),
In fact, it's the only popular or widely used language that uses Prototype based OOP.

This means that in Javascript, [there are no Classes](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Working_with_Objects#Objects_and_properties).

 - All you have is objects. And objects are made from functions or other
   objects.
 - Objects inherit other objects and add stuff to them.
 - Objects made from the same parent object can have different  
   members, different functions, and these can be added to any distinct
   object on the fly and without any effect on other objects of
   the same type.

> Basically, a car is not made from a blueprint, but it's made from another car. And even though many cars are created from the same parent car, one of them can have wings and another may have 9 wheels instead of 4.  




Do you still feel that "Wohoo" ?

Objects can be objects and objects can be functions.

    var x = [41];
    var y = function(){
    //do some stuff
    return 41;
    };

    var z = function(){
    //do some stuff
    return 41;
    }();

    console.log(x);    //shows Array [ 41 ]
    console.log(y);    //shows function y()
    console.log(z);    //shows 41
    console.log(y());  //shows 41
I know this also exists in some other languages, but that doesn't mean I have to like the kind of readability problems and unpredictable
debugging horrors it can bring.

I can go on and on about things like these, but I won't. Halfway through writing this, I googled and found many blogs written by people much more knowledgeable than me, pointing out a lot of the issues I have with JS and many many more.


----------


In my opinion, Javascript is a shitty nonsense language. It should have died sometime between 2004 to 2006 and it should have been replaced with something much much better, but it wasn't.

But since dreams are only dreams, it didn't die, and instead became more widely used,  Javascript obviously must have it's place.
And what I can only hope is that:
> Javascript - when used with the understanding of how ridiculous it is - can become a extremely useful tool.

And if you are in the same boat as me, you should stop your whining, head over to the [MDN JS Guide](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide), and get on board the JS train as soon as you can, because this shit is here to stay, and it wont be going away any soon.   
