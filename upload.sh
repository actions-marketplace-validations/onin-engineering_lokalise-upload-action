set -ex

while getopts t:p:f:l: flag
do
    case "${flag}" in
        t) lokalise_token=${OPTARG};;
        p) lokalise_project_id=${OPTARG};;
        f) file_path=${OPTARG};;
        l) lang_iso=${OPTARG};;
    esac
done

echo $file_path
echo $lokalise_token
echo $lokalise_project_id

brew tap lokalise/cli-2
brew install lokalise2

lokalise2 \
    file upload \
    --file $file_path \
    --lang-iso $lang_iso \
    --token $lokalise_token \
    --project-id $lokalise_project_id