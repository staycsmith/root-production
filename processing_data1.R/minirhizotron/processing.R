setwd("./field_lab_data/minirhizotron/")

MR_data <- read.csv("minirhizotron_Session1and2_ALLdata_for_R.csv")
str(MR_data)
colnames(MR_data)[3] <- "Locate"


Locate2 <- rep(0,length(MR_data$Locate))
MR_data$Locate <- factor(MR_data$Locate, levels = c("1_4","5_8","9_12","13_16",
                                                    "17_20", "21_24","25_28","29_32",
                                                    "33_36","37_40","41_44","45"))




 #if(MR_data$my_vector > 0 & MR_data$my_vector < 5){
  # stuffhappens
 #}



for(i in 1:length(Locate2)){
  if(MR_data$Locate[i] %in% c("1_4","5_8","9_12","13_16",
                              "17_20", "21_24")){
    Locate2[i] = 1
  } else {
    Locate2[i] = 2
  }
}


library(ggplot2)


MR_data$Locate2 <- Locate2 


ggplot(MR_data, aes(x=Locate,y=TotLength.mm.)) + geom_point() + facet_grid(treatment~Treatment)


write.csv(MR_data, "MR_data_FUN.csv")



