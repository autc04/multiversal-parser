mkdir ../multiversal || true
mkdir -p out
for x in "$1"/*.h; do
    name=`basename -s .h "$x"`
    if [ "$name" = "ExMacTypes" ]; then
        name=MacTypes
    fi
    echo $name
    ./build/ParseExecutorHeaders $x overrides/$name.yaml > ../multiversal/defs/$name.yaml;
done
