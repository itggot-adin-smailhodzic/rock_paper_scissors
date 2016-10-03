# rock_paper_scissors

Du ska skriva en del av ett program för att spela Sten - Sax - Påse (Rock - Paper - Scissors på engelska)

Reglerna ser ut som följer:

* sten (rock) vinner över sax (scissors)
* sax (scissors) vinner över påse (paper)
* påse (paper) vinner över sten (rock)
* om båda tävlande har samma hand blir det oavgjort.

Du ska skriva en funktion (`compare_hands`) som tar två strängar (`player_1_hand:`, `player_2_hand:`) **som argument** och **returnerar** `"player_1"`, `"player_2"` eller `"tie"` beroende på utfallet.

### Flödesschema ###

Skapa ett flödesschema för varje funktion.

Testa flödesschemat med penna och papper.

### Exempel ###

```ruby
  < compare_hands(player_1_hand: 'scissors', player_2_hand: 'rock')
  #=> "player_2"
  
  < compare_hands(player_1_hand: 'paper', player_2_hand: 'paper')
  #=> "tie"

  < compare_hands(player_1_hand: 'paper', player_2_hand: 'rock')
  #=> "player_1"
```

Testning

Kör `bundle install` i projektets rotmapp för att installera alla bibliotek.

Kör `ruby test\test_funktionens_namn.rb`

Eller `rake test` för att köra alla testerna

### Bonusbana ###

Vad händer om argumenten som kommer inte inte är `"rock"`, `"paper"` eller `"scissors"`?

Uppdatera programmet så det hanterar felaktig input

### Länkar ###

Läs mer om villkor och if-satser i övning 27-30 i [*Learn Ruby the Hard Way*](http://ruby.learncodethehardway.org/book)

* [Learn Ruby the Hard Way - Exercise 27: Memorizing Logic](http://ruby.learncodethehardway.org/book/ex27.html)
* [Learn Ruby the Hard Way - Exercise 28: Boolean Practice](http://ruby.learncodethehardway.org/book/ex28.html)
* [Learn Ruby the Hard Way - Exercise 29: What If](http://ruby.learncodethehardway.org/book/ex29.html)
* [Learn Ruby the Hard Way - Exercise 30: Else and If](http://ruby.learncodethehardway.org/book/ex30.html)
