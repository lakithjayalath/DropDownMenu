//
//  ViewController.swift
//  DropDownMenu
//
//  Created by Lakith Jayalath on 2021-10-09.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var selectColorButton: UIButton!
    @IBOutlet var colorView: UIView!
    @IBOutlet var colorButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func setUpButtonVisibility() {
        colorButtons.forEach { button in
            UIView.animate(withDuration: 0.3) {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            }
        }
    }

    
    @IBAction func selectColorAction(_ sender: Any) {
        setUpButtonVisibility()
    }
    
    @IBAction func colorSelectAction(_ sender: UIButton) {
        setUpButtonVisibility()
        switch sender.currentTitle {
        case "Red":
            colorView.backgroundColor = .red
            selectColorButton.setTitle("Red", for: .normal)
            selectColorButton.backgroundColor = .red
        case "Green":
            colorView.backgroundColor = .green
            selectColorButton.setTitle("Green", for: .normal)
            selectColorButton.backgroundColor = .green
        case "Indigo":
            colorView.backgroundColor = .systemIndigo
            selectColorButton.setTitle("Indigo", for: .normal)
            selectColorButton.backgroundColor = .systemIndigo
        default:
            colorView.backgroundColor = .white
        }
    }
    
}

