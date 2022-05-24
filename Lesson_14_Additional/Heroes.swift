class Heroes: HavingSuperAbility {

    func applySuperAbilityToGetAdditionalDamage() -> Int {
        self.additionalDamage = Int.random(in: 0...10) // или конкретное число можно задать
        print("Доп.урон у героя \(name): \(additionalDamage)")
        return additionalDamage
    }
    
    private var health: Int
    private var damage: Int
    private var name: String
    var additionalDamage: Int = 0
    
    init(health: Int, damage: Int, name: String) {
        self.health = health
        self.damage = damage
        self.name = name
    }
    
    func setHealth(health: Int) { // задать значение
        self.health = health
    }
    
    func getHealth() -> Int { // получить значение
        return health
    }
    
    func setDamage(damage: Int) {
        self.damage = damage
    }
    
    func getDamage() -> Int {
        return damage
    }
    
    func getName() -> String {
        return name
    }
    
}
