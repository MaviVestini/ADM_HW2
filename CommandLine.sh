profiles=`cat instagram_posts.csv | awk '{ if (length($8) > 100) {print $4} }' | uniq -c | head -n 10`
echo $profiles
for i in `echo $profiles`; do echo $i; solution=`cat instagram_profiles.csv | awk -v var=$i '{ if ($2 == var) { print $3 }}'`; echo $solution; done





