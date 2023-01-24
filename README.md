# redistp

## Build

docker build . -t redistp

## Run

Start Redis or KeyDB:

docker run --name=KeyDB --volume=/tmp/KeyDB/:/tmp/:rw --expose=6379 --restart=unless-stopped --detach=true keydb:latest

Start REDISTP

docker run -v /tmp/KeyDB/keydb.sock:/tmp/KeyDB/keydb.sock -e REDISTP_PASVMIN=60200 -e REDISTP_PASVMAX=60210 -e REDISTP_USERNAME=user -e REDISTP_PASSWORD=pass -e REDISTP_JWTSECRET=superdupersecret -p 21:21 -p 60200-60210:60200-60210 redistp
