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
