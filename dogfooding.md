# dogfooding

- Hvis man åbner callStack i 2 forskellige vinduer, så kan man kun lukke det ene
  - Da man kun husker 1 windowID
  - I stedet for win_hide, kan man vel bare tage det current window og så bruge ":q", så behøver man ikke at vide mere.
    - Du kan ikke bare close current window, fordi det kan vœre man ikke er i stack vinduet og så lukker man sin fil
  - Ved at gemme windowID's som en stack vil man altid lukke dem i en bestemt rœkkefølge.
- Hvis man laver :q i et window, så bliver den jo ikke fjernet fra stacken og så får man en fejl
- Kan man få winId fra det active window, så skal man bare verificere at det window er callStack, men det kan man jo ikke rigtig, så skal man tjekke om det winID er i stacken og så remove det.
  - Stacken vil ss ikke vœre så dyb, så man vil hurtig kunne gøre det (~2,3 elementer)
- Nemt kunen hoppe til og fra vinduet
- Skal ikke kunne kalde callStack fra Callstack vinduet


