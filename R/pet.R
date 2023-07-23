#' @title pet
#'
#' @description Get a new pet by finding out its name and species (printed console output)
#'
#' @param name A string containing the pet's name. Picks a random name by default
#' @param animal A string containing the pet's species. Picks a random species by default
#'
#' @return String output in the console introducing you to the pet
#' @examples
#' pet(name = "Old Yeller", animal = "dog")
#' @export

pet <- function(name = NULL, animal = NULL) {
  if(is.null(name)) {
    names <- c("Pooch", "Bucephalus", "Teddy", "Cerberus", "Max", "Charlie",
               "Cooper", "Milo", "Buddy", "Rocky", "Duke", "Leo", "Luna", "Bella",
               "Daisy", "Lucy", "Lily", "Zoe", "Sadie", "Baley", "Stella", "Brandy",
               "Scotch", "Whiskey", "Cognac", "Bess", "Kermit", "Mars", "Venus",
               "Pluto", "Neptune", "Mercury", "Uranus", "Mumble", "Gloria", "Simba",
               "Pumba")
    name <- sample(names, 1)
  }
  if(is.null(animal)) {
    animals <- c("lion", "zebra", "horse", "giraffe", "chicken", "goose",
                 "dog", "cat", "whale", "goldfish", "vulture", "tiger", "panther",
                 "honey badger", "blobfish", "rattlesnake", "spider", "crocodile",
                 "jellyfish", "turtle", "tortoise", "panda", "brown bear", "polar bear",
                 "penguin", "wolf", "fruit fly", "cockroach", "ladybug", "butterfly",
                 "gorilla", "chimpanze", "bonobo ape", "falcon", "fox", "hare", "bunny",
                 "frog", "mouse", "rat", "mole", "shark", "squirrel", "hog", "pig",
                 "meerkat")
    animal <- sample(animals, 1)
  }
  sent1 <- paste0("Meet your new pet ", name, ".")
  sent2 <- paste0(name, " is a ", animal, ".")
  sent_tot <- paste(sent1, sent2)
  print(sent_tot)
}
