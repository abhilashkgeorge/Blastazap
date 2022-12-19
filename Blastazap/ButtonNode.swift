//
//  ButtonNode.swift
//  AppleTV-Wikimaps
//
//  Created by Abhilash k George on 05/12/22.
//
import SpriteKit
import UIKit

class ButtonNode: SKSpriteNode {
    var focusedImage: SKTexture!
    var unfocusedImage: SKTexture!

    override var canBecomeFocused: Bool {
        return true
    }

    func setFocusedImage(named name: String) {
        focusedImage = SKTexture(imageNamed: name)
        unfocusedImage = self.texture!
        isUserInteractionEnabled = true
    }

    func didGainFocus() {
        texture = focusedImage
    }

    func didLoseFocus() {
        texture = unfocusedImage
    }
}
