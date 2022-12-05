
#plot with multiple y axis and single x axis
#save image as tiff
tiff("4.5.env.tif", res = 600,height = 11,width = 15,units = "in",compression = "lzw")
#start plotting
par(mar = c(5, 15, 3, 0.5) + 0.5)
plot(Year,Pr,col= "blue", type="l",axes=F, ylim=c(3.5,12.5), xlab = "", ylab ="" , xlim=c(2020,2100),lty=3,lwd=2,cex.lab=1.5)
points(Year,Pr,pch=16,col= "darkblue",bg="darkblue",cex=2)
axis(2, ylim=c(3.5,12.5),col= "black",lwd=2,cex=2,cex.lab=1.75)
mtext(2,text="Precipitation (mm/day)",line=2,cex = 1.5)
# add new y axis
par(new=TRUE)
plot(Year, SST, col= "darkred",pch=21, axes=F, ylim=c(28,31), xlab="", ylab="", type ="l",lty=1, main = "",xlim=c(2020,2100),lwd=2)
axis(2,ylim=c(28, 31),lwd = 2,line = 3.5,cex.lab=1.75)
points(Year,SST,pch=22,col="red",bg="darkred",cex=2)
mtext(2,text ="SST (Degree celcius)",line=5.5,cex=1.5)
# add 
par(new=TRUE)
plot(Year, SSC, col= "darkgreen",pch=21, axes=F, ylim=c(0.03,0.06), xlab="", ylab="", type ="l",lty=5, main = "",xlim=c(2020,2100),lwd=2.5)
axis(2,ylim=c(0.02, 0.06),lwd = 2,line = 10.5,cex.lab=1.75)
points(Year,SSC,pch=18,col="darkgreen",bg="green",cex=2)
mtext(2,text ="Chla (mg/m3)",line=12.5,cex=1.5)
# add
par(new=T)
plot(Year,SSS, col="black",axes=F,ylim=c(34.5,37.5), xlab="", ylab="", type="l",lty=6,xlim=c(2020,2100),lwd=2.5)
axis(2, ylim=c(34.5,37.5),lwd=2,line=7,cex.lab=1.75)
points(Year,SSS,pch=19,col="black",cex=2)
mtext(2,text="Salinity (psu)",line=9,cex=1.5)
axis(1, as.numeric(Year),las=1)
mtext(" Year (a)",side=1,col= "black",line=3,cex =1.5)
legend(x=2090,y=37.5,legend=c("Precipitation" , "SST" ,"Chla" ,"Salinity"),lty = c(3,1,5,6), col=c("darkblue","darkred","darkgreen","black"),lwd=1)
dev.off()
