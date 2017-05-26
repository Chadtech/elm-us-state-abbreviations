# Elm US State Abbreviations

A simple Elm package for US State abbreviations.


``` Elm
import UsStates exposing (Abbreviation(..))
import UsStates

fromState : String -> Maybe Abbreviation
toState : Abbreviation -> String

UsState.fromState "   arizona" == Just AZ -- True
UsState.toState AZ == "arizona"           -- True
```
