//
//  FirstTableViewController.swift
//  ideamaker
//
//  Created by 古田泰大 on 2015/11/22.
//  Copyright © 2015年 古田泰大. All rights reserved.

//

import UIKit

class FirstTableViewController: UITableViewController {
    
    let section = ["カテゴリー"]
    let meishi = ["家電","食べ物","フルーツ","数字","動物","ランダム"]
   // let fukusuu = ["ランダム"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UINavigationBar.appearance().barTintColor = ColorManager.yellowBackgroundColor()
        self.view.backgroundColor = ColorManager.themeColor()
        self.navigationItem.title = "category"
        
        self.tableView.rowHeight = 50
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    //sectionごとのcellの数を決める
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var rowCount = 0
        if section == 0 {
            rowCount = meishi.count
        }
       // if section == 1 {
            //rowCount = fukusuu.count
        //}
        
        return rowCount
    }
    
    //cellに値をセットする
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Cell1")
        
        //名詞のとき
        if indexPath.section == 0 {
            cell.textLabel?.text = meishi[indexPath.row]
            cell.imageView?.image = UIImage(named: "sample")
            cell.textLabel?.textColor = ColorManager.textColor()
            cell.textLabel!.font = UIFont(name: "Rounded M +1c", size: 17)
            cell.backgroundColor = UIColor(red: 250/255, green: 250/255, blue: 250/255, alpha: 1.0)
            
        } //else if indexPath.section == 1 {
           // cell.textLabel?.text = fukusuu[indexPath.row]
            //cell.backgroundColor = UIColor(red: 250/255, green: 250/255, blue: 250/255, alpha: 1.0)
       // }
        
        return cell
    }
    
    //header
  //  override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
    //    return self.section[section]
  //  }
    
    //cellをたっぷしたらよばれる
    override func tableView(table: UITableView, didSelectRowAtIndexPath indexPath:NSIndexPath) {
        performSegueWithIdentifier("showAnswer", sender: nil)
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showAnswer" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let ansVC: AnswerViewController = (segue.destinationViewController as? AnswerViewController)!
                ansVC.genreNumber = (indexPath.section * meishi.count) + indexPath.row
            }
        }
    }
}
