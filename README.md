# WhatOSIsit
Script que identifica que sistema operativo es.Solo aplica para las maquinas de la plataforma de HackTheBox.

# Uso 
primero tenemos que clonar el repositorio

```git
git clone https://github.com/DelPieroNet/WhatOSIsit
```
Ejecutamos el script WhatOSIsit.sh y nos aparecera el panel de ayuda

```bash
./WhatOSIsit.sh

[!]Uso ./WhatOSIsit.sh -i destination_ip 
--------------------------------------------------------------------------------

		[-i] Especificar el host de destino.
```
Tenemos que ejecutar el script y espeficar la opcion de declarar la ip de la maquina de destino que es la opcion -i, y nos dira que sistema operativo es.

```bash
./WhatOSIsit.sh -i 10.10.10.10
```


