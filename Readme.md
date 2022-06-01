# Terminal IDE installs

Script para realizar instalaciones de:
- Oh My Fish (OMF).
- Fisher.
- NVM.
- Nodejs.
- Neovim (con configs personales https://github.com/Yesid-Rodelo/nvim).
- VimPlug.
- Ripgrep (rg).
- Tmux.

Éste Script está diseñado para distribuciones Ubuntu


## Pre-requisitos

Antes de iniciar es necesario instalar primero Fish shell

`sudo apt install fish`

(Opcional) comando para definir fish por default:

`chsh -s /usr/bin/fish`


## Ejecución

dentro de la carpeta nvim_fish, ejecutar:

`./nvim_fish.sh`

IMPORTANTE: durante la ejecución en el paso de instalar OMF el script entrara a una instancia de fish. solo ejecute el comando `exit` para continuar con la ejecución del .sh
