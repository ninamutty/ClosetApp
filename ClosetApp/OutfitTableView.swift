import UIKit

class OutfitTableView: UITableView {
    var outfits = [Outfit]()
    
    // MARK: - Table view data source
//    func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 1
//    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.outfits.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
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
