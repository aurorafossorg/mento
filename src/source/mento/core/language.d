module mento.core.language;

enum Language {
	C,
	CPlusPlus,
	D,
	Unknown
}

Language getLanguage(in string srcName) @safe pure nothrow {
	import std.path : extension;

	switch(srcName.extension) with(Language) {
		case ".d":
			return D;
		case ".cpp":
		case ".cxx":
		case ".c++":
			return CPlusPlus;
		case ".c":
			return C;
		default:
			return Unknown;
	}
}