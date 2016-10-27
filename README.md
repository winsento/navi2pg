# navi2pg
Utility to convert data from S57 to a structured PostGIS database

Build:
```
git clone https://github.com/winsento/navi2pg
cd navi2pg
git checkout docker
docker build -t nav .
```

Show layer name:
```
docker run --rm  -it --volume /data/s57:/data nav ogrinfo us1bs02m.000
```

Load to Postgis:
```
docker run --rm  -it --volume /data/s57:/data nav navi2pg PG:"dbname='s57' user='postgres' host='172.17.0.4' password='ololo' port='5432'" US1BS02M.000
```

License
-------------
This program is licensed under GNU GPL v2 or any later version
