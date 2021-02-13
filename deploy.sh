cd ~/w/tabml-book
mkdir _deploy
git clone -b deploy https://github.com/tiepvupsu/tabml-book _deploy
cd _deploy
git rm -rf *
cp -r ../_build/html/* ./
git add --all *
git commit -m"Update the book"
git push -f origin deploy
cd ..
rm -rf _deploy
echo "View the web at https://machinelearningcoban.com/tabml-book/"
