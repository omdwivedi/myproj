#to import calendar module and perform action on it#
import calendar

print(calendar.weekheader(3))
print()
print(calendar.firstweekday())
print()
#to print month#
print(calendar.month(2020,7))
print()
#to print array representation of month#
print(calendar.monthcalendar(2020,7))
print()
#to print whole year#
print(calendar.calendar(2020))
print()
#array position of the day#
day_of_the_week=calendar.weekday(2020,7,9)
print(day_of_the_week)
#to check if the year is leap or not#
is_leap=calendar.isleap(2020)
print(is_leap)
#to print how many leap days #
how_many_leap_days=calendar.leapdays(2020,2021)
print(how_many_leap_days)
how_many_leap_days=calendar.leapdays(2020,2025)
print(how_many_leap_days)
how_many_leap_days=calendar.leapdays(2020,2029)
print(how_many_leap_days)

