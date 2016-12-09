
for x in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20
do
    curl http://localhost:9191/call-custom.xqy >> results-custom
done


for x in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20
do
    curl http://localhost:9191/new-endpoint-8011.xqy >> results-after
done

for x in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20
do
    curl http://localhost:9191/new-endpoint-8000.xqy >> results-8000
done
