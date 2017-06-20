//
//  SettingViewController.swift
//  LogInCoverPractice
//
//  Created by Bo-Young PARK on 20/6/2017.
//  Copyright © 2017 Bo-Young PARK. All rights reserved.
//

import UIKit


//Setting TableView VC

class SettingViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, SettingSwitchCellDelegate {
    
    //******************************************//
    //                  IBOutlet                //
    //******************************************//
    
    @IBOutlet weak var tableView: UITableView!
    
    //******************************************//
    //     TableViewDataSource / Delegate       //
    //******************************************//
    //MARK: TableViewDataSource / Delegate
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return SettingCenter.sharedSetting.sectionCount
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SettingCenter.sharedSetting.rowCountFor(section)
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return SettingCenter.sharedSetting.titleFor(section: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellType = SettingCenter.sharedSetting.typeOfCellFor(rowAtIndexPath: indexPath)
        
        switch cellType {
        case .Basic:
            let cell = tableView.dequeueReusableCell(withIdentifier: cellType.rawValue, for: indexPath)
            cell.textLabel?.text = SettingCenter.sharedSetting.titleFor(rowAtIndexPath: indexPath)
            cell.selectionStyle = .none //클릭한 느낌이 나지 않게 하는 것
            return cell
        case .Detail:
            let cell = tableView.dequeueReusableCell(withIdentifier: cellType.rawValue, for: indexPath)
            cell.textLabel?.text = SettingCenter.sharedSetting.titleFor(rowAtIndexPath: indexPath)
            cell.selectionStyle = .blue
            return cell
        case .Switch:
            let cell:SettingSwitchCell = tableView.dequeueReusableCell(withIdentifier: cellType.rawValue, for: indexPath) as! SettingSwitchCell
            cell.selectionStyle = .none
            (cell as! SettingSwitchCell).delegate = self
            return cell
        }

    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cellType = SettingCenter.sharedSetting.typeOfCellFor(rowAtIndexPath: indexPath)
        
        
    }
    
    func switchCellValueChanged(_ cell: SettingSwitchCell, isOn: Bool) {
        print("valueChange : \(isOn)")
    }
    
    //******************************************//
    //                 LiftCycle                //
    //******************************************//
    //MARK: Life Cycle Method
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        let view = UIView(frame: CGRect(x: 1000, y: 10000, width: 1000, height: 100)) //비상식적인 값을 적었지만 상관없다. 왜냐하면 height만 영향을 주기 때문이다.
//        view.backgroundColor = .yellow
//        
//        tableView.tableHeaderView = view

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
}
