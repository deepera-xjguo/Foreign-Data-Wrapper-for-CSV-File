# CSV File with Header 'Field:Datatype' Foreign Data Wrapper for PostgreSQL

This FDW reads a CSV file with header formatted as 'field:datatype'. By 'IMPORT FOREIGN SCHEMA', this FDW can create table automatically from the file header.


# INSTALLATION STEPS #

make
make install


# USAGE STEPS #

DROP EXTENSION min_fdw CASCADE;
CREATE EXTENSION min_fdw;
CREATE SERVER minserver FOREIGN DATA WRAPPER min_fdw;
IMPORT FOREIGN SCHEMA a FROM SERVER minserver INTO public OPTIONS(filename '/home/vagrant/project/daniel_fdw/sample_data.csv', format 'csv', header 'true');
