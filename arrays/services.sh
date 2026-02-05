# check multiple services
#!/bin/bash
services=("nginx" "docker" "ssh")
for s in "${services[@]}"
do 
if f systemctl is-active --quiet "$s"; then
echo "$s is running"
else 
echo "$s is not running"
fi
done

