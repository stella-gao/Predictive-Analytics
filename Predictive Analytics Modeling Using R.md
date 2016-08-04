* Data Input
  1. Reading Data from CSV: read comma separated file into memory
  
    ```R
    >data<-read.csv("C:/Documents and Settings/MyDocuments/modelling.csv")
    ```
    
  2. Reading Data fromExcel: read Excel file into memory
  
    ```R
    >library(RODBC)
    >conn<- odbcConnectExcel("myfile.xls")
    >data <- sqlFetch(channel, "mysheet")
    >odbcClose(conn)
    ```
  
  3. 
* 
