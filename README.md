# Review Script

This script allows you to download a specific folder from a Git repo using [git sparse checkout][^1].

## Setup

Before usage, ensure that the relevant folder keys have been added to `bootcamps.json`.

## Usage

```powershell
./review.ps1 $student_id $folder_group $folder_key
```

* The `$folder_group` value above refers to an **outer** key in `bootcamps.json`
* The `$folder_key` value above refers to an **inner** key in `bootcamps.json`.


[^1]:<https://git-scm.com/docs/git-sparse-checkout>
