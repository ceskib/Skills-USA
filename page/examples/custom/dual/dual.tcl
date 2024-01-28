#############################################################################
# Generated by PAGE version 7bb
#  in conjunction with Tcl version 8.6
#  Nov 20, 2021 04:28:13 PM PST  platform: Linux
set vTcl(timestamp) ""
if {![info exists vTcl(borrow)]} {
    tk_messageBox -title Error -message  "You must open project files from within PAGE."
    exit}


set image_list { 
}
vTcl:create_project_images $image_list   ;# In image.tcl

if {!$vTcl(borrow) && !$vTcl(template)} {

set desc "-family {DejaVu Sans} -size 12"
set vTcl(actual_gui_font_dft_desc) $desc
set vTcl(actual_gui_font_dft_name) [font create {*}$desc]
set desc "-family {DejaVu Sans} -size 12"
set vTcl(actual_gui_font_text_desc) $desc
set vTcl(actual_gui_font_text_name) [font create {*}$desc]
set desc "-family {DejaVu Sans Mono} -size 12"
set vTcl(actual_gui_font_fixed_desc) $desc
set vTcl(actual_gui_font_fixed_name) [font create {*}$desc]
set desc "-family {DejaVu Sans} -size 12"
set vTcl(actual_gui_font_menu_desc) $desc
set vTcl(actual_gui_font_menu_name) [font create {*}$desc]
set desc "-family {DejaVu Sans} -size 12"
set vTcl(actual_gui_font_tooltip_desc) $desc
set vTcl(actual_gui_font_tooltip_name) [font create {*}$desc]
set vTcl(actual_gui_font_treeview_desc)  TkDefaultFont
set vTcl(actual_gui_font_treeview_name)  TkDefaultFont
set vTcl(actual_gui_bg) #d9d9d9
set vTcl(actual_gui_fg) #000000
set vTcl(actual_gui_analog) #f4bcb2
set vTcl(actual_gui_menu_analog) #85d845
set vTcl(actual_gui_menu_bg) #d9d9d9
set vTcl(actual_gui_menu_fg) #000000
set vTcl(complement_color) #b2c9f4
set vTcl(analog_color_p) #eaf4b2
set vTcl(analog_color_m) #f4bcb2
set vTcl(active_fg) #111111
set vTcl(actual_gui_menu_active_bg)  #f4bcb2
set vTcl(actual_gui_menu_active_fg)  #000000
set vTcl(pr,autoalias) 1
set vTcl(pr,relative_placement) 0
set vTcl(mode) Absolute
}



    ttk::style configure Popupmenu -background $vTcl(actual_gui_bg)
    ttk::style configure Popupmenu -foreground $vTcl(actual_gui_fg)
    ttk::style configure Popupmenu -font "$vTcl(actual_gui_font_dft_desc)"
    vTcl::widgets::core::popup::createCmd .pop39 \
        -activebackground #ffffcd -activeforeground black \
        -background $vTcl(actual_gui_bg) -disabledforeground #b8a786 \
        -font {-family {DejaVu Sans} -size 10} -foreground black -tearoff 1 
    global vTcl
    set val vTcl(.pop39,-proc)
    set vTcl(.pop39,-proc) popup1
    namespace eval ::widgets::.pop39 {}
    set ::widgets::.pop39::ClassOption(-proc) popup1
    set ::widgets::.pop39::options(-proc) popup1
    set ::widgets::.pop39::save(-proc) 1
    vTcl:DefineAlias ".pop39" "Popupmenu1" vTcl:WidgetProc "" 1
    .pop39 add cascade \
        -menu .pop39.men40 -activebackground #f4bcb2 \
        -activeforeground #111111 -background $vTcl(actual_gui_bg) \
        -font TkDefaultFont -foreground $vTcl(actual_gui_menu_fg) -label Zoom 
    set site_2_0 "."
    menu .pop39.men40 \
        -activebackground #ffffcd -activeforeground black \
        -background $vTcl(actual_gui_menu_bg) -font TkMenuFont \
        -foreground black -tearoff 0 
    .pop39.men40 add command \
        -activebackground #f4bcb2 -activeforeground #000000 \
        -background $vTcl(actual_gui_bg) -command lambda:zoom('in') \
        -font TkDefaultFont -foreground $vTcl(actual_gui_menu_fg) \
        -label {Zoom In} 
    .pop39.men40 add command \
        -activebackground #f4bcb2 -activeforeground #000000 \
        -background $vTcl(actual_gui_bg) -command lambda:zoom('out') \
        -font TkDefaultFont -foreground $vTcl(actual_gui_menu_fg) \
        -label {Zoom Out} 
    .pop39.men40 add command \
        -activebackground #f4bcb2 -activeforeground #000000 \
        -background $vTcl(actual_gui_bg) -command lambda:zoom('default') \
        -font TkDefaultFont -foreground $vTcl(actual_gui_menu_fg) \
        -label {Default Size} 
    .pop39 add command \
        -activebackground #f4bcb2 -activeforeground #000000 \
        -background $vTcl(actual_gui_bg) -command refresh -font TkDefaultFont \
        -foreground $vTcl(actual_gui_menu_fg) -label Refresh 
    .pop39 add command \
        -activebackground #f4bcb2 -activeforeground #000000 \
        -background $vTcl(actual_gui_bg) -command quit -font TkDefaultFont \
        -foreground $vTcl(actual_gui_menu_fg) -label Quit 

proc vTclWindow.top39 {base} {
    global vTcl
    if {$base == ""} {
        set base .top39
    }
    if {[winfo exists $base]} {
        wm deiconify $base; return
    }
    set top $base
    set target $base
    ###################
    # CREATING WIDGETS
    ###################
    vTcl::widgets::core::toplevel::createCmd $top -class Toplevel \
        -menu "$top.m40" -background $vTcl(actual_gui_bg) \
        -highlightbackground #f5deb3 -highlightcolor black 
    wm focusmodel $top passive
    wm geometry $top 1097x789+398+109
    update
    # set in toplevel.wgt.
    global vTcl
    global img_list
    set vTcl(save,dflt,origin) 0
    wm maxsize $top 1905 1050
    wm minsize $top 1 1
    wm overrideredirect $top 0
    wm resizable $top 1 1
    wm deiconify $top
    set toptitle "Two Custom Widgets"
    wm title $top $toptitle
    namespace eval ::widgets::${top}::ClassOption {}
    set ::widgets::${top}::ClassOption(-toptitle) $toptitle
    vTcl:DefineAlias "$top" "Toplevel1" vTcl:Toplevel:WidgetProc "" 1
    set vTcl(real_top) {}
    vTcl:withBusyCursor {
    menu $top.m40 \
        -activebackground #f4bcb2 -activeforeground black \
        -background $vTcl(actual_gui_menu_bg) \
        -font {-family {DejaVu Sans Mono} -size 14} \
        -foreground $vTcl(actual_gui_menu_fg) -tearoff 0 
    
set site_3_0 $top.m40
    $top.m40 add cascade \
        -menu "$top.m40.men38" -activebackground #f4bcb2 \
        -activeforeground #111111 -background $vTcl(actual_gui_bg) \
        -font TkDefaultFont -foreground $vTcl(actual_gui_menu_fg) -label Zoom 
    menu $site_3_0.men38 \
        -activebackground #ffffcd -activeforeground black \
        -background $vTcl(actual_gui_menu_bg) -font TkMenuFont \
        -foreground black -tearoff 0 
    $site_3_0.men38 add command \
        -activebackground #f4bcb2 -activeforeground #000000 \
        -background $vTcl(actual_gui_bg) -command {#lambda:zoom('in')} \
        -font TkDefaultFont -foreground $vTcl(actual_gui_menu_fg) \
        -label {Zoom In} 
    $site_3_0.men38 add command \
        -activebackground #f4bcb2 -activeforeground #000000 \
        -background $vTcl(actual_gui_bg) -command {#lambda:zoom('out')} \
        -font TkDefaultFont -foreground $vTcl(actual_gui_menu_fg) \
        -label {Zoom Out} 
    $site_3_0.men38 add command \
        -activebackground #f4bcb2 -activeforeground #000000 \
        -background $vTcl(actual_gui_bg) -command {#lambda:zoom('default')} \
        -font TkDefaultFont -foreground $vTcl(actual_gui_menu_fg) \
        -label {Default Size} 
    $top.m40 add command \
        -activebackground #f4bcb2 -activeforeground #000000 \
        -background $vTcl(actual_gui_bg) -command {#refresh} \
        -font TkDefaultFont -foreground $vTcl(actual_gui_menu_fg) \
        -label Refresh 
    $top.m40 add command \
        -activebackground #f4bcb2 -activeforeground #000000 \
        -background $vTcl(actual_gui_bg) -command {#quit} -font TkDefaultFont \
        -foreground $vTcl(actual_gui_menu_fg) -label Quit 
    frame $top.fra43 \
        -borderwidth 2 -relief groove -background $vTcl(actual_gui_bg) \
        -height 375 -highlightbackground #f5deb3 -highlightcolor black \
        -width 265 
    vTcl:DefineAlias "$top.fra43" "Frame1" vTcl:WidgetProc "Toplevel1" 1
    set site_3_0 $top.fra43
    vTcl::widgets::ttk::custom::CreateCmd $site_3_0.cus46 \
        -background wheat -height 75 -highlightbackground wheat \
        -highlightcolor black -width 125 
    global vTcl
    set val vTcl($site_3_0.cus46,-variant)
    set vTcl($site_3_0.cus46,-variant) _g
    namespace eval ::widgets::$site_3_0.cus46 {}
    set ::widgets::$site_3_0.cus46::ClassOption(-variant) _g
    set ::widgets::$site_3_0.cus46::options(-variant) _g
    set ::widgets::$site_3_0.cus46::save(-variant) 1
    vTcl:DefineAlias "$site_3_0.cus46" "Custom1_4" vTcl:WidgetProc "Toplevel1" 1
    place $site_3_0.cus46 \
        -in $site_3_0 -x 0 -y 0 -width 0 -relwidth 1 -height 0 -relheight 1 \
        -anchor nw -bordermode ignore 
    button $top.but44 \
        -activebackground #d9d9d9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -command on_btnGetChecks \
        -disabledforeground #b8a786 \
        -font {-family {DejaVu Sans Mono} -size 14} \
        -foreground $vTcl(actual_gui_fg) -highlightbackground #f5deb3 \
        -highlightcolor black -text {Get Checks} 
    vTcl:DefineAlias "$top.but44" "btnGetChecks" vTcl:WidgetProc "Toplevel1" 1
    button $top.but45 \
        -activebackground #d9d9d9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -command on_btnClearChecks \
        -disabledforeground #b8a786 \
        -font {-family {DejaVu Sans Mono} -size 14} \
        -foreground $vTcl(actual_gui_fg) -highlightbackground #f5deb3 \
        -highlightcolor black -text {Clear Checks} 
    vTcl:DefineAlias "$top.but45" "btnClearChecks" vTcl:WidgetProc "Toplevel1" 1
    button $top.but48 \
        -activebackground #d9d9d9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -command on_btnExit \
        -disabledforeground #b8a786 \
        -font {-family {DejaVu Sans Mono} -size 14} \
        -foreground $vTcl(actual_gui_fg) -highlightbackground #f5deb3 \
        -highlightcolor black -text Exit 
    vTcl:DefineAlias "$top.but48" "btnExit" vTcl:WidgetProc "Toplevel1" 1
    message $top.mes49 \
        -background $vTcl(actual_gui_bg) \
        -font {-family {DejaVu Sans Mono} -size 11} \
        -foreground $vTcl(actual_gui_fg) -highlightbackground #f5deb3 \
        -highlightcolor black -relief sunken -text Message -width 421 
    vTcl:DefineAlias "$top.mes49" "Message1" vTcl:WidgetProc "Toplevel1" 1
    ttk::style configure TSizegrip -background $vTcl(actual_gui_bg)
    vTcl::widgets::ttk::sizegrip::CreateCmd $top.tSi39 \
        -cursor bottom_right_corner 
    vTcl:DefineAlias "$top.tSi39" "TSizegrip1" vTcl:WidgetProc "Toplevel1" 1
    bind $top.tSi39 <ButtonRelease-1> {
        lambda e: refresh()
    }
    frame $top.fra39 \
        -borderwidth 2 -relief groove -background $vTcl(actual_gui_bg) \
        -height 495 -highlightbackground #f5deb3 -highlightcolor black \
        -width 555 
    vTcl:DefineAlias "$top.fra39" "Frame2" vTcl:WidgetProc "Toplevel1" 1
    set site_3_0 $top.fra39
    vTcl::widgets::ttk::custom::CreateCmd $site_3_0.cus40 \
        -background wheat -height 75 -highlightbackground wheat \
        -highlightcolor black -width 125 
    global vTcl
    set val vTcl($site_3_0.cus40,-variant)
    set vTcl($site_3_0.cus40,-variant) _d
    namespace eval ::widgets::$site_3_0.cus40 {}
    set ::widgets::$site_3_0.cus40::ClassOption(-variant) _d
    set ::widgets::$site_3_0.cus40::options(-variant) _d
    set ::widgets::$site_3_0.cus40::save(-variant) 1
    vTcl:DefineAlias "$site_3_0.cus40" "Custom1" vTcl:WidgetProc "Toplevel1" 1
    place $site_3_0.cus40 \
        -in $site_3_0 -x 0 -y 0 -width 0 -relwidth 1 -height 0 -relheight 1 \
        -anchor nw -bordermode ignore 
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.fra43 \
        -in $top -x 80 -y 80 -width 265 -height 375 -anchor nw \
        -bordermode ignore 
    place $top.but44 \
        -in $top -x 130 -y 490 -width 160 -relwidth 0 -height 30 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.but45 \
        -in $top -x 130 -y 560 -width 160 -relwidth 0 -height 30 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.but48 \
        -in $top -x 160 -y 650 -width 110 -height 30 -anchor nw \
        -bordermode ignore 
    place $top.mes49 \
        -in $top -x 10 -y 10 -width 421 -relwidth 0 -height 63 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.tSi39 \
        -in $top -x 0 -relx 1 -y 0 -rely 1 -anchor se -bordermode inside 
    place $top.fra39 \
        -in $top -x 470 -y 83 -width 555 -relwidth 0 -height 504 -relheight 0 \
        -anchor nw -bordermode ignore 
    } ;# end vTcl:withBusyCursor 

    vTcl:FireEvent $base <<Ready>>
}

proc 36 {args} {return 1}


Window show .
set btop1 ""
if {$vTcl(borrow)} {
    set btop1 .bor[expr int([expr rand() * 100])]
    while {[lsearch $btop1 $vTcl(tops)] != -1} {
        set btop1 .bor[expr int([expr rand() * 100])]
    }
}
set vTcl(btop) $btop1
Window show .top39 $btop1
if {$vTcl(borrow)} {
    $btop1 configure -background plum
}
