# Problem : Square number

## Topic - Find a positive number such that the square of it is 1_2_3_4_5_6_7_8_9_0, where the _ are numbers from 0 ~ 9.

1. Program need to be run : __square_number.m__
2. Input : __None__.
3. Output :  __the requested number__, as well as __the square of the number__.

### Finding
* The topic's number is originally a 19-digit number, but in most of my program, I consider it a 17-digit number, and the reason is because the last digit is 0 by the topic. Since it is _a square number, the power of every prime factor must be even_, therefore the last _ will be 0, and thus I set it to a 17-digit number for easier computation.
* To check the number is still a integer after square root, I used _floor(sqrt(x) + 0.99999) == sqrt(x)_
* After discarding the last 2 digits, the number become a 17-digit number with _a 9 as it's last digit_. And since the last digit is 9, we know the the last digit of the square root of it must be 3 or 7, so I use _mod(sqrt(x), 10) == 3 || mod(sqrt(x),10) == 7_ to check the answer actually meets the topic.
### Checking
* Because the number itself is too large, it's hard to find a way to check whether my answer is correct. Eventually I separate the answer I found into each and every digit (stored as an array _(set as y in my program)_ ), and times them to the answer itself (stored in another array _(set as z in my program)_ ), then sum the numbers digit by digit. The method can be deal with this case only and has to deal with special cases a couple of times, but the final answer will be output to check the answer does match the topic's conditions.
* The answer indeed exists since I did found an answer and the square of it does meet the topic's request.

### Final answer : 1 3 8 9 0 1 9 1 7 0
* The answer is a 10-digit number, which is reasonable since the square of a 10-digit number could be a 19-digit one.

### The square of the answer found : 1 9 2 9 3 7 4 2 5 4 6 2 7 4 8 8 9 0 0
* Which fits the topic's conditions.
