# Problem : Square number
***
## Topic : 
### Find a positive number such that the square of it is 1_2_3_4_5_6_7_8_9_0, where the _ are numbers from 0 ~ 9.
***
* 1. Program need to be run : __1 (square_number)__
  2. Input : __None__
  3. Output :  __the requested number__, as well as __the square of the number__ 
*   It is originally a 19-digit number, but in most of my program, I consider it a 17-digit number, and the reason is because the last digit is 0 by the topic, and since it is _a square number, the power of every prime factor must be even_, therefore the last _ will be 0, and thus I set it to a 17-digit number for easier computation.
*   Because the number itself is too large, it's hard to find a way to check whether my answer is correct. So eventually I separate the answer I found into multiple single digits (stored as an array), and times them to the answer itself (stored in another array), then sum the numbers digit by digit. The method is not neat and has to deal with special cases a couple of times, but the final answer will be output to check the answer does match the topic's conditions.
