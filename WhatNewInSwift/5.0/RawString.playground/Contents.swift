/*:
 
 * Raw Strings 中，反斜线\和引号“ 都是其中的原始，不表示转义字符和string的结束。
 * 解析值用  \#（）
 * 如内部包含 #" 或者 "# 那么区别 Raw Strings的 首尾 ##"   "##。或者更多的###
 * 多行字符串 用 """#
 * 在写正则式很方便。不用写 \\ 表示 \
 
 */


import Cocoa

let raw = #"ddf"#
print(raw)

let answer = 42
let dontpanic = #"The answer to life, the universe, and everything is \(answer)."#

let str = ##"#dd"#"##
