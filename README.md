# delete-files-from-textfile-VBS
Runs through a list of file paths and deletes the files.

I find that this script can fail for various reasons (such as lack of permissions). I may get around to catching errors and better handling it. Otherwise, the log is useful in figuring out where it failed at.

Files should be provided within "LIST.txt". Each path should be on a separate line.
A log.txt file will populate with successfully deleted files. - This log will be wiped upon running the script again.
