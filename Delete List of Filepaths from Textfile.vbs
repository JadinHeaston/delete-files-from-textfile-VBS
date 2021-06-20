'Name the file "LIST.txt" in the same directory as the script.
'Each line should contain a FULL file path.

'Log.txt will populate with items that have been found and have been deleted. - THIS WILL RESET IF RUN AGAIN.


'IMPORTANT NOTE: This does NOT always work with deleting files with extremely long file names (over 256 characters), and/or if the file is REALLY corrupted.

'----------------------Declarations--------------------------------------------
'Forcing me to declare variables at the start instead of using any loose variables.
Option Explicit

'-----Declaring object variables.
'Declaring handle variable.
Dim objFSO
Dim objShell
'Creating the file system handle needed to manipulate files.
Set objFSO = CreateObject("Scripting.FileSystemObject")
'Creating the handle to open and use 7-zip, if available.
Set objShell = CreateObject("Wscript.Shell")
'----- Declaring object variables END.

'This variable holds the filepath currently being looked at and deleted.
Dim currentFilePath

'This variable will be used to reference the list.txt text file.
dim listTextFile
Set listTextFile = objFSO.OpenTextFile("LIST.txt",1, True, 0)

dim log
set log = objFSO.OpenTextFile("log.txt",2,True,0)
dim currentLine
Do Until listTextFile.AtEndOfStream
	'Reading line
	currentLine = listTextFile.ReadLine
	
	'Checking if file exists.
	if(objFSO.FileExists(currentLine)) Then
		'Writing to log
		log.writeline(currentLine)
		'Deleting file
		objFSO.DeleteFile(currentLine),True
	Else
	'Do Nothing
	End If
Loop


wscript.echo("Script Finished.")































































