import UIKit

class Outfit {
    var title: String
    var mainImage: UIImage
    var timesWorn: Int
    var lastWorn: String
    
    init() {
//    init(title: String, mainImage: UIImage, timesWorn: Int, lastWorn: String) {
        self.title = "Title"
        self.mainImage = UIImage(named: "DefaultImage")!
        self.timesWorn = 3
        self.lastWorn = "4"
    }
    
}
