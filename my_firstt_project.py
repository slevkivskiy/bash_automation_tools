import requests

print("⏳ Роблю запит в інтернет...")
try:
    response = requests.get('https://api.ipify.org?format=json')
    data = response.json()
    print(f"✅ Успіх! Твоя IP-адреса: {data['ip']}")
except Exception as e:
    print(f"❌ Помилка: {e}")
