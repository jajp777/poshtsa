<#
Written by Paul Milbank
07/04/2016

Script to randomly direct pasengers down one lane or another.
#>

$LeftArrow = @("
       /|----
      /      |
      \      |
       \|----
")

$RightArrow = @("
      ----|\
     |      \
     |      /
      ----|/
")

$Arrows = $LeftArrow, $RightArrow

do
{
    Write-Output (Get-Random -InputObject $Arrows)

    $AnyKey = Read-Host "Press`"enter`" to continue or `"q`" to quit"
}
until ($AnyKey -eq "q")
