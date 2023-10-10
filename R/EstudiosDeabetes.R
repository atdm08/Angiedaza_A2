
#Importar datos con csv
file.choose()
indicador=read.csv("E:\\Users\\Lenovo\\Documents\\ELECTIVA II\\Segundo corte\\final2\\AngiedazaA2\\diabetes_012_health_indicators_BRFSS2015 (2).csv")

# Mostrar las primeras filas del conjunto de datos
head(indicador)
summary(indicador)
# Histograma de la variable BMI
hist(indicador$BMI, main = "Distribución de BMI", xlab = "BMI")
# Histograma de la variable MentHlth
hist(indicador$MentHlth, main = "Distribución de MentHlth", xlab = "MentHlth")
# Boxplot de la variable PhysHlth
hist(indicador$PhysHlth, main = "Distribución de PhysHlth",xlab = "PhysHlth")
# Gráfico de barras de la variable GenHlth
barplot(table(indicador$GenHlth), main = "Distribución de GenHlth", xlab = "GenHlth")
# Histograma de la variable BMI
hist(indicador$BMI, main = "Distribución de Sex", xlab = " Sex ")


# Binarización de la variable Diabetes_012
indicador$Diabetes_Binary <- ifelse(indicador$Diabetes_012 == 0, 0, 1)
# Contar la frecuencia de valores en Diabetes_Binary
table(indicador$Diabetes_Binary)
