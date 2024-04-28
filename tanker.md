# tanker

## Open window funktionen er meget langsom

- Synderen er popen funktionen der skal kalde cmd line

- man kan bruge vim.fn.system{'echo', 'hi'}, vim.fn.jobstart

- vim.fn.jobstart kan køre jobs i baggrunden uden at skulle starte en shell

- hvorfor er io.open dårligt

- man skal bruge :help finddir
- Vi kan bruge finddir til at finde ud af om vi er i et git repo
  - Hvis nej, laver vi bare callstack.md i currentdir
  - Hvis ja, så skal vi have den path, lav en add buffer til den path 
  - Hvordan finder man den path 
hello
