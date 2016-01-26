-- local vars
local pkg = pathJoin( "/opt/apps", myModuleName(), myModuleVersion() )

-- set environment variables
local lh = "127.0.0.1"
setenv( "SPARK_HOME",      pkg )
setenv( "SPARK_MASTER_IP", lh  )
setenv( "SPARK_LOCAL_IP",  lh  )

-- description
whatis("Name:        " .. myModuleName() )
whatis("Version:     " .. myModuleVersion() )
whatis("Description: " .. "Apache Spark is a fast and general engine for large-scale data processing" )
whatis("URL:         " .. "http://spark.apache.org" )
