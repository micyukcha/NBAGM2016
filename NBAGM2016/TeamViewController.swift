//
//  TeamViewController.swift
//  NBAGM2016
//
//  Created by Michael Chang on 9/2/16.
//  Copyright © 2016 Michael Chang. All rights reserved.
//

import UIKit
import SQLite

let reuseIdentifier = "cell"

class TeamViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet var collectionView: UICollectionView!
    
    let reuseIdentifier = "cell"
    var cities = [String]()
    
    // MARK: - UICollectionViewDataSource protocol
    
    // tell collection how many cells to make
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 20
        return cities.count
    }

    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 50
    }

    
    // make a cell for each cell index path
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        // get a reference to our storyboard cell
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! TeamDetailCollectionViewCell
        
        // use the outlet in custom class to get reference to UILabel in cell
        cell.teamDetailLabel.text = "Yr\(indexPath.section) | #\(indexPath.item) \(self.cities[indexPath.row])"
        
        cell.backgroundColor = UIColor.whiteColor() // make cell more visible in our example project
        
        return cell
    }
    
    // MARK: - UICollectionViewDelegate protocol
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        // handle tap events
        print("You selected cell #\(indexPath.item)!")
    }
    
//    // change background color when user touches cell
//    func collectionView(collectionView: UICollectionView, didHighlightItemAtIndexPath indexPath: NSIndexPath) {
//        let cell = collectionView.cellForItemAtIndexPath(indexPath)
//        cell?.backgroundColor = UIColor.redColor()
//    }
//    
//    // change background color back when user releases touch
//    func collectionView(collectionView: UICollectionView, didUnhighlightItemAtIndexPath indexPath: NSIndexPath) {
//        let cell = collectionView.cellForItemAtIndexPath(indexPath)
//        cell?.backgroundColor = UIColor.yellowColor()
//    }
    
    
    

    func setData() {
//        let db = try SQLiteDataStore.sharedInstance.BBDB
//
//        let teams = Table("TeamTotal")
//        let Season = Expression<String>("Season")
//        let Team = Expression<String>("Team")
//        let TopWS = Expression<String>("TopWS")
//        
//        do {
//            for team in try db!.prepare(teams) {
//                print("In: \(team[Season]), the: \(team[Team])'s best player was: \(team[TopWS])")
//                // id: 1, name: Optional("Alice"), email: alice@mac.com
//            }
//        } catch {
//            print("fuck")
//        }
        
//        do {
//            if let oneTeam = try TeamTotalDataHelper.find(25) {
//                print("Find: \(oneTeam.Coaches)")
//            }
//        } catch _ {
//            print("WTF!!!!!!!!!")
//        }
        
        do {
            if let allTeams = try TeamDataHelper.findAll() {
                var count = 0
                for team in allTeams {
                    count += 1
                    //print("In: \(count) \(team.city)")
                    if let teamcity = team.city {
                        cities.append(teamcity)
                    }
                }
            }
        } catch _ {
            print("WTF!!!!!!!!!")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        collectionView.delegate = self
        
        let fileManager = NSFileManager.defaultManager()
        let documentsPath = NSURL(fileURLWithPath: NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0])
        let destinationSqliteURL = documentsPath.URLByAppendingPathComponent("nbaDB2.sqlite")
        let sourceSqliteURL = NSBundle.mainBundle().URLForResource("nbaDB2", withExtension: "sqlite")
        
        if !fileManager.fileExistsAtPath(destinationSqliteURL.path!) {
            // var error:NSError? = nil
            do {
                try fileManager.copyItemAtURL(sourceSqliteURL!, toURL: destinationSqliteURL)
                print("Copied DB from Bundle to FileManager")
                print(destinationSqliteURL.path)
            } catch let error as NSError {
                print("Unable to create database \(error.debugDescription)")
            }
        } else {
            print("already there at \(destinationSqliteURL.path!)")
        }
        
        let dataStore = SQLiteDataStore.sharedInstance
        setData()
        
        print("Finish")
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
