/**
* main.cpp
*
* Copyright (c) 2001-2002 Daniel Horn
* Copyright (c) 2002-2019 pyramid3d and other Vega Strike Contributors
* Copyright (c) 2019-2021 Stephen G. Tuggy, and other Vega Strike Contributors
*
* https://github.com/vegastrike/Vega-Strike-Engine-Source
*
* This file is part of Vega Strike.
*
* Vega Strike is free software: you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation, either version 2 of the License, or
* (at your option) any later version.
*
* Vega Strike is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with Vega Strike. If not, see <https://www.gnu.org/licenses/>.
*/

#include "PrecompiledHeaders/Converter.h"
#include "Converter.h"

#if defined (_WIN32) && !defined (__CYGWIN__)
        #define PATH_SEPARATORS "/\\"
#else
        #define PATH_SEPARATORS "/"
#endif

int main( int argc, char **argv )
{
    //executable's path
    std::string rootpath = argv[0];
    std::string::size_type seppos = rootpath.find_last_of( PATH_SEPARATORS );
    if (seppos == std::string::npos)
        rootpath = ".";

    else
        rootpath.erase( seppos );
    Converter::getRootPath() = rootpath;
    return Converter::parseParams( argc-1, argv+1 );
}

