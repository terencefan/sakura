ls
vi deployment.yaml 
ls
vi config-prod/alaya_config.php 
cd ../
ls
cd bank
ls
kubectl create configmap bank --from-file=./config-dev/ -o yaml --dry-run
kubectl create configmap bank --from-file=./config-dev/ -o yaml --dry-run | kubectl replace -f -
vi deployment.yaml 
kubectl get pods
vi deployment.yaml 
kubectl get pods
vi deployment.yaml 
kubectl get pods
vi deployment.yaml 
kubectl get pods
watch -n 1 "kubectl get pods"
vi deployment.yaml 
kubectl get pods
vi deployment.yaml 
kubectl get pods
vi deployment.yaml 
kubectl cluster-info
kubectl get pods
ls
vi config-prod/alaya_config.php 
kubectl create configmap bank --from-file=./config-prod/ -o yaml --dry-run | kubectl replace -f -
vi deployment.yaml 
kubectl patch deployment bank -p   "{\"spec\":{\"template\":{\"metadata\":{\"labels\":{\"date\":\"`date +'%s'`\"}}}}}"
kubectl get pods
vi deployment.yaml 
kubectl get pods
vi deployment.yaml 
kubectl get pods
vi deployment.yaml 
kubectl get pods
watch -n 1 "kubectl get pods"
kubectl get pods
vi deployment.yaml 
kubectl get pods
kubectl cluster-info
kubectl get node
kubectl top node
vi deployment.yaml 
kubectl get pods
vi deployment.yaml 
kubectl get pods
vi deployment.yaml 
kubectl get pods
watch -n 1 "kubectl get pods"
vi deployment.yaml 
kubectl get pods
ls
cdh
ls
cd ../../
ls
cd toxy/
ls
cd src/
ls
cd toxy/
ls
vi toxy.go 
ls
cd ../
ls
cd ../
ls
./image.sh 
ls
kubectl get pods
vi toxy.go 
kubectl patch deployment bank -p   "{\"spec\":{\"template\":{\"metadata\":{\"labels\":{\"date\":\"`date +'%s'`\"}}}}}"
kubectl get pods
kubectl events -x
kubectl events -w
kubectl event -w
kubectl get events -w
kubectl get pods
ls
vi ../baixing/k8s-pods/bank
cd ../baixing/k8s-pods/bank
ls
vi deployment.yaml 
kubectl get pods
vi deployment.yaml 
kubectl get pods
kubectl get events
kubectl get events -w
kubectl get events
kubectl get pods
kubectl get pods | grep Pending
kubectl get events
kubectl get events -w
kubectl get pods | grep Pending
ls
vi deployment.yaml 
kubectl get pods
ls
cd ../../
ls
cd ../toxy/
ls
vi toxy.
vi toxy.go 
./image.sh 
kubectl patch deployment bank -p   "{\"spec\":{\"template\":{\"metadata\":{\"labels\":{\"date\":\"`date +'%s'`\"}}}}}"
kubectl get pods
kubectl logs bank-f767967b6-lmckp -f toxy
ls
kubectl logs bank-f767967b6-lmckp -f toxy
kubectl get pods
kubectl logs bank-f767967b6-lmckp -f toxy
kubectl get pods
kubectl get events -w
kubectl get pods
kubectl get events -w
kubectl get pods
kubectl logs bank-f767967b6-lmckp -f toxy
kubectl logs bank-f767967b6-lmckp toxy
kubectl logs bank-f767967b6-lmckp -f toxy
kubectl logs bank-f767967b6-lmckp toxy
kubectl get pods
kubectl logs bank-f767967b6-cbn2w toxy
kubectl logs bank-f767967b6-cbn2w toxy -f
kubectl get pods
ls
cd ~/workspace/
ls
cd toxy/
ls
cd ../
ls
cd baixing/
ls
cd k8s-pods/
ls
vi bank/deployment.yaml 
kubectl get pods
ls
cd ../
ls
cd ../
ls
cd baixing/
ls
cd bank/
cd ../../toxy/
ls
vi toxy.ini 
ls
vi src/xmetric/statsd_buffered.go 
vi src/xmetric/config.go 
vi src/xmetric/statsd.go 
vi src/xmetric/statsd_buffered.go 
s
ls
vi toxy.go 
./image.sh 
kubectl patch deployment bank -p   "{\"spec\":{\"template\":{\"metadata\":{\"labels\":{\"date\":\"`date +'%s'`\"}}}}}"
kubectl get pods
kubeclt get events
kubectl get event
kubectl get event -w
kubectl get pods
ls
vi toxy.go 
ls
vi src/xmetric/statsd_buffered.go 
ls
cd src/xmetric/
ls
vi main.go 
cd ../
ls
vi toxy/toxy.go 
cd ..
ls
./image.sh 
kubectl patch deployment bank -p   "{\"spec\":{\"template\":{\"metadata\":{\"labels\":{\"date\":\"`date +'%s'`\"}}}}}"
kubectl get pods
kubectl get event -w
kubectl get pods
vi toxy/toxy.go 
ls
vi src/toxy/toxy.go 
ls
cd ../tenchmark/
ls
mv LICENSE.MD LICENSE
git st
git add LICENSE
git commit -a
git push
cd ../Al
cd ../baixing/Alaya/
ls
cd src/
ls
cd Server/
ls
vi TSwooleSocketServer.php 
ls
cd ~/workspace/
ls
cd thriftgo/
ls
cd thrift/
ls
vi thrift.go 
ls
cd ../
ls
vi thrift/thrift.go 
ls
vi protocol/binary.go 
ls
cdh
ls
cd ../Thrift/
ls
cd src/
ls
cd Protocol/
ls
vi TProtocol
vi TProtocol.php 
vi TBinaryProtocol
vi TBinaryProtocol.php 
ls
cd ../../
ls
cd src/
ls
vi Type/TType.php 
ls
vi Protocol/TBinaryProtocol.php 
ls
vi ../../haojing/htdocs/composer.json 
ls
vi Transport/TMemoryBuffer.php 
ls
cd ../../
ls
cd ../
ls
cd swoole_thrift/
ls
vi server.php 
ls
vi parser.php 
ls
vi vendor/baixing/thrift/src/Transport/TMemoryBuffer.php 
ls
vi parser.php 
ls
vi vendor/baixing/thrift/src/Protocol/TBinaryProtocol.php 
vi vendor/baixing/thrift/src/Transport/TMemoryBuffer.php 
ls
vi parser.php 
vi vendor/baixing/thrift/src/Protocol/TBinaryProtocol.php 
ls
vi parser.php 
ls
vi ../baixing/Thrift/src/Protocol/TBinaryProtocol
vi ../baixing/Thrift/src/Protocol/TBinaryProtocol.php 
ls
vi parser.php 
ls
vi ../baixing/Thrift/src/Protocol/TBinaryProtocol.php 
ls
vi parser.php 
ls
cdh
ls
cd htdocs/
ls
pc
ls
vi services/Ad/service.thrift 
ls
cd ~/workspace/
ls
cd swoole_thrift/
ls
vi x.php 
ls
vi parser.php 
ls
vi x.php 
vi parser.php 
ls
vi parser.php 
ls
vi ../baixing/Thrift/src/Transport/TMemoryBuffer.php 
cdh
ls
cd htdocs/
ls
vi composer.json 
ls
cd ../../Thrift/
ls
cd src/
ls
cd Protocol/
ls
vi TProtocol.php 
ls
vi TBinaryProtocol.php 
ls
vi TProtocol.php 
ls
cd ~/workspace/swoole_thrift/
ls
vi x.php 
lsk
vi a.php 
vi x.php 
ls
vi a.php 
ls
vi x.php 
t st
git st
ls
vi a.php 
rm a.php 
ls
git st
ls
git st
git add src/
ls
git add composer.*
git st
git commit -a
git push
ls
vi x.php 
ls
vi server.php 
ls
vi x.php 
ls
mkdir test
ls
mv x.php test/
ls
mv server.php x.php
vi x.php 
s
cd ~/workspace/
ls
cd swoole-src/
ls
vi swoole_server.c 
ls
vi swoole_process.
vi swoole_process.c 
vi swoole_server.
vi swoole_server.c 
ls
cd ../
ls
cd swoole_thrift/
ls
cd src/
ls
vi TTokenProtocol.php 
ls
cd ../../
ls
cd baixing/Alaya/
ls
cd src/
ls
vi Server/TSwooleServer.php 
ls
cd ../../
ls
cd ../
ls
cd swoole_thrift/
ls
php x.php 
ls
vi x.php 
php x.php 
ls
cp ../baixing/Alaya/src/Server/TSwooleSocketTransport.php ./
ls
mv TSwooleSocketTransport.php src/
ls
cd src/
ls
mv TSwooleSocketTransport.php 
vi TSwooleSocketTransport.php 
ls
cd ../
ls
vi x.php 
ls
cd src/
ls
vi Server.php 
ls
vi TTokenProtocol.php 
ls
vi TTokenReader.php 
s
ls
vi Server.php 
ls
cd ../../
ls
cd thriftgo/
ls
cd protocol/
ls
vi protocol.go 
ls
vi utils.go 
ls
cd ../
ls
cd ../toxy/
ls
cd src/
ls
cd toxy/
ls
vi util.go 
ls
cd ~/workspace/
ls
cd php-7.0.21/
ls
vi Zend/zend_API.c 
logger /dev/log asd asd
cd ~/
ls
vi fluent-bit.conf 
fluent-bit -c fluent-bit.conf 
vi fluent-bit.conf 
fluent-bit -c fluent-bit.conf 
vi fluent-bit.conf 
fluent-bit -c fluent-bit.conf 
vi fluent-bit.conf 
sudo fluent-bit -c fluent-bit.conf 
vi fluent-bit.conf 
ls
fluent-bit -R parsers.conf -i syslog -p path=/tmp/in_syslog -o stdout
fluent-bit -R parsers.conf -i syslog -p path=./sd -o stdout
fluent-bit --help
fluent-bit -R parsers.conf -i syslog -p path=./sd -o stdout
ls
vi parsers.conf 
ls
cd ../
ls
cd stdrickforce/workspace/
ls
cd swoole-src/
ls
vi swoole.c 
ls
vi swoole_http_server.c 
ls
vi src/protocol/Redis.c 
ls
locate swoole.h
vi ~/.vim/.ycm_extra_conf.py 
vi src/protocol/Redis.c 
kdev
kubectl cluster-info
kubectl get service
kubectl get pods
kubectl get nodes
kubectl get nodes --help
kubectl get nodes -o yaml
kubectl get nodes
kubectl get nodes -o yaml | grep ip
kubectl get nodes 
kubectl cluster-info
kubectl get nodes 
kubectl get nodes -o yaml | grep ip
ssh root@192.168.100.133
cdh
ls
cd ../bank/
ls
cd ../../k8
cd ../../
ls
cd baixing/k8s-pods/
ls
cd bank
ls
vi deployment.yaml 
kubectl get pods
cd ../../
kubectl get pods
kubectl top node
kubectl top pods
kubectl top pod
kubectl get pods
kubectl get pods | grep 
kubectl get pods | grep node
kubectl get pods -o yaml
kubectl get pods -o yaml | grep node
kubectl get pods
ls
cd ../
ls
cd toxy/
ls
cd ../
ls
cd tenchmark/
ls
git st
ls
make linux
ssh bj2-web40
ls
cd ../
ls
git clone git@github.com:stdrickforce/swoole_thrift.git
ls
cd swoole
cd swoole_thrift/
ls
touch server.php
ls
vi server.php 
touch processor.php
ls
vi processor.php 
s
ls
vi mb.php
ls
vi server.php 
ls
vi processor.php 
ls
composer init
l
ls
composer require apache/thrift
vi composer.json 
composer require apache/thrift
vi composer.json 
composer require baixing/thrift
git st
ls
vi composer.json 
ls
vi mb.php 
ls
vi .gitignore 
ls
vi mb.php 
ls
rm mb.php 
ls
vi composer.json 
ls
vi processor.php 
ls
mv processor.php parser.php
ls
vi parser.php 
s
ls
vi x.php
ls
vi x.php 
clear
vi x.php 
vi a.php
ls
vi parser.php 
ls
vi x.php 
ls
vi x.php 
vi parser.php 
vi x.php 
git st
ls
vi parser.php 
ls
vi parser.php 
ls
mkdir src
ls
cd src/
ls
mv ../parser.php ./
ls
mv parser.php TBinaryParser.php
ls
cd ../
ls
vi composer.json 
ls
vi server.php 
ls
cd src/
s
ls
touch TTokenProtocol.php
ls
vi TTokenProtocol.php 
s
ls
vi TBinaryParser.php 
ls
vi TTokenProtocol.php 
ls
cp TTokenProtocol.php TTokenWriter.php
ls
vi TTokenWriter.php 
s
l
ls
vi TTokenProtocol.php 
s
ls
cp TTokenWriter.php TTokenReader.php
ls
vi TTokenReader.php 
ls
vi TTokenReader.php 
vi TTokenWriter.php 
ls
vi TTokenProtocol.php 
ls
vi TTokenProtocol.php 
ls
cd ../
ls
composer install
vi composer.json 
ls
vi vendor/autoload.php 
vi vendor/composer/autoload_psr4.php 
ls
cd src/
ls
vi TTokenProtocol.php 
ls
vi TTokenWriter.php 
ls
vi TTokenReader.php 
ls
vi TTokenProtocol.php 
ls
vi TTokenProtocol.php 
vi TTokenReader.php 
ls
vi TBinaryParser.php 
cd ../
ls
vi composer.json 
ls
cd src/
ls
vi TBinaryParser.php 
ls
vi TToken
vi TTokenProtocol.php 
ls
vi TToken
vi TTokenReader.php 
ls
vi TTokenWriter.php 
ls
vi TBinaryParser.php 
cd ../
ls
composer install
ls
cd src/
ls
vi TBinaryParser.php 
ls
vi TTokenWriter.php 
ls
vi TTokenReader.php 
ls
vi TBinaryParser.php 
ls
vi TTokenProtocol.php 
ls
vi TBinaryParser.php 
ls
touch Server.php
ls
vi Server.php 
ls
vi Server.php 
st
git st
ls
vi Server.php 
ls
vi ../../baixing/Thrift/src/Protocol/TBinaryProtocol.php 
ls
vi Server.php 
ls
vi TTokenReader.php 
vi Server.php 
ls
vi TTokenReader.php 
ls
grep -r var_dump ./*
vi Server.php 
it st
git diff
git st
ls
cd ../
git st
git add src/
git st
git add .gitignore
git commit -a
ls
vi README.md
git st
git add README.md
git commit -a
git push
ls
vi x.php 
ls
cd ../
ls
drun -ti alpine
tail -f /dev/log
man logger
ls
fluent-bit -R /path/to/parsers.conf -i syslog -p path=/tmp/in_syslog -o stdout
fluent-bit -R ~/parsers.conf-i syslog -p path=/tmp/in_syslog -o stdout
fluent-bit -R ~/parsers.conf -i syslog -p path=/tmp/in_syslog -o stdout
ls
cd swoole-src/
ls
cd src/
ls
cd protocol/
ls
vi Http.lo 
vi Http.c 
ls
vi Base.c 
ls
vi Http.c 
ls
vi Mqtt.c 
ls
vi Redis.c 
ls
vi Sha1.c 
ls
vi Socks5.c 
ls
vi MimeTypes.lo 
ls
s
ls
vi Http.c 
ls
vi Base64.lo 
cd ../
ls
cd ../
ls
vi ltmain.sh 
ls
vi swoole_http_server.c 
ls
vi include/swoole.h 
grep -r epoll_wait ./*
vi src/reactor/ReactorEpoll.
vi src/reactor/ReactorEpoll.c 
cd src/reactor/
ls
cd ../
grep -r ReactorSelect ./*
grep -r ReactorKqueue ./*
grep -r ReactorEpoll ./*
grep -r epoll ./*
cd ../
grep -r epoll ./*
vi config.h
ls
vi configure
vi config.h
grep -r HAVE_KQUEUE ./*
vi src/core/socket.
vi src/core/socket.c 
vi src/reactor/ReactorBase.
vi src/reactor/ReactorBase.c 
ls
cd src/reactor/
ls
grep -r factory_mode ./*
cd ../
grep -r factory_mode ./*
vi network/ReactorThread.
vi network/ReactorThread.c 
grep -r onReceive_buffer_check_length ./*
cd ../
grep -r onReceive_buffer_check_length ./*
grep -r check_length ./*
vi src/network/Port.c 
top
vi ~/.vim/.ycm_extra_conf.py 
s
vi src/network/Port.c 
g++ -h
g++ --help
g++ -fdiagnostics-show-option
man g++
ls
vi src/network/Port.c 
git st
ls
cdh
ls
cd htdocs/
ls
vi config/gaia.php 
vi config/config
vi config/config.
vi config/env.php 
ls
cd ~/workspace/
ls
cd swoole_thrift/
ls
vi x.php 
ls
vi src/Server.php 
vi x.php 
vi ~/.vimrc 
ls
vi ~/.vimrc 
vi /Applications/Xcode-7.2/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdio.h 
vi ~/.vim/.ycm_extra_conf.py 
locate 
locate stdio.h
ls
cd ../swoole-src/
ls
./configure --enable-openssl --with-openssl-dir=/usr/local/opt/openssl/
make -j
make install
ls
vi swoole.c 
ls
cd src/
ls
locate Port.c
cd network/
ls
vi Port.c 
vi ~/.vim/.ycm_extra_conf.py 
cat /etc/hosts
tenchmark kdev-master:32327 -n 1 -c 1 --service=RevenueOrder
tenchmark run kdev-master:32327 -n 1 -c 1 --service=RevenueOrder
tenchmark run kdev-master:32327 -n 10 -c 1 --service=RevenueOrder
s
cdh
ls
cd ../Alaya/
ls
cd src/
ls
cd Server/
ls
vi TSwooleSocketServer.php 
ls
cdh
ls
cd ../Thrift/
ls
cd src/
ls
vi TMultiplexedProcessor.php 
brew locate openssl
brew 
brea info openssl
brew info openssl
ls
kprod
kubectl get service
kubectl cluster-info
cdh
ls
cd ../k8s-pods/
ls
cd bank
ls
vi config-prod/toxy.ini 
ls
vi deployment.yaml 
kubectl patch deployment bank -p   "{\"spec\":{\"template\":{\"metadata\":{\"labels\":{\"date\":\"`date +'%s'`\"}}}}}"
kubectl get pods
ls
kubectl get pods
kubectl logs -f bank-f8fff6969-5zsnz
kubectl logs -f bank-f8fff6969-5zsnz toxy
ls
vi deployment.yaml 
tenchmark 10.81.11.9:31888 --service=RevenueOrder
tenchmark run 10.81.11.9:31888 --service=RevenueOrder
tenchmark run 10.81.11.9:31888 --service=RevenueOrder -c 100 -n 10000
ls
cd workspace/swoole_thrift/
ls
cd ../swoole-src/
ls
grep -r open_redis_protocol ./*
vi swoole_server_port.c 
ls
vi ~/.vim/.ycm_extra_conf.py 
grep -r swListenPort ./*
ls
locate stdlib.h
ls
updatedb
sudo updatedb
sudo /usr/libexec/locate.updatedb
/usr/libexec/locate.updatedb 
sudo /usr/libexec/locate.updatedb 
sudo /usr/libexec/locate.updatedb  --help
sudo /usr/libexec/locate.updatedb
cd ~
sudo /usr/libexec/locate.updatedb
brew update locate
brew upgrade locate
locate stdlib.h
cd /Library/Developer/
ls
find . -name stdlib.h
cd /CommandLineTools/usr/include/c++/v1/
ls
cd ./CommandLineTools/usr/include/c++/v1/
ls
pc
ls
cdh
ls
cd ../../
ls
cd swoole-src/
ls
grep -r SW_BACKLOG ./*
vi swoole_config.h 
ls
vi src/network/Port.c 
s
ls
vi ~/.vim/.ycm_extra_conf.py 
vi ~/.vimrc 
vi ~/.vim/.ycm_extra_conf.py 
ls
cd ~
ls
vi x.c
gcc x.c 
vi x.c 
gcc x.c 
which gcc
gcc -v
gcc --std=c99 x.c 
vi x.c 
gcc --std=c99 x.c 
vi x.c 
gcc --std=c99 x.c -Wall
gcc --std=c99 x.c -Wextra
gcc --std=c99 x.c -Werror
gcc --std=c99 x.c -w
gcc --std=c99 x.c -Wall -w
gcc --std=c99 x.c -Wall
clang
clang x.c 
clang x.c -w
clang x.c -Wall
locate tsrm_config.h
vi ~/.vim/.ycm_extra_conf.py 
php-config --include-dir
php-config --includes
cd /usr/local/Cellar/php70/7.0.22_14/include/
ls
cd php/
ls
grep -r zend_malloc ./*
grep -r zval_add_ref ./*
php-config --includesk
grep -r zval_add_ref ./*
grep -r zend_malloc ./*
ls
cd ~/workspace/
ls
cd PHP-X/
ls
cd src/
ls
grep -r zend_malloc ./*
cd ../
grep -r zend_malloc ./*
vi src/extension.cc 
php-config --libs
php-config --ldflags
php-config --include-dir
cd `php-config --include-dir`
ls
grep -r zend_malloc ./*
vi Zend/zend_alloc.h 
grep -r array_init ./*
grep -r __array_init ./*
ls
cd Zend/
ls
php-config 
php-config --includes
php-config 
uname -x
uname -o
echo $PLAT
cd ~/workspace/
ls
cd thriftphp/
ls
cp /Users/stdrickforce/workspace/PHP-X/examples/cpp_ext
cp /Users/stdrickforce/workspace/PHP-X/examples/cpp_ext/extension.cpp .
ls
vi extension.cpp 
cp /Users/stdrickforce/workspace/PHP-X/examples/cpp_ext/Makefile ./
ls
vi Makefile 
make
ls
vi Makefile 
ls
vi extension.cpp 
make install
ls
vi extension.cpp 
make && make install
ls
vi extension.cpp 
make 
brew info homebrew/php/php70
ls
vi extension.cpp 
make install
php-version 7.0
make && make install
ls
vi Makefile 
ls
make install
vi Makefile 
make && make install
ls
make
ls
vi extension.cpp 
make
make install
cd ../baixing/thriftphp/
ls
make
ls
cd CMakeLists.txt 
cd cmake/
cmake ..
make -j
ls
cd ../
ls
rm cmake/
rm -r cmake/
mkdir cmake
cd cmake/
cd cmak
ls
cmake ..
make -j
mske install
make install
ls
cd ../../../thriftphp/
ls
s
ls
vi x.php 
ls
vi extension.cpp 
make && make install
ls
mkdir src
ls
cd src/
ls
cd ../
ls
mv extension.cpp src/thriftphp.cpp
ls
cd src/
ls
vi thriftphp.cpp 
make
ls
cd ../
ls
vi Makefile 
make
make install
make
ls
vi Makefile 
make
vi Makefile 
make
ls
vi Makefile 
make
vi Makefile 
make
make install
ls
vi Makefile 
make install
ls
make
ls
make clean
make
ls
vi Makefile 
ls
make clean
ls
rm cpp_ext.so.dSYM/
ls
rm -r cpp_ext.so.dSYM/
ls
make
ls
vi src/thriftphp.cpp 
ls
vi Makefile 
ls
rm cpp_ext.so
ls
make 
ls
make install
ls
rm -r cpp_ext.so.dSYM/
ls
make 
ls
make install
ls
vi x.php 
ls
vi Makefile 
ls
vi CMakeLists.txt
cmake
cmake .
ls
git st
ls
make
ls
vi CMakeLists.txt 
ls
vi Makefile 
ls
vi Makefile 
ls
vi CMakeLists.txt 
vi Makefile 
vi CMakeLists.txt 
cmake .
make
cmake .
make
ls
vi CMakeLists.txt 
cmake .
make 
ls
rm CMakeCache.txt 
cmake
cmake .
make
vi Makefile 
make
ls
vi CMakeLists.txt 
cmake .
make
rm CMakeCache.txt 
cmake .
make
ls
cd thrift
ls
cd ../
ls
mkdir cmake
ls
rm -rf CMakeCache.txt 
rm -rf CMakeFiles/
ls
cd cmake
ls
cmake ..
ls
make
ls
vi ../CMakeLists.txt 
rm *
rm -rf *
cmake ..
make
vi ../CMakeLists.txt 
cmake ..
ls
make
cmake
vi ../CMakeLists.txt 
vi Makefile 
vi CMakeFiles/Makefile2 
vi CMakeFiles/Makefile.cmake 
vi Makefile 
ls
vi ../CMakeLists.txt 
cmake ../
vi ../CMakeLists.txt 
cmake ..
make
ls
vi ../CMakeLists.txt 
cmake ..
make
ls
rm libthriftphp.so 
ls
vi CMakeLi
vi ../CMakeLists.txt 
ls
rm -rf *
cmake ..
make
ls
vi ../CMakeLists.txt 
cmake ..
vi ../CMakeLists.txt 
cmake ..
make 
vi ../CMakeLists.txt 
cmake ..
vi ../CMakeLists.txt 
cmake ..
vi ../CMakeLists.txt 
cmake ..
make 
ls
cd ../
ls
vi .gitignore
git st
rm thriftphp.so*
git st
ls
rm Makefile 
git st
rm -r thriftphp.so.dSYM/
ls
git st
vi x.php 
touch x.php
ls
vi x.php 
ls
git st
rm cmake_install.cmake 
git st
git add *
git st
git add .gitignore
git commit -a
ls
vi README.md 
git st
git add README.md
git commit -a
git push
ls
cd src/
ls
mkdir parser
ls
cd parser/
ls
cd ../../../
ls
cd cython/
ls
cd ../
ls
cd cython/
ls
cd ../
ls
cd PHP-X/
ls
cd ../
ls
cd baixing/
ls
rm -r THub/
rm -rf THub/
ls
cd Redis/
ls
cd ../
ls
cd Redis/
ls
cd ../
ls
rm Redis/
rm  -r Redis/
rm  -rf Redis/
ls
cd Thrift/
ls
cd src/
ls
cd Factory/
ls
vi TBufferedTransportFactory.php 
ls
vi TProtocolFactory.php 
ls
vi TBinaryProtocolFactory.php 
ls
cd ~/workspace/
ls
cd thriftphp/
ls
cd cmake/
cmake ..
ls
vi ../src/thriftphp.cpp 
ls
cd thrift/
ls
cd ../
ls
cd ../
ls
vi x.php 
ls
cd cmake/
make install
cd ../
ls
vi x.php 
ls
make
ls
cd cmake/
make
make install
ls
vi ../src/thriftphp.cpp 
ls
cd ../
l
svi x.php 
vi x.php 
php-config --ldflags
ls
cd ../
ls
cd PHP-X/
ls
vi CMakeLists.txt 
ls
cd ../
ls
cd thriftphp/
ls
vi x.php 
ls
cd ../
ls
cd thriftphp/
ls
vi CMakeLists.txt 
ls
cd thrift/
ls
s
ls
cd ../
ls
rm -f thrift/
ls
rm -rf thrift/
ls
cd src/
ls
cd parser/
ls
touch program.h
vi program.h 
ls
vi program.h 
ls
touch contant.h
ls
vi contant.h 
ls
rm -rf *
ls
cd ~/
ls
vi fluent-bit.conf 
ls
fluent-bit -R /path/to/parsers.conf -i syslog -p path=/tmp/in_syslog -o stdout
fluent-bit -R parsers.conf -i syslog -p path=/tmp/in_syslog -o stdout
docker pull fluent/fluent-bit
drun -ti fluent-bit sh
drun -ti fluent/fluent-bit sh
ls
tail -f /var/log/system
drun -ti fluent/fluent-bit sh
cd /var/log/
ls
touch syslog
sudo touch syslog
tail -f syslog 
tail -f /dev/bpf23
ls
cd workspace/
ls
cd thriftphp
ls
git clone git@github.com:stdrickforce/thriftphp.git
git clone git@github.com:stdrickforce/PHP-X.git
ls
cd PHP-X/
ls
cmake .
make -j
make install
cd examples/
ls
cd cpp_ext/
ls
make
ls
vi extension.cpp 
make
ls
vi Makefile 
make
php-version 7.1
make
php-version 7.0
make
cd ../../
ls
make
ls
vi Makefile 
ls
vi CMakeLists.txt 
cmake
cmake ..
cmake .
cmake --help-policy CMP0042
cmake .
ls
vi CMakeLists.txt 
cmake .
vi CMakeLists.txt 
cmake .
vi CMakeLists.txt 
cmake .
vi CMakeLists.txt 
cmake .
make install
sudo make install
php-config
php-config | grep phpx
ls
cd examples/
ls
cd cpp_ext/
ls
make
vi Makefile 
make
vi Makefile 
g++ extension.cpp 
vi Makefile 
make
g++ -DHAVE_CONFIG_H -g -o cpp_ext.so -O0 -fPIC -shared extension.cpp -std=c++11 -lphpx `php-config --includes` -I`php-config --include-dir`
g++ -g -o cpp_ext.so -O0 -fPIC -shared extension.cpp -std=c++11 -lphpx `php-config --includes` -I`php-config --include-dir`
g++ extension.cpp -std=c++11 -lphpx `php-config --includes` -I`php-config --include-dir`
g++ extension.cpp -std=c++11 -lphpx -I`php-config --include-dir`
g++ extension.cpp -std=c++11 -lphpx
g++ extension.cpp -std=c++11 -lphpx `php-config --includes`
g++ extension.cpp -std=c++11 -lphpx `php-config --includes` `php-config --ldflags`
g++ extension.cpp -std=c++11 -lphpx `php-config --includes` `php-config --ldflags` -L`php-config --include-dir`
ls
vi Makefile 
make 
g++ --version
ls
vi Makefile 
make
rm cpp_ext.so
make
vi Makefile 
make
vi Makefile 
git st
git commit -a
git push
vi Makefile 
git st
ls
make test
vi Makefile 
make test.so
vi Makefile 
ls
vi Makefile 
git st
ls
make clean
gi st
git st
git commit -a
git log
git push 
c++
c++ --version
ls
vi Makefile 
git commit -a --amend
git push -f
git commit -a --amend
git push -f
ls
make install
vi Makefile 
ls
cd ../
ls
cd ../
ls
vi CMakeLists.txt 
ls
vi Makefile 
vi CMakeLists.txt 
ls
cd examples/
ls
cd cpp_ext/
ls
pc
cd ../../
ls
cd ../thriftphp/
ls
touch x.php
vi x.php 
php-config
vi /usr/local/etc/php/7.0/php.ini
php-config | grep ini
vi /usr/local/etc/php/7.0/php.ini
vi /usr/local/etc/php/7.0/conf.d/ext-thriftphp.ini 
vi x.php 
php -l
php --help
php -e
php --ini
vi /usr/local/etc/php/7.0/conf.d/ext-thriftphp.ini 
php
vi /usr/local/etc/php/7.0/conf.d/ext-thriftphp.ini 
cd `php-config --extension-dir`
ls
cd ~/workspace/thriftphp/
ls
php-config --help
php -i
php -i | grep cpp_e
php -i | grep thriftphp
php -i | grep ini
vi /usr/local/etc/php/7.0/conf.d/ext-thriftphp.ini 
ls
vi x.php 
s
ls
vi extension.cpp 
ls
vi x.php 
vi extension.cpp 
ls
php-config
php-config | grep embed
ls
brew uninstall php70
brew uninstall --ignore-dependencies php70
brew uninstall --ignore-dependencies php70 --force
brew install php70 --enable-embed
brew install php70 --with-embed
brew search embed 
cd ~/workspace/
ls
cd php-7.0.21/
ls
./configure 
./configure --help
./configure | grep embed
./configure --help | grep embed
./configure --enable-embed
ls
php-version 7.0
ls
php-config --extension-dir
cd `php-config --extension-dir`
ls
cd `php-config --extension-dir`
cd /usr/local/Cellar/php70/7.0.26_18/lib/php/extensions/no-debug-non-zts-20151012
mkdir -p /usr/local/Cellar/php70/7.0.26_18/lib/php/extensions/no-debug-non-zts-20151012
cd /usr/local/Cellar/php70/7.0.26_18/lib/php/extensions/no-debug-non-zts-20151012
ls
cd ../
ls
cd ~/workspace/
ls
cd PHP-CPP/
ls
make -j
make
make install
ls
cd ../thriftphp/
ls
vi x.php 
ls
cd ../baixing/
ls
cd thriftphp/
ls
vi CMakeLists.txt 
ls
vi CMakeLists.txt 
ls
vi ../../PHP-X/examples/cpp_ext/Makefile 
ls
cd ../../
ls
cd PHP-X/
ls
vi CMakeLists.txt 
ls
vi ../baixing/thriftphp/CMakeLists.txt 
ls
cd ~/workspace/baixing/
ls
cd thriftphp/
ls
vi CMakeLists.txt 
ls
vi thriftphp.cpp 
ls
cd thrift
ls
vi globals.h 
ls
cd parse/
ls
cd ../
ls
cd parse/
ls
vi t_list.h 
ls
cd ../
ls
vi thrifty.yy 
ls
vi globals.h 
ls
cd ../../Thrift/
ls
cd src/
ls
vi Protocol/TProtocol.php 
ls
php-version 7.0
php-config --extension 
php-config --extension-dir
cd `php-config --extension-dir`
ls
vi /usr/local/etc/php/7.0/conf.d/ext-thriftphp.ini 
ls
ll
rm thriftphp.so 
ls
cd ~/workspace/thriftphp/
ls
cd thrift/
ls
cd ../
ls
cd src/
ls
vi thriftphp.cpp 
ls
cd ../cmake/
ls
cmake ..
ls
cd ../
ls
vi src/thriftphp.cpp 
ls
cd cmake/
cmake ../
make 
make
cmake ..
make
ls
vi ../CMakeLists.txt 
ls
rm -rf *
cmake ..
make
ls
vi ../CMakeLists.txt 
cmake ..
vi ../CMakeLists.txt 
cmake ..
vi ../CMakeLists.txt 
cmake ..
vi ../CMakeLists.txt 
cmake ..
ls
make 
make install
ls
vi ../src/thriftphp.cpp 
git st
ls
git diff
cd ../
ls
git st
git add CMakeLists.txt
git add src/
git commit -a
git push
ls
vi x.php 
ls
cd ../
ls
cd baixing/thriftphp/
ls
cd thrift
ls
vi parse/t_program.h 
ls
vi parse/t_typedef.h 
ls
cd parse/
ls
vi t_const.h 
ls
vi t_type.h 
cd ~/workspace/
ls
date +'%d'
date
date +
date '%d'
date +'%d'
date +'%d*2'
ls
fluent-bit 
ls
vi client.php 
rm client.php 
ls
rm server.*
logger ad
logger asdasdasd
logger asdasdasdasdasdasd
logger asdasdasdasdasdasd -f /var/log/syslog
logger -f /var/log/syslog asdasdasd
tar --help
ls
bash
ls
brew install zshell
brew install zsh
zsh
ls
docker run -
docker --help
ls
brew install zsh-completions
cdh
ls
cd htdocs/
ls
vi x.php 
ls
vi thrift.php 
vi ~/.vimrc 
ssh haojing
ls
git st
git diff
ls
vi x.php 
ls
cd ../../bank/
ls
vi app.php 
ls
vi vendor/baixing/alaya/src/App/Application.php 
vi vendor/baixing/alaya/src/Server/TSwooleServer.php 
vi vendor/baixing/alaya/src/Server/TSwooleSocketServer.php 
ls
ll bootstrap/app.php 
ls bootstrap/app.php 
cd bootstrap/
ls
pc
ls
vi app.php 
ls
cdh
ls
cd htdocs/
ls
php x.php 
ls
vi ../../bank/common/Exception/RevenueCodeException.php 
cd ../../
ls
cd bnka
cd bank/
ls
composer install
php-version 7.1
composer install
cd ../
ls
cd haojing/htdocs/
php x.php 
php-version 7.0
php x.php 
ls
php-version 7.0
php x.php 
php-version 7.0
vi x.php 
ls
cd vendor/baixing/Th
cd vendor/baixing/
ls
cd thrift/
ls
cd src/
ls
vi TClient.php 
grep -r "missing result" ./*
ls
vi Exception/TTransportException.php 
vi Exception/TProtocolException.php 
grep -r "MISSING_RESULT" ./*
vi Exception/TApplicationException.php 
ls
cd ~/workspace/
ls
cd thriftpy/
ls
grep -r "MISSING_RESULT" ./*
vi thriftpy/thrift.py 
s
cdh
ls
cd htdocs/
ls
php x.php 
ls
vi ../../bank/services/RevenueOrder/src/Api.php 
php x.php 
ls
vi ../../bank/services/RevenueOrder/service.thrift 
php x.php 
ls
cd ~/
ls
vi x.c
vi ~/.vim/.ycm_extra_conf.py 
vi x.c
ls
cd workspace/
ls
cd swoole-src/
ls
vi swoole.c 
ls
cd src/
ls
git st
git diff
git st
cd ../
ls
rm -rf tests/
git st
git reset --hard
git st
rm 123 
ls
make clean
git st
rm configure.lineno 
git st
rm php_test_results_20171202_1640.txt 
git st
make
make -j
make
ls
make clean
vi configure
vi ~/.vim/.ycm_extra_conf.py 
locate fcntl.h
locate stdlib
locate stdlib.h
locate fcntl.h
xcode-select --install
ls
cd ../
ld
ls
cd toxy/
ls
git st
git diff
git st
vi src/toxy/toxy.go 
ls
./image.sh 
g++ -h
g++ --help
cd ../
ls
cd thriftphp/
ls
cd ../baixing/
ls
cd thrift
cd ../thriftphp/
ls
vi thriftphp.cpp 
asdasd
ls
asdasd
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
