#source app/.env
echo "Invoking ..."
curl -s -XPOST "https://api.defender.openzeppelin.com/autotasks/0b7420d4-11e2-46a2-bda8-f3efc1363588/runs/webhook/44604621-478e-4206-9a4a-a0fd0c85f964/DJSLGqLpiZsW9DMYyvBL8Y" -d "@./tmp/request.json" -H "Content-Type: application/json" | jq -r 'if .status == "success" then (.result | fromjson | .txHash) else {result,message,status} end'


