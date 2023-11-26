//
//  ViewController.swift
//  DropDownMenu
//
//  Created by Ting on 2023/11/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var selectColorButton: UIButton!
    @IBOutlet weak var colorView: UIView!
    @IBOutlet var colorButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func showButtonVisibility() {
        colorButtons.forEach { button in
            UIView.animate(withDuration: 0.3) {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            }
        }
    }
    
    @IBAction func selectButtonAction(_ sender: Any) {
        showButtonVisibility()
    }
    
    @IBAction func colorButtonAction(_ sender: UIButton) {
        showButtonVisibility()
        switch sender.currentTitle {
        case "Green":
            selectColorButton.backgroundColor = .systemGreen
            selectColorButton.setTitle("Green", for: .normal)
            colorView.backgroundColor = .systemGreen
        case "Teal":
            selectColorButton.backgroundColor = .systemTeal
            selectColorButton.setTitle("Teal", for: .normal)
            colorView.backgroundColor = .systemTeal
        case "Yellow":
            selectColorButton.backgroundColor = .systemYellow
            selectColorButton.setTitle("Yellow", for: .normal)
            colorView.backgroundColor = .systemYellow
        default:
            colorView.backgroundColor = .white
        }
    }
}

