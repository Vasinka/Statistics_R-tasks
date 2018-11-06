# Създайте вектор { 8, 3, 8, 7, 15, 9, 12, 4, 9, 10, 5, 1 }.
#Превърнете вектора в матрица 5х2. Задайте имена на редовете
#на матрицата - r1, r2 ... Добавете още една колона съдържаща
#нечетните числа - 1, 3, 5 ... Сортирайте матрицата по първа колона
#в нарастващ ред.

v=c(8, 3, 8, 7, 15, 9, 12, 4, 9, 10, 5, 1)
A = matrix(v, nrow = 5, ncol = 2)
A
row.names(A) = c('r1', 'r2', 'r3', 'r4')
A
A = cbind(A, c(1, 3, 5, 7))
A = A[order(A[,1]),]
A

#Разгледайте данните ’homedata’ от пакета ’UsingR’. Създайте
#два вектора съдържащи цените на къщите през 1970 и 2000г.
#Определете:
#а) най-скъпата и най-евтината къща през 2000г, техните цени
#през 1970г;
#б) цените на 5-те най-скъпи къщи през 2000г;
#в) броят на къщите по-скъпи от 750 000 през 2000г;
#г) средната цена през 1970г. на къщите от в);
#д) цената през 2000г. на тези къщи, чиято цена е намаляла;
#е) 10-те къщи с най-голямо процентно увеличение на цената.
install.packages("UsingR")
library(UsingR)
data(homedata)
homedata
homedata1970 = homedata$y1970
homedata2000 = homedata$y2000
#a
minPrice = min(homedata2000)
maxPrice = max(homedata2000)
homedata1970[which(homedata2000==minPrice)]
homedata1970[which(homedata2000==maxPrice)]
#b
tail(sort(homedata2000),5)
#v
sum(homedata2000 > 750000)
#g
mostExpensive = homedata2000[homedata2000 > 750000]
mean(mostExpensive)
#d
homedata2000[which(homedata2000 < homedata1970)]
#e
x = (homedata2000-homedata1970)/homedata1970*100
sort(x, decreasing = TRUE)
head(sort(x, decreasing = TRUE), 10)

#Разглеждаме данните ’survey’ от пакета ’MASS’. Намерете:
#а) броя на мъжете;
#б) броя на мъжете пушачи;
#в) средната височина на мъжете;
#г) височината и пола на 6-те най-млади студента.
install.packages("MASS")
library(MASS)
data("survey")
survey
summary(survey)
View(survey)
# а) 
sum(survey$Sex == "Male", na.rm = TRUE)
# б)
sum(survey$Sex == "Male" & survey$Smoke != "Never", na.rm = TRUE)
# в)
mean(survey$Height)
# г) 
Yongest = head(sort(survey$Age), 6)
Yongest