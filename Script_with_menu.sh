  #!/bin/bash
  
   while true; do
       clear
       echo "Menu principal :"
       echo "1. Option 1"
       echo "2. Option 2"
       echo "3. Quitter"
       read -p "Sélectionnez une option : " choice
 
      case $choice in
          1)
              echo "Vous avez sélectionné l'option 1."
              # Ajoutez ici le code pour l'option 1
              ;;
          2)
              echo "Vous avez sélectionné l'option 2."
              # Ajoutez ici le code pour l'option 2
              ;;
          3)
              echo "Au revoir !"
              exit 0
              ;;
          *)
              echo "Option invalide. Veuillez réessayer."
              ;;
      esac
 
      read -p "Appuyez sur Entrée pour continuer..."
  done
