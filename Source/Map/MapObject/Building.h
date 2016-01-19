/* 
 * File:   Building.h
 * Author: philipp
 *
 * Created on 19. Januar 2016, 16:28
 */

#include "MapObject.h"

#ifndef BUILDING_H
#define	BUILDING_H

class Building : public MapObject{
public:
    Building();
    Building(const Building& orig);
    virtual ~Building();
private:

};

#endif	/* BUILDING_H */

