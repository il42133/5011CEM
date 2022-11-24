library(ggplot2)
library(dplyr)
library(foreach)
library(doParallel)
library(microbenchmark)
registerDoParallel(cores = 4)

year = read.csv("/Users/Ian/Desktop/temp/year_lsoa_grocery.csv")
year_top = year %>%
  filter(rank(desc(representativeness_norm))<=100) %>%
  select(area_id)
year_top_c = year_top[['area_id']]

jan = read.csv("/Users/Ian/Desktop/temp/Jan_lsoa_grocery.csv")
jan_trans = jan %>% select(area_id, num_transactions, f_beer, f_spirits, f_wine)
jan_trans_top = filter(jan_trans, area_id %in% year_top_c)
jan_mean = mean(jan_trans_top$num_transactions)
jan_beer_median = median(jan_trans_top[["f_beer"]])
jan_spirits_median = median(jan_trans_top[["f_spirits"]])
jan_wine_median = median(jan_trans_top[["f_wine"]])

feb = read.csv("/Users/Ian/Desktop/temp/Feb_lsoa_grocery.csv")
feb_trans = feb %>% select(area_id, num_transactions, f_beer, f_spirits, f_wine)
feb_trans_top = filter(feb_trans, area_id %in% year_top_c)
feb_mean = mean(feb_trans_top$num_transactions)
feb_beer_median = median(feb_trans_top[["f_beer"]])
feb_spirits_median = median(feb_trans_top[["f_spirits"]])
feb_wine_median = median(feb_trans_top[["f_wine"]])

mar = read.csv("/Users/Ian/Desktop/temp/Mar_lsoa_grocery.csv")
mar_trans = mar %>% select(area_id, num_transactions, f_beer, f_spirits, f_wine)
mar_trans_top = filter(mar_trans, area_id %in% year_top_c)
mar_mean = mean(mar_trans_top$num_transactions)
mar_beer_median = median(mar_trans_top[["f_beer"]])
mar_spirits_median = median(mar_trans_top[["f_spirits"]])
mar_wine_median = median(mar_trans_top[["f_wine"]])

apr = read.csv("/Users/Ian/Desktop/temp/Apr_lsoa_grocery.csv")
apr_trans = apr %>% select(area_id, num_transactions, f_beer, f_spirits, f_wine)
apr_trans_top = filter(apr_trans, area_id %in% year_top_c)
apr_mean = mean(apr_trans_top$num_transactions)
apr_beer_median = median(apr_trans_top[["f_beer"]])
apr_spirits_median = median(apr_trans_top[["f_spirits"]])
apr_wine_median = median(apr_trans_top[["f_wine"]])

may = read.csv("/Users/Ian/Desktop/temp/May_lsoa_grocery.csv")
may_trans = may %>% select(area_id, num_transactions, f_beer, f_spirits, f_wine)
may_trans_top = filter(may_trans, area_id %in% year_top_c)
may_mean = mean(may_trans_top$num_transactions)
may_beer_median = median(may_trans_top[["f_beer"]])
may_spirits_median = median(may_trans_top[["f_spirits"]])
may_wine_median = median(may_trans_top[["f_wine"]])

jun = read.csv("/Users/Ian/Desktop/temp/Jun_lsoa_grocery.csv")
jun_trans = jun %>% select(area_id, num_transactions, f_beer, f_spirits, f_wine)
jun_trans_top = filter(jun_trans, area_id %in% year_top_c)
jun_mean = mean(jun_trans_top$num_transactions)
jun_beer_median = median(jun_trans_top[["f_beer"]])
jun_spirits_median = median(jun_trans_top[["f_spirits"]])
jun_wine_median = median(jun_trans_top[["f_wine"]])

jul = read.csv("/Users/Ian/Desktop/temp/Feb_lsoa_grocery.csv")
jul_trans = jul %>% select(area_id, num_transactions, f_beer, f_spirits, f_wine)
jul_trans_top = filter(jul_trans, area_id %in% year_top_c)
jul_mean = mean(jul_trans_top$num_transactions)
jul_beer_median = median(jul_trans_top[["f_beer"]])
jul_spirits_median = median(jul_trans_top[["f_spirits"]])
jul_wine_median = median(jul_trans_top[["f_wine"]])

aug = read.csv("/Users/Ian/Desktop/temp/Aug_lsoa_grocery.csv")
aug_trans = aug %>% select(area_id, num_transactions, f_beer, f_spirits, f_wine)
aug_trans_top = filter(aug_trans, area_id %in% year_top_c)
aug_mean = mean(aug_trans_top$num_transactions)
aug_beer_median = median(aug_trans_top[["f_beer"]])
aug_spirits_median = median(aug_trans_top[["f_spirits"]])
aug_wine_median = median(aug_trans_top[["f_wine"]])

sep = read.csv("/Users/Ian/Desktop/temp/Sep_lsoa_grocery.csv")
sep_trans = sep %>% select(area_id, num_transactions, f_beer, f_spirits, f_wine)
sep_trans_top = filter(sep_trans, area_id %in% year_top_c)
sep_mean = mean(sep_trans_top$num_transactions)
sep_beer_median = median(sep_trans_top[["f_beer"]])
sep_spirits_median = median(sep_trans_top[["f_spirits"]])
sep_wine_median = median(sep_trans_top[["f_wine"]])

oct = read.csv("/Users/Ian/Desktop/temp/Oct_lsoa_grocery.csv")
oct_trans = oct %>% select(area_id, num_transactions, f_beer, f_spirits, f_wine)
oct_trans_top = filter(oct_trans, area_id %in% year_top_c)
oct_mean = mean(oct_trans_top$num_transactions)
oct_beer_median = median(oct_trans_top[["f_beer"]])
oct_spirits_median = median(oct_trans_top[["f_spirits"]])
oct_wine_median = median(oct_trans_top[["f_wine"]])

nov = read.csv("/Users/Ian/Desktop/temp/Nov_lsoa_grocery.csv")
nov_trans = nov %>% select(area_id, num_transactions, f_beer, f_spirits, f_wine)
nov_trans_top = filter(nov_trans, area_id %in% year_top_c)
nov_mean = mean(nov_trans_top$num_transactions)
nov_beer_median = median(nov_trans_top[["f_beer"]])
nov_spirits_median = median(nov_trans_top[["f_spirits"]])
nov_wine_median = median(nov_trans_top[["f_wine"]])

dec = read.csv("/Users/Ian/Desktop/temp/Dec_lsoa_grocery.csv")
dec_trans = dec %>% select(area_id, num_transactions, f_beer, f_spirits, f_wine)
dec_trans_top = filter(dec_trans, area_id %in% year_top_c)
dec_mean = mean(dec_trans_top$num_transactions)
dec_beer_median = median(dec_trans_top[["f_beer"]])
dec_spirits_median = median(dec_trans_top[["f_spirits"]])
dec_wine_median = median(dec_trans_top[["f_wine"]])


monthly_df = data.frame(month = c("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"),
                        mean_transactions = c(jan_mean,feb_mean,mar_mean,apr_mean,may_mean,jun_mean,jul_mean,aug_mean,sep_mean,oct_mean,nov_mean,dec_mean),
                        median_beer = c(jan_beer_median,feb_beer_median,mar_beer_median,apr_beer_median,may_beer_median,jun_beer_median,jul_beer_median,aug_beer_median,sep_beer_median,oct_beer_median,nov_beer_median,dec_beer_median),
                        median_spirits = c(jan_spirits_median,feb_spirits_median,mar_spirits_median,apr_spirits_median,may_spirits_median,jun_spirits_median,jul_spirits_median,aug_spirits_median,sep_spirits_median,oct_spirits_median,nov_spirits_median,dec_spirits_median),
                        median_wine = c(jan_wine_median,feb_wine_median,mar_wine_median,apr_wine_median,may_wine_median,jun_wine_median,jul_wine_median,aug_wine_median,sep_wine_median,oct_wine_median,nov_wine_median,dec_wine_median))

monthly_df$month = factor(monthly_df$month, levels = month.abb)

ggplot(monthly_df, aes(x = month)) +
  geom_line(aes(y = mean_transactions), color = "black", group = 1) +
  labs(x = "Month", y = "Transactions", title = "Mean number of transactions")

ggplot(monthly_df, aes(x = month)) +
  geom_line(aes(y = median_beer), color = "yellow", group = 1) +
  geom_line(aes(y = median_spirits), color = "black", group = 1) +
  geom_line(aes(y = median_wine), color = "red", group = 1) +
  labs(x = "Month", y = "Alcohol", title = "Probability distribution of alcohol")

month_trans = data.frame(jan = jan_trans_top$num_transactions,
                         feb = feb_trans_top$num_transactions,
                         mar = mar_trans_top$num_transactions,
                         apr = apr_trans_top$num_transactions,
                         may = may_trans_top$num_transactions,
                         jun = jun_trans_top$num_transactions,
                         jul = jul_trans_top$num_transactions,
                         aug = aug_trans_top$num_transactions,
                         sep = sep_trans_top$num_transactions,
                         oct = oct_trans_top$num_transactions,
                         nov = nov_trans_top$num_transactions,
                         dec = dec_trans_top$num_transactions)

month_wine = data.frame(jan = jan_trans_top$f_wine,
                           feb = feb_trans_top$f_wine,
                           mar = mar_trans_top$f_wine,
                           apr = apr_trans_top$f_wine,
                           may = may_trans_top$f_wine,
                           jun = jun_trans_top$f_wine,
                           jul = jul_trans_top$f_wine,
                           aug = aug_trans_top$f_wine,
                           sep = sep_trans_top$f_wine,
                           oct = oct_trans_top$f_wine,
                           nov = nov_trans_top$f_wine,
                           dec = dec_trans_top$f_wine)

month_beer = data.frame(jan = jan_trans_top$f_beer,
                        feb = feb_trans_top$f_beer,
                        mar = mar_trans_top$f_beer,
                        apr = apr_trans_top$f_beer,
                        may = may_trans_top$f_beer,
                        jun = jun_trans_top$f_beer,
                        jul = jul_trans_top$f_beer,
                        aug = aug_trans_top$f_beer,
                        sep = sep_trans_top$f_beer,
                        oct = oct_trans_top$f_beer,
                        nov = nov_trans_top$f_beer,
                        dec = dec_trans_top$f_beer)

month_spirits = data.frame(jan = jan_trans_top$f_spirits,
                        feb = feb_trans_top$f_spirits,
                        mar = mar_trans_top$f_spirits,
                        apr = apr_trans_top$f_spirits,
                        may = may_trans_top$f_spirits,
                        jun = jun_trans_top$f_spirits,
                        jul = jul_trans_top$f_spirits,
                        aug = aug_trans_top$f_spirits,
                        sep = sep_trans_top$f_spirits,
                        oct = oct_trans_top$f_spirits,
                        nov = nov_trans_top$f_spirits,
                        dec = dec_trans_top$f_spirits)


LSOA_mean = data.frame(LSOA=year_top[,1], YearlyMean = rowMeans(month_trans[,-1]))

wine_mean = data.frame(LSOA=year_top[,1], YearlyMean = rowMeans(month_wine[,-1]))
beer_mean = data.frame(LSOA=year_top[,1], YearlyMean = rowMeans(month_beer[,-1]))
spirits_mean = data.frame(LSOA=year_top[,1], YearlyMean = rowMeans(month_spirits[,-1]))


seqtest = microbenchmark(
  foreach(i = 1:12) %do% {
    t.test(month_trans[,i], LSOA_mean$YearlyMean, paired = TRUE, alternative = "greater")
  }
)

partest = microbenchmark(
  foreach(i = 1:12) %dopar% {
    t.test(month_trans[,i], LSOA_mean$YearlyMean, paired = TRUE, alternative = "greater")
  }
)

seqtest
partest

foreach(i = 1:12) %dopar% {
  t.test(month_trans[,i], LSOA_mean$YearlyMean, paired = TRUE, alternative = "greater")
}

foreach(i = 1:12) %do% {
  t.test(month_wine[,i], wine_mean$YearlyMean, paired = TRUE, alternative = "greater")
}

foreach(i = 1:12) %do% {
  t.test(month_beer[,i], beer_mean$YearlyMean, paired = TRUE, alternative = "greater")
}

foreach(i = 1:12) %do% {
  t.test(month_spirits[,i], spirits_mean$YearlyMean, paired = TRUE, alternative = "greater")
}

