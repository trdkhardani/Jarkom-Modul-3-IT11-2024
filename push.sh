#!/bin/bash

# Menggunakan argumen pertama sebagai commit message
commit_message="$1"

# Menambahkan semua perubahan ke staging area
git add *

# Menghapus file init.sh dan push.sh dari staging area
git reset init.sh push.sh

# Melakukan commit dengan commit message yang diinputkan pengguna
git commit -m "$commit_message"

# Melakukan push ke branch main di remote repository origin
git push origin main