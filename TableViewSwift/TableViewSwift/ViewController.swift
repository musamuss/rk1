//
//  ViewController.swift
//  TableViewSwift
//
//  Created by d.taraev on 14.03.2018.
//  Copyright © 2018 mail.ru. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    let cellIdentifier = "CustomTableViewCell"
    @IBOutlet weak var tableView: UITableView!
    
    var modelArray = [CellModel]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.dataSource = self
        tableView.delegate = self
        fillModelArray()
        
        tableView.register(UINib.init(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: cellIdentifier)
    }
    
    func fillModelArray() {
        
        for i in 0...titles.count-1 {
            let model = CellModel()
            model.name = titles[i].name
            model.episodes = String(titles[i].episodes)
            model.kartinka = titles[i].file
            
            modelArray.append(model)
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return modelArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = modelArray[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        if let castedCell = cell as? CustomTableViewCell {
            castedCell.fillCell(with: model)
        }
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if  let newnavigatorRaw = storyboard?.instantiateViewController(withIdentifier: "new") {
            if let newnavigator = newnavigatorRaw as? newViewController {
                newnavigator.mytitle = titles[indexPath.row]
                self.navigationController?.pushViewController(newnavigator, animated: true)
            }
        }
        
    }
    
}
