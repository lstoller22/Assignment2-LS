// Import Penguins CSV data 
import delimited "C:\Users\lstoller\Downloads\penguins.csv", numericcols (3 4 5 6)

//Clean data, drop rows with missing data
drop if bill_length_mm =="NA"
drop if sex=="NA"  

//Start logging
log using "penguin_output.log", replace text 

//Descriptive Statistics 
summarize bill_length_mm bill_depth_mm flipper_length_mm body_mass_g


//Descriptive Statistics of bill by species
by species, sort : summarize bill_length_mm bill_depth_mm

//close log
log close 
