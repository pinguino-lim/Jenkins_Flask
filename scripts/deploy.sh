set -x
python ./hello.py &
sleep 1
echo $! > .pidfile
set +x