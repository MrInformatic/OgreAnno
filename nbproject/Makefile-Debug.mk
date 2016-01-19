#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux-x86
CND_DLIB_EXT=so
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/Source/Map/Map.o \
	${OBJECTDIR}/Source/Map/MapObject/Building.o \
	${OBJECTDIR}/Source/Map/MapObject/MapObject.o \
	${OBJECTDIR}/Source/Map/Object/Object.o \
	${OBJECTDIR}/Source/Map/Object/Road.o \
	${OBJECTDIR}/Source/Map/Object/Tree.o \
	${OBJECTDIR}/Source/Map/ObjectManager/ObjectManager.o \
	${OBJECTDIR}/Source/Map/Tile/LandTile.o \
	${OBJECTDIR}/Source/Map/Tile/TileObject/Building.o \
	${OBJECTDIR}/Source/Map/Tile/TileObject/BuildingTileObject.o \
	${OBJECTDIR}/Source/Map/Tile/TileObject/TileObject.o \
	${OBJECTDIR}/Source/Map/Tile/TileObject/Tree.o \
	${OBJECTDIR}/Source/Map/Tile/WaterTile.o \
	${OBJECTDIR}/Source/Map/Tiles/Tile.o \
	${OBJECTDIR}/Source/main.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=-L/usr/local/lib -lOgreMain -lboost_system -lOIS

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/ogreanno

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/ogreanno: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/ogreanno ${OBJECTFILES} ${LDLIBSOPTIONS}

${OBJECTDIR}/Source/Map/Map.o: Source/Map/Map.cpp 
	${MKDIR} -p ${OBJECTDIR}/Source/Map
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Source/Map/Map.o Source/Map/Map.cpp

${OBJECTDIR}/Source/Map/MapObject/Building.o: Source/Map/MapObject/Building.cpp 
	${MKDIR} -p ${OBJECTDIR}/Source/Map/MapObject
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Source/Map/MapObject/Building.o Source/Map/MapObject/Building.cpp

${OBJECTDIR}/Source/Map/MapObject/MapObject.o: Source/Map/MapObject/MapObject.cpp 
	${MKDIR} -p ${OBJECTDIR}/Source/Map/MapObject
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Source/Map/MapObject/MapObject.o Source/Map/MapObject/MapObject.cpp

${OBJECTDIR}/Source/Map/Object/Object.o: Source/Map/Object/Object.cpp 
	${MKDIR} -p ${OBJECTDIR}/Source/Map/Object
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Source/Map/Object/Object.o Source/Map/Object/Object.cpp

${OBJECTDIR}/Source/Map/Object/Road.o: Source/Map/Object/Road.cpp 
	${MKDIR} -p ${OBJECTDIR}/Source/Map/Object
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Source/Map/Object/Road.o Source/Map/Object/Road.cpp

${OBJECTDIR}/Source/Map/Object/Tree.o: Source/Map/Object/Tree.cpp 
	${MKDIR} -p ${OBJECTDIR}/Source/Map/Object
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Source/Map/Object/Tree.o Source/Map/Object/Tree.cpp

${OBJECTDIR}/Source/Map/ObjectManager/ObjectManager.o: Source/Map/ObjectManager/ObjectManager.cpp 
	${MKDIR} -p ${OBJECTDIR}/Source/Map/ObjectManager
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Source/Map/ObjectManager/ObjectManager.o Source/Map/ObjectManager/ObjectManager.cpp

${OBJECTDIR}/Source/Map/Tile/LandTile.o: Source/Map/Tile/LandTile.cpp 
	${MKDIR} -p ${OBJECTDIR}/Source/Map/Tile
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Source/Map/Tile/LandTile.o Source/Map/Tile/LandTile.cpp

${OBJECTDIR}/Source/Map/Tile/TileObject/Building.o: Source/Map/Tile/TileObject/Building.cpp 
	${MKDIR} -p ${OBJECTDIR}/Source/Map/Tile/TileObject
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Source/Map/Tile/TileObject/Building.o Source/Map/Tile/TileObject/Building.cpp

${OBJECTDIR}/Source/Map/Tile/TileObject/BuildingTileObject.o: Source/Map/Tile/TileObject/BuildingTileObject.cpp 
	${MKDIR} -p ${OBJECTDIR}/Source/Map/Tile/TileObject
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Source/Map/Tile/TileObject/BuildingTileObject.o Source/Map/Tile/TileObject/BuildingTileObject.cpp

${OBJECTDIR}/Source/Map/Tile/TileObject/TileObject.o: Source/Map/Tile/TileObject/TileObject.cpp 
	${MKDIR} -p ${OBJECTDIR}/Source/Map/Tile/TileObject
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Source/Map/Tile/TileObject/TileObject.o Source/Map/Tile/TileObject/TileObject.cpp

${OBJECTDIR}/Source/Map/Tile/TileObject/Tree.o: Source/Map/Tile/TileObject/Tree.cpp 
	${MKDIR} -p ${OBJECTDIR}/Source/Map/Tile/TileObject
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Source/Map/Tile/TileObject/Tree.o Source/Map/Tile/TileObject/Tree.cpp

${OBJECTDIR}/Source/Map/Tile/WaterTile.o: Source/Map/Tile/WaterTile.cpp 
	${MKDIR} -p ${OBJECTDIR}/Source/Map/Tile
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Source/Map/Tile/WaterTile.o Source/Map/Tile/WaterTile.cpp

${OBJECTDIR}/Source/Map/Tiles/Tile.o: Source/Map/Tiles/Tile.cpp 
	${MKDIR} -p ${OBJECTDIR}/Source/Map/Tiles
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Source/Map/Tiles/Tile.o Source/Map/Tiles/Tile.cpp

${OBJECTDIR}/Source/main.o: Source/main.cpp 
	${MKDIR} -p ${OBJECTDIR}/Source
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/include -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Source/main.o Source/main.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/ogreanno

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
