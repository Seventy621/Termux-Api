m = '\x1b[1;31m'
w = '\x1b[0m'
g = '\x1b[1;32m'
banner = '''
{}╔╦╗{}┌─┐┬─┐┌┬┐┬ ┬─┐ ┬  {}╔═╗{}┌─┐┬
{} ║{} ├┤ ├┬┘││││ │┌┴┬┘  {}╠═╣{}├─┘│
{} ╩ {}└─┘┴└─┴ ┴└─┘┴ └─  {}╩ ╩{}┴  ┴
'''.format(m, w, m, w, m, w, m, w, m, w, m, w, m, w, m, w)
import os, sys, time, requests, json
print(m +'[' + w + '!' + m + ']' + w + ' Sedang Menginstall Bahan')
time.sleep(2)
os.system('pkg install termux-api')

os.system('clear')
print (banner)
print('[1].Termux TTS Speak\n[2].Torch\n[3].Termux Toast\n[4].Termux Contact List\n')
b = input('Pilih : ')
if b == '1' or b == '01':
  print('Termux Tts Speak')
  c = input('Masukkan Text Untuk Di Jadikan Suara : ')
  os.system('termux-tts-speak ' + c)
elif b == '2' or b == '02':
  print('Termux Torch')
  print(w +'Tekan ' + g + 'on ' + w +'Untuk Aktifkan Torch, Tekan ' + g + 'off ' + w +' Untuk Menonaktifkan Torch')
  d = input('Aktifkan Atau Tidak :')
  os.system('termux-torch ' + d)
elif b == '3' or b == '03':
  print('Termux Toast ')
  e = input('Masukkan Kata : ')
  os.system('termux-toast ' + e)
elif b == '4' or b ==  '04':
  print('Termux Contact List')
  print ("[*] Sedang Mengambil Daftar Contact ..")
  os.system("termux-contact-list > /dev/null > list.json")
  pe = open("list.json","r").read()
  je = json.loads(str(pe))
  print ("")
  for contact in je:
          print ("[+] Name: "+contact["name"])
          print ("[*] Nomor: "+contact["number"])
else:
  print('Pilihannya Cuma Ada 4 Bogeng')
  sys.exit()
