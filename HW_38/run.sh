#!/bin/sh
GITHUB=VictoriaKi
WS_DIR=Workspace
REPO=HW_38
VERSION=1.0
# ======================================================================================
if ! which java >/dev/null 2>&1; 
	then 
		echo Java not installed; 
return; 
fi
if ! which mvn >/dev/null 2>&1; 
	then 
		echo Maven not installed; 
return; 
fi
if ! which git >/dev/null 2>&1; 
	then 
		echo Git not installed; 
return; 
fi
if [ -d "$HOME/$WS_DIR" ]; 
	then 
		cd ~/$WS_DIR; 
	else 
		echo $WS_DIR is not exist; 
		return; 
	fi
if [ -d "$HOME/$WS_DIR/$REPO" ]; 
	then 
		echo  "    !!! we should manually remove " $HOME/$WS_DIR/$REPO " directory instead of using remove command"; 
	fi
git clone https://github.com/$GITHUB/$REPO.git
cd ./HW_38
echo `pwd`
mvn clean site -Dtest_suite=$1 -Dpassword=$2
# ./run.sh ./ts_0101.properties 12345678
