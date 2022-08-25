import UIKit

struct Point {
    var x = 0.0, y =  0.0
    func isToTheRightOf(x: Double) -> Bool {
        return self.x > x
    }
}

let somePoint = Point(x: 4.0, y:5.0)
if somePoint.isToTheRightOf(x: 1.0) {
    print("hahaha")
}


//

protocol checkGas {
    // something here to code
}

protocol checkWheels {
    // more code
}

struct car: checkGas, checkWheels {
    // more stuff
}

class vehicle {
    
}

class bike: vehicle, checkWheels {
    // code stuff
}


