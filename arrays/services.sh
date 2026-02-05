# check multiple services
#!/bin/bash
services=("nginx" "docker" "ssh")
for s in "${services[@]}"
do 
systemctl is-active --quiet $s
done

