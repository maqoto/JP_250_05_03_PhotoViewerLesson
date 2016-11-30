//
//  InfoViewController.swift
//  JP_251_07_04_PhotoViewerLesson
//
//  Created by maqoto fooci on 2016/11/28.
//  Copyright © 2016年 maqoto fooci. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    
    var currentPhoto: Photo?

    @IBOutlet weak var detailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailLabel.text = currentPhoto?.notes

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
