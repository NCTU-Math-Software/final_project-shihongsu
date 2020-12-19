% Q : Find all _ in 1_2_3_4_5_6_7_8_9_0, where all _ are numbers from
%     {0, 1, 2, 3, 4, 5, 6, 7, 8, 9}, such that the number is a perfect square
%% Search the answer by swapping every _ form 0 to 9
% 1. a1 = 1st _ , a2 = 2nd _ , and so on ...
% 2. There should be 9 _ , but since the number is a square, the power of
%    each and every prime factor must be even. Therefore we can obtain that
%    the last _ needs to be 0.
% 3. Since we've already known that the last 2 digits are 0s, we can
%    discard them and add them back in the end because a 19-digit number
%    is more difficult to compute.
for a1 = 0 : 9
    for a2 = 0 : 9
        for a3 = 0 : 9
            for a4 = 0 : 9
                for a5 = 0 : 9
                    for a6 = 0 : 9
                        for a7 = 0 : 9
                            for a8 = 0 : 9    
                                x = 1 * 10 ^ 16 + a1 * 10 ^ 15 + 2 * 10 ^ 14 + a2 * 10 ^ 13 + ...
                                    3 * 10 ^ 12 + a3 * 10 ^ 11 + 4 * 10 ^ 10 + a4 * 10 ^ 9 + ...
                                    5 * 10 ^ 8 + a5 * 10 ^ 7   + 6 * 10 ^ 6 + a6 * 10 ^ 5 + ...
                                    7 * 10 ^ 4 + a7 * 10 ^ 3   + 8 * 10 ^ 2 + a8 * 10 ^ 1 + 9;
                                if (floor(sqrt(x)) == sqrt(x))
                                    if(mod(sqrt(x), 10) == 3 || mod(sqrt(x),10) == 7)
                                        format long;
                                        q = num2str(sqrt(x));
                                        p = sqrt(x);
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end

% Store every digit of the answer as y
for ii = 1 : 9
    y(ii) = str2num(q(ii));
end

% Need to add 1 zero since we discard 2 zeros in the beginning
y(10) = 0;

% Output the answer
disp(['The answer : ',num2str(y)]);

%% Check if the answer is correct
% Now to check whether my answer is correct, I access each digit of my 
% answer, time it to the original answer, then sum them up digit by digit.
for ii = 1 : 9
    z(ii) = y(ii) * p;
end

a0 = num2str(z(9));  b0 = num2str(z(8));  c0 = num2str(z(7));  
d0 = num2str(z(6));  e0 = num2str(z(5));  f0 = num2str(z(4));
g0 = num2str(z(3));  h0 = num2str(z(2));  i0 = num2str(z(1));

% In some cases, the number will become a 10-digit number after
% multiplication, and somesremain 9-digit, so I divide them into 2 groups
% and deal with both cases separately.
for ii = 1 : 9
    a(ii) = str2num(a0(ii));
    b(ii) = str2num(b0(ii));
    d(ii) = str2num(d0(ii));
    h(ii) = str2num(h0(ii));
    i(ii) = str2num(i0(ii));
end 
for ii = 1 : 10
    c(ii) = str2num(c0(ii));
    f(ii) = str2num(f0(ii));
    g(ii) = str2num(g0(ii));
end

% We've known that the square is a 19-digit number.
for ii = 1 : 19
    answer(ii) = 0;
end

% Same as above, deal with both cases separately.
for ii = 1 : 9
    answer(ii + 8) = answer(ii + 8) + a(ii);
    answer(ii + 7) = answer(ii + 7) + b(ii);
    answer(ii + 5) = answer(ii + 5) + d(ii);
    answer(ii + 1) = answer(ii + 1) + h(ii);
    answer(ii) = answer(ii) + i(ii);    
end
for ii = 1 : 10
    answer(ii + 5) = answer(ii + 5) + c(ii);
    answer(ii + 2) = answer(ii + 2) + f(ii);
    answer(ii + 1) = answer(ii + 1) + g(ii);    
end

% Some number will carry in the adding process
for ii = 1 : 19
    while (answer(20 - ii) >= 10)
        answer(20 - ii) = answer(20 - ii) - 10;
        answer(19 - ii) = answer(19 - ii) + 1;
    end
end

% Output the checked answer and make sure it's the same
disp('The square of the answer : ');
disp(answer);