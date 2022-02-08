# WhatOSIsit
Script que identifica el sistema operativo.Solo aplica para las maquinas de la plataforma de HackTheBox.

# Uso 
primero tenemos que clonar el repositorio.

```git
git clone https://github.com/DelPieroNet/WhatOSIsit
```
Ejecutamos el script WhatOSIsit.sh y nos aparecera el panel de ayuda.

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
Nos reportara si es una maquina (Linux) o (Windows).

#ttl
Las maquinas linux se reconocen por tener de ttl --> 63 y las maquinas windows --> 127 cuando en realidad las maquina linux son 64 y las windows 128, la razon por la unidad que disminuye es, por que cuando estas resolviendo una maquina en hackthebox primero te conectas a tu VPN, y tu ip de la vpn pasa por otra ip y recien llega a la maquina victima. Puedes comprobarlo haciendo un ping y al final especificas la opcion -R.

```bash
ping -c 1 1 1.1.1.1 -R
```


