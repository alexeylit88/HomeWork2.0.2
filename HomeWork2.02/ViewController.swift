//
//  ViewController.swift
//  HomeWork2.02
//
//  Created by ALEXEY LITVINOV on 28.03.2024.
//

import UIKit

enum Color {
    case red
    case yellow
    case green
}

final class ViewController: UIViewController {

    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var switchButton: UIButton!
    
    var currentColor = Color.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.layer.cornerRadius = 50
        yellowView.layer.cornerRadius = 50
        greenView.layer.cornerRadius = 50
        
        redView.alpha = 1
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
        
        // Do any additional setup after loading the view.
    }
    @IBAction func changeColors() {
        switchButton.setTitle("Next", for: .normal)
        
        switch currentColor {
        case .red:
            redView.alpha = 0.3
            yellowView.alpha = 1
            currentColor = .yellow
        case .yellow:
            yellowView.alpha = 0.3
            greenView.alpha = 1
            currentColor = .green
        case . green:
            greenView.alpha = 0.3
            redView.alpha = 1
            currentColor = .red
        }
    
    }
    
}

