clear
set more off

use "ec306assign1.dta", clear


*Q1

gen lforce = lfsstat <=3
gen dropout = educ <=1
gen hsdip = educ == 3
gen someps = educ == 4 | educ == 5
gen ba = educ == 6
gen age3039 = age_12 <=5
gen age4049 = age_12 == 6 | age_12 == 7
gen age5059 = age_12 == 8 | age_12 == 9
gen age60p = age_12 >=10


tabstat lforce - age60p, columns(statistics) statistics(mean sd min max)

*Q2

save temp.dta, replace

keep if age3039 == 1
collapse (mean) lforce, by(educ)

graph bar lforce, over(educ, label(angle(25) labsize(small))) title(Labour Force Participation by Education)

use temp.dta, clear

*Q3

graph box atothrs, over(educ, label(angle(25) labsize(small))) nooutsides title(Total Hours by Education)

*Q4

regress lforce dropout someps ba age4049 age5059 age60p

*Q5

*No code required
