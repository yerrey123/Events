tell application "Messages"
    set targetService to 1st service whose service type = iMessage
    set today to "01-15" -- for testing


    -- Define your lists of events and recipients
    set birthdays to {{"02-03", "Replace your number here", "Happy Birthday Message"}} -- add more birthday, their number, and message 
    set majorHolidays to {Â
    {"12-25", "Replace your number here", "Merry Christmas!"}, Â
    {"11-28", "Replace your number here", "Happy Thanksgiving!"}, Â
    {"01-01", "Replace your number here", "Happy New Year!"}Â
    }
    set workHolidays to {{"01-01", "Replace your number here", "New Year's Off"}, {"01-15", "Replace your number here", "Martin Luther King Off!"}, {"02-19", "Replace your number here", "Washington Birthday Off!"}, {"05-27", "Replace your number here", "Memorial Day Off!"}, {"06-19", "Replace your number here", "Juneteenth Day Off"}, {"07-04", "Replace your number here", "Independence Day Off"}, {"09-02", "Replace your number here", "Labor Day Off"}, {"11-11", "Replace your number here", "Veterans Day Off"}, {"11-28", "Replace your number here", "Thanksgiving Off"}, {"12-25", "Replace your number here", "Christmas Off"}}
    
    -- Set today's date
    set currentMonth to month of (current date) as number
    set currentDay to day of (current date) as number

    -- Initialize monthString and dayString with currentMonth and currentDay
    set monthString to currentMonth as string
    set dayString to currentDay as string

    -- Add leading zero to month if needed
    if currentMonth < 10 then
        set monthString to "0" & monthString
    end if

    -- Add leading zero to day if needed
    if currentDay < 10 then
        set dayString to "0" & dayString
    end if

    -- Combine monthString and dayString with a dash
    #set today to monthString & "-" & dayString


    -- Check and send birthday messages
    repeat with aBirthday in birthdays
        set eventDate to item 1 of aBirthday
        if eventDate is equal to today then
            set theNumber to item 2 of aBirthday
            set theMessage to item 3 of aBirthday
            set targetBuddy to buddy theNumber of targetService
            send theMessage to targetBuddy
        end if
    end repeat
    
    -- Check and send major holiday messages
    repeat with aHoliday in majorHolidays
        set holidayDate to item 1 of aHoliday
        if holidayDate is equal to today then
            set theNumbersString to item 2 of aHoliday
            set holidayMessage to item 3 of aHoliday
            -- Split theNumbersString into a list of numbers
            set AppleScript's text item delimiters to ", "
            set theNumbers to text items of theNumbersString
            set AppleScript's text item delimiters to "" -- Reset delimiters
            repeat with theNumber in theNumbers
                set targetBuddy to buddy theNumber of targetService
                send holidayMessage to targetBuddy
            end repeat
        end if
    end repeat
    
   -- Check and send work holiday messages
    repeat with aWorkday in workHolidays
        set workdayDate to item 1 of aWorkday
        if workdayDate is equal to today then
            set theNumbersString to item 2 of aWorkday
            set workdayMessage to item 3 of aWorkday
            -- Assuming item 2 is the numbers string; adjust if your structure is different
            set AppleScript's text item delimiters to ", "
            set theNumbers to text items of theNumbersString
            set AppleScript's text item delimiters to "" -- Reset delimiters
            repeat with theNumber in theNumbers
                set targetBuddy to buddy theNumber of targetService
                send workdayMessage to targetBuddy
            end repeat
        end if
    end repeat
end tell