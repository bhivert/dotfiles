"%% SiSU Vim color file
" SoS Maintainer: sohorx
" (originally looked at slate)
:set background=dark
:highlight clear
:set t_Co=16
if version > 580
 hi clear
 if exists("syntax_on")
 syntax reset
 endif
endif
let colors_name = "sos"
:hi Normal guifg=White guibg=grey15
:hi Cursor guibg=khaki guifg=slategrey
" :hi VertSplit guibg=#c2bfa5 guifg=grey40 gui=none cterm=reverse
:hi Vertsplit cterm=none ctermbg=none ctermfg=darkgrey
" :hi Folded guibg=black guifg=grey40 ctermfg=grey ctermbg=darkgrey
:hi Folded cterm=none ctermbg=none ctermfg=darkgray term=bold cterm=bold
" :hi FoldColumn guibg=black guifg=grey20 ctermfg=4 ctermbg=7
:hi FoldColumn ctermfg=darkgrey ctermbg=NONE
:hi IncSearch guifg=green guibg=black cterm=none ctermfg=yellow ctermbg=green
:hi ModeMsg guifg=goldenrod cterm=none ctermfg=brown
:hi MoreMsg guifg=SeaGreen ctermfg=darkgreen
" :hi NonText guifg=RoyalBlue guibg=grey15 cterm=bold ctermfg=blue
:hi NonText cterm=bold ctermfg=darkgray
:hi Question guifg=springgreen ctermfg=green
" :hi Search guibg=peru guifg=wheat cterm=none ctermfg=grey ctermbg=blue
:hi Search cterm=bold ctermfg=white ctermbg=darkblue
" :hi SpecialKey guifg=yellowgreen ctermfg=darkgreen
:hi SpecialKey ctermfg=darkgray
" :hi StatusLine guibg=#c2bfa5 guifg=black gui=none cterm=bold,reverse
:hi StatusLine cterm=none ctermbg=none ctermfg=darkgrey
" :hi StatusLineNC guibg=#c2bfa5 guifg=grey40 gui=none cterm=reverse
:hi StatusLineNC gui=none cterm=none ctermbg=none ctermfg=darkgrey
:hi Title guifg=gold gui=bold cterm=bold ctermfg=yellow
:hi Statement guifg=CornflowerBlue ctermfg=lightblue
" :hi Visual gui=none guifg=khaki guibg=olivedrab cterm=reverse
:hi Visual gui=none cterm=reverse ctermfg=white
:hi WarningMsg guifg=salmon ctermfg=1
" :hi String guifg=SkyBlue ctermfg=darkcyan
:hi String ctermfg=darkgreen
" :hi Comment term=bold ctermfg=11 guifg=grey40
:hi Comment term=bold ctermfg=darkgrey
":hi Constant guifg=#ffa0a0 ctermfg=brown
:hi Constant             ctermfg=red
" :hi Special guifg=darkkhaki ctermfg=brown
:hi Special              ctermfg=yellow
:hi Identifier guifg=salmon ctermfg=red
:hi Include guifg=red ctermfg=red
:hi PreProc guifg=red guibg=white ctermfg=red
:hi Operator guifg=Red ctermfg=Red
:hi Define guifg=gold gui=bold ctermfg=yellow
" :hi Type guifg=CornflowerBlue ctermfg=2
" :hi Type ctermfg=yellow
:hi type                 ctermfg=brown
" :hi Function guifg=navajowhite ctermfg=brown
:hi Function             ctermfg=darkblue
:hi Structure guifg=green ctermfg=green
" :hi LineNr guifg=grey50 ctermfg=3
:hi LineNr ctermfg=darkgrey ctermbg=none
:hi Ignore guifg=grey40 cterm=bold ctermfg=7
:hi Todo guifg=orangered guibg=yellow2
:hi Directory ctermfg=darkcyan
:hi ErrorMsg cterm=bold guifg=White guibg=Red cterm=bold ctermfg=7 ctermbg=1
:hi VisualNOS cterm=bold,underline
:hi WildMenu ctermfg=0 ctermbg=3
:hi Underlined cterm=underline ctermfg=5
:hi Error guifg=White guibg=Red cterm=bold ctermfg=7 ctermbg=1
:hi SpellErrors guifg=White guibg=Red cterm=bold ctermfg=7 ctermbg=1
:hi CursorLineNr ctermfg=grey ctermbg=none
:hi CursorLine gui=bold ctermbg=none cterm=bold cterm=none
:hi TabLineFill cterm=none ctermfg=darkgrey ctermbg=none
:hi TabLineSel cterm=none ctermfg=black ctermbg=grey gui=none
:hi TabLine cterm=none ctermfg=darkgrey ctermbg=none term=none cterm=none
:hi ColorColumn ctermbg=black
:hi SignColumn ctermbg=none gui=none term=none
:hi Number               ctermfg=red
" Diff:
:hi DiffAdd ctermbg=4
:hi DiffChange ctermbg=5
:hi DiffDelete cterm=bold ctermfg=4 ctermbg=6
:hi DiffText cterm=bold ctermbg=1
" User:
:hi User3 cterm=none ctermbg=none ctermfg=darkgreen  term=bold cterm=bold
:hi User2 cterm=none ctermbg=none ctermfg=grey term=bold cterm=bold
:hi User5 cterm=none ctermbg=none ctermfg=red term=bold cterm=bold
:hi User6 cterm=none ctermbg=none ctermfg=darkblue term=bold cterm=bold
" Syntastic:
:hi SyntasticWarningSign ctermbg=none ctermfg=darkyellow
:hi SyntasticErrorSign ctermbg=none ctermfg=darkred
" Spell:
:hi SpellBad             ctermfg=none ctermbg=none term=underline
"
"   C:
:hi cconstant            ctermfg=darkred
:hi cInclude             ctermfg=darkmagenta
:hi cnumber              ctermfg=red
:hi cSpecial             ctermfg=lightgreen
:hi cStorageClass        ctermfg=yellow
:hi cOperator            ctermfg=darkred
:hi cStatement           ctermfg=darkblue
:hi cFormat              ctermfg=lightgreen
:hi cdefine              ctermfg=magenta
:hi cprecondit           ctermfg=magenta
:hi cCharacter           ctermfg=red
:hi cCustomClass         ctermfg=darkmagenta
"   CPP:
:hi cppSTLnamespace      ctermfg=magenta
:hi cppStatement         ctermfg=white
"   Python:
:hi pythonNumber         ctermfg=red
:hi pythonBuiltin        ctermfg=darkred
"   NerdTree:
:hi NERDTreeExecFile     ctermfg=darkgreen
:hi NERDTreeDir          ctermfg=darkred
:hi NERDTreeDirSlash     ctermfg=white
:hi NERDTreeLink         ctermfg=magenta
:hi NERDTreeHelp         ctermfg=darkgrey
:hi NERDTreeCWD          ctermfg=red
"   Ctags:
:hi CTagsMember          ctermfg=white
:hi CTagsDefinedName     ctermfg=darkred
:hi CTagsGlobalVariable  ctermfg=yellow
:hi MyTagListTitle       ctermfg=darkmagenta
:hi MyTagListFileName    ctermfg=blue
"   Javascript:
:hi javaScriptNumber     ctermfg=red
"   Haskell:
:hi haskellIdentifier    ctermfg=darkmagenta
:hi hs_DeclareFunction   ctermfg=darkmagenta
:hi hsTypedef            ctermfg=magenta
:hi haskellType          ctermfg=brown
:hi hsNiceSpecial        ctermfg=darkred
:hi hsLRArrowTail        ctermfg=red
:hi hsRLArrowTail        ctermfg=red
:hi hsLRArrowHead        ctermfg=red
:hi hsRLArrowHead        ctermfg=red
:hi hsCharacter          ctermfg=green
:hi hsNumber             ctermfg=green
:hi hsSpecialChar        ctermfg=green
:hi hsDelimiter          ctermfg=yellow
:hi ConId                ctermfg=darkyellow
:hi WS                   ctermfg=blue
:hi HS                   ctermfg=blue
:hi ES                   ctermfg=blue
:hi RS                   ctermfg=blue
