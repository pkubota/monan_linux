#!/bin/bash -x

function VarEnvironmental() {
    local  mensage=$1
    echo   ${mensage}
    export USER_COMPILER=${USER_COMPILER}
    export DIR_HOME=`cd ..;pwd`
    export SUBMIT_HOME=`cd ..;pwd`
    export DIRMONAN_PRE_SCR=${SUBMIT_HOME}   # will override scripts at MONAN
    export DIRMONAN_MODEL_SCR=${DIR_HOME}    # will override scripts at MONAN
    export DIRDADOS=/mnt/beegfs/monan/dados/MONAN_v0.1.0 
    export path_mets=/home/paulo_kubota/lib/lib_${USER_COMPILER}/metis/bin

    export NCARG_ROOT=/home/paulo_kubota/anaconda3/envs/ncl_stable
    export NCARG_BIN=${NCARG_ROOT}/bin

    export NCAR_Tools=${SUBMIT_HOME}/pre/sources/${USER_COMPILER}/MPAS-Tools
    export NCAR_MPAS=${NCAR_Tools}/MPAS-Limited-Area
    export version_pos=convert_mpas_v0.1.0_egeon.${USER_COMPILER}940
    export version_model=MONAN-Model_v1.0.0_egeon.${USER_COMPILER}940
    export SLURM='NO'
    export GREEN='\033[1;32m'  # Green
    export RED='\033[1;31m'    # Red
    export NC='\033[0m'        # No Color
}
