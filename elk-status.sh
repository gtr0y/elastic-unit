# Use curl -k to skip cert checking
clear
ELK='https://elasticsearch-production'

echo "Main"
curl -u elastic:AidOikojeedPagBi -XGET "http://elasticsearch-production"
curl -u elastic:AidOikojeedPagBi -XGET "$ELK"
printf "\n---\n"
echo "Stats"
curl -u elastic:AidOikojeedPagBi -XGET "$ELK:9200/_stats"
printf "\n---\n"
echo "Nodes"
curl -u elastic:AidOikojeedPagBi -XGET "$ELK:9200/_cat/nodes?v"
printf "\n---\n"
echo "Cluster Health"
curl -u elastic:AidOikojeedPagBi -XGET "$ELK:9200/_cluster/health?pretty"
printf "\n---\n"
curl -u elastic:AidOikojeedPagBi -XGET "$ELK:9200/_cat/master?v"
