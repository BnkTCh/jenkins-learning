#!/bin/sh

pkill java

nohup java -jar spring-petclinic/target/*.jar > spring-petclinic/output.log #!/bin/sh

pkill java

nohup java -jar spring-petclinic/target/*.jar > spring-petclinic/output.log &
