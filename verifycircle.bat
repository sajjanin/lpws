set pwd=%~dp0
echo %pwd%
 
docker run -it --rm ^
       -v /var/run/docker.sock:/var/run/docker.sock ^
       -v d:\dockervol\git\lpws:/git/lpws ^
       -v %pwd%\.circleci\:/git/lpws/.circleci ^
       --workdir /git/lpws/.circleci ^
       circleci/picard ^
       circleci config validate -c /git/lpws/.circleci/config.yml