setwd("//ad.ufl.edu/ifas/AGR/Groups/RowlandLab/Stacy A Smith/BRU_Rhizotron/1.Session1and2_28and31May2019")

library(readxl)


#change character data into factors for graphing
BRUrootStudy_Session1and2_ALLdata_for_R$Treatment <- factor(BRUrootStudy_Session1and2_ALLdata_for_R$Treatment, labels = c("control", "cut", "cut+manure"))

BRUrootStudy_Session1and2_ALLdata_for_R$`Location#` <- factor(BRUrootStudy_Session1and2_ALLdata_for_R$'Location#', labels = c("1_4", "5_8", "9_12","13_16", "17_20", "21_24", "25_28", "29_32", "33_36", "37_40", "40_44", "45"))

BRUrootStudy_Session1and2_ALLdata_for_R$`Tube#` <- factor(BRUrootStudy_Session1and2_ALLdata_for_R$'Tube#', labels = c("1", "2", "3","4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24"))

#create root length/volume column
BRUrootStudy_Session1and2_ALLdata_for_R$Len_Vol <- BRUrootStudy_Session1and2_ALLdata_for_R$`TotLength(mm)`/BRUrootStudy_Session1and2_ALLdata_for_R$`TotVolume(mm3)`

#graph
ggplot(BRUrootStudy_Session1and2_ALLdata_for_R, aes(x = Treatment, y = Len_Vol)) + geom_boxplot()

