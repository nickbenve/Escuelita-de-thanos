module Lib where
import Text.Show.Functions

laVerdad = True

data Guantelete=UnGuantelete{
    material::Material,
    cantidadGemas::Int
}

data Material=Hierro|Uru|Otro

type Habilidades= String

type Universo=[Personaje]

data Personaje=UnPersonaje{
    edad::Int,
    energia::Int,
    habilidades::[Habilidades],
    nombre::String,
    planetaDondeVive::String
 }deriving(Show)

 --Punto1
chasquido::Guantelete->Universo->Universo
chasquido (UnGuantelete Uru 6) universo=reducirCantidadHabitantes universo 
chasquido (UnGuantelete _ _) universo = universo

reducirCantidadHabitantes::Universo->Universo
reducirCantidadHabitantes universo = take (cantidadATomar 2 universo) universo

cantidadATomar::Int->Universo->Int
cantidadATomar divisor universo = (length universo) `div` divisor

--Punto2
esAptopendex::Universo->Bool
esAptopendex universo= any (unMenorDe (45>)) universo

unMenorDe::(Int->Bool)->Personaje->Bool
unMenorDe condicion  = condicion.edad

--energiaTotal::Universo->Int
--energiaTotal universo = sum ( map energia (listaASumar universo)))

--listaASumar::Universo->Universo
--listaASumar universo=filter (fijarseCantidad) universo

--fijarseCantidadEnCondi::Personaje->Bool
--fijarseCantidadEnCondi = (>1).length . habilidades 
------------------------------------------------------------------------
energiaTotal::Universo->Int
energiaTotal universo = sum ( listaASumar universo)))

listaASumar::Universo->Universo
listaASumar universo= (map energia).(filter (fijarseCantidad (>1)) universo)

fijarseCantidadEnCondi::(Int->Bool)->Personaje->Bool
fijarseCantidadEnCondi condi = condi.length . habilidades 


pepe::Personaje
pepe= UnPersonaje 60 200 ["usar espada", "controlar la mente"] "pepe" "tierra"

roberto::Personaje
roberto= UnPersonaje 20 100 ["crack", "un genio"] "roberto" "marte"

tiopepe::Personaje
tiopepe= UnPersonaje 80 200 ["usar espada", "controlar la mente"] "pepe" "urano"

tioroberto::Personaje
tioroberto= UnPersonaje 40 100 ["crack", "un genio"] "roberto" "elsol"

universo::Universo
universo=[pepe,tiopepe]


chinoMaidana=UnGuantelete Uru 6
fchinoMaidana=UnGuantelete Hierro 5

--Los enanos de Nidavellir nos han pedido modelar los guanteletes que ellos producen en su herrería. 
--Un guantelete está hecho de un material (“hierro”, “uru”, etc.) y sabemos las gemas que posee.
--También se sabe de los personajes que tienen una edad, una energía, una serie de habilidades
--(como por ejemplo “usar espada”, “controlar la mente”, etc), su nombre y en qué planeta viven.
--Los fabricantes determinaron que cuando un guantelete está completo -es decir, 
--tiene las 6 gemas posibles- y su material es “uru”, se tiene la posibilidad de chasquear 
--un universo que contiene a todos sus habitantes y reducir a la mitad la cantidad de dichos
--personajes. Por ejemplo si tenemos un universo en el cual existen ironMan, drStrange, groot y 
--wolverine, solo quedan los dos primeros que son ironMan y drStrange. Si además de los 4 
--personajes estuviera viudaNegra, quedarían también ironMan y drStrange porque se considera
--la división entera.




