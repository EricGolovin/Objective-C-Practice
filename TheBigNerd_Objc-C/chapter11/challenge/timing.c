#include <stdio.h>
#include <time.h>

int main(void) {
	long secondsSince1970 = time(NULL);
	printf("It has been %ld second since 1970\n", secondsSince1970);

	struct tm now;
	localtime_r(&secondsSince1970, &now);
	printf("The time is %d:%d:%d\n", now.tm_hour, now.tm_min, now.tm_sec);

	long someDate = 4000000;

	struct tm some;
	localtime_r(&someDate, &some);
	printf("The date is %d-%d-%d", some.tm_mon, some.tm_yday % 30, some.tm_year);

	return 0;
}
