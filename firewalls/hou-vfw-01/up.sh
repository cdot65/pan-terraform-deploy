#! /bin/bash
while true; do
    if [[ $(curl -s -o /dev/null -w '%{http_code}' -k https://13.85.187.209/php/login.php?) == "200" ]]; then
        echo "200 OK received"
        break
    else
        echo "Waiting for 200 OK response"
        sleep 5
    fi
done
