#!/bin/bash
# resize -s 30 80 
printf '\e[8;30;120t'


# Renk kodları
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

show_menu() {
    clear
    echo -e "${BLUE}__        _______ _     ____ ___  __  __ _____${NC}"
    echo -e "${BLUE}\ \      / | ____| |   / ___/ _ \|  \/  | ____|${NC}"
    echo -e "${BLUE} \ \ /\ / /|  _| | |  | |  | | | | |\/| |  _|${NC}"
    echo -e "${BLUE}  \ V  V / | |___| |__| |__| |_| | |  | | |___${NC}"
    echo -e "${BLUE}   \_/\_/  |_____|_____\____\___/|_|  |_|_____|${NC}"
    echo -e "${GREEN}Ana Menü${NC}"
    echo -e "${BLUE}1) Sistem Bilgisi${NC}"
    echo -e "${BLUE}2) Dosyaları Listele${NC}"
    echo -e "${BLUE}3) Ağ Bilgisi${NC}"
    echo -e "${RED}4) Çıkış${NC}"
    echo -n "Lütfen bir seçenek giriniz [1-4]: "
}

while true; do
    show_menu
    read choice
    case $choice in
        1) echo -e "${GREEN}Sistem Bilgisi:${NC}"
           uname -a  # Sistem hakkında bilgi verir
           ;;
        2) echo -e "${GREEN}Home dizinindeki dosyalar:${NC}"
           ls ~  # Kullanıcının home dizinindeki dosyaları listeler
           ;;
        3) echo -e "${GREEN}Ağ bilgisi:${NC}"
           ifconfig  # Ağ arabirimleri hakkında bilgi verir
           ;;
        4) echo -e "${RED}Menüden çıkılıyor...${NC}"
           break
           ;;
        *) echo -e "${RED}Geçersiz seçim, lütfen 1-4 arasında bir değer giriniz.${NC}"
           ;;
    esac
    read -p "Devam etmek için herhangi bir tuşa basın..." continue
done
