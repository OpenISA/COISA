#include "stdthing.h"

void test(void)
{
	print("UEPAAAAAA\n");
}

int main()
{
	print("UHULL\n");
	eh_init();
	init_ultrasonic();
	register_us_handler(1, test, "US_S", 15);
}