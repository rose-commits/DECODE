#a=10
#print(a)
#plot(4,2)
#Data types
#Integer: 1,9,11
#Float: 3.5, 2.4
#String/character: "class", "A"
#Bool: True/False

my_variable=11
my_float=3.5
my_name="Durga"
my_bool=TRUE

# Data structure
# Vector
# 1.5,0.9,3.6

my_gene_expression = c(1.5,0.9,3.6,4.2)
print(my_gene_expression)

my_gene_expression[1]
print(my_gene_expression[1])

my_gene_expression[3]
print(my_gene_expression[3])

my_gene_expression[c(1,3)]
my_gene_expression[-3]

sum(2,25,30,40)
sum(my_gene_expression)
mean(my_gene_expression)
sd(my_gene_expression)
log(my_gene_expression)


# 2D Data structure
my_gene_names = c("CRTISO", "ZISO", "PSY", "ZDS")

# Data frame: Rows & Columns
# data.frame

my_gene_DF=data.frame(my_gene_names,my_gene_expression)
View(my_gene_DF)


my_gene_DF=data.frame("GENE"=my_gene_names,"EXPRESSION"=my_gene_expression)
View(my_gene_DF)

my_new_gene=data.frame("GENE"="PDS", "EXPRESSION"=9.8)
View(my_new_gene)
rbind(my_gene_DF,my_new_gene)

my_gene_count=c(55,61,102,32,65)
my_gene_DF = cbind(my_gene_DF, "COUNT"=my_gene_count)
View(my_gene_DF)

my_gene_DF[1,1]
my_gene_DF[3,3]
my_gene_DF[1:3,2]
my_gene_DF[c(1,3),2]
my_gene_DF[,]
my_gene_DF[-3,]

3>4
3==4
3==3

if(3>4){
  print("My Name is Durga")
}else{
  print("My Name is not Durga")
}

#AND --> &
#OR --> |
if((3>2)|(3==4)){
  print("yeee")
}else{
  print("hooo")
}

if((3>2)&(3==4)){
  print("yeee")
}else{
  print("hooo")
}

my_gene_names = c("CRTISO", "ZISO", "PSY", "ZDS")
for(my_iterator in my_gene_names){
  print(my_iterator)
}

#Gene of interest id TRP
for(my_interest in my_gene_names){
  if(my_interest == "TRP"){
    print("I found it, TRP Gene")
  }else{
    print("I can't find, TRP Gene")
  }
}

#indicator
indicator=0
for(my_interest in my_gene_names){
  if(my_interest == "TRP"){
    print("I found it, TRP Gene")
    indicator=1
  }
}
if(indicator == 0){
   print("I can't find, TRP Gene")
}


#Function :(1) Definition (2) Calling
#Define
my_function = function(my_num){
  my_square = my_num*my_num
  print(my_square)
}

my_function(2.4)
my_function(3)
my_function("2")#string in function showed error

#finding gene function
find_gene = function(gene_name){
  indicator=0
  for(my_interest in my_gene_names){
    if(my_interest == gene_name){
      print(paste("I found it", gene_name,"Gene"))
      indicator=1
    }
  }
  if(indicator == 0){
    print(paste("I could not find", gene_name,"Gene"))
  }
}

find_gene("TRP")
find_gene("CRTISO")

#to read file from saved directory
#my_file = read.csv("file name")
#View(my_file)

#to find file easily we can also use $sign that automatically shows file name
#my_file$file name
