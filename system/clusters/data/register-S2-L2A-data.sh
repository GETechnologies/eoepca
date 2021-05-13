#!/usr/bin/env bash

ORIG_DIR="$(pwd)"
cd "$(dirname "$0")"
BIN_DIR="$(pwd)"

trap "cd '${ORIG_DIR}'" EXIT

kubectl -n rm exec --stdin --tty data-access-redis-master-0 -- redis-cli lpush register_queue EODATA/Sentinel-2/MSI/L2A/2020/09/02/S2B_MSIL2A_20200902T090559_N0214_R050_T34SFH_20200902T113910.SAFE/ EODATA/Sentinel-2/MSI/L2A/2020/09/02/S2B_MSIL2A_20200902T090559_N0214_R050_T35SLB_20200902T113910.SAFE/ EODATA/Sentinel-2/MSI/L2A/2020/09/02/S2B_MSIL2A_20200902T090559_N0214_R050_T34SGJ_20200902T113910.SAFE/ EODATA/Sentinel-2/MSI/L2A/2020/09/02/S2B_MSIL2A_20200902T090559_N0214_R050_T34SFJ_20200902T113910.SAFE/ EODATA/Sentinel-2/MSI/L2A/2020/09/02/S2B_MSIL2A_20200902T090559_N0214_R050_T34SGG_20200902T113910.SAFE/ EODATA/Sentinel-2/MSI/L2A/2020/09/02/S2B_MSIL2A_20200902T090559_N0214_R050_T34SGH_20200902T113910.SAFE/ EODATA/Sentinel-2/MSI/L2A/2020/09/02/S2B_MSIL2A_20200902T090559_N0214_R050_T34SFF_20200902T113910.SAFE/ EODATA/Sentinel-2/MSI/L2A/2020/09/02/S2B_MSIL2A_20200902T090559_N0214_R050_T35SKA_20200902T113910.SAFE/ EODATA/Sentinel-2/MSI/L2A/2020/09/02/S2B_MSIL2A_20200902T090559_N0214_R050_T34SFG_20200902T113910.SAFE/ EODATA/Sentinel-2/MSI/L2A/2020/09/02/S2B_MSIL2A_20200902T090559_N0214_R050_T35SKB_20200902T113910.SAFE/ EODATA/Sentinel-2/MSI/L2A/2020/09/02/S2B_MSIL2A_20200902T090559_N0214_R050_T34SGF_20200902T113910.SAFE/ EODATA/Sentinel-2/MSI/L2A/2020/09/02/S2B_MSIL2A_20200902T090559_N0214_R050_T35SLC_20200902T113910.SAFE/ EODATA/Sentinel-2/MSI/L2A/2020/09/02/S2B_MSIL2A_20200902T090559_N0214_R050_T35SLD_20200902T113910.SAFE/ EODATA/Sentinel-2/MSI/L2A/2020/09/02/S2B_MSIL2A_20200902T090559_N0214_R050_T35SKD_20200902T113910.SAFE/ EODATA/Sentinel-2/MSI/L2A/2020/09/02/S2B_MSIL2A_20200902T090559_N0214_R050_T35SLA_20200902T113910.SAFE/ EODATA/Sentinel-2/MSI/L2A/2020/09/02/S2B_MSIL2A_20200902T090559_N0214_R050_T35SKC_20200902T113910.SAFE/ EODATA/Sentinel-2/MSI/L2A/2020/09/03/S2A_MSIL2A_20200903T093041_N0214_R136_T34SDH_20200903T120759.SAFE/ EODATA/Sentinel-2/MSI/L2A/2020/09/03/S2A_MSIL2A_20200903T093041_N0214_R136_T34SDF_20200903T120759.SAFE/ EODATA/Sentinel-2/MSI/L2A/2020/09/03/S2A_MSIL2A_20200903T093041_N0214_R136_T34SEJ_20200903T120759.SAFE/ EODATA/Sentinel-2/MSI/L2A/2020/09/03/S2A_MSIL2A_20200903T093041_N0214_R136_T34SDG_20200903T120759.SAFE/ EODATA/Sentinel-2/MSI/L2A/2020/09/03/S2A_MSIL2A_20200903T093041_N0214_R136_T34SEH_20200903T120759.SAFE/ EODATA/Sentinel-2/MSI/L2A/2020/09/03/S2A_MSIL2A_20200903T093041_N0214_R136_T34SDJ_20200903T120759.SAFE/ EODATA/Sentinel-2/MSI/L2A/2020/09/04/S2A_MSIL2A_20200904T085601_N0214_R007_T35SLA_20200904T120744.SAFE/ EODATA/Sentinel-2/MSI/L2A/2020/09/04/S2A_MSIL2A_20200904T085601_N0214_R007_T35SLB_20200904T120744.SAFE/ EODATA/Sentinel-2/MSI/L2A/2020/09/04/S2A_MSIL2A_20200904T085601_N0214_R007_T35SKA_20200904T120744.SAFE/ EODATA/Sentinel-2/MSI/L2A/2020/09/05/S2B_MSIL2A_20200905T092029_N0214_R093_T34SDJ_20200905T113748.SAFE/ EODATA/Sentinel-2/MSI/L2A/2020/09/05/S2B_MSIL2A_20200905T092029_N0214_R093_T34SGG_20200905T113748.SAFE/ EODATA/Sentinel-2/MSI/L2A/2020/09/05/S2B_MSIL2A_20200905T092029_N0214_R093_T34SDG_20200905T113748.SAFE/ EODATA/Sentinel-2/MSI/L2A/2020/09/05/S2B_MSIL2A_20200905T092029_N0214_R093_T34SDH_20200905T113748.SAFE/ EODATA/Sentinel-2/MSI/L2A/2020/09/05/S2B_MSIL2A_20200905T092029_N0214_R093_T34SDF_20200905T113748.SAFE/ EODATA/Sentinel-2/MSI/L2A/2020/09/05/S2B_MSIL2A_20200905T092029_N0214_R093_T35SKD_20200905T113748.SAFE/ EODATA/Sentinel-2/MSI/L2A/2020/09/05/S2B_MSIL2A_20200905T092029_N0214_R093_T35SKC_20200905T113748.SAFE/ EODATA/Sentinel-2/MSI/L2A/2020/09/05/S2B_MSIL2A_20200905T092029_N0214_R093_T34SEG_20200905T113748.SAFE/ EODATA/Sentinel-2/MSI/L2A/2020/09/05/S2B_MSIL2A_20200905T092029_N0214_R093_T34SEJ_20200905T113748.SAFE/ EODATA/Sentinel-2/MSI/L2A/2020/09/05/S2B_MSIL2A_20200905T092029_N0214_R093_T34SEH_20200905T113748.SAFE/ EODATA/Sentinel-2/MSI/L2A/2020/09/05/S2B_MSIL2A_20200905T092029_N0214_R093_T34SFJ_20200905T113748.SAFE/ EODATA/Sentinel-2/MSI/L2A/2020/09/05/S2B_MSIL2A_20200905T092029_N0214_R093_T34SGJ_20200905T113748.SAFE/ EODATA/Sentinel-2/MSI/L2A/2020/09/05/S2B_MSIL2A_20200905T092029_N0214_R093_T34SEF_20200905T113748.SAFE/ EODATA/Sentinel-2/MSI/L2A/2020/09/05/S2B_MSIL2A_20200905T092029_N0214_R093_T34SFF_20200905T113748.SAFE/ EODATA/Sentinel-2/MSI/L2A/2020/09/05/S2B_MSIL2A_20200905T092029_N0214_R093_T34SFG_20200905T113748.SAFE/ EODATA/Sentinel-2/MSI/L2A/2020/09/05/S2B_MSIL2A_20200905T092029_N0214_R093_T34SGH_20200905T113748.SAFE/ EODATA/Sentinel-2/MSI/L2A/2020/09/05/S2B_MSIL2A_20200905T092029_N0214_R093_T34SFH_20200905T113748.SAFE/ EODATA/Sentinel-2/MSI/L2A/2020/09/07/S2A_MSIL2A_20200907T090601_N0214_R050_T34SGF_20200907T122358.SAFE/ EODATA/Sentinel-2/MSI/L2A/2020/09/07/S2A_MSIL2A_20200907T090601_N0214_R050_T35SKC_20200907T122358.SAFE/ EODATA/Sentinel-2/MSI/L2A/2020/09/07/S2A_MSIL2A_20200907T090601_N0214_R050_T34SFF_20200907T122358.SAFE/ EODATA/Sentinel-2/MSI/L2A/2020/09/07/S2A_MSIL2A_20200907T090601_N0214_R050_T35SLC_20200907T122358.SAFE/ EODATA/Sentinel-2/MSI/L2A/2020/09/07/S2A_MSIL2A_20200907T090601_N0214_R050_T35SKD_20200907T122358.SAFE/ EODATA/Sentinel-2/MSI/L2A/2020/09/07/S2A_MSIL2A_20200907T090601_N0214_R050_T35SLB_20200907T122358.SAFE/ EODATA/Sentinel-2/MSI/L2A/2020/09/07/S2A_MSIL2A_20200907T090601_N0214_R050_T35SLD_20200907T122358.SAFE/