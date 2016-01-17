/* 
 * File:   Map.h
 * Author: philipp
 *
 * Created on 17. Januar 2016, 17:44
 */

#include "OGRE/Ogre.h"
#include "OGRE/OgreException.h"
#include "OGRE/OgreRoot.h"
#include "OIS/OIS.h"
#ifndef MAIN_H
#define MAIN_H

class Game : public Ogre::FrameListener, public Ogre::WindowEventListener, public OIS::KeyListener, public OIS::MouseListener
{
public:
    Game();
    virtual ~Game();
protected:
    virtual bool frameRenderingQueued(const Ogre::FrameEvent& evt);
    virtual bool keyPressed( const OIS::KeyEvent &arg );
    virtual bool keyReleased( const OIS::KeyEvent &arg );
    virtual bool mouseMoved( const OIS::MouseEvent &arg );
    virtual bool mousePressed( const OIS::MouseEvent &arg, OIS::MouseButtonID id );
    virtual bool mouseReleased( const OIS::MouseEvent &arg, OIS::MouseButtonID id );
    virtual void windowResized(Ogre::RenderWindow* rw);
    virtual void windowClosed(Ogre::RenderWindow* rw);
private:
    Ogre::Root* root;
    Ogre::RenderWindow* window;
    Ogre::SceneManager* scene;
    Ogre::Viewport* viewport;
    Ogre::Camera* camera;
    Ogre::Light* light;
    Ogre::SceneNode* cameraNode;

    OIS::Keyboard* keyboard;
    OIS::Mouse* mouse;
    OIS::InputManager* im;

    bool running = true;

    void setup();
    void dispose();
};

#endif /* MAIN_H */



