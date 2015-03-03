
x=1


h=1

derivada1_1=derivaradelante(x,h)
derivada1_2=derivaratras(x,h)
derivada1_3=derivarcentrada(x,h)

h=0.1

derivada2_1=derivaradelante(x,h)
derivada2_2=derivaratras(x,h)
derivada2_3=derivarcentrada(x,h)

h=0.01

derivada3_1=derivaradelante(x,h)
derivada3_2=derivaratras(x,h)
derivada3_3=derivarcentrada(x,h)

h=0.001

derivada4_1=derivaradelante(x,h)
derivada4_2=derivaratras(x,h)
derivada4_3=derivarcentrada(x,h)



Valores_de_h={'1';'0.1';'0.01';'0.001'};
D_adelante=[derivada1_1;derivada2_1;derivada3_1;derivada4_1];
D_atras=[derivada1_2;derivada2_2;derivada3_2;derivada4_2];
D_centrada=[derivada1_3;derivada2_3;derivada3_3;derivada4_3];

syms y;
g(y) = f(y);
df = diff(g);
dev=df(x);

dev=double(dev);

T=table(D_adelante,D_atras,D_centrada,...
    'RowNames',Valores_de_h)
fprintf('La derivada es %f',dev)