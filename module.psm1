function addition{
    param(
        [parameter()][int]$a,
        [parameter()][int]$b
     )
     $add = $a+$b
     Write-Output "$add"
}

function multiplication{
    param(
        [parameter()][int]$a,
        [parameter()][int]$b
     )
     $of = $a*$b
     Write-Output "$of"
}

function isLarger{
    param(
        [parameter()][int]$a,
        [parameter()][int]$b
     )
     if ($a-gt$b){
     Write-Output "$a is larger"}
     elseif ($b-gt$a){
     Write-Output "$b is larger"}
     else{
     Write-Output "Both numbers are equal"}
}

function isNegative{
    param(
        [parameter()][int]$a,
        [parameter()][int]$b
     )
     if ($a-lt0){
     Write-Output "$a is negative"}
     elseif ($b-lt0){
     Write-Output "$b is negative"}
     elseif ($b-lt0) -and($a-lt0) {
     Write-Output "$b and $a are negative"}
     else{
     Write-Output "Both numbers are poitive"}
}

function subtractSmaller{
    param(
        [parameter()][int]$a,
        [parameter()][int]$b
     )
     if ($a-gt$b){
     $sub = $a-$b
     Write-Output "$sub"}
     elseif ($b-gt$a){
     $sub = $b-$a
     Write-Output "$sub"}
     else{
     Write-Output "Both numbers are equal"}
}

function divideLarger{
    param(
        [parameter()][int]$a,
        [parameter()][int]$b
     )
     if ($a-gt$b){
     $sub = $a/$b
     Write-Output "$sub"}
     elseif ($b-gt$a){
     $sub = $b/$a
     Write-Output "$sub"}
     else{
     Write-Output "Both numbers are equal"}
}

Export-ModuleMember -Function Show-Calendar