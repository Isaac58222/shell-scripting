#!/bin/bash
#############################################################################################################################
#
# Auther : Isaac D
# Assistance with : free tech tamil(youtube)
# Date : 15/04/2023
# Purpose : sample payment with s3 pre-signed url
#
# VERSION : v1
# Bug fixed : timer restart after refresh the page
# feature : page cant be accessable after few seconds after countdown reaches to zero
# prerequried : aws cli
# timer stored in : s3
# timer source : https://github.com/Isaac58222/chat-gpt-projects/tree/main/timer-for-pre-signedurl-on-shellscripting-repo
##############################################################################################################################
#
## copy the url after exicuting and paste and search in browser
## please do wait
## after countdown reaches zero refresh the page
## you access will be denied
##############################################################################################################################



BUCKET_NAME="isaac582bucket"
OBJECT_KEY="counter-5.html"
EXPIRATION_TIME=125
PRE_SIGNED_URL=$(aws s3 presign s3://$BUCKET_NAME/$OBJECT_KEY --expires-in $EXPIRATION_TIME)
echo "Pre-signed URL: $PRE_SIGNED_URL"

