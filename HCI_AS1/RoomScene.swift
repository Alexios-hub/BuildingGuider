//
//  RoomScene.swift
//  HCI_AS1
//
//  Created by 刘洪博 on 2022/4/10.
//

import SwiftUI
import SceneKit

func flipImageLeftRight(_ image: UIImage) -> UIImage? {
    UIGraphicsBeginImageContextWithOptions(image.size, false, image.scale)
    let context = UIGraphicsGetCurrentContext()!
    context.translateBy(x: image.size.width, y: image.size.height)
    context.scaleBy(x: -image.scale, y: -image.scale)
    context.draw(image.cgImage!, in: CGRect(origin:CGPoint.zero, size: image.size))
    let newImage = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    return newImage
}

struct RoomScene: View {
    var scene:SCNScene?{
        SCNScene(named: "art.scnassets/ship.scn")
    }

    var cameraNode:SCNNode?{
        let cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        cameraNode.position = SCNVector3(x:0,y:0,z:12)
        return cameraNode
    }
//    let node = scene?.rootNode.childNode(withName: "earth", recursively: false)
//    let texture = UIImage(named: "earth-emissive")

    var body: some View {
        SceneView(
            scene: scene,
                    pointOfView: cameraNode,
                    options: [
                        .allowsCameraControl,
                        .autoenablesDefaultLighting
                    ]
            
            
                )
    }
}

struct RoomScene_Previews: PreviewProvider {
    static var previews: some View {
        RoomScene()
    }
}
