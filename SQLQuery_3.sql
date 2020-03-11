--Execute below query under master database 
CREATE LOGIN LoaderRC20 WITH PASSWORD = 'a123STRONGpassword!';
CREATE USER LoaderRC20 FOR LOGIN LoaderRC20;

--Change DB context from master to DWH 
CREATE USER LoaderRC20 FOR LOGIN LoaderRC20;
GRANT CONTROL ON DATABASE::[sudhirawsqlserver] to LoaderRC20;
EXEC sp_addrolemember 'staticrc20', 'LoaderRC20';

