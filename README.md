# Events

Automate Happy Birthday's, Major Holidays to Friends and Families. See directories for Major Holidays wishes, and workHolidays
Automate reminders for work Holidays 

#PLEASE NOTE THAT THIS ONLY WORKS FOR iPhone/iMessage! IT WILL NOT WORK FOR SMS 

"birthdays": {
        "04-03": ["Bob", "Happy Birthday, Bob!"]
    },
    "majorholidays": {
        "12-25": "Merry Christmas!",
        "11-28": "Happy Thanksgiving",
        "01-01": "Happy New Year!"
    },
    "workholiday": {
        "01-01": "Happy New Year!",
        "01-15": "Martin Luther King!",
        "02-19": "Washington Birthday",
        "05-27": "Memorial Day!",
        "06-19": "Juneteenth maybe day off",
        "07-04": "Independence Day",
        "09-02": "Labor Day ",
        "11-11": "Veterans Day",
        "11-28": "Happy Thanksgiving",
        "12-25": "Merry Christmas!"
    }
    
To have your script run automatically, you could use macOS's Calendar app to create an event that runs your script at a specific time. Another method is using the Automator app to create a calendar alarm:

1. Open Automator and select "New Document."
2. Choose "Calendar Alarm" and click "Choose."
3. Search for "Run AppleScript" in the actions search field and drag it to the workflow area.
4. Insert your script into the provided AppleScript text area.
5. Save your Automator calendar alarm. It will prompt you to add this to the Calendar app.
6. In the Calendar app, adjust the event to repeat daily and set an alert to run the script.

    
