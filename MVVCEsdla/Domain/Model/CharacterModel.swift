//
//  CharacterModel.swift
//  MVVCEsdla
//
//  Created by Daniel Serrano on 5/10/23.
//

import Foundation


typealias CharactersModel = [CharacterModel]

struct CharacterModel{
    var name: String
    var job: String
    var image: String?
    var description: String
}

var sampleCharacterData: CharactersModel = [
    CharacterModel(
        name: "Frodo Bolsón",
        job: "Portador del Anillo",
        image: "frodo_bolson",
        description: "Frodo Bolsón es un hobbit valiente de la Comarca. Fue elegido para llevar el Anillo Único a la Montaña del Destino y destruirlo para siempre. Acompañado por un grupo de valientes compañeros, emprendió la peligrosa misión que cambiaría el destino de la Tierra Media."
    ),
    CharacterModel(
        name: "Aragorn",
        job: "Rey de Gondor",
        image: "aragorn",
        description: "Aragorn, también conocido como Trancos, es el heredero legítimo al trono de Gondor. Es un valiente guerrero y líder que juega un papel crucial en la lucha contra Sauron y la salvación de la Tierra Media."
    ),
    CharacterModel(
        name: "Gandalf",
        job: "Mago",
        image: "gandalf",
        description: "Gandalf el Gris es un poderoso mago que desempeña un papel fundamental en la lucha contra Sauron. Es conocido por su sabiduría, habilidades mágicas y su bastón, que es una herramienta poderosa en la batalla contra las fuerzas del mal."
    ),
    CharacterModel(
        name: "Gimli",
        job: "Guerrero Enano",
        image: "gimli",
        description: "Gimli es un valiente guerrero enano y miembro de la Comunidad del Anillo. A pesar de la enemistad histórica entre elfos y enanos, forma una fuerte amistad con Legolas durante la búsqueda del Anillo Único."
    ),
    CharacterModel(
        name: "Legolas",
        job: "Arquero Elfo",
        image: "legolas",
        description: "Legolas es un hábil arquero elfo y miembro de la Comunidad del Anillo. Es conocido por su destreza en el combate y su aguda visión, lo que lo convierte en un valioso aliado en la lucha contra las fuerzas de la oscuridad."
    ),
    CharacterModel(
        name: "Galadriel",
        job: "Dama de Lothlórien",
        image: "galadriel",
        description: "Galadriel es una poderosa elfa y gobernante de Lothlórien. Posee una sabiduría y magia inmensas y juega un papel importante en la lucha contra Sauron al proporcionar apoyo y orientación a la Comunidad del Anillo."
    ),
    CharacterModel(
        name: "Saruman",
        job: "Mago (anteriormente)",
        image: "saruman",
        description: "Saruman el Blanco, inicialmente un miembro de la Orden de los Magos, se corrompe y se convierte en un aliado de Sauron. Intenta apoderarse del Anillo Único para sus propios fines, lo que lo lleva por un camino oscuro y destructivo."
    ),
    CharacterModel(
        name: "Faramir",
        job: "Capitán de Gondor",
        image: "faramir",
        description: "Faramir es el valiente capitán de Gondor y el hermano menor de Boromir. Es conocido por su sabiduría y sentido del deber. Ayuda a Frodo y Sam en su misión y juega un papel clave en la defensa de Gondor contra las fuerzas de Sauron."
    )
]

