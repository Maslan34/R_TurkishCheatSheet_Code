#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#ÜSD233-Temel R Programý Kullanýmý
#Murat Alan
#Güz 2021-2022
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

rm(list=ls()) #çevreyi (geçmiþi) temizleme

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# R hesap makinasý gibi kullanýlabilir
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

5+4+8

517.1* 13 

517.1*13 #R programý ondalýk ayracý olarak "," kabul etmez

554 /3

666-333

(5777+4888)/20


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#Vektörler
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# "C()" komutuyla veriler tek bir veri olarak anlatýlýr. 
#Bu yapýya vektör denir.

x = c(10,12,19) #x vektörünün tanýmlanmasý
x
z= c(1,2,3)
z # z verisini caðýrmak için 
z[2]
x[1]# x vektöründe 3. elamaný göster 

x[-2]# x verisinden 2. elamanýn atýlmasý
X[-2]# deðiþken tanýmlarý büyük küçük duyarlý, X büyük

x[4]
NA #not available (mevcut deðil)

x[5]="c" #x vektöründe 5. eleman olarak "c" ekleme

z[10]="deneme"# z vektöründe 10.elaman olarak "deneme" ekleme
z

length(z)#vektörün boyutunu/uzunluðunu anlama

#Ýki vektör ile dört iþlem yapýlabilir
z=c(4,6,8)
x*z
x/z
x-z
x+z
y=1:50 #ARDAÞIK olarak 1'den 50'ye kadar vektör oluþturma
y
m=1:10
y*m #### ÖNEMLÝ BAÞA DÖNDÜ M 
n=20:29#ayný veya katlarý sayýda elaman içeren vektörler iþlem yapýlabilir
m*n

#ayný sayýlarla tekrarlý vektör oluþturma
rep(seq(1,5),3)# rep tekrar (yineleme), 1'den 5'e 3 kez

vector=rep(seq(1,6),3)#kullanmak tanýmlama (ad verme) 
vector ### <- , = ayný ifadelerdir. 

vector1 <- as.vector(seq( 1,100, by=5))# 1'den baþalayarak 5'in katlarý þeklinde 100'e kadar sayý oluþturma
vector1 ### !!!

length(vector1)

#Örnek, 11 adet ekek öðrecinin aðýrlýklarý 
aðýrlýk = c(60,65,80,75,70,90,72,68,83,80,78)
aðýrlýk

aðýrlýk1<-c(65,56,74,110,68,70,60,65,85,93,53,87,72,53,60,62,83,57)
aðýrlýk1

Mikail=c(37,	38,	39,	40,	41,	42,1,	2,	3,	4,	5,	6,	7, 	8, -9, 9,	10,	11,	12,	13,	14,	15)

Mikail

mean(Mikail)

max(Mikail)

min(Mikail)

length(Mikail)

mean(aðýrlýk)#mean ortalama
min(aðýrlýk)#min en düþük
max(aðýrlýk)#max en yüksek

# Vektördeki eleman sayýsý
length(aðýrlýk)

# herhangi bir elemanýn deðeri 
aðýrlýk[6]
# birden çok elemaný sorgulama
aðýrlýk[c(1,3,5)]
# 1. ve 10. deðeri vektörden çýkarma
aðýrlýk1=aðýrlýk[-c(1,10)]
aðýrlýk1

mean(aðýrlýk1)#mean ortalama
min(aðýrlýk1)#min en düþük
max(aðýrlýk1)#max en yüksek

#örnek foksiyon
örnek<-function(p){2*sqrt(p)} #function, fonksiyon tanýmlama, sqrt=karekök

örnek2=function(p){10*(p)}

ornek2(64)
örnek2(64)

veli=c(1,4,5,6,9,20,30,12)
örnek(veli)

örnek2(veli)

h <- c(5,2,2,41, 5)
h
örnek(h)

#~~~~~~~~~~~~~~~~~~~~~~
# sin, cos, karekök alma
#~~~~~~~~~~~~~~~~~~~~~~

sin(60)

cos(60)

tan(60)

1/tan(60)#kotanjant

sin(pi/2)

sqrt(64)# sqrt karekök 



