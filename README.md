# S905X ( HG680P & B860H ) GPIO

Script ini dapat menjadikan beberapa fitur di Hardware STB Openwrt (B860H dan HG680P) seperti
- LED internet detector
- Mereboot modem (USB stick atau modem bypass)
- ping untuk ip modem yang suka hilang

Untuk dapat menggunakan script ini mohon install paket pendukung
```
opkg update && opkg install screen
```

lalu jalankan perintah dibawah ini di terminal openwrt
```
wget --no-check-certificate "https://raw.githubusercontent.com/alkhanet26/modemnet/main/geto.sh" -O /tmp/geto.sh && chmod +x /tmp/geto.sh && sh /tmp/geto.sh
```

tunggu hingga proses download file selesai

# Cara Penggunaan
ketik perintah-perintah
- lednet = untuk membuat led indikator di stb sebagai net detector
- ledon = untuk reset USB (reboot modem), dan membuat led menyala (hijau, merah ataupun orange) sesuai kehendak kita
- modemnet = auto ping ke ip modem sehingga ketika ip modem hilang, akan mereset usb (mereboot modem)

# Thanks TO
- [Lutfa Ilham](https://github.com/lutfailham96)
- [IndoWRT](https://www.facebook.com/groups/indowrt)
