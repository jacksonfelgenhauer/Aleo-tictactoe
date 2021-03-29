# leo new hello-world

cd ./project/examples/pedersen-hash

export PEDERSEN_HASH_CONSTRAINTS=1539

# 1. build 
# 2. find lines with constraint number
# 3. search this line for CONSTRAINTS number
# 4.Er if result is 0 -> constraint number changed exit 1
# 4.Ok if result is 1 -> all good

[[ $(cargo run -q -- build | grep constraints) == *"$PEDERSEN_HASH_CONSTRAINTS"* ]] || { 
    echo >&2 "Number of constraints for Pedersen Hash is not $PEDERSEN_HASH_CONSTRAINTS"; 
    exit 1; 
}
