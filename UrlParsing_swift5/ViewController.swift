//
//  ViewController.swift
//  UrlParsing_swift5
//
//  Created by Abins Musthafa on 12/04/19.
//  Copyright © 2019 Abins Musthafa. All rights reserved.
//

import UIKit
import ProgressHUD


class ViewController: UIViewController {
    @IBOutlet weak var courseTableView: UITableView!
    
    var coursesArray : [Courses] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ProgressHUD.show("Loding")
       let url = "https://api.letsbuildthatapp.com/jsondecodable/courses"
        
    
        
       // parsing with alamofire
        
        
        
       //parse using completion normal>
//        parseCourse(url: URL(string: url)!) { (courses, err) in
//            guard   err == nil else{
//                print(err?.localizedDescription)
//                return}
//
//            if let courses = courses{
//                self.coursesArray = courses
//                DispatchQueue.main.async {
//                    self.courseTableView.reloadData()
//                    ProgressHUD.dismiss()
//                }
//
//                ProgressHUD.dismiss()
//            }
//        }
        
        
        
        
        
        
        
////parse using Result<[Course], error> file -> ParseApi.parseCourses
//        ParseApi.parseCourses(url: url) { (result) in
//
//            switch result{
//            case .success(let courses):
//                self.coursesArray = courses
//                DispatchQueue.main.async {
//                     self.courseTableView.reloadData()
//                }
//
//                ProgressHUD.dismiss()
//            case .failure(let error):
//                 ProgressHUD.dismiss()
//                print(error)
//
//
//
//            }
//
//
//
//        }
        
        
   
        
        
        
        
    }
        

        
        
        
        
        
    


    
    
//
//    fileprivate  func parseCourse(url : URL , Completion : @escaping ([Courses]?,Error?) -> ()){
//
//     let task =    URLSession.shared.dataTask(with: url) { (data, res, err) in
//
//            if let error = err{
//                Completion(nil,error)
//                return
//            }
//
//        //sucusess
//        do {
//            let courses = try JSONDecoder().decode([Courses].self, from: data!)
//            Completion(courses,nil)
//
//        }catch let josnError {
//            Completion(nil,josnError)
//        }
//
//
//
//
//        }
//        task.resume()
//
//
//
//    }

    
    

}




extension ViewController : UITableViewDelegate, UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return coursesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = courseTableView.dequeueReusableCell(withIdentifier: "courseCell", for: indexPath) as? CourseCell  {
            
            cell.cellConfig(course: coursesArray[indexPath.row])
            return cell
            
            
        }
        
        
        return UITableViewCell()
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
    
    
}
