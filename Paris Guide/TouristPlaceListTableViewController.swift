//
//  TouristPlaceListTableViewController.swift
//  Paris Guide
//
//  Created by Bharat Nagandla on 5/25/18.
//  Copyright © 2018 Bharat Nagandla. All rights reserved.
//

import UIKit

class TouristPlaceListTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var touristListTableView: UITableView!
    
    let placesNames = ["Eiffel Tower","Louvre","Arc de Triomphe","Notre Dame de Paris","Sacre-Coeur","Jardin du Luxembourg","Musee d'Orsay","Centre Pompidou","Sainte-Chapelle","Place de la Concorde","Palace of Versailles","Pont Alexandre III","Champs-Elysées","Les Catacombes","Musee Rodin","Seine Cruise","Les Invalides","Palais Garnier","Conciergerie","Pantheon"]
    
    let placeImages = ["eiffel_tower","louvre","arc_de_triomphe","notre_dame_de_paris","sacre_coeur","jardin_du_luxembourg","musee_dorsay","centre_pompidou","sainte_chapelle","place_de_la_concorde","palace_of_versailles","pont_alexandre_iii","champs_elysees","les_catacombes","musee_rodin","seine_cruise","les_invalides","palais_garnier","conciergerie","pantheon_paris"]
    
    let placeDescriptions = ["Visiting the iconic symbol of Paris usually ranks as the number one thing to do for most tourists. Towering more than 1,000 feet (300 meters) high in the Champ de Mars park, this iron structure was constructed for the 1889 World Exposition. One of the world’s most photographed tourist attractions, the Eiffel Tower presents an excellent photography opportunity for both day and night times. Visitors can ride the elevator to see incredible views of the city or dine in one of the two fine restaurants that are situated within the tower.","Topping the list of the world’s most visited museums, the Louvre Museum is located in the Louvre Palace with its signature glass pyramid marking its entrance. Housing a collection of more than 1 million objects, the Louvre boasts some of the world’s most famous art works such as Leonardo da Vinci’s “Mona Lisa,” Michelangelo’s “Dying Slave” and the Greek statue, “Venus of Milo.” Other popular exhibits include the extravagant apartments of Napoleon III, the ancient Code of Hammurabi, Egyptian antiquities and paintings by masters like Rembrandt and Rubens.","One of the most popular tourist attractions in Paris, the Arc de Triomphe was constructed in 1806 to memorialize the triumphal battles of Napoleon Bonaparte. Standing 164 feet high and 148 feet (50 by 45 meters) wide, the arch features intricate reliefs depicting victorious battles and engraved names of many who died fighting for the emperor. Beneath the arch is the Tomb of the Unknown Soldier from the first world war.","No trip to Paris could be complete without a visit to the world famous Notre Dame cathedral. Standing more than 400 feet (120 meters) high with two lofty towers and a spire, this marvelous church is considered a supreme example of French Gothic architecture. A tour of this 13th century masterpiece allows visitors to admire the awe-inspiring rose windows, Gothic carvings, beautiful sculptures and a collection of relics.","One of the most noticeable landmarks in Paris is the striking white-domed basilica of the Sacre-Coeur. Situated at the city’s highest point on Montmartre hill, this stunning basilica draws many tourists every year to see its marble architecture and gorgeous interior. A tour awards visitors with views of gold mosaics, stained-glass windows and one of the world’s largest clocks.","Known in English as the Luxembourg Gardens, this public park is the second largest in Paris. Visitors here can picnic or stroll leisurely among beautiful lawns, formal gardens and fruit orchards that feature many artistic statues and fountains. For fun and sport, there are jogging paths, tennis courts and fitness equipment. Children can play in the huge playground, ride ponies, watch a puppet show and sail model boats in a pond.","A must-do for art lovers, the Musee d’Orsay is known for housing the world’s premier collection of impressionist paintings. Located in a former railway station, this grand museum showcases thousands of art works and objects that cover a period between the mid-1800s and the early 1900s. Visitors can walk through several rooms to view amazing art works by many famous artists such as Monet, Van Gogh, Cezane, Degas, Pissarro, Renoir and Jean-Francois Millet.","Designed in the style of high-tech architecture, Centre Pompidou is a cultural institution in the Beaubourg area of the 4th arrondissement. It houses a vast public library, the Musée National d’Art Moderne which is the largest museum for modern art in Europe, a bookshop, a movie theater and a panoramic terrace. The library occupies the first three floors of the building, while the museum’s permanent collection is located on floors 4 and 5. The first and top floor are used for large expositions. The Centre is named after Georges Pompidou, the President of France from 1969 to 1974 who commissioned the building.","Begun sometime after 1239, the Sainte-Chapelle is considered among the highest achievements of Gothic architecture. Its construction was commissioned by King Louis IX of France to house his collection of Passion Relics, including Christ’s Crown of Thorns, one of the most important relics in medieval Christendom. Although damaged during the French revolution, and restored in the 19th century, it retains one of the most extensive in-situ collections of 13th-century stained glass anywhere in the world.","At the east end of the Champs-Elysées is Place de la Concorde, the largest square in Paris with fantastic vistas in every direction. It was in this square that the French King Louis XVI, Marie Antoinette and many others were guillotined during the French revolution. The large 3200 years old Egyptian obelisk in the center of the Place de la Concorde was brought from the Temple of Luxor in the 19th century.","The Palace of Versailles started out life as a royal hunting lodge, but later became a palace housing the king’s court. The mammoth structure is ornate, opulent and over the top in its richness. It is one of Paris’s most visited landmarks, with visitors coming to see its magnificent gardens and the Hall of Mirrors with its 357 mirrors decorating 17 arches. The Palace of Versailles ceased being a royal residence during the French Revolution and today houses a museum of French history.","In a city where romance reigns, what could be more romantic than the Pont Alexandre III, a bridge that is deemed to be the most extravagant and ornate in Paris. Named for the Russian tsar, this steel single arch bridge spans the Seine, connecting the districts of Champs-Elysees, Les Invalides and Eiffel Tower. Seeing the bridge is almost like going to an art gallery, since numerous French sculptors made the statues, including winged horses, nymphs and cherubs that adorn the top.","The tree-lined Avenue des Champs-Elysees is Paris’s most famous street and has even been described as the most beautiful avenue in the world. Just over a mile long, the boulevard connects the Arc de Triomphe and the Place de la Concorde. Life in Paris centers around the Champs-Elysees. It’s an avenue lined with restaurants, upscale boutiques, museums and night clubs. It’s home to the Bastille Day military parade and the end of the Tour de France.","In contrast with the City of Lights, Les Catacombes represents the dark side of Paris. Just under a mile long beneath the streets of Paris, this tourist attraction presents a gruesome side: the remains of millions of Parisians who were moved there when old cemeteries started closing years ago. Bones are arranged artistically; poems and other passages can be found throughout. Some bodies, such as those killed in the French Revolution, came directly here, bypassing the cemeteries.","Travelers who’ve seen copies of the famous sculpture The Thinker can visit the real thing when they’re in Paris. The statue was sculpted by Auguste Rodin, a famous early 20th century French artist. The Thinker as well as 6,600 other sculptures can be found at the Musee Rodin, established in 1919 in his former studio, the Hotel Biron in central Paris. Many of his famous sculptures can be found in gardens that surround the museum.","The River Seine runs nearly 800 km (500 miles) through France on its way to the English Channel. Cruising the river as it winds through Paris is one of the most romantic things visitors can do. Seine cruises pass under numerous bridges in Paris, going by such sights as the Louvre, Notre Dame Cathedral and the Eiffel Tower. A Seine cruise lasts about an hour, but what a magic hour it is! A Seine cruise also is a good way to experience Paris at night.","Les Invalides is a complex of buildings that honors the French military. It was built in 1670 as a hospital and retirement home for vets. It still serves that function today as well as many more. Les Invalides is home to military museums and a church that is the burial site of its war heroes, including Napoleon Bonaparte. Les Invalides is where rioters obtained the cannons and muskets they used later that day to storm the Bastille, thus kicking off the French Revolution.","Architect Charles Garnier spared no ornate detail when he designed the Palais Garnier in the 19th century. Perhaps this is why the building was the most expensive of its era. Seating nearly 2,000 people, the Palais Garnier is home to the National Opera of Paris. It is the star of the novel and subsequent films, Phantom of the Opera. The Palais Garnier is still in use today though mainly for ballet and also is home to the opera library museum.","The Conciergerie was built in the 10th century to be the main palace for French kings who, over the centuries, enlarged it. Its Great Hall was one of the largest in Europe; another hall was where the palace’s 2,000 workers ate. Some buildings were converted into a prison in the 14th century. The palace later became a revolutionary tribunal and prison during the Reign of Terror, with famous prisoners including Marie Antoinette and Madame du Barry. Today the Conciergerie is a popular tourist attraction in Paris but also still serves as courts.","The Pantheon is where famous French citizens are buried. Modeled after the Pantheon in Rome, it was originally a church dedicated to St. Genevieve, the patron saint of Paris, and her relics. The church was rebuilt in the neoclassical style by King Louis XV to thank God for his recovery from serious illness. It was changed to a mausoleum during the French Revolution to honor revolutionary martyrs. Famous people buried here include Voltaire, Victor Hugo and Marie Curie."]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func viewWillAppear(_ animated: Bool) {
        touristListTableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    public func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return placesNames.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TouristPlaceListCellID", for: indexPath) as! TouristPlaceListTableViewCell
        cell.placeName.text = placesNames[indexPath.row]
        cell.placeImage.image = UIImage.init(imageLiteralResourceName: placeImages[indexPath.row])
        return cell
    }
    
    public func tableView(_ tableView: UITableView,heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200;
    }
    
    public func tableView(_ tableView: UITableView,
                   didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! TouristPlaceListTableViewCell
        
        let touristPlaceDetailsViewController = self.storyboard?.instantiateViewController(withIdentifier: "TouristPlaceDetailsViewController") as? TouristPlaceDetailsViewController
        touristPlaceDetailsViewController?.selectedPlaceImage = cell.placeImage.image!
        touristPlaceDetailsViewController?.selectedPlaceName = cell.placeName.text!
        touristPlaceDetailsViewController?.selectedPlaceDetails = placeDescriptions[indexPath.row]
        self.navigationController?.pushViewController(touristPlaceDetailsViewController!, animated: true)
    }

}
