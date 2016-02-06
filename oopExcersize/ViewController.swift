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
        setname(enemy, playerNameField: enemyNameField, playerNameBtn: EnemyNameBtn)
        
    }
    
    @IBAction func onHeroSubmitNamePressed(sender: UIButton) {
        setname(hero, playerNameField: heroNameField, playerNameBtn: heroNameBtn)
    }
    
    @IBAction func OnHeroAttackPressed(sender: AnyObject) {
        showNameinfo(heroNameBtn)
    }
    
   
    @IBAction func onEnemyAttackPressed(sender: AnyObject) {
        if enemy.name == "" {
        
        } else {
          Attack(enemy, defender: hero)
        }
    }
    
    
    func Attack(attacker: Character, defender: Character) {
        defender.defendAttack(attacker.attackPwr)
        statLbl.text = "\(attacker.name) has hit \(defender.name) for \(attacker.attackPwr) HP! \n \(defender.name)'s hp is now \(defender.hp)"
    }
    
    func showNameinfo (playerBtn: UIButton) {
        doneBtnLbl.hidden = false
        playerBtn.hidden = false
    }
    
    func setname (player: Character, playerNameField: UITextField, playerNameBtn: UIButton) {
        playerNameBtn.hidden = true
        doneBtnLbl.hidden = true
        playerNameField.hidden = true
        if playerNameField.text! != "" {
         player.name = playerNameField.text!
        }
        
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hero = Character(name: "", Hp: 100, AttackPwr: 13)
        enemy = Character(name: "", Hp: 100, AttackPwr: 13)
     
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

