#gcloud-cli-sh
#!/bin/bash
gcloud config set project mydev-22
gcloud secrets versions access latest --secret=veer-sa-secret > mydev-sa-key.json
gcloud auth activate-service-account veer-sa-secret@mydev-22.iam.gserviceaccount.com --key-file=mydev-sa-key.json
rm -rf mydev-sa-key.json
gcloud config list


#gcloud-cli.bat
cmd /c "gcloud config set project mydev-22" --quiet
cmd /c "gcloud secrets versions access latest --secret=veer-sa-secret > mydev-sa-key.json"
cmd /c "gcloud auth activate-service-account veer-sa-secret@mydev-22.iam.gserviceaccount.com --key-file=mydev-sa-key.json"
cmd /c "del -rf mydev-sa-key.json"
cmd /c "gcloud config list"
