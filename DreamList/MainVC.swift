//
//  MainVC.swift
//  DreamList
//
//  Created by 徐炜楠 on 2018/8/12.
//  Copyright © 2018年 徐炜楠. All rights reserved.
//

import UIKit

class MainVC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{

    @IBOutlet var symbolCollectionView: UICollectionView!
    @IBOutlet var tagCollectionView: UICollectionView!
    @IBOutlet var cardView: UIView!
    @IBOutlet var contentText: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        symbolCollectionView.delegate = self
        symbolCollectionView.dataSource = self
        tagCollectionView.delegate = self
        tagCollectionView.dataSource = self
        
        cardView.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        cardView.layer.shadowOpacity = 0.18
        cardView.layer.shadowRadius = 4.0
        cardView.layer.shadowOffset = CGSize(width: 0, height: 0)
        cardView.layer.cornerRadius = 10.0
        //内容缩进为0（去除左右边距）
        contentText.textContainer.lineFragmentPadding = 0
        //文本边距设为0（去除上下边距）
        contentText.textContainerInset = .zero
        
        // Do any additional setup after loading the view.
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView.tag == 0{
            return 3
        }else if collectionView.tag == 1{
            return 2
        }else{
            return 0
        }
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView.tag == 0{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! SymbolCollectionViewCell
            switch indexPath.row {
            case 0:
                cell.symbolImage.image = UIImage(named: "价格")
                cell.symbolLabel.text = "30299"
                cell.symbolLabel.textColor = UIColor(hexString: "#F85B40")
            case 1:
                cell.symbolImage.image = UIImage(named: "购物车")
                cell.symbolLabel.text = "京东"
                cell.symbolLabel.textColor = UIColor(hexString: "#FF86B1")
            case 2:
                cell.symbolImage.image = UIImage(named: "沙漏")
                cell.symbolLabel.text = "90天"
                cell.symbolLabel.textColor = UIColor(hexString: "#3023AE")
            default:
                break
            }
            return cell
        }else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TagCell", for: indexPath) as! TagCollectionViewCell
            switch indexPath.row{
            case 0:
                cell.tagBackground.image = UIImage(named: "想买标签")
                cell.tagName.text = ""
            case 1:
                cell.tagBackground.image = UIImage(named: "普通标签")
                cell.tagName.text = "摄影"
            default:
                break
            }
            return cell
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView.tag == 0{
            var size = CGSize(width: 83.0, height: 27.0)
            switch indexPath.row {
            case 0:
                size = CGSize(width: 83.0, height: 27.0)
            case 1:
                size = CGSize(width: 63.0, height: 27.0)
            case 2:
                size = CGSize(width: 68.0, height: 27.0)
            default:
                break
            }
            return size
        }else{
            return CGSize(width: 21, height: 11)
        }
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
