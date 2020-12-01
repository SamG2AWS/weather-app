$accessRule = New-Object System.Security.AccessControl.FileSystemAccessRule("IIS_IUSRS", "FullControl", "ContainerInherit,ObjectInherit", "None", "Allow")
$acl = Get-ACL "D:\Jenkins"
$acl.AddAccessRule($accessRule)
Set-ACL -Path "D:\Jenkins" -ACLObject $acl