
#inputs
price = c(1,4,5,3,2,1)
price2= c(1,1,1,4,1,1,1,1,1)
price3= c(5,3,4,1,1)
budget = 4

#get the max consecutive nights
getmaxnights <- function(prices=NULL,budget=NULL) {
  max_nights <- 0
  p1=1
  p2=1
  if (length(prices)==0) return(0)
  
  while(p2 < length(prices)+1) {
    cost = sum(prices[p1:p2])
    nights = p2-p1+1
    print(paste("cost",cost))
    print(paste("nights",nights))
    cat(sep="\n\n")
    #check if calculated cost is greater than bugdet
    if(cost > budget){
      if(p1==p2){
        p1=p1+1
        p2=p2+1
      }else{
        p1=p1+1
      }
    }else{ #cost is less than buget, lets see if i can stay one more night in mazatlan
      p2=p2+1
      max_nights= max(nights,max_nights)
    }
  }#end while
  return(max_nights)
}


getmaxnights(prices= price2,budget = 5)