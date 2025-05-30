#!/bin/sh

# See https://github.com/typicode/husky#readme

readonly hook_name="$1"
shift

if [ -z "$husky_skip_init" ]; then
  debug () {
    [ "$HUSKY_DEBUG" = "1" ] && echo "husky (debug) - $*"
  }

  readonly husky_skip_init=1
  debug "$hook_name hook started..."
fi

if [ -f ~/.huskyrc ]; then
  . ~/.huskyrc
fi

exec "$@"
