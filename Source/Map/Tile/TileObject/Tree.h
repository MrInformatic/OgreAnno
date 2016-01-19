/* 
 * File:   Tree.h
 * Author: philipp
 *
 * Created on 19. Januar 2016, 16:24
 */

#include "TileObject.h"

#ifndef TREE_H
#define	TREE_H

class Tree : public TileObject{
public:
    Tree();
    Tree(const Tree& orig);
    virtual ~Tree();
private:

};

#endif	/* TREE_H */

