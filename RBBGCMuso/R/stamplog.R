#' This function returns only the starting numbers of a string
#' 
#' This function returns only the starting numbers of a string
#' @author Roland Hollos
#' @keywords internal

numcut<-function(string){
    #This function returns only the starting numbers of a string
    unlist(strsplit(grep("^[0-9]",string,value = TRUE),"[aAzZ-]"))[1]
}

#' numcutall
#'
#' apply numcut for all elements of a string vector
#' @author Roland Hollos
#' @keywords internal
numcutall<-function(vector){
    #numcall apply numcut for all elements of a string vector
as.numeric(unlist(apply(as.matrix(vector),1,numcut)))
}

#' It gives back a stamp wich is the maximum number of the output numcall
#'
#' It gives back a stamp wich is the maximum number of the output numcall
#' @author Roland Hollos
#' @keywords internal
stamp<-function(path="./"){
    #It gives back a stamp wich is the maximum number of the output numcall
    numbers<-numcutall(list.files(path))
    if(length(numbers)==0){
        return (0)} else {
                   return(max(numbers))}
}
