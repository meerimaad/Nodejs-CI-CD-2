#!/bin/bash
clear
echo "Start:" > t.tmp
date >> t.tmp
echo ""
echo "**********************************"
echo "Destroying in progres..."
echo "**********************************"
echo ""
echo ""
echo ""
make destroy
echo "**********************************"
echo ""
echo ""
echo "**********************************"
echo "**********************************"
echo ""
echo ""
echo ""
echo "**********************************"
echo "Destroy has successfully completed!"
echo "**********************************"
echo ""
echo "Finish:" >> t.tmp
date >> t.tmp
cat t.tmp
rm -rf t.tmp


