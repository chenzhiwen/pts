/**MySQL创建远程访问用户**/
GRANT ALL PRIVILEGES ON *.* TO pts@"%" IDENTIFIED BY 'pts' WITH GRANT OPTION;
FLUSH PRIVILEGES;

CREATE DATABASE pts_dev;