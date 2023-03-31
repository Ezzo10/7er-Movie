//
//  Prodzct.swift
//  projet10
//
//  Created by Apprenant 68 on 23/03/2023.
//

import Foundation

struct Product : Identifiable {
    var id = UUID()
    var ImageMovie : String
    var ImageProfil : String
    var NameProfil: String
    var NameMovie: String
    var Adresse : String
    var Date : String
    var Clock : String
    var TypeMovie : String
    var Dure : String
    var TextMovie : String
    var AnnonceMovie : String
    var years: Int = 0
    var month: Int = 0
}

var productList  = [Product(ImageMovie : "AvengersInf" ,ImageProfil : "messi" , NameProfil : "Floranc" ,NameMovie : "Avengers : infinity war" , Adresse : "Lyon" , Date : "26/04/2023" , Clock : "22h15", TypeMovie: "Super héros", Dure : "3h29" ,TextMovie: "The Avengers : Infinity War est un film de super-héros américain basé sur les personnages de la bande dessinée Marvel The Avengers. Il est produit par Marvel Studios et distribué par Walt Disney Studios Motion Pictures. C'est le troisième film Avengers et le dix-neuvième de l'univers cinématographique Marvel" ,AnnonceMovie : "https://www.youtube.com/watch?v=QJSoXYpPgt4"),
                    
                    
   Product(ImageMovie : "JohnWick" ,ImageProfil : "ImageJhone" , NameProfil : "Jhon" ,NameMovie : "John Wick", Adresse : "Paris 17éme" , Date : "23/07/2023" , Clock: "17h17" , TypeMovie: "Action", Dure : "3h07" , TextMovie: "Ce qui aurait pu être le banal vol d'une voiture de collection se transforme en une chasse à l'homme sans merci entre un légendaire ex-tueur à gages et le fils d'un des plus grands pontes de la mafia.",AnnonceMovie : "https://www.youtube.com/watch?v=QJSoXYpPgt4"),
                    
                    
                    Product(ImageMovie : "Nobody" ,ImageProfil : "ImageJhone" , NameProfil : "Jhony" ,NameMovie : "Nobody", Adresse : "Paris 3éme" , Date : "23/07/2023" , Clock: "17h17" , TypeMovie: "Action", Dure : "3h07" , TextMovie: "Ce qui aurait pu être le banal vol d'une voiture de collection se transforme en une chasse à l'homme sans merci entre un légendaire ex-tueur à gages et le fils d'un des plus grands pontes de la mafia.",AnnonceMovie : "https://www.youtube.com/watch?v=QJSoXYpPgt4"),
                    
                    Product(ImageMovie : "Free Guy" ,ImageProfil : "messi" , NameProfil : "Micasa" ,NameMovie : "Free Guy", Adresse : "3 rue jules lemaitre" , Date : "20/05/2023" , Clock : "11h11", TypeMovie: "Comédie", Dure : "2h08" ,TextMovie: "Avec l'identité de Spiderman désormais révélée, celui-ci est démasqué et n'est plus en mesure de séparer sa vie normale en tant que Peter Parker des enjeux élevés d'être un superhéros. Lorsque Peter demande de l'aide au docteur Strange, les enjeux deviennent encore plus dangereux, l'obligeant à découvrir ce que signifie vraiment être Spiderman.", AnnonceMovie: ""),
                    
   Product(ImageMovie : "Emma" ,ImageProfil : "emma-watson" , NameProfil : "Emma" ,NameMovie : "Emma", Adresse : "Paris 17éme" , Date : "23/07/2023"  , Clock : "22h10", TypeMovie: "Drama", Dure : "2h" ,TextMovie: "John Wick is a 2014 American action thriller film directed by Chad Stahelski and written by Derek Kolstad. The film follows John Wick (Keanu Reeves), a legendary hitman who is forced out of retirement to seek revenge against the men who killed his puppy, a final gift from his recently deceased wife",AnnonceMovie : "https://www.youtube.com/watch?v=QJSoXYpPgt4"),
                    
                    Product(ImageMovie : "Dragons 1" ,ImageProfil : "messi" , NameProfil : "Hani" ,NameMovie : "Dragons 1", Adresse : "3 rue jules lemaitre" , Date : "20/05/2023" , Clock : "14h01", TypeMovie: "Animation", Dure : "2h08" ,TextMovie: "Avec l'identité de Spiderman désormais révélée, celui-ci est démasqué et n'est plus en mesure de séparer sa vie normale en tant que Peter Parker des enjeux élevés d'être un superhéros. Lorsque Peter demande de l'aide au docteur Strange, les enjeux deviennent encore plus dangereux, l'obligeant à découvrir ce que signifie vraiment être Spiderman.", AnnonceMovie: ""),
                    
                    
  Product(ImageMovie : "uncharted" ,ImageProfil : "Zendaya jouera" , NameProfil : "Zendaya jouera" ,NameMovie : "Uncharted", Adresse : "Paris 17éme" , Date : "23/07/2023" , Clock : "20h10", TypeMovie: "Action", Dure : "2h" ,TextMovie: "Le chasseur de trésors Victor Sully Sullivan recrute Nathan Drake pour l'aider à récupérer une fortune vieille de 500 ans amassée par l'explorateur Ferdinand Magellan.",AnnonceMovie : "https://www.youtube.com/watch?v=QJSoXYpPgt4"),
                    
Product(ImageMovie : "lorgan" ,ImageProfil : "messi" , NameProfil : "Ezeddin" ,NameMovie : "Lorgan", Adresse : "Paris 15éme" , Date : "23/07/2023" ,Clock : "20h10" , TypeMovie: "Super héros", Dure : "2h20" ,TextMovie: "The Avengers : Infinity War est un film de super-héros américain basé sur les personnages de la bande dessinée Marvel The Avengers. Il est produit par Marvel Studios et distribué par Walt Disney Studios Motion Pictures. C'est le troisième film Avengers et le dix-neuvième de l'univers cinématographique Marvel",AnnonceMovie : "https://www.youtube.com/watch?v=QJSoXYpPgt4"),
                    
                    
                    Product(ImageMovie : "belle" ,ImageProfil : "messi" , NameProfil : "Dua" ,NameMovie : "la belle et la bête poster", Adresse : "3 rue jules lemaitre" , Date : "20/05/2023" , Clock : "11h11", TypeMovie: "Drama", Dure : "2h08" ,TextMovie: "Avec l'identité de Spiderman désormais révélée, celui-ci est démasqué et n'est plus en mesure de séparer sa vie normale en tant que Peter Parker des enjeux élevés d'être un superhéros. Lorsque Peter demande de l'aide au docteur Strange, les enjeux deviennent encore plus dangereux, l'obligeant à découvrir ce que signifie vraiment être Spiderman.", AnnonceMovie: ""),
                    
                    
 Product(ImageMovie : "Us" ,ImageProfil : "messi" , NameProfil : "Emma" ,NameMovie : "Us", Adresse : "Paris 17éme" , Date : "23/07/2023",Clock : "20h10" , TypeMovie: "Horreur", Dure : "2h" ,TextMovie: "Dans le futur, Logan et le professeur Charles Xavier doivent faire face à la capitulation des X-Men quand une corporation, dirigée par Nathaniel Essex, détruit progressivement tout sur son passage. Les pouvoirs de guérison de Logan s'affaiblissent à vue d'oeil et la maladie d'Alzheimer force Xavier à oublier.",AnnonceMovie : "https://www.youtube.com/watch?v=QJSoXYpPgt4"),
                    
                    
Product(ImageMovie : "Avengers agb of ultron" ,ImageProfil : "AvengersAge" , NameProfil : "Ezz" ,NameMovie : "Avengers agb of ultron", Adresse : "Paris 17éme" , Date : "23/07/2023",Clock : "20h10" , TypeMovie: "Super héros", Dure : "2h" ,TextMovie: "Alors qu'il tente de récupérer le sceptre de Loki avec l'aide de ses camarades Avengers, Tony Stark découvre que Strucker avait mis au point une intelligence artificielle révolutionnaire, plus puissante encore que Jarvis. Strucker, mis hors d'état de nuire, et le sceptre récupéré",AnnonceMovie : "https://www.youtube.com/watch?v=QJSoXYpPgt4"),
                    
                    
   Product(ImageMovie : "la-Nuit" ,ImageProfil : "emma-watson" , NameProfil : "Emma watson" ,NameMovie : "La Nuit du 12", Adresse : "Paris 17éme" , Date : "23/07/2023"  , Clock : "22h10", TypeMovie: "Drama", Dure : "2h" ,TextMovie: "John Wick is a 2014 American action thriller film directed by Chad Stahelski and written by Derek Kolstad. The film follows John Wick (Keanu Reeves), a legendary hitman who is forced out of retirement to seek revenge against the men who killed his puppy, a final gift from his recently deceased wife",AnnonceMovie : "https://www.youtube.com/watch?v=QJSoXYpPgt4"),
                    
                    
                    
                    Product(ImageMovie : "Dory" ,ImageProfil : "messi" , NameProfil : "Hani" ,NameMovie : "Le Monde de Dory", Adresse : "3 rue jules lemaitre" , Date : "20/05/2023" , Clock : "14h01", TypeMovie: "Animation", Dure : "2h08" ,TextMovie: "Avec l'identité de Spiderman désormais révélée, celui-ci est démasqué et n'est plus en mesure de séparer sa vie normale en tant que Peter Parker des enjeux élevés d'être un superhéros. Lorsque Peter demande de l'aide au docteur Strange, les enjeux deviennent encore plus dangereux, l'obligeant à découvrir ce que signifie vraiment être Spiderman.", AnnonceMovie: ""),
                    
                    Product(ImageMovie : "a quiet place" ,ImageProfil : "messi" , NameProfil : "Loca" ,NameMovie : "A quiet place", Adresse : "Paris 17éme" , Date : "23/07/2023" , Clock : "20h10", TypeMovie: "Horreur", Dure : "2h" ,TextMovie: "The Avengers : Age of ultron est un film de super-héros américain basé sur les personnages de la bande dessinée Marvel The Avengers. Il est produit par Marvel Studios et distribué par Walt Disney Studios Motion Pictures. C'est le troisième film Avengers et le dix-neuvième de l'univers cinématographique Marvel.", AnnonceMovie: ""),
                    
                    Product(ImageMovie : "Agents" ,ImageProfil : "messi" , NameProfil : "Hani" ,NameMovie : "Agents presque secrets", Adresse : "3 rue jules lemaitre" , Date : "20/05/2023" , Clock : "14h01", TypeMovie: "Comédie", Dure : "2h08" ,TextMovie: "Avec l'identité de Spiderman désormais révélée, celui-ci est démasqué et n'est plus en mesure de séparer sa vie normale en tant que Peter Parker des enjeux élevés d'être un superhéros. Lorsque Peter demande de l'aide au docteur Strange, les enjeux deviennent encore plus dangereux, l'obligeant à découvrir ce que signifie vraiment être Spiderman.", AnnonceMovie: ""),
                        
                        
                    Product(ImageMovie : "Wedding nightmare" ,ImageProfil : "Samara Weaving" , NameProfil : "Samara Weaving" ,NameMovie : "Wedding Nightmare", Adresse : "Nice" , Date : "27/03/2023" , Clock : "19h00", TypeMovie: "Horreur", Dure : "2h" ,TextMovie: "Une jeune mariée nommée Grace se joint à la famille riche et excentrique de son nouveau mari, Alex Le Domas, dans une tradition ancestrale qui se transforme en un jeu mortel déterminé par un tirage au sort au cours duquel tous luttent pour leur survie.", AnnonceMovie: ""),
                    
                    
                    
                    Product(ImageMovie : "un homme" ,ImageProfil : "ImageJhone" , NameProfil : "Jhony" ,NameMovie : "un homme en colère poster", Adresse : "Paris 3éme" , Date : "23/07/2023" , Clock: "17h17" , TypeMovie: "Action", Dure : "3h07" , TextMovie: "À Los Angeles, Harry ou H, un convoyeur de fond fraîchement engagé surprend ses collègues par l'incroyable précision de ses tirs de riposte alors qu'ils subissent les assauts de braqueurs expérimentés.Tous se demandent désormais qui il est, d'où il vient et pourquoi il est là. Les véritables intenti",AnnonceMovie : "https://www.youtube.com/watch?v=QJSoXYpPgt4"),
                        
                        
                    Product(ImageMovie : "the conjuring 1" ,ImageProfil : "Patrick Wilson" , NameProfil : "Patrick Wilson" ,NameMovie : "The conjuring 1", Adresse : "25 Rue Pontus de Tyard" , Date : "19/01/2023" , Clock : "17h30", TypeMovie: "Horreur", Dure : "2h" ,TextMovie: "The Avengers : Endgame est un film de super-héros américain basé sur les personnages de la bande dessinée Marvel The Avengers. Il est produit par Marvel Studios et distribué par Walt Disney Studios Motion Pictures. C'est le troisième film Avengers et le dix-neuvième de l'univers cinématographique Marvel.", AnnonceMovie: ""),
                        
                    Product(ImageMovie : "insidious 1" ,ImageProfil : "Margot Roby" , NameProfil : "Margot Roby" ,NameMovie : "insidious 1", Adresse : "1 rue Albert Legrand" , Date : "23/05/2023" , Clock : "12h20", TypeMovie: "Horreur", Dure : "2h" ,TextMovie: "Dans sa deuxième année de lutte contre le crime, le milliardaire et justicier masqué Batman explore la corruption qui sévit à Gotham et notamment comment elle pourrait être liée à sa propre famille, les Wayne, à qui il doit toute sa fortune. En parallèle, il enquête sur les meurtres d'un tueur en série qui se fait connaître sous le nom de Sphinx et sème des énigmes cruelles sur son passage.", AnnonceMovie: ""),
                        
                    Product(ImageMovie : "Rampage" ,ImageProfil : "Justice_League" , NameProfil : "Camil" ,NameMovie : " Rampage : Hors de contrôle", Adresse : "Paris 16éme" , Date : "13/08/2023" , Clock : "17h40", TypeMovie: "Action", Dure : "2h" ,TextMovie: "Ovi Mahajan, le fils d'un baron de la drogue indien, est capturé par des ennemis de son père. Pour le sauver, on fait appel à Tyler Rake, un mercenaire sans pitié au passé trouble. Arrivé sur place, ce dernier comprend rapidement que cette mission est plus périlleuse qu'il le croyait", AnnonceMovie: ""),
                    
                    Product(ImageMovie : "insidious 3" ,ImageProfil : "messi" , NameProfil : "Paul" ,NameMovie : "insidious 3", Adresse : "53 rue du lutin" , Date : "04/09/2023" , Clock : "10h10", TypeMovie: "Horreur", Dure : "2h" ,TextMovie: "Craignant les débordements d'un superhéros aux pouvoirs infinis, le justicier de Gotham City, lui-même doté d'une détermination et d'une force de frappe redoutables, affronte le sauveur des temps modernes adulé de Metropolis sous le regard du monde entier qui se demande quel type de héros lui convient le mieux.", AnnonceMovie: ""),
                        
                    Product(ImageMovie : "the nun" ,ImageProfil : "Patrick Wilson" , NameProfil : "toto" ,NameMovie : "Patrick Wilson", Adresse : "Paris 15éme" , Date : "01/04/2023" , Clock : "20h45", TypeMovie: "Horreur", Dure : "2h" ,TextMovie: "Arthur Fleck, comédien raté, rencontre des voyous violents en errant dans les rues de Gotham City déguisé en clown. Méprisé par la société, Fleck s'enfonce peu à peu dans la démence et devient le génie criminel connu sous le nom de Joker, un dangereux tueur psychotique.", AnnonceMovie: ""),
                        
                    
                    Product(ImageMovie : "Baywatch" ,ImageProfil : "messi" , NameProfil : "Hani" ,NameMovie : "Baywatch : Alerte à Malibu", Adresse : "3 rue jules lemaitre" , Date : "20/05/2023" , Clock : "14h01", TypeMovie: "Comédie", Dure : "2h08" ,TextMovie: "Avec l'identité de Spiderman désormais révélée, celui-ci est démasqué et n'est plus en mesure de séparer sa vie normale en tant que Peter Parker des enjeux élevés d'être un superhéros. Lorsque Peter demande de l'aide au docteur Strange, les enjeux deviennent encore plus dangereux, l'obligeant à découvrir ce que signifie vraiment être Spiderman.", AnnonceMovie: " "),
                    
                    Product(ImageMovie : "Batman_V_Superman" ,ImageProfil : "messi" , NameProfil : "Marc" ,NameMovie : "Batman Vs Superman", Adresse : "12 rue de MontMorceau" , Date : "14/10/2023" , Clock : "18h00", TypeMovie: "SuperHero", Dure : "2h" ,TextMovie: "Cinq ans ont passé depuis le départ de Superman à la recherche de survivants de Krypton. À son retour sur Terre, revenu à Metropolis, il découvre que Lois Lane est désormais mère de famille et que Lex Luthor, libéré de prison, a dérobé un cristal kryptonien et prépare un nouveau plan machiavélique pour détruire le monde.", AnnonceMovie: ""),
                        
                    Product(ImageMovie : "thor-ragnarok" ,ImageProfil : "ImageJhone" , NameProfil : "Thor ragnarok" ,NameMovie : "logan", Adresse : "2 chemin de la forêt" , Date : "02/01/2024" , Clock : "20h00", TypeMovie: "SuperHero", Dure : "3h20" ,TextMovie: "Dans le futur, Logan et le professeur Charles Xavier doivent faire face à la capitulation des X-Men quand une corporation, dirigée par Nathaniel Essex, détruit progressivement tout sur son passage. Les pouvoirs de guérison de Logan s'affaiblissent à vue d'oeil et la maladie d'Alzheimer force Xavier à oublier.", AnnonceMovie: "John Wick Parabellum"),
                    
                    Product(ImageMovie : "avec-toi" ,ImageProfil : "messi" , NameProfil : "Nemat" ,NameMovie : "Avec toi", Adresse : "3 rue jules lemaitre" , Date : "20/05/2023" , Clock : "11h11", TypeMovie: "Drama", Dure : "2h08" ,TextMovie: "Avec l'identité de Spiderman désormais révélée, celui-ci est démasqué et n'est plus en mesure de séparer sa vie normale en tant que Peter Parker des enjeux élevés d'être un superhéros. Lorsque Peter demande de l'aide au docteur Strange, les enjeux deviennent encore plus dangereux, l'obligeant à découvrir ce que signifie vraiment être Spiderman.", AnnonceMovie: ""),
                    
                    Product(ImageMovie : "John Wick Parabellum" ,ImageProfil : "Justice_League" , NameProfil : "Fayroz" ,NameMovie : " John Wick Parabellum", Adresse : "Paris 16éme" , Date : "13/08/2023" , Clock : "14h50", TypeMovie: "Action", Dure : "2h" ,TextMovie: "John Wick a transgressé une règle fondamentale: il a tué à l'intérieur même de l'Hôtel Continental. Excommunié, tous les services liés au Continental lui sont fermés et sa tête est mise à prix. John se retrouve sans soutien, traqué par tous les plus dangereux tueurs du monde.", AnnonceMovie: ""),
                        
                        
                    Product(ImageMovie : "Justice_League" ,ImageProfil : "Justice_League" , NameProfil : "Corentin" ,NameMovie : "Zack Znider's Justice league", Adresse : "Paris 16éme" , Date : "13/08/2023" , Clock : "14h50", TypeMovie: "SuperHero", Dure : "2h" ,TextMovie: "Bruce Wayne, inspiré par l'altruisme de Superman, sollicite l'aide de sa nouvelle alliée, Diana Prince, pour affronter un ennemi plus redoutable que jamais. Ensemble, Batman et Wonder Woman ne tardent pas à recruter de nouveaux éléments afin de bâtir une équipe capable de sauver la planète, de plus en plus menacée.", AnnonceMovie: ""),
                    
                    Product(ImageMovie : "love-movie" ,ImageProfil : "emma-watson" , NameProfil : "watson" ,NameMovie : "just another natural love", Adresse : "Paris 17éme" , Date : "02/21/2023"  , Clock : "22h10", TypeMovie: "Drama", Dure : "2h" ,TextMovie: "John Wick is a 2014 American action thriller film directed by Chad Stahelski and written by Derek Kolstad. The film follows John Wick (Keanu Reeves), a legendary hitman who is forced out of retirement to seek revenge against the men who killed his puppy, a final gift from his recently deceased wife",AnnonceMovie : "https://www.youtube.com/watch?v=QJSoXYpPgt4"),
                    
                    Product(ImageMovie : "Tyler Rake" ,ImageProfil : "Justice_League" , NameProfil : "Tamer" ,NameMovie : "Tyler Rake", Adresse : "Paris 16éme" , Date : "13/08/2023" , Clock : "17h40", TypeMovie: "Action", Dure : "2h" ,TextMovie: "Ovi Mahajan, le fils d'un baron de la drogue indien, est capturé par des ennemis de son père. Pour le sauver, on fait appel à Tyler Rake, un mercenaire sans pitié au passé trouble. Arrivé sur place, ce dernier comprend rapidement que cette mission est plus périlleuse qu'il le croyait", AnnonceMovie: ""),
                    
                    
                    Product(ImageMovie : "shrek" ,ImageProfil : "messi" , NameProfil : "Hani" ,NameMovie : "Shrek", Adresse : "3 rue jules lemaitre" , Date : "20/05/2023" , Clock : "14h01", TypeMovie: "Animation", Dure : "2h08" ,TextMovie: "Avec l'identité de Spiderman désormais révélée, celui-ci est démasqué et n'est plus en mesure de séparer sa vie normale en tant que Peter Parker des enjeux élevés d'être un superhéros. Lorsque Peter demande de l'aide au docteur Strange, les enjeux deviennent encore plus dangereux, l'obligeant à découvrir ce que signifie vraiment être Spiderman.", AnnonceMovie: ""),
                    
                    Product(ImageMovie : "Spiderman_No_Way_Home" ,ImageProfil : "messi" , NameProfil : "Jules" ,NameMovie : "Spiderman : No way home", Adresse : "3 rue jules lemaitre" , Date : "20/05/2023" , Clock : "11h11", TypeMovie: "SuperHero", Dure : "2h" ,TextMovie: "Avec l'identité de Spiderman désormais révélée, celui-ci est démasqué et n'est plus en mesure de séparer sa vie normale en tant que Peter Parker des enjeux élevés d'être un superhéros. Lorsque Peter demande de l'aide au docteur Strange, les enjeux deviennent encore plus dangereux, l'obligeant à découvrir ce que signifie vraiment être Spiderman.", AnnonceMovie: ""),
                    
                    Product(ImageMovie : "Captain America " ,ImageProfil : "messi" , NameProfil : "Sara" ,NameMovie : "Captain America", Adresse : "3 rue jules lemaitre" , Date : "20/05/2023" , Clock : "11h11", TypeMovie: "SuperHero", Dure : "2h08" ,TextMovie: "Avec l'identité de Spiderman désormais révélée, celui-ci est démasqué et n'est plus en mesure de séparer sa vie normale en tant que Peter Parker des enjeux élevés d'être un superhéros. Lorsque Peter demande de l'aide au docteur Strange, les enjeux deviennent encore plus dangereux, l'obligeant à découvrir ce que signifie vraiment être Spiderman.", AnnonceMovie: ""),
                    
                    Product(ImageMovie : "Taken1" ,ImageProfil : "Justice_League" , NameProfil : "Tamer" ,NameMovie : " Taken 1", Adresse : "Paris 16éme" , Date : "13/08/2023" , Clock : "17h40", TypeMovie: "Action", Dure : "2h" ,TextMovie: "Que peut-on imaginer de pire pour un père que d'assister impuissant à l'enlèvement de sa fille via un téléphone portable ? C'est le cauchemar vécu par Bryan, ancien agent des services secrets américains, qui n'a que quelques heures pour arracher Kim des mains d'un redoutable gang spécialisé dans la ", AnnonceMovie: ""),
                        
                        
                    Product(ImageMovie : "the dark knight" ,ImageProfil : "messi" , NameProfil : "Sara" ,NameMovie : "the dark knight", Adresse : "3 rue jules lemaitre" , Date : "20/05/2023" , Clock : "11h11", TypeMovie: "SuperHero", Dure : "2h08" ,TextMovie: "Avec l'identité de Spiderman désormais révélée, celui-ci est démasqué et n'est plus en mesure de séparer sa vie normale en tant que Peter Parker des enjeux élevés d'être un superhéros. Lorsque Peter demande de l'aide au docteur Strange, les enjeux deviennent encore plus dangereux, l'obligeant à découvrir ce que signifie vraiment être Spiderman.", AnnonceMovie: ""),

                    
                    Product(ImageMovie : "Black adam" ,ImageProfil : "messi" , NameProfil : "Adam" ,NameMovie : "Justice league", Adresse : "3 rue jules lemaitre" , Date : "20/05/2023" , Clock : "11h11", TypeMovie: "SuperHero", Dure : "2h08" ,TextMovie: "Avec l'identité de Spiderman désormais révélée, celui-ci est démasqué et n'est plus en mesure de séparer sa vie normale en tant que Peter Parker des enjeux élevés d'être un superhéros. Lorsque Peter demande de l'aide au docteur Strange, les enjeux deviennent encore plus dangereux, l'obligeant à découvrir ce que signifie vraiment être Spiderman.", AnnonceMovie: ""),
                    
                    Product(ImageMovie : "300" ,ImageProfil : "Justice_League" , NameProfil : "Fayroz" ,NameMovie : " 300", Adresse : "Paris 16éme" , Date : "13/08/2023" , Clock : "14h50", TypeMovie: "Action", Dure : "2h" ,TextMovie: "Adapté du roman graphique de Frank Miller, 300 est un récit épique de la Bataille des Thermopyles, qui opposa en l'an - 480 le roi Léonidas et 300 soldats spartiates à Xerxès et l'immense armée perse. Face à un invincible ennemi, les 300 déployèrent jusqu'à leur dernier souffle un courage surhumain ; leur vaillance et leur héroïque sacrifice inspirèrent toute la Grèce à se dresser contre la Perse, posant ainsi les premières pierres de la démocratie.", AnnonceMovie: ""),
                    
                    
                    Product(ImageMovie : "Johnny" ,ImageProfil : "messi" , NameProfil : "Hani" ,NameMovie : "Johnny English, le retour", Adresse : "3 rue jules lemaitre" , Date : "20/05/2023" , Clock : "14h01", TypeMovie: "Comédie", Dure : "2h08" ,TextMovie: "Avec l'identité de Spiderman désormais révélée, celui-ci est démasqué et n'est plus en mesure de séparer sa vie normale en tant que Peter Parker des enjeux élevés d'être un superhéros. Lorsque Peter demande de l'aide au docteur Strange, les enjeux deviennent encore plus dangereux, l'obligeant à découvrir ce que signifie vraiment être Spiderman.", AnnonceMovie: " "),
                    
                    Product(ImageMovie : "Justice league" ,ImageProfil : "messi" , NameProfil : "Tarek" ,NameMovie : "Justice league", Adresse : "3 rue jules lemaitre" , Date : "20/05/2023" , Clock : "11h11", TypeMovie: "SuperHero", Dure : "2h08" ,TextMovie: "Avec l'identité de Spiderman désormais révélée, celui-ci est démasqué et n'est plus en mesure de séparer sa vie normale en tant que Peter Parker des enjeux élevés d'être un superhéros. Lorsque Peter demande de l'aide au docteur Strange, les enjeux deviennent encore plus dangereux, l'obligeant à découvrir ce que signifie vraiment être Spiderman.", AnnonceMovie: ""),

                    
                    Product(ImageMovie : "attendant Bojangles" ,ImageProfil : "messi" , NameProfil : "Amil" ,NameMovie : "Malak league", Adresse : "3 rue jules lemaitre" , Date : "20/05/2023" , Clock : "11h11", TypeMovie: "Drama", Dure : "2h08" ,TextMovie: "Avec l'identité de Spiderman désormais révélée, celui-ci est démasqué et n'est plus en mesure de séparer sa vie normale en tant que Peter Parker des enjeux élevés d'être un superhéros. Lorsque Peter demande de l'aide au docteur Strange, les enjeux deviennent encore plus dangereux, l'obligeant à découvrir ce que signifie vraiment être Spiderman.", AnnonceMovie: ""),
                    
                    
                    Product(ImageMovie : "Monstres Academy" ,ImageProfil : "messi" , NameProfil : "Hani" ,NameMovie : "Monstres Academy", Adresse : "3 rue jules lemaitre" , Date : "20/05/2023" , Clock : "14h01", TypeMovie: "Animation", Dure : "2h08" ,TextMovie: "Avec l'identité de Spiderman désormais révélée, celui-ci est démasqué et n'est plus en mesure de séparer sa vie normale en tant que Peter Parker des enjeux élevés d'être un superhéros. Lorsque Peter demande de l'aide au docteur Strange, les enjeux deviennent encore plus dangereux, l'obligeant à découvrir ce que signifie vraiment être Spiderman.", AnnonceMovie: ""),
                    
                    
                    Product(ImageMovie : "Wonder Woman" ,ImageProfil : "Wonder Woman" , NameProfil : "Emad" ,NameMovie : "Wonder Woman", Adresse : "3 rue jules lemaitre" , Date : "20/05/2023" , Clock : "11h11", TypeMovie: "SuperHero", Dure : "2h08" ,TextMovie: "Avec l'identité de Spiderman désormais révélée, celui-ci est démasqué et n'est plus en mesure de séparer sa vie normale en tant que Peter Parker des enjeux élevés d'être un superhéros. Lorsque Peter demande de l'aide au docteur Strange, les enjeux deviennent encore plus dangereux, l'obligeant à découvrir ce que signifie vraiment être Spiderman.", AnnonceMovie: ""),


                    
                    
                    
                    
                    
]


