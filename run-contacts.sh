#! /bin/bash
while getopts a: flag
do
  case "\${flag}" in
    a) account_id=\${OPTARG};;
  esac
done

echo 'Put security contact for account '\$account_id'...'
aws account put-alternate-contact \
  --account-id \$account_id \
  --alternate-contact-type=SECURITY \
  --email-address=security-contact@example.com \
  --phone-number="+1(111)222-3333" \
  --title="Security Contact" \
  --name="Security Name"
aws account put-alternate-contact \
  --account-id \$account_id \
  --alternate-contact-type=OPERATIONS \
  --email-address=operations-contact@example.com \
  --phone-number="+1(111)222-3333" \
  --title="Operations Contact" \
  --name="Operations Name"
aws account put-alternate-contact \
  --account-id \$account_id \
  --alternate-contact-type=BILLING \
  --email-address=billing-contact@example.com \
  --phone-number="+1(111)222-3333" \
  --title="Billing Contact" \
  --name="Billing Name"
echo 'Done putting security contact for account '\$account_id'.'
