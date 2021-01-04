import UIKit

var str = "Hello, playground"

func Add(_ Number1: Int, _ Number2: Int) -> Int {
    return Number1 + Number2
}


func DriverLicense(_ name: String, _ age: Int) -> String {
        
    if age >= 18 {
        print("مؤهل لرخصة القيادة")
    } else {
        print("غير مؤهل لرخصة القيادة")
    }
    
    return name
}




