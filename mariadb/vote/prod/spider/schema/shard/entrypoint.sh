#!/bin/sh
exec mysql $@ < /code/schema/schema-shard.sql