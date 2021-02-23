echo ${file_path}
set -ex

echo ${lokalise_token}
echo ${lokalise_project_id}

brew tap lokalise/cli-2
brew install lokalise2

lokalise2 \
    file upload \
    --file ${file_path} \
    --lang-iso ${lang_iso} \
    --token ${lokalise_token} \
    --project-id ${lokalise_project_id}