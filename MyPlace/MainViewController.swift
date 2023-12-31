//
//  MainViewController.swift
//  MyPlace
//
//  Created by Georgi on 13.11.2023.
//

import UIKit

class MainViewController: UITableViewController {
    

    let places = [Place(name: "Burger Heroes", location: "Ставрополь", type: "Забегаловка", image: "Burger Heroes")]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

  
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return places.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
        
        
        
        cell.nameLabel.text = places[indexPath.row].name
        cell.locationLabel.text = places[indexPath.row].location
        cell.typeLabel.text = places[indexPath.row].type
        cell.ImageOfPlace.image = UIImage(named: places[indexPath.row].image)
        cell.ImageOfPlace.layer.cornerRadius = cell.ImageOfPlace.frame.size.height / 2
        cell.ImageOfPlace.clipsToBounds = true

        return cell
    }
   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func cancelAction (_ segue: UIStoryboardSegue) {}

}
