-- Global configuration | 全局配置
Config = {
    language = 'zh', -- 語言設定: 'zh' 中文 | 'en' 英文 | Language setting: 'zh' Chinese | 'en' English
    color = { r = 230, g = 230, b = 230, a = 255 }, -- 文字顏色 (RGB+透明度) | Text color (RGB+Alpha)
    font = 0, -- 文字字體 (0-8可選) | Text font (0-8 available)
    time = 9000, -- 文字顯示持續時間 (毫秒) | Duration to display the text (milliseconds)
    scale = 0.5, -- 文字大小比例 | Text scale
    dist = 50, -- 最小顯示距離 | Minimum distance to draw
}

-- Languages available | 可用語言設定
Languages = {
    ['en'] = {
        commandName = 'me',
        commandDescription = 'Display text above your character.',
        commandSuggestion = {{ name = 'action', help = '"scratch his nose" for example.'}},
        prefix = ''
    },
    ['zh'] = {
        commandName = 'me',
        commandDescription = '顯示文字在你的角色身上.',
        commandSuggestion = {{ name = 'action', help = '"摸鼻子" 例如.'}},
        prefix = ''
    },
}
