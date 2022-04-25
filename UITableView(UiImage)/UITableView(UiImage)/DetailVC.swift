//
//  DetailVC.swift
//  UITableView(UiImage)
//
//  Created by Белов Руслан on 12.04.2022.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var titlelabel: UILabel!
    
    var trackTitle = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        image.image = UIImage(named: trackTitle)
        titlelabel.text = trackTitle
        titlelabel.numberOfLines = 0

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
