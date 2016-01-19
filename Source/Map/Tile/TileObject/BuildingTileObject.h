/* 
 * File:   BuildingTileObject.h
 * Author: philipp
 *
 * Created on 19. Januar 2016, 16:15
 */

#include "TileObject.h"

#ifndef BUILDINGTILEOBJECT_H
#define	BUILDINGTILEOBJECT_H

class BuildingTileObject : public TileObject{
public:
    BuildingTileObject();
    BuildingTileObject(const BuildingTileObject& orig);
    virtual ~BuildingTileObject();
private:

};

#endif	/* BUILDINGTILEOBJECT_H */

