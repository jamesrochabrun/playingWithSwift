//
//  ViewController.swift
//  FunFacts
//
//  Created by James Rochabrun on 29-06-16.
//  Copyright © 2016 James Rochabrun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var factLabel: UILabel!
    //instancetype of FactModel
    let factModel = FactModel()
    @IBOutlet weak var funFactButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        self.factLabel.text = self.factModel.getRandomFact()
    }

    
    @IBAction func showFunFact() {
       
        //creating an instance of ColorModel and calling dircetly the getRandomColor method
        let randomColor = ColorModel().getRandomColor()
        self.view.backgroundColor = randomColor
        self.funFactButton.tintColor = randomColor
        self.factLabel.text = self.factModel.getRandomFact()

    }

}

