#!/usr/bin/env fish

# Regex for files ending in YYYY-MM-DD.md
set POST_REGEX '\d{4}-\d{2}-\d{2}\.md$'

for md in (find content -type f -name "*.md")
    if string match -rq $POST_REGEX -- $md
        set fp (realpath $md)

        set txt (cat $fp)

        # Check for tabs
        if string match -q "*\t*" -- $txt
            echo "> Removing tabs from "(string replace "content/" "" -- $md)

            set txt (string replace -a "\t" "    " -- $txt)
        end

        printf "%s" $txt >$fp
    end
end

zola check
