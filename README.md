# 2D_DD_NS

PACS Project A.Y 2023/2024 Polimi - Tommaso Andena, Giacomo Bottacini
Fork del repository originale

Per adesso in questo repository è presente il solo non linear Poisson problem. Partendo da questo codice dobbiamo prima
completarlo con il drift diffusion e succesivamente aggiungere il time dependent NS. Ricordiamoci di mantenere la divisione src, inc e mesh.

Una volta completata l'architettura delle direcotry (src,inc,mesh,code per generare mesh) si può pensare di scrivere un file di setup per creare link simbolici alla cartella delle mesh. Ovviamente questo si scrive nel README e si dice all'utente prima di eseguire il file dei link simbolici e poi di runnare. Ricordati prima di costruire la cartella build, cmake .. , make e poi link simbolico per la mesh così hai la gerarchia giusta. Quando l'architettura è ultimata scrivere anche il Doxy file e il codice Dehoxigened.

TO DO:

1) dd problemi con le BCs dei holes / electrons
2) dubbi sulla soluzione di menessini

