//
//  MovieDetailsViewController.swift
//  flix
//
//  Created by Nirvana Persaud  on 9/20/21.
//

import UIKit
import AlamofireImage
class MovieDetailsViewController: UIViewController {
    
   
    @IBOutlet weak var backDropView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    
    var movie: [String:Any]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = movie["title"] as? String
        titleLabel.sizeToFit()
        
        synopsisLabel.text = movie["overview"] as? String
        synopsisLabel.sizeToFit()
        
        let baseUrl="https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterURL=URL(string: baseUrl + posterPath)
        
        posterView.af.setImage(withURL:posterURL!)
        
        let backDropPath = movie["backdrop_path"] as! String
        let backDropUrl=URL(string: "https://image.tmdb.org/t/p/w780" + backDropPath)
        
        backDropView.af.setImage(withURL:backDropUrl!)
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
