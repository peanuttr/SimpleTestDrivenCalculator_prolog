:- module(calculator,[]). %set module calculator

status(true). %set status

calculator_program:- %main method
  menu, %call method menu
  calculator_program. %call meu calculator

menu:-
    write('1. Calculator'),nl, %print menu
    write('2. Exit !!!'),nl,
    write('Enter Menu'),nl,
    read(Menu),nl, %input menu
    check_menu(Menu). %pass value menu to check_menu

check_menu(Menu):- %check menu_method
    Menu == 1,inputvalue(); %if menu == 1 ,call input value
    Menu == 2,halt. % if menu == 2, exit swi-prolog

inputvalue():- %inputvalue method
    write('Enter Number 1 : '),nl, %print menu
    read(Number1),nl, %input number1
    write('+'),nl,
    write('-'),nl,
    write('*'),nl,
    write('/'),nl,
    write('Select Operator : '),nl, %print operator
    read(Operator),nl, %input operator
    write('Enter Number 2 : '),nl,
    read(Number2),nl, %input number2
    calc(Number1,Operator,Number2),nl. %pass value number1,operator,number2

calc(Number1,Operator,Number2):- %calc method
    Operator == + -> Ans is Number1+Number2,write(Number1+Number2=Ans),nl;
    %if operator == + Set Ans = number1+number2 and print number1+number2=ans

    Operator == - -> Ans is Number1-Number2,write(Number1-Number2=Ans),nl;
    %if operator == - Set Ans = number1-number2 and print number1-number2=ans

    Operator == * -> Ans is Number1*Number2,write(Number1*Number2=Ans),nl;
    %if operator == * Set Ans = number1*number2 and print number1*number2=ans

    Operator == / -> Ans is Number1/Number2,write(Number1/Number2=Ans),nl.
    %if operator == / Set Ans = number1/number2 and print number1/number2=ans




