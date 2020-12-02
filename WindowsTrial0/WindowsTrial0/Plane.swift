//
//  Plane.swift
//  WindowsTrial0
//
//  Created by Mustafa Sarwar on 11/11/20.
//  Copyright © 2020 Mustafa Sarwar. All rights reserved.
//

import Foundation
import ARKit

class Plane: SCNNode {

    let plane: SCNPlane
    var anchor: ARPlaneAnchor
    var planeGeometry: SCNPlane!
    
    init(anchor: ARPlaneAnchor) {
        // 2
        plane = SCNPlane(width: CGFloat(anchor.extent.x), height: CGFloat(anchor.extent.z))
        self.anchor = anchor
        super.init()

        // 3
        plane.cornerRadius = 0.005

        // 4
        let planeNode = SCNNode(geometry: plane)
        planeNode.position = SCNVector3Make(anchor.center.x, 0, anchor.center.z)

        // 5
        planeNode.eulerAngles.x = -.pi / 2

        // 6
        planeNode.opacity = 0.15

        // 7
        addChildNode(planeNode)
    }

    // 8
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
