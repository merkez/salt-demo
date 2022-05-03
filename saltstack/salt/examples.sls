install vim:
    pkg.installed:
        - name: vim 

remove vim:
    pkg.removed: 
        - name: vim 

create my_new_directory: 
    file.directory:
        - name: /opt/my_new_directory
        - user: root
        - group: root
        - mode: 0755

Make sure the mysql service is running:
    pkg.installed: 
        - name: mysql-server
    service.running:
        - name: mysql
        - enable: True

Clone the saltstack/salt repository:
    pkg.installed:
        - name: git
    git.latest:
        - name: https://github.com/saltstack/salt.git
        - rev: develop
        - target: /tmp/salt

user account for pete:
    user.present:
        - name: pete
        - shell: /bin/bash
        - home: /home/pete
        - groups:
            - sudo

myserver in hosts file:
    host.present:
        - name: myserver
        - ip: 192.168.0.42           


restart vsftpd:
    module.run:
        - name: service.restart
        - m_name: vsftpd
  
