***EC306 Fall 2025
***Assignment 1 Dofile


cap log close
log using "ec306assign1log", replace


clear all
set more off

cd "/Users/jsmith/Library/CloudStorage/OneDrive-WilfridLaurierUniversity/Teaching/EC306/assignments"


use assign1.dta, clear

*Q1

gen white = race == 100
gen dropout = educ == 71
gen hsdip = educ == 73
gen ba = educ == 111
gen married = marst <=2


tabstat lfp unemployed age white dropout hsdip ba married, statistics(mean sd min max) columns(statistics)


*Q2

bysort post: sum lfp unemployed if sage_kid == 1

*Q3

bysort post: sum lfp unemployed if sage_kid == 0

*Q4

save temp.dta, replace

collapse (mean) lfp unemployed, by(period sage_kid)
twoway (line lfp period if sage_kid == 1) (line lfp period if sage_kid == 0), xline(26) title("Labour Force Participation over Time")

* Q5

use temp.dta, clear

keep if ba == 1
collapse (mean) lfp unemployed, by(period sage_kid)
twoway (line lfp period if sage_kid == 1) (line lfp period if sage_kid == 0), xline(26) title("Labour Force Participation over Time - Bachelors")

use temp.dta, clear

keep if dropout == 1
collapse (mean) lfp unemployed, by(period sage_kid)
twoway (line lfp period if sage_kid == 1) (line lfp period if sage_kid == 0), xline(26) title("Labour Force Participation over Time - Dropouts")

*Q6

use temp.dta, clear
regress lfp i.post##i.sage_kid

*Q7

regress lfp i.post##i.sage_kid age i.educ i.race i.married
