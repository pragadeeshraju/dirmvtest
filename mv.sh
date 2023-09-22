for branch in $(git for-each-ref --format='%(refname:short)' refs/heads/); do
    git checkout $branch  # Switch to the branch
    git mv -f * new/  # Move the files
    git commit -m "Move files to subdirectory in $branch"  # Commit the changes
done
