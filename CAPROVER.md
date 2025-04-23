# ERPNext Deployment with CapRover

This repository is configured for easy deployment with CapRover.

## Deployment Instructions

1. Make sure you have CapRover installed on your server. If not, follow the instructions at [CapRover.com](https://caprover.com/docs/get-started.html)

2. Install the CapRover CLI:
   ```
   npm install -g caprover
   ```

3. Log in to your CapRover instance:
   ```
   caprover login
   ```

4. Deploy the application:
   ```
   caprover deploy
   ```

5. Follow the prompts to complete the deployment

## Configuration

After deployment, you'll need to set up the following in the CapRover dashboard:

### Persistent Directories

Create persistent directories for:
- `/home/frappe/frappe-bench/sites`
- `/home/frappe/frappe-bench/sites/assets`
- `/home/frappe/frappe-bench/logs`

### Environment Variables

Set the following environment variables in the CapRover dashboard:
- `FRAPPE_SITE_NAME_HEADER`: Your site name (default: `$host`)
- `PROXY_READ_TIMEOUT`: Timeout in seconds (default: 120)
- `CLIENT_MAX_BODY_SIZE`: Maximum upload size (default: 50m)

### Database Configuration

ERPNext requires a database. You can:
1. Use CapRover's one-click MariaDB/MySQL deployment
2. Set up an external database

Connect your ERPNext instance to the database by setting appropriate environment variables.

## First-time Setup

After deployment, you'll need to create your first site:

1. Access the app's terminal through the CapRover dashboard
2. Run the following commands:
   ```
   cd /home/frappe/frappe-bench
   bench new-site mysite.example.com --admin-password mypassword --mariadb-root-password mariadb_root_password
   bench --site mysite.example.com install-app erpnext
   ```

## Additional Resources

- [ERPNext Documentation](https://docs.erpnext.com/)
- [CapRover Documentation](https://caprover.com/docs/)
- [Frappe Framework Documentation](https://frappeframework.com/docs) 
