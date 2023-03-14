//
//  ViewController.swift
//  Movies
//
//  Created by Melissa Saechao on 3/1/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
        var movies: [Movie] = []
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            let url = URL(string: "https://api.themoviedb.org/3/movie/now_playing?api_key=54a02e8e0e6e8fbdc63902454f04a976")!

            // Use the URL to instantiate a request
            let request = URLRequest(url: url)

            // Create a URLSession using a shared instance and call its dataTask method
            // The data task method attempts to retrieve the contents of a URL based on the specified URL.
            // When finished, it calls it's completion handler (closure) passing in optional values for data (the data we want to fetch), response (info about the response like status code) and error (if the request was unsuccessful)
            let task = URLSession.shared.dataTask(with: request) { [weak self] data, response, error in

                // Handle any errors
                if let error = error {
                    print("❌ Network error: \(error.localizedDescription)")
                }

                // Make sure we have data
                guard let data = data else {
                    print("❌ Data is nil")
                    return
                }

                // The `JSONSerialization.jsonObject(with: data)` method is a "throwing" function (meaning it can throw an error) so we wrap it in a `do` `catch`
                // We cast the resultant returned object to a dictionary with a `String` key, `Any` value pair.
                do {
                    // Create a JSON Decoder
                    let decoder = JSONDecoder()

                    // Use the JSON decoder to try and map the data to our custom model.
                    // TrackResponse.self is a reference to the type itself, tells the decoder what to map to.
                    let response = try decoder.decode(MoviesResponse.self, from: data)

                    // Access the array of tracks from the `results` property
                    let movies = response.results
                    DispatchQueue.main.async {

                        // Set the view controller's tracks property as this is the one the table view references
                        self?.movies = movies

                        // Make the table view reload now that we have new data
                        self?.tableView.reloadData()
                    }
                    print("✅ \(movies)")
                } catch {
                    print("❌ Error parsing JSON: \(error.localizedDescription)")
                }
            }

            // Initiate the network request
            task.resume()
            
            
          
            tableView.dataSource = self
        }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let indexPath = tableView.indexPathForSelectedRow {
            
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // TODO: Pt 1 - Pass the selected track to the detail view controller
        if let cell = sender as? UITableViewCell,
           let indexPath = tableView.indexPath(for: cell),
           let detailViewController = segue.destination as? DetailViewController {
            let movie = movies[indexPath.row]
    
            detailViewController.movie = movie
        }

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell
        let movie = movies[indexPath.row]
        cell.configure(with: movie)
        
        return cell
    }
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    }
        
    
