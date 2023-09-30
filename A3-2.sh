find ./sandbox -name "*.tmp" -exec rm -f {} \;
find ./sandbox -name "*.html" -exec grep -i "oncology" {} \;  > oncology-pages
find ./sandbox -name "*.html" -exec grep -i "radiology" {} \;  > radiology-pages
diff oncology-pages radiology-pages > output-difference
