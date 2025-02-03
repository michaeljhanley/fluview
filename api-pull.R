library(epidatr)

data <- pub_fluview(regions = c("hhs1", "hhs2", "hhs3", "hhs4", "hhs5", "hhs6", "hhs7", "hhs8", "hhs9", "hhs10"), epiweeks = epirange(201440, 201922))

print(data)