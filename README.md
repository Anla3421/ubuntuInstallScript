### 此為協助全新 ubuntu 環境安裝軟體或是設定調校的腳本
若無其他需求請依照檔案名稱的依序執行之。  
#### 1_installTools.sh
##### 以下為將會安裝的軟體清單，目前版本還沒有實做 option 的功能，故請依自身需求做增減。
安裝 forticlient
安裝 chrome
安裝 mongo compass
安裝 openlens
安裝 golang 1.20.5
安裝 docker
- 因有修改到群組的部份，需要做使用者重新登入之後得生效
安裝 vscode
安裝 teams-for-linux
安裝 postman
安裝 node, npm 及版本管理器 n
安裝 dbeaver
安裝 filezilla
安裝 telegram
安裝 htop
安裝 spotify
安裝 zsh  
#### 2_zshFinetune.sh
##### 如果沒有安裝 zsh 此腳本可跳過
安裝：
- themes powerlevel10k
- zsh-completions
- zsh-autosuggestions
- zsh-syntax-highlighting  
#### 3_gitSetting.sh
##### 使用前請先登vpn
docker login 
git config name & email
ssh-keygen 
#### 4_gitCloneInu.sh
##### 批次clone專案的shell script，以下為目前有clone到的專案
##### 可另外參考： https://books.grandsys.com:6008/books/26e35/page/cloneshell-script
"iNu/inu-sync-adapter"
"iNu/inu-qa-service"
"iNu/inu-auth-service"
"iNu/inu-qa-frontend"
"iNu/inu-label-service"
"iNu/inu-common-service"
"iNu/inu-tokenizer"
"iNu/inu-stt-adapter"
"iNu/inu-e2e-tester"
"iNu/customized/cathay/helm-cathay"
"iNu/customized/sinopac/helm-sinopac"
"iNu/customized/esun/esun-helmfile"
"iNu/inu-utility"