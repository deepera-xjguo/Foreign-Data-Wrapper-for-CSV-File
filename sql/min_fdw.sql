/*-------------------------------------------------------------------------
 *
 *                foreign-data wrapper  min
 *
 * Copyright (c) 2013, PostgreSQL Global Development Group
 *
 * This software is released under the PostgreSQL Licence
 *
 * Author:  Andrew Dunstan <andrew@dunslane.net>
 *
 * IDENTIFICATION
 *                min_fdw/=sql/min_fdw.sql
 *
 *-------------------------------------------------------------------------
 */

CREATE FUNCTION min_fdw_handler()
RETURNS fdw_handler
AS 'MODULE_PATHNAME'
LANGUAGE C STRICT;

CREATE FUNCTION min_fdw_validator(text[], oid)
RETURNS void
AS 'MODULE_PATHNAME'
LANGUAGE C STRICT;

CREATE FOREIGN DATA WRAPPER min_fdw
  HANDLER min_fdw_handler
  VALIDATOR min_fdw_validator;
