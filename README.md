# RemoveFromParentTest

This project tries to illustrate while removing a SKSpriteNode from parent in its own SKAction run block, iOS 7.1 and 8.3 have different behavior.

Swift version: 1.2
Xcode version: 6.3

Run the app in ios 7.1 device, touch the screen and the console prints:

sprite.parent:Optional(<SKScene> name:'(null)' frame:{{0, 0}, {320, 568}})
sprite.scene:nil
sprite2.parent:Optional(<SKScene> name:'(null)' frame:{{0, 0}, {320, 568}})
sprite2.scene:Optional(<SKScene> name:'(null)' frame:{{0, 0}, {320, 568}})

Run the app in ios 8.3 device, touch the screen and the console prints:

sprite.parent:Optional(<SKScene> name:'(null)' frame:{{0, 0}, {320, 568}})
sprite.scene:Optional(<SKScene> name:'(null)' frame:{{0, 0}, {320, 568}})
sprite2.parent:Optional(<SKScene> name:'(null)' frame:{{0, 0}, {320, 568}})
sprite2.scene:Optional(<SKScene> name:'(null)' frame:{{0, 0}, {320, 568}})

In iOS 7.1, the first SKSpriteNode lost reference to the SKScene, which is unexpected.
