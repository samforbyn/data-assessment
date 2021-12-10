log_file = open("um-server-01.txt") #opens the um-server-01-txt file


def sales_reports(log_file): # define a function called sales reports, which will take a log_file
    for line in log_file:    # loop over the log_file, declaring each row as "line"
        line = line.rstrip() # use the .rstrip() method to remove white space
        day = line[0:3]      # gets first 3 chars from line and assign them to "day"
        if day == "Tue":     # check if day is Tue
       #if day == "Mon":     # check if day is Monday
            print(line)      # if it is, print line

sales_reports(log_file)      #invoke sales_reports function, passing in our log_file


# EXTRA CREDIT

def printMelons(melonOrders):
    for melon in melonOrders:
        if melon > 10:
            print(melon)