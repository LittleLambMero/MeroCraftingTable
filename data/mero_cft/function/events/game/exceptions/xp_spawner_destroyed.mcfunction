# == 處理「一般經驗產生器」的例外事件（被破壞） == #
function mero_cft:events/game/exceptions/general_func/get_exceptions_pos
tellraw @a [{"text": ""}, {"text": "【警告】", "color": "#FF0000"}, {"text": "「經驗產生器」已被破壞！", "color": "#FF7600"}, {"text": "發生位置：", "color": "#FF7600"}, [{"text": "", "color": "#E587FA"}, {"text": "( "}, {"score": {"name": "@s", "objective": "ExceptionPosX"}}, {"text": ", "}, {"score": {"name": "@s", "objective": "ExceptionPosY"}}, {"text": ", "}, {"score": {"name": "@s", "objective": "ExceptionPosZ"}}, {"text": " )"}]]
playsound minecraft:entity.iron_golem.repair ambient @a ~ ~ ~ 1 0.7 1
summon creeper ~ ~ ~ {CustomName: '{"text": "經驗產生器損毀產生的爆裂", "color": "#C5C5C5"}', CustomNameVisible: false, Invulnerable: true, NoGravity: true, NoAI: true, Silent:true, ExplosionRadius: 4b, Fuse: 0}
kill @s
