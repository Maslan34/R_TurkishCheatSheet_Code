#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#ÜSD234-Temel R Programý Kullanýmý
#Murat Alan
#Güz 2021-2022
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

rm(list=ls()) #çevreyi (geçmiþi) temizleme

setwd("C:/Yedek/Ders2021_2022/Guz/R_temel")  #çalýþýlacak klasörün (working directory) belirlenmesi/seçilmesi

#C:\Yedek\Ders2021_2022\Guz\R_temel


getwd() #hangi klasörde (nerde) çalýþýldýðýnýn sorgulanmasý

sin(60)#açýlarýn sin, cos bulunmasý
cos(60)
sin(pi/2)
sin(60)

#120 bebeðin doðum aðýrlýðýna ait verilerin okutulmasý


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


#verinin yapýsýný anlamak

class(cocuk)#verinin sayýsal, metin, vb anlaþýlmasý
mode(cocuk)#verinin sayýsal, metin, vb anlaþýlmasý

#sütun grafik/frekans grafiði

hist(cocuk)#özetleme histogram grafiði

hist(cocuk, col = "light blue") #col=renk (color) , light blue=açýk mavi

hist(cocuk,main = "Cocuk", xlab = "Aðýrlýk", ylab = "Sayý", #main baþlýk=Cocuk, 
            col="Yellow", border = "Red", ylim = c(0,30),xlim=c(2.0,4.0))   #xlab x ekseni aðýrlýk
                                                            #ylab y ekseni Sayý, border grafik rengi sarý(yellow)
                                                            #çizgisi kýrmýzý (red), ylim y ekseni 0-30 arasýnda olsun

#~~~~~~~~~~~~~~~~~~~~~~~~
#Tanýtýcý Ýstatistik
#Merkezi eðilim ölçüleri
#~~~~~~~~~~~~~~~~~~~~~~~~

ort=mean(cocuk,na.rm = TRUE)   #aritmetik ortalama (mean) bulunmasý
ort

round(ort, digits= 3) #3 hane (digit) yuvarlama yapýlmasý

median(cocuk, na.rm = TRUE)#ortanca deðer (median) bulunmasý

khalil=c(7,8,8, 9, 15,18, 25, 29)#sunumdaki örnek
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

#Üç arabanýn hýzlarý
hr=c(120,100,50)
1/mean(1/CR)


#geometrik ortalama

gm=c(2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048)
n=length(gm)
prod(gm)^(1/n)#geometrik ortalama(prod)


#~~~~~~~~~~~~~~~~~~~~~~~~
#Tanýtýcý Ýstatistik
#Deðiþim ölçüleri
#~~~~~~~~~~~~~~~~~~~~~~~~

range(cocuk)#deðiþim geniþliði
3.95-2.85 #Range hesabý

var(cocuk) #varyans bulunmasý

sd(cocuk)  #standart sapma

sqrt(var(cocuk))#karekök alma = sd(cocuk)



#satýr ve sütunu kullanarak üç veriyi birleþtirme 

boy<-c(1.72,1.65,1.85,1.90,1.70) 
kilo<-c(74,84,81,94,87) 
yas<-c(22,18,23,17,16)

vucut_c<-cbind(boy,kilo,yas)#sütun (column) cbind () kullanarak birleþtirme
vucut_c

vucut_c <- data.frame(vucut_c)# iþlem yapýlabilir veri haline getirme data.frame()
vucut_c

mean(vucut_c$boy)#  $ özelliði blirtir, boy

vucut_r=rbind(boy,kilo,yas)#satýr (row) rbind() kullanarak birleþtirme
vucut_r

matris<-matrix(nrow=5,ncol=3)
matris

matris[,1]<-boy 
matris[,2]<-kilo 
matris[,3]<-yas
matris

colnames(matris)<- c("Boy","Kilo","Yas")
matris

matris=as.matrix(cbind(boy, kilo, yas))#matris halinde birleþtirme as.matrix
matris

x=c(10,11,13,4,5,6)
y=c(2,2,2,2,2,2)

z=data.frame(cbind(x,y))
z

mean(z$x)


#setwd("C:/Yedek/Ders2020_2021/R")

#~~~~~~~~~~~~~~~~~~~~
#Yardým
#~~~~~~~~~~~~~~~~~~~~
help("plot") #help=yardým, plot(grafik) konusunda yardým kodlar 
 #veya
?plot #üstteki yürütümün aynýsý
?t.test

library(stats) # for lowess, rpois, rnorm
plot(cars)

head(cars, n=3)#ilk üç veri gösterilir head()=baþ,normali ilk 6 veri
tail(cars)#son 6 veri tail()=kuyruk veya son
lines(lowess(cars))
 
str(cars)#verinin yapýsý str()=structure=yapý
View(cars)#verinin caðrýlmasý
var(cars$speed) #$, cars verisinde speed'in varyansý
mean(cars$speed)
summary(cars)#özetleme, summary()
 
??plot # Konuyu araþtýrma
RSiteSearch("plot") #web sitesinde araþtýrma

# plot, google arama motoru 

#model1 <- aov(dist ~ speed, data=cars)
#summary(model1)

#~~~~~~~~~~~~~~~~~~~~
#Verilerin Okutulmasý
#~~~~~~~~~~~~~~~~~~~~

#excel'den okutulmasý
install.packages("readxl")
library(readxl) #gerekli paket excel'den veri okutma
Kitap1<- read_excel("C:/Yedek/Ders2021_2022/Guz/R_temel/Kitap1.xlsx")# excel'den veri okutma read_excel()

str(Kitap1)  #verinin yapýsý,structure str()
head(Kitap1) #verinin baþlýklarý(head) ilk 6 satýr
View(Kitap1) #Verinin çaðrýlmasý/görülmesi (View)

Kitap1$Agacno <- as.factor(Kitap1$Agacno)
Kitap1$Blok=as.factor(Kitap1$Blok)#özelliði faktör yapma 
str(Kitap1)  #verinin yapýsý(structure)

mean(Kitap1$Cap, na.rm =TRUE) #ortalama Kitap1'de Cap, olmayan gözlemler için, na.rm = TRUE
mean(Kitap1$Boy, na.rm=TRUE) #ortalama Kitap1'de Boy 

summary(Kitap1)

getwd()

Kitap2 <- read.csv("Kitap2.csv", header = T, sep =";")# düzgün okunmuyorsa sep =";" csv dosya okutma, read.scv
str(Kitap2)  #verinin yapýsý(structure)

Kitap2$Blok<-as.factor(Kitap2$Blok)#bir özelliði(blok) faktör, kategori haline getirme

str(Kitap2)  #verinin yapýsý(structure)

Kitap2$Boy=as.numeric(Kitap2$Boy)# bir özelliði (Boy), sayýsal (numeric) yapma
Kitap2$Govduz=as.numeric(Kitap2$Govduz)

boxplot(Boy~Blok, data = Kitap2, col= "red")# Kutu grafik çizdirme, boxplot()  

boxplot(Cap~Blok, data = Kitap2,col="green")

#Normal daðýlým gösteren veri üretme, rnorm ()

aðýrlýk=rnorm(500,mean=70,sd=5)# aðýrlýk adlý 70 kg ortalama ve 5 kg standart sapma
boy=rnorm(500, mean = 170, sd=10)
bascevresi=rnorm(500, mean=40,sd=2)
ph=rnorm(500, mean = 6, sd= 1.1)

mean(aðýrlýk)
sd(aðýrlýk)

vuc=cbind(aðýrlýk,boy,bascevresi,ph) #aðýrlýk, boy ve bascevresi vekörlerini sütun olarak birleþtirme

vuc=data.frame(vuc)#Sütun olarak birleþtirilmiþ vektörleri,  veri haline getirme (data.frame)

View(vuc)

mean(vuc$aðýrlýk)
sd(vuc$aðýrlýk)
var(vuc$bascevresi)

hist(vuc$aðýrlýk)
hist(vuc$boy, ylim = c(0,140),col="light green", main = "Boy özetleme", xlab ="Boy", ylab = "Adet")

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#Grafik üretme, görsel oluþturma
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

hist(aðýrlýk, breaks = 20, col = "light blue") #daðýlým grafiði, 
                                              #breaks sütunlarýn geniþliðini belirler

hist(aðýrlýk,breaks = 15, main="Temel R Histogram Grafiði"  #grafikte baþlýk ve etiketlerin bulunmasý
   ,xlab="aðýrlýk",ylab="sayý",                            #baþlýk main=" ", etiket labels=TRUE
     col="purple",labels=TRUE,freq=TRUE)                 #x ekseni baþlýðý xlab=" "
                                                          

hist(aðýrlýk,main = "aðýrlýk", xlab = "aðýrlýk", ylab = "sayý", 
     col="black", border = "red", ylim = c(0,100)) #sütünlarýn sýnýr rengi border=""
                                                  #y ekseninin boyutu ylim=c()

plot(aðýrlýk,col="red",xlab = "sýra", ylab = "kg", 
     main = "aðýrlýk-çizgi", type = "b", lwd="3")

plot(cocuk, col="red", ylab="agirlýk", 
     xlab = "cocuk", main="cocuk-çizgi",type = "o", lwd="3")

#par(mfcol = c(1,3)) # Üç grafik bir arada çizilmesi           

hist(aðýrlýk,col=c("black","white"))

hist(aðýrlýk,col=c("red","blue"),breaks=20)

hist(aðýrlýk,col=rainbow(40),breaks=50)


plot(Kitap1$Boy,Kitap1$Cap,col="red",main = "Çap ve Boy iliþkisi", 
     xlab = "Boy", ylab = "Çap", pch=15)

boxplot(Boy~Blok, data=Kitap2, col= "green")

boxplot(Kitap1$Boy~Kitap1$Blok, col="red")

boxplot(Cap~Blok, data=Kitap2, col= "purple")



#library(Rcmdr) R'ý istatistik paket gibi kullanmak için yüklenecek paket
