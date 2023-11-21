#!/bin/bash

cd project
mkdir -p cppcheck_report
REPORT_DIRECTORY="`pwd`/cppcheck_report"

cppcheck --output-file=cppcheck_report/report.txt .

chown -R $LOCAL_USER:$LOCAL_GROUP $REPORT_DIRECTORY