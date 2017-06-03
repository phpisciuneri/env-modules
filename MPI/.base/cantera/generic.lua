-- local vars
local pkgName    = myModuleName()
local pkgVersion = myModuleVersion()
local pkgNameVer = myModuleFullName()

local hierA      = hierarchyA( pkgNameVer,2 )
local mpiD       = hierA[1]:gsub( "/","-" ):gsub( "%.","_" )
local compilerD  = hierA[2]:gsub( "/","-" ):gsub( "%.","_" )
local base       = pathJoin( "/opt/apps", compilerD, mpiD, pkgNameVer )

-- environment vars
setenv( "CANTERA_ROOT", base )

-- add to path
prepend_path( "INCLUDE",           pathJoin( base, "include" ) )
prepend_path( "LD_LIBRARY_PATH",   pathJoin( base, "lib" ) )
prepend_path( "DYLD_LIBRARY_PATH", pathJoin( base, "lib" ) )
prepend_path( "CMAKE_PREFIX_PATH", base )

-- description
whatis( "Name:        " .. pkgName )
whatis( "Version:     " .. pkgVersion )
whatis( "URL:         " .. "http://www.cantera.org/docs/sphinx/html/index.html" )
whatis( "Description: " .. "Cantera: Chemical Kinetics, Thermodynamics, Transport Processes"  )