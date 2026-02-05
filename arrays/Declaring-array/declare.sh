declare -A http_codes
http_codes=([200]="OK" [404]="Not Found" [500]="server Error")
# declare -A → defines an associative array
# Keys: 200, 404, 500
# Values: OK, Not Found, Server Error
# Keys don’t need to be in order (unlike normal arrays)
echo ${http_codes[404]}

ports[nginx]
environment[prod]

echo ${!http_codes[@]} #output = 200,400,500
# The ! symbol returns the list of all keys inside the associative array.

echo ${http_codes[@]} # output = OK, Not Found, Server Error
# This prints the complete dataset stored inside the array.
