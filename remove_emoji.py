import os
import glob

folder = r'c:\Users\Cleane\Desktop\Minha pagina\disciplinas'
files = glob.glob(os.path.join(folder, '*.html'))

for file in files:
    with open(file, 'rb') as f:
        content = f.read()
    
    # Decode with UTF-8 (bytes to string)
    text = content.decode('utf-8')
    
    # Remove the emoji and space
    text = text.replace('📅 ', '')
    
    # Encode back to UTF-8 and write
    with open(file, 'wb') as f:
        f.write(text.encode('utf-8'))
    
    print(f'Fixed: {os.path.basename(file)}')

print(f'Total files fixed: {len(files)}')
