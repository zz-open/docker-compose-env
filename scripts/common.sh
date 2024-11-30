#!/usr/bin/env bash

set -eu set -o pipefail

# common.sh 所在目录绝对路径
CommonScriptFileDirPath="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# 项目根路径
ProjectRootPath=$(cd ${CommonScriptFileDirPath}/..;pwd)

# 引入公共 .env
EnvPath=${CommonScriptFileDirPath}/../conf/mk/.env.common
source ${EnvPath}
# ExampleEnvPath=${ProjectRootPath}/.env.example

# envs=(${EnvPath} ${ExampleEnvPath})
# for _file in ${envs[@]}
# do
#   if [ -e "${_file}" ]; then
#     echo -e "引入 ${_file} \n"
#     source "${_file}"
#   fi
# done

# 工具函数 =========================================
commonTest(){
    echo -e "CommonScriptFileDirPath: ${CommonScriptFileDirPath} \n"
    echo -e "ProjectRootPath: ${ProjectRootPath} \n"
    echo -e "EnvPath: ${EnvPath} \n"


    echo -e "FRONTEND_NETWORK_NAME: ${FRONTEND_NETWORK_NAME} \n"
    echo -e "BACKEND_SUBNET: ${BACKEND_SUBNET} \n"
}

commonTest