# To upload a full directory use recursive:
aws --profile AnnotationContributor s3 cp out s3://annotation-contributor/crisprScoreData --recursive --acl public-read