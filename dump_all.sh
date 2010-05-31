python manage.py dumpdata --indent 2 roster > roster/fixtures/initial_data.json;
python manage.py dumpdata --indent 2 events > events/fixtures/initial_data.json;
python manage.py dumpdata --indent 2 pieces > pieces/fixtures/initial_data.json;
python manage.py dumpdata --indent 2 sponsors > sponsors/fixtures/initial_data.json;
python manage.py dumpdata --indent 2 flatpages > flatpages/fixtures/initial_data.json;
