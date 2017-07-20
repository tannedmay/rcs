#!/usr/bin/env python
# -*- coding: utf-8 -*-

import gevent.monkey
gevent.monkey.patch_all()
import sys

from calm.lib.model.store.db_session import create_session
from calm.scripts.cshell import init_context

def main():
    try:
        init_contexts()
        create_session()
    except Exception as e:
        print "Exception: %s" % e
        raise

if __name__ == '__main__':
    main()
