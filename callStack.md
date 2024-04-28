# Call Stack

- set tab size funktion
- plugins development
    - https://miguelcrespo.co/posts/how-to-write-a-neovim-plugin-in-lua
    - https://lyz-code.github.io/blue-book/vim_plugin_development/
    - https://cj.rs/blog/tips/nvim-plugin-development/
- Kan man få bedre auto complete for vim funktioner osv.
- funktion der tager en overskrift og laver en header i thoughts.04/21/2024
    - Vi skal find ude af hvordan vi laver den rigtige indentering.
        - I forhold til at lave den rigtige subheader, så tœller vi bare hvor mange gange man har lavet indentering.
        - Hvordan skal man så gøre i forhol til at lave subheaders / underpunkter i CS'en.
            - Den skal vœre responsive, så hvis man indentere et punkt, så bliver headeren automatisk opdateret.
- Man skal vel lave det ligesom push/pop metoder
- Så push metoden laver en entry i CS, kopiere navnet og laver en headline i thoughts.md

- Det er ikke altid man vil lave en header, til et punkt. Men hvis man gør så skal den vœre responsive.
    - Så på en måde skal man vide om denne header skal opdateres.
    - Den behøver ikke opdatere med det samme. Det kan også sagtens bare vœre når man skifter til thoughts.
    - Kan godt bare se hvordan det kan komme til at føles langsomt.
    - Man kan vel bare have en liste med 1 entry per linje nummer og så hvis man laver en tab el. lignende tjekker man bare cursor position mod listen for at se hvilken entry der skal opdateres og med hvor meget.

- Måske se hvordan han har gjort det med links
    - https://github.com/jghauser/follow-md-links.nvim



