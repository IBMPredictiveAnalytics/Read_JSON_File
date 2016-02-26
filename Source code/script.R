# 'RJSONIO' package created by Duncan Temple Lang - http://cran.r-project.org/web/packages/RJSONIO
# 'plyr' package created by Hadley Wickham http://cran.r-project.org/web/packages/plyr
# Node developer: Danil Savine - IBM Extreme Blue 2014
#version 2 completed by Greg Filla
# Description: This node allows you to import into SPSS a table data from  a JSON.

# Install function for packages    
packages <- function(x){
  x <- as.character(match.call()[[2]])
  if (!require(x,character.only=TRUE)){
    install.packages(pkgs=x,repos="http://cran.r-project.org")
    require(x,character.only=TRUE)
  }
}

packages(RJSONIO)
packages(plyr)
packages(RCurl)

if( '%%path%%' != "" &&  '%%url%%' != "") { stop("Node can only read one JSON file at a time.  Choose local file or file from URL")}

my_f = '%%url%%'
if(my_f == "" ){
   my_f = '%%path%%'
    txt <- readLines(my_f,warn=FALSE)
}else{
    txt <- getURL(my_f)
}

print(my_f)
 
split_txt <- strsplit( gsub("\\}.\\{","\\}~\\1~\\{",txt), "~" )
result<- unlist(lapply(split_txt, function(x){
  x[which(x!="")]
    }))

filled <- data.frame()
 
 for(obj in 1:length(result)){#while(obj<length(result)+1){  
    obj<- 1
    json.temp <- fromJSON(result[obj])
    
## Serialized JSON ID
  if('%%serialized%%' !=''){
  classifier <- json.temp$%%serialized%% #user specified
  names(classifier) <- 'Identifier'}


    if(strsplit(x='%%isPath%%', split='\n' ,fixed=TRUE)[[1]][1]) {
      path.list <- unlist(strsplit(x='%%path.to.array%%', split=','))  
      
          for(i in 1:length(path.list)){
                #if(is.null(getElement(json.temp, path.list[i]))){

                  json.temp <- getElement(json.temp, path.list[i])
                #}
          }
    }else{
         print('No Path Used')#json.list[i] <- json.temp[[1]] #Serves as catch statement- prior version of extension failed at this point
      }
    
    for(record in 1:length(json.temp)){

      if('%%serialized%%' !=''){unlisted.json <- c(classifier,unlist(json.temp[[record]]))
    }else{unlisted.json <- unlist(json.temp[[record]])}

      to.fill <- data.frame(t(as.data.frame(unlisted.json, row.names = names(unlisted.json))), stringsAsFactors=FALSE)
      filled <- rbind.fill(filled,to.fill)

    }
 }

###########################################
# This function is used to generate automatically the dataModel

getMetaData <- function (data) {
  if (dim(data)[1]<=0) {
    
    print("Warning : modelerData has no line, all fieldStorage fields set to strings")
    getStorage <- function(x){return("string")}
    
  } else {
    
    getStorage <- function(x) {
      res <- NULL
      #if x is a factor, typeof will return an integer so we treat the case on the side
      if(is.factor(x)) {
        res <- "string"
      } else {
        res <- switch(typeof(unlist(x)),
                      integer = "integer",
                      double = "real",
                      character = "string",
                      "string")
      }
      return (res)
    }
  }
  
  col = vector("list", dim(data)[2])
  for (i in 1:dim(data)[2]) {
    col[[i]] <- c(fieldName=names(data[i]),
                  fieldLabel="",
                  fieldStorage=getStorage(data[i]),
                  fieldMeasure="",
                  fieldFormat="",
                  fieldRole="")
  }
  mdm<-do.call(cbind,col)
  mdm<-data.frame(mdm)
  return(mdm)
}

###########################################
# Export to SPSS Modeler Data

modelerData <- filled
modelerDataModel <- getMetaData(modelerData)
