# configure your name and email if you have not done so
git config --global user.email "zb2223@columbia.edu"
git config --global user.name "Zach Bogart"

# clone the repository to the book-output directory
git clone -b gh-pages \
  https://${GITHUB_PAT}@github.com/${TRAVIS_REPO_SLUG}.git \
  book-output
cd book-output

git mv _book .tmp
git rm -rf *
git mv .tmp tmp
git mv tmp/* .
git rm -rf tmp *.md search_index.json
=======
git mv .b b
git cp -r b/* book-output
git rm -rf b *.md search_index.json

#git rm -rf . 

#git rm !(_book)

#cp -r ../_book/* ./
git add --all *
git commit -m "Update the book"
git push -q origin gh-pages



