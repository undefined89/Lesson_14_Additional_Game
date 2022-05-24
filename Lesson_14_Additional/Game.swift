class Game {
    
    var heroes: [Heroes] = []
    
    var bosses: [Heroes] = []
    
    func setHeroes(hero: Heroes) {
        heroes.append(hero)
    }
    
    func setBoss(boss: Boss) {
        bosses.append(boss)
    }
    
    func bossHit() {
        for i in 0..<heroes.count {
            heroes[i].setHealth(health: heroes[i].getHealth() - bosses[0].getDamage() - bosses[0].applySuperAbilityToGetAdditionalDamage())
        }
    }
    
    func heroesHit() {
        for i in 0..<heroes.count {
            bosses[0].setHealth(health: bosses[0].getHealth() - heroes[i].getDamage() - heroes[i].applySuperAbilityToGetAdditionalDamage())
        }
    }
    
    func gameStatus() {
        while true {
            if heroes.count == 0 {
                print("Boss win!")
                break
            }
            
            if bosses.count == 0 {
                print("Heroes win!")
                break
            }
            
            for (index, hero) in heroes.enumerated() {
                if hero.getHealth() <= 0 {
                    print("\(hero.getName()) is dead and can't play anymore!")
                    heroes.remove(at: index)
                }
            }
            
            if bosses[0].getHealth() <= 0 {
                print("\(bosses[0].getName()) is dead (")
                bosses.remove(at: 0)
            }
            
            round()
        }
    }
    
    func round() {
//        var roundCounter: Int = 0
        print("---------------------")
        bossHit()
        for i in heroes {
            print("Health: \(i.getName()) = \(i.getHealth())")
        }
        heroesHit()
        print("Boss's health = \(bosses[0].getHealth())")
        print("---------------------")
    }

}

















