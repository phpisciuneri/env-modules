-- local vars
local pkgName    = myModuleName()
local pkgVersion = myModuleVersion()
local pkgNameVer = myModuleFullName()

local hierA      = hierarchyA( pkgNameVer,2 )
local mpiD       = hierA[1]:gsub( "/","-" ):gsub( "%.","_" )
local compilerD  = hierA[2]:gsub( "/","-" ):gsub( "%.","_" )
local base       = pathJoin( "/opt/apps", compilerD, mpiD, pkgNameVer )

-- environment vars
setenv( "PARMETIS_ROOT", base )

-- add to path
prepend_path( "PATH",              pathJoin( base, "bin" ) )
prepend_path( "INCLUDE",           pathJoin( base, "include" ) )
prepend_path( "LD_LIBRARY_PATH",   pathJoin( base, "lib" ) )

-- description
whatis( "Name:        " .. pkgName )
whatis( "Version:     " .. pkgVersion )
whatis( "URL:         " .. "http://glaros.dtc.umn.edu/gkhome/metis/parmetis/overview" )
whatis( "Description: " .. "ParMETIS - Parallel Graph Partitioning and Fill-Reducing Matrix Ordering."  )