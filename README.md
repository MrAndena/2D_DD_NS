# 2D_DD_NS

PACS Project A.Y 2023/2024 Polimi
Fork del repository originale

Per adesso in questo repository è presente il solo non linear Poisson problem. Partendo da questo codice dobbiamo prima
completarlo con il drift diffusion e succesivamente aggiungere il time dependent NS. Ricordiamoci di mantenere la divisione src, inc e mesh.
E' necessario creare dei link simbolici per la mesh che si vuole usare nelle varie simulazioni quindi un file di setup potrebbe essere una buona idea per evitare di mettere nel repository dei link simbolici dipendenti dalla gerarchia delle directory. Ovviamente questo si scrive nel README e si dice all'utente prima di eseguire il file dei link simbolici e poi di runnare il todos.
Ricordati prima di costruire la cartella build, cmake .. , make e poi link simbolico per la mesh così hai la gerarchia giusta