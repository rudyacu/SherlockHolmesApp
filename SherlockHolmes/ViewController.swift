//
//  ViewController.swift
//  SherlockHolmes
//
//  Created by Rodolfo Cuello on 2/6/23.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Models

    // Create individual Dinosaurs using Dinosaur model
    let backstory = Sherlock(info: "Sherlock Holmes is a private detective who has keen powers of observation. He lives at 221b Baker Street in London. He notices things that others simply don't and then he draws accurate conclusions about what he sees.", image: UIImage(named: "adult")!, title: "Backstory")
    let weakness = Sherlock(info: "This being said the greatest weakness Sherlock Holmes has is that he isn't remotely as cold and heartless as he would have you believe. There are few people who truly ever get close to him, so few he could count them on one hand but once they are in there he would lay down his life for those people.", image: UIImage(named: "lol")!, title: "Weakness")
    let iq = Sherlock(info: "Radford estimates Holmes' IQ at 190, which places him much, much higher than our crazy-haired scientist. Since then, there have been many more studies on this fictional character leading people to lower his intelligence rating, but he still remains one of the smartest characters ever written.", image: UIImage(named: "sherlocks")!, title: "IQ")

    // Array for storing Sherlock Data
    var Holmes: [Sherlock] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Store Dinosaur models
        Holmes = [backstory, weakness, iq]
      

    }

    @IBAction func didTapSherlock(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {

            if tappedView.tag == 0 {
                detailViewController.holmes = Holmes[0]
            } else if tappedView.tag == 1 {
                detailViewController.holmes = Holmes[1]
            } else if tappedView.tag == 2 {
                detailViewController.holmes = Holmes[2]
            }else {
                print("no Sherlock was tapped, please check your selection.")
            }
        }
    }
    
    
    
}

