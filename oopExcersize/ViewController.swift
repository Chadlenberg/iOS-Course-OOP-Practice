//
//  ViewController.swift
//  oopExcersize
//
//  Created by Chad Wollenberg on 2/2/16.
//  Copyright © 2016 Chad Wollenberg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //outlets
    @IBOutlet weak var Enemy: UIImageView!
    @IBOutlet weak var Hero: UIImageView!
    @IBOutlet weak var statLbl: UILabel!
     @IBOutlet weak var enemyNameField: UITextField!
    
    @IBOutlet weak var heroNameField: UITextField!
    
    var hero: Player!
    var enemy: Player!
    //UI Interactions
    @IBAction func OnHeroAttackPressed(sender: AnyObject) {
       hero.attemptAttack(20)
        statLbl.text = " \(enemy.name)'s HP is reduced tp \(enemy.hp)!"
    
    }
    
   
    @IBAction func onEnemyAttackPressed(sender: AnyObject) {
    }
    
    
    func nameCharacter(player: Player) {
        heroNameField.hidden = false
        if heroNameField.text! != "" {
            player.name = heroNameField.text!
            }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
      var hero = 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

