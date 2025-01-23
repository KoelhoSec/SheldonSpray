# SheldonSpray
This is a version of **DomainPasswordSpray** (https://github.com/dafthack/DomainPasswordSpray) which was obfuscated using **Pyfuscation** (https://github.com/CBHue/PyFuscation). 

<p align="center">
  <img src="https://github.com/KoelhoSec/SheldonSpray/blob/e87d1203f14b653abcbf226a8bc4ecd18b1cc683/sheldon-spray2.gif" alt="Sheldon Spray">
</p>

SheldonSpray is a tool written in PowerShell to perform a password spray attack against users of a domain. By default it will automatically generate the userlist from the domain. BE VERY CAREFUL NOT TO LOCKOUT ACCOUNTS!

## Quick Start Guide
Open a PowerShell terminal from the Windows command line with 'powershell.exe -exec bypass'.

Type 'Import-Module SheldonSpray.ps1'.

The only option necessary to perform a password spray is either -Password (**-DrSpedYA99**) for a single password or -PasswordList (**-jkMNnfnY99**) to attempt multiple sprays. When using the -jkMNnfnY99 option, **SheldonSpray** will attempt to gather the account lockout observation window from the domain and limit sprays to one per observation window to avoid locking out accounts.

The following command will automatically generate a list of users from the current user's domain and attempt to authenticate using each username and a password of Password123.
```PowerShell
Sheldon -DrSpedYA99 Password123
```

### SheldonSpray Options
```
-WKaUyFOk99      - Userlist: Optional UserList parameter. This will be generated automatically if not specified.
-DrSpedYA99      - Password: A single password that will be used to perform the password spray.
-jkMNnfnY99      - PasswordList: A list of passwords one per line to use for the password spray (Be very careful not to lockout accounts).
-ePOWnTBs99      - OutFile: A file to output the results to.
-yoViqXna99      - Domain: A domain to spray against.
-iptKzOBH99      - Jitter 
-qIgilcXi99      - UsernameAsPassword
-HvhITjuU99      - Seconds
```

### Notes and Credits

Decided to create this repo just for fun since its pretty simple to obfuscate scripts with Pyfuscation. SheldonSpray did actually work in real engagements to evade an EDR that was blocking the regular version of DomainPasswordSpray.

Credits to [@dafthack](https://github.com/dafthack) for creating this awesome tool

Credits to [@ferreirasc](https://github.com/ferreirasc) for being lucky into drawing the Sheldon function in Pyfuscation \o/
