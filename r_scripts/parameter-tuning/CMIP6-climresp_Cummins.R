library(EBM)

for (item in list.files('../../aux/input-data/CMIP6/abrupt-4xCO2_for_MLE/'))
{
    mydata <- read.table(paste('../../aux/input-data/CMIP6/abrupt-4xCO2_for_MLE/',item,sep=''), header=TRUE, sep=",")
    names(mydata)[1] <- "temp"
    names(mydata)[2] <- "flux"

    # set three-box model starting values
    inits3 <- list(
    gamma = 2.0,
    C = c(5.0, 20.0, 100.0),
    kappa = c(1.0, 2.0, 1.0),
    epsilon = 1.0,
    sigma_eta = 0.5,
    sigma_xi = 0.5,
    F_4xCO2 = 5.0
    )
    # fit three-box model to HadGEM2-ES
    output <- with(mydata, {
    FitKalman(inits = inits3, T1 = temp, N = flux, maxeval = 5e+05)
    })
    write.csv(exp(output$mle),file=paste('../../aux/parameter-sets/CMIP6-climresp_Cummins/',item,sep=''))
}
