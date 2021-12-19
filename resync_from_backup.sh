set -euo pipefail

# Grab the name of the latest DB backup
# Assumes that you have manuallly configured your AWS Credentials

# Copy the latest DB into the correct location
S3_DB_DAILY=s3://avalanche-db-daily/

LATEST_DB_BACKUP_NAME=$(aws s3 ls $S3_DB_DAILY | tail -n 1 | awk '{print $4}')
echo "Grabbed latest DB Backup name: $LATEST_DB_BACKUP_NAME"
LATEST_DB_BACKUP_URI="${S3_DB_DAILY}${LATEST_DB_BACKUP_NAME}"

DB_BACKUP_TAR_NAME=~/mainnet-db-daily-tar.gz

echo "Copying S3 Backup from URI: $LATEST_DB_BACKUP_URI"
aws s3 cp $LATEST_DB_BACKUP_URI $DB_BACKUP_TAR_NAME

echo "Attempting to tar the package"
tar -xf $DB_BACKUP_TAR_NAME
