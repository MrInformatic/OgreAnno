/* 
 * File:   Tile.h
 * Author: philipp
 *
 * Created on 17. Januar 2016, 17:55
 */

#include "TileObject/TileObject.h"
#ifndef TILE_H
#define	TILE_H

class Tile {
public:
    Tile();
    Tile(const Tile& orig);
    virtual ~Tile();
private:
    int height;
    int type;
    TileObject object;
};

#endif	/* TILE_H */

