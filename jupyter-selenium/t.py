from selenium import webdriver

# Chrome のオプションを設定する
options = webdriver.ChromeOptions()
options.add_argument('--disable-dev-shm-usage')

# Selenium Server に接続する
driver = webdriver.Remote(
#     command_executor='chrome_driver:4444/wd/hub', # コンテナ名を指定
    command_executor='172.26.0.2:4444/wd/hub', # もしくはIPアドレスを指定
    options=options,
)

# Selenium 経由でブラウザを操作する
driver.get('https://qiita.com')
print(driver.current_url)

# ブラウザを終了する
driver.quit()