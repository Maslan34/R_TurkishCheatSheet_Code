#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#�SD234-Temel R Program� Kullan�m�
#Murat Alan
#G�z 2021-2022
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

rm(list=ls()) #�evreyi (ge�mi�i) temizleme

setwd("C:/Yedek/Ders2021_2022/Guz/R_temel")  #�al���lacak klas�r�n (working directory) belirlenmesi/se�ilmesi

#C:\Yedek\Ders2021_2022\Guz\R_temel


getwd() #hangi klas�rde (nerde) �al���ld���n�n sorgulanmas�

sin(60)#a��lar�n sin, cos bulunmas�
cos(60)
sin(pi/2)
sin(60)

#120 bebe�in do�um a��rl���na ait verilerin okutulmas�


cocuk=c(3.45,3.2,	3.2,	3.6,3.8,	3.2,	3.6,	3.4,	3.35,	
        3.75,	3.35,	3,	3.15,	3.2,	3.5,	3.4,	3.8,	3.1,	
        3.4,	3.45,	3.5,	3.4,	3.35,	3.5,	3.2,	3.35,	
        3.3,	3.3,	3.85,	3.45,	3.4,	3.65,	3.2,	3.4,	
        3.6,	3.55,	3.1,	3.3,	3.15,	3.4,	3.7,	3.3,	2.85,	
        3.85,	3.4,	3.25,	3.55,	3.65,	3.65,	3.6,	3.3,	
        3.5,	3.1,	3.3,	3.3,	3.75,	3.4,	3.3,	3.35,	3.4,
        3.4,	3.25,	3.55,	3.5,	3.6,	3.35,	3.35,	3.25,
        3.8,	3.4,	3.3,	3.4,	3.7,	3.3,	3.95,	3.25,	3.5,	
        3.1,	3.5,	3.45,	3.2,	3.45,	3.1,	3.65,	3.5,	3.6,
        3.5,	3.1,	3.45,	3.3,	3.35,	3.55,	3.3,	3.2,	3.45,
        3.6,	3.2,	3.6,	3.6,	3.6,	3.4,	3.45,	3.1,	3.2,	
        3,    3.5,  3.4,	3.1,	3.1,	3.3,	3.25,	3.5,	3.2,
        3.7,	3.85,	3.65,	3.2,	3.2,	3.3,	3.4
)

myfunct=function(x){mean(x)*5}
myfunct(cocuk)


#verinin yap�s�n� anlamak

class(cocuk)#verinin say�sal, metin, vb anla��lmas�
mode(cocuk)#verinin say�sal, metin, vb anla��lmas�

#s�tun grafik/frekans grafi�i

hist(cocuk)#�zetleme histogram grafi�i

hist(cocuk, col = "light blue") #col=renk (color) , light blue=a��k mavi

hist(cocuk,main = "Cocuk", xlab = "A��rl�k", ylab = "Say�", #main ba�l�k=Cocuk, 
            col="Yellow", border = "Red", ylim = c(0,30),xlim=c(2.0,4.0))   #xlab x ekseni a��rl�k
                                                            #ylab y ekseni Say�, border grafik rengi sar�(yellow)
                                                            #�izgisi k�rm�z� (red), ylim y ekseni 0-30 aras�nda olsun

#~~~~~~~~~~~~~~~~~~~~~~~~
#Tan�t�c� �statistik
#Merkezi e�ilim �l��leri
#~~~~~~~~~~~~~~~~~~~~~~~~

ort=mean(cocuk,na.rm = TRUE)   #aritmetik ortalama (mean) bulunmas�
ort

round(ort, digits= 3) #3 hane (digit) yuvarlama yap�lmas�

median(cocuk, na.rm = TRUE)#ortanca de�er (median) bulunmas�

khalil=c(7,8,8, 9, 15,18, 25, 29)#sunumdaki �rnek
median(khalil)

getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
tepe<- getmode(cocuk)
tepe


#hamonik ortalama
#HR= c(5,	6,	7,	5,	4,	8,	8,	8,	5,	10,	5,	5,	6,	3,	9,	5)
#CR=c(10,	11,	12,	10,	9,	13,	13,	13,	10,	15,	10,	10,	11,	8,	14,	10)

#�� araban�n h�zlar�
hr=c(120,100,50)
1/mean(1/CR)


#geometrik ortalama

gm=c(2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048)
n=length(gm)
prod(gm)^(1/n)#geometrik ortalama(prod)


#~~~~~~~~~~~~~~~~~~~~~~~~
#Tan�t�c� �statistik
#De�i�im �l��leri
#~~~~~~~~~~~~~~~~~~~~~~~~

range(cocuk)#de�i�im geni�li�i
3.95-2.85 #Range hesab�

var(cocuk) #varyans bulunmas�

sd(cocuk)  #standart sapma

sqrt(var(cocuk))#karek�k alma = sd(cocuk)



#sat�r ve s�tunu kullanarak �� veriyi birle�tirme 

boy<-c(1.72,1.65,1.85,1.90,1.70) 
kilo<-c(74,84,81,94,87) 
yas<-c(22,18,23,17,16)

vucut_c<-cbind(boy,kilo,yas)#s�tun (column) cbind () kullanarak birle�tirme
vucut_c

vucut_c <- data.frame(vucut_c)# i�lem yap�labilir veri haline getirme data.frame()
vucut_c

mean(vucut_c$boy)#  $ �zelli�i blirtir, boy

vucut_r=rbind(boy,kilo,yas)#sat�r (row) rbind() kullanarak birle�tirme
vucut_r

matris<-matrix(nrow=5,ncol=3)
matris

matris[,1]<-boy 
matris[,2]<-kilo 
matris[,3]<-yas
matris

colnames(matris)<- c("Boy","Kilo","Yas")
matris

matris=as.matrix(cbind(boy, kilo, yas))#matris halinde birle�tirme as.matrix
matris

x=c(10,11,13,4,5,6)
y=c(2,2,2,2,2,2)

z=data.frame(cbind(x,y))
z

mean(z$x)


#setwd("C:/Yedek/Ders2020_2021/R")

#~~~~~~~~~~~~~~~~~~~~
#Yard�m
#~~~~~~~~~~~~~~~~~~~~
help("plot") #help=yard�m, plot(grafik) konusunda yard�m kodlar 
 #veya
?plot #�stteki y�r�t�m�n ayn�s�
?t.test

library(stats) # for lowess, rpois, rnorm
plot(cars)

head(cars, n=3)#ilk �� veri g�sterilir head()=ba�,normali ilk 6 veri
tail(cars)#son 6 veri tail()=kuyruk veya son
lines(lowess(cars))
 
str(cars)#verinin yap�s� str()=structure=yap�
View(cars)#verinin ca�r�lmas�
var(cars$speed) #$, cars verisinde speed'in varyans�
mean(cars$speed)
summary(cars)#�zetleme, summary()
 
??plot # Konuyu ara�t�rma
RSiteSearch("plot") #web sitesinde ara�t�rma

# plot, google arama motoru 

#model1 <- aov(dist ~ speed, data=cars)
#summary(model1)

#~~~~~~~~~~~~~~~~~~~~
#Verilerin Okutulmas�
#~~~~~~~~~~~~~~~~~~~~

#excel'den okutulmas�
install.packages("readxl")
library(readxl) #gerekli paket excel'den veri okutma
Kitap1<- read_excel("C:/Yedek/Ders2021_2022/Guz/R_temel/Kitap1.xlsx")# excel'den veri okutma read_excel()

str(Kitap1)  #verinin yap�s�,structure str()
head(Kitap1) #verinin ba�l�klar�(head) ilk 6 sat�r
View(Kitap1) #Verinin �a�r�lmas�/g�r�lmesi (View)

Kitap1$Agacno <- as.factor(Kitap1$Agacno)
Kitap1$Blok=as.factor(Kitap1$Blok)#�zelli�i fakt�r yapma 
str(Kitap1)  #verinin yap�s�(structure)

mean(Kitap1$Cap, na.rm =TRUE) #ortalama Kitap1'de Cap, olmayan g�zlemler i�in, na.rm = TRUE
mean(Kitap1$Boy, na.rm=TRUE) #ortalama Kitap1'de Boy 

summary(Kitap1)

getwd()

Kitap2 <- read.csv("Kitap2.csv", header = T, sep =";")# d�zg�n okunmuyorsa sep =";" csv dosya okutma, read.scv
str(Kitap2)  #verinin yap�s�(structure)

Kitap2$Blok<-as.factor(Kitap2$Blok)#bir �zelli�i(blok) fakt�r, kategori haline getirme

str(Kitap2)  #verinin yap�s�(structure)

Kitap2$Boy=as.numeric(Kitap2$Boy)# bir �zelli�i (Boy), say�sal (numeric) yapma
Kitap2$Govduz=as.numeric(Kitap2$Govduz)

boxplot(Boy~Blok, data = Kitap2, col= "red")# Kutu grafik �izdirme, boxplot()  

boxplot(Cap~Blok, data = Kitap2,col="green")

#Normal da��l�m g�steren veri �retme, rnorm ()

a��rl�k=rnorm(500,mean=70,sd=5)# a��rl�k adl� 70 kg ortalama ve 5 kg standart sapma
boy=rnorm(500, mean = 170, sd=10)
bascevresi=rnorm(500, mean=40,sd=2)
ph=rnorm(500, mean = 6, sd= 1.1)

mean(a��rl�k)
sd(a��rl�k)

vuc=cbind(a��rl�k,boy,bascevresi,ph) #a��rl�k, boy ve bascevresi vek�rlerini s�tun olarak birle�tirme

vuc=data.frame(vuc)#S�tun olarak birle�tirilmi� vekt�rleri,  veri haline getirme (data.frame)

View(vuc)

mean(vuc$a��rl�k)
sd(vuc$a��rl�k)
var(vuc$bascevresi)

hist(vuc$a��rl�k)
hist(vuc$boy, ylim = c(0,140),col="light green", main = "Boy �zetleme", xlab ="Boy", ylab = "Adet")

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#Grafik �retme, g�rsel olu�turma
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

hist(a��rl�k, breaks = 20, col = "light blue") #da��l�m grafi�i, 
                                              #breaks s�tunlar�n geni�li�ini belirler

hist(a��rl�k,breaks = 15, main="Temel R Histogram Grafi�i"  #grafikte ba�l�k ve etiketlerin bulunmas�
   ,xlab="a��rl�k",ylab="say�",                            #ba�l�k main=" ", etiket labels=TRUE
     col="purple",labels=TRUE,freq=TRUE)                 #x ekseni ba�l��� xlab=" "
                                                          

hist(a��rl�k,main = "a��rl�k", xlab = "a��rl�k", ylab = "say�", 
     col="black", border = "red", ylim = c(0,100)) #s�t�nlar�n s�n�r rengi border=""
                                                  #y ekseninin boyutu ylim=c()

plot(a��rl�k,col="red",xlab = "s�ra", ylab = "kg", 
     main = "a��rl�k-�izgi", type = "b", lwd="3")

plot(cocuk, col="red", ylab="agirl�k", 
     xlab = "cocuk", main="cocuk-�izgi",type = "o", lwd="3")

#par(mfcol = c(1,3)) # �� grafik bir arada �izilmesi           

hist(a��rl�k,col=c("black","white"))

hist(a��rl�k,col=c("red","blue"),breaks=20)

hist(a��rl�k,col=rainbow(40),breaks=50)


plot(Kitap1$Boy,Kitap1$Cap,col="red",main = "�ap ve Boy ili�kisi", 
     xlab = "Boy", ylab = "�ap", pch=15)

boxplot(Boy~Blok, data=Kitap2, col= "green")

boxplot(Kitap1$Boy~Kitap1$Blok, col="red")

boxplot(Cap~Blok, data=Kitap2, col= "purple")



#library(Rcmdr) R'� istatistik paket gibi kullanmak i�in y�klenecek paket
