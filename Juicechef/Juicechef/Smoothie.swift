
//
//  Smoothie.swift
//  Juicechef
//
//  Created by Kareem Dasilva on 5/12/16.
//  Copyright © 2016 Juice chef. All rights reserved.
//

import UIKit

class Smoothie: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var cardsView: UITableView!
    var allDrinks = [Drink]()
    var detox = populateDetox()
    var wellness = populateWellness()
    var weightLoss = populateWeightLoss()
    var energy = populateEnergy()
    var preWO = populatePreWorkout()
    var postWO = populatePostWorkout()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Smoothie"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  

   //Table view section
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:JuiceCardCell = cardsView.dequeueReusableCellWithIdentifier("juice") as! JuiceCardCell
        if indexPath.section == 0 {
            cell.juiceDescription.text = detox[indexPath.row].desciption
            cell.preview.image = detox[indexPath.row].preview
            return cell
        }
        if indexPath.section == 1 {
            cell.juiceDescription.text = wellness[indexPath.row].desciption
            cell.preview.image = wellness[indexPath.row].preview
            return cell
        }
        if indexPath.section == 2 {
            cell.juiceDescription.text = weightLoss[indexPath.row].desciption
            cell.preview.image = weightLoss[indexPath.row].preview
            return cell
        }
        if indexPath.section == 3 {
            cell.juiceDescription.text = energy[indexPath.row].desciption
            cell.preview.image = energy[indexPath.row].preview
            return cell
        }
        if indexPath.section == 4 {
            cell.juiceDescription.text = preWO[indexPath.row].desciption
            cell.preview.image = preWO[indexPath.row].preview
            return cell
        }
        if indexPath.section == 0 {
            cell.juiceDescription.text = postWO[indexPath.row].desciption
            cell.preview.image = postWO[indexPath.row].preview
            return cell
        }

        return cell
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 6
    }
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Detox"
        }
        if section == 1 {
            return "Wellness"
        }
        if section == 2 {
            return "Weight lost"
        }
        if section == 3 {
            return "Energy"
        }
        if section == 4 {
            return "Pre-Workout"
        }
        return "Post-Workout"
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
    }
    

}
class cardCell: UITableViewCell {
    
    
}
