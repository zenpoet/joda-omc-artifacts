#!/bin/bash

source ./setpath.sh

echo CHRONO
./chrono_traceGen.sh

echo CONVERT
./convert_traceGen.sh

echo FIELD
./field_traceGen.sh

echo FORMAT
./format_traceGen.sh

echo TIME
./time_traceGen.sh

echo TZ
./tz_traceGen.sh
