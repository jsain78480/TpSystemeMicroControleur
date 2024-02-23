# TpSystemeMicroControleur
Ce GITHUB est utilisé pour un TP Systèmes à Microcontroleurs à l'ENSEA.
Il est réalisé en binôme sur 4 séance.
L'objectif de ce TP est de concevoir, assembler et tester une carte électronique contenant un microcontrôleur STM32.
KICAD sera utilisé.
Faire un filtre numérique simple pour prouver le bon fonctionnement de la carte.

Question 1.2.13 : PB9 est relié à la masse pour permettre le démarrage du STM32 depuis sa mémoire flash. Si PB9 était connecté à VDD alors le microcontroleur démarrerait en mode programmation. On peut retrouver ces informations dans la datasheet du STM32 ( 3.4.4 At startup, BOOT0 pin and nBOOT0, nBOOT1 and nBOOT_SEL option bits are used to select one of three boot options:• Boot from Flash memory• Boot from System memory• Boot from embedded RAM)

Question 1.2.14 : Les composants L1,C5 et C7 permettent de stabiliser l'alimentation  du STM32.
