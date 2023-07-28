//
//  MenuTableViewController.swift
//  TestProjectCalendar
//
//  Created by Adlet Zhantassov on 28.07.2023.
//

import Foundation
import UIKit
import SwiftDataTables

struct MenuItem {
    let title: String
    let config: DataTableConfiguration?
    
    public init(title: String, config: DataTableConfiguration? = nil){
        self.title = title
        self.config = config
    }
}
class MenuViewController: UITableViewController {
    private enum Properties {
        enum Section {
            static let dataStore: Int = 0
            static let visualConfiguration: Int = 1
        }
        static let menuItemIdentifier: String = "MenuItemIdentifier"
    }
    
    lazy var menuItems: [[MenuItem]] = self.createdMenuItems()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: Properties.menuItemIdentifier)
        tableView.rowHeight = 70
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: self, action: nil)
        self.tableView.reloadData()
    }
    //MARK: - Actions
    private func showDataStoreWithDataSet(){
        let instance = DataTableWithDataSetViewController()
        show(instance, sender: self)
    }
}

//MARK: - Data source and delegate methods
extension MenuViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        return self.menuItems.count
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.menuItems[section].count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Properties.menuItemIdentifier, for: indexPath)
        cell.textLabel?.text = self.menuItems[indexPath.section][indexPath.row].title
        cell.textLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        return cell
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case Properties.Section.dataStore:
            return "Data Store variations"
        case Properties.Section.visualConfiguration:
            return "Visual configuration variations"
        default: return nil
        }
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch (indexPath.section, indexPath.row) {
        case (0, 0):
            showDataStoreWithDataSet()
        default: fatalError("An example hasn't been created for [section: \(indexPath.section) row: \(indexPath.row)]")
        }
    }
}
//MARK: - Lazily Load
extension MenuViewController {
    private func createdMenuItems() -> [[MenuItem]] {
        let sectionOne: [MenuItem] = [
            MenuItem(title: "Initialised with Data Set")
        ]
        return [sectionOne]
    }
}

extension UIColor {
    public convenience init(_ r: CGFloat, _ g: CGFloat, _ b: CGFloat, _ a: CGFloat = 1){
        self.init(red: r, green: g, blue: b, alpha: a)
    }
}
