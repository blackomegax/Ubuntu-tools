#!/bin/bash

# Update the package manager index
sudo apt-get update

# Install the Postfix mail transfer agent (MTA)
sudo apt-get install postfix -y

# Set the hostname for the Postfix MTA
sudo postconf -e "myhostname = <hostname>"

# Restart the Postfix MTA to apply the changes
sudo service postfix restart

# Check the status of the Postfix MTA
sudo service postfix status

#echo "Test email from AWS" | sendmail <email-address>
