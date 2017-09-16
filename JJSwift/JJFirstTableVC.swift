//
//  JJFirstTableVC.swift
//  JJSwift
//
//  Created by lucy on 2017/8/3.
//  Copyright © 2017年 Zebra. All rights reserved.
//

import UIKit
import Masonry

class JJFirstTableVC : UIViewController, UITableViewDelegate, UITableViewDataSource
{
    var tableView : UITableView?
    let kJJTableViewCellIdentify = "kJJTableViewCellIdentify"
    let titleArr = ["第一个", "第二个", "第三个", "第四个", "第五个"]
    
    //MARK - Override Base Function
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        title = "TableView"

        view.backgroundColor = UIColor.lightGray
        
        setupUI()
    }
    
    //MARK - Object Private Function
    
    func setupUI(){
        tableView = UITableView(frame: view.frame, style: UITableViewStyle.plain)
        tableView!.backgroundColor = UIColor.white
        tableView!.dataSource = self
        tableView!.delegate = self
        tableView!.rowHeight = 80.0
        tableView!.register(JJTableViewCell.self, forCellReuseIdentifier: kJJTableViewCellIdentify)
        view.addSubview(tableView!)
    }
    
    //MARK - UITableViewDelegate, UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titleArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: kJJTableViewCellIdentify, for: indexPath) as! JJTableViewCell
        cell.accessoryType = UITableViewCellAccessoryType.disclosureIndicator
        cell.setStringForCell(titleStr: titleArr[indexPath.row])
        return cell
    }
}


class JJTableViewCell : UITableViewCell
{
    
    var titleLabel : UILabel?
    
    //MARK - Override Base Function
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = UITableViewCellSelectionStyle.none
        self.backgroundColor = UIColor.lightGray
        
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK - Object Private Function
    
    func setupUI() {
        titleLabel = UILabel()
        titleLabel?.sizeToFit()
        addSubview(titleLabel!)
        titleLabel?.mas_makeConstraints({ (make : MASConstraintMaker!) in
            make!.center.equalTo()(self.center)?.setOffset(0.0)
        })
    }
    
    func setStringForCell(titleStr : String){
        titleLabel?.text = titleStr
    }
}

























