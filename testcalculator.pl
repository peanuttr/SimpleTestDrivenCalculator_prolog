:- use_module(calculator).
test:- %method test
    test1(), %call method
    test2(),
    test3(),
    test4().

con(Ans):- %method con is testing calc method
    Ans == 101-> asserta(result(101)),write('Testing 1 : Passed'),nl;
    %if Ans == 101 check ans == (result = 101) and print Testing Passed

    Ans == -7 -> asserta(result(-7)), write('Testing 2 : Passed'),nl;
    %if Ans == -7 check ans == (result = -7) and print Testing Passed

    Ans == 50 -> asserta(result(50)), write('Testing 3 : Passed'),nl;
    %if Ans == 50 check ans == (result = 50) and print Testing Passed

    Ans == 5 -> asserta(result(5)), write('Testing 4 : Passed'),nl.
    %if Ans == 5 check ans == (result = 5 ) and print Testing Passed

calc(Number1,Operator,Number2):- %calc Method
    Operator == + ,Ans is Number1+Number2,con(Ans);
    %if operator == + ans = number1+number2 and Pass value to con Method

    Operator == - ,Ans is Number1-Number2,con(Ans);
    %if operator == + ans = number1+number2 and Pass value to con Method

    Operator == * ,Ans is Number1*Number2,con(Ans);
    %if operator == + ans = number1+number2 and Pass value to con Method

    Operator == / ,Ans is Number1/Number2,con(Ans).
    %if operator == + ans = number1+number2 and Pass value to con Method

test1():- %Method test1
    calculator:calc(100,+,1) -> calc(100,+,1),nl.

test2():- %Method test1
    calculator:calc(-2,-,5) ->calc(-2,-,5),nl.

test3():- %Method test1
    calculator:calc(5,*,10) ->calc(5,*,10),nl.

test4():- %Method test1
    calculator:calc(10,/,2) ->calc(10,/,2),nl.
