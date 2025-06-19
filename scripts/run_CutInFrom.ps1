param(
    [string]$scenario_dir = "D:/project/scenario_runner/manual_records/CutInFrom_right_Lane.log"
)
Get-ChildItem -Path $scenario_dir | ForEach-Object {
    Write-Output "Running scenario: $_" 
    Write-Output "python .\carla_replay.py -e --cache -v -n -f $_"
    python .\carla_replay.py -e --cache -v -n -f $_.FullName
}

Get-ChildItem -Path $scenario_dir | ForEach-Object {
    Write-Output "Running scenario: $_" 
    Write-Output "python .\carla_replay.py -e --cache -v -f $_"
    python .\carla_replay.py -e --cache -v -f $_.FullName
}