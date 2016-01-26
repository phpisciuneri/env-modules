-- local vars
local pkgName     = myModuleName()
local fullVersion = myModuleVersion()
local hierA       = hierarchyA( myModuleFullName(), 1 )
local compilerD   = hierA[1]:gsub( "/", "-" ):gsub( "%.", "_" )
local base        = pathJoin( "/opt/apps", compilerD, pkgName, fullVersion )

-- set environment variables
setenv( "GTEST_ROOT", base )

-- add to path
prepend_path( "LD_LIBRARY_PATH", pathJoin( base, "lib" ) )
prepend_path( "INCLUDE",         pathJoin( base, "include" ) )

-- description
whatis( "Name:        " .. myModuleName() )
whatis( "Version:     " .. myModuleVersion() )
whatis( "Description: " .. "Google Test: Google's C++ test framework" )
whatis( "URL:         " .. "https://github.com/google/googletest" )