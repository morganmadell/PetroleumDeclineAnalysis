#' Returns a data frame with just the variables we need to perform a gas decline.
#' 
#' \code{Gas_Data}
#'
#' @param df data frame to parse
#' @importFrom utils tail
#' @export
#' @examples
#' data <- data.frame(PROD_DATE=50,COND_CAL_DAY=5,OIL_CAL_DAY=12,CUM_OIL_BT=50,GAS_CAL_DAY=50,CUM_GAS=200,X_TD_TVD=200)
#' Gas_Data(data)
Gas_Data <- function(df) {
  #df <- df[with(df, order(PROD_DATE)),]
  MajorProduct <- "Unknown"
  if( (tail(df$CUM_OIL_BT, n=1)*6.2898) > ((tail(df$CUM_GAS, n=1)*35.494)/6)) {
    MajorProduct <- "Oil"
  } else {
    if( (tail(df$CUM_OIL_BT, n=1)*6.2898) < ((tail(df$CUM_GAS, n=1)*35.494)/6)) {
      MajorProduct <- "Gas"
    }
  }
  dat <- data.frame(
    t=df$PROD_DATE, 
    q=df$GAS_CAL_DAY*35.494, 
    Q=df$CUM_GAS*35.494, 
    GOR=(df$GAS_CAL_DAY*35.494)/(df$OIL_CAL_DAY*6.2898), 
    CGR=(df$OIL_CAL_DAY*6.2898+df$COND_CAL_DAY*6.2898)/(df$GAS_CAL_DAY*35.494), 
    MajorProduct=rep(MajorProduct, length(df$PROD_DATE)), 
    qf=rep(Abandon_Rate_Gas(df$X_TD_TVD[1]), length(df$PROD_DATE))
    )
  dat$GOR[is.infinite(dat$GOR)] <- NaN
  dat$CGR[is.infinite(dat$CGR)] <- NaN
  dat <- dat[order(dat$t),]
  dat <- dat[!duplicated(dat), ]
  return(dat)
}
