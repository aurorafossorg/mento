module mento.core.project;

import mento.core.language;

mixin template project(string name, Language[] languages) {
	enum string projectName = name;
	enum Language[] projectLanguages = languages;
}