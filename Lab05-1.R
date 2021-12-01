burger <- matrix(c(514, 917, 11,
                   533, 853, 13,
                   566, 888, 10),
                 nrow =3,
                 byrow=T)
burger

rownames(burger) <- c('M', 'L', 'B')
colnames(burger) <- c('kcal', 'na', 'fat')
burger

burger['M', 'na']
