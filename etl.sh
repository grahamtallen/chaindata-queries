# See https://ethereum.org/en/developers/docs/blocks/

set -e
source .env
echo 'working'
echo 'Starting at block #' $START
echo 'Ending at block #' $END
ethereumetl export_blocks_and_transactions --start-block $START --end-block $END \
--blocks-output $BLOCKS_CSV --transactions-output $TRANSACTIONS_CSV \
--provider-uri $PROVIDER_URI
