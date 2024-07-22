" Define syntax groups
syntax match TbkCaption "^#\s\+.*"
syntax match TbkSubCaption "^##\+\s\+.*"
syntax match TbkDate "^\d\{4}-\d\{2}-\d\{2\}"
syntax match TbkWeekday "^\(mon\|tue\|wed\|thu\|fri\|sat\|sun\)"
"syntax match TbkTaskState "^\s*[-+~]"
syntax match TbkTime "\d\{1,2}:\d\{2\}"
syntax match TbkDuration "\v\d*\.?\d+[mh]"

" Link syntax groups to highlight groups
highlight TbkDate guifg=Green ctermfg=Green
highlight TbkWeekday guifg=Darkblue ctermfg=Darkblue
highlight TbkTaskState guifg=Red ctermfg=Red
highlight TbkTime guifg=DarkRed ctermfg=DarkRed
highlight TbkDuration guifg=Red ctermfg=Red

" Task states
syntax match TbkDoneTaskDescription /\(\-\d.*[mh]\s\)\@<=.*$/
highlight TbkDoneTaskDescription guifg=Grey

syntax match TbkUnfinishedTaskDescription /\(\~\d.*[mh]\s\)\@<=.*$/
highlight TbkUnfinishedTaskDescription gui=italic

syntax match TbkRevisitTaskDescription /\(+\d.*[mh]\s\)\@<=.*$/
highlight TbkRevisitTaskDescription guifg=Red

highlight TbkCaption gui=bold guifg=DarkGreen
highlight TbkSubCaption guifg=DarkGreen

" Testing partial matching for task states
syntax match TbkR /\(40m \)\@<=lunch \zsdone\ze/
highlight TbkR gui=bold
