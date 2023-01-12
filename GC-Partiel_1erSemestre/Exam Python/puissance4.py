# Déclaration du tableau: 
grille_help = [
    ["." ,  "1" ,   "2" ,   "3" ,   "4" ,   "5" ,   "6" ,   "7" ,   "."],
    ["6",   "61",   "62",   "63",   "64",   "65",   "66",   "67",   "6"],
    ["5",   "51",   "52",   "53",   "54",   "55",   "56",   "57",   "5"],
    ["4",   "41",   "42",   "43",   "44",   "45",   "46",   "47",   "4"],
    ["3",   "31",   "32",   "33",   "34",   "35",   "36",   "37",   "3"],
    ["2",   "21",   "22",   "23",   "24",   "25",   "26",   "27",   "2"],
    ["1",   "11",   "12",   "13",   "14",   "15",   "16",   "17",   "1"],
    ["." ,  "1",    "2" ,   "3" ,   "4" ,   "5" ,   "6" ,   "7",    "."]
]

# Fonction pour placer les jetons        
def placement ():
    ligne = input(str("\t Ligne :\t"))
    colonne = input(str("\t Colonne :\t"))

    print ("\n\t\tVous avez donc selectionné la ligne",ligne,"et la colonne",colonne," !")
    #On creer une seule variable composée de la ligne et de la colonne
    result_lc= ligne+colonne

    #On verifie chaque element du tableau grille help
    for i in range (len(grille_help)):
        for k in range (len(grille_help)):
            #On place le jeton du joueur si on le peut
            try:
                if result_lc == grille_help[i][k]  and grille_aff[i][k] == " ":
                    grille_aff[i][k] = joueur
            except:
                print ("\n\t\t\t Impossible de placer un jeton à cet emplacement ! \n\t\t Merci de réessayer :")
                ligne = input(str("\t Ligne :\t"))
                colonne = input(str("\t Colonne :\t"))
                
                print ("\n\t\tVous avez donc selectionné la ligne",ligne,"et la colonne",colonne," !")
                #On creer une seule variable composée de la ligne et de la colonne
                result_lc= ligne+colonne



#Fonction lancecment de la partie
def player_play ():
    #Variable utilisable à l'exterieur de cette fonction
    global joueur
    global joueur1_jeton
    global joueur2_jeton

    joueur = 1
    if joueur == 1:
        # Joueur 1 - Affichage de la grille :
        for i in range (8):
            print ("\t\t\t\t",grille_aff[i]) 
        
        print ("\n\n\n\t\t\t\t Joueur 1, c'est à vous !\n")
        joueur = "*"
        placement()

        #On enleve un jeton à chaque fois que le Joueur 1 joue
        joueur1_jeton = joueur1_jeton - 1
        if joueur1_jeton >= 13:
            print("\t\t Il vous reste ",joueur1_jeton,"jetons !\n\n\n")
        else :
            print("Attention: Il ne vous reste plus que",joueur1_jeton,"jeton(s) !\n\n\n")

    joueur = 2
    if joueur == 2:
            # Joueur 2 - Affichage de la grille :
        for i in range (8):
            print ("\t\t\t\t",grille_aff[i]) 

        print ("\n\n\n\t\t\t\t Joueur 2, c'est à vous !\n")
        joueur = "o"
        placement()

        #On enleve un jeton à chaque fois que le Joueur 2 joue
        joueur2_jeton = joueur2_jeton - 1
        if joueur2_jeton >= 13:
            print("\t\t Il vous reste ",joueur2_jeton,"jetons !\n\n\n")
        else :
            print("Attention: Il ne vous reste plus que",joueur2_jeton,"jeton(s) !\n\n\n")


# Debut de la partie :
starting_game = (input("\t\t\t\t Bienvenue !\n \t\t Etes vous pret à lancer une partie de Puissance 4 ?\t O/N\n\t\t\t"))
while starting_game == "O" or starting_game == "o" or starting_game == "Oui" or starting_game == "oui" :

    #Eléments reinitialisés à chaque debut de partie :
    grille_aff = [
    [".","1","2","3","4","5","6","7","."],
    ["6"," "," "," "," "," "," "," ","6"],
    ["5"," "," "," "," "," "," "," ","5"],
    ["4"," "," "," "," "," "," "," ","4"],
    ["3"," "," "," "," "," "," "," ","3"],
    ["2"," "," "," "," "," "," "," ","2"],
    ["1"," "," "," "," "," "," "," ","1"],
    [".","1","2","3","4","5","6","7","."]
    ]

    joueur1_jeton = 22
    joueur2_jeton = 22

    try :
        while joueur1_jeton != 0  or joueur2_jeton != 0:
            player_play()
        print ("\t\t\t\t\t Partie terminée !\t Match nul !\n\n\n")
        
    except:
        starting_game = (input("\n\n\t\t\t\t  Voulez vous lancer une nouvelle partie de Puissance 4 ?\t O/N\n\t\t\t"))




 