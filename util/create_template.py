import os
import re
from pathlib import Path
import tomllib

manifest = tomllib.loads(Path('typst.toml').read_text())
package = manifest['package']
template = manifest['template']

folder = Path(template["path"])
templ_file = folder / template["entrypoint"]
thumbnail = folder / template["thumbnail"]

src = Path('tests/example/test.typ').read_text()
src = re.sub(r', *font: *"TeX Gyre Heros"', '', src)
templ_file.write_text(src)

os.system(f'typst compile --ppi 250 --root . {templ_file} {thumbnail}')

src = re.sub(
  r'#import ".*lib\.typ": letter',
  f'#import "@preview/{package["name"]}:{package["version"]}": letter',
  src
)
templ_file.write_text(src)
