# check input arguments
if [ "$#" -ne 2 ]; then
    echo "Please specify pem-key location and public_dns file" && exit 1
fi

# copy config file over to server
while read line;
do
    echo "Writing configs files to $line"
    scp -i $1 conf/.??* ubuntu@$line:~
done < $2
