aws cloudformation create-stack \
--stack-name $1 \
--region ap-south-1 \
--template-body file://$2 \
--parameters file://$3 \
--capabilities CAPABILITY_NAMED_IAM