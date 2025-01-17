This Module preps your GCP Project for an installation of Terraform Enterprise. This Module will create a VPC, Subnet, GCS Bucket, Postgres Database, Firewalls, and SSL Certificate.

## Pre-Requisites

The following items must be configured prior to using this Module:

- A GCP Project
- Valid GCP Credentials stored in JSON format
- A valid DNS Zone
- A valid Domain
- Enable the servicenetworking.googleapis.com API in your GCP Project
- Enable the cloudresourcemanager.googleapis.com API in your GCP Project

## Required Variables

- `project` -- name of the GCP Project into which you'll install Terraform Enterprise
- `creds` -- path to and name of the JSON Credential file to use
- `domain` -- the Domain to be used
- `dnszone` -- the pre-configured DNS Zone
- `postgresql_password` -- password for your Postgres Database
