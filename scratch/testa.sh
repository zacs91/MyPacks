yep=100
nope=10
poo=100
while (( nope != yep )); do
  acnum=$(shuf -i20-70 -n1 ) # random number generator between 20&70

echo "$acnum"

done
