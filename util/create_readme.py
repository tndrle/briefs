import os
import re
from pathlib import Path
import tomllib

manifest = tomllib.loads(Path('typst.toml').read_text())['package']
base = Path('util/README_base.md').read_text()

for m in re.finditer(r'\[(CODE|IMG):(.+):(.+\.typ)\]', base):
  tag, name, path = m.groups()
  png = f'img/{name}.png'
  os.system(f'typst compile --root . {path} {png}')
  # https://graphicdesign.stackexchange.com/a/117404
  os.system(
    rf'convert {png} \( +clone -background black -shadow 50x10+0+0 \) ' \
    '-define png:exclude-chunks=date,time ' \
    f'+swap -background none -layers merge +repage {png}'
  )

  result = ''
  if tag == 'CODE':
    src = Path(path).read_text()
    src = re.sub(
      r'#import ".*lib\.typ": letter',
      f'#import "@preview/{manifest["name"]}:{manifest["version"]}": letter',
      src
    )
    result = f'```typst\n{src.strip()}\n```\n\n'

  base = base.replace(m.group(0), result + f'![{name}]({png})')

def ldel(sub, string):
  if string.startswith(sub):
    return string.replace(sub, '', 1)
  return string

valid_types = {
  'content',
  'auto',
  'none',
  'length',
  'str',
  'bool',
  'array of content',
  'array of length',
  'datetime',
  'any',
}

lib = Path(manifest['entrypoint']).read_text()
args_src = re.search(r'#let letter\((.+)\) = \{', lib, re.S)[1].strip()
desc = []
types = None
args = []
args_doc = []
for l in args_src.splitlines():
  l = l.strip()
  if l.startswith('/// '):
    l = ldel('/// ', l)
    if l.startswith('-> '):
      types = ldel('-> ', l).split(' | ')
      assert all(t in valid_types for t in types)
      types = ' | '.join(f'`{t}`' for t in types)
    else:
      desc.append(l)
  else:
    args.append(f'  {l}')
    variadic = ' (*variadic*)' if l.startswith('..') else ''
    l = ldel('..', l).rstrip(',')
    try:
      name, default = l.split(': ')
    except ValueError:
      name, default = l, ''
    if default:
      default = f' &emsp; *Default*: `{default}`'
    s = f'* **`{name}`** &emsp; {types}{variadic}{default}<br><br>{"\n".join(desc)}<br><br>'
    args_doc.append(s)
    desc = []
    types = None

base = base.replace('[ARGUMENTS]', '\n'.join(args))
base = base.replace('[ARGUMENTS_DOC]', '\n'.join(args_doc))

Path('README.md').write_text(base)
