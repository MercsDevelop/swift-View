//
//  ViewController.swift
//  views
//
//  Created by Mercsjho on 16/3/28.
//  Copyright © 2016年 Mercsjho. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UIActionSheetDelegate,UIAlertViewDelegate{
    @IBOutlet weak var lable1: UILabel!
    @IBAction func button1(sender: UIButton) {
        let actionSheet1 = UIActionSheet(title: "分享", delegate: self, cancelButtonTitle: "取消分享", destructiveButtonTitle: "分享到新浪微博", otherButtonTitles: "分享到QQ空间")
        actionSheet1.showInView(self.view)
    }

    func actionSheet(actionSheet: UIActionSheet, clickedButtonAtIndex buttonIndex: Int) {
        lable1.text = actionSheet.buttonTitleAtIndex(buttonIndex)
    }
    
    
    @IBOutlet weak var loading1: UIActivityIndicatorView!
    @IBOutlet weak var lable2: UILabel!
    @IBAction func startBtn(sender: UIButton) {
        loading1.startAnimating()
    }
    @IBAction func stopBtn(sender: UIButton) {
        let stopDownload = UIAlertView(title: "警告", message: "正在下载，确定要取消？", delegate: self, cancelButtonTitle: "否", otherButtonTitles: "是")
        stopDownload.show()
        loading1.stopAnimating()
    }
    
    func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int) {
        lable2.text = "\(buttonIndex)"
        if buttonIndex == 1 {
            loading1.stopAnimating()
        }else{
            loading1.startAnimating()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

