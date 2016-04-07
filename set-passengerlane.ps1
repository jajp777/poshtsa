<#
Written by Paul Milbank
07/04/2016

Script to randomly direct pasengers down one lane or another.
#>

function Print-Leftarrow ()
{
    $leftarrow = @("
       /|----
      /      |
      \      |
       \|----
       ")
Write-output $leftarrow
}


function Print-Rightarrow ()
{
    $rightarrow = @("
      ----|\
     |      \
     |      /
      ----|/
       ")
Write-output $rightarrow
}

do
{
    $random = Get-Random -Minimum 0 -Maximum 2
    if ($random -eq "0")
        {
            Print-Leftarrow
        }
    else
        {
            Print-Rightarrow
        }
$anykey = Read-Host "Press`"enter`" to continue or `"q`" to quit"
}
until ($anykey -eq "q")

