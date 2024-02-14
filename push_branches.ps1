#Set-ExecutionPolicy RemoteSigned -Scope Process
#./push_branches.ps1
#git fetch --all
#git push -all

$remoteBranches = git branch -r

foreach ($branch in $remoteBranches) { 
    $branchName = $branch.Replace("origin/", "")
    $makeBranchcmd = "git branch $branchName $branch"
    Invoke-Expression $makeBranchcmd
}
