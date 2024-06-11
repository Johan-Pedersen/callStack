# Thoughts

## Åben callstack efter thoughts lukker ikke thoughts filen.

- Hvad sker der
    - Vi aabner thoughts
        - Laver en window handle og adder den til Windows
    - aabner CS
        - Burde lukke Thoughts
            - Sker ikke
            - Det er sikkert fordi det er det forkerte 'current_winID'
            - Grunden til man ikke kan lukke thoughts er sikkert fordi den er blevet fjernet fra Windows. Men det er bare den forkerte window man har lavet hide paa.
    - Lukker CS
    - kan ikke lukke Thoughts

- Sker det paa andre tidspunkter
    - Nej

## nh funktionen skal foerst kalde find header og hvis ikke den kan finde den, skal der laves en ny header

- Saa skal man vaere sikker paa at find header faktisk fungere  
    - Man kan godt skrive til thoughts uden ##, men hvis man har dem, saa kan det vaere et special char i bash?
    - Det er self en comment

- Naar man skal skrive til Thoughts, saa sker det med bash og der skal '#' escapes.
- Men naar man bruger find, goer vi det med en vim function. Og der skal '#' ikke escapes.
