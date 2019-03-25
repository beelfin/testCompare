
#include <iostream>

#include "CPlusPerl.h"

using namespace std;

void teste();

int main(int argc, char **argv)
{
	PerlInterface interface("stringcmp.pl");//Starting the Perl in Interpreter in this Perl File

	cout << "Function 1 (no parameters and no return)" << endl;
	interface.sub("test");

	return 0;
}
