library("riverplot")

edges <- list( A= list( C= 15 ), B= list( C= 10 ), C= list( C= 10 ), D= list( C= 10 ), E= list( C= 10 ), F= list( C= 20))
nodes <- data.frame( ID= LETTERS[1:6],
                     x= c( 1, 1, 2, 1, 1, 1),
                     col= c( "yellow", "red", "green", "blue","pink", "orange"),
                     labels= c( "Chlorophyta", "Rhodophyta", "Algae", "Chromista", "Bacillariophyta", "Cyanobacteria"),
                     stringsAsFactors= FALSE )
r <- makeRiver( nodes, edges )
plot( r )