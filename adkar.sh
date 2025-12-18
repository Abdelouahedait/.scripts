#!/bin/bash

adhkar_list=(
    "سُبْحَانَ اللَّهِ وَبِحَمْدِهِ"
    "سُبْحَانَ اللَّهِ الْعَظِيمِ"
    "لَا حَوْلَ وَلَا قُوَّةَ إِلَّا بِاللَّهِ"
    "الْحَمْدُ لِلَّهِ"
    "اللَّهُ أَكْبَرُ"
    "أَسْتَغْفِرُ اللَّهَ"
    "لَا إِلَهَ إِلَّا اللَّهُ"
    "اللَّهُمَّ صَلِّ عَلَى مُحَمَّدٍ"
    "رَبِّ اغْفِرْ لِي"
    "اللَّهُمَّ ارْحَمْنِي"
)

icons_list=(

    "emblem-favorite"           # ⭐ (نجمة/مفضلة)
    "islamic-star-and-crescent" # ☪️ (هلال ونجمة إسلامية
    "ismamic-mosque"          # 🕌 (مسجد إسلامي
    "prayer-beads"              # 📿 (مسبحة صلاة)
    "kaaba"                     # 🕋 (الكعبة المشرفة
    "place-of-worship"        # 🛐 (مكان عبادة عامة
    "dove-of-peace"          # 🕊️ (حمامة السلام
)

total_adhkar=${#adhkar_list[@]}
total_icons=${#icons_list[@]}
current_index=0
icon_index=0

while true; do
    notify-send "${adhkar_list[$current_index]}" \
        -u normal \
        -i "${icons_list[$icon_index]}" \
        -h string:fgcolor:#9b59b6 \
        -h string:bgcolor:#2c3e50 \
        -t 90000
    
    current_index=$(( (current_index + 1) % total_adhkar ))
    icon_index=$(( (icon_index + 1) % total_icons ))
    sleep 60
done &