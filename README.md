### 此為協助全新 ubuntu 22.04 LTS 環境安裝軟體或是設定調校的腳本
若無其他需求請依照檔案名稱的依序執行之。  
#### 0_update.sh
##### 更新套件，執行完成後會重開機，請記得連結到網路再執行否則會直接重開機。
snap refresh  
apt update  
apt upgrade  

#### 1_installTools.sh
##### 以下為將會安裝的軟體清單，目前版本還沒有實做 option 的功能，故請依自身需求做增減。
安裝 chrome  
安裝 openlens 6.2.0
- 更新的版本部份功能(如看log)有被移除，較不方便  
安裝 golang 1.20.5  
安裝 docker  
- 因有修改到群組的部份，需要做使用者重新登入之後得生效  
安裝 vscode  
安裝 teams-for-linux  
安裝 postman  
安裝 node, npm 及版本管理器 n  .
- 安裝完後應該是 node: 18.15, node: 9.5
安裝 dbeaver  
安裝 telegram  
安裝 htop  
安裝 spotify  
##### 以下會因相依套件而有 error 產生，處理相依套件後會再次安裝便可成功  
安裝 forticlient  
安裝 mongo compass  
安裝 filezilla  
安裝 zsh  
#### 2_zshFinetune.sh
##### zsh 的細部設定，如果沒有安裝，此腳本可跳過
themes powerlevel10k  
zsh-completions  
- 它包含了大量常見命令、工具和應用的自動完成定義，按下 Tab 键，會顯示可用的選項
zsh-autosuggestions  
- 當你輸入命令時，它會根據 history，以及當前輸入的內容，提供相應的命令建議  
zsh-syntax-highlighting    
- 它會根據命令的語法規則和結構，將不同的部分以不同的顏色突出顯示
#### 3_gitSetting.sh
##### 使用前請先登 vpn
docker login   
git config name & email  
ssh-keygen   
#### 4_gitCloneInu.sh
### ！！！此腳本使用 bash 指令方可正確執行！！！
##### 批次clone專案的shell script，以下為目前有clone到的專案
##### 可另外參考： https://books.grandsys.com:6008/books/26e35/page/cloneshell-script
iNu/inu-sync-adapter  
iNu/inu-qa-service  
iNu/inu-auth-service  
iNu/inu-qa-frontend  
iNu/inu-label-service  
iNu/inu-common-service  
iNu/inu-tokenizer  
iNu/inu-stt-adapter  
iNu/inu-e2e-tester  
iNu/customized/cathay/helm-cathay  
iNu/customized/sinopac/helm-sinopac  
iNu/customized/esun/esun-helmfile  
iNu/inu-utility  
