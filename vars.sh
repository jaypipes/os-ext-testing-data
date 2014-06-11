export UPSTREAM_GERRIT_HOST_PUBLIC_KEY="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDtdLzDzG6qmejiZq5BxDqxkN71W08xuQWVZ+6784SpsXTUujKT49lNCXmH+IHijsRaigU9cVFkWErVez0Q+NtUe077c5s50zCrL7EwH5/aiwaYklHF566TO7ctOJBLLsoVOUlJGpUAjM4veG9XMz0KhTP9qYK3zqNOcPV++551bQu1rc3kR8R8C/etmP60zMhVkUAdgyPWFZbmKlrBv1SxIpvjSo5STZzSRS7DK5/D9BaWS3zOcl5Pqtv0FVjm83dmQJxMPEjFo8e0T4Gq/noxYafQse4811/Ucmxj8J5rlJchakfxJz827w3MWYR4Ku+X3QAy/deBuvzUn3z35Zwr"
export GIT_EMAIL='testing@myvendor.com'
export GIT_NAME='MyVendor Jenkins'
export UPSTREAM_GERRIT_USER=jaypipes-testing
export UPSTREAM_GERRIT_SSH_KEY_PATH=gerrit_key
export JENKINS_SSH_KEY_PATH=jenkins_key
export PUBLISH_HOST=127.0.0.1
export MYSQL_ROOT_PASSWORD=<mysql_root_pw>
export MYSQL_PASSWORD=<mysqlpw>
export LOCAL_USERNAME=<openstack_username>
export LOCAL_PASSWORD=<openstack_password>
export LOCAL_01_IP=<openstack_ip>
export JENKINS_API_USER=jenkins
export JENKINS_API_KEY=<hex_id>
export JENKINS_CREDENTIALS_ID=<hex_id>
export JENKINS_SSH_PUBLIC_KEY_NO_WHITESPACE=
export HTTP_PROXY=http://myproxy.com:8080/
export HTTPS_PROXY=http://myproxy.com:8080/
no_proxy=localhost,127.0.0.1,localaddress,.localdomain.com,<my_ip>
#My Storage Backend
export no_proxy=$no_proxy,10.10.20.244
export no_proxy=$no_proxy,10.10.120.244
export no_proxy=$no_proxy,10.10.220.244
#Floating ips
printf -v floating_no_proxy '%s,' 10.50.132.{17..30};
export no_proxy=$no_proxy,${floating_no_proxy%,}
export NO_PROXY=$no_proxy

