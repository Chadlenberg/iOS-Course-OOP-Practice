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
    @IBOutlet weak var doneBtnLbl: UILabel!
    @IBOutlet weak var heroNameField: UITextField!
    
    @IBOutlet weak var heroNameBtn: UIButton!
    @IBOutlet weak var EnemyNameBtn: UIButton!
    var hero: Character!
    var enemy: Character!
    //UI Interactions
    
   
    @IBAction func onEnemySubmitNamePressed(sender: AnyObject) {
    }
    
    @IBAction func onHeroSubmitNamePressed(sender: UIButton) {
        heroNameBtn.hidden = true
        heroNameBtn.hidden = true
        doneBtnLbl.hidden = true
        heroNameField.hidden = true
        heroNameField.text = ""
    }
    
    @IBAction func OnHeroAttackPressed(sender: AnyObject) {
        
            Attack(hero, defender: enemy)
    
    
    }
    
   
    @IBAction func onEnemyAttackPressed(sender: AnyObject) {
        
            Attack(enemy, defender: hero)
        
    }
    func Attack(attacker: Character, defender: Character) {
        defender.defendAttack(attacker.attackPwr)
        statLbl.text = "\(attacker.name) has hit \(defender.name) for \(attacker.attackPwr) HP! \n \(defender.name)'s hp is now \(defender.hp)"
    }
    
    func setName(player: Character) {
        doneBtnLbl.hidden = false
        heroNameBtn.hidden = false
        heroNameField.hidden = false
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hero = Character(name: "Player 2", Hp: 100, AttackPwr: 13)
        enemy = Character(name: "Player 1", Hp: 100, AttackPwr: 13)
     
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

