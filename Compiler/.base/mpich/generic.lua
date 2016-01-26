-- local vars
local pkgNameVer  = myModuleFullName()
local pkgName     = myModuleName()
local fullVersion = myModuleVersion()
local pkgV        = fullVersion:match('(%d+%.%d+)%.?')

local hierA       = hierarchyA( pkgNameVer, 1 )
local compilerV   = hierA[1]
local compilerD   = compilerV:gsub( "/", "-" ):gsub( "%.", "_" )
local base        = pathJoin( "/opt/apps", compilerD, pkgName, fullVersion )
local mpath       = pathJoin( "/opt/apps/modulefiles/MPI", compilerV, pkgName, pkgV ) 

-- environment vars
setenv( "MPI_ROOT", base )

-- add to path
prepend_path( "MODULEPATH",      mpath )
prepend_path( "PATH",            pathJoin( base, "bin" ) )
prepend_path( "LD_LIBRARY_PATH", pathJoin( base, "lib" ) )
prepend_path( "MANPATH",         pathJoin( base, "share/man" ) )
prepend_path( "INCLUDE",         pathJoin( base, "include" ) )

-- description
whatis( "Name:        " .. myModuleName() )
whatis( "Version:     " .. myModuleVersion() )
whatis( "Description: " .. "MPICH: A high performance and widely portable implementation of the Message Passing Interface (MPI) standard" )
whatis( "URL:         " .. "http://www.mpich.org" )