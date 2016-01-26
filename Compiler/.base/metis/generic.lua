-- local vars
local pkgNameVer  = myModuleFullName()
local pkgName     = myModuleName()
local fullVersion = myModuleVersion()

local hierA       = hierarchyA( pkgNameVer, 1 )
local compilerV   = hierA[1]
local compilerD   = compilerV:gsub( "/", "-" ):gsub( "%.", "_" )
local base        = pathJoin( "/opt/apps", compilerD, pkgName, fullVersion )

-- environment vars
setenv( "METIS_ROOT", base )

-- add to path
prepend_path( "PATH",              pathJoin( base, "bin" ) )
prepend_path( "LD_LIBRARY_PATH",   pathJoin( base, "lib" ) )
prepend_path( "INCLUDE",           pathJoin( base, "include" ) )
prepend_path( "CMAKE_PREFIX_PATH", base )

-- description
whatis( "Name:        " .. myModuleName() )
whatis( "Version:     " .. myModuleVersion() )
whatis( "Description: " .. "METIS: Serial Graph Partitioning and Fill-Reducing Matrix Ordering" )
whatis( "URL:         " .. "http://glaros.dtc.umn.edu/gkhome/metis/metis/overview" )