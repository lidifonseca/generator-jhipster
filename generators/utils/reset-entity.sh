CInt="$1"
int=`echo $CInt | sed -r 's/([A-Z])/-\L\1/g' | sed 's/^_//'`
int="${int:1}"

[ -e ".jhipster/$CInt.json" ] && rm  -R  ".jhipster/$CInt.json" && echo "Apagando .jhipster/$CInt.json"

 echo a | jhipster import-jdl jhipster-jdl.jh --skip-server --skip-install --blueprints nodejs # && npm run lint:fix && npm run prettier:format
 
 
 #:path -- --write "{,src/main/webapp/app/entities/**/*}*.{md,json,ts,tsx,yml}"

