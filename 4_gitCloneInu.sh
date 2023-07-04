#! /bin/bash

# Color
RED='\033[0;31m'
GREEN='\033[0;32m'
BlinkRED='\033[0;5;31m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color

# 讀取所有專案名稱，可依照自己需求增加
allProjSet=("iNu/inu-sync-adapter" "iNu/inu-qa-service" "iNu/inu-auth-service" "iNu/inu-qa-frontend" "iNu/inu-label-service" "iNu/inu-common-service" "iNu/inu-tokenizer" "iNu/inu-stt-adapter" "iNu/inu-e2e-tester" "iNu/customized/cathay/helm-cathay" "iNu/customized/sinopac/helm-sinopac" "iNu/customized/esun/esun-helmfile" "iNu/inu-utility")


# 現所在路徑
ExecDir="$(cd $(dirname "$0") && pwd)"

# 完成pull 到最新master的專案
declare -a CompletedPJ

# 未完成pull 到最新master的專案
declare -a UnCompletedPJ

# 輪詢所有專案
for key in ${!allProjSet[*]}
do
    # 返回Workspace
    cd $ExecDir

	pjName="${allProjSet[$key]}"

	if [ ! -d "$pjName" ]; then
		echo -e "${GREEN} $pjName not exists try to clone one${NC}"
	    # 當專案不存在, 從遠端 clone 下來
		git clone ssh://git@rd.grandsys.com:8687/$pjName.git
		CompletedPJ+=($pjName)
	else
	    # 進入專案
	    cd $pjName
        NowPath=$(pwd)
		echo -e "${GREEN}In $NowPath try to pull master${NC}"

        # 同步master到最新版本
		branch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
		if [ "$branch" == "master" ]; then
		    git pull -p origin master

			CompletedPJ+=($pjName)
		else
		    if [ -z "$(git status --porcelain)" ]; then 
  		        # Working directory clean
				git checkout master
				git pull -p origin master
				git checkout $branch

                CompletedPJ+=($pjName)
		    else 
			    echo -e "${RED}$pjName has some changed not staged. skip.${NC}"
  		        # Uncommitted changes
				UnCompletedPJ+=($pjName)
		    fi
		fi
	fi
done

echo -e "${YELLOW}Below project is on the lastest master version now${NC}"
for i in "${CompletedPJ[*]}"; do echo "$i"; done

echo -e "${YELLOW}Below project has some changed not staged${NC}"
for i in "${UnCompletedPJ[*]}"; do echo -e "${RED}$i${NC}"; done