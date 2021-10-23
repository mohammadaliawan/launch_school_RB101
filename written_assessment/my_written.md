# What  Not  To  Do  On  the `RB109`  Written Assessment

You might have read several articles by Launch School students on "How to practice for the written assessment" or "What to do on the written assessment to Pass". All those articles give very good advise about how to manage time on the assessment and how to practice for it. 

This article is not about "What To Do". Instead I am going to talk about "What Not To Do". Because the things "you must NOT do"  are just as important. 

The reason I am writing this article is because I recently took the RB109 Written Assessment and although my score was about 98%, it took me way more time than is allowed (3 hours). I am almost embarrassed to tell how long it took me (4.5 hours). Ouch!

So I am going to talk about what I did (that you shouldn't do at all), why it took me so long and what I am going to do improve my performance on my next exam. I am also going to go into a few time management techniques specially for the written assessment and how I am going to apply these for myself to improve my performance.

## What I Did Wrong

### 1. Succumbing to "self imposed" peer pressure and pressure from your loved ones !

So, I had been going through RB101 for quite a long time and other students who had started the course with me had all passed the assessments. Most of these students were full time students or had completely different life situations than mine. I work full time and by full time I mean 11 to 13 hours everyday and have only one day off. So I didn't have a lot of time to study. I also have a family among other responsibilities. 

But seeing all my peers taking the assessments and passing, I started pushing myself too much and rushing myself to take the assessments instead of taking my time with it. I just wanted to get it over with and join my peers. That's the opposite of what "Mastery" is about. 

Also my family members couldn't understand why it was taking me so long to pass the even the first assessment. I tried to explain to them what Mastery is about but I started doubting myself and  I succumbed to the pressure. 

So I didn't take my time to practice for the written assessment 'the right way'. Although I had practiced explaining code line by line quiet a lot and I am very good at it (Thanks @pete), but I never practiced how to answer specific questions or making my answers concise and staying within the time limit. I knew it took me almost 11 to 15 mins to answer one question, but that was way too long. 

The optimum time is 6 to 7 mins per question. I thought to myself that since the questions I had practiced with were very general questions and the actual assessment questions were going to be very specific, I could easily finish one question in 6 to 7 mins. How wrong I was. If you haven't practiced answering specific questions while being both concise and precise at the same time you wont be able to do it on the assessment. I will go into detail about how to do this later in this article.

So lesson no. 1 for me is "Dont succumb to the pressure of taking the assessments whether that is external or internal. Take the assessment when **you** feel ready for it." 

### 2. Explaining each line of code in every question. Writing a short essay in response to each question !

As I said before, the optimum time that you can spend on one question is about 6 to 7 mins if you want time to go back and check your answers at the end.

Where do I get this "6 to 7 mins" from? I am not just pulling this out of the thin air. So you have 3 hours and about 20 to 25 questions on the assessment. Let's say it's 23 questions as in my case. You have 180 mins in total. Lets take out 5 mins so you have time to take a breather and submit your answers at the end. And let s take 10 mins for  going back and checking your answers and correct any mistakes. So you have 165 mins in total to actually answer the questions. 165 divided by 23 questions is about **7 mins per question**.

So how does Launch School expect us to write an essay to answer each question and explain each line of code? The answer is **They Don't**. It's not possible and Launch School  TAs and Instructors know that. Most of the questions don't ask you to explain each line of code. Some do. But thats like 1 to 2 questions. The reason it's 3 hours is **because** they don't expect 5 paragraph's for each answer. (My sincere apologies to the TA who graded my assessment. I am sorry you had to go through that ! )

**YOU DON'T NEED TO EXPLAIN EACH LINE OF CODE TO GET FULL POINTS**

The reason I put that in Bold and Capital letters is because most of the students (and that includes me specially) are doing exactly that! And that's not what is expected of us! And the above statement is not my opinion. It's the feedback I got for my assessment.

> Due to the time limit, it's important to address the key points of the question, without taking the time to elaborate on unrelated information.
>
> Addressing specific topics within a chunk of code, rather than explaining each line and what it's doing.
>
> Explain only the aspects of the sample code that illustrate local variable scope. Practice writing with brevity and clarity, endeavoring to be as concise as possible

So lesson no. 2 for me is "Before taking the assessment, practice, practice and practice making your answers concise and precise. Don't take the assessment if you cant answer questions in 6 to 7 mins.". To do that I have formed the following technique (Thank you @emmastory) :

- First read the question statement a few times. Understand exactly what the question is asking you. This includes the chunk of code given with the problem.
- Write down in two or three small bullet points what is being asked. You can do this in the space where you need to submit your answer and erase it after words.
- Then write down what concept the question and code is demonstrating. THIS IS THE MOST IMPORTANT PART!
- Once you know what the concept is, or what the intent of the question is, then figure out what are the lines of code which are actually part of this concept. 
- Write a short concise version of your answer. Just sticking to the lines of code pertaining to the concept. Don't worry right now about not leaving some thing important from your explanation. Explain what's happening on the **relevant lines of code only** and **why** the output/ return value is what it is? Or are there any side effects of those relevant lines of code.
- Once you have done that and you still have time left for that question, see what else you could include to make your answer more clear.
- Your answer must not be more than two to three **short** paragraphs for questions that are not specifically asking you to explain each line of code. 

I will use this technique for my next written assessment to practice being concise.

To illustrate how this technique will work I am going to solve a sample problem. Note: this is not from the assessment  But the questions on the assessment are similar!

Question: Consider the code below. Explain why line `8` returns `7` rather than `12`? What concept does this demonstrate?

```ruby
num = 12

3.times do |_|
    num = 7
    break
end

num #=> 7
```

Now this is a really simple question. But most questions on the assessment are really just simple questions. Let solve this:

First make an outline of what exactly the question is asking:

- why does line 8 return 7 rather than 12
- What is the concept demonstrated

Second, figure out what is the concept being demonstrated.

This code demonstrates the concept of local variable scoping rules in Ruby with respect to method invocation blocks. Specifically that local variables that are initialized in the outer scope are accessible in an inner scope.

Third, which lines are relevant to this concept:

- line `1` because this is where the `num` variable is initialized and so this sets the scope for this variable.
- lines `3` to `6` are relevant because this is where the block creates an inner scope for local variables
- But note here that line 5 is not relevant to this concept. The `break` key word doesn't have anything to do with local variable scoping rules. Also what the `times` method is doing here is also not relevent. We dont need to talk about how the `times` method iterates etc. 
- The last line `8` is relevant because thats where we are referencing the `num` variable.

Now that we know which lines are actually relevant, lets write our short and concise answer:

***This code demonstrates the concept of local variable scoping rules in Ruby with respect to method invocation blocks. Specifically that local variables that are initialized in the outer scope are accessible in an inner scope.***

***The local variable `num` is initialized  on line `1` to the integer object `12` . On lines `3` to `6` the `Integer#times` method is invoked on the integer object `3` . The `do..end` structure following the `times` method invocation is a block which is passed to the `times` method as an argument . `do..end` blocks following a method invocation create a new scope for local variables known as inner scope. On line `4`  `num` is reassigned to the integer object `7`. This reassignment is possible because local variables initialized in an outer scope (outside the `do..end` block)  can be accessed and reassigned in an inner scope.*** 

***Since `num` was reassigned to the integer `7`, line `8` returns the integer object `7`.***

Note that in the above code I didnt go into detail about what the `times ` method does or what does `break` do or how many times the times method iterates. That's all irrelevant to the actual question.

The above technique if practiced enough would have helped me staying within the time limit. It could have saved me a lot of time. 

Now there are questions that ask you to go over each line of code and explain why something is being returned. But those questions specifically ask you to do that.

## What I  should do (and you can as well) to improve my performance on written assessments

Now lets talk about some time management techniques for the written assessment. 

### 1. Practice Answering questions within the time limit. Practice being concise and precise. 

The most important thing is actually practicing answering questions within the time limit. I didnt do that. I never timed myself when I was practicing as I said above. I thought I will be able to "just do it!". **Well Nike had it wrong!**. You can't "just do it!". You and I **NEED** to practice answering questions within the time limit. 

And while you (and I) are doing this we need to keep an eye out for what it is that we are doing or not doing when answering questions due to which we are taking more time to answer questions. Is it my typing speed? Is it the `back ticks` ? What ever it is, you need to find out about yourself and fix it. 

The reason It took me 10 to 15 mins to answer each question is because I went into too much detail about each and every line and I repeated myself a lot. If I can just get rid of these habits I will be able to ace the next written exam hopefully. And the above technique should help me in this regard.

### 2. Divide up the time 

First scroll down and see how many questions there are. If there are 20 questions. Divide 165 mins by 20 and you will have how mins you have per questions and Set an appropriate (e.g `15` mins) timers on the exam. The timer should just beep once which tells you that 15 mins have passed. Which means that you should have answered at least two questions by now. And if you haven't, and this is very important, become aware of this and change your strategy. Remind yourself that you are explaining irrelevant things and not being brief. So take a 10 to 20 secs breather. Remind yourself what your strategy should be before you start your next question. And then start the next question. So you should be answering two questions every 15 mins.

Some questions could be more points, in which case you will need to spend a little more time on them.

Also, keep about 10 to 15 mins at the end to revisit questions and correct any mistakes.

### 3. Read every question carefully and note down exactly what the questions is asking. 

Read every question very carefully multiple times. And note down exactly what is the question asking about. Following the above technique I have provided should help you to do this. Stick to the lines of code that actually pertain the to the concept the code illustrates. 

### 4. First 2 to 3 mins: Read through all the questions

If you do this, you will know which questions should take you 4 to 5 mins to answer or even less and which ones could take longer like 7 to 9 mins. Note down the questions you will come to after words and answer the questions that seem easy first. Come to the hard ones later. 

At the end check that you have answered each question and haven't left any unanswered. 

### 5. Plan long answers

If some questions ask you to explain each line of code in nested loops or nested `map` methods, then make a small outline of the things you need to definitely talk about in your answer. And then right down your answer and include those things.

Once you have answered go back and see if there is anything else you could touch upon in your answer but only if you have time. 



I hope the above will help some one who is having trouble with the written assessments. It definitely helped me writing about it. 

If anyone is having trouble with the first written assessment, please reach out and I will do my best to help you. My slack id is @Ali. 

To be completely honest, the written assessment questions were actually quite simple. Nothing too complex. I just created this façade in my mind of a really tough, complex exam and it got to my nerves. So trust me, the questions are quite simple, you just need to practice the right way!

 



















