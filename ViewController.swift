//
//  ViewController.swift
//  WarCardGame
//
//  Created by Deepansh Kumar on 21/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    
   
    @IBOutlet weak var leftImageView: UIImageView!
    
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    
    @IBOutlet weak var playerScoreView: UILabel!
    
    
    @IBOutlet weak var cpuScoreView: UILabel!
    
    var leftScore =  0
    var rightScore = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    
    @IBAction func dealTapped(_ sender: Any) {
        
        //Get some random numbers and store then in the variables
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        //Update Image Views
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        if (leftNumber>rightNumber){
            //leftsidewins
            leftScore += 1
            playerScoreView.text = String(leftScore)
        }
        else if(leftNumber<rightNumber)
        {
            //rightsidewins
            rightScore += 1
            cpuScoreView.text = String(rightScore)
            
        }
        else{
            //its a tie
        }
        
    }
    

}

