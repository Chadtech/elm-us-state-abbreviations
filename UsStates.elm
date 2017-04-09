module UsStates
    exposing
        ( toState
        , fromState
        , Abbreviation(..)
        )

{-| Here are the abbreviations for every US State, as a union type, and two functions to convert to state names as strings.
@docs Abbreviation
@docs toState
@docs fromState
-}


{-| Every US State abbreviation.

    import UsState exposing (Abbreviation(..))

    toString AZ == "AZ"  -- True

-}
type Abbreviation
    = AL
    | AK
    | AZ
    | AR
    | CA
    | CO
    | CT
    | DE
    | DC
    | FL
    | GA
    | HI
    | ID
    | IL
    | IN
    | IA
    | KS
    | KY
    | LA
    | ME
    | MT
    | NE
    | NV
    | NH
    | NJ
    | NM
    | NY
    | NC
    | ND
    | OH
    | OK
    | OR
    | MD
    | MA
    | MI
    | MN
    | MS
    | MO
    | PA
    | RI
    | SC
    | SD
    | TN
    | TX
    | UT
    | VT
    | VA
    | WA
    | WV
    | WI
    | WY


{-| Get the states name from the abbreviation

    UsState.toState AZ == "arizona" -- True

-}
toState : Abbreviation -> String
toState abbreviation =
    case abbreviation of
        AL ->
            "alabama"

        AK ->
            "alaska"

        AZ ->
            "arizona"

        AR ->
            "arkansas"

        CA ->
            "california"

        CO ->
            "colorado"

        CT ->
            "connecticut"

        DE ->
            "delaware"

        DC ->
            "district of columbia"

        FL ->
            "florida"

        GA ->
            "georgia"

        HI ->
            "hawaii"

        ID ->
            "idaho"

        IL ->
            "illinois"

        IN ->
            "indiana"

        IA ->
            "iowa"

        KS ->
            "kansas"

        KY ->
            "kentucky"

        LA ->
            "louisiana"

        ME ->
            "maine"

        MT ->
            "montana"

        NE ->
            "nebraska"

        NV ->
            "nevada"

        NH ->
            "new hampshire"

        NJ ->
            "new jersey"

        NM ->
            "new mexico"

        NY ->
            "new york"

        NC ->
            "north carolina"

        ND ->
            "north dakota"

        OH ->
            "ohio"

        OK ->
            "oklahoma"

        OR ->
            "oregon"

        MD ->
            "maryland"

        MA ->
            "massachusetts"

        MI ->
            "michigan"

        MN ->
            "minnesota"

        MS ->
            "mississippi"

        MO ->
            "missouri"

        PA ->
            "pennsylvania"

        RI ->
            "rhode island"

        SC ->
            "south carolina"

        SD ->
            "south dakota"

        TN ->
            "tennessee"

        TX ->
            "texas"

        UT ->
            "utah"

        VT ->
            "vermont"

        VA ->
            "virginia"

        WA ->
            "washington"

        WV ->
            "west virginia"

        WI ->
            "wisconsin"

        WY ->
            "wyoming"


{-| Get the states abbreviation from its name

    UsState.fromState "Arizona" == Just AZ     -- True
    UsState.fromState "Arizona   " == Just AZ  -- True
    UsState.fromState "arizona" == Just AZ     -- True

    UsState.fromState "puerto rico" == Nothing -- True

-}
fromState : String -> Maybe Abbreviation
fromState str =
    case String.trim <| String.toLower str of
        "alabama" ->
            Just AL

        "alaska" ->
            Just AK

        "arizona" ->
            Just AZ

        "arkansas" ->
            Just AR

        "california" ->
            Just CA

        "colorado" ->
            Just CO

        "connecticut" ->
            Just CT

        "delaware" ->
            Just DE

        "district of columbia" ->
            Just DC

        "florida" ->
            Just FL

        "georgia" ->
            Just GA

        "hawaii" ->
            Just HI

        "idaho" ->
            Just ID

        "illinois" ->
            Just IL

        "indiana" ->
            Just IN

        "iowa" ->
            Just IA

        "kansas" ->
            Just KS

        "kentucky" ->
            Just KY

        "louisiana" ->
            Just LA

        "maine" ->
            Just ME

        "montana" ->
            Just MT

        "nebraska" ->
            Just NE

        "nevada" ->
            Just NV

        "new hampshire" ->
            Just NH

        "new jersey" ->
            Just NJ

        "new mexico" ->
            Just NM

        "new york" ->
            Just NY

        "north carolina" ->
            Just NC

        "north dakota" ->
            Just ND

        "ohio" ->
            Just OH

        "oklahoma" ->
            Just OK

        "oregon" ->
            Just OR

        "maryland" ->
            Just MD

        "massachusetts" ->
            Just MA

        "michigan" ->
            Just MI

        "minnesota" ->
            Just MN

        "mississippi" ->
            Just MS

        "missouri" ->
            Just MO

        "pennsylvania" ->
            Just PA

        "rhode island" ->
            Just RI

        "south carolina" ->
            Just SC

        "south dakota" ->
            Just SD

        "tennessee" ->
            Just TN

        "texas" ->
            Just TX

        "utah" ->
            Just UT

        "vermont" ->
            Just VT

        "virginia" ->
            Just VA

        "washington" ->
            Just WA

        "west virginia" ->
            Just WV

        "wisconsin" ->
            Just WI

        "wyoming" ->
            Just WY

        _ ->
            Nothing
