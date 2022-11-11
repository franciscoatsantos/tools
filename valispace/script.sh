#!/bin/bash
function check_os() {
    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        echo "apt"
    elif [[ "$OSTYPE" == "darwin"* ]]; then
        echo "brew"
    fi
}

function check_pkg_manager() {
    if [ $(which $1 2>/dev/null ) ]; then
        echo "package manager is needed to install dependencies, install $1"
    fi
}

function check_dep() {

    if [ $(which $1 2>/dev/null) ]; then
        return 0
    else
        return 1
    fi
}

function check_repos() {
    DIR=$1
}

function install_deps() {

    required=$1
    pkg_manager=$2
    echo
    ${pkg_manager} update
    for req in "${required[@]}"; do
        echo "|"
        printf '|--- Installing %s \n' $req
        eval ${pkg_manager} install $req
    done
    echo
}

### This is just to simulate cool typing looks (Like the Movies)
function loop_string() {
    unset string
    color_1=$2
    color_2=$3
    string=$1
    printf "${color_1}"
    for (( x=0; x<${#string}; x++ )); do
        printf %s "${string:$x:1}"
        sleep 0.002
    done
    printf "${color_2}"
}

function run_installer() {
    echo "Installer"
}

build_banner () {
    echo
    loop_string " #     #    #    #       ###  #####  ######     #     #####  ####### "
    echo
    loop_string " #     #   # #   #        #  #     # #     #   # #   #     # #       "
    echo
    loop_string " #     #  #   #  #        #  #       #     #  #   #  #       #       "
    echo
    loop_string " #     # #     # #        #   #####  ######  #     # #       #####   "
    echo
    loop_string "  #   #  ####### #        #        # #       ####### #       #       "
    echo
    loop_string "   # #   #     # #        #  #     # #       #     # #     # #       "
    echo
    loop_string "    #    #     # ####### ###  #####  #       #     #  #####  ####### "
    echo
    loop_string "                                                                     "
    echo
    loop_string "Welcome to the Valispace dev installer" ${YELLOW}
}
clear
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'
YELLOW='\033[1;33m'

echo
build_banner

pkg_manager=$(check_os)
check_pkg_manager $pkg_manager

#if [ ! $(which $pkg_manager 2>/dev/null) ]; then
#    printf "\n ${GREEN}ERROR: No package manager found"
#    echo
#    exit
#fi
#
#echo "$pkg_manager"
#macos_deps=(git python3 redis-server postgresql)
#linux_deps=(git python3 redis-server postgresql)
#
#echo "Checking Dependencies..."
#for req_dep in "${required_dependencies[@]}"; do
#    echo "|"
#    printf '|---'
#    loop_string "$req_dep..."
#    if check_dep $req_dep; then
#        version=$($req_dep --version)
#        text="Found -> $version"
#        loop_string "$text" $GREEN $NC
#    else
#        text="not Found"
#        loop_string "$text" $RED $NC
#        required_not_found+=($req_dep)
#    fi
#    echo
#done
#
#echo
#
#if [ "${#required_not_found}" -gt 0 ]; then
#    echo "${RED} MISSING DEPENDENCIES:"
#    for req_not_found in "${required_not_found[@]}"; do
#        echo "|"
#        printf '|---'
#        text="$req_not_found is required to be installed in order to install valispace"
#        loop_string "$text"
#    done
#
#    echo "\n${YELLOW}"
#    read -n1 -p "Would you like the script to install the missing dependencies [y,N]?" option
#    if [[ $option == "Y" || $option == "y" ]]; then
#        install_deps $required_not_found $pkg_manager
#    else
#        exit
#    fi
#fi
#
#default_repo_path=("~/valispace/repos/")
#repos=("vali" "valiengine")
#echo "asdasd"
#check_repos $default_repo_path $repos
#
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ggit add 
[J[0m.gitignore     [JASCII_ART.txt  [J[1;32mscript.sh[0m*   [J[A[0m[27m[24m[0m[39m[49m[92Cgit add[K[0m[39m[49m[1C.gitignore
[J[7m.gitignore   [0m  [JASCII_ART.txt  [J[1;32mscript.sh[0m*   [J[A[0m[27m[24m[0m[39m[49m[92Cgit add .gitignore[K[0m[39m[49m