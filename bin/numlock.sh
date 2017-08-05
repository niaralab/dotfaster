#!/bin/sh
# Criado em:Qui 05/Jan/2006 hs 13:13
# ultima modifica��o: Sex 03 Fev 2006 20:17:48 BRST
# Ativar NUMLOCK na inicializa��o do sistema.
# Andr� C|-|@k4L - chakal@linuxmail.org - Debian GNU\Linux 3.0

# Este � um simples script que ativa o NUMLOCK na inicializa��o do sistema.
# Por padr�o o NUMLOCK fica desativado na incializa��o, para que ele funcione
# voce deve coloc�-lo na pasta /etc/init.d/ do seu sistema e gerar um link dele
# dentro da pasta "rc" que por padr�o voc� inicia. Ex:
# ln -sf /etc/init.d/numlock /etc/rc3.d/S20numlock

# Cores
verde="setterm -foreground green"
normal="setterm -default"

# Script

echo -n "Ativando NumLock..."
sleep 1

INITTY=/dev/tty[1-8]
for tty in $INITTY; do
    setleds -D +num < $tty
done

echo -n "	[  "
$verde
echo -n "OK"
$normal
echo "  ]"

# FIM
