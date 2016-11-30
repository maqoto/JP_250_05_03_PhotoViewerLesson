//
//  PhotosTableViewController.swift
//  JP_251_07_04_PhotoViewerLesson
//
//  Created by maqoto fooci on 2016/11/28.
//  Copyright © 2016年 maqoto fooci. All rights reserved.
//

import UIKit

class PhotosTableViewController: UITableViewController {
    
    // Photo構造体の配列を代入する変数photosを宣言
    var photos = [ Photo ]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Photo.swiftのPhoto構造体の上記の [ Photo ]()配列にデータを追加
        var photo = Photo(name: "Blue Sky", filename: "bluesky", notes: "水彩画で描いたような夏の青空を見ました。")
        photos.append(photo)

        photo = Photo(name: "Chess", filename: "chess", notes: "普段使っているチェス盤です。")
        photos.append(photo)
        
        photo = Photo(name: "London Hydepark", filename: "hydepark", notes: "ロンドンのハイドパークで見つけた栗の木です。")
        photos.append(photo)
        
        photo = Photo(name: "Momiji", filename: "momiji", notes: "雨の日に見つけた紅葉の落葉です。")
        photos.append(photo)
        
        photo = Photo(name: "Sunset", filename: "sunset", notes: "大学の窓から見える夕日の景色です。")
        photos.append(photo)
        
        photo = Photo(name: "Violin", filename: "violin", notes: "普段使っているヴァイオリンです。")
        photos.append(photo)
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return photos.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Photo Cell", for: indexPath)

        let photo = photos[ indexPath.row ]
        cell.textLabel?.text = photo.name

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let secondScene = segue.destination as! DisplayViewController
        
        if let indexPath = self.tableView.indexPathForSelectedRow {
            let currentPhoto = photos[ indexPath.row ]
            secondScene.currentPhoto = currentPhoto
        }
    }
    

}



























