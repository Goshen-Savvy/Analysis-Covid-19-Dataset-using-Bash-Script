#Analysing the Dataset

#1. How many records does the dataset contain?

	tail -n +2 public-covid-19-cases-canada.csv | wc -l

#	output: 81473 records
	
#2. How many columns are in the table?

	head -n 1 public-covid-19-cases-canada.csv | sed 's/[^,]//g' | wc -c

#	output: 12 columns

#3. Cut out the target columns for further analysis

	cat public-covid-19-cases-canada.csv | tr “ ” | cut -d , -f 3,4,6,8,9,10,11 > Selected_Fields.csv

#4. Sort the male and the female age bracket that were affected the most by Covid-19 

	cut -d ',' -f 1,2 Selected_.csv | tail -n +2 | sort -d -t, | uniq -c | sort -nr | head -n 20
	
#	 A lot of details were unreported in this datasets, so it was impossible to find the exact number for both male and female that were affected by covid-19.

#	output: 
#  		79770 Not Reported,Not Reported
#    		170 50-59,Female
#    		133 60-69,Male
#    		129 50-59,Male
#    		117 40-49,Male
#    		115 60-69,Female
#    		115 30-39,Female
#    		110 20-29,Female
#    		104 30-39,Male
#    		101 40-49,Female
#     		84 20-29,Male
#     		82 70-79,Female
#     		65 70-79,Male
#     		40 80-89,Female
#     		39 90-99,Female
#     		36 80-89,Male
#     		32 20-29,Not Reported
#     		28 60-69,Not Reported
#     		28 60-69,Not Reported
#     		27 50-59,Not Reported
#     		23 40-49,Not Reported

#5. The Month that has the most covid-19 patients

	cut -d ',' -f 4,5 Selected_.csv | tail -n +2 | sort -d -t, | uniq -c | sort -nr

#	I was unable to compute this output to display month by month quota of those affected by the coronavirus. However, just by glacing through the output it is
#	evident that the month of April and May had the highest number of occurences in Canada.

#	output:
#		2560 2020-05-03,2020-05-03
#   	1970 2020-04-22,2020-04-19
#   	1956 2020-05-01,2020-04-26
#   	1883 2020-04-17,2020-04-12
#   	1863 2020-04-23,2020-04-19
#   	1843 2020-04-20,2020-04-19
#   	1732 2020-04-16,2020-04-12
#   	1693 2020-04-29,2020-04-26
#   	1634 2020-04-19,2020-04-19
#   	1632 2020-04-27,2020-04-26
#   	1624 2020-04-24,2020-04-19
#   	1599 2020-04-01,2020-03-29
#   	1588 2020-04-02,2020-03-29
#   	1587 2020-04-26,2020-04-26
#   	1578 2020-05-02,2020-04-26
#   	1574 2020-04-30,2020-04-26
#   	1550 2020-04-09,2020-04-05
#   	1531 2020-04-21,2020-04-19
#   	1530 2020-04-18,2020-04-12
#   	1510 2020-05-07,2020-05-03
#   	1506 2020-04-05,2020-04-05
#   	1487 2020-05-06,2020-05-03
#   	1483 2020-05-04,2020-05-03
#   	1468 2020-05-08,2020-05-03
#   	1466 2020-04-28,2020-04-26
#   	1460 2020-04-14,2020-04-12
#   	1429 2020-04-04,2020-03-29
#   	1419 2020-04-25,2020-04-19
#   	1397 2020-04-07,2020-04-05
#   	1368 2020-04-13,2020-04-12
#   	1346 2020-04-15,2020-04-12
#   	1312 2020-04-10,2020-04-05
#   	1291 2020-04-08,2020-04-05
#   	1268 2020-05-05,2020-05-03
#   	1250 2020-04-06,2020-04-05
#   	1247 2020-04-11,2020-04-05
#   	1242 2020-05-09,2020-05-03
#   	1233 2020-05-16,2020-05-10
#   	1228 2020-05-14,2020-05-10
#   	1202 2020-04-03,2020-03-29
#   	1187 2020-05-11,2020-05-10
#   	1180 2020-05-15,2020-05-10
#   	1167 2020-05-10,2020-05-10
#   	1158 2020-05-12,2020-05-10
#   	1149 2020-05-13,2020-05-10
#   	1143 2020-03-31,2020-03-29
#   	1128 2020-03-30,2020-03-29
#   	1127 2020-05-17,2020-05-17
#   	1116 2020-05-19,2020-05-17
#   	1098 2020-04-12,2020-04-12
#		--------------------------
#		--------------------------
#		--------------------------
#		9 2020-03-10,2020-03-08
#      	9 2020-03-03,2020-03-01
#      	8 2020-03-06,2020-03-01
#      	7 2020-03-08,2020-03-08
#      	6 2020-03-07,2020-03-01
#      	4 2020-03-01,2020-03-01
#      	4 2020-02-29,2020-02-23
#      	2 2020-02-28,2020-02-23
#      	2 2020-02-27,2020-02-23
#      	2 2020-02-06,2020-02-02
#      	1 2020-03-04,2020-03-01
#      	1 2020-02-26,2020-02-23
#      	1 2020-02-24,2020-02-23
#      	1 2020-02-23,2020-02-23
#      	1 2020-02-20,2020-02-16
#      	1 2020-02-14,2020-02-09
#      	1 2020-02-04,2020-02-02
#      	1 2020-01-31,2020-01-26
#      	1 2020-01-28,2020-01-26
#      	1 2020-01-27,2020-01-26
#      	1 2020-01-25,2020-01-19

#6. The number of people that came in contact with the disease through traveling and vice versa

#	There were two avenues specified in the dataset on how people contacted covid-19:
#	i.)  t = has travel history
#	ii.) f = close contact or community

#	There are 80,141 people who contacted covid-19 but it was unclear from the dataset how they got it! A little bit of inconsistency on how the data was documented

	cut -d ',' -f 6,7 Selected_.csv | tail -n +2 | sort -d -t, | uniq -c

#	    output:

#		80141 ,
#     		13 ,Close contact
#      		2 ,Community
#    		154 f,Close Contact
#    		333 f,Close contact
#      		7 f,Close-contact
#    		210 f,Community
#     		17 f,close contact
#    		595 t,
#      		1 t,Close contact

	cut -d ',' -f 6 Selected_.csv | tail -n +2 | sort -d -t, | uniq -c

#	    output:

#			80156
#    		721 f
#    		596 t

#7. Provinces with the most covid-19 cases
	cut -d ',' -f 3 Selected_.csv | tail -n +2 | sort -d -t, | uniq -c

#	    The list of provinces represented in the dataset.

#	    output:

#		6735 Alberta
#   	2467 BC
#    	290 Manitoba
#    	260 NL
#      	5 NWT
#    	120 New Brunswick
#   	1045 Nova Scotia
#  		25105 Ontario
#     	27 PEI
#  		44775 Quebec
#     	13 Repatriated
#    	620 Saskatchewan
#     	11 Yukon

	grep -i -w -c '$1'$ Selected_.csv    '$1'$ replace with any of the Provinces, e.g. Alberta

#	    output:

#		6735

#8. Provinces represented in the dataset

	tail -n +2 Selected_.csv | cut -d , -f3 | sort -bu

#	output:
#		Alberta
#		BC
#		Manitoba
#		NL
#		NWT
#		New Brunswick
#		Nova Scotia
#		Ontario
#		PEI
#		Quebec
#		Repatriated
#		Saskatchewan
#		Yukon

	tail -n +2 Selected_.csv | cut -d , -f3 | sort -bu | wc -l

#	output:
#		13



