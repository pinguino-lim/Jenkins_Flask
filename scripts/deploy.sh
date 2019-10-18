set -x
python ./server.py &
sleep 1
echo $! > .pidfile
set +x