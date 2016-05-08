//
//  FirstTableViewController.swift
//  ideamaker
//
//  Created by 古田泰大 on 2015/11/22.
//  Copyright © 2015年 古田泰大. All rights reserved.

//

import UIKit

class FirstTableViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // let imgArray: NSArray = ["img0"]
          // tableView.backgroundColor = tblBackColor
                UINavigationBar.appearance().barTintColor = ColorManager.yellowBackgroundColor()
    
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
         self.view.backgroundColor = ColorManager.themeColor()
        
        self.navigationItem.title = "category"
    }
    
    override func scrollViewDidScroll(scrollView: UIScrollView) {
        
        }
    override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Table view data source
    
    

    let texts = ["家電","食べ物","フルーツ","数字","動物","元気が出るボタン",]
    let texts2 = ["ランダム"]
   

    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var rowCount = 1
       
       if section == 0
       {
            rowCount = texts.count
        }
        if section == 1 {
            rowCount = texts2.count
        }
        
        return rowCount
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        var rowHeight: CGFloat = 0
        
   if indexPath.section == 0{
            rowHeight = 50
    
            
   }else if indexPath.section == 1{
    rowHeight = 50
    
        }
        return rowHeight
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Cell1")
       

        if indexPath.section == 0{
            cell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Cell2")
          //  cell.textLabel?.font = UIFont.systemFontOfSize(17)
            cell.textLabel?.text = texts[indexPath.row]
            cell.textLabel?.textColor = ColorManager.textColor()
            cell.textLabel!.font = UIFont(name: "Rounded M +1c", size: 17)
            cell.backgroundColor = UIColor(red: 250/255, green: 250/255, blue: 250/255, alpha: 1.0)
            if indexPath.row == 0 {
                // ランダム
               // cell.backgroundColor = ColorManager.bulueBaclgroundColor()


            }else if indexPath.row == 1 {
              
                // 家電
              //  cell.backgroundColor = ColorManager.yellowBackgroundColor()
                
                
                ()
            }else if indexPath.row == 2 {
                // 食べ物
               
                
                
                
                
                
                //cell.backgroundColor = UIColor.cyanColor()
            }
        }
        else if indexPath.section == 1{
            cell.textLabel?.text = texts2[indexPath.row]
            cell.backgroundColor = UIColor(red: 250/255, green: 250/255, blue: 250/255, alpha: 1.0)
        }
        
        return cell
        
        
    }
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        var sectionTitle = ""
        if section == 0{
            sectionTitle = "名詞"
        }else if section == 1{
            sectionTitle = "複数"
        
        }
        return sectionTitle
    }
    
    override func tableView(table: UITableView, didSelectRowAtIndexPath indexPath:NSIndexPath) {
        performSegueWithIdentifier("showAnswer", sender: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showAnswer" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let ansVC: AnswerViewController = (segue.destinationViewController as? AnswerViewController)!
                // 11. SecondViewControllerのtextに選択した文字列を設定する
                NSLog("count: %d", (indexPath.section * texts.count) + indexPath.row);
                ansVC.genreNumber = (indexPath.section * texts.count) + indexPath.row
            }
        }
    }
    
    
    

    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
