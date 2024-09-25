use rand::Rng;

fn main() {
    println!("Cock needs boing boing?");
    let num = rand::thread_rng().gen_range(0..100);
    print!("number");
    println!("{}", num);

}
