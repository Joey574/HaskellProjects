input=$1

filename="${input##*/}"
name="${filename%.*}"

ghc $input -o ./bin/$name

dir=./${input%/*}
rm $dir/$name.hi $dir/$name.o