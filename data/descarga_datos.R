# Descarga de los datos abiertos usados en 4.Descriptiva.qmd
# Fuente: Portal de Datos Abiertos de Colombia (www.datos.gov.co)
# Fecha de descarga: 2026-10-25

# 1. Índice de Riesgo de la Calidad del Agua para consumo humano (IRCA), 2024
#    Conjunto "Calidad del Agua para Consumo Humano en Colombia" (nxt2-39c3)
u1 <- paste0("https://www.datos.gov.co/resource/nxt2-39c3.csv?",
             "$where=a_o='2024'%20AND%20municipio!='%23TODOS'&$limit=5000")
irca <- read.csv(u1, encoding = "UTF-8", na.strings = c("ND", ""))
irca <- data.frame(departamento = irca$departamento,
                   municipio    = irca$municipio,
                   irca         = irca$irca,
                   nivel_riesgo = irca$nivel_de_riesgo,
                   irca_urbano  = irca$ircaurbano,
                   irca_rural   = irca$ircarural)
write.csv(irca, "irca_2024.csv", row.names = FALSE, fileEncoding = "UTF-8")

# 2. Evaluaciones Agropecuarias Municipales (EVA) 2019-2025, cultivo de café, 2024
#    Conjunto "Evaluaciones Agropecuarias Municipales – EVA. 2019 - 2025" (uejq-wxrr)
u2 <- paste0("https://www.datos.gov.co/resource/uejq-wxrr.csv?",
             "$where=a_o='2024'%20AND%20cultivo='Caf%C3%A9'&$limit=5000")
cafe <- read.csv(u2, encoding = "UTF-8")
cafe <- data.frame(departamento   = cafe$departamento,
                   municipio      = cafe$municipio,
                   area_sembrada  = cafe$rea_sembrada,
                   area_cosechada = cafe$rea_cosechada,
                   produccion     = cafe$producci_n,
                   rendimiento    = cafe$rendimiento)
write.csv(cafe, "cafe_2024.csv", row.names = FALSE, fileEncoding = "UTF-8")
