library(covid19.analytics)

ag <- covid19.data(case = 'aggregated')

#time series view of confimred cases
tsc <-covid19.data(case = 'ts-confirmed')

tsa <-covid19.data(case = 'ts-ALL')

#summary
report.summary(Nentries = 10, graphical.output = F)

#growth rate
growth.rate(tsc,geo.loc = 'US')

#total plot
totals.plt(tsa)

#compare with india
totals.plt(tsa,c('India'))


#world map view
live.map(tsc)



#sir data  >>>>>

generate.SIR.model(tsc,'US',tot.population = 32820000)


generate.SIR.model(tsc,'India',tot.population = 1500000000)

