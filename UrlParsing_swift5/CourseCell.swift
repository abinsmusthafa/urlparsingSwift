//
//  CourseCell.swift
//  UrlParsing_swift5
//
//  Created by Abins Musthafa on 12/04/19.
//  Copyright © 2019 Abins Musthafa. All rights reserved.
//

import UIKit
import Kingfisher
class CourseCell: UITableViewCell {

    @IBOutlet weak var CourseImgView: UIImageView!
    @IBOutlet weak var numberOflessonLbl: UILabel!
    @IBOutlet weak var courseName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func cellConfig(course :Courses){
        courseName.text = course.name
        numberOflessonLbl.text = String(course.number_of_lessons)
        CourseImgView.kf.indicatorType = .activity
        CourseImgView.kf.setImage(with: URL(string: course.imageUrl), options: [.transition(.fade(0.2))])
    }

}
