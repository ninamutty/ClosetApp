import UIKit

class OutfitCell: UITableViewCell {
    
    //Mark: Properties
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var timesWornLabel: UILabel!
    @IBOutlet weak var lastWornLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    @IBAction func rewearOutfit(_ sender: UIButton) {
        print("reWorn Outfit")
    }
    @IBAction func favoriteOutfit(_ sender: UIButton) {
        print("favorite Outfit")

    }
}

