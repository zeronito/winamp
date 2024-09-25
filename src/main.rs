use rand::Rng;

fn main() {
    println!("How many bees will you get?");
    println!("Guess your answer");
    println!("That was wrong, dipshit");
    let num = rand::thread_rng().gen_range(0..100);
    print!("The amount of bees you get: ");
    println!("{}", num);

}
