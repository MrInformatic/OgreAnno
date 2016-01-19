/* 
 * File:   Map.h
 * Author: philipp
 *
 * Created on 17. Januar 2016, 17:44
 */

#include "Tile/Tile.h"
#include "MapObject/MapObject.h"
#include "OGRE/Ogre.h"
#ifndef MAP_H
#define	MAP_H

class Map : public Ogre::MovableObject{
public:
    Map(int sizex,int sizey);
    virtual ~Map();
private:
    Tile* tiles[][];
    MapObject* objects[];
};

#endif	/* MAP_H */

