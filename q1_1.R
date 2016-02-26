x <- c(0.18, -1.54, 0.42, 0.95)
w <- c(2, 1, 3, 1)
answers <- c(0.300,0.0025,1.077,0.1471)
innerx1<-w * ((x - answers[1])^2)
innerx2<-w * ((x - answers[2])^2)
innerx3<-w * ((x - answers[3])^2)
innerx4<-w * ((x - answers[4])^2)
sums<-c(sum(innerx1), sum(innerx2), sum(innerx3), sum(innerx4))
sums
