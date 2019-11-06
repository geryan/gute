# From https://r.789695.n4.nabble.com/Size-of-an-object-in-workspace-td823649.html

# Creates list of workspace objects with name, object.size and type.

# if sorted = FALSE then is sorted alphabetically
# if sorted = TRUE then is sorted by object size

my.ls <- function(pos=1, sorted=FALSE){
  .result <- sapply(ls(pos=pos, all.names=TRUE),
                    function(..x)object.size(eval(as.symbol(..x))))
  if (sorted){
    .result <- rev(sort(.result))
  }
  .ls <-
    as.data.frame(rbind(as.matrix(.result),"**Total"=sum(.result)))
  names(.ls) <- "Size"
  .ls$Size <- formatC(.ls$Size, big.mark=',', digits=0, format='f')
  .ls$Mode <- c(unlist(lapply(rownames(.ls)[-nrow(.ls)],
                              function(x)mode(eval(as.symbol(x))))), '-------')
  .ls
}
