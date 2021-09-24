### How to install Distributed Minio
-------------------------------
install minio on nodes using below commands:
```
    wget https://dl.min.io/server/minio/release/darwin-amd64/minio
    chmod +x minio
    mv minio /usr/local/bin
```
-------------------------------
use below commands to prepare your os to use minio storage:
```
    groupadd --system minio
    useradd -s /sbin/nologin --system -g minio minio
    mkdir /minio
    chown -R minio:minio /minio
    ufw allow 9000:9010/tcp
```
-------------------------------    
copy start_minio.sh to /root location of your servers.
then copy minio.service file to /etc/systemd/system directory and then systemctl daemon-reload && systemctl enbale minio systemctl start minio
