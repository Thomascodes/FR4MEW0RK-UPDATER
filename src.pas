(*FR4MEW0RK UPDATER*)
(*This program acts as an updater for fr4mew0rk software.*)
(*Written in Pascal.*)
program FrameUpdate;

(*dependencies*)
Uses Crt,Windows;

(* This is where we'll be returning to. *)
Label Menu;

Var

  SEL : Integer;
  YN : Char;
Begin;
(* This function only works on Windows. *)
SetConsoleTitle('FR4MEW0RK UPDATER');

(* BEGIN STARTING TEXT *)
(* first, we're going to define the background color and text color *)
TextColor(White);
TextBackground(Blue);
writeln('Started!');
(* dont mind this, still building update.pas, so it cant tell *)
TextColor(Green);
writeln('CHECKING: Fully up to date! (build 0.0.1)');
writeln('Fr4mew0rk Updater 0.0.1 (alpha)');
writeln('__________________________________');
TextColor(White);
writeln('Welcome to the Fr4mew0rk updater! [PRESS ENTER]');
readln;
writeln('This is an offline updater packaged with the newest versions of programs by fr4mew0rk. [PRESS ENTER]');
readln;

(* This is the MENU that will be returned to. *)
Menu:
writeln('List of available programs:');
writeln('1. FR4MEW0RK UPDATER');
writeln('2. TST. PROGRAM');
writeln('To select a program, type in the corresponding number.');
writeln('To exit the program, please type in 3.');
writeln('For different commands, type 4.');
Readln(SEL);

(* Begin Selections *)
If SEL = 1  Then
Begin
Clrscr;
        Writeln('You have selected FR4MEW0RK UPDATER.');
        Writeln('You are using the latest build!');
        Writeln('Returning to the menu...');
        Delay(3000);
        Goto Menu;

        end;

If SEL = 2 Then
Begin
Clrscr;
        Writeln('You have selected the TEST program.');
        Writeln('Unfortunately, this program does not exist and is');
        Writeln('solely here for testing purposes..');
        Writeln('Returning to the menu...');
        Delay(3000);
        Goto Menu;

        end;

If SEL = 3 Then
Begin
Clrscr;
        Writeln('Thank you for testing the FR4MEW0RK updater.');
        Writeln('Exiting in 5 seconds..');
        Delay(1000);
        Writeln('Exiting in 4 seconds..');
        Delay(1000);
        Writeln('Exiting in 3 seconds..');
        Delay(1000);
        Writeln('Exiting in 2 seconds..');
        Delay(1000);
        Writeln('Exiting in 1 second..');
        Delay(1000);
        Writeln('CONSOLE: EXITING PROGRAM!!');
        Writeln('sending kill command...');
        Delay(200);
        Writeln('shutting down..');
        Delay(200);
        Writeln('team fr4mew0rk.');
        Writeln('Written by TJ in Pascal');
        Delay(500);

end;


If SEL = 4 Then
Begin
Clrscr;
        Writeln('The only other currently existing command is CREDITS.');
        Writeln('This command can be excecuted by typing 11.');
        Writeln('Returning to menu...');
        Delay(3000);
        Goto Menu;

        end;



(* After this section, everything else is misc. commands *)

If SEL = 11 Then
Begin
Clrscr;
        Writeln('Written by T.J. Loudon');
        Writeln('Written in Pascal using Free Pascal.');
        Writeln('Greetz to friends, studio and Fiyah friends.');
        Writeln('VER. 0.0.1 ALPHA BUILD');
        Writeln('To return to the menu, hit ENTER.');
        Readln;
        Goto Menu;
        end;

end.
