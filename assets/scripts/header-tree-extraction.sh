

# erase results.txt
touch results.txt

for f in ~/Site/refs/notes/*
do
 cat "$f" >> results.txt
done


            
            