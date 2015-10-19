pollutantmean <- function(directory, pollutant, id = 1:332) {
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files

        ## 'pollutant' is a character vector of length 1 indicating
        ## the name of the pollutant for which we will calculate the
        ## mean; either "sulfate" or "nitrate".

        ## 'id' is an integer vector indicating the monitor ID numbers
        ## to be used

        ## Return the mean of the pollutant across all monitors list
        ## in the 'id' vector (ignoring NA values)
        ## NOTE: Do not round the result!
	

	for(i in id) { 
		 
		pad_id <- str_pad(i, 3, pad = "0")
		my_file <- paste0(directory,"/",pad_id,".csv")
		x <- read.csv(my_file)
		data <- c(data, x)
		##print(my_file)
	}
##	print (data)
	if ( pollutant == "sulfate"){
		##print("OK - sulfate")
		mean(data$sulfate,na.rm=TRUE)
	} else {
		##print("OK - nitrate")
		mean(data$nitrate,na.rm=TRUE)
	}
	
}