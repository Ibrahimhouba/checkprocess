#!/bin/bash

###########################################################
# Script: Inetialisation de check_process.sh
###########################################################

#*** Définition des variables ***


FILE="check_process.sh"
LOG_LOCATION="../log"
DATE=`date '+%Y%m%d%H%M%S'`
LOG_FILE=${LOG_LOCATION}/${FILE}_${DATE}".log"
DIR_CFG="../cfg"

# Check de parametrage passé au programme
# si rien passe en parametrage dans le programme principale, on prend le fichier de parametrage par defaut
if [ $# -eq 0 ]
then 
	echo "$(date '+%d-%m-%Y %H:%M:%S') > init_check_process [INFO] : Aucun nom de fichier de configuration passe en paramètre" | tee -a $LOG_FILE
        echo "$(date '+%d-%m-%Y %H:%M:%S') > initC_check_process [INFO] : FIC_PARAM=$DIR_CFG/check_process.cfg (Valeur par defaut)" | tee -a $LOG_FILE

     FIC_PARAM="$DIR_CFG/check_process.cfg"
else
     #Si un fichier de conf etait passé en paramètre dans le programme principale
     FIC_PARAM=$1
        echo "init_check_process.sh INFO] : FIC_PARAM=$1" | tee -a $LOG_FILE
     
fi

echo "$(date '+%d-%m-%Y %H:%M:%S') > initCheck_processus [INFO] : FIC_PARAM        = $FIC_PARAM" | tee -a $LOG_FILE
echo "$(date '+%d-%m-%Y %H:%M:%S') > initCheck_processus [INFO] : Fin de initCheck_processus" | tee -a $LOG_FILE

echo "$(date '+%d-%m-%Y %H:%M:%S') > initCheck_processus [INFO] : FILE             = $FILE" | tee -a $LOG_FILE
echo "$(date '+%d-%m-%Y %H:%M:%S') > initCheck_processus [INFO] : LOG_LOCATION     = $LOG_LOCATION" | tee -a $LOG_FILE
echo "$(date '+%d-%m-%Y %H:%M:%S') > initCheck_processus [INFO] : DATE             = $DATE" | tee -a $LOG_FILE
echo "$(date '+%d-%m-%Y %H:%M:%S') > initCheck_processus [INFO] : LOG_FILE         = $LOG_FILE" | tee -a $LOG_FILE
echo "$(date '+%d-%m-%Y %H:%M:%S') > initCheck_processus [INFO] : FIC_PARAM        = $FIC_PARAM" | tee -a $LOG_FILE
echo "$(date '+%d-%m-%Y %H:%M:%S') > initCheck_processus [INFO] : Fin de initCheck_processus" | tee -a $LOG_FILE
