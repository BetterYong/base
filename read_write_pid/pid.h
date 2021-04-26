#pragma once
#include <errno.h>
#include <string.h>
#include <unistd.h>
#include <stdio.h>
int octopus_write_pid(const char *pidfile);
int octopus_read_pid(const char *pidfile);
int octopus_remove_pid(const char *pidfile);
