install_network_packages:
    pkg.installed:
        - pkgs:
            - rsync
            - lftp
            - curl 
            - wget
            - net-tools
            