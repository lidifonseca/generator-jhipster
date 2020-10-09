ints=`ls .jhipster`;


#[ -e "src/main/resources/config/liquibase/changelog" ]                    && [ -e "src/generator-jhipster-nodejs/utils/origin-files/changelog.origin/changelog.origin" ]                      && rm  -R  "src/main/resources/config/liquibase/changelog"                && cp -R "node_modules/generator-jhipster/utils/origin-files/changelog.origin"                       "src/main/resources/config/liquibase/changelog" && echo "Criando Novo src/main/resources/config/liquibase/changelog"
#[ -e "src/main/resources/config/liquibase/master.xml" ]                   && [ -e "src/generator-jhipster-nodejs/utils/origin-files/changelog.origin/master.xml.origin" ]                     && rm "src/main/resources/config/liquibase/master.xml"                    && cp    "src/generator-jhipster-nodejs/utils/origin-files/master.xml.origin"                      "src/main/resources/config/liquibase/master.xml" && echo "Criando Novo src/main/resources/config/liquibase/master.xml"
#[ -e "src/main/java/com/mycompany/myapp/config/CacheConfiguration.java" ] && [ -e "src/generator-jhipster-nodejs/utils/origin-files/changelog.origin/CacheConfiguration.java.origin" ]        && rm "src/main/java/com/mycompany/myapp/config/CacheConfiguration.java"  && cp    "src/generator-jhipster-nodejs/utils/origin-files/CacheConfiguration.java.origin"         "src/main/java/com/mycompany/myapp/config/CacheConfiguration.java" && echo "Criando Novo src/main/java/com/mycompany/myapp/config/CacheConfiguration.java"
[ -e "src/main/webapp/app/entities/index.tsx" ]                           && [ -e "src/generator-jhipster-nodejs/utils/origin-files/index.tsx.origin" ]                      && rm "src/main/webapp/app/entities/index.tsx"                            && cp    "src/generator-jhipster-nodejs/utils/origin-files/index.tsx.origin"                       "src/main/webapp/app/entities/index.tsx" && echo "Criando Novo src/main/webapp/app/entities/index.tsx"
[ -e "src/main/webapp/app/shared/reducers/index.ts" ]                     && [ -e "src/generator-jhipster-nodejs/utils/origin-files/index.ts.origin" ]                       && rm "src/main/webapp/app/shared/reducers/index.ts"                      && cp    "src/generator-jhipster-nodejs/utils/origin-files/index.ts.origin"                        "src/main/webapp/app/shared/reducers/index.ts" && echo "Criando Novo src/main/webapp/app/shared/reducers/index.ts"
[ -e "src/main/webapp/app/shared/layout/menus/entities.tsx" ]             && [ -e "src/generator-jhipster-nodejs/utils/origin-files/entities.tsx.origin" ]                   && rm "src/main/webapp/app/shared/layout/menus/entities.tsx"              && cp    "src/generator-jhipster-nodejs/utils/origin-files/entities.tsx.origin"                    "src/main/webapp/app/shared/layout/menus/entities.tsx" && echo "Criando Novo src/main/webapp/app/shared/layout/menus/entities.tsx"

[ -e "server/src/app.module.ts" ]                                         && [ -e "src/generator-jhipster-nodejs/utils/origin-files/app.module.ts.origin" ]                                   && rm "server/src/app.module.ts"                                          && cp    "src/generator-jhipster-nodejs/utils/origin-files/app.module.ts.origin"                   "server/src/app.module.ts" && echo "Criando Novo server/src/app.module.ts"

i=1
for file in $ints
do
    # CInt="$(tr '[:lower:]' '[:upper:]' <<< ${int:0:1})${int:1}"
    CInt="${file%%.*}"
    int=`echo $CInt | sed -r 's/([A-Z])/-\L\1/g' | sed 's/^_//'`
    int="${int:1}"

# echo "$CInt - "

    [ -e "target/classes/com/mycompany/myapp/domain/${CInt}.class" ] && rm  -R  "target/classes/com/mycompany/myapp/domain/${CInt}.class" && echo "Apagando target/classes/com/mycompany/myapp/domain/${CInt}.class"
    [ -e "target/classes/com/mycompany/myapp/domain/${CInt}.class" ] && rm  -R  "target/classes/com/mycompany/myapp/domain/${CInt}.class" && echo "Apagando target/classes/com/mycompany/myapp/domain/${CInt}.class"
    [ -e "target/test-classes/com/mycompany/myapp/domain/${CInt}Test.class" ] && rm  -R  "target/test-classes/com/mycompany/myapp/domain/${CInt}Test.class" && echo "Apagando target/test-classes/com/mycompany/myapp/domain/${CInt}Test.class"
    [ -e "target/classes/com/mycompany/myapp/service/${CInt}Service.class" ] && rm  -R  "target/classes/com/mycompany/myapp/service/${CInt}Service.class" && echo "Apagando target/classes/com/mycompany/myapp/service/${CInt}Service.class"
    [ -e "target/classes/com/mycompany/myapp/repository/${CInt}Repository.class" ] && rm  -R  "target/classes/com/mycompany/myapp/repository/${CInt}Repository.class" && echo "Apagando target/classes/com/mycompany/myapp/repository/${CInt}Repository.class"
    [ -e "target/classes/com/mycompany/myapp/service/${CInt}QueryService.class" ] && rm  -R  "target/classes/com/mycompany/myapp/service/${CInt}QueryService.class" && echo "Apagando target/classes/com/mycompany/myapp/service/${CInt}QueryService.class"
    [ -e "target/classes/com/mycompany/myapp/service/dto/${CInt}DTO.class" ] && rm  -R  "target/classes/com/mycompany/myapp/service/dto/${CInt}DTO.class" && echo "Apagando target/classes/com/mycompany/myapp/service/dto/${CInt}DTO.class"
    [ -e "target/classes/com/mycompany/myapp/service/mapper/${CInt}Mapper.class" ] && rm  -R  "target/classes/com/mycompany/myapp/service/mapper/${CInt}Mapper.class" && echo "Apagando target/classes/com/mycompany/myapp/service/mapper/${CInt}Mapper.class"
    [ -e "target/test-classes/com/mycompany/myapp/service/dto/${CInt}DTOTest.class" ] && rm  -R  "target/test-classes/com/mycompany/myapp/service/dto/${CInt}DTOTest.class" && echo "Apagando target/test-classes/com/mycompany/myapp/service/dto/${CInt}DTOTest.class"
    [ -e "target/classes/com/mycompany/myapp/service/dto/${CInt}Criteria.class" ] && rm  -R  "target/classes/com/mycompany/myapp/service/dto/${CInt}Criteria.class" && echo "Apagando target/classes/com/mycompany/myapp/service/dto/${CInt}Criteria.class"
    [ -e "target/classes/com/mycompany/myapp/web/rest/${CInt}Resource.class" ] && rm  -R  "target/classes/com/mycompany/myapp/web/rest/${CInt}Resource.class" && echo "Apagando target/classes/com/mycompany/myapp/web/rest/${CInt}Resource.class"
    [ -e "target/classes/com/mycompany/myapp/service/mapper/${CInt}MapperImpl.class" ] && rm  -R  "target/classes/com/mycompany/myapp/service/mapper/${CInt}MapperImpl.class" && echo "Apagando target/classes/com/mycompany/myapp/service/mapper/${CInt}MapperImpl.class"
    [ -e "target/test-classes/com/mycompany/myapp/service/mapper/${CInt}MapperTest.class" ] && rm  -R  "target/test-classes/com/mycompany/myapp/service/mapper/${CInt}MapperTest.class" && echo "Apagando target/test-classes/com/mycompany/myapp/service/mapper/${CInt}MapperTest.class"
    [ -e "target/test-classes/com/mycompany/myapp/web/rest/${CInt}ResourceIT.class" ] && rm  -R  "target/test-classes/com/mycompany/myapp/web/rest/${CInt}ResourceIT.class" && echo "Apagando target/test-classes/com/mycompany/myapp/web/rest/${CInt}ResourceIT.class"
    [ -e "target/generated-sources/annotations/com/mycompany/myapp/domain/${CInt}_.java" ] && rm  -R  "target/generated-sources/annotations/com/mycompany/myapp/domain/${CInt}_.java" && echo "Apagando target/generated-sources/annotations/com/mycompany/myapp/domain/${CInt}_.java"
    [ -e "target/generated-sources/annotations/com/mycompany/myapp/service/mapper/${CInt}MapperImpl.java" ] && rm  -R  "target/generated-sources/annotations/com/mycompany/myapp/service/mapper/${CInt}MapperImpl.java" && echo "Apagando target/generated-sources/annotations/com/mycompany/myapp/service/mapper/${CInt}MapperImpl.java"
    [ -e "src/main/java/com/mycompany/myapp/domain/${CInt}.java" ] && rm  -R  "src/main/java/com/mycompany/myapp/domain/${CInt}.java" && echo "Apagando src/main/java/com/mycompany/myapp/domain/${CInt}.java"
    [ -e "src/main/java/com/mycompany/myapp/domain/enumeration/${CInt}Tipo.java" ] && rm  -R  "src/main/java/com/mycompany/myapp/domain/enumeration/${CInt}Tipo.java" && echo "Apagando src/main/java/com/mycompany/myapp/domain/enumeration/${CInt}Tipo.java"
    [ -e "src/main/java/com/mycompany/myapp/service/${CInt}Service.java" ] && rm  -R  "src/main/java/com/mycompany/myapp/service/${CInt}Service.java" && echo "Apagando src/main/java/com/mycompany/myapp/service/${CInt}Service.java"
    [ -e "src/main/java/com/mycompany/myapp/repository/${CInt}Repository.java" ] && rm  -R  "src/main/java/com/mycompany/myapp/repository/${CInt}Repository.java" && echo "Apagando src/main/java/com/mycompany/myapp/repository/${CInt}Repository.java"
    [ -e "src/main/java/com/mycompany/myapp/service/${CInt}QueryService.java" ] && rm  -R  "src/main/java/com/mycompany/myapp/service/${CInt}QueryService.java" && echo "Apagando src/main/java/com/mycompany/myapp/service/${CInt}QueryService.java"
    [ -e "src/main/java/com/mycompany/myapp/service/dto/${CInt}DTO.java" ] && rm  -R  "src/main/java/com/mycompany/myapp/service/dto/${CInt}DTO.java" && echo "Apagando src/main/java/com/mycompany/myapp/service/dto/${CInt}DTO.java"
    [ -e "src/main/java/com/mycompany/myapp/service/mapper/${CInt}Mapper.java" ] && rm  -R  "src/main/java/com/mycompany/myapp/service/mapper/${CInt}Mapper.java" && echo "Apagando src/main/java/com/mycompany/myapp/service/mapper/${CInt}Mapper.java"
    [ -e "src/main/java/com/mycompany/myapp/service/dto/${CInt}Criteria.java" ] && rm  -R  "src/main/java/com/mycompany/myapp/service/dto/${CInt}Criteria.java" && echo "Apagando src/main/java/com/mycompany/myapp/service/dto/${CInt}Criteria.java"
    [ -e "src/main/java/com/mycompany/myapp/web/rest/${CInt}Resource.java" ] && rm  -R  "src/main/java/com/mycompany/myapp/web/rest/${CInt}Resource.java" && echo "Apagando src/main/java/com/mycompany/myapp/web/rest/${CInt}Resource.java"
    [ -e "src/test/java/com/mycompany/myapp/domain/${CInt}Test.java" ] && rm  -R  "src/test/java/com/mycompany/myapp/domain/${CInt}Test.java" && echo "Apagando src/test/java/com/mycompany/myapp/domain/${CInt}Test.java"
    [ -e "src/test/java/com/mycompany/myapp/service/dto/${CInt}DTOTest.java" ] && rm  -R  "src/test/java/com/mycompany/myapp/service/dto/${CInt}DTOTest.java" && echo "Apagando src/test/java/com/mycompany/myapp/service/dto/${CInt}DTOTest.java"
    [ -e "src/test/java/com/mycompany/myapp/service/mapper/${CInt}MapperTest.java" ] && rm  -R  "src/test/java/com/mycompany/myapp/service/mapper/${CInt}MapperTest.java" && echo "Apagando src/test/java/com/mycompany/myapp/service/mapper/${CInt}MapperTest.java"
    [ -e "src/test/java/com/mycompany/myapp/web/rest/${CInt}ResourceIT.java" ] && rm  -R  "src/test/java/com/mycompany/myapp/web/rest/${CInt}ResourceIT.java" && echo "Apagando src/test/java/com/mycompany/myapp/web/rest/${CInt}ResourceIT.java"

    [ -e "src/test/javascript/spec/app/entities/$int" ] && rm  -R  "src/test/javascript/spec/app/entities/$int" && echo "Apagando Pasta src/test/javascript/spec/app/entities/$int"
    [ -e "src/main/webapp/i18n/pt-br/$int.json" ] && rm "src/main/webapp/i18n/pt-br/$int.json" && echo "src/main/webapp/i18n/pt-br/$int.json"
    [ -e "src/main/webapp/i18n/es/$int.json" ] && rm "src/main/webapp/i18n/es/$int.json" && echo "src/main/webapp/i18n/es/$int.json"
    [ -e "src/main/webapp/i18n/en/$int.json" ] && rm "src/main/webapp/i18n/en/$int.json" && echo "src/main/webapp/i18n/en/$int.json"
    [ -e "src/main/webapp/i18n/pt-br/$CInt.json" ] && rm "src/main/webapp/i18n/pt-br/$CInt.json" && echo "src/main/webapp/i18n/pt-br/$CInt.json"
    [ -e "src/main/webapp/i18n/es/$CInt.json" ] && rm "src/main/webapp/i18n/es/$CInt.json" && echo "src/main/webapp/i18n/es/$CInt.json"
    [ -e "src/main/webapp/i18n/en/$CInt.json" ] && rm "src/main/webapp/i18n/en/$CInt.json" && echo "src/main/webapp/i18n/en/$CInt.json"
    
    [ -e "src/main/webapp/app/entities/$int/$int.reducer.ts" ] && rm  -R  "src/main/webapp/app/entities/$int/$int.reducer.ts" && echo "Apagando Pasta src/main/webapp/app/entities/$int/$int.reducer.ts"
    [ -e "src/main/webapp/app/entities/$int/$int.tsx" ] && rm  -R  "src/main/webapp/app/entities/$int/$int.tsx" && echo "Apagando Pasta src/main/webapp/app/entities/$int/$int.tsx"
    [ -e "src/main/webapp/app/entities/$int/$int-delete-dialog.tsx" ] && rm  -R  "src/main/webapp/app/entities/$int/$int-delete-dialog.tsx" && echo "Apagando Pasta src/main/webapp/app/entities/$int/$int-delete-dialog.tsx"
    [ -e "src/main/webapp/app/entities/$int/$int-detail.tsx" ] && rm  -R  "src/main/webapp/app/entities/$int/$int-detail.tsx" && echo "Apagando Pasta src/main/webapp/app/entities/$int/$int-detail.tsx"
    [ -e "src/main/webapp/app/entities/$int/$int-update.tsx" ] && rm  -R  "src/main/webapp/app/entities/$int/$int-update.tsx" && echo "Apagando Pasta src/main/webapp/app/entities/$int/$int-update.tsx"
    [ -e "src/main/webapp/app/entities/$int/index.tsx" ] && rm  -R  "src/main/webapp/app/entities/$int/index.tsx" && echo "Apagando Pasta src/main/webapp/app/entities/$int/index.tsx"


    [ -e "src/main/webapp/app/shared/model/enumerations/$int.model.ts" ] && rm "src/main/webapp/app/shared/model/enumerations/$int.model.ts" && echo "src/main/webapp/app/shared/model/enumerations/$int.model.ts"
    [ -e "src/main/webapp/app/shared/model/$int.model.ts" ] && rm "src/main/webapp/app/shared/model/$int.model.ts" && echo "Apagando src/main/webapp/app/shared/model/$int.model.ts"

    [ -e "target/classes/static/app/entities/$int" ] && rm  -R "target/classes/static/app/entities/$int" && echo "Apagando Pasta target/classes/static/app/entities/$int"
    [ -e "target/classes/static/app/shared/model/$int.model.js.map" ] && rm "target/classes/static/app/shared/model/$int.model.js.map" && echo "target/classes/static/app/shared/model/$int.model.js.map"
    [ -e "target/classes/static/app/shared/model/$int.model.js" ] && rm "target/classes/static/app/shared/model/$int.model.js" && echo "target/classes/static/app/shared/model/$int.model.js"

    [ -e "server/src/migrations/1570200490073-$CInt.ts" ] && rm "server/src/migrations/1570200490073-$CInt.ts" && echo "Apagando server/src/migrations/1570200490073-$CInt.ts"
    [ -e "server/e2e/$int.e2e-spec.ts" ] && rm "server/e2e/$int.e2e-spec.ts" && echo "Apagando server/e2e/$int.e2e-spec.ts"
    [ -e "server/dist/classes/static/app/entities/$int" ] && rm  -R "server/dist/classes/static/app/entities/$int" && echo "Apagando Pasta server/dist/classes/static/app/entities/$int"
    [ -e "server/dist/classes/static/app/shared/model/$int.model.js" ] && rm "server/dist/classes/static/app/shared/model/$int.model.js" && echo "server/dist/classes/static/app/shared/model/$int.model.js"
    [ -e "server/dist/classes/static/app/shared/model/$int.model.js.map" ] && rm "server/dist/classes/static/app/shared/model/$int.model.js.map" && echo "server/dist/classes/static/app/shared/model/$int.model.js.map"
    [ -e "server/src/domain/enumeration/$int.ts" ] && rm "server/src/domain/enumeration/$int.ts" && echo "server/src/domain/enumeration/$int.ts"
    [ -e "server/src/domain/$int.entity.ts" ] && rm "server/src/domain/$int.entity.ts" && echo "Apagando server/src/domain/$int.entity.ts"
    [ -e "server/src/module/$int.module.ts" ] && rm "server/src/module/$int.module.ts" && echo "Apagando server/src/module/$int.module.ts"
    [ -e "server/src/service/$int.service.ts" ] && rm "server/src/service/$int.service.ts" && echo "Apagando server/src/service/$int.service.ts"
    [ -e "server/src/web/rest/$int.controller.ts" ] && rm "server/src/web/rest/$int.controller.ts" && echo "Apagando server/src/web/rest/$int.controller.ts"

    [ -e ".jhipster/$CInt.json" ] && rm  -R  ".jhipster/$CInt.json" && echo "Apagando .jhipster/$CInt.json"

    ((i=$i+1))
done

 echo ""
 echo ""
 echo ""
 echo "APAGAR MANUALMENTE"
 echo "server/src/app.module.ts"
 echo "src/main/webapp/app/shared/reducers/index.ts"
 echo "src/main/webapp/app/shared/layout/menus/entities.tsx"
 echo "src/main/webapp/app/entities/index.tsx"
 echo "src/main/webapp/i18n/en/global.json"
 echo "src/main/webapp/i18n/pt-br/global.json"

 echo "src/main/java/com/mycompany/myapp/config/CacheConfiguration.java"


echo a | jhipster import-jdl jhipster-jdl.jh --skip-install --blueprints nodejs && npm run lint:fix && npm run prettier:format

#&& npm run start:app





