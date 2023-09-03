//
//  GradientView.swift
//  GradientShadowTask
//
//  Created by Andrii's Macbook  on 03.09.2023.
//

import UIKit

final class GradientView: UIView {
    @IBInspectable public var topColor: CGColor? = UIColor.white.cgColor
    @IBInspectable public var bottomColor: CGColor? = UIColor.black.cgColor
    
    public lazy var gradientLayer: CAGradientLayer? = {
        return layer as? CAGradientLayer
    }()

    public override class var layerClass: AnyClass {
        return CAGradientLayer.self
    }
    
    public func configure() {
        guard let topColor = self.topColor,
        let bottomColor = self.bottomColor,
        let layer = layer as? CAGradientLayer else {
            return
        }
        layer.startPoint = CGPoint.zero
        layer.endPoint = CGPoint(x: 1, y: 1)
        layer.colors = [topColor, bottomColor]
    }
}
