-- local vars
local pkg = pathJoin( "/opt/apps", myModuleName(), myModuleVersion() )

-- add to path
prepend_path( "PATH",            pathJoin( pkg, "bin" ) )
prepend_path( "LD_LIBRARY_PATH", pathJoin( pkg, "lib" ) )
prepend_path( "LD_LIBRARY_PATH", pathJoin( pkg, "lib64" ) )
prepend_path( "MANPATH",         pathJoin( pkg, "man" ) )
prepend_path( "INCLUDE",         pathJoin( pkg, "include" ) )

-- setup modulepath for packages built by this compiler
local mroot = os.getenv( "MODULEPATH_ROOT" )
local mdir  = pathJoin( mroot, "Compiler/gcc", "5.2" )
prepend_path( "MODULEPATH", mdir )

-- description
whatis( "Name:        " .. myModuleName() )
whatis( "Version:     " .. myModuleVersion() )
whatis( "Category:    " .. "compiler" )
whatis( "Description: " .. "The GNU Compiler Collection" )
whatis( "URL:         " .. "http://gcc.gnu.org" )