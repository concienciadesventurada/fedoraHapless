#!/bin/bash

set -a

AUTOINSTALLER_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
SCRIPTS_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"/scripts
CONFIGS_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"/dotconfigs

set +a

( bash $SCRIPTS_DIR/0-dnfconf.sh )
( bash $SCRIPTS_DIR/1-updatesystem.sh )
( bash $SCRIPTS_DIR/2-dmgui.sh )
( bash $SCRIPTS_DIR/3-configimport.sh )
( bash $SCRIPTS_DIR/4-appsandprograms.sh )
( bash $SCRIPTS_DIR/5-startupconfig.sh )
