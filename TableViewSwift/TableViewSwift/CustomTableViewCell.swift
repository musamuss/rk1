//
//  CustomTableViewCell.swift
//  TableViewSwift
//
//  Created by d.taraev on 14.03.2018.
//  Copyright © 2018 mail.ru. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var kartinka: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func fillCell(with model: CellModel) {
        titleLabel.text = model.name
        label2.text = model.episodes
        kartinka.image = UIImage (named: model.kartinka!)
    }
}
