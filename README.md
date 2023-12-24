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

# Penggunaan
- lednet (dimasukan perintah di ``rc.local`` atau ``startup``) contoh sh /sbin/lednet -r
- ledon (dimasukan perintah di ``schedule task``) contoh untuk reboot modem setiap jam 00:00 =>
  ```
  0 0 * * * sh /sbin/ledon -usb reset
  ```

# Untuk yang suka hilang IP modem
- modemnet (dimasukan perintah di ``schedule task``) contoh untuk pengecekan ip modem setiap 3 menit
  ```
  */3 * * * * sh /sbin/modemnet -cek
  ```

# Untuk Cek Koneksi Internet
- modemcek (dimasukan perintah di ``schedule task``) contoh untuk pengecekan koneksi internet ke ``domain``

  tertentu setiap 1 menit dan untuk domain bebas ya,, yang penting bisa di ``ping``
  ```
  */1 * * * * sh /sbin/modemcek www.google.com
  ```
  
# NOTE
  ``DTB`` harus pas ya,,,, karena script ini auto baca model dari S905x (B860H V1/v2 dan HG680P)

# Thanks TO
- [Lutfa Ilham](https://github.com/lutfailham96)
- [IndoWRT](https://www.facebook.com/groups/indowrt)
