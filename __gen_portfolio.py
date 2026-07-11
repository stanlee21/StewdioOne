import os
import urllib.parse
folder = 'portfolio Images/Wedding'
files = sorted(os.listdir(folder), key=lambda s: s.lower())
for i, fn in enumerate(files):
    path = 'portfolio%20Images/Wedding/' + urllib.parse.quote(fn)
    print(f'    <div class="portfolio-item" data-cat="wedding" onclick="openLightbox({18+i})">')
    print(f'      <img src="{path}" alt="Wedding">')
    print('      <div class="portfolio-item-overlay"><div class="expand-icon"><svg viewBox="0 0 24 24"><path d="M15 3h6v6M9 21H3v-6M21 3l-7 7M3 21l7-7"/></svg></div></div>')
    print('    </div>')
print('---JS---')
for fn in files:
    path = 'portfolio%20Images/Wedding/' + urllib.parse.quote(fn)
    print(f"  '{path}',")
