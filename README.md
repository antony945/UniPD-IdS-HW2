# UniPD-IdS-HW2
Repository per homework 2 di corso di Ingegneria del Software di UniPD.

## Istruzioni
- Clonare la repository 'ck' per ottenere il tool di analisi delle metriche del codice tramite il comando:
    ```
    git clone https://github.com/mauricioaniche/ck.git
    ```
- Entrare nella directory 'ck' appena clonata e da lì generare il JAR del tool di analisi del codice attraverso il comando:
    ```
    cd ck
    mvn clean compile assembly:single
    ```
- Spostare il JAR appena creato (il quale si troverà nella cartella _ck/target_) nella root della directory
    ```
    mv target/ck-x.x.x-SNAPSHOT-jar-with-dependencies.jar ..
    ```
- Generare le metriche per le varie versioni del progetto attraverso il comando:
    ```
    java -jar ck-x.x.x-SNAPSHOT-jar-with-dependencies.jar <project dir> true 0 false
    ```
     
