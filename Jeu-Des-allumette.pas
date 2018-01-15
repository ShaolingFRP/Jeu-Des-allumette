{ALGORITHME : Allumetes_1
//BUT: Réaliser un jeu des allumetes qui permet à deux joueurs de jouer
//ENTREES: Le nombre d'allumetes que le joueur souhaite retirer
//SORTIES: Le nombre d'allumetes restantes, qui a gagné


CONST
	NBMAX <- 21
	NBMIN <- 1

VAR
	choix,al,joueur : ENTIER


DEBUT
	
	al <- NBMAX
	joueur <- 1
	REPETER

		ECRIRE 'C''est au tour du joueur n : ',joueur,' il reste actuellement ',al,' allumetes'				//C'est au tour du joueur 1 nous affectons 1 à joueur
		
		REPETER
			ECRIRE 'Veuillez entrez un bon choix'
			LIRE choix
		JUSQUA (choix <= 3) ET (choix > 0)																	//Il choisi un chiffre entre 1 et 3, nous testons ce chiffre.

		SI (choix = 1) ALORS																				//Une fois le chiffre choisi et testé nous retirons donc le chiffre choisi du nombre restant d'allumetes.
			DEBUT
				al <- al -1
			FIN
		SINON SI (choix = 2) ALORS
			DEBUT
				al <- al -2
			FIN
		SINON SI (choix = 3) ALORS
			DEBUT
				al <- al -3
			FIN
		FINSI

		choix <- 0

		SI (joueur = 1) ALORS
			joueur <- 2
		SINON
			joueur <- 1
		FINSI


	JUSQUA (al = NBMIN)																					//Nous répetons l'opération jusqu'à se qu'il ne reste qu'une seul allumete, nous pouvons alors dire que le tour du prochains joueur seras perdant

	SI (joueur = 1) ALORS 																				//Donc la derniere personne ayant joué gagne, sois joueur = 1 alors le joueur 1 gagne et sinon c'est le joueur 2 qui gagne
		ECRIRE 'Le joueur 2 gagne la partie !'															//Une fois que nous savons qui est le vainqueur nous affichons donc "Le joueur (1 ou 2) gagne la partie !"
	SINON
		ECRIRE 'Le joueur 1 gagne la partie !'

FIN}










{ALGORITHME : Allumetes_2
//BUT: Réaliser un jeu des allumetes qui joue seul contre un joueur
//ENTREES: Le nombre d'allumetes que le joueur souhaite retirer
//SORTIES: Le nombre d'allumetes restantes, qui a gagné


CONST
	NBMAX <- 21
	NBMIN <- 1


VAR
	choix,al : ENTIER
	LeJoueurJoue : BOOLEAN


DEBUT
	
	al <- NBMAX
	REPETER

		ECRIRE 'C''est a votre tour, il reste actuellement ',al,' allumetes'						//C'est au tour du joueur
		LeJoueurJoue <- VRAI 																		//Nous affectons VRAI au TourDuJoueur (LeJoueurJoue)
		
		REPETER
			ECRIRE 'Veuillez entrez un bon choix'
			LIRE choix
		JUSQUA (choix <= 3) ET (choix > 0)															//Il choisi un chiffre entre 1 et 3, nous testons ce chiffre.

		SI (choix = 1) ALORS																		//Une fois le chiffre choisi et testé nous retirons donc le chiffre choisi du nombre restant d'allumetes.
			DEBUT
				al <- al -1
			FIN
		SINON SI (choix = 2) ALORS
			DEBUT
				al <- al -2
			FIN
		SINON SI (choix = 3) ALORS
			DEBUT
				al <- al -3
			FIN
		FINSI

		choix <- 0

		ECRIRE 'Votre adversaire joue'																//C'est au tour du jeu de jouer nous affectons FAUX au TourDuJoueur (LeJoueurJoue)
		LeJoueurJoue <- FAUX
		choix <- (ALEATOIRE(2)+1)																	//Le jeu choisi un chiffre aleatoire entre 1 et 3.

		SI (choix = 1) ALORS																		//Une fois le chiffre choisi nous retirons donc le chiffre choisi du nombre restant d'allumetes
			DEBUT
				al <- al -1
			FIN
		SINON SI (choix = 2) ALORS
			DEBUT
				al <- al -2
			FIN
		SINON SI (choix = 3) ALORS
			DEBUT
				al <- al -3
			FIN
		FIN SI

		choix <- 0

	JUSQUA (al = NBMIN)																				//Nous répetons l'opération jusqu'à se qu'il ne reste qu'une seul allumete, nous pouvons alors dire que le prochain tour seras perdant

	SI (LeJoueurJoue = VRAI) ALORS 																	//Donc la derniere personne ayant joué gagne, sois LeJoueurJoue = Vrai alors le joueur  gagne et sinon c'est le jeu qui gagne.
		ECRIRE 'Le joueur 1 gagne la partie !'														//Une fois que nous savons qui est le vainqueur nous affichons donc "(Le joueur 1 ou le jeu) gagne la partie !"
	SINON
		ECRIRE 'Votre adversaire gagne la partie !'

FIN}










{ALGORITHME : Allumetes_3
//BUT: Réaliser un jeu des allumetes qui joue seul contre un joueur avec une variable
//ENTREES: Le nombre d'allumetes que le joueur souhaite retirer
//SORTIES: Le nombre d'allumetes restantes, le nombre d'allumetes retirables, qui a gagné


CONST
	NBMAX <- 21
	NBMIN <- 1
	T1 <- 7
	T2 <- 5
	T3 <- 3


VAR
	choix,al,cpt,alTotalR : ENTIER
	LeJoueurJoue : BOOLEAN


DEBUT
	
	al <- T1
	alTotalR <- NBMAX

	REPETER

		ECRIRE 'C''est a votre tour il reste actuellement ',al,' allumetes sur la ligne et ',alTotalalR,'allumetes en tout'			//C'est au tour du joueur, nous lui indiquons combien d'allumetes il reste sur la ligne
		LeJoueurJoue <- VRAI 																										//Nous affectons VRAI au TourDuJoueur (LeJoueurJoue)
		
		REPETER
			ECRIRE 'Veuillez entrez un bon choix'
			LIRE choix
		JUSQUA (choix <= 3) ET (choix > 0) ET (choix <= al)																			//Il choisi un chiffre entre 1 et 3, nous testons ce chiffre pour vérifier qu'il ne dépasse pas le nombre d'allumetes restante de la ligne.

		SI (choix = 1) ALORS																										//Une fois le chiffre choisi et testé nous retirons donc le chiffre choisi du nombre restant d'allumetes de la ligne.
			DEBUT
				al <- al -1
				alTotalR <- alTotalR -1
				cpt <- cpt +1
			FIN

		SINON SI (choix = 2) ALORS
			DEBUT
				al <- al -2
				alTotalR <- alTotalR -2
				cpt <- cpt +2
			FIN

		SINON SI (choix = 3) ALORS
			DEBUT
				al <- al -3
				alTotalR <- alTotalR -3
				cpt <- cpt +3
			FIN
		FINSI

		choix <- 0
		
		SI (cpt = T1) ALORS 																										//Nous vérifions s'il reste des allumetes sur la ligne et s'il n'en reste pas nous passons à la ligne suivante
			al <- T2
		SINON SI (cpt = T2) ALORS
			al <- T3
		FIN SI

		ECRIRE 'Votre adversaire joue'																								//C'est au tour du jeu de jouer nous affectons FAUX au TourDuJoueur (LeJoueurJoue)
		LeJoueurJoue <- FAUX

		REPETER																														//Le jeu choisi un chiffre aleatoire entre 1 et 3 qui doit être inférieur ou égal au nombre d'allumetes restantes & du nombre total d'allumetes restantes.
			choix <- (ALEATOIRE(2)+1)
		JUSQUA (choix <= al) ET (choix > 0) ET (choix <= 3)

		SI (choix = 1) ALORS																										//Une fois le chiffre choisi nous retirons donc le chiffre choisi du nombre restant d'allumetes & du nombre total d'allumetes restantes
			DEBUT
				al <- al -1
				alTotalR <- alTotalR -1
				cpt <- cpt +1
			FIN

		SINON SI (choix = 2) ALORS
			DEBUT
				al <- al -2
				alTotalR <- alTotalR -2
				cpt <- cpt +2
			FIN

		SINON SI (choix = 3) ALORS
			DEBUT
				al <- al -3
				alTotalR <- alTotalR -3
				cpt <- cpt +3
			FIN
		FINSI

		choix <- 0

	JUSQUA (alTotalR = NBMIN)																										//Nous répetons l'opération jusqu'à se qu'il ne reste qu'une seul allumete au total, nous pouvons alors dire que le prochain tour seras perdant

	SI (LeJoueurJoue = VRAI) ALORS 																									//Donc la derniere personne ayant joué gagne, sois LeJoueurJoue = Vrai alors le joueur  gagne et sinon c'est le jeu qui gagne.
		ECRIRE 'Le joueur 1 gagne la partie !'																						//Une fois que nous savons qui est le vainqueur nous affichons donc "(Le joueur 1 ou le jeu) gagne la partie !"
	SINON
		ECRIRE 'Votre adversaire gagne la partie !'
	FINSI

FIN}










{PROGRAM Allumetes_1;

USES crt;

CONST
	NBMAX = 21;
	NBMIN = 1;

VAR
	choix,al,joueur : INTEGER;


BEGIN
	clrscr;

	al := NBMAX;
	joueur := 1;

	REPEAT

		WRITELN ('C''est au tour du joueur n : ',joueur,' il reste actuellement ',al,' allumetes');						//C'est au tour du joueur 1 nous affectons 1 à joueur

		REPEAT
			WRITELN ('Veuillez entrez un bon choix');
			READLN (choix);
		UNTIL (choix <= 3) AND (choix > 0);																				//Il choisi un chiffre entre 1 et 3, nous testons ce chiffre.

		IF (choix = 1) THEN																								//Une fois le chiffre choisi et testé nous retirons donc le chiffre choisi du nombre restant d'allumetes.
			BEGIN
			al := al -1
			END
		ELSE IF (choix = 2)  THEN
			BEGIN
			al := al -2
			END
		ELSE IF (choix = 3)  THEN
			BEGIN
			al := al -3;
			END;

		choix := 0;

		IF (joueur = 1) THEN
			joueur := 2
		ELSE
			joueur := 1;



	UNTIL (al = NBMIN);																									//Nous répetons l'opération jusqu'à se qu'il ne reste qu'une seul allumete, nous pouvons alors dire que le tour du prochains joueur seras perdant

	IF (joueur = 1) THEN																								//Donc la derniere personne ayant joué gagne, sois joueur = 1 alors le joueur 1 gagne et sinon c'est le joueur 2 qui gagne

		WRITELN ('Le joueur 2 gagne la partie !')																		//Une fois que nous savons qui est le vainqueur nous affichons donc "Le joueur (1 ou 2) gagne la partie !"
	ELSE
		WRITELN ('Le joueur 1 gagne la partie !');

END.}










{PROGRAM Allumetes_2;

USES crt;

CONST
	NBMAX = 21;
	NBMIN = 1;


VAR
	choix,al : INTEGER;
	LeJoueurJoue : BOOLEAN;


BEGIN
	clrscr;

	al := NBMAX;
	randomize;

	REPEAT

		WRITELN ('C''est a votre tour, il reste actuellement ',al,' allumetes');											//C'est au tour du joueur
		LeJoueurJoue := TRUE; 																								//Nous affectons VRAI au TourDuJoueur (LeJoueurJoue)
		
		REPEAT;
			WRITELN ('Veuillez entrez un bon choix');
			READLN (choix);
		UNTIL (choix <= 3) AND (choix > 0);																					//Il choisi un chiffre entre 1 et 3, nous testons ce chiffre.

		IF (choix = 1) THEN																									//Une fois le chiffre choisi et testé nous retirons donc le chiffre choisi du nombre restant d'allumetes.
			BEGIN
				al := al -1
			END
		ELSE IF (choix = 2) THEN
			BEGIN
				al := al -2
			END
		ELSE IF (choix = 3) THEN
			BEGIN
				al := al -3;
			END;

		choix := 0;

		WRITELN ('Votre adversaire joue');																					//C'est au tour du jeu de jouer nous affectons FAUX au TourDuJoueur (LeJoueurJoue)
		LeJoueurJoue := FALSE;
		choix := (RANDOM(2)+1);																								//Le jeu choisi un chiffre aleatoire entre 1 et 3.

		IF (choix = 1) THEN																									//Une fois le chiffre choisi nous retirons donc le chiffre choisi du nombre restant d'allumetes
			BEGIN
				al := al -1
			END
		ELSE IF (choix = 2) THEN
			BEGIN
				al := al -2
			END
		ELSE IF (choix = 3) THEN
			BEGIN
				al := al -3;
			END;

		choix := 0;

	UNTIL (al = NBMIN);																										//Nous répetons l'opération jusqu'à se qu'il ne reste qu'une seul allumete, nous pouvons alors dire que le prochain tour seras perdant

	IF (LeJoueurJoue = TRUE) THEN 																							//Donc la derniere personne ayant joué gagne, sois LeJoueurJoue = Vrai alors le joueur  gagne et sinon c'est le jeu qui gagne.
		WRITELN ('Le joueur 1 gagne la partie !')																			//Une fois que nous savons qui est le vainqueur nous affichons donc "(Le joueur 1 ou le jeu) gagne la partie !"
	ELSE
		WRITELN ('Votre adversaire gagne la partie !');

END.}
