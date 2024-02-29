
#Testando uma conexão de banco de dados


Import-Module -Name "C:\Program Files (x86)\MySQL\MySQL Installer for Windows\MySQL.Data.dll"


$server = "127.0.0.1"
$database = "todolist"
$username = "root"
$password = "admin"


$connectionString = "server=$server;port=3307;database=$database;uid=$username;pwd=$password;"


$connection = New-Object MySql.Data.MySqlClient.MySqlConnection
$connection.ConnectionString = $connectionString


$connection.Open()


$query = "SELECT * FROM tasks;"
$command = $connection.CreateCommand()
$command.CommandText = $query
$reader = $command.ExecuteReader()


while ($reader.Read()) {
    $result = ""
    for ($i = 0; $i -lt $reader.FieldCount; $i++) {
        $result += $reader.GetString($i) + " | "
    }
    Write-Host $result
}


$reader.Close()
$connection.Close()



