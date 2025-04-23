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

You may need to configure environment variables in the CapRover dashboard for your ERPNext instance. See the `example.env` file for reference.

## Persistence

Make sure to create persistent directories for your ERPNext data in the CapRover dashboard.

## Additional Resources

- [ERPNext Documentation](https://docs.erpnext.com/)
- [CapRover Documentation](https://caprover.com/docs/) 
