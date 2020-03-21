num=1
while [ 1 ]
do
curl -X POST "http://13.233.179.169:31144//user-service/api/v1/users?emailId=dipesh%40dipeshrane.com&password=12345&userType=PRIME" -H "accept: application/json"
$((num++))	
echo $num
curl -X GET "http://13.233.179.169:31144/user-service/api/v1/users/$num" -H "accept: application/json"

done
