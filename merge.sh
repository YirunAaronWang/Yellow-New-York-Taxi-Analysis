#!/bin/bash

awk 'FNR==1 && NR!=1{next;}{print}' *.csv > 2009.csv

# https://stackoverflow.com/questions/20275072/read-first-x-lines-of-csv-file-into-new-outfile
