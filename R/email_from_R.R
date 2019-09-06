library("sendmailR")


# this seems to work

from <- sprintf("<sendmailR@%s>", Sys.info()[4]) 
to <- "<emailaddress@gmail.com>" 
subject <- "Model done dickhead" 
msg <- "Eh?" 
sendmail(from, to, subject, msg,control=list(smtpServer="ASPMX.L.GOOGLE.COM"))
