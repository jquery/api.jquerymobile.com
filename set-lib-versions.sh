#!/bin/sh

replace_libs() { # $1 is $core_version $2 is $jqm_version $3 is $file

	core_version="$1"
	jqm_version="$2"
	filename="$3"

	tmpfile="$( mktemp )"

	cat "$filename" | \
		sed -r "s@(//code.jquery.com/jquery-)([0-9]+\.[0-9]+\.[0-9]+)@\1$core_version@g" | \
		sed -r "s@(//code.jquery.com/mobile/)([^/]*)/jquery.mobile-(.*).min@\1$jqm_version/jquery.mobile-$jqm_version.min@g" \
		> "$tmpfile" &&
		mv "$tmpfile" "$filename"
	rm -f "$tmpfile"
}

core_version="$1"
jqm_version="$2"

if test "x$core_version" = "x" -o "x$jqm_version" = "x"; then
	echo "Modifies entries2html.xsl and the examples in resources/ with the given version of core and mobile."
	echo "Commit the result if you wish to make the change permanent."
	echo ""
	echo "Usage: $(basename $0) <core_version> <jqm_version>"
	exit 1
fi

if ! echo "$core_version" | grep -qE '^[0-9]+\.[0-9]+\.[0-9]+$'; then
	echo "Core version must be of the form xxx.yyy.zzz where xxx, yyy, and zzz are numbers."
	exit 2
fi

find resources -type f | while read; do
	replace_libs "$core_version" "$jqm_version" "$REPLY"
done
replace_libs "$core_version" "$jqm_version" entries2html.xsl
