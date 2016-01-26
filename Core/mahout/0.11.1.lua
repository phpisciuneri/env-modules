-- local vars
local pkg = pathJoin( "/opt/apps", myModuleName(), myModuleVersion() )

-- set environment variables
setenv( "MAHOUT_HOME",  pkg )
setenv( "MAHOUT_LOCAL", "true" )

-- description
whatis( "Name:        " .. myModuleName() )
whatis( "Version:     " .. myModuleVersion() )
whatis( "Description: " .. "Apache Mahout - an environment for scalable performant machine learning applications" )
whatis( "URL:         " .. "http://mahout.apache.org" )