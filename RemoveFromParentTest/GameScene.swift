//
//  GameScene.swift
//  RemoveFromParentTest
//
//  Created by Wilkin on 19/4/15.
//  Copyright (c) 2015 Wilkin Ho. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    override func didMoveToView(view: SKView) {
        let parentSprite = SKSpriteNode(color: UIColor.blueColor(), size: frame.size)
        parentSprite.name = "parentSprite"
        parentSprite.position = CGPointMake(CGRectGetMidX(frame), CGRectGetMidY(frame))
        
        self.addChild(parentSprite)
        
        let sprite = SKSpriteNode(imageNamed:"Spaceship")
        sprite.name = "sprite"
        sprite.xScale = 0.5
        sprite.yScale = 0.5
        sprite.position = CGPointMake(100, 100)
        
        let sprite2 = SKSpriteNode(imageNamed:"Spaceship")
        sprite2.name = "sprite2"
        sprite2.xScale = 0.5
        sprite2.yScale = 0.5
        sprite2.position = CGPointMake(200, 200)
        
        parentSprite.addChild(sprite)
        parentSprite.addChild(sprite2)
        
        sprite.runAction(SKAction.runBlock({
            sprite.removeFromParent()
            self.addChild(sprite)
        }))
        
        sprite2.removeFromParent()
        self.addChild(sprite2)
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        let child = self.childNodeWithName("sprite")
        println("sprite.parent:\(child?.parent)")
        println("sprite.scene:\(child?.scene)")
        
        let child2 = self.childNodeWithName("sprite2")
        println("sprite2.parent:\(child2?.parent)")
        println("sprite2.scene:\(child2?.scene)")
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
