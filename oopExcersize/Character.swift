//
//  Character.swift
//  oopExcersize
//
//  Created by Chad Wollenberg on 2/2/16.
//  Copyright © 2016 Chad Wollenberg. All rights reserved.
//

import Foundation

class Character {
    private var _hp: Int = 100
    private var _attackPwr: Int = 12
    private var _name:String = "Player"
    
    var name:String {
        get{
            return _name
        }
        set {
            _name = newValue
        }
    }
    
    var hp:Int {
        get {
            return _hp
        }
    }
    
    
    var attackPwr: Int {
        get {
            return _attackPwr
        }
    }
    
    var isAlive: Bool {
        get {
            if hp <= 0 {
                return false
            } else {
               return true
            }
        }
    }
    
    init (startingHp: Int, startingAttackPwr: Int, name: String) {
        self._hp = startingHp
        self._attackPwr = startingAttackPwr
        self._name = name 
    }
    
    func attemptAttack(attackPwr: Int) -> Bool {
        self._hp -= attackPwr
        
        return true
    }
    
    func defendAttack(attackPwr: Int) {
        self._hp -= attackPwr
    }

    
    
    convenience init (name: String, Hp: Int, AttackPwr: Int) {
        self.init(startingHp: Hp, startingAttackPwr: AttackPwr, name: name)
    }
}

