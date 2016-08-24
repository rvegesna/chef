name "web_squid"
description "web"
run_list "recipe[apache]","recipe[mysql]","recipe[motd]"
