#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""DSH shell for UnitySkills: connects via 127.0.0.1 (localhost is rejected).
usage: dshell.py <skill_name> [<json_args_file>]
"""
import sys
import json

if sys.platform == 'win32':
    import codecs
    if hasattr(sys.stdout, 'buffer'):
        sys.stdout = codecs.getwriter('utf-8')(sys.stdout.buffer, 'replace')
    if hasattr(sys.stderr, 'buffer'):
        sys.stderr = codecs.getwriter('utf-8')(sys.stderr.buffer, 'replace')

import unity_skills

def main():
    if len(sys.argv) < 2:
        print('usage: dshell.py <skill_name> [<json_args_file>]')
        return 1
    skill = sys.argv[1]
    kwargs = {}
    if len(sys.argv) > 2:
        with open(sys.argv[2], 'r', encoding='utf-8') as f:
            kwargs = json.load(f)
    client = unity_skills.UnitySkills(url='http://127.0.0.1:8090')
    result = client.call(skill, **kwargs)
    print(json.dumps(result, ensure_ascii=False, indent=2, default=str))
    return 0

if __name__ == '__main__':
    sys.exit(main())