# Callstack

- "nh" funktionen skal foerst kalde find header og hvis ikke den kan finde den, skal der laves en ny header
- Hvad hvis man laver en ny header foer man har aabnet Thoughts
    - Saa faar man ikke en Header i thoughts
- Hvad hvis man forsøger at kalde newheader fra thoughts.
    - Det skal man ikke kunne goere
    - Man faar en fejl, hvor den forsoeger at skrive til thoughts selvom man har den aaben
- floating point window skal altid åbnes i midten af skærmen. Uafh af hvor mange split screens man har åbent.
    - Maaske ikke saa slemt
- Håndtering af swap filer
  - sœt den ikke til at lave swap filer
- Hvis man laver en ny CS i fx nvim/, så får den write access problemer.
- Hvis man lukker vim uden at skrive til bufferes får man en trœls fejl
- Hvis man laver :q i et window, så bliver den jo ikke fjernet fra windows.
  - Hver gang du starter nvim, får du en tom windows={}. Så det skal virkelige gå galt hvis man skal kunne mœrke noget over hovedet.
