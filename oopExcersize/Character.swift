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
    var name:String = "Player"
    
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
    
    init (startingHp: Int, startingAttackPwr: Int) {
        self._hp = startingHp
        self._attackPwr = startingAttackPwr
    }
    
    func attemptAttack(attackPwr: Int) -> Bool {
        self._hp -= attackPwr
        
        return true
    }
}

