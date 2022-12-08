#!/bin/bash

# Set the number of minutes to delay the email
delay_minutes=10

# Save the email message to a file
echo "To: <email-address>" > email.txt
echo "Subject: Delayed email from AWS" >> email.txt
echo "" >> email.txt
echo "This is a test email that has been delayed by $delay_minutes minutes." >> email.txt

# Use the 'at' command to schedule the email for delivery after the specified delay
echo "sendmail <email-address>" | at now + $delay_minutes minutes

# Check the 'at' queue to verify that the email has been scheduled
atq
