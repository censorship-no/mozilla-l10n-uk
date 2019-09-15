# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

# Variables:
#   $count (Number) - Number of tracking events blocked.
graph-week-summary =
    { $count ->
        [one] { -brand-short-name } заблокував { $count } елемент стеження за минулий тиждень
        [few] { -brand-short-name } заблокував { $count } елементи стеження за минулий тиждень
       *[many] { -brand-short-name } заблокував { $count } елементів стеження за минулий тиждень
    }
# Variables:
#   $count (Number) - Number of tracking events blocked.
#   $earliestDate (Number) - Unix timestamp in ms, representing a date. The
# earliest date recorded in the database.
graph-total-summary =
    { $count ->
        [one] { $count } елемент стеження заблоковано починаючи з { DATETIME($earliestDate, day: "numeric", month: "long", year: "numeric") }
        [few] { $count } елементи стеження заблоковано починаючи з { DATETIME($earliestDate, day: "numeric", month: "long", year: "numeric") }
       *[many] { $count } елементів стеження заблоковано починаючи з { DATETIME($earliestDate, day: "numeric", month: "long", year: "numeric") }
    }
# Variables:
#   $count (Number) - Number of tracking events blocked.
#   $earliestDate (Number) - Unix timestamp in ms, representing a date. The
# earliest date recorded in the database.
graph-total-tracker-summary =
    { $count ->
        [one] <b>{ $count }</b> елемент стеження заблокований починаючи з { DATETIME($earliestDate, day: "numeric", month: "long", year: "numeric") }
        [few] <b>{ $count }</b> елементи стеження заблоковано починаючи з { DATETIME($earliestDate, day: "numeric", month: "long", year: "numeric") }
       *[many] <b>{ $count }</b> елементів стеження заблоковано починаючи з { DATETIME($earliestDate, day: "numeric", month: "long", year: "numeric") }
    }
# The terminology used to refer to categories of Content Blocking is also used in chrome/browser/browser.properties and should be translated consistently.
# "Standard" in this case is an adjective, meaning "default" or "normal".
# The category name in the <b> tag will be bold.
protection-header-details-standard = Рівень захисту - <b>Стандартний</b>
protection-header-details-strict = Рівень захисту - <b>Суворий</b>
protection-header-details-custom = Рівень захисту - <b>Власний</b>
protection-report-page-title = Захист приватності
protection-report-content-title = Захист приватності
etp-card-title = Розширений захист від стеження
etp-card-content = Елементи стеження переслідують вас в мережі з метою збору інформації про ваші звички та інтереси. { -brand-short-name } блокує багато такого стеження, а також інші підозрілі скрипти.
# This string is used to label the X axis of a graph. Other days of the week are generated via Intl.DateTimeFormat,
# capitalization for this string should match the output for your locale.
graph-today = Сьогодні
# This string is used to describe the graph for screenreader users.
graph-legend-description = Графік відображає загальну кількість стеження кожного типу, заблокованого цього тижня.
social-tab-title = Стеження соціальних мереж
social-tab-contant = Соціальні мережі розміщують елементи стеження на інших веб-сайтах, щоб стежити за вашими діями в інтернеті. Це дозволяє їм дізнаватися більше про вас, окрім того, чим ви ділитеся в своєму профілі. <a data-l10n-name="learn-more-link">Докладніше</a>
cookie-tab-title = Куки стеження між сайтами
cookie-tab-content = Ці куки переслідують вас від одного сайту до іншого, з метою збирання даних про вашу діяльність онлайн. Вони встановлюються сторонніми рекламними й аналітичними компаніями. Блокування куків стеження між сайтами зменшує кількість реклами, що переслідує вас. <a data-l10n-name="learn-more-link">Докладніше</a>
tracker-tab-title = Вміст стеження
tracker-tab-content = Веб-сайти можуть завантажувати зовнішню рекламу, відео, а також інший вміст, що містить код стеження. Блокування такого вмісту може допомогти сайтам швидше завантажуватись, але при цьому деякі кнопки, поля форм і входів можуть не працювати. <a data-l10n-name="learn-more-link">Докладніше</a>
tracker-tab-description = Веб-сайти можуть завантажувати зовнішню рекламу, відео, а також інший вміст з кодом стеження. Блокування такого вмісту може допомогти сайтам швидше завантажуватись, але при цьому деякі кнопки, поля форм і входів можуть не працювати. <a data-l10n-name="learn-more-link">Докладніше</a>
fingerprinter-tab-title = Зчитування відбитку браузера
fingerprinter-tab-content = Засоби зчитування відбитку браузера збирають дані про налаштування вашого браузера і комп'ютера, з метою створення вашого профілю. Використовуючи такий цифровий відбиток, вони можуть стежити за вами на багатьох різних веб-сайтах. <a data-l10n-name="learn-more-link">Докладніше</a>
cryptominer-tab-title = Криптомайнери
cryptominer-tab-content = Криптомайнери використовують ресурси вашої системи для створення цифрових грошей. Криптомайнингові скрипти споживають заряд вашого акумулятора, сповільнюють роботу комп'ютера, а також можуть збільшити ваші витрати на електроенергію. <a data-l10n-name="learn-more-link">Докладніше</a>
lockwise-title = Ніколи більше не забувайте пароль
lockwise-title-logged-in = { -lockwise-brand-name }
lockwise-header-content = { -lockwise-brand-name } безпечно зберігає ваші паролі в браузері.
lockwise-header-content-logged-in = Безпечно зберігайте й синхронізуйте свої паролі на всіх пристроях.
open-about-logins-button = Відкрити в { -brand-short-name }
about-logins-view-logins-button = Перегляд записів
lockwise-no-logins-content = Отримайте додаток <a data-l10n-name="lockwise-inline-link">{ -lockwise-brand-name }</a>, щоб мати свої паролі всюди з собою.
# This string is displayed after a large numeral that indicates the total number
# of email addresses being monitored. Don’t add $count to
# your localization, because it would result in the number showing twice.
lockwise-passwords-stored =
    { $count ->
        [one] Пароль надійно збережено <a data-l10n-name="lockwise-how-it-works">Як це працює</a>
        [few] Паролі надійно збережено <a data-l10n-name="lockwise-how-it-works">Як це працює</a>
       *[many] Паролів надійно збережено <a data-l10n-name="lockwise-how-it-works">Як це працює</a>
    }
turn-on-sync = Увімкнути { -sync-brand-short-name(case: "acc") }
    .title = Перейти до налаштувань синхронізації
manage-devices = Керувати пристроями
# Variables:
#   $count (Number) - Number of devices connected with sync.
lockwise-sync-status =
    { $count ->
        [one] Синхронізується з { $count } іншим пристроєм
        [few] Синхронізується з { $count } іншими пристроями
       *[many] Синхронізується з { $count } іншими пристроями
    }
lockwise-sync-not-syncing = Не синхронізується з іншими пристроями.
lockwise-sync-not-syncing-devices = Не синхронізується з іншими пристроями
monitor-title = Стежте за витоками даних
monitor-link = Як це працює
monitor-header-content = Спробуйте { -monitor-brand-name }, щоб перевірити чи ви потрапили до витоку даних, а також отримуйте попередження про нові витоки.
monitor-header-content-logged-in = { -monitor-brand-name } попереджає вас, якщо ваша інформація з'явилася у відомих витоках даних
monitor-header-content-no-account = Спробуйте { -monitor-brand-name }, щоб перевірити чи ви потрапили до відомого витоку даних, а також отримуйте попередження про нові витоки.
monitor-header-content-signed-in = { -monitor-brand-name } попереджає вас, якщо ваша інформація з'явилася у відомих витоках даних.
monitor-sign-up = Підписатися на сповіщення
auto-scan = Автоматично проскановано сьогодні
# This string is displayed after a large numeral that indicates the total number
# of email addresses being monitored. Don’t add $count to
# your localization, because it would result in the number showing twice.
info-monitored-addresses =
    { $count ->
        [one] Адреса е-пошти відстежується.
        [few] Адреси е-пошти відстежуються.
       *[many] Адрес е-пошти відстежуються.
    }
# This string is displayed after a large numeral that indicates the total number
# of known data breaches. Don’t add $count to
# your localization, because it would result in the number showing twice.
info-known-breaches =
    { $count ->
        [one] Відомий витік даних розкрив вашу інформацію.
        [few] Відомі витоки даних розкрили вашу інформацію.
       *[many] Відомих витоків даних розкрили вашу інформацію.
    }
# This string is displayed after a large numeral that indicates the total number
# of exposed passwords. Don’t add $count to
# your localization, because it would result in the number showing twice.
info-exposed-passwords =
    { $count ->
        [one] Викритий пароль через всі витоки даних.
        [few] Викриті паролі через всі витоки даних.
       *[many] Викритих паролів через всі витоки даних.
    }
# This string is displayed after a large numeral that indicates the total number
# of email addresses being monitored. Don’t add $count to
# your localization, because it would result in the number showing twice.
info-monitored-emails =
    { $count ->
        [one] Адреса е-пошти відстежується
        [few] Адреси е-пошти відстежуються
       *[many] Адрес е-пошти відстежуються
    }
# This string is displayed after a large numeral that indicates the total number
# of known data breaches. Don’t add $count to
# your localization, because it would result in the number showing twice.
info-known-breaches-found =
    { $count ->
        [one] Відомий витік даних викрив вашу інформацію
        [few] Відомі витоки даних викрили вашу інформацію
       *[many] Відомих витоків даних викрили вашу інформацію
    }
# This string is displayed after a large numeral that indicates the total number
# of exposed passwords. Don’t add $count to
# your localization, because it would result in the number showing twice.
info-exposed-passwords-found =
    { $count ->
        [one] Викритий пароль серед усіх витоків даних
        [few] Викриті пароліі серед усіх витоків даних
       *[many] Викритих паролів серед усіх витоків даних
    }
full-report-link = Переглянути повний звіт на <a data-l10n-name="monitor-inline-link">{ -monitor-brand-name }</a>
# This string is displayed after a large numeral that indicates the total number
# of saved logins which may have been exposed. Don’t add $count to
# your localization, because it would result in the number showing twice.
password-warning =
    { $count ->
        [one] Збережений пароль міг бути викритий у витоку даних. Змініть цей пароль для кращого захисту онлайн. <a data-l10n-name="lockwise-link">Переглянути збережені паролі</a>
        [few] Збережені паролі могли бути викриті у витоку даних. Змініть ці паролі для кращого захисту онлайн. <a data-l10n-name="lockwise-link">Переглянути збережені паролі</a>
       *[many] Збережених паролів могло бути викрито у витоку даних. Змініть ці паролі для кращого захисту онлайн. <a data-l10n-name="lockwise-link">Переглянути збережені паролі</a>
    }
# This is the title attribute describing the graph report's link to about:settings#privacy
go-to-privacy-settings = Перейти до налаштувань приватності
# This is the title attribute describing the Lockwise card's link to about:logins
go-to-saved-logins = Перейти до збережених паролів

## The title attribute is used to display the type of protection.
## The aria-label is spoken by screen readers to make the visual graph accessible to blind users.
##
## Variables:
##   $count (Number) - Number of specific trackers
##   $percentage (Number) - Percentage this type of tracker contributes to the whole graph

bar-tooltip-social =
    .title = Стеження соціальних мереж
    .aria-label =
        { $count ->
            [one] { $count } елемент стеження соціальних мереж ({ $percentage }%)
            [few] { $count } елементи стеження соціальних мереж ({ $percentage }%)
           *[many] { $count } елементів стеження соціальних мереж ({ $percentage }%)
        }
bar-tooltip-cookie =
    .title = Куки стеження між сайтами
    .aria-label =
        { $count ->
            [one] { $count } куків стеження між сайтами ({ $percentage }%)
            [few] { $count } куків стеження між сайтами ({ $percentage }%)
           *[many] { $count } куків стеження між сайтами ({ $percentage }%)
        }
bar-tooltip-tracker =
    .title = Вміст стеження
    .aria-label =
        { $count ->
            [one] { $count } елемент вмісту стеження ({ $percentage }%)
            [few] { $count } елементи вмісту стеження ({ $percentage }%)
           *[many] { $count } елементів вмісту стеження ({ $percentage }%)
        }
bar-tooltip-fingerprinter =
    .title = Зчитування відбитку браузера
    .aria-label =
        { $count ->
            [one] { $count } елемент зчитування відбитку браузера ({ $percentage }%)
            [few] { $count } елементи зчитування відбитку браузера ({ $percentage }%)
           *[many] { $count } елементів зчитування відбитку браузера ({ $percentage }%)
        }
bar-tooltip-cryptominer =
    .title = Криптомайнери
    .aria-label =
        { $count ->
            [one] { $count } криптомайнер ({ $percentage }%)
            [few] { $count } криптомайнери ({ $percentage }%)
           *[many] { $count } криптомайнерів ({ $percentage }%)
        }