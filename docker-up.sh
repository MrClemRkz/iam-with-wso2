#!/bin/bash

docker-compose up --build -d

docker exec -it openldap /usr/bin/ldapadd -Y EXTERNAL -H ldapi:// -f /home/97-wso2Person.ldif
docker exec -it openldap /usr/bin/ldapadd -Y EXTERNAL -H ldapi:// -f /home/98-scimPerson.ldif
docker exec -it openldap /usr/bin/ldapadd -Y EXTERNAL -H ldapi:// -f /home/99-identityPerson.ldif