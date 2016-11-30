//
//  DisplayViewController.swift
//  JP_251_07_04_PhotoViewerLesson
//
//  Created by maqoto fooci on 2016/11/28.
//  Copyright © 2016年 maqoto fooci. All rights reserved.
//

import UIKit

class DisplayViewController: UIViewController {
    
    var currentPhoto: Photo?

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = UIImage(named: (currentPhoto?.filename)!)
        imageView.image = image
        
        self.title = currentPhoto?.name

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let thirdScene = segue.destination as! InfoViewController
        thirdScene.currentPhoto = currentPhoto
    }
    

}
