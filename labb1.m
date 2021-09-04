% 1.A)
A = [1 2 3 0;0 4 5 6;1 1 -1 0; 1 1 1 1];
b = [7 6 5 4]';

disp("Vektorn x blir:")
x = A\b;
disp(x)

% 1.B)
r =b-A*x;
disp("Residualvektorn r blir:");
disp(r);

% 1.C)
disp("Då lösningen inte är linjär så kommer Ax~b, det vill säga att Ax=!b därför är det en avvikelse från r=0");

disp("----------------");

% 2.A)
disp("Med hjälp av intervallhalveringsmetoden kan vi estimera våra två positiva nollställen");

% 2.B)
f=@(x)51*x-((x.^2+x+0.03)./(2*x+1)).^7 -17*x.*exp(-x);
subplot(2,1,1);
x=linspace(0,1);
plot(x,f(x))
axis([0 0.000000000001 -0.0000000001 0.0000000001]), grid on
subplot(2,1,2);
x=linspace(0,5);
plot(x,f(x))
axis([0 5 -50 150]), grid on

