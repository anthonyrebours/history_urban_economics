### Packages

library(biblionetwork)
library(dplyr)

### Input Data


data7579 <- read.csv2(file.choose())
data8589 <- read.csv2(file.choose())
data0004 <- read_csv2(file.choose())
data0509 <- read.csv2(file.choose())


### Cocitation tables


cocitation7579 <- biblio_cocitation(data7579,source="ID_Article_citant",ref="value") %>% select(-c('from','to'))
cocitation8589 <- biblio_cocitation(data8589,source="ID_Article_citant",ref="value") %>% select(-c('from','to'))
cocitation0004 <- biblio_cocitation(data0004,source="Citing_ID",ref="Name_Aut") %>% select(-c('from','to'))
cocitation0509 <- biblio_cocitation(data0509,source="ID_Article_citant",ref="value") %>% select(-c('from','to'))


### Export


write.table(cocitation7579, file.choose(), sep=";", row.names = FALSE)
write.table(cocitation8589, file.choose(), sep=";", row.names = FALSE)
write.table(cocitation0004, file.choose(), sep=";", row.names = FALSE)
write.table(cocitation0509, file.choose(), sep=";", row.names = FALSE)


