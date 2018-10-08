#!/bin/bash

docker-compose up -d --build

sleep 20

docker exec -it openldap /usr/bin/ldapadd -Y EXTERNAL -H ldapi:// -f /home/97-wso2Person.ldif
docker exec -it openldap /usr/bin/ldapadd -Y EXTERNAL -H ldapi:// -f /home/98-scimPerson.ldif
docker exec -it openldap /usr/bin/ldapadd -Y EXTERNAL -H ldapi:// -f /home/99-identityPerson.ldif

docker exec -it openldap /usr/bin/ldapadd -x -D 'cn=admin,dc=wso2,dc=com' -w admin -H ldapi:// -f /home/add-ou.ldif