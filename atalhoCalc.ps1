$obj = New-object -comobject wscript.shell
$atalho = $obj.CreateShortcut($env:USERPROFILE + 'Desktop\calc.lnk')
$atalho.targetPath = 'calc'
$atalho.save()