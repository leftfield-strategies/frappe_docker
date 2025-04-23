#!/bin/bash

# Check if a site exists
if [ ! -d /home/frappe/frappe-bench/sites/site1.local ] && [ "$(ls -A /home/frappe/frappe-bench/sites/ | grep -v assets | grep -v apps.txt | grep -v .gitkeep | grep -v common_site_config.json)" == "" ]; then
    echo "Creating default site..."
    cd /home/frappe/frappe-bench
    bench new-site site1.local --admin-password admin --db-root-password admin --db-host mariadb --db-type mariadb || true
    bench --site site1.local install-app erpnext || true
    bench --site site1.local enable-scheduler || true
    bench --site site1.local set-config developer_mode 1 || true
    bench build || true
fi

exit 0
