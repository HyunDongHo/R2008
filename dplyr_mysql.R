#install.packages('dbplyr')
#install.packages("RMariaDB")
library(dplyr)
library(dbplyr)
library(RMariaDB)

# 데이터 베이스 연결
db <- DBI::dbConnect(RMariaDB::MariaDB(), 
                host = "127.0.0.1", 
                user = "rmaria", 
                password = "rmaria", 
                dbname = "rmaria"
                )
# 테이블 목록 확인
dbListTables(db)

# 쿼리 실행
mpg_query = "SELECT * FROM autompg"
mpg_qry <- dbSendQuery(db, mpg_query)
mpg_df <- dbFetch(mpg_qry)

# 데이터베이스 연결 해제
dbDisconnect(db)

# 데이터 프레임 저장
dbWriteTable(db, 'mtcars', mtcars)

# 필드 확인
fields<-dbListFields(db, 'mtcars')

# 테이블 읽기
drt <- dbReadTable(db, 'mtcars')
