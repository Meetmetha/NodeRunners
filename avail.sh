sudo apt-get update
sudo apt install build-essential
sudo apt install --assume-yes git clang curl libssl-dev protobuf-compiler
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source ~/.cargo/env
rustup default stable
rustup update
rustup update nightly
rustup target add wasm32-unknown-unknown --toolchain nightly
git clone https://github.com/availproject/avail.git
cd avail
mkdir -p output
mkdir -p data
screen -S avail
cargo run --locked --release -- --chain goldberg --validator -d ./output
