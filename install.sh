#!/bin/bash
clear

RED='\e[30m'
WHITE='\e[31m'
RED='\e[32m'
WHITE='\e[33m'
RED='\e[34m'
WHITE='\e[35m'
RED='\e[36m'
WHITE='\e[37m'
NC='\e[0m'
echo ""
 echo -e "${LIME}                            Name Tools -                  "         
 echo "           __ __                    __              __      "
 echo "          / // / __  ______  __  __/ /_____  ____  / /____  "
 echo "         / // /_/ / / / __ \/ / / / __/ __ \/ __ \/ / ___/  "
 echo ".       /__  __/ /_/ / /_/ / /_/ / /_/ /_/ / /_/ / (__  )   "
 echo "          /_/  \__, /\____/\__,_/\__/\____/\____/_/____/    "
 echo "              /____/        "                               "                   
echo -e "${RED}                  ~ Tools for Hacking by Faizal Acbar ${NC}"
echo ""
echo -e "${LIME} https://security-xploit.blogspot.com | https://facebook.com/rudyozog | https://github.com/faizal-acbar ${NC} "
echo ""
echo "---------------------------------------------------------------------------------------"
echo ""
echo -e "${RED}[!] This Tool Must Run As ROOT [!]${NC}"
echo ""
echo -e "${CYAN}[>] Press ENTER to Install HackerPro, CTRL+C to Abort.${NC}"
read INPUT
echo ""

if [ "$PREFIX" = "/data/data/com.termux/files/usr" ]; then
    INSTALL_DIR="$PREFIX/usr/share/doc/4youtools"
    BIN_DIR="$PREFIX/usr/bin/"
    pkg install -y git python2
else
    INSTALL_DIR="/usr/share/doc/4youtools"
    BIN_DIR="/usr/bin/"
fi

echo "[✔] Checking directories...";
if [ -d "$INSTALL_DIR" ]; then
    echo "[!] A Directory 4youtools Was Found.. Do You Want To Replace It ? [y/n]:" ;
    read mama
    if [ "$mama" = "y" ]; then
        rm -R "$INSTALL_DIR"
    else
        exit
    fi
fi

echo "[✔] Installing ...";
echo "";
git clone https://github.com/faizal-acbar/4you-tools.git "$INSTALL_DIR";
echo "#!/bin/bash
python $INSTALL_DIR/4youtools.py" '${1+"$@"}' > 4youtools;
chmod +x 4youtools;
sudo cp 4youtools /usr/bin/;
rm 4youtools;


if [ -d "$INSTALL_DIR" ] ;
then
    echo "";
    echo "[✔] Successfuly Installed !!! [✔]";
    echo "";
    echo "[✔]========================================================================[✔]";
    echo "[✔] ✔✔✔ All Is Done!! you can execute tool by faizal acbar !! ✔✔✔ [✔]";
    echo "[✔]========================================================================[✔]";
    echo "";
else
    echo "[✘] Installation Failed !!! [✘]";
    exit
fi
