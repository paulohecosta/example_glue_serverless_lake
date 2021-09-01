# copy job functions
# need MANY improvements
echo 'zipping files'
(cd ../scripts/example && zip -r ../example.zip .)
echo 'copyng files'
aws s3 cp ../scripts s3://371716203543-glue-lake-artifacts-dev/ --recursive --profile personal
