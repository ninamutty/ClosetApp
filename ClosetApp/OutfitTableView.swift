import UIKit

class OutfitTableView: UITableView, UITableViewDelegate, UITableViewDataSource {
    
    var outfit = Outfit()
    var outfits: [Outfit] = []
    
    override func awakeFromNib() {
        super.awakeFromNib()
        //custom logic goes here
        self.outfits = [Outfit](repeating: self.outfit, count: 3)
        self.dataSource = self
        self.delegate = self
        self.showsVerticalScrollIndicator = false

    }
    
    // MARK: - Table view data source
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.outfits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        self.outfit = Outfit()
        self.outfits = [Outfit](repeating: outfit, count: 3)

        let cell = tableView.dequeueReusableCell(withIdentifier: "OutfitCell", for: indexPath) as! OutfitCell
        
        let myCell = self.outfits[indexPath.row]
        cell.title.text = myCell.title
        
        cell.mainImage.image = myCell.mainImage
        
        let timesWorn = myCell.timesWorn
        cell.timesWornLabel.text = "WORN: \(timesWorn)"
        
        let lastWorn = myCell.lastWorn
        cell.lastWornLabel.text = "LAST WORN: \(lastWorn)"
        
        return cell
        
    }
   
}
