# dogfooding

- Åben callstack efter thoughts lukker ikke thoughts filen.
- floating point window skal altid åbnes i midten af skærmen. Uafh af hvor mange split screens man har åbent.
- Efter at have thoughts åben 2 steder og manuelt åbnet den. Kan man nu ikke lukke den med ]c
    - kan godt lukke callstack, men ikke thoughts
    - Ser ikke ud at lukke thoughts virker generelt.
- Får error message når man åbner thoughts direkte
- Hvad hvis man forsøger at kalde newheader fra thoughts.
- Thoughts bliver ikke lukket hvis man står i den og skal åbne callstack
- Hvis man laver :q i et window, så bliver den jo ikke fjernet fra windows.
  - Hver gang du starter nvim, får du en tom windows={}. Så det skal virkelige gå galt hvis man skal kunne mœrke noget over hovedet.
- Håndtering af swap filer
  - sœt den ikke til at lave swap filer
- Overskrift til CallStack og Thoughts
- Lav push / pop metoder til callstack som samtidig laver en overskrift (baset på indentention) med samme navn og link til Thoughts.md
  - Hvis ikke man vil have der laves en overskrift og link i thoughts, lader man bare vœre med at bruge push metoden. 
- Hvis man laver en ny CS i fx nvim/, så får den write access problemer.
- Hvis man lukker vim uden at skrive til bufferes får man en trœls fejl
