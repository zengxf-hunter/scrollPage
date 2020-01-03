//
//  ScrollPages.swift
//  scrollPage
//
//  Created by 曾雄飞 on 2020/1/3.
//  Copyright © 2020 曾雄飞. All rights reserved.
//

import UIKit
class ScrollPages:UIView,UIScrollViewDelegate{
    var pageWidth:CGFloat=0
    override init(frame: CGRect) {
        super.init(frame:frame)
        self.setupUI()
               
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.setupUI()
       
    }
    func setupUI(){
         pageWidth=self.bounds.width
        self.backgroundColor = .red
        // Do any additional setup after loading the view.
         let img1=UIImage(named: "")
         let img2=UIImage(named: "")
         let img3=UIImage(named: "potx")
        // let imgnone=UIImage(named: "")
        let imageView0=UIImageView(image: img3)
        let imageView1=UIImageView(image: img1)
        let imageView2=UIImageView(image: img2)
        let imageView3=UIImageView(image: img3)
        let imageView4=UIImageView(image:img1)
         
        // scrView.backgroundColor = .red
         let scrView=UIScrollView()
        scrView.frame=CGRect(x:0,y:0,width:pageWidth,height:self.bounds.height)//滚动视图大小 位置
        scrView.contentSize=CGSize(width: pageWidth*4, height: 240)//滚动长度高度设定
         
        imageView1.frame = CGRect(x: 0, y: 0, width: pageWidth, height: self.bounds.height)
        imageView2.frame = CGRect(x: pageWidth, y: 0, width: pageWidth, height: self.bounds.height)
        imageView3.frame = CGRect(x: pageWidth*2, y: 0, width: pageWidth, height: self.bounds.height)
        imageView4.frame = CGRect(x: pageWidth*3, y: 0, width: pageWidth, height: self.bounds.height)
        imageView0.backgroundColor = .green
         imageView1.backgroundColor = .blue
         imageView2.backgroundColor = .yellow
         imageView3.backgroundColor = .green
         imageView4.backgroundColor = .blue
         self.addSubview(scrView)
        scrView.addSubview(imageView0)
         scrView.addSubview(imageView1)
         scrView.addSubview(imageView2)
         scrView.addSubview(imageView3)
         scrView.addSubview(imageView4)
         
         scrView.isPagingEnabled = true //翻页属性
         scrView.contentOffset = CGPoint(x: 0, y: 0) //图大w显示位置
         scrView.showsVerticalScrollIndicator=false
         scrView.showsHorizontalScrollIndicator=false
         scrView.delegate=self
    }
    
 func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let page = floor((scrollView.contentOffset.x - pageWidth / 2.0) / pageWidth) + 1;
          if(page == 0) {
          //  scrollView.setContentOffset(CGPoint(x: pageWidth*3, y: 0), animated: false)
            }else if(page==3){
            scrollView.setContentOffset(CGPoint.zero, animated: false)
        }
    }
}
