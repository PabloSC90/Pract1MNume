%CALCULO DE DERIVADAS


syms x
syms h

f(x)= -0.1*x^4-0.15*x^3-0.5*x^2-.025*x+1.2

z=23  %%Elecci�n del punto en el que se calcula la derivada

%%Derivada hacia delante
fprintf('DERIVADA MEDIANTE DIFERENCIAS HACIA DELANTE')
z=23
n=1
derivada=derivaradelante(z,n)
n=0.1
derivada=derivaradelante(z,n)
n=0.01
derivada=derivaradelante(z,n)
n=0.001
derivada=derivaradelante(z,n)
 
%%Derivada hacia atr�s
fprintf('DERIVADA MEDIANTE DIFERENCIAS HACIA ATR�S')
n=1
derivada=derivaratras(z,n)
n=0.1
derivada=derivaratras(z,n)
n=0.01
derivada=derivaratras(z,n)
n=0.001
derivada=derivaratras(z,n)

%%Derivada centrada
fprintf('DERIVADA MEDIANTE DIFERENCIAS CENTRADAS')
n=1
derivada=derivaracentrada(z,n)
n=0.1
derivada=derivaracentrada(z,n)
n=0.01
derivada=derivaracentrada(z,n)
n=0.001
derivada=derivaracentrada(z,n)