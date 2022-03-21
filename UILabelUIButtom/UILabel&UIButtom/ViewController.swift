//
//  ViewController.swift
//  SwiftBookUILabel&UIButtom
//
//  Created by Белов Руслан on 17.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet var actionButtons: [UIButton]!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        label.isHidden = true //скрытие лейбла с экрана при загрузке
        label.font = label.font.withSize(35)
        
        button.isHidden = true
        
        for button in actionButtons {
            button.setTitleColor(.blue, for: .normal)
            button.backgroundColor = .green
        }
        
        button.setTitle("Clear", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .red
        
    }

    @IBAction func preseedbuttom(_ sender: UIButton) {
        
        label.isHidden = false
        label.isHidden = false
        
        if sender.tag == 0 {//acton1
            label.text = "Hello, World!"
            label.textColor = UIColor.red
            button.isHidden = false
        }else if sender.tag == 1 {//acton2
            label.text = "Hi there!"
            label.textColor = .blue
            button.isHidden = false
        } else if sender.tag == 2 {//button
            label.text = " "
            button.isHidden = true
            label.isHidden = false
        }
        //привет
    }
}

