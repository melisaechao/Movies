//
//  DetailViewController.swift
//  Movies
//
//  Created by Melissa Saechao on 3/3/23.
//

import UIKit
import Nuke


class DetailViewController: UIViewController {
    
    @IBOutlet weak var movieImageFullView: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    
    @IBOutlet weak var movieFullDescription: UILabel!
    @IBOutlet weak var voteAverageLabel: UILabel!
    @IBOutlet weak var votesLabel: UILabel!
    @IBOutlet weak var popularityLabel: UILabel!
    
    
    var movie: Movie!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        Nuke.loadImage(with: movie.movieBackdropImage, into: movieImageFullView)
        
        movieTitle.text = movie.movieTitle
        movieFullDescription.text = movie.movieDescription
        voteAverageLabel.text = movie.voteAverage
        votesLabel.text = movie.voteCount
        popularityLabel.text = movie.popularity
        
        
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
    }
}
