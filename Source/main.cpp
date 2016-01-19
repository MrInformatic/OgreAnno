/* 
 * File:   Tile.cpp
 * Author: philipp
 * 
 * Created on 17. Januar 2016, 17:55
 */

#include "OGRE/Ogre.h"
#include "OGRE/OgreException.h"
#include "OGRE/OgreRoot.h"
#include "main.h"
#include <iostream>
#include <cmath>

using namespace std;

Game* game;

Game::Game(){
    setup();
}

Game::~Game(){
    dispose();
}

void Game::setup(){
    root = new Ogre::Root("./plugins.cfg","ogre.cfg","ogre.log");
    if(!root->showConfigDialog())
    return;
    window = root->initialise(true);

    scene = root->createSceneManager(Ogre::ST_GENERIC);
    scene->setAmbientLight(Ogre::ColourValue(0.0,0.1,0.1));

    camera = scene->createCamera("MainCamera");
    camera->setNearClipDistance(0.01);
    camera->setFarClipDistance(100);
    camera->setPosition(0,0,-10);
    camera->lookAt(0,0,0);

    cameraNode = scene->getRootSceneNode()->createChildSceneNode();
    cameraNode->attachObject(camera);

    viewport = window->addViewport(camera);
    viewport->setClearEveryFrame(true);
    camera->setAspectRatio(Ogre::Real(viewport->getActualWidth()) / Ogre::Real(viewport->getActualHeight()));

    light = scene->createLight("DirectionalLight");
    light->setDirection(-1,-1,-1);
    light->setPosition(-100,100,-100);
    light->setDiffuseColour(1.0,1.0,0.8);

    Ogre::TextureManager::getSingleton().setDefaultNumMipmaps(5);
    Ogre::ResourceGroupManager::getSingletonPtr()->createResourceGroup("Assets");
    Ogre::ResourceGroupManager::getSingletonPtr()->addResourceLocation("./Assets","FileSystem","Assets",true);
    Ogre::ResourceGroupManager::getSingletonPtr()->initialiseResourceGroup("Assets");
    Ogre::ResourceGroupManager::getSingletonPtr()->loadResourceGroup("Assets");

    size_t windowHnd = 0;
    window->getCustomAttribute("WINDOW",&windowHnd);
    std::string windowHandleAsString = "";
    std::stringstream windowHndStr;
    windowHndStr << windowHnd;
    windowHandleAsString = windowHndStr.str();
    OIS::ParamList iSpecialParameters;
    iSpecialParameters.insert(std::make_pair(std::string("WINDOW"),windowHandleAsString));
    im = OIS::InputManager::createInputSystem(iSpecialParameters);
    keyboard = static_cast<OIS::Keyboard*>(im->createInputObject(OIS::OISKeyboard,true));
    keyboard->setEventCallback(this);
    mouse = static_cast<OIS::Mouse*>(im->createInputObject(OIS::OISMouse,true));
    mouse->setEventCallback(this);
    root->addFrameListener(this);

    root->startRendering();
}

void Game::dispose(){
    windowClosed(window);
    delete root;
    delete window;
    delete scene;
    delete viewport;
    delete camera;
    delete cameraNode;
    delete keyboard;
    delete mouse;
    delete light;
}

bool Game::frameRenderingQueued(const Ogre::FrameEvent& evt)
{
    if(window->isClosed())
        return false;

    if(!running)
        return false;

    keyboard->capture();
    mouse->capture();
    camera->move(Ogre::Vector3(0,0,0.1));

    cout << (1.0f/evt.timeSinceLastFrame) << endl;

    return true;
}
//-------------------------------------------------------------------------------------
bool Game::keyPressed( const OIS::KeyEvent &ke )
{
    if (ke.key == OIS::KC_ESCAPE)
    {
        running = false;
    }
    return true;
}

bool Game::keyReleased( const OIS::KeyEvent &me )
{
    return true;
}

bool Game::mouseMoved( const OIS::MouseEvent &me )
{
    return true;
}

bool Game::mousePressed( const OIS::MouseEvent &me, OIS::MouseButtonID id )
{
    return true;
}

bool Game::mouseReleased( const OIS::MouseEvent &me, OIS::MouseButtonID id )
{
    return true;
}

void Game::windowResized(Ogre::RenderWindow* rw)
{
    unsigned int width, height, depth;
    int left, top;
    rw->getMetrics(width, height, depth, left, top);

    const OIS::MouseState &ms = mouse->getMouseState();
    ms.width = width;
    ms.height = height;
}

void Game::windowClosed(Ogre::RenderWindow* rw)
{
    im->destroyInputObject(mouse);
    im->destroyInputObject(keyboard);
    OIS::InputManager::destroyInputSystem(im);
}

int main()
{
    game = new Game();
    delete game;
    return 0;
}

