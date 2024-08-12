function get_folder {
    param(
        [String] $bootcamp,
        [Int16] $level
    )
    $bootcamps = get-content -raw "bootcamps.json" | convertfrom-json
    $bootcamps[0].$bootcamp.$level
}

function get_url {
    param([String] $student_id, [String] $bootcamp)
    return "https://github.com/hyperiondev-bootcamps/$student_id.git"
}


function review {
    param(
        [String] $student_id,
        [String] $bootcamp,
        [Int16] $level,
        [String] $task
    )
    $folder = (get_folder  $bootcamp $level)
    $repo_url = (get_url $student_id $bootcamp)
    git init
    git remote add origin $repo_url
    git config core.sparsecheckout true
    git sparse-checkout set $folder
    git pull origin main
}
