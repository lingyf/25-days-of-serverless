using namespace System.Net

param($Request, $TriggerMetadata)

$body = Get-Random -InputObject 'נ (Nun)', 'ג (Gimmel)', 'ה (Hay)', 'ש (Shin)'

Push-OutputBinding -Name Response -Value ([HttpResponseContext]@{
    StatusCode = [HttpStatusCode]::OK
    Body = $body
})