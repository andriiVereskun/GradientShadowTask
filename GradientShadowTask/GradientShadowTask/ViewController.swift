//
//  ViewController.swift
//  GradientShadowTask
//
//  Created by Andrii's Macbook  on 03.09.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    // MARK: - IBOutlet
    
    @IBOutlet weak var gradientShadowView: GradientView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureAppearance()
    }
}

private extension ViewController {
    
    // MARK: - Private methods
    
    func configureAppearance() {
        addGradient()
        configureCornerRadius()
        configureShadow()
    }
    
    func addGradient() {
        gradientShadowView.configure()
    }
    
    func configureCornerRadius() {
        gradientShadowView.layer.cornerRadius = 10
    }
    
    func configureShadow() {
        gradientShadowView.layer.shadowColor = UIColor.black.cgColor
        gradientShadowView.layer.shadowOpacity = 0.5
        gradientShadowView.layer.shadowOffset = CGSize(width: 0, height: 4)
        gradientShadowView.layer.shadowRadius = 6
    }
}
