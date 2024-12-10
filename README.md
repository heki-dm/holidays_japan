# holidays_japan

A Dart package of Japanese holidays.

## Sample
### Holidays
Get holidays.
You can get next year's public holidays from the previous year.

```dart
final List<Holiday> holidays = await getHolidayList();
print(holidays);
```

### Holidays by year
Get holidays by year.

```dart
final year = DateTime.now().year;
final List<Holiday> holidays = await getHolidayList(year: year);
print(holidays);
```
