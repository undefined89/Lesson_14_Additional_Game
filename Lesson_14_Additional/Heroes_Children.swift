class Boss: Heroes {
    override func applySuperAbilityToGetAdditionalDamage() -> Int {
        self.additionalDamage = Int.random(in: 0...10)
        print("Доп.уроны от героев у \(getName()): \(additionalDamage)")
        return additionalDamage
    }
}

class Warrior: Heroes {
    override func applySuperAbilityToGetAdditionalDamage() -> Int {
        self.additionalDamage = 5 // либо можно также рандомно
        print("Boss нанес доп.урон герою \(getName()): \(additionalDamage)")
        return additionalDamage
    }
}

class Wizard: Heroes {
    override func applySuperAbilityToGetAdditionalDamage() -> Int {
        self.additionalDamage = 5
        print("Boss нанес доп.урон герою \(getName()): \(additionalDamage)")
        return additionalDamage
    }
}

class Archer: Heroes {
    override func applySuperAbilityToGetAdditionalDamage() -> Int {
        self.additionalDamage = 5
        print("Boss нанес доп.урон герою \(getName()): \(additionalDamage)")
        return additionalDamage
    }
}
