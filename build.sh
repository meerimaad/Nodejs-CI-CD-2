#!/bin/bash
clear
echo "Start:" > t.tmp
date >> t.tmp
echo ""
echo "**********************************"
echo "Build is starting"
echo "**********************************"
echo ""
make build
echo ""
echo "Check configurations.tfvars file"
echo ""
cat 0.account_setup/configurations.tfvars
sleep 10
make build
echo ""
echo "**********************************"
echo ""
echo ""
echo "**********************************"
echo "**********************************"
echo ""
echo ""
echo ""
echo "**********************************"
echo "Build has successfully completed :)"
echo "**********************************"
echo ""
echo "Finish:" >> t.tmp
date >> t.tmp
cat t.tmp
rm -rf t.tmp


