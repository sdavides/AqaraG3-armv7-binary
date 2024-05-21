#!/bin/sh

while IFS= read -r -d '&' KEYVAL && [[ -n "$KEYVAL" ]]; do
case ${KEYVAL%=*} in
        prop) PROP=${KEYVAL#*=} ;;
    esac
done <<END
$(echo "${QUERY_STRING}&")
END

if [ -z "$PROP" ]; then
    PROP="full"
fi

RES=`agetprop "$PROP"`
IS_JSON=`echo "$RES" | grep -c "^{"`

if [[ "$IS_JSON" -gt 0 ]]; then
    printf "Content-type: application/json\n\n"
else
    printf "Content-type: text/plain\n\n"
fi

echo "$RES"
