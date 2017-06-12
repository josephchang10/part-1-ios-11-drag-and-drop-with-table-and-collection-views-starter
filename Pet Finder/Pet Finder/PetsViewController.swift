//
//  PetsViewController.swift
//  Pet Finder
//
//  Created by 张嘉夫 on 2017/6/9.
//  Copyright © 2017年 张嘉夫. All rights reserved.
//

import UIKit
import Pets

class PetsViewController: UIViewController {
  
  @IBOutlet weak var petsTableView: UITableView!
  @IBOutlet weak var adoptedTableView: UITableView!

  let petsDataSource = PetsDataSource(pets:
    [Pet(name: "小麦", type: "金毛", image: UIImage(named: "pet0")),
     Pet(name: "阿默", type: "混血梗犬", image: UIImage(named: "pet1")),
     Pet(name: "卤煮", type: "胆小的", image: UIImage(named: "pet2")),
     Pet(name: "老虎", type: "敏感的胡须", image: UIImage(named: "pet3")),
     Pet(name: "年年", type: "老鼠捕手", image: UIImage(named: "pet4")),
     Pet(name: "七喜", type: "边牧", image: UIImage(named: "pet5")),
     Pet(name: "佑佑", type: "杂交", image: UIImage(named: "pet6"))])
  let adoptedDataSource = PetsDataSource(pets: [])

  override func viewDidLoad() {
    super.viewDidLoad()

    for tableView in [petsTableView, adoptedTableView] {
      if let tableView = tableView {
        tableView.dataSource = dataSourceForTableView(tableView)
        tableView.reloadData()
      }
    }

  }

  func dataSourceForTableView(_ tableView: UITableView) -> PetsDataSource {
    if (tableView == petsTableView) {
      return petsDataSource
    } else {
      return adoptedDataSource
    }
  }

}
