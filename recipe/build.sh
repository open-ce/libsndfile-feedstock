#!/bin/bash -ex
# ***************************************************************** 
#                                                              
# Licensed Materials - Property of IBM                            
#                                                                   
# (C) Copyright IBM Corp. 2020. All Rights Reserved.                
#                                                                  
# US Government Users Restricted Rights - Use, duplication or      
# disclosure restricted by GSA ADP Schedule Contract with IBM Corp. 
#                                                                  
# *****************************************************************

if [ "$(uname)" == "Linux" ]
then
   export LDFLAGS="$LDFLAGS -Wl,-rpath-link,${PREFIX}/lib"
fi

./configure prefix=$PREFIX
make -j${CPU_COUNT}
make install
