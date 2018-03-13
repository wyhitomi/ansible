# Ansible Docker Container
```shell
ansible --version
ansible 2.4.3.0
  config file = None
  configured module search path = [u'/root/.ansible/plugins/modules', u'/usr/share/ansible/plugins/modules']
  ansible python module location = /usr/local/lib/python2.7/site-packages/ansible
  executable location = /usr/local/bin/ansible
  python version = 2.7.14 (default, Feb 15 2018, 21:14:04) [GCC 6.3.0 20170516]

```
## HowTO

### Build
```shell
docker build ansible .
```

### Run
```shell
docker run ansible ansible .
```
