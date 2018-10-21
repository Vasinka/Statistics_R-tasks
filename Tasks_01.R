#Tasks from Verzani's Book SimpleR
#Topic: Data
#Page 7, Task 1
miles = c(65311, 65624, 65908, 66219, 66499, 66821, 67145, 67447)
x = diff(miles)
max(x)
mean(miles)
min(miles)
#Page 7, Task 2
times= c(17, 16, 20, 24, 22, 15, 21, 15, 17, 22)
max(times)
mean(times)
min(times)
index=match(24,times)
times1=c(times[-index],18)
times1
mean(times1)
sum(times1 >= 20)
length(times1[times1>=20])
#Page 7, Task 3
bill=c(46, 33, 39, 37, 46, 30, 48, 32, 49, 35, 30, 48)
sum(bill)
min(bill)
max(bill)
bill[which(bill==max(bill))]
sum(bill>40)
sum(bill>40)/length(bill)*100
#Page 7, Task 4
price = c(9000, 9500, 9400, 9400, 10000, 9500, 10300, 10200)
mean (price)
mean(price) > 9500
min(price)
max(price)
#Page 7, Task 5
x = c(1,3,5,7,9)
y = c(2,3,5,7,11,13)
x+1
y*2
length(x)
length(y)
x+y
sum(x>5)
sum(x[x>5])
sum(x>5 | x<3)
y[3]
y[-3]
y[x]
y[y>=7]
#Page 8, Task 6
x = c(1, 8, 2, 6, 3, 8, 5, 5, 5, 5)
sum(x)/10
log(x)
(x-4.4)/2.875
max(x) - min(x)
