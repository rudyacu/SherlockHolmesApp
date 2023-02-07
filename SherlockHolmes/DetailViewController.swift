//
//  DetailViewController.swift
//  SherlockHolmes
//
//  Created by Rodolfo Cuello on 2/6/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    // Property
    var holmes: Sherlock?
    
    
    @IBOutlet weak var factLabel1: UILabel!
    
    @IBOutlet weak var holmesImageView: UIImageView!
    
    
    @IBOutlet weak var title1: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let holmes = holmes {
            // Configure the dinosaur image and dynamic labels
            holmesImageView.image = holmes.image
            factLabel1.numberOfLines = 0
            factLabel1.text = String(holmes.info)
            title1.text = String(holmes.title)
         
        }

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
