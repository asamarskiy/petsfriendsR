#' @title friend
#'
#' @description Make a new friend by getting to know their name and job
#' (printed console output)
#'
#' @param name A string containing the friend's name. Default: random name
#' @param job A string containing the friend's job. Default: random job
#'
#' @return String output in the console introducing you to the friend
#' @examples
#' pet(name = "David", job = "singer")
#' @export

friend <- function(name = NULL, job = NULL) {
  if(is.null(name)) {
    names <- c("Jane", "Bobby", "Joshua", "Plato", "Aristotle",
               "Baruch", "John", "Elisabeth", "Blake", "Cleopatra",
               "Marc Anthony", "Octavian", "Julius", "James", "Dido", "Aeneas",
               "Penelope", "Cassandra", "Electra", "Clytemnestra", "Livia",
               "Julia", "Louis", "Ludovico", "Enrico", "Georges", "Alice",
               "Immanuel",  "Sappho", "Emma", "Marie", "Manon", "Aristide",
               "Evariste", "Melisande", "Mia", "Laura", "Jenny", "Fiona",
               "Camille", "Luke", "Paolo", "Hershel", "Claire", "Thomas",
               "Anna", "Sophie", "Milena", "Felix", "Felicia", "Lydia", "Lana",
               "Telemachus", "Pindar", "Alex", "Alexandra", "Xaver")
    name <- sample(names, 1)
  }
  if(is.null(job)) {
    jobs <- c("mathematician", "physicist", "chemist", "biologist",
              "lawyer", "judge", "prison warden", "cook", "mixologist",
              "barista",  "chiropractor", "priest", "drummer",
              "trombone player", "plumber", "student", "novelist", "journalist",
              "concierge","film producer", "screenplay writer", "film director",
              "theater director",  "actor", "sculptor", "painter", "poet",
              "boxer", "sailor", "manager", "soldier", "teacher",
              "driving instructor", "detective", "pilot", "psychologist",
              "stand-up comedian", "dancer", "spy", "diplomat",
              "choreographer", "hunter")
    job <- sample(jobs, 1)
  }
  sent1 <- paste0("Meet your new friend ", name, ".")
  sent2 <- paste0(name, " is a ", job, ".")
  sent_tot <- paste(sent1, sent2)
  print(sent_tot)
}
