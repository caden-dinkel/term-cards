pub fn add(left: u64, right: u64) -> u64 {
    left + right
}

pub enum Rank {
    Ace,
    Two,
    Three,
    Four,
    Five,
    Six,
    Seven,
    Eight,
    Nine,
    Ten,
    Jack,
    Queen,
    King,
}

pub enum Suit {
    Hearts,
    Diamonds,
    Clubs,
    Spades,
}

pub struct Card {
    suit: Suit,
    rank: Rank,
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn it_works() {
        let result = add(2, 2);
        assert_eq!(result, 4);
    }
}
