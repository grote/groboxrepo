sed -i 's@^signing@#signing@' ${HOME}/.gradle/gradle.properties
fdroid build --all -v && fdroid publish -v && fdroid update -v && fdroid server update -v
sed -i 's@^#signing@signing@' ${HOME}/.gradle/gradle.properties
