import UIKit

class Outfit {
    var title: String
    var mainImage: UIImage
    var timesWorn: Int
    var lastWorn: String
    
    init(title: String, mainImage: UIImage, timesWorn: Int, lastWorn: String) {
        self.title = title
        self.mainImage = mainImage
        self.timesWorn = timesWorn
        self.lastWorn = lastWorn
    }
    
}
