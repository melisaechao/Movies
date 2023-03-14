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
    var poster: Poster!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        Nuke.loadImage(with: URL(string: "https://image.tmdb.org/t/p/w600_and_h900_bestv2/" + movie.backdrop_path.absoluteString)!, into: movieImageFullView)
        
        //Nuke.loadImage(with: movie.backdrop_path, into: movieImageFullView)
        
        
        movieTitle.text = movie.original_title
        movieFullDescription.text = movie.overview
        voteAverageLabel.text = String(format: "%.2f", movie.vote_average)
        votesLabel.text = String(format: "%d", movie.vote_count)
        popularityLabel.text = String(format: "%.3f", movie.popularity)
        
        
        
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
