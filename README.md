# final_project-shihongsu
final_project-shihongsu created by GitHub Classroom
***
## Problem 11 : Square number

### Find a positive number such that the square of it is 1_2_3_4_5_6_7_8_9_0, 
### where all the _ are numbers from 0 ~ 9.
***
1. There's only one program to be run, and it will output the requested number, as well as the square of it to check the result is indeed correct.
2. It is originally a 19-digit number, but in most of my program, I consider it a 17-digit number, and the reason is because the last digit is 0 by the topic, and since it is a square number, the power of every prime factor must be even, therefore the last _ is 0, and thus I set it to a 17-digit number for easier computation.
3. Because the number itself is too large, it's hard to find a way to check whether my answer is correct. So eventually I separate the answer I found into multiple single digits, and times them to the answer itself, them sum the numbers digit by digit. The method is not neat and has to deal with special cases a couple of times, but in the end the final answer will match the topic's conditions.
