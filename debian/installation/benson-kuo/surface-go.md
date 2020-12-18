wifi終於抓到了,關鍵步驟如下
1.建立local repository,安裝network-manager
   因為我只會用nmcli device wifi connect xxx

2.用另外一台下載firmware的deb檔,並複製到隨身碟,在複製過去surface go
https://cdimage.debian.org/cdimage/unofficial/non-free/firmware/buster/current/

3,安裝firmware deb檔, 
像surface go的wifi chip是qualcom ath10k qca6174a, 所以是安裝firmware-atheros.deb
3.1.如何知道晶片型號
從ifixit查到,或是google
https://www.ifixit.com/Teardown/Microsoft+Surface+Go+Teardown/111895
3.2.如何知道晶片的firmware是在哪個deb檔
先認晶片公司或是晶片系列名稱,像我的是ath10k,找出關鍵字後,
再去查deb檔的說明 
https://packages.debian.org/source/buster/firmware-nonfree

4.安裝完後,/lib/firmware裡面會有一堆bin檔,因為從deb檔拉出來的官方bin檔好像有點問題,
所以用killer的bin檔蓋過去,然後下 echo "options ath10k_core skip_otp=y" >> /etc/modprobe.d/ath10k.conf
https://github.com/linux-surface/linux-surface/wiki/Surface-Go
這個裡有說明還要把某個bin檔刪除,但我昨天失敗應該是把全部的bin檔刪掉,只放入kiiler的bin檔, 這說明firmware不只一個檔案

5.用dmesg | grep ath10k 先查一下這次開機kernel load了哪些東西,狀態怎樣,可以拍個照,重開, 再dmesg | grep ath10k 檢查firmware載入的狀況

6.這時nmcli device就會出現傳說中的wifi interface名稱代表有抓到了
