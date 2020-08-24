사용 방법
==========

## 새 이미지 빌드
```
docker build -t rmaria_db .
```

## 새 도커 생성
```
docker-compose up -d
```

## 도커 프로세스 확인
```
docker ps -a
```

## 도커 시작
```
docker start [container ID] | [container name]
```

## 도커 종료
```
docker stop [container ID] | [container name]
```

## 도커 삭제
```
docker-compose down
```

DBI 함수	기능 설명
***
* dbDriver	데이터베이스 인스턴스에 대한 드라이버 객체 생성
* dbConnect	데이터베이스 인스턴스에 연결
* dbListTables	연결된 데이터베이스 인스턴스에 포함된 테이블 목록을 출력
* dbListFields	해당 테이블 내부 필드 목록을 출력
* dbSendQuery	연결된 데이터베이스 인스턴스에 쿼리를 전달
* dbFetch	SQL 쿼리 결과를 R 데이터프레임으로 가져옮
* dbGetQuery	데이터베이스 인스턴스로부터 데이터를 쿼리함과 동시에 가져옮
* dbClearResult	SQL 쿼리로 가져온 결과(result set)를 닫음
* dbWriteTable	신규 테이블을 데이터베이스 인스턴스에 기록함
* dbRemoveTable	데이터베이스 인스턴스에서 테이블을 삭제함
* dbDisconnect	데이터베이스 인스턴스에 연결을 해제함


R 팩키지	데이터베이스 관리 시스템(DBMS)
***
* ROracle	오라클(Oracle)
* RMySQL	MySQL
* RSQLServer	Microsoft SQL Server
* RPostgres	PostgreSQL
* RSQLite	SQLite
* bigrquery	Google’s BigQuery
