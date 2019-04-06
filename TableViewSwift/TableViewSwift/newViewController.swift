//
//  newViewController.swift
//  TableViewSwift
//
//  Created by Муса Дениев on 03/04/2019.
//  Copyright © 2019 mail.ru. All rights reserved.
//

import UIKit

class newViewController: UIViewController {
var mytitle: TitleData? = nil
 
    
 
    @IBOutlet weak var mytext: UILabel!
    @IBOutlet weak var newimage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mytext.text = mytitle!.description
        newimage.image = UIImage (named: (mytitle!.file))

   
}
}
