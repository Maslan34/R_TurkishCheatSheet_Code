#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#�SD233-Temel R Program� Kullan�m�
#Murat Alan
#G�z 2021-2022
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

rm(list=ls()) #�evreyi (ge�mi�i) temizleme

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# R hesap makinas� gibi kullan�labilir
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

5+4+8

517.1* 13 

517.1*13 #R program� ondal�k ayrac� olarak "," kabul etmez

554 /3

666-333

(5777+4888)/20


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#Vekt�rler
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# "C()" komutuyla veriler tek bir veri olarak anlat�l�r. 
#Bu yap�ya vekt�r denir.

x = c(10,12,19) #x vekt�r�n�n tan�mlanmas�
x
z= c(1,2,3)
z # z verisini ca��rmak i�in 
z[2]
x[1]# x vekt�r�nde 3. elaman� g�ster 

x[-2]# x verisinden 2. elaman�n at�lmas�
X[-2]# de�i�ken tan�mlar� b�y�k k���k duyarl�, X b�y�k

x[4]
NA #not available (mevcut de�il)

x[5]="c" #x vekt�r�nde 5. eleman olarak "c" ekleme

z[10]="deneme"# z vekt�r�nde 10.elaman olarak "deneme" ekleme
z

length(z)#vekt�r�n boyutunu/uzunlu�unu anlama

#�ki vekt�r ile d�rt i�lem yap�labilir
z=c(4,6,8)
x*z
x/z
x-z
x+z
y=1:50 #ARDA�IK olarak 1'den 50'ye kadar vekt�r olu�turma
y
m=1:10
y*m #### �NEML� BA�A D�ND� M 
n=20:29#ayn� veya katlar� say�da elaman i�eren vekt�rler i�lem yap�labilir
m*n

#ayn� say�larla tekrarl� vekt�r olu�turma
rep(seq(1,5),3)# rep tekrar (yineleme), 1'den 5'e 3 kez

vector=rep(seq(1,6),3)#kullanmak tan�mlama (ad verme) 
vector ### <- , = ayn� ifadelerdir. 

vector1 <- as.vector(seq( 1,100, by=5))# 1'den ba�alayarak 5'in katlar� �eklinde 100'e kadar say� olu�turma
vector1 ### !!!

length(vector1)

#�rnek, 11 adet ekek ��recinin a��rl�klar� 
a��rl�k = c(60,65,80,75,70,90,72,68,83,80,78)
a��rl�k

a��rl�k1<-c(65,56,74,110,68,70,60,65,85,93,53,87,72,53,60,62,83,57)
a��rl�k1

Mikail=c(37,	38,	39,	40,	41,	42,1,	2,	3,	4,	5,	6,	7, 	8, -9, 9,	10,	11,	12,	13,	14,	15)

Mikail

mean(Mikail)

max(Mikail)

min(Mikail)

length(Mikail)

mean(a��rl�k)#mean ortalama
min(a��rl�k)#min en d���k
max(a��rl�k)#max en y�ksek

# Vekt�rdeki eleman say�s�
length(a��rl�k)

# herhangi bir eleman�n de�eri 
a��rl�k[6]
# birden �ok eleman� sorgulama
a��rl�k[c(1,3,5)]
# 1. ve 10. de�eri vekt�rden ��karma
a��rl�k1=a��rl�k[-c(1,10)]
a��rl�k1

mean(a��rl�k1)#mean ortalama
min(a��rl�k1)#min en d���k
max(a��rl�k1)#max en y�ksek

#�rnek foksiyon
�rnek<-function(p){2*sqrt(p)} #function, fonksiyon tan�mlama, sqrt=karek�k

�rnek2=function(p){10*(p)}

ornek2(64)
�rnek2(64)

veli=c(1,4,5,6,9,20,30,12)
�rnek(veli)

�rnek2(veli)

h <- c(5,2,2,41, 5)
h
�rnek(h)

#~~~~~~~~~~~~~~~~~~~~~~
# sin, cos, karek�k alma
#~~~~~~~~~~~~~~~~~~~~~~

sin(60)

cos(60)

tan(60)

1/tan(60)#kotanjant

sin(pi/2)

sqrt(64)# sqrt karek�k 



