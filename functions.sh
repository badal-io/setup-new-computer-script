
#===============================================================================
#  Functions
#===============================================================================


printHeading() {
    printf "\n\n\n\e[0;36m$1\e[0m \n"
}

printDivider() {
    printf %"$COLUMNS"s |tr " " "-"
    printf "\n"
}

printError() {
    printf "\n\e[1;31m"
    printf %"$COLUMNS"s |tr " " "-"
    if [ -z "$1" ]      # Is parameter #1 zero length?
    then
        printf "     There was an error ... somewhere\n"  # no parameter passed.
    else
        printf "\n     Error Installing $1\n" # parameter passed.
    fi
    printf %"$COLUMNS"s |tr " " "-"
    printf " \e[0m\n"
}

printStep() {
    printf %"$COLUMNS"s |tr " " "-"
    printf "\nInstalling $1...\n";
    $2 || printError "$1"
}

printLogo() {
cat << "EOT"
___.                .___        .__          .__          
\_ |__  _____     __| _/_____   |  |         |__|  ____   
 | __ \ \__  \   / __ | \__  \  |  |   ______|  | /  _ \  
 | \_\ \ / __ \_/ /_/ |  / __ \_|  |__/_____/|  |(  <_> ) 
 |___  /(____  /\____ | (____  /|____/       |__| \____/  
     \/      \/      \/      \/                           
                                                          
    Q U I C K   S E T U P   S C R I P T

    Largely lifted from Vendasta's script of the same name, with some additions and modifications

    NOTE:
    You can exit the script at any time by
    pressing CONTROL+C a bunch
EOT
}