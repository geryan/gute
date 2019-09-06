# Fake data
n <- 1000
dat <- data.frame(gender=gl(2, n, 16*n, labels=c('male', 'female')), 
                  village=gl(8, 2*n, 16*n, labels=paste0('V', 1:8)), 
                  thing=rnorm(16*n, rep(rnorm(16, 20, 5), each=n)))
dat[dat$gender=='male' & dat$village=='V3', 'thing'] <- NA
head(dat)

# defin function
paired_hists <- function(variable, grp, dichot, color=c('red', 'blue'), gap=0, ...) {
  if(!is.factor(grp)) grp <- as.factor(grp)
  if(!is.factor(dichot)) dichot <- as.factor(dichot)
  hist.data <- tapply(variable, list(grp, dichot), function(x) {
    if(any(!is.na(x))) hist(x, plot=FALSE)
  })
  xlim <- c(0, nlevels(grp)+1)
  ylim <- range(pretty(unlist(sapply(hist.data, function(x) x$breaks))))
  plot.new()
  plot.window(ylim=ylim, xlim=xlim)
  axis(1, at=seq_along(levels(grp)), labels=row.names(hist.data), cex=0.8)
  axis(2, las=1, cex=0.8)
  box()  
  invisible(sapply(seq_len(nrow(hist.data)), function(x) {
    if(!is.null(hist.data[[x, 1]])) {
      rect(x - hist.data[[x, 1]]$density, 
           hist.data[[x, 1]]$breaks[-length(hist.data[[x, 1]]$breaks)],
           x,
           hist.data[[x, 1]]$breaks[-1], col=color[1], ...)    
    }
    if(!is.null(hist.data[[x, 2]])) {
      rect(x, 
           hist.data[[x, 2]]$breaks[-length(hist.data[[x, 2]]$breaks)],
           x + hist.data[[x, 2]]$density,
           hist.data[[x, 2]]$breaks[-1], col=color[2], ...)
    }
  }))
  legend('topright', levels(dichot), fill=color, bty='n', cex=0.8)
}

# example
paired_hists(dat$thing, dat$village, dat$gender, color=c(2, 4))