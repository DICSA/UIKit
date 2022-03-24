//
//  ViewController.swift
//  UISegmentedControl
//
//  Created by Белов Руслан on 21.03.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var doneButton: UIButton!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var switchLabel: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slider.value = 1
//        label.isHidden = true // делает его скрывающимся
        label.text = String(slider.value)
        label.font = label.font.withSize(25)
        label.textAlignment = .center
        label.numberOfLines = 2
        
        segmentedControl.insertSegment(withTitle: "GREN", at: 2, animated: true)
        
        slider.minimumValue = 0
        slider.maximumValue = 1
        slider.minimumTrackTintColor = .orange
        slider.maximumTrackTintColor = .black
        slider.thumbTintColor = .gray
        
        datePicker.locale = Locale(identifier: "ru_RU")
        
        
        
    }
    
    @IBAction func choiseSegmented(_ sender: UISegmentedControl) {
        
        label.isHidden = false
        
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            label.text = "RED"
            label.textColor = .red
        case 1:
            label.text = "BLUE"
            label.textColor = .blue
        case 2:
            label.text = "GREEN"
            label.textColor = .green
        default:
            print("Something wrong")
        }
    }
    
    @IBAction func sliderAction(_ sender: UISlider) {
        label.text = String(sender.value)
        
        let backgroundColor = self.view.backgroundColor
        self.view.backgroundColor = backgroundColor?.withAlphaComponent(CGFloat(sender.value))
    }
    
    @IBAction func donePressed(_ sender: UIButton) {
        label.text = textField.text
        
        guard textField.text?.isEmpty == false else {return}
        
        if let _ = Double(textField.text!) {
            label.text = ""
            let alert = UIAlertController(title: "Неверный формат", message: "Пожалуйста введите имя", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "ОК", style: .default, handler: nil)
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil)
            print("Только буквы")
        } else {
            label.text = textField.text
            textField.text = nil
        }
    }
    @IBAction func changeDate(_ sender: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .full
        let dateValue = dateFormatter.string(from: sender.date)
        label.text = dateValue
    }
    
    @IBAction func switchAction(_ sender: UISwitch) {
         
        segmentedControl.isHidden = !segmentedControl.isHidden //!segmentedControl.isHidden - ! ставит значение на противоположенное
        label.isHidden = !label.isHidden
        slider.isHidden = !slider.isHidden
        textField.isHidden = !textField.isHidden
        doneButton.isHidden = !doneButton.isHidden
        datePicker.isHidden = !datePicker.isHidden
    
        
        if sender.isOn {
            switchLabel.text = "Отобразить все элементы"
        } else {
            switchLabel.text = "Скрыть все элементы"
        }
    }
}


