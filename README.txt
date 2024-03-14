# TpSystemeMicroControleur
Ce GITHUB est utilisé pour un TP Systèmes à Microcontroleurs à l'ENSEA.
Il est réalisé en binôme sur 4 séance.
L'objectif de ce TP est de concevoir, assembler et tester une carte électronique contenant un microcontrôleur STM32.
KICAD sera utilisé.
Faire un filtre numérique simple pour prouver le bon fonctionnement de la carte.

Question 1.1.6 : Baud rate 1115 200 Bits/s

Question 1.2.13 : PB9 est relié à la masse pour permettre le démarrage du STM32 depuis sa mémoire flash. Si PB9 était connecté à VDD alors le microcontroleur démarrerait en mode programmation. On peut retrouver ces informations dans la datasheet du STM32 ( 3.4.4 At startup, BOOT0 pin and nBOOT0, nBOOT1 and nBOOT_SEL option bits are used to select one of three boot options:• Boot from Flash memory• Boot from System memory• Boot from embedded RAM)

Question 1.2.14 : Les composants L1,C5 et C7 permettent de stabiliser l'alimentation  du STM32.

Question 1.3.3 : Page 3 sur 17 avec un minimum de 0,47 uF et maximum de 1uF (choix pris en conception)

Question 1.3.5 : Page 25 sur 49 où est indiqué que C1 = 10uF et C2 = 0,1uF

Question 1.3.6 : La broche CS/ permet au STM32 de sélectionner le DAC parmis tous les composants utilisés dans notre architecture. On peut voir sur STM32cubeMX que la sortie PA3 est utilisé en GPIO pour venir piloter cette broche. Lorsque CS/=0 alors le DAC est prêt à recevoir des données car il a été selectionné par le STM32.

Question 1.3.7 : Lorsque l'on n'utilise pas la broche LDAC/ alors on est en mode asynchrone, les valeurs analogiques sont placés instantanémment en sortie du DAC et transmis en DAC_OUT. Si on utilise la broche LDAC/ alors on est en mode synchrone, les valeurs analogiques sont placés en sortie du DAC lorsque l'on aura LDAC/=0

Question 1.3.8 : Le signal MISO n'est pas utilisé. Ce qui nous interesse dans notre application c'est la transmission de données du maitre vers l'esclave (STM32 vers le DAC) et non l'inverse. On utilisera dans notre projet le signal MOSI.

Question 1.3.10 : On peut retrouver ces indications dans la datasheet du STM32-V3MINI à la page 19/28

Question 1.4.3 : Par exemple dans 0805, 08 représente la longueur du composant et 05 la largeur du composant (0.08 pouces et 0.05 pouces). Les composants sont des composants CMS. Les empruntes permettent de garantir que les pads seront de la bonne dimension pour placer les composants.

Question 1.4.4 : Ils désignent tous des boitiers utilisés pour entourer les composants placés sur notre PCB. LQFP (Low-profile Quad Flat Package) signifie que c'est un boitier de faible hauteur pouvant couvrir des composants avec de nombreuses broches dissimulés sur les 4 extrémités du composants. SOT-223 est utilisé pour les régulateurs de tensions. A ce stade, nous pouvons penser qu'il sera utilisé pour notre régulateur BU33SD5WG-TR. SOIC est un boitier rectangulaire principalement utilisé pour des composants comme le DAC. A ce stade, nous pouvons penser qu'il sera utilisé pour notre DAC MCP4801-E/SN
test

Question 3.1.2 Utiliser des LL au lieu des HAL permet d'utiliser des registres de bas niveau pour avoir une meilleure optimisation. Les pilotes LL sont spécifiques au microp et les fonctions HAL sont plus portables.

Question 3.1.4 STATIC_INLINE est utilisé pour déclarer une fonction spécifique.

Question 3.1.5 Le compilateur va insérer les fonctions INLINE au besoin d'appel. C'est pour cette raison que du code est écrit dans ces dernières. Cela remplace un appel de fonction communémement réalisé en C.

Question 3.2.2 Nous avons une horloge de 16 Mhz, on aura donc un prescaler=63 sachant que notre Counter period (ARR)=255 pour avoir 1khz.

Question 3.3.3 Nous avons une horloge de 16 Mhz, on aura donc un prescaler=63 sachant que notre Counter period (ARR)=255 pour avoir 1khz.

Question 3.3.6 La routine du service d'interruption se situe dans le fichier stm32l0xx_it.c

Question 3.3.7 Les librairies LL sont beaucoup plus bas niveau. Il est nécessaire de connaître le hardware pour les utiliser. Par soucis de mémoire interne au STM32,leur utilisation est rendu obligatoire pour ce TP. 
              
Question 3.3.8 Il faut gérer le flag de l'appel de l'interruption. Si ce n'est pas fait celà on peut boucler en continu dans l'interruption sans y sortir.

Question 3.3.9 Il faut mettre à 0 le flag à la fin de l'interruption.

Question 3.4.5 Il manque le & devant ch dans SerialTransmit(ch,1)
