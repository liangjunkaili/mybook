#!/bin/sh
nohup java -jar -Xmx512M -Xms512M -Xmn224M -XX:MaxMetaspaceSize=128M -XX:MetaspaceSize=128M -XX:+UseG1GC\
-XX:ErrorFile=/jvm/hs_err_pid%p.log   -Xloggc:/jvm/gc.log -XX:+PrintGCDetails -XX:+PrintGCDateStamps\
-XX:+PrintCommandLineFlags thirdparty-medicine-0.0.1-SNAPSHOT.jar &