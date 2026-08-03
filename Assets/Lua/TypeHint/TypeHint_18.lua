---@meta


---@class System.Windows.Forms.CPColor : System.ValueType
System.Windows.Forms.CPColor = {}
---@alias CS.System.Windows.Forms.CPColor System.Windows.Forms.CPColor
CS.System.Windows.Forms.CPColor = System.Windows.Forms.CPColor


---@class System.Windows.Forms.SystemResPool : System.Object
System.Windows.Forms.SystemResPool = {}
---@alias CS.System.Windows.Forms.SystemResPool System.Windows.Forms.SystemResPool
CS.System.Windows.Forms.SystemResPool = System.Windows.Forms.SystemResPool

---@return System.Windows.Forms.SystemResPool
function System.Windows.Forms.SystemResPool.New() end
---@param color System.Drawing.Color
---@return System.Drawing.Pen
function System.Windows.Forms.SystemResPool:GetPen(color) end
---@param color System.Drawing.Color
---@param dashStyle System.Drawing.Drawing2D.DashStyle
---@return System.Drawing.Pen
function System.Windows.Forms.SystemResPool:GetDashPen(color, dashStyle) end
---@param color System.Drawing.Color
---@param size number
---@return System.Drawing.Pen
function System.Windows.Forms.SystemResPool:GetSizedPen(color, size) end
---@param color System.Drawing.Color
---@return System.Drawing.SolidBrush
function System.Windows.Forms.SystemResPool:GetSolidBrush(color) end
---@param hatchStyle System.Drawing.Drawing2D.HatchStyle
---@param foreColor System.Drawing.Color
---@param backColor System.Drawing.Color
---@return System.Drawing.Drawing2D.HatchBrush
function System.Windows.Forms.SystemResPool:GetHatchBrush(hatchStyle, foreColor, backColor) end
---@param image System.Drawing.Image
---@param name string
---@param size number
function System.Windows.Forms.SystemResPool:AddUIImage(image, name, size) end
---@param name string
---@param size number
---@return System.Drawing.Image
function System.Windows.Forms.SystemResPool:GetUIImage(name, size) end
---@param color System.Drawing.Color
---@return System.Windows.Forms.CPColor
function System.Windows.Forms.SystemResPool:GetCPColor(color) end

---@class System.Windows.Forms.Theme : System.Object
---@field ManagedWindowSpacingAfterLastTitleButton number
---@field Version System.Version
---@field ColorScrollBar System.Drawing.Color
---@field ColorDesktop System.Drawing.Color
---@field ColorActiveCaption System.Drawing.Color
---@field ColorInactiveCaption System.Drawing.Color
---@field ColorMenu System.Drawing.Color
---@field ColorWindow System.Drawing.Color
---@field ColorWindowFrame System.Drawing.Color
---@field ColorMenuText System.Drawing.Color
---@field ColorWindowText System.Drawing.Color
---@field ColorActiveCaptionText System.Drawing.Color
---@field ColorActiveBorder System.Drawing.Color
---@field ColorInactiveBorder System.Drawing.Color
---@field ColorAppWorkspace System.Drawing.Color
---@field ColorHighlight System.Drawing.Color
---@field ColorHighlightText System.Drawing.Color
---@field ColorControl System.Drawing.Color
---@field ColorControlDark System.Drawing.Color
---@field ColorGrayText System.Drawing.Color
---@field ColorControlText System.Drawing.Color
---@field ColorInactiveCaptionText System.Drawing.Color
---@field ColorControlLight System.Drawing.Color
---@field ColorControlDarkDark System.Drawing.Color
---@field ColorControlLightLight System.Drawing.Color
---@field ColorButtonFace System.Drawing.Color
---@field ColorInfoText System.Drawing.Color
---@field ColorInfo System.Drawing.Color
---@field ColorHotTrack System.Drawing.Color
---@field DefaultControlBackColor System.Drawing.Color
---@field DefaultControlForeColor System.Drawing.Color
---@field DefaultFont System.Drawing.Font
---@field DefaultWindowBackColor System.Drawing.Color
---@field DefaultWindowForeColor System.Drawing.Color
---@field ArrangeDirection System.Windows.Forms.ArrangeDirection
---@field ArrangeStartingPosition System.Windows.Forms.ArrangeStartingPosition
---@field BorderMultiplierFactor number
---@field BorderSizableSize System.Drawing.Size
---@field Border3DSize System.Drawing.Size
---@field BorderStaticSize System.Drawing.Size
---@field BorderSize System.Drawing.Size
---@field CaptionButtonSize System.Drawing.Size
---@field CaptionHeight number
---@field DoubleClickSize System.Drawing.Size
---@field DoubleClickTime number
---@field FixedFrameBorderSize System.Drawing.Size
---@field FrameBorderSize System.Drawing.Size
---@field HorizontalFocusThickness number
---@field HorizontalScrollBarArrowWidth number
---@field HorizontalScrollBarHeight number
---@field HorizontalScrollBarThumbWidth number
---@field IconSpacingSize System.Drawing.Size
---@field MenuAccessKeysUnderlined boolean
---@field MenuBarButtonSize System.Drawing.Size
---@field MenuButtonSize System.Drawing.Size
---@field MenuCheckSize System.Drawing.Size
---@field MenuFont System.Drawing.Font
---@field MenuHeight number
---@field MouseWheelScrollLines number
---@field RightAlignedMenus boolean
---@field ToolWindowCaptionButtonSize System.Drawing.Size
---@field ToolWindowCaptionHeight number
---@field VerticalFocusThickness number
---@field VerticalScrollBarArrowHeight number
---@field VerticalScrollBarThumbHeight number
---@field VerticalScrollBarWidth number
---@field WindowBorderFont System.Drawing.Font
---@field DoubleBufferingSupported boolean
---@field ButtonBaseDefaultSize System.Drawing.Size
---@field DataGridPreferredColumnWidth number
---@field DataGridMinimumColumnCheckBoxHeight number
---@field DataGridMinimumColumnCheckBoxWidth number
---@field DataGridAlternatingBackColor System.Drawing.Color
---@field DataGridBackColor System.Drawing.Color
---@field DataGridBackgroundColor System.Drawing.Color
---@field DataGridCaptionBackColor System.Drawing.Color
---@field DataGridCaptionForeColor System.Drawing.Color
---@field DataGridGridLineColor System.Drawing.Color
---@field DataGridHeaderBackColor System.Drawing.Color
---@field DataGridHeaderForeColor System.Drawing.Color
---@field DataGridLinkColor System.Drawing.Color
---@field DataGridLinkHoverColor System.Drawing.Color
---@field DataGridParentRowsBackColor System.Drawing.Color
---@field DataGridParentRowsForeColor System.Drawing.Color
---@field DataGridSelectionBackColor System.Drawing.Color
---@field DataGridSelectionForeColor System.Drawing.Color
---@field DateTimePickerBorderHasHotElementStyle boolean
---@field DateTimePickerDropDownButtonHasHotElementStyle boolean
---@field GroupBoxDefaultSize System.Drawing.Size
---@field HScrollBarDefaultSize System.Drawing.Size
---@field ListViewHasHotHeaderStyle boolean
---@field ListViewCheckBoxSize System.Drawing.Size
---@field ListViewColumnHeaderHeight number
---@field ListViewDefaultColumnWidth number
---@field ListViewVerticalSpacing number
---@field ListViewEmptyColumnWidth number
---@field ListViewHorizontalSpacing number
---@field ListViewDefaultSize System.Drawing.Size
---@field ListViewGroupHeight number
---@field ListViewItemPaddingWidth number
---@field ListViewTileWidthFactor number
---@field ListViewTileHeightFactor number
---@field PanelDefaultSize System.Drawing.Size
---@field PictureBoxDefaultSize System.Drawing.Size
---@field PrintPreviewControlPadding number
---@field ProgressBarDefaultSize System.Drawing.Size
---@field RadioButtonDefaultSize System.Drawing.Size
---@field ScrollBarButtonSize number
---@field ScrollBarHasHotElementStyles boolean
---@field ScrollBarHasPressedThumbStyle boolean
---@field ScrollBarHasHoverArrowButtonStyle boolean
---@field StatusBarSizeGripWidth number
---@field StatusBarHorzGapWidth number
---@field StatusBarDefaultSize System.Drawing.Size
---@field TabControlDefaultItemSize System.Drawing.Size
---@field TabControlDefaultPadding System.Drawing.Point
---@field TabControlMinimumTabWidth number
---@field TabControlSelectedDelta System.Drawing.Rectangle
---@field TabControlSelectedSpacing number
---@field TabPanelOffsetX number
---@field TabPanelOffsetY number
---@field TabControlColSpacing number
---@field TabControlImagePadding System.Drawing.Point
---@field TabControlScrollerWidth number
---@field ToolBarGripWidth number
---@field ToolBarImageGripWidth number
---@field ToolBarSeparatorWidth number
---@field ToolBarDropDownWidth number
---@field ToolBarDropDownArrowWidth number
---@field ToolBarDropDownArrowHeight number
---@field ToolBarDefaultSize System.Drawing.Size
---@field ToolBarHasHotCheckedElementStyles boolean
---@field ToolTipTransparentBackground boolean
---@field TrackBarDefaultSize System.Drawing.Size
---@field TrackBarHasHotThumbStyle boolean
---@field UpDownBaseHasHotButtonStyle boolean
---@field VScrollBarDefaultSize System.Drawing.Size
---@field TreeViewDefaultSize System.Drawing.Size
System.Windows.Forms.Theme = {}
---@alias CS.System.Windows.Forms.Theme System.Windows.Forms.Theme
CS.System.Windows.Forms.Theme = System.Windows.Forms.Theme

---@param idx System.Windows.Forms.XplatUIWin32.GetSysColorIndex
---@return System.Drawing.Color
function System.Windows.Forms.Theme:GetColor(idx) end
---@param idx System.Windows.Forms.XplatUIWin32.GetSysColorIndex
---@param color System.Drawing.Color
function System.Windows.Forms.Theme:SetColor(idx, color) end
---@param value number
---@param lower number
---@param upper number
---@return number
function System.Windows.Forms.Theme:Clamp(value, lower, upper) end
---@param index System.Windows.Forms.UIIcon
---@return string
function System.Windows.Forms.Theme:Places(index) end
---@overload fun(self: System.Windows.Forms.Theme, index: System.Windows.Forms.UIIcon) : System.Drawing.Image
---@overload fun(self: System.Windows.Forms.Theme, index: System.Windows.Forms.UIIcon, size: number) : System.Drawing.Image
---@param mimetype string
---@param extension string
---@param size number
---@return System.Drawing.Image
function System.Windows.Forms.Theme:Images(mimetype, extension, size) end
function System.Windows.Forms.Theme:ResetDefaults() end
---@param e System.Windows.Forms.DrawItemEventArgs
function System.Windows.Forms.Theme:DrawOwnerDrawBackground(e) end
---@param e System.Windows.Forms.DrawItemEventArgs
function System.Windows.Forms.Theme:DrawOwnerDrawFocusRectangle(e) end
---@param button System.Windows.Forms.Button
---@return System.Drawing.Size
function System.Windows.Forms.Theme:CalculateButtonAutoSize(button) end
---@param g System.Drawing.Graphics
---@param b System.Windows.Forms.ButtonBase
---@param out_textRectangle System.Drawing.Rectangle
---@param out_imageRectangle System.Drawing.Rectangle
---@return ,System.Drawing.Rectangle,System.Drawing.Rectangle
function System.Windows.Forms.Theme:CalculateButtonTextAndImageLayout(g, b, out_textRectangle, out_imageRectangle) end
---@param g System.Drawing.Graphics
---@param b System.Windows.Forms.Button
---@param textBounds System.Drawing.Rectangle
---@param imageBounds System.Drawing.Rectangle
---@param clipRectangle System.Drawing.Rectangle
function System.Windows.Forms.Theme:DrawButton(g, b, textBounds, imageBounds, clipRectangle) end
---@param g System.Drawing.Graphics
---@param b System.Windows.Forms.ButtonBase
---@param textBounds System.Drawing.Rectangle
---@param imageBounds System.Drawing.Rectangle
---@param clipRectangle System.Drawing.Rectangle
function System.Windows.Forms.Theme:DrawFlatButton(g, b, textBounds, imageBounds, clipRectangle) end
---@param g System.Drawing.Graphics
---@param b System.Windows.Forms.Button
---@param textBounds System.Drawing.Rectangle
---@param imageBounds System.Drawing.Rectangle
---@param clipRectangle System.Drawing.Rectangle
function System.Windows.Forms.Theme:DrawPopupButton(g, b, textBounds, imageBounds, clipRectangle) end
---@param dc System.Drawing.Graphics
---@param clip_area System.Drawing.Rectangle
---@param button System.Windows.Forms.ButtonBase
function System.Windows.Forms.Theme:DrawButtonBase(dc, clip_area, button) end
---@param checkBox System.Windows.Forms.CheckBox
---@return System.Drawing.Size
function System.Windows.Forms.Theme:CalculateCheckBoxAutoSize(checkBox) end
---@param b System.Windows.Forms.ButtonBase
---@param offset System.Drawing.Point
---@param out_glyphArea System.Drawing.Rectangle
---@param out_textRectangle System.Drawing.Rectangle
---@param out_imageRectangle System.Drawing.Rectangle
---@return ,System.Drawing.Rectangle,System.Drawing.Rectangle,System.Drawing.Rectangle
function System.Windows.Forms.Theme:CalculateCheckBoxTextAndImageLayout(b, offset, out_glyphArea, out_textRectangle, out_imageRectangle) end
---@overload fun(self: System.Windows.Forms.Theme, g: System.Drawing.Graphics, cb: System.Windows.Forms.CheckBox, glyphArea: System.Drawing.Rectangle, textBounds: System.Drawing.Rectangle, imageBounds: System.Drawing.Rectangle, clipRectangle: System.Drawing.Rectangle)
---@param dc System.Drawing.Graphics
---@param clip_area System.Drawing.Rectangle
---@param checkbox System.Windows.Forms.CheckBox
function System.Windows.Forms.Theme:DrawCheckBox(dc, clip_area, checkbox) end
---@param ctrl System.Windows.Forms.CheckedListBox
---@param e System.Windows.Forms.DrawItemEventArgs
function System.Windows.Forms.Theme:DrawCheckedListBoxItem(ctrl, e) end
---@param ctrl System.Windows.Forms.ComboBox
---@param e System.Windows.Forms.DrawItemEventArgs
function System.Windows.Forms.Theme:DrawComboBoxItem(ctrl, e) end
---@param graphics System.Drawing.Graphics
---@param rectangle System.Drawing.Rectangle
---@param state System.Windows.Forms.ButtonState
function System.Windows.Forms.Theme:DrawFlatStyleComboButton(graphics, rectangle, state) end
---@param comboBox System.Windows.Forms.ComboBox
---@param g System.Drawing.Graphics
---@param clippingArea System.Drawing.Rectangle
---@param area System.Drawing.Rectangle
---@param state System.Windows.Forms.ButtonState
function System.Windows.Forms.Theme:ComboBoxDrawNormalDropDownButton(comboBox, g, clippingArea, area, state) end
---@param comboBox System.Windows.Forms.ComboBox
---@param state System.Windows.Forms.ButtonState
---@return boolean
function System.Windows.Forms.Theme:ComboBoxNormalDropDownButtonHasTransparentBackground(comboBox, state) end
---@param comboBox System.Windows.Forms.ComboBox
---@return boolean
function System.Windows.Forms.Theme:ComboBoxDropDownButtonHasHotElementStyle(comboBox) end
---@param comboBox System.Windows.Forms.ComboBox
---@param g System.Drawing.Graphics
---@param clippingArea System.Drawing.Rectangle
---@param style System.Windows.Forms.FlatStyle
function System.Windows.Forms.Theme:ComboBoxDrawBackground(comboBox, g, clippingArea, style) end
---@param comboBox System.Windows.Forms.ComboBox
---@return boolean
function System.Windows.Forms.Theme:CombBoxBackgroundHasHotElementStyle(comboBox) end
---@param control System.Windows.Forms.Control
---@return System.Drawing.Font
function System.Windows.Forms.Theme:GetLinkFont(control) end
---@param pe System.Windows.Forms.PaintEventArgs
---@param grid System.Windows.Forms.DataGrid
function System.Windows.Forms.Theme:DataGridPaint(pe, grid) end
---@param g System.Drawing.Graphics
---@param clip System.Drawing.Rectangle
---@param grid System.Windows.Forms.DataGrid
function System.Windows.Forms.Theme:DataGridPaintCaption(g, clip, grid) end
---@param g System.Drawing.Graphics
---@param clip System.Drawing.Rectangle
---@param grid System.Windows.Forms.DataGrid
function System.Windows.Forms.Theme:DataGridPaintColumnHeaders(g, clip, grid) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param grid System.Windows.Forms.DataGrid
---@param col number
function System.Windows.Forms.Theme:DataGridPaintColumnHeader(g, bounds, grid, col) end
---@param g System.Drawing.Graphics
---@param row number
---@param row_rect System.Drawing.Rectangle
---@param is_newrow boolean
---@param clip System.Drawing.Rectangle
---@param grid System.Windows.Forms.DataGrid
function System.Windows.Forms.Theme:DataGridPaintRowContents(g, row, row_rect, is_newrow, clip, grid) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param row number
---@param grid System.Windows.Forms.DataGrid
function System.Windows.Forms.Theme:DataGridPaintRowHeader(g, bounds, row, grid) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param grid System.Windows.Forms.DataGrid
function System.Windows.Forms.Theme:DataGridPaintRowHeaderArrow(g, bounds, grid) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param grid System.Windows.Forms.DataGrid
function System.Windows.Forms.Theme:DataGridPaintRowHeaderStar(g, bounds, grid) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param grid System.Windows.Forms.DataGrid
function System.Windows.Forms.Theme:DataGridPaintParentRows(g, bounds, grid) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param row System.Windows.Forms.DataGridDataSource
---@param grid System.Windows.Forms.DataGrid
function System.Windows.Forms.Theme:DataGridPaintParentRow(g, bounds, row, grid) end
---@param g System.Drawing.Graphics
---@param cells System.Drawing.Rectangle
---@param clip System.Drawing.Rectangle
---@param grid System.Windows.Forms.DataGrid
function System.Windows.Forms.Theme:DataGridPaintRows(g, cells, clip, grid) end
---@param g System.Drawing.Graphics
---@param row number
---@param row_rect System.Drawing.Rectangle
---@param is_newrow boolean
---@param clip System.Drawing.Rectangle
---@param grid System.Windows.Forms.DataGrid
function System.Windows.Forms.Theme:DataGridPaintRow(g, row, row_rect, is_newrow, clip, grid) end
---@param g System.Drawing.Graphics
---@param row number
---@param row_rect System.Drawing.Rectangle
---@param is_newrow boolean
---@param clip System.Drawing.Rectangle
---@param grid System.Windows.Forms.DataGrid
function System.Windows.Forms.Theme:DataGridPaintRelationRow(g, row, row_rect, is_newrow, clip, grid) end
---@param cell System.Windows.Forms.DataGridViewRowHeaderCell
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@return boolean
function System.Windows.Forms.Theme:DataGridViewRowHeaderCellDrawBackground(cell, g, bounds) end
---@param cell System.Windows.Forms.DataGridViewRowHeaderCell
---@return boolean
function System.Windows.Forms.Theme:DataGridViewRowHeaderCellDrawSelectionBackground(cell) end
---@param cell System.Windows.Forms.DataGridViewRowHeaderCell
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@return boolean
function System.Windows.Forms.Theme:DataGridViewRowHeaderCellDrawBorder(cell, g, bounds) end
---@param cell System.Windows.Forms.DataGridViewColumnHeaderCell
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@return boolean
function System.Windows.Forms.Theme:DataGridViewColumnHeaderCellDrawBackground(cell, g, bounds) end
---@param cell System.Windows.Forms.DataGridViewColumnHeaderCell
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@return boolean
function System.Windows.Forms.Theme:DataGridViewColumnHeaderCellDrawBorder(cell, g, bounds) end
---@param dataGridView System.Windows.Forms.DataGridView
---@return boolean
function System.Windows.Forms.Theme:DataGridViewHeaderCellHasPressedStyle(dataGridView) end
---@param dataGridView System.Windows.Forms.DataGridView
---@return boolean
function System.Windows.Forms.Theme:DataGridViewHeaderCellHasHotStyle(dataGridView) end
---@param dc System.Drawing.Graphics
---@param clip_rectangle System.Drawing.Rectangle
---@param dtp System.Windows.Forms.DateTimePicker
function System.Windows.Forms.Theme:DrawDateTimePicker(dc, clip_rectangle, dtp) end
---@param dateTimePicker System.Windows.Forms.DateTimePicker
---@return System.Drawing.Rectangle
function System.Windows.Forms.Theme:DateTimePickerGetDropDownButtonArea(dateTimePicker) end
---@param dateTimePicker System.Windows.Forms.DateTimePicker
---@return System.Drawing.Rectangle
function System.Windows.Forms.Theme:DateTimePickerGetDateArea(dateTimePicker) end
---@param dc System.Drawing.Graphics
---@param clip_area System.Drawing.Rectangle
---@param box System.Windows.Forms.GroupBox
function System.Windows.Forms.Theme:DrawGroupBox(dc, clip_area, box) end
---@param ctrl System.Windows.Forms.ListBox
---@param e System.Windows.Forms.DrawItemEventArgs
function System.Windows.Forms.Theme:DrawListBoxItem(ctrl, e) end
---@param dc System.Drawing.Graphics
---@param clip_rectangle System.Drawing.Rectangle
---@param control System.Windows.Forms.ListView
function System.Windows.Forms.Theme:DrawListViewItems(dc, clip_rectangle, control) end
---@param dc System.Drawing.Graphics
---@param clip_rectangle System.Drawing.Rectangle
---@param control System.Windows.Forms.ListView
function System.Windows.Forms.Theme:DrawListViewHeader(dc, clip_rectangle, control) end
---@param dc System.Drawing.Graphics
---@param control System.Windows.Forms.ListView
---@param drag_column System.Windows.Forms.ColumnHeader
---@param target_x number
function System.Windows.Forms.Theme:DrawListViewHeaderDragDetails(dc, control, drag_column, target_x) end
---@param listView System.Windows.Forms.ListView
---@param font System.Drawing.Font
---@return number
function System.Windows.Forms.Theme:ListViewGetHeaderHeight(listView, font) end
---@param dc System.Drawing.Graphics
---@param item System.Windows.Forms.MenuItem
---@param y number
---@param x number
---@param menuBar boolean
function System.Windows.Forms.Theme:CalcItemSize(dc, item, y, x, menuBar) end
---@param dc System.Drawing.Graphics
---@param menu System.Windows.Forms.Menu
function System.Windows.Forms.Theme:CalcPopupMenuSize(dc, menu) end
---@param dc System.Drawing.Graphics
---@param menu System.Windows.Forms.Menu
---@param width number
---@return number
function System.Windows.Forms.Theme:CalcMenuBarSize(dc, menu, width) end
---@param dc System.Drawing.Graphics
---@param menu System.Windows.Forms.Menu
---@param rect System.Drawing.Rectangle
function System.Windows.Forms.Theme:DrawMenuBar(dc, menu, rect) end
---@param item System.Windows.Forms.MenuItem
---@param e System.Windows.Forms.DrawItemEventArgs
function System.Windows.Forms.Theme:DrawMenuItem(item, e) end
---@param dc System.Drawing.Graphics
---@param menu System.Windows.Forms.Menu
---@param cliparea System.Drawing.Rectangle
---@param rect System.Drawing.Rectangle
function System.Windows.Forms.Theme:DrawPopupMenu(dc, menu, cliparea, rect) end
---@param dc System.Drawing.Graphics
---@param clip_rectangle System.Drawing.Rectangle
---@param month_calendar System.Windows.Forms.MonthCalendar
function System.Windows.Forms.Theme:DrawMonthCalendar(dc, clip_rectangle, month_calendar) end
---@param dc System.Drawing.Graphics
---@param clip System.Drawing.Rectangle
---@param pb System.Windows.Forms.PictureBox
function System.Windows.Forms.Theme:DrawPictureBox(dc, clip, pb) end
---@param preview System.Windows.Forms.PrintPreviewControl
---@return System.Drawing.Size
function System.Windows.Forms.Theme:PrintPreviewControlGetPageSize(preview) end
---@param pe System.Windows.Forms.PaintEventArgs
---@param preview System.Windows.Forms.PrintPreviewControl
---@param page_image_size System.Drawing.Size
function System.Windows.Forms.Theme:PrintPreviewControlPaint(pe, preview, page_image_size) end
---@param dc System.Drawing.Graphics
---@param clip_rectangle System.Drawing.Rectangle
---@param progress_bar System.Windows.Forms.ProgressBar
function System.Windows.Forms.Theme:DrawProgressBar(dc, clip_rectangle, progress_bar) end
---@param rb System.Windows.Forms.RadioButton
---@return System.Drawing.Size
function System.Windows.Forms.Theme:CalculateRadioButtonAutoSize(rb) end
---@param b System.Windows.Forms.ButtonBase
---@param offset System.Drawing.Point
---@param out_glyphArea System.Drawing.Rectangle
---@param out_textRectangle System.Drawing.Rectangle
---@param out_imageRectangle System.Drawing.Rectangle
---@return ,System.Drawing.Rectangle,System.Drawing.Rectangle,System.Drawing.Rectangle
function System.Windows.Forms.Theme:CalculateRadioButtonTextAndImageLayout(b, offset, out_glyphArea, out_textRectangle, out_imageRectangle) end
---@overload fun(self: System.Windows.Forms.Theme, g: System.Drawing.Graphics, rb: System.Windows.Forms.RadioButton, glyphArea: System.Drawing.Rectangle, textBounds: System.Drawing.Rectangle, imageBounds: System.Drawing.Rectangle, clipRectangle: System.Drawing.Rectangle)
---@param dc System.Drawing.Graphics
---@param clip_rectangle System.Drawing.Rectangle
---@param radio_button System.Windows.Forms.RadioButton
function System.Windows.Forms.Theme:DrawRadioButton(dc, clip_rectangle, radio_button) end
---@param dc System.Drawing.Graphics
---@param clip_rectangle System.Drawing.Rectangle
---@param bar System.Windows.Forms.ScrollBar
function System.Windows.Forms.Theme:DrawScrollBar(dc, clip_rectangle, bar) end
---@param dc System.Drawing.Graphics
---@param clip_rectangle System.Drawing.Rectangle
---@param sb System.Windows.Forms.StatusBar
function System.Windows.Forms.Theme:DrawStatusBar(dc, clip_rectangle, sb) end
---@param tab System.Windows.Forms.TabControl
---@return System.Drawing.Rectangle
function System.Windows.Forms.Theme:TabControlGetDisplayRectangle(tab) end
---@param tab System.Windows.Forms.TabControl
---@return System.Drawing.Rectangle
function System.Windows.Forms.Theme:TabControlGetPanelRect(tab) end
---@param tab System.Windows.Forms.TabControl
---@return System.Drawing.Size
function System.Windows.Forms.Theme:TabControlGetSpacing(tab) end
---@param dc System.Drawing.Graphics
---@param area System.Drawing.Rectangle
---@param tab System.Windows.Forms.TabControl
function System.Windows.Forms.Theme:DrawTabControl(dc, area, tab) end
---@param textBoxBase System.Windows.Forms.TextBoxBase
---@param g System.Drawing.Graphics
---@param clippingArea System.Drawing.Rectangle
function System.Windows.Forms.Theme:TextBoxBaseFillBackground(textBoxBase, g, clippingArea) end
---@param textBoxBase System.Windows.Forms.TextBoxBase
---@param ref_m System.Windows.Forms.Message
---@return boolean,System.Windows.Forms.Message
function System.Windows.Forms.Theme:TextBoxBaseHandleWmNcPaint(textBoxBase, ref_m) end
---@param textBoxBase System.Windows.Forms.TextBoxBase
---@return boolean
function System.Windows.Forms.Theme:TextBoxBaseShouldPaintBackground(textBoxBase) end
---@param dc System.Drawing.Graphics
---@param clip_rectangle System.Drawing.Rectangle
---@param control System.Windows.Forms.ToolBar
function System.Windows.Forms.Theme:DrawToolBar(dc, clip_rectangle, control) end
---@param toolBar System.Windows.Forms.ToolBar
---@return boolean
function System.Windows.Forms.Theme:ToolBarHasHotElementStyles(toolBar) end
---@param dc System.Drawing.Graphics
---@param clip_rectangle System.Drawing.Rectangle
---@param control System.Windows.Forms.ToolTip.ToolTipWindow
function System.Windows.Forms.Theme:DrawToolTip(dc, clip_rectangle, control) end
---@param tt System.Windows.Forms.ToolTip.ToolTipWindow
---@param text string
---@return System.Drawing.Size
function System.Windows.Forms.Theme:ToolTipSize(tt, text) end
---@param handle System.IntPtr
---@param timeout number
---@param title string
---@param text string
---@param icon System.Windows.Forms.ToolTipIcon
function System.Windows.Forms.Theme:ShowBalloonWindow(handle, timeout, title, text, icon) end
---@param handle System.IntPtr
function System.Windows.Forms.Theme:HideBalloonWindow(handle) end
---@param dc System.Drawing.Graphics
---@param clip System.Drawing.Rectangle
---@param control System.Windows.Forms.NotifyIcon.BalloonWindow
function System.Windows.Forms.Theme:DrawBalloonWindow(dc, clip, control) end
---@param control System.Windows.Forms.NotifyIcon.BalloonWindow
---@return System.Drawing.Rectangle
function System.Windows.Forms.Theme:BalloonWindowRect(control) end
---@param dc System.Drawing.Graphics
---@param clip_rectangle System.Drawing.Rectangle
---@param tb System.Windows.Forms.TrackBar
function System.Windows.Forms.Theme:DrawTrackBar(dc, clip_rectangle, tb) end
---@param x number
---@param y number
---@param tb System.Windows.Forms.TrackBar
---@return number
function System.Windows.Forms.Theme:TrackBarValueFromMousePosition(x, y, tb) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param top boolean
---@param state System.Windows.Forms.VisualStyles.PushButtonState
function System.Windows.Forms.Theme:UpDownBaseDrawButton(g, bounds, top, state) end
---@param treeView System.Windows.Forms.TreeView
---@param node System.Windows.Forms.TreeNode
---@param dc System.Drawing.Graphics
---@param x number
---@param middle number
function System.Windows.Forms.Theme:TreeViewDrawNodePlusMinus(treeView, node, dc, x, middle) end
---@param dc System.Drawing.Graphics
---@param clip System.Drawing.Rectangle
---@param wm System.Windows.Forms.InternalWindowManager
function System.Windows.Forms.Theme:DrawManagedWindowDecorations(dc, clip, wm) end
---@param wm System.Windows.Forms.InternalWindowManager
---@return number
function System.Windows.Forms.Theme:ManagedWindowTitleBarHeight(wm) end
---@param wm System.Windows.Forms.InternalWindowManager
---@return number
function System.Windows.Forms.Theme:ManagedWindowBorderWidth(wm) end
---@param wm System.Windows.Forms.InternalWindowManager
---@return number
function System.Windows.Forms.Theme:ManagedWindowIconWidth(wm) end
---@param wm System.Windows.Forms.InternalWindowManager
---@return System.Drawing.Size
function System.Windows.Forms.Theme:ManagedWindowButtonSize(wm) end
---@param wm System.Windows.Forms.InternalWindowManager
function System.Windows.Forms.Theme:ManagedWindowSetButtonLocations(wm) end
---@param wm System.Windows.Forms.InternalWindowManager
---@return System.Drawing.Rectangle
function System.Windows.Forms.Theme:ManagedWindowGetTitleBarIconArea(wm) end
---@param wm System.Windows.Forms.InternalWindowManager
---@return System.Drawing.Size
function System.Windows.Forms.Theme:ManagedWindowGetMenuButtonSize(wm) end
---@param button System.Windows.Forms.TitleButton
---@param form System.Windows.Forms.Form
---@return boolean
function System.Windows.Forms.Theme:ManagedWindowTitleButtonHasHotElementStyle(button, form) end
---@param dc System.Drawing.Graphics
---@param button System.Windows.Forms.TitleButton
---@param clip System.Drawing.Rectangle
---@param wm System.Windows.Forms.InternalWindowManager
function System.Windows.Forms.Theme:ManagedWindowDrawMenuButton(dc, button, clip, wm) end
---@param form System.Windows.Forms.Form
function System.Windows.Forms.Theme:ManagedWindowOnSizeInitializedOrChanged(form) end
---@overload fun(self: System.Windows.Forms.Theme, graphics: System.Drawing.Graphics, bounds: System.Drawing.Rectangle, leftColor: System.Drawing.Color, leftWidth: number, leftStyle: System.Windows.Forms.ButtonBorderStyle, topColor: System.Drawing.Color, topWidth: number, topStyle: System.Windows.Forms.ButtonBorderStyle, rightColor: System.Drawing.Color, rightWidth: number, rightStyle: System.Windows.Forms.ButtonBorderStyle, bottomColor: System.Drawing.Color, bottomWidth: number, bottomStyle: System.Windows.Forms.ButtonBorderStyle)
---@param graphics System.Drawing.Graphics
---@param bounds System.Drawing.RectangleF
---@param leftColor System.Drawing.Color
---@param leftWidth number
---@param leftStyle System.Windows.Forms.ButtonBorderStyle
---@param topColor System.Drawing.Color
---@param topWidth number
---@param topStyle System.Windows.Forms.ButtonBorderStyle
---@param rightColor System.Drawing.Color
---@param rightWidth number
---@param rightStyle System.Windows.Forms.ButtonBorderStyle
---@param bottomColor System.Drawing.Color
---@param bottomWidth number
---@param bottomStyle System.Windows.Forms.ButtonBorderStyle
function System.Windows.Forms.Theme:CPDrawBorder(graphics, bounds, leftColor, leftWidth, leftStyle, topColor, topWidth, topStyle, rightColor, rightWidth, rightStyle, bottomColor, bottomWidth, bottomStyle) end
---@overload fun(self: System.Windows.Forms.Theme, graphics: System.Drawing.Graphics, rectangle: System.Drawing.Rectangle, style: System.Windows.Forms.Border3DStyle, sides: System.Windows.Forms.Border3DSide)
---@param graphics System.Drawing.Graphics
---@param rectangle System.Drawing.Rectangle
---@param style System.Windows.Forms.Border3DStyle
---@param sides System.Windows.Forms.Border3DSide
---@param control_color System.Drawing.Color
function System.Windows.Forms.Theme:CPDrawBorder3D(graphics, rectangle, style, sides, control_color) end
---@param graphics System.Drawing.Graphics
---@param rectangle System.Drawing.Rectangle
---@param state System.Windows.Forms.ButtonState
function System.Windows.Forms.Theme:CPDrawButton(graphics, rectangle, state) end
---@param graphics System.Drawing.Graphics
---@param rectangle System.Drawing.Rectangle
---@param button System.Windows.Forms.CaptionButton
---@param state System.Windows.Forms.ButtonState
function System.Windows.Forms.Theme:CPDrawCaptionButton(graphics, rectangle, button, state) end
---@param graphics System.Drawing.Graphics
---@param rectangle System.Drawing.Rectangle
---@param state System.Windows.Forms.ButtonState
function System.Windows.Forms.Theme:CPDrawCheckBox(graphics, rectangle, state) end
---@param graphics System.Drawing.Graphics
---@param rectangle System.Drawing.Rectangle
---@param state System.Windows.Forms.ButtonState
function System.Windows.Forms.Theme:CPDrawComboButton(graphics, rectangle, state) end
---@param graphics System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
function System.Windows.Forms.Theme:CPDrawContainerGrabHandle(graphics, bounds) end
---@param graphics System.Drawing.Graphics
---@param rectangle System.Drawing.Rectangle
---@param foreColor System.Drawing.Color
---@param backColor System.Drawing.Color
function System.Windows.Forms.Theme:CPDrawFocusRectangle(graphics, rectangle, foreColor, backColor) end
---@param graphics System.Drawing.Graphics
---@param rectangle System.Drawing.Rectangle
---@param primary boolean
---@param enabled boolean
function System.Windows.Forms.Theme:CPDrawGrabHandle(graphics, rectangle, primary, enabled) end
---@param graphics System.Drawing.Graphics
---@param area System.Drawing.Rectangle
---@param pixelsBetweenDots System.Drawing.Size
---@param backColor System.Drawing.Color
function System.Windows.Forms.Theme:CPDrawGrid(graphics, area, pixelsBetweenDots, backColor) end
---@param graphics System.Drawing.Graphics
---@param image System.Drawing.Image
---@param x number
---@param y number
---@param background System.Drawing.Color
function System.Windows.Forms.Theme:CPDrawImageDisabled(graphics, image, x, y, background) end
---@param graphics System.Drawing.Graphics
---@param rectangle System.Drawing.Rectangle
---@param primary boolean
function System.Windows.Forms.Theme:CPDrawLockedFrame(graphics, rectangle, primary) end
---@param graphics System.Drawing.Graphics
---@param rectangle System.Drawing.Rectangle
---@param glyph System.Windows.Forms.MenuGlyph
---@param color System.Drawing.Color
---@param backColor System.Drawing.Color
function System.Windows.Forms.Theme:CPDrawMenuGlyph(graphics, rectangle, glyph, color, backColor) end
---@param graphics System.Drawing.Graphics
---@param rectangle System.Drawing.Rectangle
---@param state System.Windows.Forms.ButtonState
function System.Windows.Forms.Theme:CPDrawMixedCheckBox(graphics, rectangle, state) end
---@param graphics System.Drawing.Graphics
---@param rectangle System.Drawing.Rectangle
---@param state System.Windows.Forms.ButtonState
function System.Windows.Forms.Theme:CPDrawRadioButton(graphics, rectangle, state) end
---@param rectangle System.Drawing.Rectangle
---@param backColor System.Drawing.Color
---@param style System.Windows.Forms.FrameStyle
function System.Windows.Forms.Theme:CPDrawReversibleFrame(rectangle, backColor, style) end
---@param start System.Drawing.Point
---@param _end System.Drawing.Point
---@param backColor System.Drawing.Color
function System.Windows.Forms.Theme:CPDrawReversibleLine(start, _end, backColor) end
---@param graphics System.Drawing.Graphics
---@param rectangle System.Drawing.Rectangle
---@param button System.Windows.Forms.ScrollButton
---@param state System.Windows.Forms.ButtonState
function System.Windows.Forms.Theme:CPDrawScrollButton(graphics, rectangle, button, state) end
---@param graphics System.Drawing.Graphics
---@param active boolean
---@param outsideRect System.Drawing.Rectangle
---@param insideRect System.Drawing.Rectangle
---@param backColor System.Drawing.Color
function System.Windows.Forms.Theme:CPDrawSelectionFrame(graphics, active, outsideRect, insideRect, backColor) end
---@param graphics System.Drawing.Graphics
---@param backColor System.Drawing.Color
---@param bounds System.Drawing.Rectangle
function System.Windows.Forms.Theme:CPDrawSizeGrip(graphics, backColor, bounds) end
---@overload fun(self: System.Windows.Forms.Theme, graphics: System.Drawing.Graphics, s: string, font: System.Drawing.Font, color: System.Drawing.Color, layoutRectangle: System.Drawing.RectangleF, format: System.Drawing.StringFormat)
---@param dc System.Drawing.IDeviceContext
---@param s string
---@param font System.Drawing.Font
---@param color System.Drawing.Color
---@param layoutRectangle System.Drawing.Rectangle
---@param format System.Windows.Forms.TextFormatFlags
function System.Windows.Forms.Theme:CPDrawStringDisabled(dc, s, font, color, layoutRectangle, format) end
---@param graphics System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
function System.Windows.Forms.Theme:CPDrawVisualStyleBorder(graphics, bounds) end
---@param dc System.Drawing.Graphics
---@param area System.Drawing.Rectangle
---@param border_style System.Windows.Forms.BorderStyle
function System.Windows.Forms.Theme:CPDrawBorderStyle(dc, area, border_style) end

---@class System.Windows.Forms.ThemeEngine : System.Object
---@field Current System.Windows.Forms.Theme
System.Windows.Forms.ThemeEngine = {}
---@alias CS.System.Windows.Forms.ThemeEngine System.Windows.Forms.ThemeEngine
CS.System.Windows.Forms.ThemeEngine = System.Windows.Forms.ThemeEngine

---@return System.Windows.Forms.ThemeEngine
function System.Windows.Forms.ThemeEngine.New() end

---@class System.Windows.Forms.ThemeVisualStyles : System.Windows.Forms.ThemeWin32Classic
---@field RenderClientAreas boolean
---@field DateTimePickerBorderHasHotElementStyle boolean
---@field DateTimePickerDropDownButtonHasHotElementStyle boolean
---@field ListViewHasHotHeaderStyle boolean
---@field ScrollBarHasHotElementStyles boolean
---@field ScrollBarHasPressedThumbStyle boolean
---@field ScrollBarHasHoverArrowButtonStyle boolean
---@field ToolBarHasHotCheckedElementStyles boolean
---@field ToolTipTransparentBackground boolean
---@field TrackBarHasHotThumbStyle boolean
---@field UpDownBaseHasHotButtonStyle boolean
System.Windows.Forms.ThemeVisualStyles = {}
---@alias CS.System.Windows.Forms.ThemeVisualStyles System.Windows.Forms.ThemeVisualStyles
CS.System.Windows.Forms.ThemeVisualStyles = System.Windows.Forms.ThemeVisualStyles

---@return System.Windows.Forms.ThemeVisualStyles
function System.Windows.Forms.ThemeVisualStyles.New() end
function System.Windows.Forms.ThemeVisualStyles:ResetDefaults() end
---@param dc System.Drawing.Graphics
---@param clip_area System.Drawing.Rectangle
---@param button System.Windows.Forms.ButtonBase
function System.Windows.Forms.ThemeVisualStyles:DrawButtonBase(dc, clip_area, button) end
---@param g System.Drawing.Graphics
---@param button System.Windows.Forms.Button
---@param clipArea System.Drawing.Rectangle
function System.Windows.Forms.ThemeVisualStyles:DrawButtonBackground(g, button, clipArea) end
---@param comboBox System.Windows.Forms.ComboBox
---@param g System.Drawing.Graphics
---@param clippingArea System.Drawing.Rectangle
---@param area System.Drawing.Rectangle
---@param state System.Windows.Forms.ButtonState
function System.Windows.Forms.ThemeVisualStyles:ComboBoxDrawNormalDropDownButton(comboBox, g, clippingArea, area, state) end
---@param comboBox System.Windows.Forms.ComboBox
---@param state System.Windows.Forms.ButtonState
---@return boolean
function System.Windows.Forms.ThemeVisualStyles:ComboBoxNormalDropDownButtonHasTransparentBackground(comboBox, state) end
---@param comboBox System.Windows.Forms.ComboBox
---@return boolean
function System.Windows.Forms.ThemeVisualStyles:ComboBoxDropDownButtonHasHotElementStyle(comboBox) end
---@param comboBox System.Windows.Forms.ComboBox
---@param g System.Drawing.Graphics
---@param clippingArea System.Drawing.Rectangle
---@param style System.Windows.Forms.FlatStyle
function System.Windows.Forms.ThemeVisualStyles:ComboBoxDrawBackground(comboBox, g, clippingArea, style) end
---@param comboBox System.Windows.Forms.ComboBox
---@return boolean
function System.Windows.Forms.ThemeVisualStyles:CombBoxBackgroundHasHotElementStyle(comboBox) end
---@param dc System.Drawing.Graphics
---@param rectangle System.Drawing.Rectangle
---@param state System.Windows.Forms.ButtonState
function System.Windows.Forms.ThemeVisualStyles:CPDrawButton(dc, rectangle, state) end
---@param graphics System.Drawing.Graphics
---@param rectangle System.Drawing.Rectangle
---@param button System.Windows.Forms.CaptionButton
---@param state System.Windows.Forms.ButtonState
function System.Windows.Forms.ThemeVisualStyles:CPDrawCaptionButton(graphics, rectangle, button, state) end
---@param dc System.Drawing.Graphics
---@param rectangle System.Drawing.Rectangle
---@param state System.Windows.Forms.ButtonState
function System.Windows.Forms.ThemeVisualStyles:CPDrawCheckBox(dc, rectangle, state) end
---@param graphics System.Drawing.Graphics
---@param rectangle System.Drawing.Rectangle
---@param state System.Windows.Forms.ButtonState
function System.Windows.Forms.ThemeVisualStyles:CPDrawComboButton(graphics, rectangle, state) end
---@param dc System.Drawing.Graphics
---@param rectangle System.Drawing.Rectangle
---@param state System.Windows.Forms.ButtonState
function System.Windows.Forms.ThemeVisualStyles:CPDrawMixedCheckBox(dc, rectangle, state) end
---@param dc System.Drawing.Graphics
---@param rectangle System.Drawing.Rectangle
---@param state System.Windows.Forms.ButtonState
function System.Windows.Forms.ThemeVisualStyles:CPDrawRadioButton(dc, rectangle, state) end
---@param dc System.Drawing.Graphics
---@param area System.Drawing.Rectangle
---@param type System.Windows.Forms.ScrollButton
---@param state System.Windows.Forms.ButtonState
function System.Windows.Forms.ThemeVisualStyles:CPDrawScrollButton(dc, area, type, state) end
---@param cell System.Windows.Forms.DataGridViewRowHeaderCell
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@return boolean
function System.Windows.Forms.ThemeVisualStyles:DataGridViewRowHeaderCellDrawBackground(cell, g, bounds) end
---@param cell System.Windows.Forms.DataGridViewRowHeaderCell
---@return boolean
function System.Windows.Forms.ThemeVisualStyles:DataGridViewRowHeaderCellDrawSelectionBackground(cell) end
---@param cell System.Windows.Forms.DataGridViewRowHeaderCell
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@return boolean
function System.Windows.Forms.ThemeVisualStyles:DataGridViewRowHeaderCellDrawBorder(cell, g, bounds) end
---@param cell System.Windows.Forms.DataGridViewColumnHeaderCell
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@return boolean
function System.Windows.Forms.ThemeVisualStyles:DataGridViewColumnHeaderCellDrawBackground(cell, g, bounds) end
---@param cell System.Windows.Forms.DataGridViewColumnHeaderCell
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@return boolean
function System.Windows.Forms.ThemeVisualStyles:DataGridViewColumnHeaderCellDrawBorder(cell, g, bounds) end
---@param dataGridView System.Windows.Forms.DataGridView
---@return boolean
function System.Windows.Forms.ThemeVisualStyles:DataGridViewHeaderCellHasPressedStyle(dataGridView) end
---@param dataGridView System.Windows.Forms.DataGridView
---@return boolean
function System.Windows.Forms.ThemeVisualStyles:DataGridViewHeaderCellHasHotStyle(dataGridView) end
---@param dateTimePicker System.Windows.Forms.DateTimePicker
---@return System.Drawing.Rectangle
function System.Windows.Forms.ThemeVisualStyles:DateTimePickerGetDropDownButtonArea(dateTimePicker) end
---@param dateTimePicker System.Windows.Forms.DateTimePicker
---@return System.Drawing.Rectangle
function System.Windows.Forms.ThemeVisualStyles:DateTimePickerGetDateArea(dateTimePicker) end
---@param listView System.Windows.Forms.ListView
---@param font System.Drawing.Font
---@return number
function System.Windows.Forms.ThemeVisualStyles:ListViewGetHeaderHeight(listView, font) end
---@param dc System.Drawing.Graphics
---@param area System.Drawing.Rectangle
---@param box System.Windows.Forms.GroupBox
function System.Windows.Forms.ThemeVisualStyles:DrawGroupBox(dc, area, box) end
---@param form System.Windows.Forms.Form
function System.Windows.Forms.ThemeVisualStyles:ManagedWindowOnSizeInitializedOrChanged(form) end
---@param button System.Windows.Forms.TitleButton
---@param form System.Windows.Forms.Form
---@return boolean
function System.Windows.Forms.ThemeVisualStyles:ManagedWindowTitleButtonHasHotElementStyle(button, form) end
---@param wm System.Windows.Forms.InternalWindowManager
---@return System.Drawing.Size
function System.Windows.Forms.ThemeVisualStyles:ManagedWindowButtonSize(wm) end
---@param dc System.Drawing.Graphics
---@param button System.Windows.Forms.TitleButton
---@param clip System.Drawing.Rectangle
---@param wm System.Windows.Forms.InternalWindowManager
function System.Windows.Forms.ThemeVisualStyles:ManagedWindowDrawMenuButton(dc, button, clip, wm) end
---@param dc System.Drawing.Graphics
---@param clip_rect System.Drawing.Rectangle
---@param ctrl System.Windows.Forms.ProgressBar
function System.Windows.Forms.ThemeVisualStyles:DrawProgressBar(dc, clip_rect, ctrl) end
---@param dc System.Drawing.Graphics
---@param clip System.Drawing.Rectangle
---@param bar System.Windows.Forms.ScrollBar
function System.Windows.Forms.ThemeVisualStyles:DrawScrollBar(dc, clip, bar) end
---@param textBoxBase System.Windows.Forms.TextBoxBase
---@param g System.Drawing.Graphics
---@param clippingArea System.Drawing.Rectangle
function System.Windows.Forms.ThemeVisualStyles:TextBoxBaseFillBackground(textBoxBase, g, clippingArea) end
---@param textBoxBase System.Windows.Forms.TextBoxBase
---@param ref_m System.Windows.Forms.Message
---@return boolean,System.Windows.Forms.Message
function System.Windows.Forms.ThemeVisualStyles:TextBoxBaseHandleWmNcPaint(textBoxBase, ref_m) end
---@param textBoxBase System.Windows.Forms.TextBoxBase
---@return boolean
function System.Windows.Forms.ThemeVisualStyles:TextBoxBaseShouldPaintBackground(textBoxBase) end
---@param toolBar System.Windows.Forms.ToolBar
---@return boolean
function System.Windows.Forms.ThemeVisualStyles:ToolBarHasHotElementStyles(toolBar) end
---@param treeView System.Windows.Forms.TreeView
---@param node System.Windows.Forms.TreeNode
---@param dc System.Drawing.Graphics
---@param x number
---@param middle number
function System.Windows.Forms.ThemeVisualStyles:TreeViewDrawNodePlusMinus(treeView, node, dc, x, middle) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param top boolean
---@param state System.Windows.Forms.VisualStyles.PushButtonState
function System.Windows.Forms.ThemeVisualStyles:UpDownBaseDrawButton(g, bounds, top, state) end

---@class System.Windows.Forms.ThemeVisualStyles.TrackBarHorizontalTickPainter : System.Object
System.Windows.Forms.ThemeVisualStyles.TrackBarHorizontalTickPainter = {}
---@alias CS.System.Windows.Forms.ThemeVisualStyles.TrackBarHorizontalTickPainter System.Windows.Forms.ThemeVisualStyles.TrackBarHorizontalTickPainter
CS.System.Windows.Forms.ThemeVisualStyles.TrackBarHorizontalTickPainter = System.Windows.Forms.ThemeVisualStyles.TrackBarHorizontalTickPainter

---@param g System.Drawing.Graphics
---@return System.Windows.Forms.ThemeVisualStyles.TrackBarHorizontalTickPainter
function System.Windows.Forms.ThemeVisualStyles.TrackBarHorizontalTickPainter.New(g) end
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
function System.Windows.Forms.ThemeVisualStyles.TrackBarHorizontalTickPainter:Paint(x1, y1, x2, y2) end

---@class System.Windows.Forms.ThemeVisualStyles.TrackBarVerticalTickPainter : System.Object
System.Windows.Forms.ThemeVisualStyles.TrackBarVerticalTickPainter = {}
---@alias CS.System.Windows.Forms.ThemeVisualStyles.TrackBarVerticalTickPainter System.Windows.Forms.ThemeVisualStyles.TrackBarVerticalTickPainter
CS.System.Windows.Forms.ThemeVisualStyles.TrackBarVerticalTickPainter = System.Windows.Forms.ThemeVisualStyles.TrackBarVerticalTickPainter

---@param g System.Drawing.Graphics
---@return System.Windows.Forms.ThemeVisualStyles.TrackBarVerticalTickPainter
function System.Windows.Forms.ThemeVisualStyles.TrackBarVerticalTickPainter.New(g) end
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
function System.Windows.Forms.ThemeVisualStyles.TrackBarVerticalTickPainter:Paint(x1, y1, x2, y2) end

---@class System.Windows.Forms.ThemeWin32Classic : System.Windows.Forms.Theme
---@field ProgressBarChunkSpacing number
---@field ProgressBarMarqueeSpeedScaling number
---@field TrackBarVerticalTrackWidth number
---@field TrackBarHorizontalTrackHeight number
---@field Version System.Version
---@field DoubleBufferingSupported boolean
---@field HorizontalScrollBarHeight number
---@field VerticalScrollBarWidth number
---@field WindowBorderFont System.Drawing.Font
---@field ButtonBaseDefaultSize System.Drawing.Size
---@field DataGridPreferredColumnWidth number
---@field DataGridMinimumColumnCheckBoxHeight number
---@field DataGridMinimumColumnCheckBoxWidth number
---@field DataGridAlternatingBackColor System.Drawing.Color
---@field DataGridBackColor System.Drawing.Color
---@field DataGridBackgroundColor System.Drawing.Color
---@field DataGridCaptionBackColor System.Drawing.Color
---@field DataGridCaptionForeColor System.Drawing.Color
---@field DataGridGridLineColor System.Drawing.Color
---@field DataGridHeaderBackColor System.Drawing.Color
---@field DataGridHeaderForeColor System.Drawing.Color
---@field DataGridLinkColor System.Drawing.Color
---@field DataGridLinkHoverColor System.Drawing.Color
---@field DataGridParentRowsBackColor System.Drawing.Color
---@field DataGridParentRowsForeColor System.Drawing.Color
---@field DataGridSelectionBackColor System.Drawing.Color
---@field DataGridSelectionForeColor System.Drawing.Color
---@field DateTimePickerBorderHasHotElementStyle boolean
---@field DateTimePickerDropDownButtonHasHotElementStyle boolean
---@field GroupBoxDefaultSize System.Drawing.Size
---@field HScrollBarDefaultSize System.Drawing.Size
---@field ListViewHasHotHeaderStyle boolean
---@field ListViewCheckBoxSize System.Drawing.Size
---@field ListViewColumnHeaderHeight number
---@field ListViewDefaultColumnWidth number
---@field ListViewVerticalSpacing number
---@field ListViewEmptyColumnWidth number
---@field ListViewHorizontalSpacing number
---@field ListViewItemPaddingWidth number
---@field ListViewDefaultSize System.Drawing.Size
---@field ListViewGroupHeight number
---@field ListViewGroupLineWidth number
---@field ListViewTileWidthFactor number
---@field ListViewTileHeightFactor number
---@field PanelDefaultSize System.Drawing.Size
---@field PictureBoxDefaultSize System.Drawing.Size
---@field PrintPreviewControlPadding number
---@field ProgressBarDefaultSize System.Drawing.Size
---@field RadioButtonDefaultSize System.Drawing.Size
---@field ScrollBarButtonSize number
---@field ScrollBarHasHotElementStyles boolean
---@field ScrollBarHasPressedThumbStyle boolean
---@field ScrollBarHasHoverArrowButtonStyle boolean
---@field StatusBarSizeGripWidth number
---@field StatusBarHorzGapWidth number
---@field StatusBarDefaultSize System.Drawing.Size
---@field TabControlDefaultItemSize System.Drawing.Size
---@field TabControlDefaultPadding System.Drawing.Point
---@field TabControlMinimumTabWidth number
---@field TabControlSelectedDelta System.Drawing.Rectangle
---@field TabControlSelectedSpacing number
---@field TabPanelOffsetX number
---@field TabPanelOffsetY number
---@field TabControlColSpacing number
---@field TabControlImagePadding System.Drawing.Point
---@field TabControlScrollerWidth number
---@field ToolBarGripWidth number
---@field ToolBarImageGripWidth number
---@field ToolBarSeparatorWidth number
---@field ToolBarDropDownWidth number
---@field ToolBarDropDownArrowWidth number
---@field ToolBarDropDownArrowHeight number
---@field ToolBarDefaultSize System.Drawing.Size
---@field ToolBarHasHotCheckedElementStyles boolean
---@field ToolTipTransparentBackground boolean
---@field TrackBarDefaultSize System.Drawing.Size
---@field TrackBarHasHotThumbStyle boolean
---@field UpDownBaseHasHotButtonStyle boolean
---@field VScrollBarDefaultSize System.Drawing.Size
---@field TreeViewDefaultSize System.Drawing.Size
System.Windows.Forms.ThemeWin32Classic = {}
---@alias CS.System.Windows.Forms.ThemeWin32Classic System.Windows.Forms.ThemeWin32Classic
CS.System.Windows.Forms.ThemeWin32Classic = System.Windows.Forms.ThemeWin32Classic

---@return System.Windows.Forms.ThemeWin32Classic
function System.Windows.Forms.ThemeWin32Classic.New() end
---@overload fun() : number
---@param listView System.Windows.Forms.ListView
---@param font System.Drawing.Font
---@return number
function System.Windows.Forms.ThemeWin32Classic:ListViewGetHeaderHeight(listView, font) end
---@return number
function System.Windows.Forms.ThemeWin32Classic.ProgressBarGetChunkSize() end
---@return System.Drawing.Size
function System.Windows.Forms.ThemeWin32Classic.TrackBarGetThumbSize() end
function System.Windows.Forms.ThemeWin32Classic:ResetDefaults() end
---@param control System.Windows.Forms.Control
---@return System.Drawing.Font
function System.Windows.Forms.ThemeWin32Classic:GetLinkFont(control) end
---@param e System.Windows.Forms.DrawItemEventArgs
function System.Windows.Forms.ThemeWin32Classic:DrawOwnerDrawBackground(e) end
---@param e System.Windows.Forms.DrawItemEventArgs
function System.Windows.Forms.ThemeWin32Classic:DrawOwnerDrawFocusRectangle(e) end
---@param g System.Drawing.Graphics
---@param b System.Windows.Forms.Button
---@param textBounds System.Drawing.Rectangle
---@param imageBounds System.Drawing.Rectangle
---@param clipRectangle System.Drawing.Rectangle
function System.Windows.Forms.ThemeWin32Classic:DrawButton(g, b, textBounds, imageBounds, clipRectangle) end
---@param g System.Drawing.Graphics
---@param button System.Windows.Forms.Button
---@param clipArea System.Drawing.Rectangle
function System.Windows.Forms.ThemeWin32Classic:DrawButtonBackground(g, button, clipArea) end
---@param g System.Drawing.Graphics
---@param button System.Windows.Forms.Button
function System.Windows.Forms.ThemeWin32Classic:DrawButtonFocus(g, button) end
---@param g System.Drawing.Graphics
---@param button System.Windows.Forms.ButtonBase
---@param imageBounds System.Drawing.Rectangle
function System.Windows.Forms.ThemeWin32Classic:DrawButtonImage(g, button, imageBounds) end
---@param g System.Drawing.Graphics
---@param button System.Windows.Forms.ButtonBase
---@param textBounds System.Drawing.Rectangle
function System.Windows.Forms.ThemeWin32Classic:DrawButtonText(g, button, textBounds) end
---@param g System.Drawing.Graphics
---@param b System.Windows.Forms.ButtonBase
---@param textBounds System.Drawing.Rectangle
---@param imageBounds System.Drawing.Rectangle
---@param clipRectangle System.Drawing.Rectangle
function System.Windows.Forms.ThemeWin32Classic:DrawFlatButton(g, b, textBounds, imageBounds, clipRectangle) end
---@param g System.Drawing.Graphics
---@param button System.Windows.Forms.ButtonBase
---@param clipArea System.Drawing.Rectangle
function System.Windows.Forms.ThemeWin32Classic:DrawFlatButtonBackground(g, button, clipArea) end
---@param g System.Drawing.Graphics
---@param button System.Windows.Forms.ButtonBase
function System.Windows.Forms.ThemeWin32Classic:DrawFlatButtonFocus(g, button) end
---@param g System.Drawing.Graphics
---@param button System.Windows.Forms.ButtonBase
---@param imageBounds System.Drawing.Rectangle
function System.Windows.Forms.ThemeWin32Classic:DrawFlatButtonImage(g, button, imageBounds) end
---@param g System.Drawing.Graphics
---@param button System.Windows.Forms.ButtonBase
---@param textBounds System.Drawing.Rectangle
function System.Windows.Forms.ThemeWin32Classic:DrawFlatButtonText(g, button, textBounds) end
---@param g System.Drawing.Graphics
---@param b System.Windows.Forms.Button
---@param textBounds System.Drawing.Rectangle
---@param imageBounds System.Drawing.Rectangle
---@param clipRectangle System.Drawing.Rectangle
function System.Windows.Forms.ThemeWin32Classic:DrawPopupButton(g, b, textBounds, imageBounds, clipRectangle) end
---@param g System.Drawing.Graphics
---@param button System.Windows.Forms.Button
---@param clipArea System.Drawing.Rectangle
function System.Windows.Forms.ThemeWin32Classic:DrawPopupButtonBackground(g, button, clipArea) end
---@param g System.Drawing.Graphics
---@param button System.Windows.Forms.Button
function System.Windows.Forms.ThemeWin32Classic:DrawPopupButtonFocus(g, button) end
---@param g System.Drawing.Graphics
---@param button System.Windows.Forms.Button
---@param imageBounds System.Drawing.Rectangle
function System.Windows.Forms.ThemeWin32Classic:DrawPopupButtonImage(g, button, imageBounds) end
---@param g System.Drawing.Graphics
---@param button System.Windows.Forms.Button
---@param textBounds System.Drawing.Rectangle
function System.Windows.Forms.ThemeWin32Classic:DrawPopupButtonText(g, button, textBounds) end
---@param button System.Windows.Forms.Button
---@return System.Drawing.Size
function System.Windows.Forms.ThemeWin32Classic:CalculateButtonAutoSize(button) end
---@param g System.Drawing.Graphics
---@param button System.Windows.Forms.ButtonBase
---@param out_textRectangle System.Drawing.Rectangle
---@param out_imageRectangle System.Drawing.Rectangle
---@return ,System.Drawing.Rectangle,System.Drawing.Rectangle
function System.Windows.Forms.ThemeWin32Classic:CalculateButtonTextAndImageLayout(g, button, out_textRectangle, out_imageRectangle) end
---@param dc System.Drawing.Graphics
---@param clip_area System.Drawing.Rectangle
---@param button System.Windows.Forms.ButtonBase
function System.Windows.Forms.ThemeWin32Classic:DrawButtonBase(dc, clip_area, button) end
---@overload fun(self: System.Windows.Forms.ThemeWin32Classic, g: System.Drawing.Graphics, cb: System.Windows.Forms.CheckBox, glyphArea: System.Drawing.Rectangle, textBounds: System.Drawing.Rectangle, imageBounds: System.Drawing.Rectangle, clipRectangle: System.Drawing.Rectangle)
---@param dc System.Drawing.Graphics
---@param clip_area System.Drawing.Rectangle
---@param checkbox System.Windows.Forms.CheckBox
function System.Windows.Forms.ThemeWin32Classic:DrawCheckBox(dc, clip_area, checkbox) end
---@param g System.Drawing.Graphics
---@param cb System.Windows.Forms.CheckBox
---@param glyphArea System.Drawing.Rectangle
function System.Windows.Forms.ThemeWin32Classic:DrawCheckBoxGlyph(g, cb, glyphArea) end
---@param g System.Drawing.Graphics
---@param cb System.Windows.Forms.CheckBox
---@param focusArea System.Drawing.Rectangle
function System.Windows.Forms.ThemeWin32Classic:DrawCheckBoxFocus(g, cb, focusArea) end
---@param g System.Drawing.Graphics
---@param cb System.Windows.Forms.CheckBox
---@param imageBounds System.Drawing.Rectangle
function System.Windows.Forms.ThemeWin32Classic:DrawCheckBoxImage(g, cb, imageBounds) end
---@param g System.Drawing.Graphics
---@param cb System.Windows.Forms.CheckBox
---@param textBounds System.Drawing.Rectangle
function System.Windows.Forms.ThemeWin32Classic:DrawCheckBoxText(g, cb, textBounds) end
---@param button System.Windows.Forms.ButtonBase
---@param p System.Drawing.Point
---@param out_glyphArea System.Drawing.Rectangle
---@param out_textRectangle System.Drawing.Rectangle
---@param out_imageRectangle System.Drawing.Rectangle
---@return ,System.Drawing.Rectangle,System.Drawing.Rectangle,System.Drawing.Rectangle
function System.Windows.Forms.ThemeWin32Classic:CalculateCheckBoxTextAndImageLayout(button, p, out_glyphArea, out_textRectangle, out_imageRectangle) end
---@param checkBox System.Windows.Forms.CheckBox
---@return System.Drawing.Size
function System.Windows.Forms.ThemeWin32Classic:CalculateCheckBoxAutoSize(checkBox) end
---@param ctrl System.Windows.Forms.CheckedListBox
---@param e System.Windows.Forms.DrawItemEventArgs
function System.Windows.Forms.ThemeWin32Classic:DrawCheckedListBoxItem(ctrl, e) end
---@param ctrl System.Windows.Forms.ComboBox
---@param e System.Windows.Forms.DrawItemEventArgs
function System.Windows.Forms.ThemeWin32Classic:DrawComboBoxItem(ctrl, e) end
---@param graphics System.Drawing.Graphics
---@param rectangle System.Drawing.Rectangle
---@param state System.Windows.Forms.ButtonState
function System.Windows.Forms.ThemeWin32Classic:DrawFlatStyleComboButton(graphics, rectangle, state) end
---@param comboBox System.Windows.Forms.ComboBox
---@param g System.Drawing.Graphics
---@param clippingArea System.Drawing.Rectangle
---@param area System.Drawing.Rectangle
---@param state System.Windows.Forms.ButtonState
function System.Windows.Forms.ThemeWin32Classic:ComboBoxDrawNormalDropDownButton(comboBox, g, clippingArea, area, state) end
---@param comboBox System.Windows.Forms.ComboBox
---@param state System.Windows.Forms.ButtonState
---@return boolean
function System.Windows.Forms.ThemeWin32Classic:ComboBoxNormalDropDownButtonHasTransparentBackground(comboBox, state) end
---@param comboBox System.Windows.Forms.ComboBox
---@return boolean
function System.Windows.Forms.ThemeWin32Classic:ComboBoxDropDownButtonHasHotElementStyle(comboBox) end
---@param comboBox System.Windows.Forms.ComboBox
---@param g System.Drawing.Graphics
---@param clippingArea System.Drawing.Rectangle
---@param style System.Windows.Forms.FlatStyle
function System.Windows.Forms.ThemeWin32Classic:ComboBoxDrawBackground(comboBox, g, clippingArea, style) end
---@param comboBox System.Windows.Forms.ComboBox
---@return boolean
function System.Windows.Forms.ThemeWin32Classic:CombBoxBackgroundHasHotElementStyle(comboBox) end
---@param pe System.Windows.Forms.PaintEventArgs
---@param grid System.Windows.Forms.DataGrid
function System.Windows.Forms.ThemeWin32Classic:DataGridPaint(pe, grid) end
---@param g System.Drawing.Graphics
---@param clip System.Drawing.Rectangle
---@param grid System.Windows.Forms.DataGrid
function System.Windows.Forms.ThemeWin32Classic:DataGridPaintCaption(g, clip, grid) end
---@param g System.Drawing.Graphics
---@param clip System.Drawing.Rectangle
---@param grid System.Windows.Forms.DataGrid
function System.Windows.Forms.ThemeWin32Classic:DataGridPaintColumnHeaders(g, clip, grid) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param grid System.Windows.Forms.DataGrid
---@param col number
function System.Windows.Forms.ThemeWin32Classic:DataGridPaintColumnHeader(g, bounds, grid, col) end
---@param g System.Drawing.Graphics
---@param clip System.Drawing.Rectangle
---@param grid System.Windows.Forms.DataGrid
function System.Windows.Forms.ThemeWin32Classic:DataGridPaintParentRows(g, clip, grid) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param row System.Windows.Forms.DataGridDataSource
---@param grid System.Windows.Forms.DataGrid
function System.Windows.Forms.ThemeWin32Classic:DataGridPaintParentRow(g, bounds, row, grid) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param grid System.Windows.Forms.DataGrid
function System.Windows.Forms.ThemeWin32Classic:DataGridPaintRowHeaderArrow(g, bounds, grid) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param grid System.Windows.Forms.DataGrid
function System.Windows.Forms.ThemeWin32Classic:DataGridPaintRowHeaderStar(g, bounds, grid) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param row number
---@param grid System.Windows.Forms.DataGrid
function System.Windows.Forms.ThemeWin32Classic:DataGridPaintRowHeader(g, bounds, row, grid) end
---@param g System.Drawing.Graphics
---@param cells System.Drawing.Rectangle
---@param clip System.Drawing.Rectangle
---@param grid System.Windows.Forms.DataGrid
function System.Windows.Forms.ThemeWin32Classic:DataGridPaintRows(g, cells, clip, grid) end
---@param g System.Drawing.Graphics
---@param row number
---@param row_rect System.Drawing.Rectangle
---@param is_newrow boolean
---@param clip System.Drawing.Rectangle
---@param grid System.Windows.Forms.DataGrid
function System.Windows.Forms.ThemeWin32Classic:DataGridPaintRelationRow(g, row, row_rect, is_newrow, clip, grid) end
---@param g System.Drawing.Graphics
---@param row number
---@param row_rect System.Drawing.Rectangle
---@param is_newrow boolean
---@param clip System.Drawing.Rectangle
---@param grid System.Windows.Forms.DataGrid
function System.Windows.Forms.ThemeWin32Classic:DataGridPaintRowContents(g, row, row_rect, is_newrow, clip, grid) end
---@param g System.Drawing.Graphics
---@param row number
---@param row_rect System.Drawing.Rectangle
---@param is_newrow boolean
---@param clip System.Drawing.Rectangle
---@param grid System.Windows.Forms.DataGrid
function System.Windows.Forms.ThemeWin32Classic:DataGridPaintRow(g, row, row_rect, is_newrow, clip, grid) end
---@param cell System.Windows.Forms.DataGridViewRowHeaderCell
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@return boolean
function System.Windows.Forms.ThemeWin32Classic:DataGridViewRowHeaderCellDrawBackground(cell, g, bounds) end
---@param cell System.Windows.Forms.DataGridViewRowHeaderCell
---@return boolean
function System.Windows.Forms.ThemeWin32Classic:DataGridViewRowHeaderCellDrawSelectionBackground(cell) end
---@param cell System.Windows.Forms.DataGridViewRowHeaderCell
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@return boolean
function System.Windows.Forms.ThemeWin32Classic:DataGridViewRowHeaderCellDrawBorder(cell, g, bounds) end
---@param cell System.Windows.Forms.DataGridViewColumnHeaderCell
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@return boolean
function System.Windows.Forms.ThemeWin32Classic:DataGridViewColumnHeaderCellDrawBackground(cell, g, bounds) end
---@param cell System.Windows.Forms.DataGridViewColumnHeaderCell
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@return boolean
function System.Windows.Forms.ThemeWin32Classic:DataGridViewColumnHeaderCellDrawBorder(cell, g, bounds) end
---@param dataGridView System.Windows.Forms.DataGridView
---@return boolean
function System.Windows.Forms.ThemeWin32Classic:DataGridViewHeaderCellHasPressedStyle(dataGridView) end
---@param dataGridView System.Windows.Forms.DataGridView
---@return boolean
function System.Windows.Forms.ThemeWin32Classic:DataGridViewHeaderCellHasHotStyle(dataGridView) end
---@param dc System.Drawing.Graphics
---@param clip_rectangle System.Drawing.Rectangle
---@param dtp System.Windows.Forms.DateTimePicker
function System.Windows.Forms.ThemeWin32Classic:DrawDateTimePicker(dc, clip_rectangle, dtp) end
---@param dateTimePicker System.Windows.Forms.DateTimePicker
---@return System.Drawing.Rectangle
function System.Windows.Forms.ThemeWin32Classic:DateTimePickerGetDropDownButtonArea(dateTimePicker) end
---@param dateTimePicker System.Windows.Forms.DateTimePicker
---@return System.Drawing.Rectangle
function System.Windows.Forms.ThemeWin32Classic:DateTimePickerGetDateArea(dateTimePicker) end
---@param dc System.Drawing.Graphics
---@param area System.Drawing.Rectangle
---@param box System.Windows.Forms.GroupBox
function System.Windows.Forms.ThemeWin32Classic:DrawGroupBox(dc, area, box) end
---@param ctrl System.Windows.Forms.ListBox
---@param e System.Windows.Forms.DrawItemEventArgs
function System.Windows.Forms.ThemeWin32Classic:DrawListBoxItem(ctrl, e) end
---@param dc System.Drawing.Graphics
---@param clip System.Drawing.Rectangle
---@param control System.Windows.Forms.ListView
function System.Windows.Forms.ThemeWin32Classic:DrawListViewItems(dc, clip, control) end
---@param dc System.Drawing.Graphics
---@param clip System.Drawing.Rectangle
---@param control System.Windows.Forms.ListView
function System.Windows.Forms.ThemeWin32Classic:DrawListViewHeader(dc, clip, control) end
---@param dc System.Drawing.Graphics
---@param view System.Windows.Forms.ListView
---@param col System.Windows.Forms.ColumnHeader
---@param target_x number
function System.Windows.Forms.ThemeWin32Classic:DrawListViewHeaderDragDetails(dc, view, col, target_x) end
---@param dc System.Drawing.Graphics
---@param item System.Windows.Forms.MenuItem
---@param y number
---@param x number
---@param menuBar boolean
function System.Windows.Forms.ThemeWin32Classic:CalcItemSize(dc, item, y, x, menuBar) end
---@param dc System.Drawing.Graphics
---@param menu System.Windows.Forms.Menu
---@param width number
---@return number
function System.Windows.Forms.ThemeWin32Classic:CalcMenuBarSize(dc, menu, width) end
---@param dc System.Drawing.Graphics
---@param menu System.Windows.Forms.Menu
function System.Windows.Forms.ThemeWin32Classic:CalcPopupMenuSize(dc, menu) end
---@param dc System.Drawing.Graphics
---@param menu System.Windows.Forms.Menu
---@param rect System.Drawing.Rectangle
function System.Windows.Forms.ThemeWin32Classic:DrawMenuBar(dc, menu, rect) end
---@param item System.Windows.Forms.MenuItem
---@param e System.Windows.Forms.DrawItemEventArgs
function System.Windows.Forms.ThemeWin32Classic:DrawMenuItem(item, e) end
---@param dc System.Drawing.Graphics
---@param menu System.Windows.Forms.Menu
---@param cliparea System.Drawing.Rectangle
---@param rect System.Drawing.Rectangle
function System.Windows.Forms.ThemeWin32Classic:DrawPopupMenu(dc, menu, cliparea, rect) end
---@param dc System.Drawing.Graphics
---@param clip_rectangle System.Drawing.Rectangle
---@param mc System.Windows.Forms.MonthCalendar
function System.Windows.Forms.ThemeWin32Classic:DrawMonthCalendar(dc, clip_rectangle, mc) end
---@param dc System.Drawing.Graphics
---@param clip System.Drawing.Rectangle
---@param pb System.Windows.Forms.PictureBox
function System.Windows.Forms.ThemeWin32Classic:DrawPictureBox(dc, clip, pb) end
---@param preview System.Windows.Forms.PrintPreviewControl
---@return System.Drawing.Size
function System.Windows.Forms.ThemeWin32Classic:PrintPreviewControlGetPageSize(preview) end
---@param pe System.Windows.Forms.PaintEventArgs
---@param preview System.Windows.Forms.PrintPreviewControl
---@param page_size System.Drawing.Size
function System.Windows.Forms.ThemeWin32Classic:PrintPreviewControlPaint(pe, preview, page_size) end
---@param dc System.Drawing.Graphics
---@param clip_rect System.Drawing.Rectangle
---@param ctrl System.Windows.Forms.ProgressBar
function System.Windows.Forms.ThemeWin32Classic:DrawProgressBar(dc, clip_rect, ctrl) end
---@overload fun(self: System.Windows.Forms.ThemeWin32Classic, dc: System.Drawing.Graphics, clip_rectangle: System.Drawing.Rectangle, radio_button: System.Windows.Forms.RadioButton)
---@param g System.Drawing.Graphics
---@param rb System.Windows.Forms.RadioButton
---@param glyphArea System.Drawing.Rectangle
---@param textBounds System.Drawing.Rectangle
---@param imageBounds System.Drawing.Rectangle
---@param clipRectangle System.Drawing.Rectangle
function System.Windows.Forms.ThemeWin32Classic:DrawRadioButton(g, rb, glyphArea, textBounds, imageBounds, clipRectangle) end
---@param g System.Drawing.Graphics
---@param rb System.Windows.Forms.RadioButton
---@param glyphArea System.Drawing.Rectangle
function System.Windows.Forms.ThemeWin32Classic:DrawRadioButtonGlyph(g, rb, glyphArea) end
---@param g System.Drawing.Graphics
---@param rb System.Windows.Forms.RadioButton
---@param focusArea System.Drawing.Rectangle
function System.Windows.Forms.ThemeWin32Classic:DrawRadioButtonFocus(g, rb, focusArea) end
---@param g System.Drawing.Graphics
---@param rb System.Windows.Forms.RadioButton
---@param imageBounds System.Drawing.Rectangle
function System.Windows.Forms.ThemeWin32Classic:DrawRadioButtonImage(g, rb, imageBounds) end
---@param g System.Drawing.Graphics
---@param rb System.Windows.Forms.RadioButton
---@param textBounds System.Drawing.Rectangle
function System.Windows.Forms.ThemeWin32Classic:DrawRadioButtonText(g, rb, textBounds) end
---@param rb System.Windows.Forms.RadioButton
---@return System.Drawing.Size
function System.Windows.Forms.ThemeWin32Classic:CalculateRadioButtonAutoSize(rb) end
---@param b System.Windows.Forms.ButtonBase
---@param offset System.Drawing.Point
---@param out_glyphArea System.Drawing.Rectangle
---@param out_textRectangle System.Drawing.Rectangle
---@param out_imageRectangle System.Drawing.Rectangle
---@return ,System.Drawing.Rectangle,System.Drawing.Rectangle,System.Drawing.Rectangle
function System.Windows.Forms.ThemeWin32Classic:CalculateRadioButtonTextAndImageLayout(b, offset, out_glyphArea, out_textRectangle, out_imageRectangle) end
---@param dc System.Drawing.Graphics
---@param clip System.Drawing.Rectangle
---@param bar System.Windows.Forms.ScrollBar
function System.Windows.Forms.ThemeWin32Classic:DrawScrollBar(dc, clip, bar) end
---@param real_dc System.Drawing.Graphics
---@param clip System.Drawing.Rectangle
---@param sb System.Windows.Forms.StatusBar
function System.Windows.Forms.ThemeWin32Classic:DrawStatusBar(real_dc, clip, sb) end
---@param tab System.Windows.Forms.TabControl
---@return System.Drawing.Size
function System.Windows.Forms.ThemeWin32Classic:TabControlGetSpacing(tab) end
---@param dc System.Drawing.Graphics
---@param area System.Drawing.Rectangle
---@param tab System.Windows.Forms.TabControl
function System.Windows.Forms.ThemeWin32Classic:DrawTabControl(dc, area, tab) end
---@param tab System.Windows.Forms.TabControl
---@return System.Drawing.Rectangle
function System.Windows.Forms.ThemeWin32Classic:TabControlGetDisplayRectangle(tab) end
---@param tab System.Windows.Forms.TabControl
---@return System.Drawing.Rectangle
function System.Windows.Forms.ThemeWin32Classic:TabControlGetPanelRect(tab) end
---@param textBoxBase System.Windows.Forms.TextBoxBase
---@param g System.Drawing.Graphics
---@param clippingArea System.Drawing.Rectangle
function System.Windows.Forms.ThemeWin32Classic:TextBoxBaseFillBackground(textBoxBase, g, clippingArea) end
---@param textBoxBase System.Windows.Forms.TextBoxBase
---@param ref_m System.Windows.Forms.Message
---@return boolean,System.Windows.Forms.Message
function System.Windows.Forms.ThemeWin32Classic:TextBoxBaseHandleWmNcPaint(textBoxBase, ref_m) end
---@param textBoxBase System.Windows.Forms.TextBoxBase
---@return boolean
function System.Windows.Forms.ThemeWin32Classic:TextBoxBaseShouldPaintBackground(textBoxBase) end
---@param dc System.Drawing.Graphics
---@param clip_rectangle System.Drawing.Rectangle
---@param control System.Windows.Forms.ToolBar
function System.Windows.Forms.ThemeWin32Classic:DrawToolBar(dc, clip_rectangle, control) end
---@param toolBar System.Windows.Forms.ToolBar
---@return boolean
function System.Windows.Forms.ThemeWin32Classic:ToolBarHasHotElementStyles(toolBar) end
---@param dc System.Drawing.Graphics
---@param clip_rectangle System.Drawing.Rectangle
---@param control System.Windows.Forms.ToolTip.ToolTipWindow
function System.Windows.Forms.ThemeWin32Classic:DrawToolTip(dc, clip_rectangle, control) end
---@param tt System.Windows.Forms.ToolTip.ToolTipWindow
---@param text string
---@return System.Drawing.Size
function System.Windows.Forms.ThemeWin32Classic:ToolTipSize(tt, text) end
---@param handle System.IntPtr
---@param timeout number
---@param title string
---@param text string
---@param icon System.Windows.Forms.ToolTipIcon
function System.Windows.Forms.ThemeWin32Classic:ShowBalloonWindow(handle, timeout, title, text, icon) end
---@param handle System.IntPtr
function System.Windows.Forms.ThemeWin32Classic:HideBalloonWindow(handle) end
---@param dc System.Drawing.Graphics
---@param clip System.Drawing.Rectangle
---@param control System.Windows.Forms.NotifyIcon.BalloonWindow
function System.Windows.Forms.ThemeWin32Classic:DrawBalloonWindow(dc, clip, control) end
---@param control System.Windows.Forms.NotifyIcon.BalloonWindow
---@return System.Drawing.Rectangle
function System.Windows.Forms.ThemeWin32Classic:BalloonWindowRect(control) end
---@param x number
---@param y number
---@param tb System.Windows.Forms.TrackBar
---@return number
function System.Windows.Forms.ThemeWin32Classic:TrackBarValueFromMousePosition(x, y, tb) end
---@param dc System.Drawing.Graphics
---@param clip_rectangle System.Drawing.Rectangle
---@param tb System.Windows.Forms.TrackBar
function System.Windows.Forms.ThemeWin32Classic:DrawTrackBar(dc, clip_rectangle, tb) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param top boolean
---@param state System.Windows.Forms.VisualStyles.PushButtonState
function System.Windows.Forms.ThemeWin32Classic:UpDownBaseDrawButton(g, bounds, top, state) end
---@param treeView System.Windows.Forms.TreeView
---@param node System.Windows.Forms.TreeNode
---@param dc System.Drawing.Graphics
---@param x number
---@param middle number
function System.Windows.Forms.ThemeWin32Classic:TreeViewDrawNodePlusMinus(treeView, node, dc, x, middle) end
---@param wm System.Windows.Forms.InternalWindowManager
---@return number
function System.Windows.Forms.ThemeWin32Classic:ManagedWindowTitleBarHeight(wm) end
---@param wm System.Windows.Forms.InternalWindowManager
---@return number
function System.Windows.Forms.ThemeWin32Classic:ManagedWindowBorderWidth(wm) end
---@param wm System.Windows.Forms.InternalWindowManager
---@return number
function System.Windows.Forms.ThemeWin32Classic:ManagedWindowIconWidth(wm) end
---@param wm System.Windows.Forms.InternalWindowManager
function System.Windows.Forms.ThemeWin32Classic:ManagedWindowSetButtonLocations(wm) end
---@param dc System.Drawing.Graphics
---@param clip System.Drawing.Rectangle
---@param wm System.Windows.Forms.InternalWindowManager
function System.Windows.Forms.ThemeWin32Classic:DrawManagedWindowDecorations(dc, clip, wm) end
---@param wm System.Windows.Forms.InternalWindowManager
---@return System.Drawing.Size
function System.Windows.Forms.ThemeWin32Classic:ManagedWindowButtonSize(wm) end
---@param wm System.Windows.Forms.InternalWindowManager
---@return System.Drawing.Rectangle
function System.Windows.Forms.ThemeWin32Classic:ManagedWindowGetTitleBarIconArea(wm) end
---@param wm System.Windows.Forms.InternalWindowManager
---@return System.Drawing.Size
function System.Windows.Forms.ThemeWin32Classic:ManagedWindowGetMenuButtonSize(wm) end
---@param button System.Windows.Forms.TitleButton
---@param form System.Windows.Forms.Form
---@return boolean
function System.Windows.Forms.ThemeWin32Classic:ManagedWindowTitleButtonHasHotElementStyle(button, form) end
---@param dc System.Drawing.Graphics
---@param button System.Windows.Forms.TitleButton
---@param clip System.Drawing.Rectangle
---@param wm System.Windows.Forms.InternalWindowManager
function System.Windows.Forms.ThemeWin32Classic:ManagedWindowDrawMenuButton(dc, button, clip, wm) end
---@param form System.Windows.Forms.Form
function System.Windows.Forms.ThemeWin32Classic:ManagedWindowOnSizeInitializedOrChanged(form) end
---@overload fun(self: System.Windows.Forms.ThemeWin32Classic, graphics: System.Drawing.Graphics, bounds: System.Drawing.Rectangle, leftColor: System.Drawing.Color, leftWidth: number, leftStyle: System.Windows.Forms.ButtonBorderStyle, topColor: System.Drawing.Color, topWidth: number, topStyle: System.Windows.Forms.ButtonBorderStyle, rightColor: System.Drawing.Color, rightWidth: number, rightStyle: System.Windows.Forms.ButtonBorderStyle, bottomColor: System.Drawing.Color, bottomWidth: number, bottomStyle: System.Windows.Forms.ButtonBorderStyle)
---@param graphics System.Drawing.Graphics
---@param bounds System.Drawing.RectangleF
---@param leftColor System.Drawing.Color
---@param leftWidth number
---@param leftStyle System.Windows.Forms.ButtonBorderStyle
---@param topColor System.Drawing.Color
---@param topWidth number
---@param topStyle System.Windows.Forms.ButtonBorderStyle
---@param rightColor System.Drawing.Color
---@param rightWidth number
---@param rightStyle System.Windows.Forms.ButtonBorderStyle
---@param bottomColor System.Drawing.Color
---@param bottomWidth number
---@param bottomStyle System.Windows.Forms.ButtonBorderStyle
function System.Windows.Forms.ThemeWin32Classic:CPDrawBorder(graphics, bounds, leftColor, leftWidth, leftStyle, topColor, topWidth, topStyle, rightColor, rightWidth, rightStyle, bottomColor, bottomWidth, bottomStyle) end
---@overload fun(self: System.Windows.Forms.ThemeWin32Classic, graphics: System.Drawing.Graphics, rectangle: System.Drawing.Rectangle, style: System.Windows.Forms.Border3DStyle, sides: System.Windows.Forms.Border3DSide)
---@param graphics System.Drawing.Graphics
---@param rectangle System.Drawing.Rectangle
---@param style System.Windows.Forms.Border3DStyle
---@param sides System.Windows.Forms.Border3DSide
---@param control_color System.Drawing.Color
function System.Windows.Forms.ThemeWin32Classic:CPDrawBorder3D(graphics, rectangle, style, sides, control_color) end
---@param dc System.Drawing.Graphics
---@param rectangle System.Drawing.Rectangle
---@param state System.Windows.Forms.ButtonState
function System.Windows.Forms.ThemeWin32Classic:CPDrawButton(dc, rectangle, state) end
---@param graphics System.Drawing.Graphics
---@param rectangle System.Drawing.Rectangle
---@param button System.Windows.Forms.CaptionButton
---@param state System.Windows.Forms.ButtonState
function System.Windows.Forms.ThemeWin32Classic:CPDrawCaptionButton(graphics, rectangle, button, state) end
---@param dc System.Drawing.Graphics
---@param rectangle System.Drawing.Rectangle
---@param state System.Windows.Forms.ButtonState
function System.Windows.Forms.ThemeWin32Classic:CPDrawCheckBox(dc, rectangle, state) end
---@param graphics System.Drawing.Graphics
---@param rectangle System.Drawing.Rectangle
---@param state System.Windows.Forms.ButtonState
function System.Windows.Forms.ThemeWin32Classic:CPDrawComboButton(graphics, rectangle, state) end
---@param graphics System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
function System.Windows.Forms.ThemeWin32Classic:CPDrawContainerGrabHandle(graphics, bounds) end
---@param graphics System.Drawing.Graphics
---@param rectangle System.Drawing.Rectangle
---@param button System.Windows.Forms.ButtonBase
---@param foreColor System.Drawing.Color
---@param backColor System.Drawing.Color
function System.Windows.Forms.ThemeWin32Classic:DrawFlatStyleFocusRectangle(graphics, rectangle, button, foreColor, backColor) end
---@param graphics System.Drawing.Graphics
---@param rectangle System.Drawing.Rectangle
---@param backColor System.Drawing.Color
function System.Windows.Forms.ThemeWin32Classic:DrawInnerFocusRectangle(graphics, rectangle, backColor) end
---@param graphics System.Drawing.Graphics
---@param rectangle System.Drawing.Rectangle
---@param foreColor System.Drawing.Color
---@param backColor System.Drawing.Color
function System.Windows.Forms.ThemeWin32Classic:CPDrawFocusRectangle(graphics, rectangle, foreColor, backColor) end
---@param graphics System.Drawing.Graphics
---@param rectangle System.Drawing.Rectangle
---@param primary boolean
---@param enabled boolean
function System.Windows.Forms.ThemeWin32Classic:CPDrawGrabHandle(graphics, rectangle, primary, enabled) end
---@param graphics System.Drawing.Graphics
---@param area System.Drawing.Rectangle
---@param pixelsBetweenDots System.Drawing.Size
---@param backColor System.Drawing.Color
function System.Windows.Forms.ThemeWin32Classic:CPDrawGrid(graphics, area, pixelsBetweenDots, backColor) end
---@param graphics System.Drawing.Graphics
---@param image System.Drawing.Image
---@param x number
---@param y number
---@param background System.Drawing.Color
function System.Windows.Forms.ThemeWin32Classic:CPDrawImageDisabled(graphics, image, x, y, background) end
---@param graphics System.Drawing.Graphics
---@param rectangle System.Drawing.Rectangle
---@param primary boolean
function System.Windows.Forms.ThemeWin32Classic:CPDrawLockedFrame(graphics, rectangle, primary) end
---@param graphics System.Drawing.Graphics
---@param rectangle System.Drawing.Rectangle
---@param glyph System.Windows.Forms.MenuGlyph
---@param color System.Drawing.Color
---@param backColor System.Drawing.Color
function System.Windows.Forms.ThemeWin32Classic:CPDrawMenuGlyph(graphics, rectangle, glyph, color, backColor) end
---@param graphics System.Drawing.Graphics
---@param rectangle System.Drawing.Rectangle
---@param state System.Windows.Forms.ButtonState
function System.Windows.Forms.ThemeWin32Classic:CPDrawMixedCheckBox(graphics, rectangle, state) end
---@param dc System.Drawing.Graphics
---@param rectangle System.Drawing.Rectangle
---@param state System.Windows.Forms.ButtonState
function System.Windows.Forms.ThemeWin32Classic:CPDrawRadioButton(dc, rectangle, state) end
---@param rectangle System.Drawing.Rectangle
---@param backColor System.Drawing.Color
---@param style System.Windows.Forms.FrameStyle
function System.Windows.Forms.ThemeWin32Classic:CPDrawReversibleFrame(rectangle, backColor, style) end
---@param start System.Drawing.Point
---@param _end System.Drawing.Point
---@param backColor System.Drawing.Color
function System.Windows.Forms.ThemeWin32Classic:CPDrawReversibleLine(start, _end, backColor) end
---@param dc System.Drawing.Graphics
---@param area System.Drawing.Rectangle
---@param type System.Windows.Forms.ScrollButton
---@param state System.Windows.Forms.ButtonState
function System.Windows.Forms.ThemeWin32Classic:CPDrawScrollButton(dc, area, type, state) end
---@param graphics System.Drawing.Graphics
---@param active boolean
---@param outsideRect System.Drawing.Rectangle
---@param insideRect System.Drawing.Rectangle
---@param backColor System.Drawing.Color
function System.Windows.Forms.ThemeWin32Classic:CPDrawSelectionFrame(graphics, active, outsideRect, insideRect, backColor) end
---@param dc System.Drawing.Graphics
---@param backColor System.Drawing.Color
---@param bounds System.Drawing.Rectangle
function System.Windows.Forms.ThemeWin32Classic:CPDrawSizeGrip(dc, backColor, bounds) end
---@overload fun(self: System.Windows.Forms.ThemeWin32Classic, dc: System.Drawing.Graphics, s: string, font: System.Drawing.Font, color: System.Drawing.Color, layoutRectangle: System.Drawing.RectangleF, format: System.Drawing.StringFormat)
---@param dc System.Drawing.IDeviceContext
---@param s string
---@param font System.Drawing.Font
---@param color System.Drawing.Color
---@param layoutRectangle System.Drawing.Rectangle
---@param format System.Windows.Forms.TextFormatFlags
function System.Windows.Forms.ThemeWin32Classic:CPDrawStringDisabled(dc, s, font, color, layoutRectangle, format) end
---@param graphics System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
function System.Windows.Forms.ThemeWin32Classic:CPDrawVisualStyleBorder(graphics, bounds) end
---@param dc System.Drawing.Graphics
---@param area System.Drawing.Rectangle
---@param state System.Windows.Forms.ButtonState
function System.Windows.Forms.ThemeWin32Classic:DrawScrollButtonPrimitive(dc, area, state) end
---@param dc System.Drawing.Graphics
---@param area System.Drawing.Rectangle
---@param border_style System.Windows.Forms.BorderStyle
function System.Windows.Forms.ThemeWin32Classic:CPDrawBorderStyle(dc, area, border_style) end

---@class System.Windows.Forms.ThemeWin32Classic.VerticalAlignment
---@field Top System.Windows.Forms.ThemeWin32Classic.VerticalAlignment
---@field Center System.Windows.Forms.ThemeWin32Classic.VerticalAlignment
---@field Bottom System.Windows.Forms.ThemeWin32Classic.VerticalAlignment
System.Windows.Forms.ThemeWin32Classic.VerticalAlignment = {}
---@alias CS.System.Windows.Forms.ThemeWin32Classic.VerticalAlignment System.Windows.Forms.ThemeWin32Classic.VerticalAlignment
CS.System.Windows.Forms.ThemeWin32Classic.VerticalAlignment = System.Windows.Forms.ThemeWin32Classic.VerticalAlignment


---@class System.Windows.Forms.ThemeWin32Classic.ITrackBarTickPainter
System.Windows.Forms.ThemeWin32Classic.ITrackBarTickPainter = {}
---@alias CS.System.Windows.Forms.ThemeWin32Classic.ITrackBarTickPainter System.Windows.Forms.ThemeWin32Classic.ITrackBarTickPainter
CS.System.Windows.Forms.ThemeWin32Classic.ITrackBarTickPainter = System.Windows.Forms.ThemeWin32Classic.ITrackBarTickPainter

---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
function System.Windows.Forms.ThemeWin32Classic.ITrackBarTickPainter:Paint(x1, y1, x2, y2) end

---@class System.Windows.Forms.ThemeWin32Classic.TrackBarTickPainter : System.Object
System.Windows.Forms.ThemeWin32Classic.TrackBarTickPainter = {}
---@alias CS.System.Windows.Forms.ThemeWin32Classic.TrackBarTickPainter System.Windows.Forms.ThemeWin32Classic.TrackBarTickPainter
CS.System.Windows.Forms.ThemeWin32Classic.TrackBarTickPainter = System.Windows.Forms.ThemeWin32Classic.TrackBarTickPainter

---@param g System.Drawing.Graphics
---@param pen System.Drawing.Pen
---@return System.Windows.Forms.ThemeWin32Classic.TrackBarTickPainter
function System.Windows.Forms.ThemeWin32Classic.TrackBarTickPainter.New(g, pen) end
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
function System.Windows.Forms.ThemeWin32Classic.TrackBarTickPainter:Paint(x1, y1, x2, y2) end

---@class System.Windows.Forms.ThreadExceptionDialog : System.Windows.Forms.Form
---@field AutoSize boolean
System.Windows.Forms.ThreadExceptionDialog = {}
---@alias CS.System.Windows.Forms.ThreadExceptionDialog System.Windows.Forms.ThreadExceptionDialog
CS.System.Windows.Forms.ThreadExceptionDialog = System.Windows.Forms.ThreadExceptionDialog

---@param t System.Exception
---@return System.Windows.Forms.ThreadExceptionDialog
function System.Windows.Forms.ThreadExceptionDialog.New(t) end

---@class System.Windows.Forms.TickStyle
---@field None System.Windows.Forms.TickStyle
---@field TopLeft System.Windows.Forms.TickStyle
---@field BottomRight System.Windows.Forms.TickStyle
---@field Both System.Windows.Forms.TickStyle
System.Windows.Forms.TickStyle = {}
---@alias CS.System.Windows.Forms.TickStyle System.Windows.Forms.TickStyle
CS.System.Windows.Forms.TickStyle = System.Windows.Forms.TickStyle


---@class System.Windows.Forms.Timer : System.ComponentModel.Component
---@field Enabled boolean
---@field Interval number
---@field Tag System.Object
System.Windows.Forms.Timer = {}
---@alias CS.System.Windows.Forms.Timer System.Windows.Forms.Timer
CS.System.Windows.Forms.Timer = System.Windows.Forms.Timer

---@overload fun() : System.Windows.Forms.Timer
---@param container System.ComponentModel.IContainer
---@return System.Windows.Forms.Timer
function System.Windows.Forms.Timer.New(container) end
function System.Windows.Forms.Timer:Start() end
function System.Windows.Forms.Timer:Stop() end
---@return string
function System.Windows.Forms.Timer:ToString() end

---@class System.Windows.Forms.ToolBar : System.Windows.Forms.Control
---@field Appearance System.Windows.Forms.ToolBarAppearance
---@field AutoSize boolean
---@field BackColor System.Drawing.Color
---@field BackgroundImage System.Drawing.Image
---@field BackgroundImageLayout System.Windows.Forms.ImageLayout
---@field BorderStyle System.Windows.Forms.BorderStyle
---@field Buttons System.Windows.Forms.ToolBar.ToolBarButtonCollection
---@field ButtonSize System.Drawing.Size
---@field Divider boolean
---@field Dock System.Windows.Forms.DockStyle
---@field DropDownArrows boolean
---@field ForeColor System.Drawing.Color
---@field ImageList System.Windows.Forms.ImageList
---@field ImageSize System.Drawing.Size
---@field ImeMode System.Windows.Forms.ImeMode
---@field RightToLeft System.Windows.Forms.RightToLeft
---@field ShowToolTips boolean
---@field TabStop boolean
---@field Text string
---@field TextAlign System.Windows.Forms.ToolBarTextAlign
---@field Wrappable boolean
System.Windows.Forms.ToolBar = {}
---@alias CS.System.Windows.Forms.ToolBar System.Windows.Forms.ToolBar
CS.System.Windows.Forms.ToolBar = System.Windows.Forms.ToolBar

---@return System.Windows.Forms.ToolBar
function System.Windows.Forms.ToolBar.New() end
---@return string
function System.Windows.Forms.ToolBar:ToString() end

---@class System.Windows.Forms.ToolBar.ToolBarButtonCollection : System.Object
---@field Count number
---@field IsReadOnly boolean
---@field Item System.Windows.Forms.ToolBarButton
---@field Item System.Windows.Forms.ToolBarButton
System.Windows.Forms.ToolBar.ToolBarButtonCollection = {}
---@alias CS.System.Windows.Forms.ToolBar.ToolBarButtonCollection System.Windows.Forms.ToolBar.ToolBarButtonCollection
CS.System.Windows.Forms.ToolBar.ToolBarButtonCollection = System.Windows.Forms.ToolBar.ToolBarButtonCollection

---@param owner System.Windows.Forms.ToolBar
---@return System.Windows.Forms.ToolBar.ToolBarButtonCollection
function System.Windows.Forms.ToolBar.ToolBarButtonCollection.New(owner) end
---@overload fun(self: System.Windows.Forms.ToolBar.ToolBarButtonCollection, text: string) : number
---@param button System.Windows.Forms.ToolBarButton
---@return number
function System.Windows.Forms.ToolBar.ToolBarButtonCollection:Add(button) end
---@param buttons System.Windows.Forms.ToolBarButton[]
function System.Windows.Forms.ToolBar.ToolBarButtonCollection:AddRange(buttons) end
function System.Windows.Forms.ToolBar.ToolBarButtonCollection:Clear() end
---@param button System.Windows.Forms.ToolBarButton
---@return boolean
function System.Windows.Forms.ToolBar.ToolBarButtonCollection:Contains(button) end
---@param key string
---@return boolean
function System.Windows.Forms.ToolBar.ToolBarButtonCollection:ContainsKey(key) end
---@return System.Collections.IEnumerator
function System.Windows.Forms.ToolBar.ToolBarButtonCollection:GetEnumerator() end
---@param button System.Windows.Forms.ToolBarButton
---@return number
function System.Windows.Forms.ToolBar.ToolBarButtonCollection:IndexOf(button) end
---@param key string
---@return number
function System.Windows.Forms.ToolBar.ToolBarButtonCollection:IndexOfKey(key) end
---@param index number
---@param button System.Windows.Forms.ToolBarButton
function System.Windows.Forms.ToolBar.ToolBarButtonCollection:Insert(index, button) end
---@param button System.Windows.Forms.ToolBarButton
function System.Windows.Forms.ToolBar.ToolBarButtonCollection:Remove(button) end
---@param index number
function System.Windows.Forms.ToolBar.ToolBarButtonCollection:RemoveAt(index) end
---@param key string
function System.Windows.Forms.ToolBar.ToolBarButtonCollection:RemoveByKey(key) end

---@class System.Windows.Forms.ToolBarItem : System.ComponentModel.Component
---@field Button System.Windows.Forms.ToolBarButton
---@field Rectangle System.Drawing.Rectangle
---@field Location System.Drawing.Point
---@field ImageRectangle System.Drawing.Rectangle
---@field TextRectangle System.Drawing.Rectangle
---@field Pressed boolean
---@field DDPressed boolean
---@field Inside boolean
---@field Hilight boolean
System.Windows.Forms.ToolBarItem = {}
---@alias CS.System.Windows.Forms.ToolBarItem System.Windows.Forms.ToolBarItem
CS.System.Windows.Forms.ToolBarItem = System.Windows.Forms.ToolBarItem

---@param button System.Windows.Forms.ToolBarButton
---@return System.Windows.Forms.ToolBarItem
function System.Windows.Forms.ToolBarItem.New(button) end
---@return System.Drawing.Size
function System.Windows.Forms.ToolBarItem:CalculateSize() end
---@overload fun(self: System.Windows.Forms.ToolBarItem, vertical: boolean, calculated_size: number) : boolean
---@param size System.Drawing.Size
---@return boolean
function System.Windows.Forms.ToolBarItem:Layout(size) end
function System.Windows.Forms.ToolBarItem:Invalidate() end

---@class System.Windows.Forms.ToolBarAppearance
---@field Normal System.Windows.Forms.ToolBarAppearance
---@field Flat System.Windows.Forms.ToolBarAppearance
System.Windows.Forms.ToolBarAppearance = {}
---@alias CS.System.Windows.Forms.ToolBarAppearance System.Windows.Forms.ToolBarAppearance
CS.System.Windows.Forms.ToolBarAppearance = System.Windows.Forms.ToolBarAppearance


---@class System.Windows.Forms.ToolBarButton : System.ComponentModel.Component
---@field DropDownMenu System.Windows.Forms.Menu
---@field Enabled boolean
---@field ImageIndex number
---@field ImageKey string
---@field Name string
---@field Parent System.Windows.Forms.ToolBar
---@field PartialPush boolean
---@field Pushed boolean
---@field Rectangle System.Drawing.Rectangle
---@field Style System.Windows.Forms.ToolBarButtonStyle
---@field Tag System.Object
---@field Text string
---@field ToolTipText string
---@field Visible boolean
System.Windows.Forms.ToolBarButton = {}
---@alias CS.System.Windows.Forms.ToolBarButton System.Windows.Forms.ToolBarButton
CS.System.Windows.Forms.ToolBarButton = System.Windows.Forms.ToolBarButton

---@overload fun() : System.Windows.Forms.ToolBarButton
---@param text string
---@return System.Windows.Forms.ToolBarButton
function System.Windows.Forms.ToolBarButton.New(text) end
---@return string
function System.Windows.Forms.ToolBarButton:ToString() end

---@class System.Windows.Forms.ToolBarButtonClickEventArgs : System.EventArgs
---@field Button System.Windows.Forms.ToolBarButton
System.Windows.Forms.ToolBarButtonClickEventArgs = {}
---@alias CS.System.Windows.Forms.ToolBarButtonClickEventArgs System.Windows.Forms.ToolBarButtonClickEventArgs
CS.System.Windows.Forms.ToolBarButtonClickEventArgs = System.Windows.Forms.ToolBarButtonClickEventArgs

---@param button System.Windows.Forms.ToolBarButton
---@return System.Windows.Forms.ToolBarButtonClickEventArgs
function System.Windows.Forms.ToolBarButtonClickEventArgs.New(button) end

---@class System.Windows.Forms.ToolBarButtonClickEventHandler : System.MulticastDelegate
System.Windows.Forms.ToolBarButtonClickEventHandler = {}
---@alias CS.System.Windows.Forms.ToolBarButtonClickEventHandler System.Windows.Forms.ToolBarButtonClickEventHandler
CS.System.Windows.Forms.ToolBarButtonClickEventHandler = System.Windows.Forms.ToolBarButtonClickEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.ToolBarButtonClickEventHandler
function System.Windows.Forms.ToolBarButtonClickEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Windows.Forms.ToolBarButtonClickEventArgs
function System.Windows.Forms.ToolBarButtonClickEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Windows.Forms.ToolBarButtonClickEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Windows.Forms.ToolBarButtonClickEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Windows.Forms.ToolBarButtonClickEventHandler:EndInvoke(result) end

---@class System.Windows.Forms.ToolBarButtonStyle
---@field PushButton System.Windows.Forms.ToolBarButtonStyle
---@field ToggleButton System.Windows.Forms.ToolBarButtonStyle
---@field Separator System.Windows.Forms.ToolBarButtonStyle
---@field DropDownButton System.Windows.Forms.ToolBarButtonStyle
System.Windows.Forms.ToolBarButtonStyle = {}
---@alias CS.System.Windows.Forms.ToolBarButtonStyle System.Windows.Forms.ToolBarButtonStyle
CS.System.Windows.Forms.ToolBarButtonStyle = System.Windows.Forms.ToolBarButtonStyle


---@class System.Windows.Forms.ToolBarTextAlign
---@field Underneath System.Windows.Forms.ToolBarTextAlign
---@field Right System.Windows.Forms.ToolBarTextAlign
System.Windows.Forms.ToolBarTextAlign = {}
---@alias CS.System.Windows.Forms.ToolBarTextAlign System.Windows.Forms.ToolBarTextAlign
CS.System.Windows.Forms.ToolBarTextAlign = System.Windows.Forms.ToolBarTextAlign


---@class System.Windows.Forms.ToolStrip : System.Windows.Forms.ScrollableControl
---@field AllowDrop boolean
---@field AllowItemReorder boolean
---@field AllowMerge boolean
---@field Anchor System.Windows.Forms.AnchorStyles
---@field AutoScroll boolean
---@field AutoScrollMargin System.Drawing.Size
---@field AutoScrollMinSize System.Drawing.Size
---@field AutoScrollPosition System.Drawing.Point
---@field AutoSize boolean
---@field BackColor System.Drawing.Color
---@field BindingContext System.Windows.Forms.BindingContext
---@field CanOverflow boolean
---@field CausesValidation boolean
---@field Controls System.Windows.Forms.Control.ControlCollection
---@field Cursor System.Windows.Forms.Cursor
---@field DefaultDropDownDirection System.Windows.Forms.ToolStripDropDownDirection
---@field DisplayRectangle System.Drawing.Rectangle
---@field Dock System.Windows.Forms.DockStyle
---@field Font System.Drawing.Font
---@field ForeColor System.Drawing.Color
---@field GripDisplayStyle System.Windows.Forms.ToolStripGripDisplayStyle
---@field GripMargin System.Windows.Forms.Padding
---@field GripRectangle System.Drawing.Rectangle
---@field GripStyle System.Windows.Forms.ToolStripGripStyle
---@field HasChildren boolean
---@field HorizontalScroll System.Windows.Forms.HScrollProperties
---@field ImageList System.Windows.Forms.ImageList
---@field ImageScalingSize System.Drawing.Size
---@field IsCurrentlyDragging boolean
---@field IsDropDown boolean
---@field Items System.Windows.Forms.ToolStripItemCollection
---@field LayoutEngine System.Windows.Forms.Layout.LayoutEngine
---@field LayoutSettings System.Windows.Forms.LayoutSettings
---@field LayoutStyle System.Windows.Forms.ToolStripLayoutStyle
---@field Orientation System.Windows.Forms.Orientation
---@field OverflowButton System.Windows.Forms.ToolStripOverflowButton
---@field Renderer System.Windows.Forms.ToolStripRenderer
---@field RenderMode System.Windows.Forms.ToolStripRenderMode
---@field ShowItemToolTips boolean
---@field Stretch boolean
---@field TabStop boolean
---@field TextDirection System.Windows.Forms.ToolStripTextDirection
---@field VerticalScroll System.Windows.Forms.VScrollProperties
System.Windows.Forms.ToolStrip = {}
---@alias CS.System.Windows.Forms.ToolStrip System.Windows.Forms.ToolStrip
CS.System.Windows.Forms.ToolStrip = System.Windows.Forms.ToolStrip

---@overload fun() : System.Windows.Forms.ToolStrip
---@param items System.Windows.Forms.ToolStripItem[]
---@return System.Windows.Forms.ToolStrip
function System.Windows.Forms.ToolStrip.New(items) end
---@overload fun(self: System.Windows.Forms.ToolStrip, point: System.Drawing.Point) : System.Windows.Forms.Control
---@param pt System.Drawing.Point
---@param skipValue System.Windows.Forms.GetChildAtPointSkip
---@return System.Windows.Forms.Control
function System.Windows.Forms.ToolStrip:GetChildAtPoint(pt, skipValue) end
---@overload fun(self: System.Windows.Forms.ToolStrip, point: System.Drawing.Point) : System.Windows.Forms.ToolStripItem
---@param x number
---@param y number
---@return System.Windows.Forms.ToolStripItem
function System.Windows.Forms.ToolStrip:GetItemAt(x, y) end
---@param start System.Windows.Forms.ToolStripItem
---@param direction System.Windows.Forms.ArrowDirection
---@return System.Windows.Forms.ToolStripItem
function System.Windows.Forms.ToolStrip:GetNextItem(start, direction) end
function System.Windows.Forms.ToolStrip:ResetMinimumSize() end
---@param x number
---@param y number
function System.Windows.Forms.ToolStrip:SetAutoScrollMargin(x, y) end
---@return string
function System.Windows.Forms.ToolStrip:ToString() end

---@class System.Windows.Forms.ToolStrip.ToolStripAccessibleObject : System.Windows.Forms.Control.ControlAccessibleObject
---@field Role System.Windows.Forms.AccessibleRole
System.Windows.Forms.ToolStrip.ToolStripAccessibleObject = {}
---@alias CS.System.Windows.Forms.ToolStrip.ToolStripAccessibleObject System.Windows.Forms.ToolStrip.ToolStripAccessibleObject
CS.System.Windows.Forms.ToolStrip.ToolStripAccessibleObject = System.Windows.Forms.ToolStrip.ToolStripAccessibleObject

---@param owner System.Windows.Forms.ToolStrip
---@return System.Windows.Forms.ToolStrip.ToolStripAccessibleObject
function System.Windows.Forms.ToolStrip.ToolStripAccessibleObject.New(owner) end
---@param index number
---@return System.Windows.Forms.AccessibleObject
function System.Windows.Forms.ToolStrip.ToolStripAccessibleObject:GetChild(index) end
---@return number
function System.Windows.Forms.ToolStrip.ToolStripAccessibleObject:GetChildCount() end
---@param x number
---@param y number
---@return System.Windows.Forms.AccessibleObject
function System.Windows.Forms.ToolStrip.ToolStripAccessibleObject:HitTest(x, y) end

---@class System.Windows.Forms.ToolStripArrowRenderEventArgs : System.EventArgs
---@field ArrowColor System.Drawing.Color
---@field ArrowRectangle System.Drawing.Rectangle
---@field Direction System.Windows.Forms.ArrowDirection
---@field Graphics System.Drawing.Graphics
---@field Item System.Windows.Forms.ToolStripItem
System.Windows.Forms.ToolStripArrowRenderEventArgs = {}
---@alias CS.System.Windows.Forms.ToolStripArrowRenderEventArgs System.Windows.Forms.ToolStripArrowRenderEventArgs
CS.System.Windows.Forms.ToolStripArrowRenderEventArgs = System.Windows.Forms.ToolStripArrowRenderEventArgs

---@param g System.Drawing.Graphics
---@param toolStripItem System.Windows.Forms.ToolStripItem
---@param arrowRectangle System.Drawing.Rectangle
---@param arrowColor System.Drawing.Color
---@param arrowDirection System.Windows.Forms.ArrowDirection
---@return System.Windows.Forms.ToolStripArrowRenderEventArgs
function System.Windows.Forms.ToolStripArrowRenderEventArgs.New(g, toolStripItem, arrowRectangle, arrowColor, arrowDirection) end

---@class System.Windows.Forms.ToolStripArrowRenderEventHandler : System.MulticastDelegate
System.Windows.Forms.ToolStripArrowRenderEventHandler = {}
---@alias CS.System.Windows.Forms.ToolStripArrowRenderEventHandler System.Windows.Forms.ToolStripArrowRenderEventHandler
CS.System.Windows.Forms.ToolStripArrowRenderEventHandler = System.Windows.Forms.ToolStripArrowRenderEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.ToolStripArrowRenderEventHandler
function System.Windows.Forms.ToolStripArrowRenderEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Windows.Forms.ToolStripArrowRenderEventArgs
function System.Windows.Forms.ToolStripArrowRenderEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Windows.Forms.ToolStripArrowRenderEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Windows.Forms.ToolStripArrowRenderEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Windows.Forms.ToolStripArrowRenderEventHandler:EndInvoke(result) end

---@class System.Windows.Forms.ToolStripButton : System.Windows.Forms.ToolStripItem
---@field AutoToolTip boolean
---@field CanSelect boolean
---@field Checked boolean
---@field CheckOnClick boolean
---@field CheckState System.Windows.Forms.CheckState
System.Windows.Forms.ToolStripButton = {}
---@alias CS.System.Windows.Forms.ToolStripButton System.Windows.Forms.ToolStripButton
CS.System.Windows.Forms.ToolStripButton = System.Windows.Forms.ToolStripButton

---@overload fun() : System.Windows.Forms.ToolStripButton
---@overload fun(image: System.Drawing.Image) : System.Windows.Forms.ToolStripButton
---@overload fun(text: string) : System.Windows.Forms.ToolStripButton
---@overload fun(text: string, image: System.Drawing.Image) : System.Windows.Forms.ToolStripButton
---@overload fun(text: string, image: System.Drawing.Image, onClick: System.EventHandler) : System.Windows.Forms.ToolStripButton
---@param text string
---@param image System.Drawing.Image
---@param onClick System.EventHandler
---@param name string
---@return System.Windows.Forms.ToolStripButton
function System.Windows.Forms.ToolStripButton.New(text, image, onClick, name) end
---@param constrainingSize System.Drawing.Size
---@return System.Drawing.Size
function System.Windows.Forms.ToolStripButton:GetPreferredSize(constrainingSize) end

---@class System.Windows.Forms.ToolStripComboBox : System.Windows.Forms.ToolStripControlHost
---@field AutoCompleteCustomSource System.Windows.Forms.AutoCompleteStringCollection
---@field AutoCompleteMode System.Windows.Forms.AutoCompleteMode
---@field AutoCompleteSource System.Windows.Forms.AutoCompleteSource
---@field BackgroundImage System.Drawing.Image
---@field BackgroundImageLayout System.Windows.Forms.ImageLayout
---@field ComboBox System.Windows.Forms.ComboBox
---@field DropDownHeight number
---@field DropDownStyle System.Windows.Forms.ComboBoxStyle
---@field DropDownWidth number
---@field DroppedDown boolean
---@field FlatStyle System.Windows.Forms.FlatStyle
---@field IntegralHeight boolean
---@field Items System.Windows.Forms.ComboBox.ObjectCollection
---@field MaxDropDownItems number
---@field MaxLength number
---@field SelectedIndex number
---@field SelectedItem System.Object
---@field SelectedText string
---@field SelectionLength number
---@field SelectionStart number
---@field Sorted boolean
System.Windows.Forms.ToolStripComboBox = {}
---@alias CS.System.Windows.Forms.ToolStripComboBox System.Windows.Forms.ToolStripComboBox
CS.System.Windows.Forms.ToolStripComboBox = System.Windows.Forms.ToolStripComboBox

---@overload fun() : System.Windows.Forms.ToolStripComboBox
---@overload fun(c: System.Windows.Forms.Control) : System.Windows.Forms.ToolStripComboBox
---@param name string
---@return System.Windows.Forms.ToolStripComboBox
function System.Windows.Forms.ToolStripComboBox.New(name) end
function System.Windows.Forms.ToolStripComboBox:BeginUpdate() end
function System.Windows.Forms.ToolStripComboBox:EndUpdate() end
---@overload fun(self: System.Windows.Forms.ToolStripComboBox, s: string) : number
---@param s string
---@param startIndex number
---@return number
function System.Windows.Forms.ToolStripComboBox:FindString(s, startIndex) end
---@overload fun(self: System.Windows.Forms.ToolStripComboBox, s: string) : number
---@param s string
---@param startIndex number
---@return number
function System.Windows.Forms.ToolStripComboBox:FindStringExact(s, startIndex) end
---@param index number
---@return number
function System.Windows.Forms.ToolStripComboBox:GetItemHeight(index) end
---@param constrainingSize System.Drawing.Size
---@return System.Drawing.Size
function System.Windows.Forms.ToolStripComboBox:GetPreferredSize(constrainingSize) end
---@param start number
---@param length number
function System.Windows.Forms.ToolStripComboBox:Select(start, length) end
function System.Windows.Forms.ToolStripComboBox:SelectAll() end
---@return string
function System.Windows.Forms.ToolStripComboBox:ToString() end

---@class System.Windows.Forms.ToolStripComboBox.ToolStripComboBoxControl : System.Windows.Forms.ComboBox
System.Windows.Forms.ToolStripComboBox.ToolStripComboBoxControl = {}
---@alias CS.System.Windows.Forms.ToolStripComboBox.ToolStripComboBoxControl System.Windows.Forms.ToolStripComboBox.ToolStripComboBoxControl
CS.System.Windows.Forms.ToolStripComboBox.ToolStripComboBoxControl = System.Windows.Forms.ToolStripComboBox.ToolStripComboBoxControl

---@return System.Windows.Forms.ToolStripComboBox.ToolStripComboBoxControl
function System.Windows.Forms.ToolStripComboBox.ToolStripComboBoxControl.New() end

---@class System.Windows.Forms.ToolStripContainer : System.Windows.Forms.ContainerControl
---@field AutoScroll boolean
---@field AutoScrollMargin System.Drawing.Size
---@field AutoScrollMinSize System.Drawing.Size
---@field BackColor System.Drawing.Color
---@field BackgroundImage System.Drawing.Image
---@field BackgroundImageLayout System.Windows.Forms.ImageLayout
---@field BottomToolStripPanel System.Windows.Forms.ToolStripPanel
---@field BottomToolStripPanelVisible boolean
---@field CausesValidation boolean
---@field ContentPanel System.Windows.Forms.ToolStripContentPanel
---@field ContextMenuStrip System.Windows.Forms.ContextMenuStrip
---@field Controls System.Windows.Forms.Control.ControlCollection
---@field Cursor System.Windows.Forms.Cursor
---@field ForeColor System.Drawing.Color
---@field LeftToolStripPanel System.Windows.Forms.ToolStripPanel
---@field LeftToolStripPanelVisible boolean
---@field RightToolStripPanel System.Windows.Forms.ToolStripPanel
---@field RightToolStripPanelVisible boolean
---@field TopToolStripPanel System.Windows.Forms.ToolStripPanel
---@field TopToolStripPanelVisible boolean
System.Windows.Forms.ToolStripContainer = {}
---@alias CS.System.Windows.Forms.ToolStripContainer System.Windows.Forms.ToolStripContainer
CS.System.Windows.Forms.ToolStripContainer = System.Windows.Forms.ToolStripContainer

---@return System.Windows.Forms.ToolStripContainer
function System.Windows.Forms.ToolStripContainer.New() end

---@class System.Windows.Forms.ToolStripContainer.ToolStripContainerTypedControlCollection : System.Windows.Forms.Control.ControlCollection
System.Windows.Forms.ToolStripContainer.ToolStripContainerTypedControlCollection = {}
---@alias CS.System.Windows.Forms.ToolStripContainer.ToolStripContainerTypedControlCollection System.Windows.Forms.ToolStripContainer.ToolStripContainerTypedControlCollection
CS.System.Windows.Forms.ToolStripContainer.ToolStripContainerTypedControlCollection = System.Windows.Forms.ToolStripContainer.ToolStripContainerTypedControlCollection

---@param owner System.Windows.Forms.Control
---@return System.Windows.Forms.ToolStripContainer.ToolStripContainerTypedControlCollection
function System.Windows.Forms.ToolStripContainer.ToolStripContainerTypedControlCollection.New(owner) end

---@class System.Windows.Forms.ToolStripContentPanel : System.Windows.Forms.Panel
---@field Anchor System.Windows.Forms.AnchorStyles
---@field AutoScroll boolean
---@field AutoScrollMargin System.Drawing.Size
---@field AutoScrollMinSize System.Drawing.Size
---@field AutoSize boolean
---@field AutoSizeMode System.Windows.Forms.AutoSizeMode
---@field BackColor System.Drawing.Color
---@field CausesValidation boolean
---@field Dock System.Windows.Forms.DockStyle
---@field Location System.Drawing.Point
---@field MaximumSize System.Drawing.Size
---@field MinimumSize System.Drawing.Size
---@field Name string
---@field Renderer System.Windows.Forms.ToolStripRenderer
---@field RenderMode System.Windows.Forms.ToolStripRenderMode
---@field TabIndex number
---@field TabStop boolean
System.Windows.Forms.ToolStripContentPanel = {}
---@alias CS.System.Windows.Forms.ToolStripContentPanel System.Windows.Forms.ToolStripContentPanel
CS.System.Windows.Forms.ToolStripContentPanel = System.Windows.Forms.ToolStripContentPanel

---@return System.Windows.Forms.ToolStripContentPanel
function System.Windows.Forms.ToolStripContentPanel.New() end

---@class System.Windows.Forms.ToolStripContentPanelRenderEventArgs : System.EventArgs
---@field Graphics System.Drawing.Graphics
---@field Handled boolean
---@field ToolStripContentPanel System.Windows.Forms.ToolStripContentPanel
System.Windows.Forms.ToolStripContentPanelRenderEventArgs = {}
---@alias CS.System.Windows.Forms.ToolStripContentPanelRenderEventArgs System.Windows.Forms.ToolStripContentPanelRenderEventArgs
CS.System.Windows.Forms.ToolStripContentPanelRenderEventArgs = System.Windows.Forms.ToolStripContentPanelRenderEventArgs

---@param g System.Drawing.Graphics
---@param contentPanel System.Windows.Forms.ToolStripContentPanel
---@return System.Windows.Forms.ToolStripContentPanelRenderEventArgs
function System.Windows.Forms.ToolStripContentPanelRenderEventArgs.New(g, contentPanel) end

---@class System.Windows.Forms.ToolStripContentPanelRenderEventHandler : System.MulticastDelegate
System.Windows.Forms.ToolStripContentPanelRenderEventHandler = {}
---@alias CS.System.Windows.Forms.ToolStripContentPanelRenderEventHandler System.Windows.Forms.ToolStripContentPanelRenderEventHandler
CS.System.Windows.Forms.ToolStripContentPanelRenderEventHandler = System.Windows.Forms.ToolStripContentPanelRenderEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.ToolStripContentPanelRenderEventHandler
function System.Windows.Forms.ToolStripContentPanelRenderEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Windows.Forms.ToolStripContentPanelRenderEventArgs
function System.Windows.Forms.ToolStripContentPanelRenderEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Windows.Forms.ToolStripContentPanelRenderEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Windows.Forms.ToolStripContentPanelRenderEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Windows.Forms.ToolStripContentPanelRenderEventHandler:EndInvoke(result) end

---@class System.Windows.Forms.ToolStripControlHost : System.Windows.Forms.ToolStripItem
---@field BackColor System.Drawing.Color
---@field BackgroundImage System.Drawing.Image
---@field BackgroundImageLayout System.Windows.Forms.ImageLayout
---@field CanSelect boolean
---@field CausesValidation boolean
---@field Control System.Windows.Forms.Control
---@field ControlAlign System.Drawing.ContentAlignment
---@field DisplayStyle System.Windows.Forms.ToolStripItemDisplayStyle
---@field DoubleClickEnabled boolean
---@field Enabled boolean
---@field Focused boolean
---@field Font System.Drawing.Font
---@field ForeColor System.Drawing.Color
---@field Image System.Drawing.Image
---@field ImageAlign System.Drawing.ContentAlignment
---@field ImageScaling System.Windows.Forms.ToolStripItemImageScaling
---@field ImageTransparentColor System.Drawing.Color
---@field RightToLeft System.Windows.Forms.RightToLeft
---@field RightToLeftAutoMirrorImage boolean
---@field Selected boolean
---@field Site System.ComponentModel.ISite
---@field Size System.Drawing.Size
---@field Text string
---@field TextAlign System.Drawing.ContentAlignment
---@field TextDirection System.Windows.Forms.ToolStripTextDirection
---@field TextImageRelation System.Windows.Forms.TextImageRelation
System.Windows.Forms.ToolStripControlHost = {}
---@alias CS.System.Windows.Forms.ToolStripControlHost System.Windows.Forms.ToolStripControlHost
CS.System.Windows.Forms.ToolStripControlHost = System.Windows.Forms.ToolStripControlHost

---@overload fun(c: System.Windows.Forms.Control) : System.Windows.Forms.ToolStripControlHost
---@param c System.Windows.Forms.Control
---@param name string
---@return System.Windows.Forms.ToolStripControlHost
function System.Windows.Forms.ToolStripControlHost.New(c, name) end
function System.Windows.Forms.ToolStripControlHost:Focus() end
---@param constrainingSize System.Drawing.Size
---@return System.Drawing.Size
function System.Windows.Forms.ToolStripControlHost:GetPreferredSize(constrainingSize) end
function System.Windows.Forms.ToolStripControlHost:ResetBackColor() end
function System.Windows.Forms.ToolStripControlHost:ResetForeColor() end

---@class System.Windows.Forms.ToolStripDropDown : System.Windows.Forms.ToolStrip
---@field AllowItemReorder boolean
---@field AllowTransparency boolean
---@field Anchor System.Windows.Forms.AnchorStyles
---@field AutoClose boolean
---@field AutoSize boolean
---@field CanOverflow boolean
---@field ContextMenu System.Windows.Forms.ContextMenu
---@field ContextMenuStrip System.Windows.Forms.ContextMenuStrip
---@field DefaultDropDownDirection System.Windows.Forms.ToolStripDropDownDirection
---@field Dock System.Windows.Forms.DockStyle
---@field DropShadowEnabled boolean
---@field Font System.Drawing.Font
---@field GripDisplayStyle System.Windows.Forms.ToolStripGripDisplayStyle
---@field GripMargin System.Windows.Forms.Padding
---@field GripRectangle System.Drawing.Rectangle
---@field GripStyle System.Windows.Forms.ToolStripGripStyle
---@field IsAutoGenerated boolean
---@field Location System.Drawing.Point
---@field Opacity number
---@field OverflowButton System.Windows.Forms.ToolStripOverflowButton
---@field OwnerItem System.Windows.Forms.ToolStripItem
---@field Region System.Drawing.Region
---@field RightToLeft System.Windows.Forms.RightToLeft
---@field Stretch boolean
---@field TabIndex number
---@field TextDirection System.Windows.Forms.ToolStripTextDirection
---@field TopLevel boolean
---@field Visible boolean
System.Windows.Forms.ToolStripDropDown = {}
---@alias CS.System.Windows.Forms.ToolStripDropDown System.Windows.Forms.ToolStripDropDown
CS.System.Windows.Forms.ToolStripDropDown = System.Windows.Forms.ToolStripDropDown

---@return System.Windows.Forms.ToolStripDropDown
function System.Windows.Forms.ToolStripDropDown.New() end
---@overload fun()
---@param reason System.Windows.Forms.ToolStripDropDownCloseReason
function System.Windows.Forms.ToolStripDropDown:Close(reason) end
---@overload fun()
---@overload fun(self: System.Windows.Forms.ToolStripDropDown, x: number, y: number)
---@overload fun(self: System.Windows.Forms.ToolStripDropDown, screenLocation: System.Drawing.Point)
---@overload fun(self: System.Windows.Forms.ToolStripDropDown, control: System.Windows.Forms.Control, x: number, y: number)
---@overload fun(self: System.Windows.Forms.ToolStripDropDown, control: System.Windows.Forms.Control, position: System.Drawing.Point)
---@overload fun(self: System.Windows.Forms.ToolStripDropDown, control: System.Windows.Forms.Control, position: System.Drawing.Point, direction: System.Windows.Forms.ToolStripDropDownDirection)
---@param position System.Drawing.Point
---@param direction System.Windows.Forms.ToolStripDropDownDirection
function System.Windows.Forms.ToolStripDropDown:Show(position, direction) end

---@class System.Windows.Forms.ToolStripDropDown.ToolStripDropDownAccessibleObject : System.Windows.Forms.ToolStrip.ToolStripAccessibleObject
---@field Name string
---@field Role System.Windows.Forms.AccessibleRole
System.Windows.Forms.ToolStripDropDown.ToolStripDropDownAccessibleObject = {}
---@alias CS.System.Windows.Forms.ToolStripDropDown.ToolStripDropDownAccessibleObject System.Windows.Forms.ToolStripDropDown.ToolStripDropDownAccessibleObject
CS.System.Windows.Forms.ToolStripDropDown.ToolStripDropDownAccessibleObject = System.Windows.Forms.ToolStripDropDown.ToolStripDropDownAccessibleObject

---@param owner System.Windows.Forms.ToolStripDropDown
---@return System.Windows.Forms.ToolStripDropDown.ToolStripDropDownAccessibleObject
function System.Windows.Forms.ToolStripDropDown.ToolStripDropDownAccessibleObject.New(owner) end

---@class System.Windows.Forms.ToolStripDropDownButton : System.Windows.Forms.ToolStripDropDownItem
---@field AutoToolTip boolean
---@field ShowDropDownArrow boolean
System.Windows.Forms.ToolStripDropDownButton = {}
---@alias CS.System.Windows.Forms.ToolStripDropDownButton System.Windows.Forms.ToolStripDropDownButton
CS.System.Windows.Forms.ToolStripDropDownButton = System.Windows.Forms.ToolStripDropDownButton

---@overload fun() : System.Windows.Forms.ToolStripDropDownButton
---@overload fun(image: System.Drawing.Image) : System.Windows.Forms.ToolStripDropDownButton
---@overload fun(text: string) : System.Windows.Forms.ToolStripDropDownButton
---@overload fun(text: string, image: System.Drawing.Image) : System.Windows.Forms.ToolStripDropDownButton
---@overload fun(text: string, image: System.Drawing.Image, onClick: System.EventHandler) : System.Windows.Forms.ToolStripDropDownButton
---@overload fun(text: string, image: System.Drawing.Image, dropDownItems: System.Windows.Forms.ToolStripItem[]) : System.Windows.Forms.ToolStripDropDownButton
---@param text string
---@param image System.Drawing.Image
---@param onClick System.EventHandler
---@param name string
---@return System.Windows.Forms.ToolStripDropDownButton
function System.Windows.Forms.ToolStripDropDownButton.New(text, image, onClick, name) end

---@class System.Windows.Forms.ToolStripDropDownCloseReason
---@field AppFocusChange System.Windows.Forms.ToolStripDropDownCloseReason
---@field AppClicked System.Windows.Forms.ToolStripDropDownCloseReason
---@field ItemClicked System.Windows.Forms.ToolStripDropDownCloseReason
---@field Keyboard System.Windows.Forms.ToolStripDropDownCloseReason
---@field CloseCalled System.Windows.Forms.ToolStripDropDownCloseReason
System.Windows.Forms.ToolStripDropDownCloseReason = {}
---@alias CS.System.Windows.Forms.ToolStripDropDownCloseReason System.Windows.Forms.ToolStripDropDownCloseReason
CS.System.Windows.Forms.ToolStripDropDownCloseReason = System.Windows.Forms.ToolStripDropDownCloseReason


---@class System.Windows.Forms.ToolStripDropDownClosedEventArgs : System.EventArgs
---@field CloseReason System.Windows.Forms.ToolStripDropDownCloseReason
System.Windows.Forms.ToolStripDropDownClosedEventArgs = {}
---@alias CS.System.Windows.Forms.ToolStripDropDownClosedEventArgs System.Windows.Forms.ToolStripDropDownClosedEventArgs
CS.System.Windows.Forms.ToolStripDropDownClosedEventArgs = System.Windows.Forms.ToolStripDropDownClosedEventArgs

---@param reason System.Windows.Forms.ToolStripDropDownCloseReason
---@return System.Windows.Forms.ToolStripDropDownClosedEventArgs
function System.Windows.Forms.ToolStripDropDownClosedEventArgs.New(reason) end

---@class System.Windows.Forms.ToolStripDropDownClosedEventHandler : System.MulticastDelegate
System.Windows.Forms.ToolStripDropDownClosedEventHandler = {}
---@alias CS.System.Windows.Forms.ToolStripDropDownClosedEventHandler System.Windows.Forms.ToolStripDropDownClosedEventHandler
CS.System.Windows.Forms.ToolStripDropDownClosedEventHandler = System.Windows.Forms.ToolStripDropDownClosedEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.ToolStripDropDownClosedEventHandler
function System.Windows.Forms.ToolStripDropDownClosedEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Windows.Forms.ToolStripDropDownClosedEventArgs
function System.Windows.Forms.ToolStripDropDownClosedEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Windows.Forms.ToolStripDropDownClosedEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Windows.Forms.ToolStripDropDownClosedEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Windows.Forms.ToolStripDropDownClosedEventHandler:EndInvoke(result) end

---@class System.Windows.Forms.ToolStripDropDownClosingEventArgs : System.ComponentModel.CancelEventArgs
---@field CloseReason System.Windows.Forms.ToolStripDropDownCloseReason
System.Windows.Forms.ToolStripDropDownClosingEventArgs = {}
---@alias CS.System.Windows.Forms.ToolStripDropDownClosingEventArgs System.Windows.Forms.ToolStripDropDownClosingEventArgs
CS.System.Windows.Forms.ToolStripDropDownClosingEventArgs = System.Windows.Forms.ToolStripDropDownClosingEventArgs

---@param reason System.Windows.Forms.ToolStripDropDownCloseReason
---@return System.Windows.Forms.ToolStripDropDownClosingEventArgs
function System.Windows.Forms.ToolStripDropDownClosingEventArgs.New(reason) end

---@class System.Windows.Forms.ToolStripDropDownClosingEventHandler : System.MulticastDelegate
System.Windows.Forms.ToolStripDropDownClosingEventHandler = {}
---@alias CS.System.Windows.Forms.ToolStripDropDownClosingEventHandler System.Windows.Forms.ToolStripDropDownClosingEventHandler
CS.System.Windows.Forms.ToolStripDropDownClosingEventHandler = System.Windows.Forms.ToolStripDropDownClosingEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.ToolStripDropDownClosingEventHandler
function System.Windows.Forms.ToolStripDropDownClosingEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Windows.Forms.ToolStripDropDownClosingEventArgs
function System.Windows.Forms.ToolStripDropDownClosingEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Windows.Forms.ToolStripDropDownClosingEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Windows.Forms.ToolStripDropDownClosingEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Windows.Forms.ToolStripDropDownClosingEventHandler:EndInvoke(result) end

---@class System.Windows.Forms.ToolStripDropDownDirection
---@field AboveLeft System.Windows.Forms.ToolStripDropDownDirection
---@field AboveRight System.Windows.Forms.ToolStripDropDownDirection
---@field BelowLeft System.Windows.Forms.ToolStripDropDownDirection
---@field BelowRight System.Windows.Forms.ToolStripDropDownDirection
---@field Left System.Windows.Forms.ToolStripDropDownDirection
---@field Right System.Windows.Forms.ToolStripDropDownDirection
---@field Default System.Windows.Forms.ToolStripDropDownDirection
System.Windows.Forms.ToolStripDropDownDirection = {}
---@alias CS.System.Windows.Forms.ToolStripDropDownDirection System.Windows.Forms.ToolStripDropDownDirection
CS.System.Windows.Forms.ToolStripDropDownDirection = System.Windows.Forms.ToolStripDropDownDirection


---@class System.Windows.Forms.ToolStripDropDownItem : System.Windows.Forms.ToolStripItem
---@field DropDown System.Windows.Forms.ToolStripDropDown
---@field DropDownDirection System.Windows.Forms.ToolStripDropDownDirection
---@field DropDownItems System.Windows.Forms.ToolStripItemCollection
---@field HasDropDownItems boolean
---@field Pressed boolean
---@field HasDropDown boolean
System.Windows.Forms.ToolStripDropDownItem = {}
---@alias CS.System.Windows.Forms.ToolStripDropDownItem System.Windows.Forms.ToolStripDropDownItem
CS.System.Windows.Forms.ToolStripDropDownItem = System.Windows.Forms.ToolStripDropDownItem

function System.Windows.Forms.ToolStripDropDownItem:HideDropDown() end
function System.Windows.Forms.ToolStripDropDownItem:ShowDropDown() end

---@class System.Windows.Forms.ToolStripDropDownItemAccessibleObject : System.Windows.Forms.ToolStripItem.ToolStripItemAccessibleObject
---@field Role System.Windows.Forms.AccessibleRole
System.Windows.Forms.ToolStripDropDownItemAccessibleObject = {}
---@alias CS.System.Windows.Forms.ToolStripDropDownItemAccessibleObject System.Windows.Forms.ToolStripDropDownItemAccessibleObject
CS.System.Windows.Forms.ToolStripDropDownItemAccessibleObject = System.Windows.Forms.ToolStripDropDownItemAccessibleObject

---@param item System.Windows.Forms.ToolStripDropDownItem
---@return System.Windows.Forms.ToolStripDropDownItemAccessibleObject
function System.Windows.Forms.ToolStripDropDownItemAccessibleObject.New(item) end
function System.Windows.Forms.ToolStripDropDownItemAccessibleObject:DoDefaultAction() end
---@param index number
---@return System.Windows.Forms.AccessibleObject
function System.Windows.Forms.ToolStripDropDownItemAccessibleObject:GetChild(index) end
---@return number
function System.Windows.Forms.ToolStripDropDownItemAccessibleObject:GetChildCount() end

---@class System.Windows.Forms.ToolStripDropDownMenu : System.Windows.Forms.ToolStripDropDown
---@field DisplayRectangle System.Drawing.Rectangle
---@field LayoutEngine System.Windows.Forms.Layout.LayoutEngine
---@field LayoutStyle System.Windows.Forms.ToolStripLayoutStyle
---@field ShowCheckMargin boolean
---@field ShowImageMargin boolean
System.Windows.Forms.ToolStripDropDownMenu = {}
---@alias CS.System.Windows.Forms.ToolStripDropDownMenu System.Windows.Forms.ToolStripDropDownMenu
CS.System.Windows.Forms.ToolStripDropDownMenu = System.Windows.Forms.ToolStripDropDownMenu

---@return System.Windows.Forms.ToolStripDropDownMenu
function System.Windows.Forms.ToolStripDropDownMenu.New() end

---@class System.Windows.Forms.ToolStripGripDisplayStyle
---@field Horizontal System.Windows.Forms.ToolStripGripDisplayStyle
---@field Vertical System.Windows.Forms.ToolStripGripDisplayStyle
System.Windows.Forms.ToolStripGripDisplayStyle = {}
---@alias CS.System.Windows.Forms.ToolStripGripDisplayStyle System.Windows.Forms.ToolStripGripDisplayStyle
CS.System.Windows.Forms.ToolStripGripDisplayStyle = System.Windows.Forms.ToolStripGripDisplayStyle


---@class System.Windows.Forms.ToolStripGripRenderEventArgs : System.Windows.Forms.ToolStripRenderEventArgs
---@field GripBounds System.Drawing.Rectangle
---@field GripDisplayStyle System.Windows.Forms.ToolStripGripDisplayStyle
---@field GripStyle System.Windows.Forms.ToolStripGripStyle
System.Windows.Forms.ToolStripGripRenderEventArgs = {}
---@alias CS.System.Windows.Forms.ToolStripGripRenderEventArgs System.Windows.Forms.ToolStripGripRenderEventArgs
CS.System.Windows.Forms.ToolStripGripRenderEventArgs = System.Windows.Forms.ToolStripGripRenderEventArgs

---@param g System.Drawing.Graphics
---@param toolStrip System.Windows.Forms.ToolStrip
---@return System.Windows.Forms.ToolStripGripRenderEventArgs
function System.Windows.Forms.ToolStripGripRenderEventArgs.New(g, toolStrip) end

---@class System.Windows.Forms.ToolStripGripRenderEventHandler : System.MulticastDelegate
System.Windows.Forms.ToolStripGripRenderEventHandler = {}
---@alias CS.System.Windows.Forms.ToolStripGripRenderEventHandler System.Windows.Forms.ToolStripGripRenderEventHandler
CS.System.Windows.Forms.ToolStripGripRenderEventHandler = System.Windows.Forms.ToolStripGripRenderEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.ToolStripGripRenderEventHandler
function System.Windows.Forms.ToolStripGripRenderEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Windows.Forms.ToolStripGripRenderEventArgs
function System.Windows.Forms.ToolStripGripRenderEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Windows.Forms.ToolStripGripRenderEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Windows.Forms.ToolStripGripRenderEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Windows.Forms.ToolStripGripRenderEventHandler:EndInvoke(result) end

---@class System.Windows.Forms.ToolStripGripStyle
---@field Hidden System.Windows.Forms.ToolStripGripStyle
---@field Visible System.Windows.Forms.ToolStripGripStyle
System.Windows.Forms.ToolStripGripStyle = {}
---@alias CS.System.Windows.Forms.ToolStripGripStyle System.Windows.Forms.ToolStripGripStyle
CS.System.Windows.Forms.ToolStripGripStyle = System.Windows.Forms.ToolStripGripStyle


---@class System.Windows.Forms.ToolStripItem : System.ComponentModel.Component
---@field AccessibilityObject System.Windows.Forms.AccessibleObject
---@field AccessibleDefaultActionDescription string
---@field AccessibleDescription string
---@field AccessibleName string
---@field AccessibleRole System.Windows.Forms.AccessibleRole
---@field Alignment System.Windows.Forms.ToolStripItemAlignment
---@field AllowDrop boolean
---@field Anchor System.Windows.Forms.AnchorStyles
---@field AutoSize boolean
---@field AutoToolTip boolean
---@field Available boolean
---@field BackColor System.Drawing.Color
---@field BackgroundImage System.Drawing.Image
---@field BackgroundImageLayout System.Windows.Forms.ImageLayout
---@field Bounds System.Drawing.Rectangle
---@field CanSelect boolean
---@field ContentRectangle System.Drawing.Rectangle
---@field DisplayStyle System.Windows.Forms.ToolStripItemDisplayStyle
---@field IsDisposed boolean
---@field Dock System.Windows.Forms.DockStyle
---@field DoubleClickEnabled boolean
---@field Enabled boolean
---@field Font System.Drawing.Font
---@field ForeColor System.Drawing.Color
---@field Height number
---@field Image System.Drawing.Image
---@field ImageAlign System.Drawing.ContentAlignment
---@field ImageIndex number
---@field ImageKey string
---@field ImageScaling System.Windows.Forms.ToolStripItemImageScaling
---@field ImageTransparentColor System.Drawing.Color
---@field IsOnDropDown boolean
---@field IsOnOverflow boolean
---@field Margin System.Windows.Forms.Padding
---@field MergeAction System.Windows.Forms.MergeAction
---@field MergeIndex number
---@field Name string
---@field Overflow System.Windows.Forms.ToolStripItemOverflow
---@field Owner System.Windows.Forms.ToolStrip
---@field OwnerItem System.Windows.Forms.ToolStripItem
---@field Padding System.Windows.Forms.Padding
---@field Placement System.Windows.Forms.ToolStripItemPlacement
---@field Pressed boolean
---@field RightToLeft System.Windows.Forms.RightToLeft
---@field RightToLeftAutoMirrorImage boolean
---@field Selected boolean
---@field Size System.Drawing.Size
---@field Tag System.Object
---@field Text string
---@field TextAlign System.Drawing.ContentAlignment
---@field TextDirection System.Windows.Forms.ToolStripTextDirection
---@field TextImageRelation System.Windows.Forms.TextImageRelation
---@field ToolTipText string
---@field Visible boolean
---@field Width number
System.Windows.Forms.ToolStripItem = {}
---@alias CS.System.Windows.Forms.ToolStripItem System.Windows.Forms.ToolStripItem
CS.System.Windows.Forms.ToolStripItem = System.Windows.Forms.ToolStripItem

---@param data System.Object
---@param allowedEffects System.Windows.Forms.DragDropEffects
---@return System.Windows.Forms.DragDropEffects
function System.Windows.Forms.ToolStripItem:DoDragDrop(data, allowedEffects) end
---@return System.Windows.Forms.ToolStrip
function System.Windows.Forms.ToolStripItem:GetCurrentParent() end
---@param constrainingSize System.Drawing.Size
---@return System.Drawing.Size
function System.Windows.Forms.ToolStripItem:GetPreferredSize(constrainingSize) end
---@overload fun()
---@param r System.Drawing.Rectangle
function System.Windows.Forms.ToolStripItem:Invalidate(r) end
function System.Windows.Forms.ToolStripItem:PerformClick() end
function System.Windows.Forms.ToolStripItem:ResetBackColor() end
function System.Windows.Forms.ToolStripItem:ResetDisplayStyle() end
function System.Windows.Forms.ToolStripItem:ResetFont() end
function System.Windows.Forms.ToolStripItem:ResetForeColor() end
function System.Windows.Forms.ToolStripItem:ResetImage() end
function System.Windows.Forms.ToolStripItem:ResetMargin() end
function System.Windows.Forms.ToolStripItem:ResetPadding() end
function System.Windows.Forms.ToolStripItem:ResetRightToLeft() end
function System.Windows.Forms.ToolStripItem:ResetTextDirection() end
function System.Windows.Forms.ToolStripItem:Select() end
---@return string
function System.Windows.Forms.ToolStripItem:ToString() end

---@class System.Windows.Forms.ToolStripItem.ToolStripItemAccessibleObject : System.Windows.Forms.AccessibleObject
---@field Bounds System.Drawing.Rectangle
---@field DefaultAction string
---@field Description string
---@field Help string
---@field KeyboardShortcut string
---@field Name string
---@field Parent System.Windows.Forms.AccessibleObject
---@field Role System.Windows.Forms.AccessibleRole
---@field State System.Windows.Forms.AccessibleStates
System.Windows.Forms.ToolStripItem.ToolStripItemAccessibleObject = {}
---@alias CS.System.Windows.Forms.ToolStripItem.ToolStripItemAccessibleObject System.Windows.Forms.ToolStripItem.ToolStripItemAccessibleObject
CS.System.Windows.Forms.ToolStripItem.ToolStripItemAccessibleObject = System.Windows.Forms.ToolStripItem.ToolStripItemAccessibleObject

---@param ownerItem System.Windows.Forms.ToolStripItem
---@return System.Windows.Forms.ToolStripItem.ToolStripItemAccessibleObject
function System.Windows.Forms.ToolStripItem.ToolStripItemAccessibleObject.New(ownerItem) end
---@param state System.Windows.Forms.AccessibleStates
function System.Windows.Forms.ToolStripItem.ToolStripItemAccessibleObject:AddState(state) end
function System.Windows.Forms.ToolStripItem.ToolStripItemAccessibleObject:DoDefaultAction() end
---@param out_fileName string
---@return number,string
function System.Windows.Forms.ToolStripItem.ToolStripItemAccessibleObject:GetHelpTopic(out_fileName) end
---@param navigationDirection System.Windows.Forms.AccessibleNavigation
---@return System.Windows.Forms.AccessibleObject
function System.Windows.Forms.ToolStripItem.ToolStripItemAccessibleObject:Navigate(navigationDirection) end
---@return string
function System.Windows.Forms.ToolStripItem.ToolStripItemAccessibleObject:ToString() end

---@class System.Windows.Forms.NoneExcludedImageIndexConverter : System.Windows.Forms.ImageIndexConverter
System.Windows.Forms.NoneExcludedImageIndexConverter = {}
---@alias CS.System.Windows.Forms.NoneExcludedImageIndexConverter System.Windows.Forms.NoneExcludedImageIndexConverter
CS.System.Windows.Forms.NoneExcludedImageIndexConverter = System.Windows.Forms.NoneExcludedImageIndexConverter

---@return System.Windows.Forms.NoneExcludedImageIndexConverter
function System.Windows.Forms.NoneExcludedImageIndexConverter.New() end

---@class System.Windows.Forms.ToolStripItemAlignment
---@field Left System.Windows.Forms.ToolStripItemAlignment
---@field Right System.Windows.Forms.ToolStripItemAlignment
System.Windows.Forms.ToolStripItemAlignment = {}
---@alias CS.System.Windows.Forms.ToolStripItemAlignment System.Windows.Forms.ToolStripItemAlignment
CS.System.Windows.Forms.ToolStripItemAlignment = System.Windows.Forms.ToolStripItemAlignment


---@class System.Windows.Forms.ToolStripItemClickedEventArgs : System.EventArgs
---@field ClickedItem System.Windows.Forms.ToolStripItem
System.Windows.Forms.ToolStripItemClickedEventArgs = {}
---@alias CS.System.Windows.Forms.ToolStripItemClickedEventArgs System.Windows.Forms.ToolStripItemClickedEventArgs
CS.System.Windows.Forms.ToolStripItemClickedEventArgs = System.Windows.Forms.ToolStripItemClickedEventArgs

---@param clickedItem System.Windows.Forms.ToolStripItem
---@return System.Windows.Forms.ToolStripItemClickedEventArgs
function System.Windows.Forms.ToolStripItemClickedEventArgs.New(clickedItem) end

---@class System.Windows.Forms.ToolStripItemClickedEventHandler : System.MulticastDelegate
System.Windows.Forms.ToolStripItemClickedEventHandler = {}
---@alias CS.System.Windows.Forms.ToolStripItemClickedEventHandler System.Windows.Forms.ToolStripItemClickedEventHandler
CS.System.Windows.Forms.ToolStripItemClickedEventHandler = System.Windows.Forms.ToolStripItemClickedEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.ToolStripItemClickedEventHandler
function System.Windows.Forms.ToolStripItemClickedEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Windows.Forms.ToolStripItemClickedEventArgs
function System.Windows.Forms.ToolStripItemClickedEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Windows.Forms.ToolStripItemClickedEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Windows.Forms.ToolStripItemClickedEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Windows.Forms.ToolStripItemClickedEventHandler:EndInvoke(result) end

---@class System.Windows.Forms.ToolStripItemCollection : System.Windows.Forms.Layout.ArrangedElementCollection
---@field IsReadOnly boolean
---@field Item System.Windows.Forms.ToolStripItem
---@field Item System.Windows.Forms.ToolStripItem
System.Windows.Forms.ToolStripItemCollection = {}
---@alias CS.System.Windows.Forms.ToolStripItemCollection System.Windows.Forms.ToolStripItemCollection
CS.System.Windows.Forms.ToolStripItemCollection = System.Windows.Forms.ToolStripItemCollection

---@param owner System.Windows.Forms.ToolStrip
---@param value System.Windows.Forms.ToolStripItem[]
---@return System.Windows.Forms.ToolStripItemCollection
function System.Windows.Forms.ToolStripItemCollection.New(owner, value) end
---@overload fun(self: System.Windows.Forms.ToolStripItemCollection, image: System.Drawing.Image) : System.Windows.Forms.ToolStripItem
---@overload fun(self: System.Windows.Forms.ToolStripItemCollection, text: string) : System.Windows.Forms.ToolStripItem
---@overload fun(self: System.Windows.Forms.ToolStripItemCollection, value: System.Windows.Forms.ToolStripItem) : number
---@overload fun(self: System.Windows.Forms.ToolStripItemCollection, text: string, image: System.Drawing.Image) : System.Windows.Forms.ToolStripItem
---@param text string
---@param image System.Drawing.Image
---@param onClick System.EventHandler
---@return System.Windows.Forms.ToolStripItem
function System.Windows.Forms.ToolStripItemCollection:Add(text, image, onClick) end
---@overload fun(self: System.Windows.Forms.ToolStripItemCollection, toolStripItems: System.Windows.Forms.ToolStripItem[])
---@param toolStripItems System.Windows.Forms.ToolStripItemCollection
function System.Windows.Forms.ToolStripItemCollection:AddRange(toolStripItems) end
function System.Windows.Forms.ToolStripItemCollection:Clear() end
---@param value System.Windows.Forms.ToolStripItem
---@return boolean
function System.Windows.Forms.ToolStripItemCollection:Contains(value) end
---@param key string
---@return boolean
function System.Windows.Forms.ToolStripItemCollection:ContainsKey(key) end
---@param array System.Windows.Forms.ToolStripItem[]
---@param index number
function System.Windows.Forms.ToolStripItemCollection:CopyTo(array, index) end
---@param key string
---@param searchAllChildren boolean
---@return System.Windows.Forms.ToolStripItem[]
function System.Windows.Forms.ToolStripItemCollection:Find(key, searchAllChildren) end
---@param value System.Windows.Forms.ToolStripItem
---@return number
function System.Windows.Forms.ToolStripItemCollection:IndexOf(value) end
---@param key string
---@return number
function System.Windows.Forms.ToolStripItemCollection:IndexOfKey(key) end
---@param index number
---@param value System.Windows.Forms.ToolStripItem
function System.Windows.Forms.ToolStripItemCollection:Insert(index, value) end
---@param value System.Windows.Forms.ToolStripItem
function System.Windows.Forms.ToolStripItemCollection:Remove(value) end
---@param index number
function System.Windows.Forms.ToolStripItemCollection:RemoveAt(index) end
---@param key string
function System.Windows.Forms.ToolStripItemCollection:RemoveByKey(key) end

---@class System.Windows.Forms.ToolStripItemDisplayStyle
---@field None System.Windows.Forms.ToolStripItemDisplayStyle
---@field Text System.Windows.Forms.ToolStripItemDisplayStyle
---@field Image System.Windows.Forms.ToolStripItemDisplayStyle
---@field ImageAndText System.Windows.Forms.ToolStripItemDisplayStyle
System.Windows.Forms.ToolStripItemDisplayStyle = {}
---@alias CS.System.Windows.Forms.ToolStripItemDisplayStyle System.Windows.Forms.ToolStripItemDisplayStyle
CS.System.Windows.Forms.ToolStripItemDisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle


---@class System.Windows.Forms.ToolStripItemEventArgs : System.EventArgs
---@field Item System.Windows.Forms.ToolStripItem
System.Windows.Forms.ToolStripItemEventArgs = {}
---@alias CS.System.Windows.Forms.ToolStripItemEventArgs System.Windows.Forms.ToolStripItemEventArgs
CS.System.Windows.Forms.ToolStripItemEventArgs = System.Windows.Forms.ToolStripItemEventArgs

---@param item System.Windows.Forms.ToolStripItem
---@return System.Windows.Forms.ToolStripItemEventArgs
function System.Windows.Forms.ToolStripItemEventArgs.New(item) end

---@class System.Windows.Forms.ToolStripItemEventHandler : System.MulticastDelegate
System.Windows.Forms.ToolStripItemEventHandler = {}
---@alias CS.System.Windows.Forms.ToolStripItemEventHandler System.Windows.Forms.ToolStripItemEventHandler
CS.System.Windows.Forms.ToolStripItemEventHandler = System.Windows.Forms.ToolStripItemEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.ToolStripItemEventHandler
function System.Windows.Forms.ToolStripItemEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Windows.Forms.ToolStripItemEventArgs
function System.Windows.Forms.ToolStripItemEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Windows.Forms.ToolStripItemEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Windows.Forms.ToolStripItemEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Windows.Forms.ToolStripItemEventHandler:EndInvoke(result) end

---@class System.Windows.Forms.ToolStripItemEventType
---@field MouseDown System.Windows.Forms.ToolStripItemEventType
---@field MouseEnter System.Windows.Forms.ToolStripItemEventType
---@field MouseHover System.Windows.Forms.ToolStripItemEventType
---@field MouseLeave System.Windows.Forms.ToolStripItemEventType
---@field MouseMove System.Windows.Forms.ToolStripItemEventType
---@field MouseUp System.Windows.Forms.ToolStripItemEventType
---@field Paint System.Windows.Forms.ToolStripItemEventType
---@field Click System.Windows.Forms.ToolStripItemEventType
System.Windows.Forms.ToolStripItemEventType = {}
---@alias CS.System.Windows.Forms.ToolStripItemEventType System.Windows.Forms.ToolStripItemEventType
CS.System.Windows.Forms.ToolStripItemEventType = System.Windows.Forms.ToolStripItemEventType


---@class System.Windows.Forms.ToolStripItemImageRenderEventArgs : System.Windows.Forms.ToolStripItemRenderEventArgs
---@field Image System.Drawing.Image
---@field ImageRectangle System.Drawing.Rectangle
System.Windows.Forms.ToolStripItemImageRenderEventArgs = {}
---@alias CS.System.Windows.Forms.ToolStripItemImageRenderEventArgs System.Windows.Forms.ToolStripItemImageRenderEventArgs
CS.System.Windows.Forms.ToolStripItemImageRenderEventArgs = System.Windows.Forms.ToolStripItemImageRenderEventArgs

---@overload fun(g: System.Drawing.Graphics, item: System.Windows.Forms.ToolStripItem, imageRectangle: System.Drawing.Rectangle) : System.Windows.Forms.ToolStripItemImageRenderEventArgs
---@param g System.Drawing.Graphics
---@param item System.Windows.Forms.ToolStripItem
---@param image System.Drawing.Image
---@param imageRectangle System.Drawing.Rectangle
---@return System.Windows.Forms.ToolStripItemImageRenderEventArgs
function System.Windows.Forms.ToolStripItemImageRenderEventArgs.New(g, item, image, imageRectangle) end

---@class System.Windows.Forms.ToolStripItemImageRenderEventHandler : System.MulticastDelegate
System.Windows.Forms.ToolStripItemImageRenderEventHandler = {}
---@alias CS.System.Windows.Forms.ToolStripItemImageRenderEventHandler System.Windows.Forms.ToolStripItemImageRenderEventHandler
CS.System.Windows.Forms.ToolStripItemImageRenderEventHandler = System.Windows.Forms.ToolStripItemImageRenderEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.ToolStripItemImageRenderEventHandler
function System.Windows.Forms.ToolStripItemImageRenderEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Windows.Forms.ToolStripItemImageRenderEventArgs
function System.Windows.Forms.ToolStripItemImageRenderEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Windows.Forms.ToolStripItemImageRenderEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Windows.Forms.ToolStripItemImageRenderEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Windows.Forms.ToolStripItemImageRenderEventHandler:EndInvoke(result) end

---@class System.Windows.Forms.ToolStripItemImageScaling
---@field None System.Windows.Forms.ToolStripItemImageScaling
---@field SizeToFit System.Windows.Forms.ToolStripItemImageScaling
System.Windows.Forms.ToolStripItemImageScaling = {}
---@alias CS.System.Windows.Forms.ToolStripItemImageScaling System.Windows.Forms.ToolStripItemImageScaling
CS.System.Windows.Forms.ToolStripItemImageScaling = System.Windows.Forms.ToolStripItemImageScaling


---@class System.Windows.Forms.ToolStripItemOverflow
---@field Never System.Windows.Forms.ToolStripItemOverflow
---@field Always System.Windows.Forms.ToolStripItemOverflow
---@field AsNeeded System.Windows.Forms.ToolStripItemOverflow
System.Windows.Forms.ToolStripItemOverflow = {}
---@alias CS.System.Windows.Forms.ToolStripItemOverflow System.Windows.Forms.ToolStripItemOverflow
CS.System.Windows.Forms.ToolStripItemOverflow = System.Windows.Forms.ToolStripItemOverflow


---@class System.Windows.Forms.ToolStripItemPlacement
---@field Main System.Windows.Forms.ToolStripItemPlacement
---@field Overflow System.Windows.Forms.ToolStripItemPlacement
---@field None System.Windows.Forms.ToolStripItemPlacement
System.Windows.Forms.ToolStripItemPlacement = {}
---@alias CS.System.Windows.Forms.ToolStripItemPlacement System.Windows.Forms.ToolStripItemPlacement
CS.System.Windows.Forms.ToolStripItemPlacement = System.Windows.Forms.ToolStripItemPlacement


---@class System.Windows.Forms.ToolStripItemRenderEventArgs : System.EventArgs
---@field Graphics System.Drawing.Graphics
---@field Item System.Windows.Forms.ToolStripItem
---@field ToolStrip System.Windows.Forms.ToolStrip
System.Windows.Forms.ToolStripItemRenderEventArgs = {}
---@alias CS.System.Windows.Forms.ToolStripItemRenderEventArgs System.Windows.Forms.ToolStripItemRenderEventArgs
CS.System.Windows.Forms.ToolStripItemRenderEventArgs = System.Windows.Forms.ToolStripItemRenderEventArgs

---@param g System.Drawing.Graphics
---@param item System.Windows.Forms.ToolStripItem
---@return System.Windows.Forms.ToolStripItemRenderEventArgs
function System.Windows.Forms.ToolStripItemRenderEventArgs.New(g, item) end

---@class System.Windows.Forms.ToolStripItemRenderEventHandler : System.MulticastDelegate
System.Windows.Forms.ToolStripItemRenderEventHandler = {}
---@alias CS.System.Windows.Forms.ToolStripItemRenderEventHandler System.Windows.Forms.ToolStripItemRenderEventHandler
CS.System.Windows.Forms.ToolStripItemRenderEventHandler = System.Windows.Forms.ToolStripItemRenderEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.ToolStripItemRenderEventHandler
function System.Windows.Forms.ToolStripItemRenderEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Windows.Forms.ToolStripItemRenderEventArgs
function System.Windows.Forms.ToolStripItemRenderEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Windows.Forms.ToolStripItemRenderEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Windows.Forms.ToolStripItemRenderEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Windows.Forms.ToolStripItemRenderEventHandler:EndInvoke(result) end

---@class System.Windows.Forms.ToolStripItemTextRenderEventArgs : System.Windows.Forms.ToolStripItemRenderEventArgs
---@field Text string
---@field TextColor System.Drawing.Color
---@field TextDirection System.Windows.Forms.ToolStripTextDirection
---@field TextFont System.Drawing.Font
---@field TextFormat System.Windows.Forms.TextFormatFlags
---@field TextRectangle System.Drawing.Rectangle
System.Windows.Forms.ToolStripItemTextRenderEventArgs = {}
---@alias CS.System.Windows.Forms.ToolStripItemTextRenderEventArgs System.Windows.Forms.ToolStripItemTextRenderEventArgs
CS.System.Windows.Forms.ToolStripItemTextRenderEventArgs = System.Windows.Forms.ToolStripItemTextRenderEventArgs

---@overload fun(g: System.Drawing.Graphics, item: System.Windows.Forms.ToolStripItem, text: string, textRectangle: System.Drawing.Rectangle, textColor: System.Drawing.Color, textFont: System.Drawing.Font, textAlign: System.Drawing.ContentAlignment) : System.Windows.Forms.ToolStripItemTextRenderEventArgs
---@param g System.Drawing.Graphics
---@param item System.Windows.Forms.ToolStripItem
---@param text string
---@param textRectangle System.Drawing.Rectangle
---@param textColor System.Drawing.Color
---@param textFont System.Drawing.Font
---@param format System.Windows.Forms.TextFormatFlags
---@return System.Windows.Forms.ToolStripItemTextRenderEventArgs
function System.Windows.Forms.ToolStripItemTextRenderEventArgs.New(g, item, text, textRectangle, textColor, textFont, format) end

---@class System.Windows.Forms.ToolStripItemTextRenderEventHandler : System.MulticastDelegate
System.Windows.Forms.ToolStripItemTextRenderEventHandler = {}
---@alias CS.System.Windows.Forms.ToolStripItemTextRenderEventHandler System.Windows.Forms.ToolStripItemTextRenderEventHandler
CS.System.Windows.Forms.ToolStripItemTextRenderEventHandler = System.Windows.Forms.ToolStripItemTextRenderEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.ToolStripItemTextRenderEventHandler
function System.Windows.Forms.ToolStripItemTextRenderEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Windows.Forms.ToolStripItemTextRenderEventArgs
function System.Windows.Forms.ToolStripItemTextRenderEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Windows.Forms.ToolStripItemTextRenderEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Windows.Forms.ToolStripItemTextRenderEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Windows.Forms.ToolStripItemTextRenderEventHandler:EndInvoke(result) end

---@class System.Windows.Forms.ToolStripLabel : System.Windows.Forms.ToolStripItem
---@field ActiveLinkColor System.Drawing.Color
---@field CanSelect boolean
---@field IsLink boolean
---@field LinkBehavior System.Windows.Forms.LinkBehavior
---@field LinkColor System.Drawing.Color
---@field LinkVisited boolean
---@field VisitedLinkColor System.Drawing.Color
System.Windows.Forms.ToolStripLabel = {}
---@alias CS.System.Windows.Forms.ToolStripLabel System.Windows.Forms.ToolStripLabel
CS.System.Windows.Forms.ToolStripLabel = System.Windows.Forms.ToolStripLabel

---@overload fun() : System.Windows.Forms.ToolStripLabel
---@overload fun(image: System.Drawing.Image) : System.Windows.Forms.ToolStripLabel
---@overload fun(text: string) : System.Windows.Forms.ToolStripLabel
---@overload fun(text: string, image: System.Drawing.Image) : System.Windows.Forms.ToolStripLabel
---@overload fun(text: string, image: System.Drawing.Image, isLink: boolean) : System.Windows.Forms.ToolStripLabel
---@overload fun(text: string, image: System.Drawing.Image, isLink: boolean, onClick: System.EventHandler) : System.Windows.Forms.ToolStripLabel
---@param text string
---@param image System.Drawing.Image
---@param isLink boolean
---@param onClick System.EventHandler
---@param name string
---@return System.Windows.Forms.ToolStripLabel
function System.Windows.Forms.ToolStripLabel.New(text, image, isLink, onClick, name) end

---@class System.Windows.Forms.ToolStripLayoutStyle
---@field StackWithOverflow System.Windows.Forms.ToolStripLayoutStyle
---@field HorizontalStackWithOverflow System.Windows.Forms.ToolStripLayoutStyle
---@field VerticalStackWithOverflow System.Windows.Forms.ToolStripLayoutStyle
---@field Flow System.Windows.Forms.ToolStripLayoutStyle
---@field Table System.Windows.Forms.ToolStripLayoutStyle
System.Windows.Forms.ToolStripLayoutStyle = {}
---@alias CS.System.Windows.Forms.ToolStripLayoutStyle System.Windows.Forms.ToolStripLayoutStyle
CS.System.Windows.Forms.ToolStripLayoutStyle = System.Windows.Forms.ToolStripLayoutStyle


---@class System.Windows.Forms.ToolStripManager : System.Object
---@field Renderer System.Windows.Forms.ToolStripRenderer
---@field RenderMode System.Windows.Forms.ToolStripManagerRenderMode
---@field VisualStylesEnabled boolean
System.Windows.Forms.ToolStripManager = {}
---@alias CS.System.Windows.Forms.ToolStripManager System.Windows.Forms.ToolStripManager
CS.System.Windows.Forms.ToolStripManager = System.Windows.Forms.ToolStripManager

---@param toolStripName string
---@return System.Windows.Forms.ToolStrip
function System.Windows.Forms.ToolStripManager.FindToolStrip(toolStripName) end
---@param shortcut System.Windows.Forms.Keys
---@return boolean
function System.Windows.Forms.ToolStripManager.IsShortcutDefined(shortcut) end
---@param shortcut System.Windows.Forms.Keys
---@return boolean
function System.Windows.Forms.ToolStripManager.IsValidShortcut(shortcut) end
---@overload fun(targetForm: System.Windows.Forms.Form)
---@param targetForm System.Windows.Forms.Form
---@param key string
function System.Windows.Forms.ToolStripManager.LoadSettings(targetForm, key) end
---@overload fun(sourceToolStrip: System.Windows.Forms.ToolStrip, targetName: string) : boolean
---@param sourceToolStrip System.Windows.Forms.ToolStrip
---@param targetToolStrip System.Windows.Forms.ToolStrip
---@return boolean
function System.Windows.Forms.ToolStripManager.Merge(sourceToolStrip, targetToolStrip) end
---@overload fun(targetName: string) : boolean
---@overload fun(targetToolStrip: System.Windows.Forms.ToolStrip) : boolean
---@param targetToolStrip System.Windows.Forms.ToolStrip
---@param sourceToolStrip System.Windows.Forms.ToolStrip
---@return boolean
function System.Windows.Forms.ToolStripManager.RevertMerge(targetToolStrip, sourceToolStrip) end
---@overload fun(sourceForm: System.Windows.Forms.Form)
---@param sourceForm System.Windows.Forms.Form
---@param key string
function System.Windows.Forms.ToolStripManager.SaveSettings(sourceForm, key) end

---@class System.Windows.Forms.ToolStripManagerRenderMode
---@field Custom System.Windows.Forms.ToolStripManagerRenderMode
---@field System System.Windows.Forms.ToolStripManagerRenderMode
---@field Professional System.Windows.Forms.ToolStripManagerRenderMode
System.Windows.Forms.ToolStripManagerRenderMode = {}
---@alias CS.System.Windows.Forms.ToolStripManagerRenderMode System.Windows.Forms.ToolStripManagerRenderMode
CS.System.Windows.Forms.ToolStripManagerRenderMode = System.Windows.Forms.ToolStripManagerRenderMode


---@class System.Windows.Forms.ToolStripMenuItem : System.Windows.Forms.ToolStripDropDownItem
---@field Checked boolean
---@field CheckOnClick boolean
---@field CheckState System.Windows.Forms.CheckState
---@field Enabled boolean
---@field IsMdiWindowListEntry boolean
---@field Overflow System.Windows.Forms.ToolStripItemOverflow
---@field ShowShortcutKeys boolean
---@field ShortcutKeyDisplayString string
---@field ShortcutKeys System.Windows.Forms.Keys
System.Windows.Forms.ToolStripMenuItem = {}
---@alias CS.System.Windows.Forms.ToolStripMenuItem System.Windows.Forms.ToolStripMenuItem
CS.System.Windows.Forms.ToolStripMenuItem = System.Windows.Forms.ToolStripMenuItem

---@overload fun() : System.Windows.Forms.ToolStripMenuItem
---@overload fun(image: System.Drawing.Image) : System.Windows.Forms.ToolStripMenuItem
---@overload fun(text: string) : System.Windows.Forms.ToolStripMenuItem
---@overload fun(text: string, image: System.Drawing.Image) : System.Windows.Forms.ToolStripMenuItem
---@overload fun(text: string, image: System.Drawing.Image, onClick: System.EventHandler) : System.Windows.Forms.ToolStripMenuItem
---@overload fun(text: string, image: System.Drawing.Image, dropDownItems: System.Windows.Forms.ToolStripItem[]) : System.Windows.Forms.ToolStripMenuItem
---@overload fun(text: string, image: System.Drawing.Image, onClick: System.EventHandler, shortcutKeys: System.Windows.Forms.Keys) : System.Windows.Forms.ToolStripMenuItem
---@param text string
---@param image System.Drawing.Image
---@param onClick System.EventHandler
---@param name string
---@return System.Windows.Forms.ToolStripMenuItem
function System.Windows.Forms.ToolStripMenuItem.New(text, image, onClick, name) end

---@class System.Windows.Forms.ToolStripMenuItem.ToolStripMenuItemAccessibleObject : System.Windows.Forms.AccessibleObject
System.Windows.Forms.ToolStripMenuItem.ToolStripMenuItemAccessibleObject = {}
---@alias CS.System.Windows.Forms.ToolStripMenuItem.ToolStripMenuItemAccessibleObject System.Windows.Forms.ToolStripMenuItem.ToolStripMenuItemAccessibleObject
CS.System.Windows.Forms.ToolStripMenuItem.ToolStripMenuItemAccessibleObject = System.Windows.Forms.ToolStripMenuItem.ToolStripMenuItemAccessibleObject

---@return System.Windows.Forms.ToolStripMenuItem.ToolStripMenuItemAccessibleObject
function System.Windows.Forms.ToolStripMenuItem.ToolStripMenuItemAccessibleObject.New() end

---@class System.Windows.Forms.ToolStripOverflow : System.Windows.Forms.ToolStripDropDown
---@field Items System.Windows.Forms.ToolStripItemCollection
System.Windows.Forms.ToolStripOverflow = {}
---@alias CS.System.Windows.Forms.ToolStripOverflow System.Windows.Forms.ToolStripOverflow
CS.System.Windows.Forms.ToolStripOverflow = System.Windows.Forms.ToolStripOverflow

---@param parentItem System.Windows.Forms.ToolStripItem
---@return System.Windows.Forms.ToolStripOverflow
function System.Windows.Forms.ToolStripOverflow.New(parentItem) end
---@param constrainingSize System.Drawing.Size
---@return System.Drawing.Size
function System.Windows.Forms.ToolStripOverflow:GetPreferredSize(constrainingSize) end

---@class System.Windows.Forms.ToolStripOverflow.ToolStripOverflowAccessibleObject : System.Windows.Forms.AccessibleObject
System.Windows.Forms.ToolStripOverflow.ToolStripOverflowAccessibleObject = {}
---@alias CS.System.Windows.Forms.ToolStripOverflow.ToolStripOverflowAccessibleObject System.Windows.Forms.ToolStripOverflow.ToolStripOverflowAccessibleObject
CS.System.Windows.Forms.ToolStripOverflow.ToolStripOverflowAccessibleObject = System.Windows.Forms.ToolStripOverflow.ToolStripOverflowAccessibleObject

---@return System.Windows.Forms.ToolStripOverflow.ToolStripOverflowAccessibleObject
function System.Windows.Forms.ToolStripOverflow.ToolStripOverflowAccessibleObject.New() end

---@class System.Windows.Forms.ToolStripOverflowButton : System.Windows.Forms.ToolStripDropDownButton
---@field HasDropDownItems boolean
---@field RightToLeftAutoMirrorImage boolean
System.Windows.Forms.ToolStripOverflowButton = {}
---@alias CS.System.Windows.Forms.ToolStripOverflowButton System.Windows.Forms.ToolStripOverflowButton
CS.System.Windows.Forms.ToolStripOverflowButton = System.Windows.Forms.ToolStripOverflowButton

---@param constrainingSize System.Drawing.Size
---@return System.Drawing.Size
function System.Windows.Forms.ToolStripOverflowButton:GetPreferredSize(constrainingSize) end

---@class System.Windows.Forms.ToolStripOverflowButton.ToolStripOverflowButtonAccessibleObject : System.Windows.Forms.AccessibleObject
System.Windows.Forms.ToolStripOverflowButton.ToolStripOverflowButtonAccessibleObject = {}
---@alias CS.System.Windows.Forms.ToolStripOverflowButton.ToolStripOverflowButtonAccessibleObject System.Windows.Forms.ToolStripOverflowButton.ToolStripOverflowButtonAccessibleObject
CS.System.Windows.Forms.ToolStripOverflowButton.ToolStripOverflowButtonAccessibleObject = System.Windows.Forms.ToolStripOverflowButton.ToolStripOverflowButtonAccessibleObject

---@return System.Windows.Forms.ToolStripOverflowButton.ToolStripOverflowButtonAccessibleObject
function System.Windows.Forms.ToolStripOverflowButton.ToolStripOverflowButtonAccessibleObject.New() end

---@class System.Windows.Forms.ToolStripPanel : System.Windows.Forms.ContainerControl
---@field AllowDrop boolean
---@field AutoScroll boolean
---@field AutoScrollMargin System.Drawing.Size
---@field AutoScrollMinSize System.Drawing.Size
---@field AutoSize boolean
---@field Dock System.Windows.Forms.DockStyle
---@field LayoutEngine System.Windows.Forms.Layout.LayoutEngine
---@field Locked boolean
---@field Orientation System.Windows.Forms.Orientation
---@field Renderer System.Windows.Forms.ToolStripRenderer
---@field RenderMode System.Windows.Forms.ToolStripRenderMode
---@field RowMargin System.Windows.Forms.Padding
---@field Rows System.Windows.Forms.ToolStripPanelRow[]
---@field TabIndex number
---@field TabStop boolean
---@field Text string
System.Windows.Forms.ToolStripPanel = {}
---@alias CS.System.Windows.Forms.ToolStripPanel System.Windows.Forms.ToolStripPanel
CS.System.Windows.Forms.ToolStripPanel = System.Windows.Forms.ToolStripPanel

---@return System.Windows.Forms.ToolStripPanel
function System.Windows.Forms.ToolStripPanel.New() end
function System.Windows.Forms.ToolStripPanel:BeginInit() end
function System.Windows.Forms.ToolStripPanel:EndInit() end
---@overload fun(self: System.Windows.Forms.ToolStripPanel, toolStripToDrag: System.Windows.Forms.ToolStrip)
---@overload fun(self: System.Windows.Forms.ToolStripPanel, toolStripToDrag: System.Windows.Forms.ToolStrip, row: number)
---@overload fun(self: System.Windows.Forms.ToolStripPanel, toolStripToDrag: System.Windows.Forms.ToolStrip, location: System.Drawing.Point)
---@param toolStripToDrag System.Windows.Forms.ToolStrip
---@param x number
---@param y number
function System.Windows.Forms.ToolStripPanel:Join(toolStripToDrag, x, y) end
---@param clientLocation System.Drawing.Point
---@return System.Windows.Forms.ToolStripPanelRow
function System.Windows.Forms.ToolStripPanel:PointToRow(clientLocation) end

---@class System.Windows.Forms.ToolStripPanel.ToolStripPanelRowCollection : System.Windows.Forms.Layout.ArrangedElementCollection
---@field Item System.Windows.Forms.ToolStripPanelRow
System.Windows.Forms.ToolStripPanel.ToolStripPanelRowCollection = {}
---@alias CS.System.Windows.Forms.ToolStripPanel.ToolStripPanelRowCollection System.Windows.Forms.ToolStripPanel.ToolStripPanelRowCollection
CS.System.Windows.Forms.ToolStripPanel.ToolStripPanelRowCollection = System.Windows.Forms.ToolStripPanel.ToolStripPanelRowCollection

---@overload fun(owner: System.Windows.Forms.ToolStripPanel) : System.Windows.Forms.ToolStripPanel.ToolStripPanelRowCollection
---@param owner System.Windows.Forms.ToolStripPanel
---@param value System.Windows.Forms.ToolStripPanelRow[]
---@return System.Windows.Forms.ToolStripPanel.ToolStripPanelRowCollection
function System.Windows.Forms.ToolStripPanel.ToolStripPanelRowCollection.New(owner, value) end
---@param value System.Windows.Forms.ToolStripPanelRow
---@return number
function System.Windows.Forms.ToolStripPanel.ToolStripPanelRowCollection:Add(value) end
---@overload fun(self: System.Windows.Forms.ToolStripPanel.ToolStripPanelRowCollection, value: System.Windows.Forms.ToolStripPanel.ToolStripPanelRowCollection)
---@param value System.Windows.Forms.ToolStripPanelRow[]
function System.Windows.Forms.ToolStripPanel.ToolStripPanelRowCollection:AddRange(value) end
function System.Windows.Forms.ToolStripPanel.ToolStripPanelRowCollection:Clear() end
---@param value System.Windows.Forms.ToolStripPanelRow
---@return boolean
function System.Windows.Forms.ToolStripPanel.ToolStripPanelRowCollection:Contains(value) end
---@param array System.Windows.Forms.ToolStripPanelRow[]
---@param index number
function System.Windows.Forms.ToolStripPanel.ToolStripPanelRowCollection:CopyTo(array, index) end
---@param value System.Windows.Forms.ToolStripPanelRow
---@return number
function System.Windows.Forms.ToolStripPanel.ToolStripPanelRowCollection:IndexOf(value) end
---@param index number
---@param value System.Windows.Forms.ToolStripPanelRow
function System.Windows.Forms.ToolStripPanel.ToolStripPanelRowCollection:Insert(index, value) end
---@param value System.Windows.Forms.ToolStripPanelRow
function System.Windows.Forms.ToolStripPanel.ToolStripPanelRowCollection:Remove(value) end
---@param index number
function System.Windows.Forms.ToolStripPanel.ToolStripPanelRowCollection:RemoveAt(index) end

---@class System.Windows.Forms.ToolStripPanel.ToolStripPanelControlCollection : System.Windows.Forms.Control.ControlCollection
System.Windows.Forms.ToolStripPanel.ToolStripPanelControlCollection = {}
---@alias CS.System.Windows.Forms.ToolStripPanel.ToolStripPanelControlCollection System.Windows.Forms.ToolStripPanel.ToolStripPanelControlCollection
CS.System.Windows.Forms.ToolStripPanel.ToolStripPanelControlCollection = System.Windows.Forms.ToolStripPanel.ToolStripPanelControlCollection

---@param owner System.Windows.Forms.Control
---@return System.Windows.Forms.ToolStripPanel.ToolStripPanelControlCollection
function System.Windows.Forms.ToolStripPanel.ToolStripPanelControlCollection.New(owner) end

---@class System.Windows.Forms.ToolStripPanel.TabIndexComparer : System.Object
System.Windows.Forms.ToolStripPanel.TabIndexComparer = {}
---@alias CS.System.Windows.Forms.ToolStripPanel.TabIndexComparer System.Windows.Forms.ToolStripPanel.TabIndexComparer
CS.System.Windows.Forms.ToolStripPanel.TabIndexComparer = System.Windows.Forms.ToolStripPanel.TabIndexComparer

---@return System.Windows.Forms.ToolStripPanel.TabIndexComparer
function System.Windows.Forms.ToolStripPanel.TabIndexComparer.New() end
---@param x System.Object
---@param y System.Object
---@return number
function System.Windows.Forms.ToolStripPanel.TabIndexComparer:Compare(x, y) end

---@class System.Windows.Forms.ToolStripPanelRenderEventArgs : System.EventArgs
---@field Graphics System.Drawing.Graphics
---@field Handled boolean
---@field ToolStripPanel System.Windows.Forms.ToolStripPanel
System.Windows.Forms.ToolStripPanelRenderEventArgs = {}
---@alias CS.System.Windows.Forms.ToolStripPanelRenderEventArgs System.Windows.Forms.ToolStripPanelRenderEventArgs
CS.System.Windows.Forms.ToolStripPanelRenderEventArgs = System.Windows.Forms.ToolStripPanelRenderEventArgs

---@param g System.Drawing.Graphics
---@param toolStripPanel System.Windows.Forms.ToolStripPanel
---@return System.Windows.Forms.ToolStripPanelRenderEventArgs
function System.Windows.Forms.ToolStripPanelRenderEventArgs.New(g, toolStripPanel) end

---@class System.Windows.Forms.ToolStripPanelRenderEventHandler : System.MulticastDelegate
System.Windows.Forms.ToolStripPanelRenderEventHandler = {}
---@alias CS.System.Windows.Forms.ToolStripPanelRenderEventHandler System.Windows.Forms.ToolStripPanelRenderEventHandler
CS.System.Windows.Forms.ToolStripPanelRenderEventHandler = System.Windows.Forms.ToolStripPanelRenderEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.ToolStripPanelRenderEventHandler
function System.Windows.Forms.ToolStripPanelRenderEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Windows.Forms.ToolStripPanelRenderEventArgs
function System.Windows.Forms.ToolStripPanelRenderEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Windows.Forms.ToolStripPanelRenderEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Windows.Forms.ToolStripPanelRenderEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Windows.Forms.ToolStripPanelRenderEventHandler:EndInvoke(result) end

---@class System.Windows.Forms.ToolStripPanelRow : System.ComponentModel.Component
---@field Bounds System.Drawing.Rectangle
---@field Controls System.Windows.Forms.Control[]
---@field DisplayRectangle System.Drawing.Rectangle
---@field LayoutEngine System.Windows.Forms.Layout.LayoutEngine
---@field Margin System.Windows.Forms.Padding
---@field Orientation System.Windows.Forms.Orientation
---@field Padding System.Windows.Forms.Padding
---@field ToolStripPanel System.Windows.Forms.ToolStripPanel
System.Windows.Forms.ToolStripPanelRow = {}
---@alias CS.System.Windows.Forms.ToolStripPanelRow System.Windows.Forms.ToolStripPanelRow
CS.System.Windows.Forms.ToolStripPanelRow = System.Windows.Forms.ToolStripPanelRow

---@param parent System.Windows.Forms.ToolStripPanel
---@return System.Windows.Forms.ToolStripPanelRow
function System.Windows.Forms.ToolStripPanelRow.New(parent) end
---@param toolStripToDrag System.Windows.Forms.ToolStrip
---@return boolean
function System.Windows.Forms.ToolStripPanelRow:CanMove(toolStripToDrag) end

---@class System.Windows.Forms.ToolStripProfessionalRenderer : System.Windows.Forms.ToolStripRenderer
---@field ColorTable System.Windows.Forms.ProfessionalColorTable
---@field RoundedEdges boolean
System.Windows.Forms.ToolStripProfessionalRenderer = {}
---@alias CS.System.Windows.Forms.ToolStripProfessionalRenderer System.Windows.Forms.ToolStripProfessionalRenderer
CS.System.Windows.Forms.ToolStripProfessionalRenderer = System.Windows.Forms.ToolStripProfessionalRenderer

---@overload fun() : System.Windows.Forms.ToolStripProfessionalRenderer
---@param professionalColorTable System.Windows.Forms.ProfessionalColorTable
---@return System.Windows.Forms.ToolStripProfessionalRenderer
function System.Windows.Forms.ToolStripProfessionalRenderer.New(professionalColorTable) end

---@class System.Windows.Forms.ToolStripProgressBar : System.Windows.Forms.ToolStripControlHost
---@field BackgroundImage System.Drawing.Image
---@field BackgroundImageLayout System.Windows.Forms.ImageLayout
---@field MarqueeAnimationSpeed number
---@field Maximum number
---@field Minimum number
---@field ProgressBar System.Windows.Forms.ProgressBar
---@field RightToLeftLayout boolean
---@field Step number
---@field Style System.Windows.Forms.ProgressBarStyle
---@field Text string
---@field Value number
System.Windows.Forms.ToolStripProgressBar = {}
---@alias CS.System.Windows.Forms.ToolStripProgressBar System.Windows.Forms.ToolStripProgressBar
CS.System.Windows.Forms.ToolStripProgressBar = System.Windows.Forms.ToolStripProgressBar

---@overload fun() : System.Windows.Forms.ToolStripProgressBar
---@param name string
---@return System.Windows.Forms.ToolStripProgressBar
function System.Windows.Forms.ToolStripProgressBar.New(name) end
---@param value number
function System.Windows.Forms.ToolStripProgressBar:Increment(value) end
function System.Windows.Forms.ToolStripProgressBar:PerformStep() end

---@class System.Windows.Forms.ToolStripRenderEventArgs : System.EventArgs
---@field AffectedBounds System.Drawing.Rectangle
---@field BackColor System.Drawing.Color
---@field ConnectedArea System.Drawing.Rectangle
---@field Graphics System.Drawing.Graphics
---@field ToolStrip System.Windows.Forms.ToolStrip
System.Windows.Forms.ToolStripRenderEventArgs = {}
---@alias CS.System.Windows.Forms.ToolStripRenderEventArgs System.Windows.Forms.ToolStripRenderEventArgs
CS.System.Windows.Forms.ToolStripRenderEventArgs = System.Windows.Forms.ToolStripRenderEventArgs

---@overload fun(g: System.Drawing.Graphics, toolStrip: System.Windows.Forms.ToolStrip) : System.Windows.Forms.ToolStripRenderEventArgs
---@param g System.Drawing.Graphics
---@param toolStrip System.Windows.Forms.ToolStrip
---@param affectedBounds System.Drawing.Rectangle
---@param backColor System.Drawing.Color
---@return System.Windows.Forms.ToolStripRenderEventArgs
function System.Windows.Forms.ToolStripRenderEventArgs.New(g, toolStrip, affectedBounds, backColor) end

---@class System.Windows.Forms.ToolStripRenderEventHandler : System.MulticastDelegate
System.Windows.Forms.ToolStripRenderEventHandler = {}
---@alias CS.System.Windows.Forms.ToolStripRenderEventHandler System.Windows.Forms.ToolStripRenderEventHandler
CS.System.Windows.Forms.ToolStripRenderEventHandler = System.Windows.Forms.ToolStripRenderEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.ToolStripRenderEventHandler
function System.Windows.Forms.ToolStripRenderEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Windows.Forms.ToolStripRenderEventArgs
function System.Windows.Forms.ToolStripRenderEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Windows.Forms.ToolStripRenderEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Windows.Forms.ToolStripRenderEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Windows.Forms.ToolStripRenderEventHandler:EndInvoke(result) end

---@class System.Windows.Forms.ToolStripRenderMode
---@field Custom System.Windows.Forms.ToolStripRenderMode
---@field System System.Windows.Forms.ToolStripRenderMode
---@field Professional System.Windows.Forms.ToolStripRenderMode
---@field ManagerRenderMode System.Windows.Forms.ToolStripRenderMode
System.Windows.Forms.ToolStripRenderMode = {}
---@alias CS.System.Windows.Forms.ToolStripRenderMode System.Windows.Forms.ToolStripRenderMode
CS.System.Windows.Forms.ToolStripRenderMode = System.Windows.Forms.ToolStripRenderMode


---@class System.Windows.Forms.ToolStripRenderer : System.Object
System.Windows.Forms.ToolStripRenderer = {}
---@alias CS.System.Windows.Forms.ToolStripRenderer System.Windows.Forms.ToolStripRenderer
CS.System.Windows.Forms.ToolStripRenderer = System.Windows.Forms.ToolStripRenderer

---@param normalImage System.Drawing.Image
---@return System.Drawing.Image
function System.Windows.Forms.ToolStripRenderer.CreateDisabledImage(normalImage) end
---@param e System.Windows.Forms.ToolStripArrowRenderEventArgs
function System.Windows.Forms.ToolStripRenderer:DrawArrow(e) end
---@param e System.Windows.Forms.ToolStripItemRenderEventArgs
function System.Windows.Forms.ToolStripRenderer:DrawButtonBackground(e) end
---@param e System.Windows.Forms.ToolStripItemRenderEventArgs
function System.Windows.Forms.ToolStripRenderer:DrawDropDownButtonBackground(e) end
---@param e System.Windows.Forms.ToolStripGripRenderEventArgs
function System.Windows.Forms.ToolStripRenderer:DrawGrip(e) end
---@param e System.Windows.Forms.ToolStripRenderEventArgs
function System.Windows.Forms.ToolStripRenderer:DrawImageMargin(e) end
---@param e System.Windows.Forms.ToolStripItemRenderEventArgs
function System.Windows.Forms.ToolStripRenderer:DrawItemBackground(e) end
---@param e System.Windows.Forms.ToolStripItemImageRenderEventArgs
function System.Windows.Forms.ToolStripRenderer:DrawItemCheck(e) end
---@param e System.Windows.Forms.ToolStripItemImageRenderEventArgs
function System.Windows.Forms.ToolStripRenderer:DrawItemImage(e) end
---@param e System.Windows.Forms.ToolStripItemTextRenderEventArgs
function System.Windows.Forms.ToolStripRenderer:DrawItemText(e) end
---@param e System.Windows.Forms.ToolStripItemRenderEventArgs
function System.Windows.Forms.ToolStripRenderer:DrawLabelBackground(e) end
---@param e System.Windows.Forms.ToolStripItemRenderEventArgs
function System.Windows.Forms.ToolStripRenderer:DrawMenuItemBackground(e) end
---@param e System.Windows.Forms.ToolStripItemRenderEventArgs
function System.Windows.Forms.ToolStripRenderer:DrawOverflowButtonBackground(e) end
---@param e System.Windows.Forms.ToolStripSeparatorRenderEventArgs
function System.Windows.Forms.ToolStripRenderer:DrawSeparator(e) end
---@param e System.Windows.Forms.ToolStripItemRenderEventArgs
function System.Windows.Forms.ToolStripRenderer:DrawSplitButton(e) end
---@param e System.Windows.Forms.ToolStripRenderEventArgs
function System.Windows.Forms.ToolStripRenderer:DrawStatusStripSizingGrip(e) end
---@param e System.Windows.Forms.ToolStripRenderEventArgs
function System.Windows.Forms.ToolStripRenderer:DrawToolStripBackground(e) end
---@param e System.Windows.Forms.ToolStripRenderEventArgs
function System.Windows.Forms.ToolStripRenderer:DrawToolStripBorder(e) end
---@param e System.Windows.Forms.ToolStripContentPanelRenderEventArgs
function System.Windows.Forms.ToolStripRenderer:DrawToolStripContentPanelBackground(e) end
---@param e System.Windows.Forms.ToolStripPanelRenderEventArgs
function System.Windows.Forms.ToolStripRenderer:DrawToolStripPanelBackground(e) end
---@param e System.Windows.Forms.ToolStripItemRenderEventArgs
function System.Windows.Forms.ToolStripRenderer:DrawToolStripStatusLabelBackground(e) end

---@class System.Windows.Forms.ToolStripSeparator : System.Windows.Forms.ToolStripItem
---@field AutoToolTip boolean
---@field BackgroundImage System.Drawing.Image
---@field BackgroundImageLayout System.Windows.Forms.ImageLayout
---@field CanSelect boolean
---@field DisplayStyle System.Windows.Forms.ToolStripItemDisplayStyle
---@field DoubleClickEnabled boolean
---@field Enabled boolean
---@field Font System.Drawing.Font
---@field Image System.Drawing.Image
---@field ImageAlign System.Drawing.ContentAlignment
---@field ImageIndex number
---@field ImageKey string
---@field ImageScaling System.Windows.Forms.ToolStripItemImageScaling
---@field ImageTransparentColor System.Drawing.Color
---@field RightToLeftAutoMirrorImage boolean
---@field Text string
---@field TextAlign System.Drawing.ContentAlignment
---@field TextDirection System.Windows.Forms.ToolStripTextDirection
---@field TextImageRelation System.Windows.Forms.TextImageRelation
---@field ToolTipText string
System.Windows.Forms.ToolStripSeparator = {}
---@alias CS.System.Windows.Forms.ToolStripSeparator System.Windows.Forms.ToolStripSeparator
CS.System.Windows.Forms.ToolStripSeparator = System.Windows.Forms.ToolStripSeparator

---@return System.Windows.Forms.ToolStripSeparator
function System.Windows.Forms.ToolStripSeparator.New() end
---@param constrainingSize System.Drawing.Size
---@return System.Drawing.Size
function System.Windows.Forms.ToolStripSeparator:GetPreferredSize(constrainingSize) end

---@class System.Windows.Forms.ToolStripSeparatorRenderEventArgs : System.Windows.Forms.ToolStripItemRenderEventArgs
---@field Vertical boolean
System.Windows.Forms.ToolStripSeparatorRenderEventArgs = {}
---@alias CS.System.Windows.Forms.ToolStripSeparatorRenderEventArgs System.Windows.Forms.ToolStripSeparatorRenderEventArgs
CS.System.Windows.Forms.ToolStripSeparatorRenderEventArgs = System.Windows.Forms.ToolStripSeparatorRenderEventArgs

---@param g System.Drawing.Graphics
---@param separator System.Windows.Forms.ToolStripSeparator
---@param vertical boolean
---@return System.Windows.Forms.ToolStripSeparatorRenderEventArgs
function System.Windows.Forms.ToolStripSeparatorRenderEventArgs.New(g, separator, vertical) end

---@class System.Windows.Forms.ToolStripSeparatorRenderEventHandler : System.MulticastDelegate
System.Windows.Forms.ToolStripSeparatorRenderEventHandler = {}
---@alias CS.System.Windows.Forms.ToolStripSeparatorRenderEventHandler System.Windows.Forms.ToolStripSeparatorRenderEventHandler
CS.System.Windows.Forms.ToolStripSeparatorRenderEventHandler = System.Windows.Forms.ToolStripSeparatorRenderEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.ToolStripSeparatorRenderEventHandler
function System.Windows.Forms.ToolStripSeparatorRenderEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Windows.Forms.ToolStripSeparatorRenderEventArgs
function System.Windows.Forms.ToolStripSeparatorRenderEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Windows.Forms.ToolStripSeparatorRenderEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Windows.Forms.ToolStripSeparatorRenderEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Windows.Forms.ToolStripSeparatorRenderEventHandler:EndInvoke(result) end

---@class System.Windows.Forms.ToolStripSplitButton : System.Windows.Forms.ToolStripDropDownItem
---@field AutoToolTip boolean
---@field ButtonBounds System.Drawing.Rectangle
---@field ButtonPressed boolean
---@field ButtonSelected boolean
---@field DefaultItem System.Windows.Forms.ToolStripItem
---@field DropDownButtonBounds System.Drawing.Rectangle
---@field DropDownButtonPressed boolean
---@field DropDownButtonSelected boolean
---@field DropDownButtonWidth number
---@field SplitterBounds System.Drawing.Rectangle
System.Windows.Forms.ToolStripSplitButton = {}
---@alias CS.System.Windows.Forms.ToolStripSplitButton System.Windows.Forms.ToolStripSplitButton
CS.System.Windows.Forms.ToolStripSplitButton = System.Windows.Forms.ToolStripSplitButton

---@overload fun() : System.Windows.Forms.ToolStripSplitButton
---@overload fun(image: System.Drawing.Image) : System.Windows.Forms.ToolStripSplitButton
---@overload fun(text: string) : System.Windows.Forms.ToolStripSplitButton
---@overload fun(text: string, image: System.Drawing.Image) : System.Windows.Forms.ToolStripSplitButton
---@overload fun(text: string, image: System.Drawing.Image, onClick: System.EventHandler) : System.Windows.Forms.ToolStripSplitButton
---@overload fun(text: string, image: System.Drawing.Image, dropDownItems: System.Windows.Forms.ToolStripItem[]) : System.Windows.Forms.ToolStripSplitButton
---@param text string
---@param image System.Drawing.Image
---@param onClick System.EventHandler
---@param name string
---@return System.Windows.Forms.ToolStripSplitButton
function System.Windows.Forms.ToolStripSplitButton.New(text, image, onClick, name) end
---@param constrainingSize System.Drawing.Size
---@return System.Drawing.Size
function System.Windows.Forms.ToolStripSplitButton:GetPreferredSize(constrainingSize) end
---@param e System.EventArgs
function System.Windows.Forms.ToolStripSplitButton:OnButtonDoubleClick(e) end
function System.Windows.Forms.ToolStripSplitButton:PerformButtonClick() end
function System.Windows.Forms.ToolStripSplitButton:ResetDropDownButtonWidth() end

---@class System.Windows.Forms.ToolStripSplitButton.ToolStripSplitButtonAccessibleObject : System.Windows.Forms.ToolStripItem.ToolStripItemAccessibleObject
System.Windows.Forms.ToolStripSplitButton.ToolStripSplitButtonAccessibleObject = {}
---@alias CS.System.Windows.Forms.ToolStripSplitButton.ToolStripSplitButtonAccessibleObject System.Windows.Forms.ToolStripSplitButton.ToolStripSplitButtonAccessibleObject
CS.System.Windows.Forms.ToolStripSplitButton.ToolStripSplitButtonAccessibleObject = System.Windows.Forms.ToolStripSplitButton.ToolStripSplitButtonAccessibleObject

---@param item System.Windows.Forms.ToolStripSplitButton
---@return System.Windows.Forms.ToolStripSplitButton.ToolStripSplitButtonAccessibleObject
function System.Windows.Forms.ToolStripSplitButton.ToolStripSplitButtonAccessibleObject.New(item) end
function System.Windows.Forms.ToolStripSplitButton.ToolStripSplitButtonAccessibleObject:DoDefaultAction() end

---@class System.Windows.Forms.ToolStripSplitStackLayout : System.Windows.Forms.Layout.LayoutEngine
System.Windows.Forms.ToolStripSplitStackLayout = {}
---@alias CS.System.Windows.Forms.ToolStripSplitStackLayout System.Windows.Forms.ToolStripSplitStackLayout
CS.System.Windows.Forms.ToolStripSplitStackLayout = System.Windows.Forms.ToolStripSplitStackLayout

---@return System.Windows.Forms.ToolStripSplitStackLayout
function System.Windows.Forms.ToolStripSplitStackLayout.New() end
---@param container System.Object
---@param args System.Windows.Forms.LayoutEventArgs
---@return boolean
function System.Windows.Forms.ToolStripSplitStackLayout:Layout(container, args) end

---@class System.Windows.Forms.ToolStripStatusLabel : System.Windows.Forms.ToolStripLabel
---@field Alignment System.Windows.Forms.ToolStripItemAlignment
---@field BorderSides System.Windows.Forms.ToolStripStatusLabelBorderSides
---@field BorderStyle System.Windows.Forms.Border3DStyle
---@field Spring boolean
---@field LiveSetting System.Windows.Forms.Automation.AutomationLiveSetting
System.Windows.Forms.ToolStripStatusLabel = {}
---@alias CS.System.Windows.Forms.ToolStripStatusLabel System.Windows.Forms.ToolStripStatusLabel
CS.System.Windows.Forms.ToolStripStatusLabel = System.Windows.Forms.ToolStripStatusLabel

---@overload fun() : System.Windows.Forms.ToolStripStatusLabel
---@overload fun(image: System.Drawing.Image) : System.Windows.Forms.ToolStripStatusLabel
---@overload fun(text: string) : System.Windows.Forms.ToolStripStatusLabel
---@overload fun(text: string, image: System.Drawing.Image) : System.Windows.Forms.ToolStripStatusLabel
---@overload fun(text: string, image: System.Drawing.Image, onClick: System.EventHandler) : System.Windows.Forms.ToolStripStatusLabel
---@param text string
---@param image System.Drawing.Image
---@param onClick System.EventHandler
---@param name string
---@return System.Windows.Forms.ToolStripStatusLabel
function System.Windows.Forms.ToolStripStatusLabel.New(text, image, onClick, name) end
---@param constrainingSize System.Drawing.Size
---@return System.Drawing.Size
function System.Windows.Forms.ToolStripStatusLabel:GetPreferredSize(constrainingSize) end

---@class System.Windows.Forms.ToolStripStatusLabelBorderSides
---@field None System.Windows.Forms.ToolStripStatusLabelBorderSides
---@field Left System.Windows.Forms.ToolStripStatusLabelBorderSides
---@field Top System.Windows.Forms.ToolStripStatusLabelBorderSides
---@field Right System.Windows.Forms.ToolStripStatusLabelBorderSides
---@field Bottom System.Windows.Forms.ToolStripStatusLabelBorderSides
---@field All System.Windows.Forms.ToolStripStatusLabelBorderSides
System.Windows.Forms.ToolStripStatusLabelBorderSides = {}
---@alias CS.System.Windows.Forms.ToolStripStatusLabelBorderSides System.Windows.Forms.ToolStripStatusLabelBorderSides
CS.System.Windows.Forms.ToolStripStatusLabelBorderSides = System.Windows.Forms.ToolStripStatusLabelBorderSides


---@class System.Windows.Forms.ToolStripSystemRenderer : System.Windows.Forms.ToolStripRenderer
System.Windows.Forms.ToolStripSystemRenderer = {}
---@alias CS.System.Windows.Forms.ToolStripSystemRenderer System.Windows.Forms.ToolStripSystemRenderer
CS.System.Windows.Forms.ToolStripSystemRenderer = System.Windows.Forms.ToolStripSystemRenderer

---@return System.Windows.Forms.ToolStripSystemRenderer
function System.Windows.Forms.ToolStripSystemRenderer.New() end

---@class System.Windows.Forms.ToolStripTextBox : System.Windows.Forms.ToolStripControlHost
---@field AcceptsReturn boolean
---@field AcceptsTab boolean
---@field AutoCompleteCustomSource System.Windows.Forms.AutoCompleteStringCollection
---@field AutoCompleteMode System.Windows.Forms.AutoCompleteMode
---@field AutoCompleteSource System.Windows.Forms.AutoCompleteSource
---@field BackgroundImage System.Drawing.Image
---@field BackgroundImageLayout System.Windows.Forms.ImageLayout
---@field BorderStyle System.Windows.Forms.BorderStyle
---@field CanUndo boolean
---@field CharacterCasing System.Windows.Forms.CharacterCasing
---@field HideSelection boolean
---@field Lines System.String[]
---@field MaxLength number
---@field Modified boolean
---@field Multiline boolean
---@field ReadOnly boolean
---@field SelectedText string
---@field SelectionLength number
---@field SelectionStart number
---@field ShortcutsEnabled boolean
---@field TextBox System.Windows.Forms.TextBox
---@field TextBoxTextAlign System.Windows.Forms.HorizontalAlignment
---@field TextLength number
---@field WordWrap boolean
System.Windows.Forms.ToolStripTextBox = {}
---@alias CS.System.Windows.Forms.ToolStripTextBox System.Windows.Forms.ToolStripTextBox
CS.System.Windows.Forms.ToolStripTextBox = System.Windows.Forms.ToolStripTextBox

---@overload fun() : System.Windows.Forms.ToolStripTextBox
---@overload fun(c: System.Windows.Forms.Control) : System.Windows.Forms.ToolStripTextBox
---@param name string
---@return System.Windows.Forms.ToolStripTextBox
function System.Windows.Forms.ToolStripTextBox.New(name) end
---@param text string
function System.Windows.Forms.ToolStripTextBox:AppendText(text) end
function System.Windows.Forms.ToolStripTextBox:Clear() end
function System.Windows.Forms.ToolStripTextBox:ClearUndo() end
function System.Windows.Forms.ToolStripTextBox:Copy() end
function System.Windows.Forms.ToolStripTextBox:Cut() end
function System.Windows.Forms.ToolStripTextBox:DeselectAll() end
---@param pt System.Drawing.Point
---@return System.Char
function System.Windows.Forms.ToolStripTextBox:GetCharFromPosition(pt) end
---@param pt System.Drawing.Point
---@return number
function System.Windows.Forms.ToolStripTextBox:GetCharIndexFromPosition(pt) end
---@param lineNumber number
---@return number
function System.Windows.Forms.ToolStripTextBox:GetFirstCharIndexFromLine(lineNumber) end
---@return number
function System.Windows.Forms.ToolStripTextBox:GetFirstCharIndexOfCurrentLine() end
---@param index number
---@return number
function System.Windows.Forms.ToolStripTextBox:GetLineFromCharIndex(index) end
---@param index number
---@return System.Drawing.Point
function System.Windows.Forms.ToolStripTextBox:GetPositionFromCharIndex(index) end
---@param constrainingSize System.Drawing.Size
---@return System.Drawing.Size
function System.Windows.Forms.ToolStripTextBox:GetPreferredSize(constrainingSize) end
function System.Windows.Forms.ToolStripTextBox:Paste() end
function System.Windows.Forms.ToolStripTextBox:ScrollToCaret() end
---@param start number
---@param length number
function System.Windows.Forms.ToolStripTextBox:Select(start, length) end
function System.Windows.Forms.ToolStripTextBox:SelectAll() end
function System.Windows.Forms.ToolStripTextBox:Undo() end

---@class System.Windows.Forms.ToolStripTextBox.ToolStripTextBoxControl : System.Windows.Forms.TextBox
System.Windows.Forms.ToolStripTextBox.ToolStripTextBoxControl = {}
---@alias CS.System.Windows.Forms.ToolStripTextBox.ToolStripTextBoxControl System.Windows.Forms.ToolStripTextBox.ToolStripTextBoxControl
CS.System.Windows.Forms.ToolStripTextBox.ToolStripTextBoxControl = System.Windows.Forms.ToolStripTextBox.ToolStripTextBoxControl

---@return System.Windows.Forms.ToolStripTextBox.ToolStripTextBoxControl
function System.Windows.Forms.ToolStripTextBox.ToolStripTextBoxControl.New() end

---@class System.Windows.Forms.ToolStripTextDirection
---@field Inherit System.Windows.Forms.ToolStripTextDirection
---@field Horizontal System.Windows.Forms.ToolStripTextDirection
---@field Vertical90 System.Windows.Forms.ToolStripTextDirection
---@field Vertical270 System.Windows.Forms.ToolStripTextDirection
System.Windows.Forms.ToolStripTextDirection = {}
---@alias CS.System.Windows.Forms.ToolStripTextDirection System.Windows.Forms.ToolStripTextDirection
CS.System.Windows.Forms.ToolStripTextDirection = System.Windows.Forms.ToolStripTextDirection


---@class System.Windows.Forms.ToolTip : System.ComponentModel.Component
---@field Active boolean
---@field AutomaticDelay number
---@field AutoPopDelay number
---@field BackColor System.Drawing.Color
---@field ForeColor System.Drawing.Color
---@field InitialDelay number
---@field OwnerDraw boolean
---@field ReshowDelay number
---@field ShowAlways boolean
---@field IsBalloon boolean
---@field StripAmpersands boolean
---@field Tag System.Object
---@field ToolTipIcon System.Windows.Forms.ToolTipIcon
---@field ToolTipTitle string
---@field UseAnimation boolean
---@field UseFading boolean
System.Windows.Forms.ToolTip = {}
---@alias CS.System.Windows.Forms.ToolTip System.Windows.Forms.ToolTip
CS.System.Windows.Forms.ToolTip = System.Windows.Forms.ToolTip

---@overload fun() : System.Windows.Forms.ToolTip
---@param cont System.ComponentModel.IContainer
---@return System.Windows.Forms.ToolTip
function System.Windows.Forms.ToolTip.New(cont) end
---@param target System.Object
---@return boolean
function System.Windows.Forms.ToolTip:CanExtend(target) end
---@param control System.Windows.Forms.Control
---@return string
function System.Windows.Forms.ToolTip:GetToolTip(control) end
function System.Windows.Forms.ToolTip:RemoveAll() end
---@param control System.Windows.Forms.Control
---@param caption string
function System.Windows.Forms.ToolTip:SetToolTip(control, caption) end
---@return string
function System.Windows.Forms.ToolTip:ToString() end
---@overload fun(self: System.Windows.Forms.ToolTip, text: string, window: System.Windows.Forms.IWin32Window)
---@overload fun(self: System.Windows.Forms.ToolTip, text: string, window: System.Windows.Forms.IWin32Window, duration: number)
---@overload fun(self: System.Windows.Forms.ToolTip, text: string, window: System.Windows.Forms.IWin32Window, point: System.Drawing.Point)
---@overload fun(self: System.Windows.Forms.ToolTip, text: string, window: System.Windows.Forms.IWin32Window, x: number, y: number)
---@overload fun(self: System.Windows.Forms.ToolTip, text: string, window: System.Windows.Forms.IWin32Window, point: System.Drawing.Point, duration: number)
---@param text string
---@param window System.Windows.Forms.IWin32Window
---@param x number
---@param y number
---@param duration number
function System.Windows.Forms.ToolTip:Show(text, window, x, y, duration) end
---@param win System.Windows.Forms.IWin32Window
function System.Windows.Forms.ToolTip:Hide(win) end

---@class System.Windows.Forms.ToolTip.ToolTipWindow : System.Windows.Forms.Control
System.Windows.Forms.ToolTip.ToolTipWindow = {}
---@alias CS.System.Windows.Forms.ToolTip.ToolTipWindow System.Windows.Forms.ToolTip.ToolTipWindow
CS.System.Windows.Forms.ToolTip.ToolTipWindow = System.Windows.Forms.ToolTip.ToolTipWindow

---@param control System.Windows.Forms.Control
---@param text string
function System.Windows.Forms.ToolTip.ToolTipWindow:PresentModal(control, text) end
---@param control System.Windows.Forms.Control
---@param text string
function System.Windows.Forms.ToolTip.ToolTipWindow:Present(control, text) end

---@class System.Windows.Forms.ToolTip.TipState
---@field Initial System.Windows.Forms.ToolTip.TipState
---@field Show System.Windows.Forms.ToolTip.TipState
---@field Down System.Windows.Forms.ToolTip.TipState
System.Windows.Forms.ToolTip.TipState = {}
---@alias CS.System.Windows.Forms.ToolTip.TipState System.Windows.Forms.ToolTip.TipState
CS.System.Windows.Forms.ToolTip.TipState = System.Windows.Forms.ToolTip.TipState


---@class System.Windows.Forms.ToolTipIcon
---@field None System.Windows.Forms.ToolTipIcon
---@field Info System.Windows.Forms.ToolTipIcon
---@field Warning System.Windows.Forms.ToolTipIcon
---@field Error System.Windows.Forms.ToolTipIcon
System.Windows.Forms.ToolTipIcon = {}
---@alias CS.System.Windows.Forms.ToolTipIcon System.Windows.Forms.ToolTipIcon
CS.System.Windows.Forms.ToolTipIcon = System.Windows.Forms.ToolTipIcon


---@class System.Windows.Forms.ToolWindowManager : System.Windows.Forms.InternalWindowManager
System.Windows.Forms.ToolWindowManager = {}
---@alias CS.System.Windows.Forms.ToolWindowManager System.Windows.Forms.ToolWindowManager
CS.System.Windows.Forms.ToolWindowManager = System.Windows.Forms.ToolWindowManager

---@param form System.Windows.Forms.Form
---@return System.Windows.Forms.ToolWindowManager
function System.Windows.Forms.ToolWindowManager.New(form) end
---@param old_state System.Windows.Forms.FormWindowState
---@param window_state System.Windows.Forms.FormWindowState
function System.Windows.Forms.ToolWindowManager:SetWindowState(old_state, window_state) end

---@class System.Windows.Forms.TrackBar : System.Windows.Forms.Control
---@field AutoSize boolean
---@field BackgroundImage System.Drawing.Image
---@field BackgroundImageLayout System.Windows.Forms.ImageLayout
---@field Font System.Drawing.Font
---@field ForeColor System.Drawing.Color
---@field ImeMode System.Windows.Forms.ImeMode
---@field LargeChange number
---@field Maximum number
---@field Minimum number
---@field Orientation System.Windows.Forms.Orientation
---@field Padding System.Windows.Forms.Padding
---@field RightToLeftLayout boolean
---@field SmallChange number
---@field Text string
---@field TickFrequency number
---@field TickStyle System.Windows.Forms.TickStyle
---@field Value number
System.Windows.Forms.TrackBar = {}
---@alias CS.System.Windows.Forms.TrackBar System.Windows.Forms.TrackBar
CS.System.Windows.Forms.TrackBar = System.Windows.Forms.TrackBar

---@return System.Windows.Forms.TrackBar
function System.Windows.Forms.TrackBar.New() end
function System.Windows.Forms.TrackBar:BeginInit() end
function System.Windows.Forms.TrackBar:EndInit() end
---@param minValue number
---@param maxValue number
function System.Windows.Forms.TrackBar:SetRange(minValue, maxValue) end
---@return string
function System.Windows.Forms.TrackBar:ToString() end

---@class System.Windows.Forms.TrackBarRenderer : System.Object
---@field IsSupported boolean
System.Windows.Forms.TrackBarRenderer = {}
---@alias CS.System.Windows.Forms.TrackBarRenderer System.Windows.Forms.TrackBarRenderer
CS.System.Windows.Forms.TrackBarRenderer = System.Windows.Forms.TrackBarRenderer

---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param state System.Windows.Forms.VisualStyles.TrackBarThumbState
function System.Windows.Forms.TrackBarRenderer.DrawBottomPointingThumb(g, bounds, state) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param state System.Windows.Forms.VisualStyles.TrackBarThumbState
function System.Windows.Forms.TrackBarRenderer.DrawHorizontalThumb(g, bounds, state) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param numTicks number
---@param edgeStyle System.Windows.Forms.VisualStyles.EdgeStyle
function System.Windows.Forms.TrackBarRenderer.DrawHorizontalTicks(g, bounds, numTicks, edgeStyle) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
function System.Windows.Forms.TrackBarRenderer.DrawHorizontalTrack(g, bounds) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param state System.Windows.Forms.VisualStyles.TrackBarThumbState
function System.Windows.Forms.TrackBarRenderer.DrawLeftPointingThumb(g, bounds, state) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param state System.Windows.Forms.VisualStyles.TrackBarThumbState
function System.Windows.Forms.TrackBarRenderer.DrawRightPointingThumb(g, bounds, state) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param state System.Windows.Forms.VisualStyles.TrackBarThumbState
function System.Windows.Forms.TrackBarRenderer.DrawTopPointingThumb(g, bounds, state) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param state System.Windows.Forms.VisualStyles.TrackBarThumbState
function System.Windows.Forms.TrackBarRenderer.DrawVerticalThumb(g, bounds, state) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param numTicks number
---@param edgeStyle System.Windows.Forms.VisualStyles.EdgeStyle
function System.Windows.Forms.TrackBarRenderer.DrawVerticalTicks(g, bounds, numTicks, edgeStyle) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
function System.Windows.Forms.TrackBarRenderer.DrawVerticalTrack(g, bounds) end
---@param g System.Drawing.Graphics
---@param state System.Windows.Forms.VisualStyles.TrackBarThumbState
---@return System.Drawing.Size
function System.Windows.Forms.TrackBarRenderer.GetBottomPointingThumbSize(g, state) end
---@param g System.Drawing.Graphics
---@param state System.Windows.Forms.VisualStyles.TrackBarThumbState
---@return System.Drawing.Size
function System.Windows.Forms.TrackBarRenderer.GetLeftPointingThumbSize(g, state) end
---@param g System.Drawing.Graphics
---@param state System.Windows.Forms.VisualStyles.TrackBarThumbState
---@return System.Drawing.Size
function System.Windows.Forms.TrackBarRenderer.GetRightPointingThumbSize(g, state) end
---@param g System.Drawing.Graphics
---@param state System.Windows.Forms.VisualStyles.TrackBarThumbState
---@return System.Drawing.Size
function System.Windows.Forms.TrackBarRenderer.GetTopPointingThumbSize(g, state) end

---@class System.Windows.Forms.TreeNode : System.MarshalByRefObject
---@field BackColor System.Drawing.Color
---@field Bounds System.Drawing.Rectangle
---@field Checked boolean
---@field ContextMenu System.Windows.Forms.ContextMenu
---@field ContextMenuStrip System.Windows.Forms.ContextMenuStrip
---@field FirstNode System.Windows.Forms.TreeNode
---@field ForeColor System.Drawing.Color
---@field FullPath string
---@field ImageIndex number
---@field ImageKey string
---@field IsEditing boolean
---@field IsExpanded boolean
---@field IsSelected boolean
---@field IsVisible boolean
---@field LastNode System.Windows.Forms.TreeNode
---@field Level number
---@field Name string
---@field NextNode System.Windows.Forms.TreeNode
---@field NextVisibleNode System.Windows.Forms.TreeNode
---@field NodeFont System.Drawing.Font
---@field Nodes System.Windows.Forms.TreeNodeCollection
---@field Parent System.Windows.Forms.TreeNode
---@field PrevNode System.Windows.Forms.TreeNode
---@field PrevVisibleNode System.Windows.Forms.TreeNode
---@field SelectedImageIndex number
---@field SelectedImageKey string
---@field StateImageIndex number
---@field StateImageKey string
---@field Tag System.Object
---@field Text string
---@field ToolTipText string
---@field TreeView System.Windows.Forms.TreeView
---@field Handle System.IntPtr
---@field Index number
System.Windows.Forms.TreeNode = {}
---@alias CS.System.Windows.Forms.TreeNode System.Windows.Forms.TreeNode
CS.System.Windows.Forms.TreeNode = System.Windows.Forms.TreeNode

---@overload fun() : System.Windows.Forms.TreeNode
---@overload fun(text: string) : System.Windows.Forms.TreeNode
---@overload fun(text: string, children: System.Windows.Forms.TreeNode[]) : System.Windows.Forms.TreeNode
---@overload fun(text: string, imageIndex: number, selectedImageIndex: number) : System.Windows.Forms.TreeNode
---@param text string
---@param imageIndex number
---@param selectedImageIndex number
---@param children System.Windows.Forms.TreeNode[]
---@return System.Windows.Forms.TreeNode
function System.Windows.Forms.TreeNode.New(text, imageIndex, selectedImageIndex, children) end
---@param tree System.Windows.Forms.TreeView
---@param handle System.IntPtr
---@return System.Windows.Forms.TreeNode
function System.Windows.Forms.TreeNode.FromHandle(tree, handle) end
---@return System.Object
function System.Windows.Forms.TreeNode:Clone() end
function System.Windows.Forms.TreeNode:BeginEdit() end
---@overload fun()
---@param ignoreChildren boolean
function System.Windows.Forms.TreeNode:Collapse(ignoreChildren) end
---@param cancel boolean
function System.Windows.Forms.TreeNode:EndEdit(cancel) end
function System.Windows.Forms.TreeNode:Expand() end
function System.Windows.Forms.TreeNode:ExpandAll() end
function System.Windows.Forms.TreeNode:EnsureVisible() end
---@param includeSubTrees boolean
---@return number
function System.Windows.Forms.TreeNode:GetNodeCount(includeSubTrees) end
function System.Windows.Forms.TreeNode:Remove() end
function System.Windows.Forms.TreeNode:Toggle() end
---@return string
function System.Windows.Forms.TreeNode:ToString() end

---@class System.Windows.Forms.TreeNodeCollection : System.Object
---@field Count number
---@field IsReadOnly boolean
---@field Item System.Windows.Forms.TreeNode
---@field Item System.Windows.Forms.TreeNode
System.Windows.Forms.TreeNodeCollection = {}
---@alias CS.System.Windows.Forms.TreeNodeCollection System.Windows.Forms.TreeNodeCollection
CS.System.Windows.Forms.TreeNodeCollection = System.Windows.Forms.TreeNodeCollection

---@overload fun(self: System.Windows.Forms.TreeNodeCollection, text: string) : System.Windows.Forms.TreeNode
---@overload fun(self: System.Windows.Forms.TreeNodeCollection, node: System.Windows.Forms.TreeNode) : number
---@overload fun(self: System.Windows.Forms.TreeNodeCollection, key: string, text: string) : System.Windows.Forms.TreeNode
---@overload fun(self: System.Windows.Forms.TreeNodeCollection, key: string, text: string, imageIndex: number) : System.Windows.Forms.TreeNode
---@overload fun(self: System.Windows.Forms.TreeNodeCollection, key: string, text: string, imageKey: string) : System.Windows.Forms.TreeNode
---@overload fun(self: System.Windows.Forms.TreeNodeCollection, key: string, text: string, imageIndex: number, selectedImageIndex: number) : System.Windows.Forms.TreeNode
---@param key string
---@param text string
---@param imageKey string
---@param selectedImageKey string
---@return System.Windows.Forms.TreeNode
function System.Windows.Forms.TreeNodeCollection:Add(key, text, imageKey, selectedImageKey) end
---@param nodes System.Windows.Forms.TreeNode[]
function System.Windows.Forms.TreeNodeCollection:AddRange(nodes) end
function System.Windows.Forms.TreeNodeCollection:Clear() end
---@param node System.Windows.Forms.TreeNode
---@return boolean
function System.Windows.Forms.TreeNodeCollection:Contains(node) end
---@param key string
---@return boolean
function System.Windows.Forms.TreeNodeCollection:ContainsKey(key) end
---@param dest System.Array
---@param index number
function System.Windows.Forms.TreeNodeCollection:CopyTo(dest, index) end
---@return System.Collections.IEnumerator
function System.Windows.Forms.TreeNodeCollection:GetEnumerator() end
---@param node System.Windows.Forms.TreeNode
---@return number
function System.Windows.Forms.TreeNodeCollection:IndexOf(node) end
---@param key string
---@return number
function System.Windows.Forms.TreeNodeCollection:IndexOfKey(key) end
---@overload fun(self: System.Windows.Forms.TreeNodeCollection, index: number, text: string) : System.Windows.Forms.TreeNode
---@overload fun(self: System.Windows.Forms.TreeNodeCollection, index: number, node: System.Windows.Forms.TreeNode)
---@overload fun(self: System.Windows.Forms.TreeNodeCollection, index: number, key: string, text: string) : System.Windows.Forms.TreeNode
---@overload fun(self: System.Windows.Forms.TreeNodeCollection, index: number, key: string, text: string, imageIndex: number) : System.Windows.Forms.TreeNode
---@overload fun(self: System.Windows.Forms.TreeNodeCollection, index: number, key: string, text: string, imageKey: string) : System.Windows.Forms.TreeNode
---@overload fun(self: System.Windows.Forms.TreeNodeCollection, index: number, key: string, text: string, imageIndex: number, selectedImageIndex: number) : System.Windows.Forms.TreeNode
---@param index number
---@param key string
---@param text string
---@param imageKey string
---@param selectedImageKey string
---@return System.Windows.Forms.TreeNode
function System.Windows.Forms.TreeNodeCollection:Insert(index, key, text, imageKey, selectedImageKey) end
---@param node System.Windows.Forms.TreeNode
function System.Windows.Forms.TreeNodeCollection:Remove(node) end
---@param index number
function System.Windows.Forms.TreeNodeCollection:RemoveAt(index) end
---@param key string
function System.Windows.Forms.TreeNodeCollection:RemoveByKey(key) end
---@param key string
---@param searchAllChildren boolean
---@return System.Windows.Forms.TreeNode[]
function System.Windows.Forms.TreeNodeCollection:Find(key, searchAllChildren) end

---@class System.Windows.Forms.TreeNodeCollection.TreeNodeEnumerator : System.Object
---@field Current System.Object
System.Windows.Forms.TreeNodeCollection.TreeNodeEnumerator = {}
---@alias CS.System.Windows.Forms.TreeNodeCollection.TreeNodeEnumerator System.Windows.Forms.TreeNodeCollection.TreeNodeEnumerator
CS.System.Windows.Forms.TreeNodeCollection.TreeNodeEnumerator = System.Windows.Forms.TreeNodeCollection.TreeNodeEnumerator

---@param collection System.Windows.Forms.TreeNodeCollection
---@return System.Windows.Forms.TreeNodeCollection.TreeNodeEnumerator
function System.Windows.Forms.TreeNodeCollection.TreeNodeEnumerator.New(collection) end
---@return boolean
function System.Windows.Forms.TreeNodeCollection.TreeNodeEnumerator:MoveNext() end
function System.Windows.Forms.TreeNodeCollection.TreeNodeEnumerator:Reset() end

---@class System.Windows.Forms.TreeNodeCollection.TreeNodeComparer : System.Object
System.Windows.Forms.TreeNodeCollection.TreeNodeComparer = {}
---@alias CS.System.Windows.Forms.TreeNodeCollection.TreeNodeComparer System.Windows.Forms.TreeNodeCollection.TreeNodeComparer
CS.System.Windows.Forms.TreeNodeCollection.TreeNodeComparer = System.Windows.Forms.TreeNodeCollection.TreeNodeComparer

---@param compare System.Globalization.CompareInfo
---@return System.Windows.Forms.TreeNodeCollection.TreeNodeComparer
function System.Windows.Forms.TreeNodeCollection.TreeNodeComparer.New(compare) end
---@param x System.Object
---@param y System.Object
---@return number
function System.Windows.Forms.TreeNodeCollection.TreeNodeComparer:Compare(x, y) end

---@class System.Windows.Forms.TreeNodeConverter : System.ComponentModel.TypeConverter
System.Windows.Forms.TreeNodeConverter = {}
---@alias CS.System.Windows.Forms.TreeNodeConverter System.Windows.Forms.TreeNodeConverter
CS.System.Windows.Forms.TreeNodeConverter = System.Windows.Forms.TreeNodeConverter

---@return System.Windows.Forms.TreeNodeConverter
function System.Windows.Forms.TreeNodeConverter.New() end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param destinationType System.Type
---@return boolean
function System.Windows.Forms.TreeNodeConverter:CanConvertTo(context, destinationType) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@param destinationType System.Type
---@return System.Object
function System.Windows.Forms.TreeNodeConverter:ConvertTo(context, culture, value, destinationType) end

---@class System.Windows.Forms.TreeNodeMouseClickEventArgs : System.Windows.Forms.MouseEventArgs
---@field Node System.Windows.Forms.TreeNode
System.Windows.Forms.TreeNodeMouseClickEventArgs = {}
---@alias CS.System.Windows.Forms.TreeNodeMouseClickEventArgs System.Windows.Forms.TreeNodeMouseClickEventArgs
CS.System.Windows.Forms.TreeNodeMouseClickEventArgs = System.Windows.Forms.TreeNodeMouseClickEventArgs

---@param node System.Windows.Forms.TreeNode
---@param button System.Windows.Forms.MouseButtons
---@param clicks number
---@param x number
---@param y number
---@return System.Windows.Forms.TreeNodeMouseClickEventArgs
function System.Windows.Forms.TreeNodeMouseClickEventArgs.New(node, button, clicks, x, y) end

---@class System.Windows.Forms.TreeNodeMouseClickEventHandler : System.MulticastDelegate
System.Windows.Forms.TreeNodeMouseClickEventHandler = {}
---@alias CS.System.Windows.Forms.TreeNodeMouseClickEventHandler System.Windows.Forms.TreeNodeMouseClickEventHandler
CS.System.Windows.Forms.TreeNodeMouseClickEventHandler = System.Windows.Forms.TreeNodeMouseClickEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.TreeNodeMouseClickEventHandler
function System.Windows.Forms.TreeNodeMouseClickEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Windows.Forms.TreeNodeMouseClickEventArgs
function System.Windows.Forms.TreeNodeMouseClickEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Windows.Forms.TreeNodeMouseClickEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Windows.Forms.TreeNodeMouseClickEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Windows.Forms.TreeNodeMouseClickEventHandler:EndInvoke(result) end

---@class System.Windows.Forms.TreeNodeMouseHoverEventArgs : System.EventArgs
---@field Node System.Windows.Forms.TreeNode
System.Windows.Forms.TreeNodeMouseHoverEventArgs = {}
---@alias CS.System.Windows.Forms.TreeNodeMouseHoverEventArgs System.Windows.Forms.TreeNodeMouseHoverEventArgs
CS.System.Windows.Forms.TreeNodeMouseHoverEventArgs = System.Windows.Forms.TreeNodeMouseHoverEventArgs

---@param node System.Windows.Forms.TreeNode
---@return System.Windows.Forms.TreeNodeMouseHoverEventArgs
function System.Windows.Forms.TreeNodeMouseHoverEventArgs.New(node) end

---@class System.Windows.Forms.TreeNodeMouseHoverEventHandler : System.MulticastDelegate
System.Windows.Forms.TreeNodeMouseHoverEventHandler = {}
---@alias CS.System.Windows.Forms.TreeNodeMouseHoverEventHandler System.Windows.Forms.TreeNodeMouseHoverEventHandler
CS.System.Windows.Forms.TreeNodeMouseHoverEventHandler = System.Windows.Forms.TreeNodeMouseHoverEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.TreeNodeMouseHoverEventHandler
function System.Windows.Forms.TreeNodeMouseHoverEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Windows.Forms.TreeNodeMouseHoverEventArgs
function System.Windows.Forms.TreeNodeMouseHoverEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Windows.Forms.TreeNodeMouseHoverEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Windows.Forms.TreeNodeMouseHoverEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Windows.Forms.TreeNodeMouseHoverEventHandler:EndInvoke(result) end

---@class System.Windows.Forms.TreeNodeStates
---@field Selected System.Windows.Forms.TreeNodeStates
---@field Grayed System.Windows.Forms.TreeNodeStates
---@field Checked System.Windows.Forms.TreeNodeStates
---@field Focused System.Windows.Forms.TreeNodeStates
---@field Default System.Windows.Forms.TreeNodeStates
---@field Hot System.Windows.Forms.TreeNodeStates
---@field Marked System.Windows.Forms.TreeNodeStates
---@field Indeterminate System.Windows.Forms.TreeNodeStates
---@field ShowKeyboardCues System.Windows.Forms.TreeNodeStates
System.Windows.Forms.TreeNodeStates = {}
---@alias CS.System.Windows.Forms.TreeNodeStates System.Windows.Forms.TreeNodeStates
CS.System.Windows.Forms.TreeNodeStates = System.Windows.Forms.TreeNodeStates


---@class System.Windows.Forms.TreeView : System.Windows.Forms.Control
---@field BackColor System.Drawing.Color
---@field BackgroundImage System.Drawing.Image
---@field BorderStyle System.Windows.Forms.BorderStyle
---@field CheckBoxes boolean
---@field ForeColor System.Drawing.Color
---@field FullRowSelect boolean
---@field HideSelection boolean
---@field HotTracking boolean
---@field ImageIndex number
---@field ImageList System.Windows.Forms.ImageList
---@field Indent number
---@field ItemHeight number
---@field LabelEdit boolean
---@field Nodes System.Windows.Forms.TreeNodeCollection
---@field Padding System.Windows.Forms.Padding
---@field PathSeparator string
---@field RightToLeftLayout boolean
---@field Scrollable boolean
---@field SelectedImageIndex number
---@field SelectedNode System.Windows.Forms.TreeNode
---@field ShowLines boolean
---@field ShowNodeToolTips boolean
---@field ShowPlusMinus boolean
---@field ShowRootLines boolean
---@field Sorted boolean
---@field StateImageList System.Windows.Forms.ImageList
---@field Text string
---@field TopNode System.Windows.Forms.TreeNode
---@field TreeViewNodeSorter System.Collections.IComparer
---@field VisibleCount number
---@field LineColor System.Drawing.Color
---@field ImageKey string
---@field SelectedImageKey string
---@field BackgroundImageLayout System.Windows.Forms.ImageLayout
---@field DrawMode System.Windows.Forms.TreeViewDrawMode
System.Windows.Forms.TreeView = {}
---@alias CS.System.Windows.Forms.TreeView System.Windows.Forms.TreeView
CS.System.Windows.Forms.TreeView = System.Windows.Forms.TreeView

---@return System.Windows.Forms.TreeView
function System.Windows.Forms.TreeView.New() end
function System.Windows.Forms.TreeView:BeginUpdate() end
function System.Windows.Forms.TreeView:EndUpdate() end
function System.Windows.Forms.TreeView:Sort() end
function System.Windows.Forms.TreeView:ExpandAll() end
function System.Windows.Forms.TreeView:CollapseAll() end
---@overload fun(self: System.Windows.Forms.TreeView, pt: System.Drawing.Point) : System.Windows.Forms.TreeNode
---@param x number
---@param y number
---@return System.Windows.Forms.TreeNode
function System.Windows.Forms.TreeView:GetNodeAt(x, y) end
---@param includeSubTrees boolean
---@return number
function System.Windows.Forms.TreeView:GetNodeCount(includeSubTrees) end
---@overload fun(self: System.Windows.Forms.TreeView, pt: System.Drawing.Point) : System.Windows.Forms.TreeViewHitTestInfo
---@param x number
---@param y number
---@return System.Windows.Forms.TreeViewHitTestInfo
function System.Windows.Forms.TreeView:HitTest(x, y) end
---@return string
function System.Windows.Forms.TreeView:ToString() end

---@class System.Windows.Forms.TreeViewAction
---@field Unknown System.Windows.Forms.TreeViewAction
---@field ByKeyboard System.Windows.Forms.TreeViewAction
---@field ByMouse System.Windows.Forms.TreeViewAction
---@field Collapse System.Windows.Forms.TreeViewAction
---@field Expand System.Windows.Forms.TreeViewAction
System.Windows.Forms.TreeViewAction = {}
---@alias CS.System.Windows.Forms.TreeViewAction System.Windows.Forms.TreeViewAction
CS.System.Windows.Forms.TreeViewAction = System.Windows.Forms.TreeViewAction


---@class System.Windows.Forms.TreeViewCancelEventArgs : System.ComponentModel.CancelEventArgs
---@field Node System.Windows.Forms.TreeNode
---@field Action System.Windows.Forms.TreeViewAction
System.Windows.Forms.TreeViewCancelEventArgs = {}
---@alias CS.System.Windows.Forms.TreeViewCancelEventArgs System.Windows.Forms.TreeViewCancelEventArgs
CS.System.Windows.Forms.TreeViewCancelEventArgs = System.Windows.Forms.TreeViewCancelEventArgs

---@param node System.Windows.Forms.TreeNode
---@param cancel boolean
---@param action System.Windows.Forms.TreeViewAction
---@return System.Windows.Forms.TreeViewCancelEventArgs
function System.Windows.Forms.TreeViewCancelEventArgs.New(node, cancel, action) end

---@class System.Windows.Forms.TreeViewCancelEventHandler : System.MulticastDelegate
System.Windows.Forms.TreeViewCancelEventHandler = {}
---@alias CS.System.Windows.Forms.TreeViewCancelEventHandler System.Windows.Forms.TreeViewCancelEventHandler
CS.System.Windows.Forms.TreeViewCancelEventHandler = System.Windows.Forms.TreeViewCancelEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.TreeViewCancelEventHandler
function System.Windows.Forms.TreeViewCancelEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Windows.Forms.TreeViewCancelEventArgs
function System.Windows.Forms.TreeViewCancelEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Windows.Forms.TreeViewCancelEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Windows.Forms.TreeViewCancelEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Windows.Forms.TreeViewCancelEventHandler:EndInvoke(result) end

---@class System.Windows.Forms.TreeViewDrawMode
---@field Normal System.Windows.Forms.TreeViewDrawMode
---@field OwnerDrawText System.Windows.Forms.TreeViewDrawMode
---@field OwnerDrawAll System.Windows.Forms.TreeViewDrawMode
System.Windows.Forms.TreeViewDrawMode = {}
---@alias CS.System.Windows.Forms.TreeViewDrawMode System.Windows.Forms.TreeViewDrawMode
CS.System.Windows.Forms.TreeViewDrawMode = System.Windows.Forms.TreeViewDrawMode


---@class System.Windows.Forms.TreeViewEventArgs : System.EventArgs
---@field Action System.Windows.Forms.TreeViewAction
---@field Node System.Windows.Forms.TreeNode
System.Windows.Forms.TreeViewEventArgs = {}
---@alias CS.System.Windows.Forms.TreeViewEventArgs System.Windows.Forms.TreeViewEventArgs
CS.System.Windows.Forms.TreeViewEventArgs = System.Windows.Forms.TreeViewEventArgs

---@overload fun(node: System.Windows.Forms.TreeNode) : System.Windows.Forms.TreeViewEventArgs
---@param node System.Windows.Forms.TreeNode
---@param action System.Windows.Forms.TreeViewAction
---@return System.Windows.Forms.TreeViewEventArgs
function System.Windows.Forms.TreeViewEventArgs.New(node, action) end

---@class System.Windows.Forms.TreeViewEventHandler : System.MulticastDelegate
System.Windows.Forms.TreeViewEventHandler = {}
---@alias CS.System.Windows.Forms.TreeViewEventHandler System.Windows.Forms.TreeViewEventHandler
CS.System.Windows.Forms.TreeViewEventHandler = System.Windows.Forms.TreeViewEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.TreeViewEventHandler
function System.Windows.Forms.TreeViewEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Windows.Forms.TreeViewEventArgs
function System.Windows.Forms.TreeViewEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Windows.Forms.TreeViewEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Windows.Forms.TreeViewEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Windows.Forms.TreeViewEventHandler:EndInvoke(result) end

---@class System.Windows.Forms.TreeViewHitTestInfo : System.Object
---@field Node System.Windows.Forms.TreeNode
---@field Location System.Windows.Forms.TreeViewHitTestLocations
System.Windows.Forms.TreeViewHitTestInfo = {}
---@alias CS.System.Windows.Forms.TreeViewHitTestInfo System.Windows.Forms.TreeViewHitTestInfo
CS.System.Windows.Forms.TreeViewHitTestInfo = System.Windows.Forms.TreeViewHitTestInfo

---@param hitNode System.Windows.Forms.TreeNode
---@param hitLocation System.Windows.Forms.TreeViewHitTestLocations
---@return System.Windows.Forms.TreeViewHitTestInfo
function System.Windows.Forms.TreeViewHitTestInfo.New(hitNode, hitLocation) end

---@class System.Windows.Forms.TreeViewHitTestLocations
---@field None System.Windows.Forms.TreeViewHitTestLocations
---@field Image System.Windows.Forms.TreeViewHitTestLocations
---@field Label System.Windows.Forms.TreeViewHitTestLocations
---@field Indent System.Windows.Forms.TreeViewHitTestLocations
---@field PlusMinus System.Windows.Forms.TreeViewHitTestLocations
---@field RightOfLabel System.Windows.Forms.TreeViewHitTestLocations
---@field StateImage System.Windows.Forms.TreeViewHitTestLocations
---@field AboveClientArea System.Windows.Forms.TreeViewHitTestLocations
---@field BelowClientArea System.Windows.Forms.TreeViewHitTestLocations
---@field RightOfClientArea System.Windows.Forms.TreeViewHitTestLocations
---@field LeftOfClientArea System.Windows.Forms.TreeViewHitTestLocations
System.Windows.Forms.TreeViewHitTestLocations = {}
---@alias CS.System.Windows.Forms.TreeViewHitTestLocations System.Windows.Forms.TreeViewHitTestLocations
CS.System.Windows.Forms.TreeViewHitTestLocations = System.Windows.Forms.TreeViewHitTestLocations


---@class System.Windows.Forms.TreeViewImageIndexConverter : System.Windows.Forms.ImageIndexConverter
System.Windows.Forms.TreeViewImageIndexConverter = {}
---@alias CS.System.Windows.Forms.TreeViewImageIndexConverter System.Windows.Forms.TreeViewImageIndexConverter
CS.System.Windows.Forms.TreeViewImageIndexConverter = System.Windows.Forms.TreeViewImageIndexConverter

---@return System.Windows.Forms.TreeViewImageIndexConverter
function System.Windows.Forms.TreeViewImageIndexConverter.New() end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@return System.Object
function System.Windows.Forms.TreeViewImageIndexConverter:ConvertFrom(context, culture, value) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@param destinationType System.Type
---@return System.Object
function System.Windows.Forms.TreeViewImageIndexConverter:ConvertTo(context, culture, value, destinationType) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return System.ComponentModel.TypeConverter.StandardValuesCollection
function System.Windows.Forms.TreeViewImageIndexConverter:GetStandardValues(context) end

---@class System.Windows.Forms.TreeViewImageKeyConverter : System.Windows.Forms.ImageKeyConverter
System.Windows.Forms.TreeViewImageKeyConverter = {}
---@alias CS.System.Windows.Forms.TreeViewImageKeyConverter System.Windows.Forms.TreeViewImageKeyConverter
CS.System.Windows.Forms.TreeViewImageKeyConverter = System.Windows.Forms.TreeViewImageKeyConverter

---@return System.Windows.Forms.TreeViewImageKeyConverter
function System.Windows.Forms.TreeViewImageKeyConverter.New() end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@param destinationType System.Type
---@return System.Object
function System.Windows.Forms.TreeViewImageKeyConverter:ConvertTo(context, culture, value, destinationType) end

---@class System.Windows.Forms.TypeValidationEventArgs : System.EventArgs
---@field Cancel boolean
---@field IsValidInput boolean
---@field Message string
---@field ReturnValue System.Object
---@field ValidatingType System.Type
System.Windows.Forms.TypeValidationEventArgs = {}
---@alias CS.System.Windows.Forms.TypeValidationEventArgs System.Windows.Forms.TypeValidationEventArgs
CS.System.Windows.Forms.TypeValidationEventArgs = System.Windows.Forms.TypeValidationEventArgs

---@param validatingType System.Type
---@param isValidInput boolean
---@param returnValue System.Object
---@param message string
---@return System.Windows.Forms.TypeValidationEventArgs
function System.Windows.Forms.TypeValidationEventArgs.New(validatingType, isValidInput, returnValue, message) end

---@class System.Windows.Forms.TypeValidationEventHandler : System.MulticastDelegate
System.Windows.Forms.TypeValidationEventHandler = {}
---@alias CS.System.Windows.Forms.TypeValidationEventHandler System.Windows.Forms.TypeValidationEventHandler
CS.System.Windows.Forms.TypeValidationEventHandler = System.Windows.Forms.TypeValidationEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.TypeValidationEventHandler
function System.Windows.Forms.TypeValidationEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Windows.Forms.TypeValidationEventArgs
function System.Windows.Forms.TypeValidationEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Windows.Forms.TypeValidationEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Windows.Forms.TypeValidationEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Windows.Forms.TypeValidationEventHandler:EndInvoke(result) end

---@class System.Windows.Forms.UICues
---@field None System.Windows.Forms.UICues
---@field ShowFocus System.Windows.Forms.UICues
---@field ShowKeyboard System.Windows.Forms.UICues
---@field Shown System.Windows.Forms.UICues
---@field ChangeFocus System.Windows.Forms.UICues
---@field ChangeKeyboard System.Windows.Forms.UICues
---@field Changed System.Windows.Forms.UICues
System.Windows.Forms.UICues = {}
---@alias CS.System.Windows.Forms.UICues System.Windows.Forms.UICues
CS.System.Windows.Forms.UICues = System.Windows.Forms.UICues


---@class System.Windows.Forms.UICuesEventArgs : System.EventArgs
---@field Changed System.Windows.Forms.UICues
---@field ChangeFocus boolean
---@field ChangeKeyboard boolean
---@field ShowFocus boolean
---@field ShowKeyboard boolean
System.Windows.Forms.UICuesEventArgs = {}
---@alias CS.System.Windows.Forms.UICuesEventArgs System.Windows.Forms.UICuesEventArgs
CS.System.Windows.Forms.UICuesEventArgs = System.Windows.Forms.UICuesEventArgs

---@param uicues System.Windows.Forms.UICues
---@return System.Windows.Forms.UICuesEventArgs
function System.Windows.Forms.UICuesEventArgs.New(uicues) end

---@class System.Windows.Forms.UICuesEventHandler : System.MulticastDelegate
System.Windows.Forms.UICuesEventHandler = {}
---@alias CS.System.Windows.Forms.UICuesEventHandler System.Windows.Forms.UICuesEventHandler
CS.System.Windows.Forms.UICuesEventHandler = System.Windows.Forms.UICuesEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.UICuesEventHandler
function System.Windows.Forms.UICuesEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Windows.Forms.UICuesEventArgs
function System.Windows.Forms.UICuesEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Windows.Forms.UICuesEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Windows.Forms.UICuesEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Windows.Forms.UICuesEventHandler:EndInvoke(result) end

---@class System.Windows.Forms.UnhandledExceptionMode
---@field Automatic System.Windows.Forms.UnhandledExceptionMode
---@field ThrowException System.Windows.Forms.UnhandledExceptionMode
---@field CatchException System.Windows.Forms.UnhandledExceptionMode
System.Windows.Forms.UnhandledExceptionMode = {}
---@alias CS.System.Windows.Forms.UnhandledExceptionMode System.Windows.Forms.UnhandledExceptionMode
CS.System.Windows.Forms.UnhandledExceptionMode = System.Windows.Forms.UnhandledExceptionMode


---@class System.Windows.Forms.UpDownBase : System.Windows.Forms.ContainerControl
---@field AutoScroll boolean
---@field AutoScrollMargin System.Drawing.Size
---@field AutoScrollMinSize System.Drawing.Size
---@field AutoSize boolean
---@field BackColor System.Drawing.Color
---@field BackgroundImage System.Drawing.Image
---@field BackgroundImageLayout System.Windows.Forms.ImageLayout
---@field BorderStyle System.Windows.Forms.BorderStyle
---@field ContextMenu System.Windows.Forms.ContextMenu
---@field ContextMenuStrip System.Windows.Forms.ContextMenuStrip
---@field DockPadding System.Windows.Forms.ScrollableControl.DockPaddingEdges
---@field Focused boolean
---@field ForeColor System.Drawing.Color
---@field InterceptArrowKeys boolean
---@field MaximumSize System.Drawing.Size
---@field MinimumSize System.Drawing.Size
---@field PreferredHeight number
---@field ReadOnly boolean
---@field Text string
---@field TextAlign System.Windows.Forms.HorizontalAlignment
---@field UpDownAlign System.Windows.Forms.LeftRightAlignment
System.Windows.Forms.UpDownBase = {}
---@alias CS.System.Windows.Forms.UpDownBase System.Windows.Forms.UpDownBase
CS.System.Windows.Forms.UpDownBase = System.Windows.Forms.UpDownBase

---@return System.Windows.Forms.UpDownBase
function System.Windows.Forms.UpDownBase.New() end
function System.Windows.Forms.UpDownBase:DownButton() end
---@param start number
---@param length number
function System.Windows.Forms.UpDownBase:Select(start, length) end
function System.Windows.Forms.UpDownBase:UpButton() end

---@class System.Windows.Forms.UpDownBase.UpDownSpinner : System.Windows.Forms.Control
System.Windows.Forms.UpDownBase.UpDownSpinner = {}
---@alias CS.System.Windows.Forms.UpDownBase.UpDownSpinner System.Windows.Forms.UpDownBase.UpDownSpinner
CS.System.Windows.Forms.UpDownBase.UpDownSpinner = System.Windows.Forms.UpDownBase.UpDownSpinner

---@param owner System.Windows.Forms.UpDownBase
---@return System.Windows.Forms.UpDownBase.UpDownSpinner
function System.Windows.Forms.UpDownBase.UpDownSpinner.New(owner) end

---@class System.Windows.Forms.UpDownBase.UpDownTextBox : System.Windows.Forms.TextBox
System.Windows.Forms.UpDownBase.UpDownTextBox = {}
---@alias CS.System.Windows.Forms.UpDownBase.UpDownTextBox System.Windows.Forms.UpDownBase.UpDownTextBox
CS.System.Windows.Forms.UpDownBase.UpDownTextBox = System.Windows.Forms.UpDownBase.UpDownTextBox

---@param owner System.Windows.Forms.UpDownBase
---@return System.Windows.Forms.UpDownBase.UpDownTextBox
function System.Windows.Forms.UpDownBase.UpDownTextBox.New(owner) end

---@class System.Windows.Forms.UpDownEventArgs : System.EventArgs
---@field ButtonID number
System.Windows.Forms.UpDownEventArgs = {}
---@alias CS.System.Windows.Forms.UpDownEventArgs System.Windows.Forms.UpDownEventArgs
CS.System.Windows.Forms.UpDownEventArgs = System.Windows.Forms.UpDownEventArgs

---@param buttonPushed number
---@return System.Windows.Forms.UpDownEventArgs
function System.Windows.Forms.UpDownEventArgs.New(buttonPushed) end

---@class System.Windows.Forms.UpDownEventHandler : System.MulticastDelegate
System.Windows.Forms.UpDownEventHandler = {}
---@alias CS.System.Windows.Forms.UpDownEventHandler System.Windows.Forms.UpDownEventHandler
CS.System.Windows.Forms.UpDownEventHandler = System.Windows.Forms.UpDownEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.UpDownEventHandler
function System.Windows.Forms.UpDownEventHandler.New(object, method) end
---@param source System.Object
---@param e System.Windows.Forms.UpDownEventArgs
function System.Windows.Forms.UpDownEventHandler:Invoke(source, e) end
---@param source System.Object
---@param e System.Windows.Forms.UpDownEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Windows.Forms.UpDownEventHandler:BeginInvoke(source, e, callback, object) end
---@param result System.IAsyncResult
function System.Windows.Forms.UpDownEventHandler:EndInvoke(result) end

---@class System.Windows.Forms.UserControl : System.Windows.Forms.ContainerControl
---@field AutoSize boolean
---@field AutoSizeMode System.Windows.Forms.AutoSizeMode
---@field AutoValidate System.Windows.Forms.AutoValidate
---@field Text string
---@field BorderStyle System.Windows.Forms.BorderStyle
System.Windows.Forms.UserControl = {}
---@alias CS.System.Windows.Forms.UserControl System.Windows.Forms.UserControl
CS.System.Windows.Forms.UserControl = System.Windows.Forms.UserControl

---@return System.Windows.Forms.UserControl
function System.Windows.Forms.UserControl.New() end
---@overload fun() : boolean
---@param validationConstraints System.Windows.Forms.ValidationConstraints
---@return boolean
function System.Windows.Forms.UserControl:ValidateChildren(validationConstraints) end

---@class System.Windows.Forms.VScrollBar : System.Windows.Forms.ScrollBar
---@field RightToLeft System.Windows.Forms.RightToLeft
System.Windows.Forms.VScrollBar = {}
---@alias CS.System.Windows.Forms.VScrollBar System.Windows.Forms.VScrollBar
CS.System.Windows.Forms.VScrollBar = System.Windows.Forms.VScrollBar

---@return System.Windows.Forms.VScrollBar
function System.Windows.Forms.VScrollBar.New() end

---@class System.Windows.Forms.VScrollProperties : System.Windows.Forms.ScrollProperties
System.Windows.Forms.VScrollProperties = {}
---@alias CS.System.Windows.Forms.VScrollProperties System.Windows.Forms.VScrollProperties
CS.System.Windows.Forms.VScrollProperties = System.Windows.Forms.VScrollProperties

---@param container System.Windows.Forms.ScrollableControl
---@return System.Windows.Forms.VScrollProperties
function System.Windows.Forms.VScrollProperties.New(container) end

---@class System.Windows.Forms.ValidationConstraints
---@field None System.Windows.Forms.ValidationConstraints
---@field Selectable System.Windows.Forms.ValidationConstraints
---@field Enabled System.Windows.Forms.ValidationConstraints
---@field Visible System.Windows.Forms.ValidationConstraints
---@field TabStop System.Windows.Forms.ValidationConstraints
---@field ImmediateChildren System.Windows.Forms.ValidationConstraints
System.Windows.Forms.ValidationConstraints = {}
---@alias CS.System.Windows.Forms.ValidationConstraints System.Windows.Forms.ValidationConstraints
CS.System.Windows.Forms.ValidationConstraints = System.Windows.Forms.ValidationConstraints


---@class System.Windows.Forms.View
---@field LargeIcon System.Windows.Forms.View
---@field Details System.Windows.Forms.View
---@field SmallIcon System.Windows.Forms.View
---@field List System.Windows.Forms.View
---@field Tile System.Windows.Forms.View
System.Windows.Forms.View = {}
---@alias CS.System.Windows.Forms.View System.Windows.Forms.View
CS.System.Windows.Forms.View = System.Windows.Forms.View


---@class System.Windows.Forms.WebBrowser : System.Windows.Forms.WebBrowserBase
---@field AllowNavigation boolean
---@field AllowWebBrowserDrop boolean
---@field CanGoBack boolean
---@field CanGoForward boolean
---@field Document System.Windows.Forms.HtmlDocument
---@field DocumentStream System.IO.Stream
---@field DocumentText string
---@field DocumentTitle string
---@field DocumentType string
---@field EncryptionLevel System.Windows.Forms.WebBrowserEncryptionLevel
---@field Focused boolean
---@field IsBusy boolean
---@field IsOffline boolean
---@field IsWebBrowserContextMenuEnabled boolean
---@field ObjectForScripting System.Object
---@field ReadyState System.Windows.Forms.WebBrowserReadyState
---@field ScriptErrorsSuppressed boolean
---@field ScrollBarsEnabled boolean
---@field StatusText string
---@field Url System.Uri
---@field Version System.Version
---@field WebBrowserShortcutsEnabled boolean
---@field Padding System.Windows.Forms.Padding
System.Windows.Forms.WebBrowser = {}
---@alias CS.System.Windows.Forms.WebBrowser System.Windows.Forms.WebBrowser
CS.System.Windows.Forms.WebBrowser = System.Windows.Forms.WebBrowser

---@return System.Windows.Forms.WebBrowser
function System.Windows.Forms.WebBrowser.New() end
---@return boolean
function System.Windows.Forms.WebBrowser:GoBack() end
---@return boolean
function System.Windows.Forms.WebBrowser:GoForward() end
function System.Windows.Forms.WebBrowser:GoHome() end
---@overload fun(self: System.Windows.Forms.WebBrowser, urlString: string)
---@overload fun(self: System.Windows.Forms.WebBrowser, url: System.Uri)
---@overload fun(self: System.Windows.Forms.WebBrowser, urlString: string, newWindow: boolean)
---@overload fun(self: System.Windows.Forms.WebBrowser, urlString: string, targetFrameName: string)
---@overload fun(self: System.Windows.Forms.WebBrowser, url: System.Uri, newWindow: boolean)
---@overload fun(self: System.Windows.Forms.WebBrowser, url: System.Uri, targetFrameName: string)
---@overload fun(self: System.Windows.Forms.WebBrowser, urlString: string, targetFrameName: string, postData: System.Byte[], additionalHeaders: string)
---@param url System.Uri
---@param targetFrameName string
---@param postData System.Byte[]
---@param additionalHeaders string
function System.Windows.Forms.WebBrowser:Navigate(url, targetFrameName, postData, additionalHeaders) end
---@overload fun()
---@param opt System.Windows.Forms.WebBrowserRefreshOption
function System.Windows.Forms.WebBrowser:Refresh(opt) end
function System.Windows.Forms.WebBrowser:Stop() end
function System.Windows.Forms.WebBrowser:GoSearch() end
function System.Windows.Forms.WebBrowser:Print() end
function System.Windows.Forms.WebBrowser:ShowPageSetupDialog() end
function System.Windows.Forms.WebBrowser:ShowPrintDialog() end
function System.Windows.Forms.WebBrowser:ShowPrintPreviewDialog() end
function System.Windows.Forms.WebBrowser:ShowPropertiesDialog() end
function System.Windows.Forms.WebBrowser:ShowSaveAsDialog() end

---@class System.Windows.Forms.WebBrowser.WebBrowserSite : System.Windows.Forms.WebBrowserSiteBase
System.Windows.Forms.WebBrowser.WebBrowserSite = {}
---@alias CS.System.Windows.Forms.WebBrowser.WebBrowserSite System.Windows.Forms.WebBrowser.WebBrowserSite
CS.System.Windows.Forms.WebBrowser.WebBrowserSite = System.Windows.Forms.WebBrowser.WebBrowserSite

---@param host System.Windows.Forms.WebBrowser
---@return System.Windows.Forms.WebBrowser.WebBrowserSite
function System.Windows.Forms.WebBrowser.WebBrowserSite.New(host) end

---@class System.Windows.Forms.WebBrowserUriTypeConverter : System.UriTypeConverter
System.Windows.Forms.WebBrowserUriTypeConverter = {}
---@alias CS.System.Windows.Forms.WebBrowserUriTypeConverter System.Windows.Forms.WebBrowserUriTypeConverter
CS.System.Windows.Forms.WebBrowserUriTypeConverter = System.Windows.Forms.WebBrowserUriTypeConverter

---@return System.Windows.Forms.WebBrowserUriTypeConverter
function System.Windows.Forms.WebBrowserUriTypeConverter.New() end

---@class System.Windows.Forms.WebBrowserBase : System.Windows.Forms.Control
---@field ActiveXInstance System.Object
---@field AllowDrop boolean
---@field BackColor System.Drawing.Color
---@field BackgroundImage System.Drawing.Image
---@field BackgroundImageLayout System.Windows.Forms.ImageLayout
---@field Cursor System.Windows.Forms.Cursor
---@field Enabled boolean
---@field Font System.Drawing.Font
---@field ForeColor System.Drawing.Color
---@field ImeMode System.Windows.Forms.ImeMode
---@field RightToLeft System.Windows.Forms.RightToLeft
---@field Site System.ComponentModel.ISite
---@field Text string
---@field UseWaitCursor boolean
System.Windows.Forms.WebBrowserBase = {}
---@alias CS.System.Windows.Forms.WebBrowserBase System.Windows.Forms.WebBrowserBase
CS.System.Windows.Forms.WebBrowserBase = System.Windows.Forms.WebBrowserBase

---@param bitmap System.Drawing.Bitmap
---@param targetBounds System.Drawing.Rectangle
function System.Windows.Forms.WebBrowserBase:DrawToBitmap(bitmap, targetBounds) end
---@param ref_msg System.Windows.Forms.Message
---@return boolean,System.Windows.Forms.Message
function System.Windows.Forms.WebBrowserBase:PreProcessMessage(ref_msg) end

---@class System.Windows.Forms.WebBrowserBase.State
---@field Unloaded System.Windows.Forms.WebBrowserBase.State
---@field Loaded System.Windows.Forms.WebBrowserBase.State
---@field Active System.Windows.Forms.WebBrowserBase.State
System.Windows.Forms.WebBrowserBase.State = {}
---@alias CS.System.Windows.Forms.WebBrowserBase.State System.Windows.Forms.WebBrowserBase.State
CS.System.Windows.Forms.WebBrowserBase.State = System.Windows.Forms.WebBrowserBase.State


---@class System.Windows.Forms.WebBrowserDocumentCompletedEventArgs : System.EventArgs
---@field Url System.Uri
System.Windows.Forms.WebBrowserDocumentCompletedEventArgs = {}
---@alias CS.System.Windows.Forms.WebBrowserDocumentCompletedEventArgs System.Windows.Forms.WebBrowserDocumentCompletedEventArgs
CS.System.Windows.Forms.WebBrowserDocumentCompletedEventArgs = System.Windows.Forms.WebBrowserDocumentCompletedEventArgs

---@param url System.Uri
---@return System.Windows.Forms.WebBrowserDocumentCompletedEventArgs
function System.Windows.Forms.WebBrowserDocumentCompletedEventArgs.New(url) end

---@class System.Windows.Forms.WebBrowserDocumentCompletedEventHandler : System.MulticastDelegate
System.Windows.Forms.WebBrowserDocumentCompletedEventHandler = {}
---@alias CS.System.Windows.Forms.WebBrowserDocumentCompletedEventHandler System.Windows.Forms.WebBrowserDocumentCompletedEventHandler
CS.System.Windows.Forms.WebBrowserDocumentCompletedEventHandler = System.Windows.Forms.WebBrowserDocumentCompletedEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.WebBrowserDocumentCompletedEventHandler
function System.Windows.Forms.WebBrowserDocumentCompletedEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Windows.Forms.WebBrowserDocumentCompletedEventArgs
function System.Windows.Forms.WebBrowserDocumentCompletedEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Windows.Forms.WebBrowserDocumentCompletedEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Windows.Forms.WebBrowserDocumentCompletedEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Windows.Forms.WebBrowserDocumentCompletedEventHandler:EndInvoke(result) end

---@class System.Windows.Forms.WebBrowserEncryptionLevel
---@field Insecure System.Windows.Forms.WebBrowserEncryptionLevel
---@field Mixed System.Windows.Forms.WebBrowserEncryptionLevel
---@field Unknown System.Windows.Forms.WebBrowserEncryptionLevel
---@field Bit40 System.Windows.Forms.WebBrowserEncryptionLevel
---@field Bit56 System.Windows.Forms.WebBrowserEncryptionLevel
---@field Fortezza System.Windows.Forms.WebBrowserEncryptionLevel
---@field Bit128 System.Windows.Forms.WebBrowserEncryptionLevel
System.Windows.Forms.WebBrowserEncryptionLevel = {}
---@alias CS.System.Windows.Forms.WebBrowserEncryptionLevel System.Windows.Forms.WebBrowserEncryptionLevel
CS.System.Windows.Forms.WebBrowserEncryptionLevel = System.Windows.Forms.WebBrowserEncryptionLevel


---@class System.Windows.Forms.WebBrowserNavigatedEventArgs : System.EventArgs
---@field Url System.Uri
System.Windows.Forms.WebBrowserNavigatedEventArgs = {}
---@alias CS.System.Windows.Forms.WebBrowserNavigatedEventArgs System.Windows.Forms.WebBrowserNavigatedEventArgs
CS.System.Windows.Forms.WebBrowserNavigatedEventArgs = System.Windows.Forms.WebBrowserNavigatedEventArgs

---@param url System.Uri
---@return System.Windows.Forms.WebBrowserNavigatedEventArgs
function System.Windows.Forms.WebBrowserNavigatedEventArgs.New(url) end

---@class System.Windows.Forms.WebBrowserNavigatedEventHandler : System.MulticastDelegate
System.Windows.Forms.WebBrowserNavigatedEventHandler = {}
---@alias CS.System.Windows.Forms.WebBrowserNavigatedEventHandler System.Windows.Forms.WebBrowserNavigatedEventHandler
CS.System.Windows.Forms.WebBrowserNavigatedEventHandler = System.Windows.Forms.WebBrowserNavigatedEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.WebBrowserNavigatedEventHandler
function System.Windows.Forms.WebBrowserNavigatedEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Windows.Forms.WebBrowserNavigatedEventArgs
function System.Windows.Forms.WebBrowserNavigatedEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Windows.Forms.WebBrowserNavigatedEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Windows.Forms.WebBrowserNavigatedEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Windows.Forms.WebBrowserNavigatedEventHandler:EndInvoke(result) end

---@class System.Windows.Forms.WebBrowserNavigatingEventArgs : System.ComponentModel.CancelEventArgs
---@field Url System.Uri
---@field TargetFrameName string
System.Windows.Forms.WebBrowserNavigatingEventArgs = {}
---@alias CS.System.Windows.Forms.WebBrowserNavigatingEventArgs System.Windows.Forms.WebBrowserNavigatingEventArgs
CS.System.Windows.Forms.WebBrowserNavigatingEventArgs = System.Windows.Forms.WebBrowserNavigatingEventArgs

---@param url System.Uri
---@param targetFrameName string
---@return System.Windows.Forms.WebBrowserNavigatingEventArgs
function System.Windows.Forms.WebBrowserNavigatingEventArgs.New(url, targetFrameName) end

---@class System.Windows.Forms.WebBrowserNavigatingEventHandler : System.MulticastDelegate
System.Windows.Forms.WebBrowserNavigatingEventHandler = {}
---@alias CS.System.Windows.Forms.WebBrowserNavigatingEventHandler System.Windows.Forms.WebBrowserNavigatingEventHandler
CS.System.Windows.Forms.WebBrowserNavigatingEventHandler = System.Windows.Forms.WebBrowserNavigatingEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.WebBrowserNavigatingEventHandler
function System.Windows.Forms.WebBrowserNavigatingEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Windows.Forms.WebBrowserNavigatingEventArgs
function System.Windows.Forms.WebBrowserNavigatingEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Windows.Forms.WebBrowserNavigatingEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Windows.Forms.WebBrowserNavigatingEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Windows.Forms.WebBrowserNavigatingEventHandler:EndInvoke(result) end

---@class System.Windows.Forms.WebBrowserProgressChangedEventArgs : System.EventArgs
---@field CurrentProgress number
---@field MaximumProgress number
System.Windows.Forms.WebBrowserProgressChangedEventArgs = {}
---@alias CS.System.Windows.Forms.WebBrowserProgressChangedEventArgs System.Windows.Forms.WebBrowserProgressChangedEventArgs
CS.System.Windows.Forms.WebBrowserProgressChangedEventArgs = System.Windows.Forms.WebBrowserProgressChangedEventArgs

---@param currentProgress number
---@param maximumProgress number
---@return System.Windows.Forms.WebBrowserProgressChangedEventArgs
function System.Windows.Forms.WebBrowserProgressChangedEventArgs.New(currentProgress, maximumProgress) end

---@class System.Windows.Forms.WebBrowserProgressChangedEventHandler : System.MulticastDelegate
System.Windows.Forms.WebBrowserProgressChangedEventHandler = {}
---@alias CS.System.Windows.Forms.WebBrowserProgressChangedEventHandler System.Windows.Forms.WebBrowserProgressChangedEventHandler
CS.System.Windows.Forms.WebBrowserProgressChangedEventHandler = System.Windows.Forms.WebBrowserProgressChangedEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.WebBrowserProgressChangedEventHandler
function System.Windows.Forms.WebBrowserProgressChangedEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Windows.Forms.WebBrowserProgressChangedEventArgs
function System.Windows.Forms.WebBrowserProgressChangedEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Windows.Forms.WebBrowserProgressChangedEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Windows.Forms.WebBrowserProgressChangedEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Windows.Forms.WebBrowserProgressChangedEventHandler:EndInvoke(result) end

---@class System.Windows.Forms.WebBrowserReadyState
---@field Uninitialized System.Windows.Forms.WebBrowserReadyState
---@field Loading System.Windows.Forms.WebBrowserReadyState
---@field Loaded System.Windows.Forms.WebBrowserReadyState
---@field Interactive System.Windows.Forms.WebBrowserReadyState
---@field Complete System.Windows.Forms.WebBrowserReadyState
System.Windows.Forms.WebBrowserReadyState = {}
---@alias CS.System.Windows.Forms.WebBrowserReadyState System.Windows.Forms.WebBrowserReadyState
CS.System.Windows.Forms.WebBrowserReadyState = System.Windows.Forms.WebBrowserReadyState


---@class System.Windows.Forms.WebBrowserRefreshOption
---@field Normal System.Windows.Forms.WebBrowserRefreshOption
---@field IfExpired System.Windows.Forms.WebBrowserRefreshOption
---@field Continue System.Windows.Forms.WebBrowserRefreshOption
---@field Completely System.Windows.Forms.WebBrowserRefreshOption
System.Windows.Forms.WebBrowserRefreshOption = {}
---@alias CS.System.Windows.Forms.WebBrowserRefreshOption System.Windows.Forms.WebBrowserRefreshOption
CS.System.Windows.Forms.WebBrowserRefreshOption = System.Windows.Forms.WebBrowserRefreshOption


---@class System.Windows.Forms.WebBrowserSiteBase : System.Object
System.Windows.Forms.WebBrowserSiteBase = {}
---@alias CS.System.Windows.Forms.WebBrowserSiteBase System.Windows.Forms.WebBrowserSiteBase
CS.System.Windows.Forms.WebBrowserSiteBase = System.Windows.Forms.WebBrowserSiteBase

function System.Windows.Forms.WebBrowserSiteBase:Dispose() end

---@class System.Windows.Forms.Win32DnD : System.Object
System.Windows.Forms.Win32DnD = {}
---@alias CS.System.Windows.Forms.Win32DnD System.Windows.Forms.Win32DnD
CS.System.Windows.Forms.Win32DnD = System.Windows.Forms.Win32DnD

---@return System.Windows.Forms.Win32DnD
function System.Windows.Forms.Win32DnD.New() end

---@class System.Windows.Forms.Win32DnD.QueryInterfaceDelegate : System.MulticastDelegate
System.Windows.Forms.Win32DnD.QueryInterfaceDelegate = {}
---@alias CS.System.Windows.Forms.Win32DnD.QueryInterfaceDelegate System.Windows.Forms.Win32DnD.QueryInterfaceDelegate
CS.System.Windows.Forms.Win32DnD.QueryInterfaceDelegate = System.Windows.Forms.Win32DnD.QueryInterfaceDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.Win32DnD.QueryInterfaceDelegate
function System.Windows.Forms.Win32DnD.QueryInterfaceDelegate.New(object, method) end
---@param this System.IntPtr
---@param ref_riid System.Guid
---@param ppvObject System.IntPtr
---@return number,System.Guid
function System.Windows.Forms.Win32DnD.QueryInterfaceDelegate:Invoke(this, ref_riid, ppvObject) end
---@param this System.IntPtr
---@param ref_riid System.Guid
---@param ppvObject System.IntPtr
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult,System.Guid
function System.Windows.Forms.Win32DnD.QueryInterfaceDelegate:BeginInvoke(this, ref_riid, ppvObject, callback, object) end
---@param ref_riid System.Guid
---@param result System.IAsyncResult
---@return number,System.Guid
function System.Windows.Forms.Win32DnD.QueryInterfaceDelegate:EndInvoke(ref_riid, result) end

---@class System.Windows.Forms.Win32DnD.AddRefDelegate : System.MulticastDelegate
System.Windows.Forms.Win32DnD.AddRefDelegate = {}
---@alias CS.System.Windows.Forms.Win32DnD.AddRefDelegate System.Windows.Forms.Win32DnD.AddRefDelegate
CS.System.Windows.Forms.Win32DnD.AddRefDelegate = System.Windows.Forms.Win32DnD.AddRefDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.Win32DnD.AddRefDelegate
function System.Windows.Forms.Win32DnD.AddRefDelegate.New(object, method) end
---@param this System.IntPtr
---@return number
function System.Windows.Forms.Win32DnD.AddRefDelegate:Invoke(this) end
---@param this System.IntPtr
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Windows.Forms.Win32DnD.AddRefDelegate:BeginInvoke(this, callback, object) end
---@param result System.IAsyncResult
---@return number
function System.Windows.Forms.Win32DnD.AddRefDelegate:EndInvoke(result) end

---@class System.Windows.Forms.Win32DnD.ReleaseDelegate : System.MulticastDelegate
System.Windows.Forms.Win32DnD.ReleaseDelegate = {}
---@alias CS.System.Windows.Forms.Win32DnD.ReleaseDelegate System.Windows.Forms.Win32DnD.ReleaseDelegate
CS.System.Windows.Forms.Win32DnD.ReleaseDelegate = System.Windows.Forms.Win32DnD.ReleaseDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.Win32DnD.ReleaseDelegate
function System.Windows.Forms.Win32DnD.ReleaseDelegate.New(object, method) end
---@param this System.IntPtr
---@return number
function System.Windows.Forms.Win32DnD.ReleaseDelegate:Invoke(this) end
---@param this System.IntPtr
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Windows.Forms.Win32DnD.ReleaseDelegate:BeginInvoke(this, callback, object) end
---@param result System.IAsyncResult
---@return number
function System.Windows.Forms.Win32DnD.ReleaseDelegate:EndInvoke(result) end

---@class System.Windows.Forms.Win32DnD.GetDataDelegate : System.MulticastDelegate
System.Windows.Forms.Win32DnD.GetDataDelegate = {}
---@alias CS.System.Windows.Forms.Win32DnD.GetDataDelegate System.Windows.Forms.Win32DnD.GetDataDelegate
CS.System.Windows.Forms.Win32DnD.GetDataDelegate = System.Windows.Forms.Win32DnD.GetDataDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.Win32DnD.GetDataDelegate
function System.Windows.Forms.Win32DnD.GetDataDelegate.New(object, method) end
---@param this System.IntPtr
---@param ref_pformatetcIn System.Windows.Forms.Win32DnD.FORMATETC
---@param pmedium System.IntPtr
---@return number,System.Windows.Forms.Win32DnD.FORMATETC
function System.Windows.Forms.Win32DnD.GetDataDelegate:Invoke(this, ref_pformatetcIn, pmedium) end
---@param this System.IntPtr
---@param ref_pformatetcIn System.Windows.Forms.Win32DnD.FORMATETC
---@param pmedium System.IntPtr
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult,System.Windows.Forms.Win32DnD.FORMATETC
function System.Windows.Forms.Win32DnD.GetDataDelegate:BeginInvoke(this, ref_pformatetcIn, pmedium, callback, object) end
---@param ref_pformatetcIn System.Windows.Forms.Win32DnD.FORMATETC
---@param result System.IAsyncResult
---@return number,System.Windows.Forms.Win32DnD.FORMATETC
function System.Windows.Forms.Win32DnD.GetDataDelegate:EndInvoke(ref_pformatetcIn, result) end

---@class System.Windows.Forms.Win32DnD.GetDataHereDelegate : System.MulticastDelegate
System.Windows.Forms.Win32DnD.GetDataHereDelegate = {}
---@alias CS.System.Windows.Forms.Win32DnD.GetDataHereDelegate System.Windows.Forms.Win32DnD.GetDataHereDelegate
CS.System.Windows.Forms.Win32DnD.GetDataHereDelegate = System.Windows.Forms.Win32DnD.GetDataHereDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.Win32DnD.GetDataHereDelegate
function System.Windows.Forms.Win32DnD.GetDataHereDelegate.New(object, method) end
---@param this System.IntPtr
---@param ref_pformatetc System.Windows.Forms.Win32DnD.FORMATETC
---@param ref_pmedium System.Windows.Forms.Win32DnD.STGMEDIUM
---@return number,System.Windows.Forms.Win32DnD.FORMATETC,System.Windows.Forms.Win32DnD.STGMEDIUM
function System.Windows.Forms.Win32DnD.GetDataHereDelegate:Invoke(this, ref_pformatetc, ref_pmedium) end
---@param this System.IntPtr
---@param ref_pformatetc System.Windows.Forms.Win32DnD.FORMATETC
---@param ref_pmedium System.Windows.Forms.Win32DnD.STGMEDIUM
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult,System.Windows.Forms.Win32DnD.FORMATETC,System.Windows.Forms.Win32DnD.STGMEDIUM
function System.Windows.Forms.Win32DnD.GetDataHereDelegate:BeginInvoke(this, ref_pformatetc, ref_pmedium, callback, object) end
---@param ref_pformatetc System.Windows.Forms.Win32DnD.FORMATETC
---@param ref_pmedium System.Windows.Forms.Win32DnD.STGMEDIUM
---@param result System.IAsyncResult
---@return number,System.Windows.Forms.Win32DnD.FORMATETC,System.Windows.Forms.Win32DnD.STGMEDIUM
function System.Windows.Forms.Win32DnD.GetDataHereDelegate:EndInvoke(ref_pformatetc, ref_pmedium, result) end

---@class System.Windows.Forms.Win32DnD.QueryGetDataDelegate : System.MulticastDelegate
System.Windows.Forms.Win32DnD.QueryGetDataDelegate = {}
---@alias CS.System.Windows.Forms.Win32DnD.QueryGetDataDelegate System.Windows.Forms.Win32DnD.QueryGetDataDelegate
CS.System.Windows.Forms.Win32DnD.QueryGetDataDelegate = System.Windows.Forms.Win32DnD.QueryGetDataDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.Win32DnD.QueryGetDataDelegate
function System.Windows.Forms.Win32DnD.QueryGetDataDelegate.New(object, method) end
---@param this System.IntPtr
---@param ref_pformatetc System.Windows.Forms.Win32DnD.FORMATETC
---@return number,System.Windows.Forms.Win32DnD.FORMATETC
function System.Windows.Forms.Win32DnD.QueryGetDataDelegate:Invoke(this, ref_pformatetc) end
---@param this System.IntPtr
---@param ref_pformatetc System.Windows.Forms.Win32DnD.FORMATETC
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult,System.Windows.Forms.Win32DnD.FORMATETC
function System.Windows.Forms.Win32DnD.QueryGetDataDelegate:BeginInvoke(this, ref_pformatetc, callback, object) end
---@param ref_pformatetc System.Windows.Forms.Win32DnD.FORMATETC
---@param result System.IAsyncResult
---@return number,System.Windows.Forms.Win32DnD.FORMATETC
function System.Windows.Forms.Win32DnD.QueryGetDataDelegate:EndInvoke(ref_pformatetc, result) end

---@class System.Windows.Forms.Win32DnD.GetCanonicalFormatEtcDelegate : System.MulticastDelegate
System.Windows.Forms.Win32DnD.GetCanonicalFormatEtcDelegate = {}
---@alias CS.System.Windows.Forms.Win32DnD.GetCanonicalFormatEtcDelegate System.Windows.Forms.Win32DnD.GetCanonicalFormatEtcDelegate
CS.System.Windows.Forms.Win32DnD.GetCanonicalFormatEtcDelegate = System.Windows.Forms.Win32DnD.GetCanonicalFormatEtcDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.Win32DnD.GetCanonicalFormatEtcDelegate
function System.Windows.Forms.Win32DnD.GetCanonicalFormatEtcDelegate.New(object, method) end
---@param this System.IntPtr
---@param ref_pformatetcIn System.Windows.Forms.Win32DnD.FORMATETC
---@param pformatetcOut System.IntPtr
---@return number,System.Windows.Forms.Win32DnD.FORMATETC
function System.Windows.Forms.Win32DnD.GetCanonicalFormatEtcDelegate:Invoke(this, ref_pformatetcIn, pformatetcOut) end
---@param this System.IntPtr
---@param ref_pformatetcIn System.Windows.Forms.Win32DnD.FORMATETC
---@param pformatetcOut System.IntPtr
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult,System.Windows.Forms.Win32DnD.FORMATETC
function System.Windows.Forms.Win32DnD.GetCanonicalFormatEtcDelegate:BeginInvoke(this, ref_pformatetcIn, pformatetcOut, callback, object) end
---@param ref_pformatetcIn System.Windows.Forms.Win32DnD.FORMATETC
---@param result System.IAsyncResult
---@return number,System.Windows.Forms.Win32DnD.FORMATETC
function System.Windows.Forms.Win32DnD.GetCanonicalFormatEtcDelegate:EndInvoke(ref_pformatetcIn, result) end

---@class System.Windows.Forms.Win32DnD.SetDataDelegate : System.MulticastDelegate
System.Windows.Forms.Win32DnD.SetDataDelegate = {}
---@alias CS.System.Windows.Forms.Win32DnD.SetDataDelegate System.Windows.Forms.Win32DnD.SetDataDelegate
CS.System.Windows.Forms.Win32DnD.SetDataDelegate = System.Windows.Forms.Win32DnD.SetDataDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.Win32DnD.SetDataDelegate
function System.Windows.Forms.Win32DnD.SetDataDelegate.New(object, method) end
---@param this System.IntPtr
---@param ref_pformatetc System.Windows.Forms.Win32DnD.FORMATETC
---@param ref_pmedium System.Windows.Forms.Win32DnD.STGMEDIUM
---@param release boolean
---@return number,System.Windows.Forms.Win32DnD.FORMATETC,System.Windows.Forms.Win32DnD.STGMEDIUM
function System.Windows.Forms.Win32DnD.SetDataDelegate:Invoke(this, ref_pformatetc, ref_pmedium, release) end
---@param this System.IntPtr
---@param ref_pformatetc System.Windows.Forms.Win32DnD.FORMATETC
---@param ref_pmedium System.Windows.Forms.Win32DnD.STGMEDIUM
---@param release boolean
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult,System.Windows.Forms.Win32DnD.FORMATETC,System.Windows.Forms.Win32DnD.STGMEDIUM
function System.Windows.Forms.Win32DnD.SetDataDelegate:BeginInvoke(this, ref_pformatetc, ref_pmedium, release, callback, object) end
---@param ref_pformatetc System.Windows.Forms.Win32DnD.FORMATETC
---@param ref_pmedium System.Windows.Forms.Win32DnD.STGMEDIUM
---@param result System.IAsyncResult
---@return number,System.Windows.Forms.Win32DnD.FORMATETC,System.Windows.Forms.Win32DnD.STGMEDIUM
function System.Windows.Forms.Win32DnD.SetDataDelegate:EndInvoke(ref_pformatetc, ref_pmedium, result) end

---@class System.Windows.Forms.Win32DnD.EnumFormatEtcDelegate : System.MulticastDelegate
System.Windows.Forms.Win32DnD.EnumFormatEtcDelegate = {}
---@alias CS.System.Windows.Forms.Win32DnD.EnumFormatEtcDelegate System.Windows.Forms.Win32DnD.EnumFormatEtcDelegate
CS.System.Windows.Forms.Win32DnD.EnumFormatEtcDelegate = System.Windows.Forms.Win32DnD.EnumFormatEtcDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.Win32DnD.EnumFormatEtcDelegate
function System.Windows.Forms.Win32DnD.EnumFormatEtcDelegate.New(object, method) end
---@param this System.IntPtr
---@param direction number
---@param ppenumFormatEtc System.IntPtr
---@return number
function System.Windows.Forms.Win32DnD.EnumFormatEtcDelegate:Invoke(this, direction, ppenumFormatEtc) end
---@param this System.IntPtr
---@param direction number
---@param ppenumFormatEtc System.IntPtr
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Windows.Forms.Win32DnD.EnumFormatEtcDelegate:BeginInvoke(this, direction, ppenumFormatEtc, callback, object) end
---@param result System.IAsyncResult
---@return number
function System.Windows.Forms.Win32DnD.EnumFormatEtcDelegate:EndInvoke(result) end

---@class System.Windows.Forms.Win32DnD.DAdviseDelegate : System.MulticastDelegate
System.Windows.Forms.Win32DnD.DAdviseDelegate = {}
---@alias CS.System.Windows.Forms.Win32DnD.DAdviseDelegate System.Windows.Forms.Win32DnD.DAdviseDelegate
CS.System.Windows.Forms.Win32DnD.DAdviseDelegate = System.Windows.Forms.Win32DnD.DAdviseDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.Win32DnD.DAdviseDelegate
function System.Windows.Forms.Win32DnD.DAdviseDelegate.New(object, method) end
---@param this System.IntPtr
---@param ref_pformatetc System.Windows.Forms.Win32DnD.FORMATETC
---@param advf number
---@param pAdvSink System.IntPtr
---@param ref_pdwConnection number
---@return number,System.Windows.Forms.Win32DnD.FORMATETC,number
function System.Windows.Forms.Win32DnD.DAdviseDelegate:Invoke(this, ref_pformatetc, advf, pAdvSink, ref_pdwConnection) end
---@param this System.IntPtr
---@param ref_pformatetc System.Windows.Forms.Win32DnD.FORMATETC
---@param advf number
---@param pAdvSink System.IntPtr
---@param ref_pdwConnection number
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult,System.Windows.Forms.Win32DnD.FORMATETC,number
function System.Windows.Forms.Win32DnD.DAdviseDelegate:BeginInvoke(this, ref_pformatetc, advf, pAdvSink, ref_pdwConnection, callback, object) end
---@param ref_pformatetc System.Windows.Forms.Win32DnD.FORMATETC
---@param ref_pdwConnection number
---@param result System.IAsyncResult
---@return number,System.Windows.Forms.Win32DnD.FORMATETC,number
function System.Windows.Forms.Win32DnD.DAdviseDelegate:EndInvoke(ref_pformatetc, ref_pdwConnection, result) end

---@class System.Windows.Forms.Win32DnD.DUnadviseDelegate : System.MulticastDelegate
System.Windows.Forms.Win32DnD.DUnadviseDelegate = {}
---@alias CS.System.Windows.Forms.Win32DnD.DUnadviseDelegate System.Windows.Forms.Win32DnD.DUnadviseDelegate
CS.System.Windows.Forms.Win32DnD.DUnadviseDelegate = System.Windows.Forms.Win32DnD.DUnadviseDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.Win32DnD.DUnadviseDelegate
function System.Windows.Forms.Win32DnD.DUnadviseDelegate.New(object, method) end
---@param this System.IntPtr
---@param pdwConnection number
---@return number
function System.Windows.Forms.Win32DnD.DUnadviseDelegate:Invoke(this, pdwConnection) end
---@param this System.IntPtr
---@param pdwConnection number
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Windows.Forms.Win32DnD.DUnadviseDelegate:BeginInvoke(this, pdwConnection, callback, object) end
---@param result System.IAsyncResult
---@return number
function System.Windows.Forms.Win32DnD.DUnadviseDelegate:EndInvoke(result) end

---@class System.Windows.Forms.Win32DnD.EnumDAdviseDelegate : System.MulticastDelegate
System.Windows.Forms.Win32DnD.EnumDAdviseDelegate = {}
---@alias CS.System.Windows.Forms.Win32DnD.EnumDAdviseDelegate System.Windows.Forms.Win32DnD.EnumDAdviseDelegate
CS.System.Windows.Forms.Win32DnD.EnumDAdviseDelegate = System.Windows.Forms.Win32DnD.EnumDAdviseDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.Win32DnD.EnumDAdviseDelegate
function System.Windows.Forms.Win32DnD.EnumDAdviseDelegate.New(object, method) end
---@param this System.IntPtr
---@param ppenumAdvise System.IntPtr
---@return number
function System.Windows.Forms.Win32DnD.EnumDAdviseDelegate:Invoke(this, ppenumAdvise) end
---@param this System.IntPtr
---@param ppenumAdvise System.IntPtr
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Windows.Forms.Win32DnD.EnumDAdviseDelegate:BeginInvoke(this, ppenumAdvise, callback, object) end
---@param result System.IAsyncResult
---@return number
function System.Windows.Forms.Win32DnD.EnumDAdviseDelegate:EndInvoke(result) end

---@class System.Windows.Forms.Win32DnD.QueryContinueDragDelegate : System.MulticastDelegate
System.Windows.Forms.Win32DnD.QueryContinueDragDelegate = {}
---@alias CS.System.Windows.Forms.Win32DnD.QueryContinueDragDelegate System.Windows.Forms.Win32DnD.QueryContinueDragDelegate
CS.System.Windows.Forms.Win32DnD.QueryContinueDragDelegate = System.Windows.Forms.Win32DnD.QueryContinueDragDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.Win32DnD.QueryContinueDragDelegate
function System.Windows.Forms.Win32DnD.QueryContinueDragDelegate.New(object, method) end
---@param this System.IntPtr
---@param fEscapePressed boolean
---@param grfkeyState number
---@return number
function System.Windows.Forms.Win32DnD.QueryContinueDragDelegate:Invoke(this, fEscapePressed, grfkeyState) end
---@param this System.IntPtr
---@param fEscapePressed boolean
---@param grfkeyState number
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Windows.Forms.Win32DnD.QueryContinueDragDelegate:BeginInvoke(this, fEscapePressed, grfkeyState, callback, object) end
---@param result System.IAsyncResult
---@return number
function System.Windows.Forms.Win32DnD.QueryContinueDragDelegate:EndInvoke(result) end

---@class System.Windows.Forms.Win32DnD.GiveFeedbackDelegate : System.MulticastDelegate
System.Windows.Forms.Win32DnD.GiveFeedbackDelegate = {}
---@alias CS.System.Windows.Forms.Win32DnD.GiveFeedbackDelegate System.Windows.Forms.Win32DnD.GiveFeedbackDelegate
CS.System.Windows.Forms.Win32DnD.GiveFeedbackDelegate = System.Windows.Forms.Win32DnD.GiveFeedbackDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.Win32DnD.GiveFeedbackDelegate
function System.Windows.Forms.Win32DnD.GiveFeedbackDelegate.New(object, method) end
---@param this System.IntPtr
---@param pdwEffect number
---@return number
function System.Windows.Forms.Win32DnD.GiveFeedbackDelegate:Invoke(this, pdwEffect) end
---@param this System.IntPtr
---@param pdwEffect number
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Windows.Forms.Win32DnD.GiveFeedbackDelegate:BeginInvoke(this, pdwEffect, callback, object) end
---@param result System.IAsyncResult
---@return number
function System.Windows.Forms.Win32DnD.GiveFeedbackDelegate:EndInvoke(result) end

---@class System.Windows.Forms.Win32DnD.DragEnterDelegate : System.MulticastDelegate
System.Windows.Forms.Win32DnD.DragEnterDelegate = {}
---@alias CS.System.Windows.Forms.Win32DnD.DragEnterDelegate System.Windows.Forms.Win32DnD.DragEnterDelegate
CS.System.Windows.Forms.Win32DnD.DragEnterDelegate = System.Windows.Forms.Win32DnD.DragEnterDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.Win32DnD.DragEnterDelegate
function System.Windows.Forms.Win32DnD.DragEnterDelegate.New(object, method) end
---@param this System.IntPtr
---@param pDataObj System.IntPtr
---@param grfkeyState number
---@param pt_x System.IntPtr
---@param pt_y System.IntPtr
---@param pdwEffect System.IntPtr
---@return number
function System.Windows.Forms.Win32DnD.DragEnterDelegate:Invoke(this, pDataObj, grfkeyState, pt_x, pt_y, pdwEffect) end
---@param this System.IntPtr
---@param pDataObj System.IntPtr
---@param grfkeyState number
---@param pt_x System.IntPtr
---@param pt_y System.IntPtr
---@param pdwEffect System.IntPtr
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Windows.Forms.Win32DnD.DragEnterDelegate:BeginInvoke(this, pDataObj, grfkeyState, pt_x, pt_y, pdwEffect, callback, object) end
---@param result System.IAsyncResult
---@return number
function System.Windows.Forms.Win32DnD.DragEnterDelegate:EndInvoke(result) end

---@class System.Windows.Forms.Win32DnD.DragOverDelegate : System.MulticastDelegate
System.Windows.Forms.Win32DnD.DragOverDelegate = {}
---@alias CS.System.Windows.Forms.Win32DnD.DragOverDelegate System.Windows.Forms.Win32DnD.DragOverDelegate
CS.System.Windows.Forms.Win32DnD.DragOverDelegate = System.Windows.Forms.Win32DnD.DragOverDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.Win32DnD.DragOverDelegate
function System.Windows.Forms.Win32DnD.DragOverDelegate.New(object, method) end
---@param this System.IntPtr
---@param grfkeyState number
---@param pt_x System.IntPtr
---@param pt_y System.IntPtr
---@param pdwEffect System.IntPtr
---@return number
function System.Windows.Forms.Win32DnD.DragOverDelegate:Invoke(this, grfkeyState, pt_x, pt_y, pdwEffect) end
---@param this System.IntPtr
---@param grfkeyState number
---@param pt_x System.IntPtr
---@param pt_y System.IntPtr
---@param pdwEffect System.IntPtr
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Windows.Forms.Win32DnD.DragOverDelegate:BeginInvoke(this, grfkeyState, pt_x, pt_y, pdwEffect, callback, object) end
---@param result System.IAsyncResult
---@return number
function System.Windows.Forms.Win32DnD.DragOverDelegate:EndInvoke(result) end

---@class System.Windows.Forms.Win32DnD.DragLeaveDelegate : System.MulticastDelegate
System.Windows.Forms.Win32DnD.DragLeaveDelegate = {}
---@alias CS.System.Windows.Forms.Win32DnD.DragLeaveDelegate System.Windows.Forms.Win32DnD.DragLeaveDelegate
CS.System.Windows.Forms.Win32DnD.DragLeaveDelegate = System.Windows.Forms.Win32DnD.DragLeaveDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.Win32DnD.DragLeaveDelegate
function System.Windows.Forms.Win32DnD.DragLeaveDelegate.New(object, method) end
---@param this System.IntPtr
---@return number
function System.Windows.Forms.Win32DnD.DragLeaveDelegate:Invoke(this) end
---@param this System.IntPtr
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Windows.Forms.Win32DnD.DragLeaveDelegate:BeginInvoke(this, callback, object) end
---@param result System.IAsyncResult
---@return number
function System.Windows.Forms.Win32DnD.DragLeaveDelegate:EndInvoke(result) end

---@class System.Windows.Forms.Win32DnD.DropDelegate : System.MulticastDelegate
System.Windows.Forms.Win32DnD.DropDelegate = {}
---@alias CS.System.Windows.Forms.Win32DnD.DropDelegate System.Windows.Forms.Win32DnD.DropDelegate
CS.System.Windows.Forms.Win32DnD.DropDelegate = System.Windows.Forms.Win32DnD.DropDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.Win32DnD.DropDelegate
function System.Windows.Forms.Win32DnD.DropDelegate.New(object, method) end
---@param this System.IntPtr
---@param pDataObj System.IntPtr
---@param grfkeyState number
---@param pt_x System.IntPtr
---@param pt_y System.IntPtr
---@param pdwEffect System.IntPtr
---@return number
function System.Windows.Forms.Win32DnD.DropDelegate:Invoke(this, pDataObj, grfkeyState, pt_x, pt_y, pdwEffect) end
---@param this System.IntPtr
---@param pDataObj System.IntPtr
---@param grfkeyState number
---@param pt_x System.IntPtr
---@param pt_y System.IntPtr
---@param pdwEffect System.IntPtr
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Windows.Forms.Win32DnD.DropDelegate:BeginInvoke(this, pDataObj, grfkeyState, pt_x, pt_y, pdwEffect, callback, object) end
---@param result System.IAsyncResult
---@return number
function System.Windows.Forms.Win32DnD.DropDelegate:EndInvoke(result) end

---@class System.Windows.Forms.Win32DnD.FORMATETC : System.ValueType
System.Windows.Forms.Win32DnD.FORMATETC = {}
---@alias CS.System.Windows.Forms.Win32DnD.FORMATETC System.Windows.Forms.Win32DnD.FORMATETC
CS.System.Windows.Forms.Win32DnD.FORMATETC = System.Windows.Forms.Win32DnD.FORMATETC


---@class System.Windows.Forms.Win32DnD.STGMEDIUM : System.ValueType
System.Windows.Forms.Win32DnD.STGMEDIUM = {}
---@alias CS.System.Windows.Forms.Win32DnD.STGMEDIUM System.Windows.Forms.Win32DnD.STGMEDIUM
CS.System.Windows.Forms.Win32DnD.STGMEDIUM = System.Windows.Forms.Win32DnD.STGMEDIUM


---@class System.Windows.Forms.Win32DnD.DROPFILES : System.ValueType
System.Windows.Forms.Win32DnD.DROPFILES = {}
---@alias CS.System.Windows.Forms.Win32DnD.DROPFILES System.Windows.Forms.Win32DnD.DROPFILES
CS.System.Windows.Forms.Win32DnD.DROPFILES = System.Windows.Forms.Win32DnD.DROPFILES


---@class System.Windows.Forms.Win32DnD.DVASPECT
---@field DVASPECT_CONTENT System.Windows.Forms.Win32DnD.DVASPECT
---@field DVASPECT_THUMBNAIL System.Windows.Forms.Win32DnD.DVASPECT
---@field DVASPECT_ICON System.Windows.Forms.Win32DnD.DVASPECT
---@field DVASPECT_DOCPRINT System.Windows.Forms.Win32DnD.DVASPECT
System.Windows.Forms.Win32DnD.DVASPECT = {}
---@alias CS.System.Windows.Forms.Win32DnD.DVASPECT System.Windows.Forms.Win32DnD.DVASPECT
CS.System.Windows.Forms.Win32DnD.DVASPECT = System.Windows.Forms.Win32DnD.DVASPECT


---@class System.Windows.Forms.Win32DnD.TYMED
---@field TYMED_HGLOBAL System.Windows.Forms.Win32DnD.TYMED
---@field TYMED_FILE System.Windows.Forms.Win32DnD.TYMED
---@field TYMED_ISTREAM System.Windows.Forms.Win32DnD.TYMED
---@field TYMED_ISTORAGE System.Windows.Forms.Win32DnD.TYMED
---@field TYMED_GDI System.Windows.Forms.Win32DnD.TYMED
---@field TYMED_MFPICT System.Windows.Forms.Win32DnD.TYMED
---@field TYMED_ENHMF System.Windows.Forms.Win32DnD.TYMED
---@field TYMED_NULL System.Windows.Forms.Win32DnD.TYMED
System.Windows.Forms.Win32DnD.TYMED = {}
---@alias CS.System.Windows.Forms.Win32DnD.TYMED System.Windows.Forms.Win32DnD.TYMED
CS.System.Windows.Forms.Win32DnD.TYMED = System.Windows.Forms.Win32DnD.TYMED


---@class System.Windows.Forms.Win32DnD.ComIDataObject : System.Object
System.Windows.Forms.Win32DnD.ComIDataObject = {}
---@alias CS.System.Windows.Forms.Win32DnD.ComIDataObject System.Windows.Forms.Win32DnD.ComIDataObject
CS.System.Windows.Forms.Win32DnD.ComIDataObject = System.Windows.Forms.Win32DnD.ComIDataObject

---@return System.Windows.Forms.Win32DnD.ComIDataObject
function System.Windows.Forms.Win32DnD.ComIDataObject.New() end

---@class System.Windows.Forms.Win32DnD.ComIDataObject.DataObjectStruct : System.ValueType
System.Windows.Forms.Win32DnD.ComIDataObject.DataObjectStruct = {}
---@alias CS.System.Windows.Forms.Win32DnD.ComIDataObject.DataObjectStruct System.Windows.Forms.Win32DnD.ComIDataObject.DataObjectStruct
CS.System.Windows.Forms.Win32DnD.ComIDataObject.DataObjectStruct = System.Windows.Forms.Win32DnD.ComIDataObject.DataObjectStruct


---@class System.Windows.Forms.Win32DnD.ComIDataObjectUnmanaged : System.Object
System.Windows.Forms.Win32DnD.ComIDataObjectUnmanaged = {}
---@alias CS.System.Windows.Forms.Win32DnD.ComIDataObjectUnmanaged System.Windows.Forms.Win32DnD.ComIDataObjectUnmanaged
CS.System.Windows.Forms.Win32DnD.ComIDataObjectUnmanaged = System.Windows.Forms.Win32DnD.ComIDataObjectUnmanaged


---@class System.Windows.Forms.Win32DnD.ComIDataObjectUnmanaged.IDataObjectUnmanaged : System.ValueType
System.Windows.Forms.Win32DnD.ComIDataObjectUnmanaged.IDataObjectUnmanaged = {}
---@alias CS.System.Windows.Forms.Win32DnD.ComIDataObjectUnmanaged.IDataObjectUnmanaged System.Windows.Forms.Win32DnD.ComIDataObjectUnmanaged.IDataObjectUnmanaged
CS.System.Windows.Forms.Win32DnD.ComIDataObjectUnmanaged.IDataObjectUnmanaged = System.Windows.Forms.Win32DnD.ComIDataObjectUnmanaged.IDataObjectUnmanaged


---@class System.Windows.Forms.Win32DnD.ComIDropSource : System.Object
System.Windows.Forms.Win32DnD.ComIDropSource = {}
---@alias CS.System.Windows.Forms.Win32DnD.ComIDropSource System.Windows.Forms.Win32DnD.ComIDropSource
CS.System.Windows.Forms.Win32DnD.ComIDropSource = System.Windows.Forms.Win32DnD.ComIDropSource

---@return System.Windows.Forms.Win32DnD.ComIDropSource
function System.Windows.Forms.Win32DnD.ComIDropSource.New() end

---@class System.Windows.Forms.Win32DnD.ComIDropSource.IDropSource : System.ValueType
System.Windows.Forms.Win32DnD.ComIDropSource.IDropSource = {}
---@alias CS.System.Windows.Forms.Win32DnD.ComIDropSource.IDropSource System.Windows.Forms.Win32DnD.ComIDropSource.IDropSource
CS.System.Windows.Forms.Win32DnD.ComIDropSource.IDropSource = System.Windows.Forms.Win32DnD.ComIDropSource.IDropSource


---@class System.Windows.Forms.Win32DnD.ComIDropTarget : System.Object
System.Windows.Forms.Win32DnD.ComIDropTarget = {}
---@alias CS.System.Windows.Forms.Win32DnD.ComIDropTarget System.Windows.Forms.Win32DnD.ComIDropTarget
CS.System.Windows.Forms.Win32DnD.ComIDropTarget = System.Windows.Forms.Win32DnD.ComIDropTarget

---@return System.Windows.Forms.Win32DnD.ComIDropTarget
function System.Windows.Forms.Win32DnD.ComIDropTarget.New() end

---@class System.Windows.Forms.Win32DnD.ComIDropTarget.IDropTarget : System.ValueType
System.Windows.Forms.Win32DnD.ComIDropTarget.IDropTarget = {}
---@alias CS.System.Windows.Forms.Win32DnD.ComIDropTarget.IDropTarget System.Windows.Forms.Win32DnD.ComIDropTarget.IDropTarget
CS.System.Windows.Forms.Win32DnD.ComIDropTarget.IDropTarget = System.Windows.Forms.Win32DnD.ComIDropTarget.IDropTarget


---@class System.Windows.Forms.WindowsFormsSection : System.Configuration.ConfigurationSection
---@field JitDebugging boolean
System.Windows.Forms.WindowsFormsSection = {}
---@alias CS.System.Windows.Forms.WindowsFormsSection System.Windows.Forms.WindowsFormsSection
CS.System.Windows.Forms.WindowsFormsSection = System.Windows.Forms.WindowsFormsSection

---@return System.Windows.Forms.WindowsFormsSection
function System.Windows.Forms.WindowsFormsSection.New() end

---@class System.Windows.Forms.WindowsFormsSynchronizationContext : System.Threading.SynchronizationContext
---@field AutoInstall boolean
System.Windows.Forms.WindowsFormsSynchronizationContext = {}
---@alias CS.System.Windows.Forms.WindowsFormsSynchronizationContext System.Windows.Forms.WindowsFormsSynchronizationContext
CS.System.Windows.Forms.WindowsFormsSynchronizationContext = System.Windows.Forms.WindowsFormsSynchronizationContext

---@return System.Windows.Forms.WindowsFormsSynchronizationContext
function System.Windows.Forms.WindowsFormsSynchronizationContext.New() end
function System.Windows.Forms.WindowsFormsSynchronizationContext.Uninstall() end
---@return System.Threading.SynchronizationContext
function System.Windows.Forms.WindowsFormsSynchronizationContext:CreateCopy() end
function System.Windows.Forms.WindowsFormsSynchronizationContext:Dispose() end
---@param d System.Threading.SendOrPostCallback
---@param state System.Object
function System.Windows.Forms.WindowsFormsSynchronizationContext:Post(d, state) end
---@param d System.Threading.SendOrPostCallback
---@param state System.Object
function System.Windows.Forms.WindowsFormsSynchronizationContext:Send(d, state) end

---@class System.Windows.Forms.ClipboardData : System.Object
---@field IsSourceText boolean
---@field IsSourceImage boolean
System.Windows.Forms.ClipboardData = {}
---@alias CS.System.Windows.Forms.ClipboardData System.Windows.Forms.ClipboardData
CS.System.Windows.Forms.ClipboardData = System.Windows.Forms.ClipboardData

---@return System.Windows.Forms.ClipboardData
function System.Windows.Forms.ClipboardData.New() end
function System.Windows.Forms.ClipboardData:ClearSources() end
---@param type number
---@param source System.Object
function System.Windows.Forms.ClipboardData:AddSource(type, source) end
---@param type number
---@return System.Object
function System.Windows.Forms.ClipboardData:GetSource(type) end
---@return string
function System.Windows.Forms.ClipboardData:GetPlainText() end
---@return string
function System.Windows.Forms.ClipboardData:GetRtfText() end
---@return System.Drawing.Image
function System.Windows.Forms.ClipboardData:GetImage() end

---@class System.Windows.Forms.X11DesktopColors : System.Object
System.Windows.Forms.X11DesktopColors = {}
---@alias CS.System.Windows.Forms.X11DesktopColors System.Windows.Forms.X11DesktopColors
CS.System.Windows.Forms.X11DesktopColors = System.Windows.Forms.X11DesktopColors

---@return System.Windows.Forms.X11DesktopColors
function System.Windows.Forms.X11DesktopColors.New() end

---@class System.Windows.Forms.X11DesktopColors.GdkColorStruct : System.ValueType
System.Windows.Forms.X11DesktopColors.GdkColorStruct = {}
---@alias CS.System.Windows.Forms.X11DesktopColors.GdkColorStruct System.Windows.Forms.X11DesktopColors.GdkColorStruct
CS.System.Windows.Forms.X11DesktopColors.GdkColorStruct = System.Windows.Forms.X11DesktopColors.GdkColorStruct


---@class System.Windows.Forms.X11DesktopColors.GObjectStruct : System.ValueType
---@field Instance System.IntPtr
---@field ref_count System.IntPtr
---@field data System.IntPtr
System.Windows.Forms.X11DesktopColors.GObjectStruct = {}
---@alias CS.System.Windows.Forms.X11DesktopColors.GObjectStruct System.Windows.Forms.X11DesktopColors.GObjectStruct
CS.System.Windows.Forms.X11DesktopColors.GObjectStruct = System.Windows.Forms.X11DesktopColors.GObjectStruct


---@class System.Windows.Forms.X11DesktopColors.GtkStyleStruct : System.ValueType
System.Windows.Forms.X11DesktopColors.GtkStyleStruct = {}
---@alias CS.System.Windows.Forms.X11DesktopColors.GtkStyleStruct System.Windows.Forms.X11DesktopColors.GtkStyleStruct
CS.System.Windows.Forms.X11DesktopColors.GtkStyleStruct = System.Windows.Forms.X11DesktopColors.GtkStyleStruct


---@class System.Windows.Forms.X11DesktopColors.Desktop
---@field Gtk System.Windows.Forms.X11DesktopColors.Desktop
---@field KDE System.Windows.Forms.X11DesktopColors.Desktop
---@field Unknown System.Windows.Forms.X11DesktopColors.Desktop
System.Windows.Forms.X11DesktopColors.Desktop = {}
---@alias CS.System.Windows.Forms.X11DesktopColors.Desktop System.Windows.Forms.X11DesktopColors.Desktop
CS.System.Windows.Forms.X11DesktopColors.Desktop = System.Windows.Forms.X11DesktopColors.Desktop


---@class System.Windows.Forms.X11Dnd : System.Object
System.Windows.Forms.X11Dnd = {}
---@alias CS.System.Windows.Forms.X11Dnd System.Windows.Forms.X11Dnd
CS.System.Windows.Forms.X11Dnd = System.Windows.Forms.X11Dnd

---@param display System.IntPtr
---@param keyboard System.Windows.Forms.X11Keyboard
---@return System.Windows.Forms.X11Dnd
function System.Windows.Forms.X11Dnd.New(display, keyboard) end
---@return boolean
function System.Windows.Forms.X11Dnd:InDrag() end
---@param hwnd System.Windows.Forms.Hwnd
---@param allow boolean
function System.Windows.Forms.X11Dnd:SetAllowDrop(hwnd, allow) end
---@param handle System.IntPtr
---@param data System.Object
---@param allowed_effects System.Windows.Forms.DragDropEffects
---@return System.Windows.Forms.DragDropEffects
function System.Windows.Forms.X11Dnd:StartDrag(handle, data, allowed_effects) end
function System.Windows.Forms.X11Dnd:HandleButtonUpMsg() end
---@return boolean
function System.Windows.Forms.X11Dnd:HandleMouseOver() end
---@param msg System.Windows.Forms.MSG
function System.Windows.Forms.X11Dnd:HandleKeyMessage(msg) end
---@param ref_xevent System.Windows.Forms.XEvent
---@return boolean,System.Windows.Forms.XEvent
function System.Windows.Forms.X11Dnd:HandleClientMessage(ref_xevent) end
---@param ref_xevent System.Windows.Forms.XEvent
---@return boolean,System.Windows.Forms.XEvent
function System.Windows.Forms.X11Dnd:HandleSelectionNotifyEvent(ref_xevent) end
---@param ref_xevent System.Windows.Forms.XEvent
---@return boolean,System.Windows.Forms.XEvent
function System.Windows.Forms.X11Dnd:HandleSelectionRequestEvent(ref_xevent) end

---@class System.Windows.Forms.X11Dnd.State
---@field Accepting System.Windows.Forms.X11Dnd.State
---@field Dragging System.Windows.Forms.X11Dnd.State
System.Windows.Forms.X11Dnd.State = {}
---@alias CS.System.Windows.Forms.X11Dnd.State System.Windows.Forms.X11Dnd.State
CS.System.Windows.Forms.X11Dnd.State = System.Windows.Forms.X11Dnd.State


---@class System.Windows.Forms.X11Dnd.DragState
---@field None System.Windows.Forms.X11Dnd.DragState
---@field Beginning System.Windows.Forms.X11Dnd.DragState
---@field Dragging System.Windows.Forms.X11Dnd.DragState
---@field Entered System.Windows.Forms.X11Dnd.DragState
System.Windows.Forms.X11Dnd.DragState = {}
---@alias CS.System.Windows.Forms.X11Dnd.DragState System.Windows.Forms.X11Dnd.DragState
CS.System.Windows.Forms.X11Dnd.DragState = System.Windows.Forms.X11Dnd.DragState


---@class System.Windows.Forms.X11Dnd.IDataConverter
System.Windows.Forms.X11Dnd.IDataConverter = {}
---@alias CS.System.Windows.Forms.X11Dnd.IDataConverter System.Windows.Forms.X11Dnd.IDataConverter
CS.System.Windows.Forms.X11Dnd.IDataConverter = System.Windows.Forms.X11Dnd.IDataConverter

---@param dnd System.Windows.Forms.X11Dnd
---@param data System.Windows.Forms.IDataObject
---@param ref_xevent System.Windows.Forms.XEvent
---@return ,System.Windows.Forms.XEvent
function System.Windows.Forms.X11Dnd.IDataConverter:GetData(dnd, data, ref_xevent) end
---@param dnd System.Windows.Forms.X11Dnd
---@param data System.Object
---@param ref_xevent System.Windows.Forms.XEvent
---@return ,System.Windows.Forms.XEvent
function System.Windows.Forms.X11Dnd.IDataConverter:SetData(dnd, data, ref_xevent) end

---@class System.Windows.Forms.X11Dnd.MimeConverter : System.MulticastDelegate
System.Windows.Forms.X11Dnd.MimeConverter = {}
---@alias CS.System.Windows.Forms.X11Dnd.MimeConverter System.Windows.Forms.X11Dnd.MimeConverter
CS.System.Windows.Forms.X11Dnd.MimeConverter = System.Windows.Forms.X11Dnd.MimeConverter

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.X11Dnd.MimeConverter
function System.Windows.Forms.X11Dnd.MimeConverter.New(object, method) end
---@param dsp System.IntPtr
---@param data System.Windows.Forms.IDataObject
---@param ref_xevent System.Windows.Forms.XEvent
---@return ,System.Windows.Forms.XEvent
function System.Windows.Forms.X11Dnd.MimeConverter:Invoke(dsp, data, ref_xevent) end
---@param dsp System.IntPtr
---@param data System.Windows.Forms.IDataObject
---@param ref_xevent System.Windows.Forms.XEvent
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult,System.Windows.Forms.XEvent
function System.Windows.Forms.X11Dnd.MimeConverter:BeginInvoke(dsp, data, ref_xevent, callback, object) end
---@param ref_xevent System.Windows.Forms.XEvent
---@param result System.IAsyncResult
---@return ,System.Windows.Forms.XEvent
function System.Windows.Forms.X11Dnd.MimeConverter:EndInvoke(ref_xevent, result) end

---@class System.Windows.Forms.X11Dnd.MimeHandler : System.Object
---@field Name string
---@field Aliases System.String[]
---@field Type System.IntPtr
---@field NonProtocol System.IntPtr
---@field Converter System.Windows.Forms.X11Dnd.IDataConverter
System.Windows.Forms.X11Dnd.MimeHandler = {}
---@alias CS.System.Windows.Forms.X11Dnd.MimeHandler System.Windows.Forms.X11Dnd.MimeHandler
CS.System.Windows.Forms.X11Dnd.MimeHandler = System.Windows.Forms.X11Dnd.MimeHandler

---@overload fun(name: string, converter: System.Windows.Forms.X11Dnd.IDataConverter) : System.Windows.Forms.X11Dnd.MimeHandler
---@param name string
---@param converter System.Windows.Forms.X11Dnd.IDataConverter
---@param aliases System.String[]
---@return System.Windows.Forms.X11Dnd.MimeHandler
function System.Windows.Forms.X11Dnd.MimeHandler.New(name, converter, aliases) end
---@return string
function System.Windows.Forms.X11Dnd.MimeHandler:ToString() end

---@class System.Windows.Forms.X11Dnd.SerializedObjectConverter : System.Object
System.Windows.Forms.X11Dnd.SerializedObjectConverter = {}
---@alias CS.System.Windows.Forms.X11Dnd.SerializedObjectConverter System.Windows.Forms.X11Dnd.SerializedObjectConverter
CS.System.Windows.Forms.X11Dnd.SerializedObjectConverter = System.Windows.Forms.X11Dnd.SerializedObjectConverter

---@return System.Windows.Forms.X11Dnd.SerializedObjectConverter
function System.Windows.Forms.X11Dnd.SerializedObjectConverter.New() end
---@param dnd System.Windows.Forms.X11Dnd
---@param data System.Windows.Forms.IDataObject
---@param ref_xevent System.Windows.Forms.XEvent
---@return ,System.Windows.Forms.XEvent
function System.Windows.Forms.X11Dnd.SerializedObjectConverter:GetData(dnd, data, ref_xevent) end
---@param dnd System.Windows.Forms.X11Dnd
---@param data System.Object
---@param ref_xevent System.Windows.Forms.XEvent
---@return ,System.Windows.Forms.XEvent
function System.Windows.Forms.X11Dnd.SerializedObjectConverter:SetData(dnd, data, ref_xevent) end

---@class System.Windows.Forms.X11Dnd.HtmlConverter : System.Object
System.Windows.Forms.X11Dnd.HtmlConverter = {}
---@alias CS.System.Windows.Forms.X11Dnd.HtmlConverter System.Windows.Forms.X11Dnd.HtmlConverter
CS.System.Windows.Forms.X11Dnd.HtmlConverter = System.Windows.Forms.X11Dnd.HtmlConverter

---@return System.Windows.Forms.X11Dnd.HtmlConverter
function System.Windows.Forms.X11Dnd.HtmlConverter.New() end
---@param dnd System.Windows.Forms.X11Dnd
---@param data System.Windows.Forms.IDataObject
---@param ref_xevent System.Windows.Forms.XEvent
---@return ,System.Windows.Forms.XEvent
function System.Windows.Forms.X11Dnd.HtmlConverter:GetData(dnd, data, ref_xevent) end
---@param dnd System.Windows.Forms.X11Dnd
---@param data System.Object
---@param ref_xevent System.Windows.Forms.XEvent
---@return ,System.Windows.Forms.XEvent
function System.Windows.Forms.X11Dnd.HtmlConverter:SetData(dnd, data, ref_xevent) end

---@class System.Windows.Forms.X11Dnd.TextConverter : System.Object
System.Windows.Forms.X11Dnd.TextConverter = {}
---@alias CS.System.Windows.Forms.X11Dnd.TextConverter System.Windows.Forms.X11Dnd.TextConverter
CS.System.Windows.Forms.X11Dnd.TextConverter = System.Windows.Forms.X11Dnd.TextConverter

---@return System.Windows.Forms.X11Dnd.TextConverter
function System.Windows.Forms.X11Dnd.TextConverter.New() end
---@param dnd System.Windows.Forms.X11Dnd
---@param data System.Windows.Forms.IDataObject
---@param ref_xevent System.Windows.Forms.XEvent
---@return ,System.Windows.Forms.XEvent
function System.Windows.Forms.X11Dnd.TextConverter:GetData(dnd, data, ref_xevent) end
---@param dnd System.Windows.Forms.X11Dnd
---@param data System.Object
---@param ref_xevent System.Windows.Forms.XEvent
---@return ,System.Windows.Forms.XEvent
function System.Windows.Forms.X11Dnd.TextConverter:SetData(dnd, data, ref_xevent) end

---@class System.Windows.Forms.X11Dnd.UriListConverter : System.Object
System.Windows.Forms.X11Dnd.UriListConverter = {}
---@alias CS.System.Windows.Forms.X11Dnd.UriListConverter System.Windows.Forms.X11Dnd.UriListConverter
CS.System.Windows.Forms.X11Dnd.UriListConverter = System.Windows.Forms.X11Dnd.UriListConverter

---@return System.Windows.Forms.X11Dnd.UriListConverter
function System.Windows.Forms.X11Dnd.UriListConverter.New() end
---@param dnd System.Windows.Forms.X11Dnd
---@param data System.Windows.Forms.IDataObject
---@param ref_xevent System.Windows.Forms.XEvent
---@return ,System.Windows.Forms.XEvent
function System.Windows.Forms.X11Dnd.UriListConverter:GetData(dnd, data, ref_xevent) end
---@param dnd System.Windows.Forms.X11Dnd
---@param data System.Object
---@param ref_xevent System.Windows.Forms.XEvent
---@return ,System.Windows.Forms.XEvent
function System.Windows.Forms.X11Dnd.UriListConverter:SetData(dnd, data, ref_xevent) end

---@class System.Windows.Forms.X11Dnd.DragData : System.Object
---@field Window System.IntPtr
---@field State System.Windows.Forms.X11Dnd.DragState
---@field Data System.Object
---@field Action System.IntPtr
---@field SupportedTypes System.IntPtr[]
---@field MouseState System.Windows.Forms.MouseButtons
---@field AllowedEffects System.Windows.Forms.DragDropEffects
---@field CurMousePos System.Drawing.Point
---@field LastWindow System.IntPtr
---@field LastTopLevel System.IntPtr
---@field WillAccept boolean
System.Windows.Forms.X11Dnd.DragData = {}
---@alias CS.System.Windows.Forms.X11Dnd.DragData System.Windows.Forms.X11Dnd.DragData
CS.System.Windows.Forms.X11Dnd.DragData = System.Windows.Forms.X11Dnd.DragData

---@return System.Windows.Forms.X11Dnd.DragData
function System.Windows.Forms.X11Dnd.DragData.New() end
function System.Windows.Forms.X11Dnd.DragData:Reset() end

---@class System.Windows.Forms.XLookupStatus
---@field XBufferOverflow System.Windows.Forms.XLookupStatus
---@field XLookupNone System.Windows.Forms.XLookupStatus
---@field XLookupChars System.Windows.Forms.XLookupStatus
---@field XLookupKeySym System.Windows.Forms.XLookupStatus
---@field XLookupBoth System.Windows.Forms.XLookupStatus
System.Windows.Forms.XLookupStatus = {}
---@alias CS.System.Windows.Forms.XLookupStatus System.Windows.Forms.XLookupStatus
CS.System.Windows.Forms.XLookupStatus = System.Windows.Forms.XLookupStatus


---@class System.Windows.Forms.X11Keyboard : System.Object
---@field ClientWindow System.IntPtr
---@field KeyEventMask System.Windows.Forms.EventMask
---@field ModifierKeys System.Windows.Forms.Keys
System.Windows.Forms.X11Keyboard = {}
---@alias CS.System.Windows.Forms.X11Keyboard System.Windows.Forms.X11Keyboard
CS.System.Windows.Forms.X11Keyboard = System.Windows.Forms.X11Keyboard

---@param display System.IntPtr
---@param clientWindow System.IntPtr
---@return System.Windows.Forms.X11Keyboard
function System.Windows.Forms.X11Keyboard.New(display, clientWindow) end
---@param window System.IntPtr
function System.Windows.Forms.X11Keyboard:DestroyICForWindow(window) end
function System.Windows.Forms.X11Keyboard:EnsureLayoutInitialized() end
---@param window System.IntPtr
function System.Windows.Forms.X11Keyboard:FocusIn(window) end
---@param window System.IntPtr
function System.Windows.Forms.X11Keyboard:FocusOut(window) end
---@param hwnd System.IntPtr
---@param ref_msg System.Windows.Forms.MSG
---@return boolean,System.Windows.Forms.MSG
function System.Windows.Forms.X11Keyboard:ResetKeyState(hwnd, ref_msg) end
---@param xevent System.Windows.Forms.XEvent
function System.Windows.Forms.X11Keyboard:PreFilter(xevent) end
---@param hwnd System.IntPtr
---@param xevent System.Windows.Forms.XEvent
---@param ref_msg System.Windows.Forms.MSG
---@return ,System.Windows.Forms.MSG
function System.Windows.Forms.X11Keyboard:KeyEvent(hwnd, xevent, ref_msg) end
---@param ref_msg System.Windows.Forms.MSG
---@return boolean,System.Windows.Forms.MSG
function System.Windows.Forms.X11Keyboard:TranslateMessage(ref_msg) end
---@param key number
---@return number
function System.Windows.Forms.X11Keyboard:ToKeycode(key) end
---@param vkey number
---@param scan number
---@param out_buffer string
---@return number,string
function System.Windows.Forms.X11Keyboard:ToUnicode(vkey, scan, out_buffer) end
---@param e System.Windows.Forms.XEvent
---@return number
function System.Windows.Forms.X11Keyboard:EventToVkey(e) end

---@class System.Windows.Forms.X11Keyboard.XIMCallbackContext : System.Object
System.Windows.Forms.X11Keyboard.XIMCallbackContext = {}
---@alias CS.System.Windows.Forms.X11Keyboard.XIMCallbackContext System.Windows.Forms.X11Keyboard.XIMCallbackContext
CS.System.Windows.Forms.X11Keyboard.XIMCallbackContext = System.Windows.Forms.X11Keyboard.XIMCallbackContext

---@param clientWindow System.IntPtr
---@return System.Windows.Forms.X11Keyboard.XIMCallbackContext
function System.Windows.Forms.X11Keyboard.XIMCallbackContext.New(clientWindow) end
---@param window System.IntPtr
---@param xim System.IntPtr
---@return System.IntPtr
function System.Windows.Forms.X11Keyboard.XIMCallbackContext:CreateXic(window, xim) end

---@class System.Windows.Forms.X11Keyboard.XIMPositionContext : System.Object
---@field Caret System.Windows.Forms.CaretStruct
---@field X number
---@field Y number
System.Windows.Forms.X11Keyboard.XIMPositionContext = {}
---@alias CS.System.Windows.Forms.X11Keyboard.XIMPositionContext System.Windows.Forms.X11Keyboard.XIMPositionContext
CS.System.Windows.Forms.X11Keyboard.XIMPositionContext = System.Windows.Forms.X11Keyboard.XIMPositionContext

---@return System.Windows.Forms.X11Keyboard.XIMPositionContext
function System.Windows.Forms.X11Keyboard.XIMPositionContext.New() end

---@class System.Windows.Forms.XAnyEvent : System.ValueType
System.Windows.Forms.XAnyEvent = {}
---@alias CS.System.Windows.Forms.XAnyEvent System.Windows.Forms.XAnyEvent
CS.System.Windows.Forms.XAnyEvent = System.Windows.Forms.XAnyEvent


---@class System.Windows.Forms.XKeyEvent : System.ValueType
System.Windows.Forms.XKeyEvent = {}
---@alias CS.System.Windows.Forms.XKeyEvent System.Windows.Forms.XKeyEvent
CS.System.Windows.Forms.XKeyEvent = System.Windows.Forms.XKeyEvent


---@class System.Windows.Forms.XButtonEvent : System.ValueType
System.Windows.Forms.XButtonEvent = {}
---@alias CS.System.Windows.Forms.XButtonEvent System.Windows.Forms.XButtonEvent
CS.System.Windows.Forms.XButtonEvent = System.Windows.Forms.XButtonEvent


---@class System.Windows.Forms.XMotionEvent : System.ValueType
System.Windows.Forms.XMotionEvent = {}
---@alias CS.System.Windows.Forms.XMotionEvent System.Windows.Forms.XMotionEvent
CS.System.Windows.Forms.XMotionEvent = System.Windows.Forms.XMotionEvent


---@class System.Windows.Forms.XCrossingEvent : System.ValueType
System.Windows.Forms.XCrossingEvent = {}
---@alias CS.System.Windows.Forms.XCrossingEvent System.Windows.Forms.XCrossingEvent
CS.System.Windows.Forms.XCrossingEvent = System.Windows.Forms.XCrossingEvent


---@class System.Windows.Forms.XFocusChangeEvent : System.ValueType
System.Windows.Forms.XFocusChangeEvent = {}
---@alias CS.System.Windows.Forms.XFocusChangeEvent System.Windows.Forms.XFocusChangeEvent
CS.System.Windows.Forms.XFocusChangeEvent = System.Windows.Forms.XFocusChangeEvent


---@class System.Windows.Forms.XKeymapEvent : System.ValueType
System.Windows.Forms.XKeymapEvent = {}
---@alias CS.System.Windows.Forms.XKeymapEvent System.Windows.Forms.XKeymapEvent
CS.System.Windows.Forms.XKeymapEvent = System.Windows.Forms.XKeymapEvent


---@class System.Windows.Forms.XExposeEvent : System.ValueType
System.Windows.Forms.XExposeEvent = {}
---@alias CS.System.Windows.Forms.XExposeEvent System.Windows.Forms.XExposeEvent
CS.System.Windows.Forms.XExposeEvent = System.Windows.Forms.XExposeEvent


---@class System.Windows.Forms.XGraphicsExposeEvent : System.ValueType
System.Windows.Forms.XGraphicsExposeEvent = {}
---@alias CS.System.Windows.Forms.XGraphicsExposeEvent System.Windows.Forms.XGraphicsExposeEvent
CS.System.Windows.Forms.XGraphicsExposeEvent = System.Windows.Forms.XGraphicsExposeEvent


---@class System.Windows.Forms.XNoExposeEvent : System.ValueType
System.Windows.Forms.XNoExposeEvent = {}
---@alias CS.System.Windows.Forms.XNoExposeEvent System.Windows.Forms.XNoExposeEvent
CS.System.Windows.Forms.XNoExposeEvent = System.Windows.Forms.XNoExposeEvent


---@class System.Windows.Forms.XVisibilityEvent : System.ValueType
System.Windows.Forms.XVisibilityEvent = {}
---@alias CS.System.Windows.Forms.XVisibilityEvent System.Windows.Forms.XVisibilityEvent
CS.System.Windows.Forms.XVisibilityEvent = System.Windows.Forms.XVisibilityEvent


---@class System.Windows.Forms.XCreateWindowEvent : System.ValueType
System.Windows.Forms.XCreateWindowEvent = {}
---@alias CS.System.Windows.Forms.XCreateWindowEvent System.Windows.Forms.XCreateWindowEvent
CS.System.Windows.Forms.XCreateWindowEvent = System.Windows.Forms.XCreateWindowEvent


---@class System.Windows.Forms.XDestroyWindowEvent : System.ValueType
System.Windows.Forms.XDestroyWindowEvent = {}
---@alias CS.System.Windows.Forms.XDestroyWindowEvent System.Windows.Forms.XDestroyWindowEvent
CS.System.Windows.Forms.XDestroyWindowEvent = System.Windows.Forms.XDestroyWindowEvent


---@class System.Windows.Forms.XUnmapEvent : System.ValueType
System.Windows.Forms.XUnmapEvent = {}
---@alias CS.System.Windows.Forms.XUnmapEvent System.Windows.Forms.XUnmapEvent
CS.System.Windows.Forms.XUnmapEvent = System.Windows.Forms.XUnmapEvent


---@class System.Windows.Forms.XMapEvent : System.ValueType
System.Windows.Forms.XMapEvent = {}
---@alias CS.System.Windows.Forms.XMapEvent System.Windows.Forms.XMapEvent
CS.System.Windows.Forms.XMapEvent = System.Windows.Forms.XMapEvent


---@class System.Windows.Forms.XMapRequestEvent : System.ValueType
System.Windows.Forms.XMapRequestEvent = {}
---@alias CS.System.Windows.Forms.XMapRequestEvent System.Windows.Forms.XMapRequestEvent
CS.System.Windows.Forms.XMapRequestEvent = System.Windows.Forms.XMapRequestEvent


---@class System.Windows.Forms.XReparentEvent : System.ValueType
System.Windows.Forms.XReparentEvent = {}
---@alias CS.System.Windows.Forms.XReparentEvent System.Windows.Forms.XReparentEvent
CS.System.Windows.Forms.XReparentEvent = System.Windows.Forms.XReparentEvent


---@class System.Windows.Forms.XConfigureEvent : System.ValueType
System.Windows.Forms.XConfigureEvent = {}
---@alias CS.System.Windows.Forms.XConfigureEvent System.Windows.Forms.XConfigureEvent
CS.System.Windows.Forms.XConfigureEvent = System.Windows.Forms.XConfigureEvent


---@class System.Windows.Forms.XGravityEvent : System.ValueType
System.Windows.Forms.XGravityEvent = {}
---@alias CS.System.Windows.Forms.XGravityEvent System.Windows.Forms.XGravityEvent
CS.System.Windows.Forms.XGravityEvent = System.Windows.Forms.XGravityEvent


---@class System.Windows.Forms.XResizeRequestEvent : System.ValueType
System.Windows.Forms.XResizeRequestEvent = {}
---@alias CS.System.Windows.Forms.XResizeRequestEvent System.Windows.Forms.XResizeRequestEvent
CS.System.Windows.Forms.XResizeRequestEvent = System.Windows.Forms.XResizeRequestEvent


---@class System.Windows.Forms.XConfigureRequestEvent : System.ValueType
System.Windows.Forms.XConfigureRequestEvent = {}
---@alias CS.System.Windows.Forms.XConfigureRequestEvent System.Windows.Forms.XConfigureRequestEvent
CS.System.Windows.Forms.XConfigureRequestEvent = System.Windows.Forms.XConfigureRequestEvent


---@class System.Windows.Forms.XCirculateEvent : System.ValueType
System.Windows.Forms.XCirculateEvent = {}
---@alias CS.System.Windows.Forms.XCirculateEvent System.Windows.Forms.XCirculateEvent
CS.System.Windows.Forms.XCirculateEvent = System.Windows.Forms.XCirculateEvent


---@class System.Windows.Forms.XCirculateRequestEvent : System.ValueType
System.Windows.Forms.XCirculateRequestEvent = {}
---@alias CS.System.Windows.Forms.XCirculateRequestEvent System.Windows.Forms.XCirculateRequestEvent
CS.System.Windows.Forms.XCirculateRequestEvent = System.Windows.Forms.XCirculateRequestEvent


---@class System.Windows.Forms.XPropertyEvent : System.ValueType
System.Windows.Forms.XPropertyEvent = {}
---@alias CS.System.Windows.Forms.XPropertyEvent System.Windows.Forms.XPropertyEvent
CS.System.Windows.Forms.XPropertyEvent = System.Windows.Forms.XPropertyEvent


---@class System.Windows.Forms.XSelectionClearEvent : System.ValueType
System.Windows.Forms.XSelectionClearEvent = {}
---@alias CS.System.Windows.Forms.XSelectionClearEvent System.Windows.Forms.XSelectionClearEvent
CS.System.Windows.Forms.XSelectionClearEvent = System.Windows.Forms.XSelectionClearEvent


---@class System.Windows.Forms.XSelectionRequestEvent : System.ValueType
System.Windows.Forms.XSelectionRequestEvent = {}
---@alias CS.System.Windows.Forms.XSelectionRequestEvent System.Windows.Forms.XSelectionRequestEvent
CS.System.Windows.Forms.XSelectionRequestEvent = System.Windows.Forms.XSelectionRequestEvent


---@class System.Windows.Forms.XSelectionEvent : System.ValueType
System.Windows.Forms.XSelectionEvent = {}
---@alias CS.System.Windows.Forms.XSelectionEvent System.Windows.Forms.XSelectionEvent
CS.System.Windows.Forms.XSelectionEvent = System.Windows.Forms.XSelectionEvent


---@class System.Windows.Forms.XColormapEvent : System.ValueType
System.Windows.Forms.XColormapEvent = {}
---@alias CS.System.Windows.Forms.XColormapEvent System.Windows.Forms.XColormapEvent
CS.System.Windows.Forms.XColormapEvent = System.Windows.Forms.XColormapEvent


---@class System.Windows.Forms.XClientMessageEvent : System.ValueType
System.Windows.Forms.XClientMessageEvent = {}
---@alias CS.System.Windows.Forms.XClientMessageEvent System.Windows.Forms.XClientMessageEvent
CS.System.Windows.Forms.XClientMessageEvent = System.Windows.Forms.XClientMessageEvent


---@class System.Windows.Forms.XMappingEvent : System.ValueType
System.Windows.Forms.XMappingEvent = {}
---@alias CS.System.Windows.Forms.XMappingEvent System.Windows.Forms.XMappingEvent
CS.System.Windows.Forms.XMappingEvent = System.Windows.Forms.XMappingEvent


---@class System.Windows.Forms.XErrorEvent : System.ValueType
System.Windows.Forms.XErrorEvent = {}
---@alias CS.System.Windows.Forms.XErrorEvent System.Windows.Forms.XErrorEvent
CS.System.Windows.Forms.XErrorEvent = System.Windows.Forms.XErrorEvent


---@class System.Windows.Forms.XEventPad : System.ValueType
System.Windows.Forms.XEventPad = {}
---@alias CS.System.Windows.Forms.XEventPad System.Windows.Forms.XEventPad
CS.System.Windows.Forms.XEventPad = System.Windows.Forms.XEventPad


---@class System.Windows.Forms.XEvent : System.ValueType
System.Windows.Forms.XEvent = {}
---@alias CS.System.Windows.Forms.XEvent System.Windows.Forms.XEvent
CS.System.Windows.Forms.XEvent = System.Windows.Forms.XEvent

---@overload fun(ev: System.Object) : string
---@return string
function System.Windows.Forms.XEvent:ToString() end

---@class System.Windows.Forms.XSetWindowAttributes : System.ValueType
System.Windows.Forms.XSetWindowAttributes = {}
---@alias CS.System.Windows.Forms.XSetWindowAttributes System.Windows.Forms.XSetWindowAttributes
CS.System.Windows.Forms.XSetWindowAttributes = System.Windows.Forms.XSetWindowAttributes


---@class System.Windows.Forms.XWindowAttributes : System.ValueType
System.Windows.Forms.XWindowAttributes = {}
---@alias CS.System.Windows.Forms.XWindowAttributes System.Windows.Forms.XWindowAttributes
CS.System.Windows.Forms.XWindowAttributes = System.Windows.Forms.XWindowAttributes

---@return string
function System.Windows.Forms.XWindowAttributes:ToString() end

---@class System.Windows.Forms.XTextProperty : System.ValueType
System.Windows.Forms.XTextProperty = {}
---@alias CS.System.Windows.Forms.XTextProperty System.Windows.Forms.XTextProperty
CS.System.Windows.Forms.XTextProperty = System.Windows.Forms.XTextProperty


---@class System.Windows.Forms.XWindowClass
---@field InputOutput System.Windows.Forms.XWindowClass
---@field InputOnly System.Windows.Forms.XWindowClass
System.Windows.Forms.XWindowClass = {}
---@alias CS.System.Windows.Forms.XWindowClass System.Windows.Forms.XWindowClass
CS.System.Windows.Forms.XWindowClass = System.Windows.Forms.XWindowClass


---@class System.Windows.Forms.XEventName
---@field KeyPress System.Windows.Forms.XEventName
---@field KeyRelease System.Windows.Forms.XEventName
---@field ButtonPress System.Windows.Forms.XEventName
---@field ButtonRelease System.Windows.Forms.XEventName
---@field MotionNotify System.Windows.Forms.XEventName
---@field EnterNotify System.Windows.Forms.XEventName
---@field LeaveNotify System.Windows.Forms.XEventName
---@field FocusIn System.Windows.Forms.XEventName
---@field FocusOut System.Windows.Forms.XEventName
---@field KeymapNotify System.Windows.Forms.XEventName
---@field Expose System.Windows.Forms.XEventName
---@field GraphicsExpose System.Windows.Forms.XEventName
---@field NoExpose System.Windows.Forms.XEventName
---@field VisibilityNotify System.Windows.Forms.XEventName
---@field CreateNotify System.Windows.Forms.XEventName
---@field DestroyNotify System.Windows.Forms.XEventName
---@field UnmapNotify System.Windows.Forms.XEventName
---@field MapNotify System.Windows.Forms.XEventName
---@field MapRequest System.Windows.Forms.XEventName
---@field ReparentNotify System.Windows.Forms.XEventName
---@field ConfigureNotify System.Windows.Forms.XEventName
---@field ConfigureRequest System.Windows.Forms.XEventName
---@field GravityNotify System.Windows.Forms.XEventName
---@field ResizeRequest System.Windows.Forms.XEventName
---@field CirculateNotify System.Windows.Forms.XEventName
---@field CirculateRequest System.Windows.Forms.XEventName
---@field PropertyNotify System.Windows.Forms.XEventName
---@field SelectionClear System.Windows.Forms.XEventName
---@field SelectionRequest System.Windows.Forms.XEventName
---@field SelectionNotify System.Windows.Forms.XEventName
---@field ColormapNotify System.Windows.Forms.XEventName
---@field ClientMessage System.Windows.Forms.XEventName
---@field MappingNotify System.Windows.Forms.XEventName
---@field LASTEvent System.Windows.Forms.XEventName
System.Windows.Forms.XEventName = {}
---@alias CS.System.Windows.Forms.XEventName System.Windows.Forms.XEventName
CS.System.Windows.Forms.XEventName = System.Windows.Forms.XEventName


---@class System.Windows.Forms.SetWindowValuemask
---@field Nothing System.Windows.Forms.SetWindowValuemask
---@field BackPixmap System.Windows.Forms.SetWindowValuemask
---@field BackPixel System.Windows.Forms.SetWindowValuemask
---@field BorderPixmap System.Windows.Forms.SetWindowValuemask
---@field BorderPixel System.Windows.Forms.SetWindowValuemask
---@field BitGravity System.Windows.Forms.SetWindowValuemask
---@field WinGravity System.Windows.Forms.SetWindowValuemask
---@field BackingStore System.Windows.Forms.SetWindowValuemask
---@field BackingPlanes System.Windows.Forms.SetWindowValuemask
---@field BackingPixel System.Windows.Forms.SetWindowValuemask
---@field OverrideRedirect System.Windows.Forms.SetWindowValuemask
---@field SaveUnder System.Windows.Forms.SetWindowValuemask
---@field EventMask System.Windows.Forms.SetWindowValuemask
---@field DontPropagate System.Windows.Forms.SetWindowValuemask
---@field ColorMap System.Windows.Forms.SetWindowValuemask
---@field Cursor System.Windows.Forms.SetWindowValuemask
System.Windows.Forms.SetWindowValuemask = {}
---@alias CS.System.Windows.Forms.SetWindowValuemask System.Windows.Forms.SetWindowValuemask
CS.System.Windows.Forms.SetWindowValuemask = System.Windows.Forms.SetWindowValuemask


---@class System.Windows.Forms.SendEventValues
---@field PointerWindow System.Windows.Forms.SendEventValues
---@field InputFocus System.Windows.Forms.SendEventValues
System.Windows.Forms.SendEventValues = {}
---@alias CS.System.Windows.Forms.SendEventValues System.Windows.Forms.SendEventValues
CS.System.Windows.Forms.SendEventValues = System.Windows.Forms.SendEventValues


---@class System.Windows.Forms.CreateWindowArgs
---@field CopyFromParent System.Windows.Forms.CreateWindowArgs
---@field ParentRelative System.Windows.Forms.CreateWindowArgs
---@field InputOutput System.Windows.Forms.CreateWindowArgs
---@field InputOnly System.Windows.Forms.CreateWindowArgs
System.Windows.Forms.CreateWindowArgs = {}
---@alias CS.System.Windows.Forms.CreateWindowArgs System.Windows.Forms.CreateWindowArgs
CS.System.Windows.Forms.CreateWindowArgs = System.Windows.Forms.CreateWindowArgs


---@class System.Windows.Forms.Gravity
---@field ForgetGravity System.Windows.Forms.Gravity
---@field NorthWestGravity System.Windows.Forms.Gravity
---@field NorthGravity System.Windows.Forms.Gravity
---@field NorthEastGravity System.Windows.Forms.Gravity
---@field WestGravity System.Windows.Forms.Gravity
---@field CenterGravity System.Windows.Forms.Gravity
---@field EastGravity System.Windows.Forms.Gravity
---@field SouthWestGravity System.Windows.Forms.Gravity
---@field SouthGravity System.Windows.Forms.Gravity
---@field SouthEastGravity System.Windows.Forms.Gravity
---@field StaticGravity System.Windows.Forms.Gravity
System.Windows.Forms.Gravity = {}
---@alias CS.System.Windows.Forms.Gravity System.Windows.Forms.Gravity
CS.System.Windows.Forms.Gravity = System.Windows.Forms.Gravity


---@class System.Windows.Forms.XKeySym
---@field XK_BackSpace System.Windows.Forms.XKeySym
---@field XK_Tab System.Windows.Forms.XKeySym
---@field XK_Clear System.Windows.Forms.XKeySym
---@field XK_Return System.Windows.Forms.XKeySym
---@field XK_Home System.Windows.Forms.XKeySym
---@field XK_Left System.Windows.Forms.XKeySym
---@field XK_Up System.Windows.Forms.XKeySym
---@field XK_Right System.Windows.Forms.XKeySym
---@field XK_Down System.Windows.Forms.XKeySym
---@field XK_Page_Up System.Windows.Forms.XKeySym
---@field XK_Page_Down System.Windows.Forms.XKeySym
---@field XK_End System.Windows.Forms.XKeySym
---@field XK_Begin System.Windows.Forms.XKeySym
---@field XK_Menu System.Windows.Forms.XKeySym
---@field XK_Shift_L System.Windows.Forms.XKeySym
---@field XK_Shift_R System.Windows.Forms.XKeySym
---@field XK_Control_L System.Windows.Forms.XKeySym
---@field XK_Control_R System.Windows.Forms.XKeySym
---@field XK_Caps_Lock System.Windows.Forms.XKeySym
---@field XK_Shift_Lock System.Windows.Forms.XKeySym
---@field XK_Meta_L System.Windows.Forms.XKeySym
---@field XK_Meta_R System.Windows.Forms.XKeySym
---@field XK_Alt_L System.Windows.Forms.XKeySym
---@field XK_Alt_R System.Windows.Forms.XKeySym
---@field XK_Super_L System.Windows.Forms.XKeySym
---@field XK_Super_R System.Windows.Forms.XKeySym
---@field XK_Hyper_L System.Windows.Forms.XKeySym
---@field XK_Hyper_R System.Windows.Forms.XKeySym
System.Windows.Forms.XKeySym = {}
---@alias CS.System.Windows.Forms.XKeySym System.Windows.Forms.XKeySym
CS.System.Windows.Forms.XKeySym = System.Windows.Forms.XKeySym


---@class System.Windows.Forms.EventMask
---@field NoEventMask System.Windows.Forms.EventMask
---@field KeyPressMask System.Windows.Forms.EventMask
---@field KeyReleaseMask System.Windows.Forms.EventMask
---@field ButtonPressMask System.Windows.Forms.EventMask
---@field ButtonReleaseMask System.Windows.Forms.EventMask
---@field EnterWindowMask System.Windows.Forms.EventMask
---@field LeaveWindowMask System.Windows.Forms.EventMask
---@field PointerMotionMask System.Windows.Forms.EventMask
---@field PointerMotionHintMask System.Windows.Forms.EventMask
---@field Button1MotionMask System.Windows.Forms.EventMask
---@field Button2MotionMask System.Windows.Forms.EventMask
---@field Button3MotionMask System.Windows.Forms.EventMask
---@field Button4MotionMask System.Windows.Forms.EventMask
---@field Button5MotionMask System.Windows.Forms.EventMask
---@field ButtonMotionMask System.Windows.Forms.EventMask
---@field KeymapStateMask System.Windows.Forms.EventMask
---@field ExposureMask System.Windows.Forms.EventMask
---@field VisibilityChangeMask System.Windows.Forms.EventMask
---@field StructureNotifyMask System.Windows.Forms.EventMask
---@field ResizeRedirectMask System.Windows.Forms.EventMask
---@field SubstructureNotifyMask System.Windows.Forms.EventMask
---@field SubstructureRedirectMask System.Windows.Forms.EventMask
---@field FocusChangeMask System.Windows.Forms.EventMask
---@field PropertyChangeMask System.Windows.Forms.EventMask
---@field ColormapChangeMask System.Windows.Forms.EventMask
---@field OwnerGrabButtonMask System.Windows.Forms.EventMask
System.Windows.Forms.EventMask = {}
---@alias CS.System.Windows.Forms.EventMask System.Windows.Forms.EventMask
CS.System.Windows.Forms.EventMask = System.Windows.Forms.EventMask


---@class System.Windows.Forms.GrabMode
---@field GrabModeSync System.Windows.Forms.GrabMode
---@field GrabModeAsync System.Windows.Forms.GrabMode
System.Windows.Forms.GrabMode = {}
---@alias CS.System.Windows.Forms.GrabMode System.Windows.Forms.GrabMode
CS.System.Windows.Forms.GrabMode = System.Windows.Forms.GrabMode


---@class System.Windows.Forms.XStandardColormap : System.ValueType
System.Windows.Forms.XStandardColormap = {}
---@alias CS.System.Windows.Forms.XStandardColormap System.Windows.Forms.XStandardColormap
CS.System.Windows.Forms.XStandardColormap = System.Windows.Forms.XStandardColormap


---@class System.Windows.Forms.XColor : System.ValueType
System.Windows.Forms.XColor = {}
---@alias CS.System.Windows.Forms.XColor System.Windows.Forms.XColor
CS.System.Windows.Forms.XColor = System.Windows.Forms.XColor


---@class System.Windows.Forms.Atom
---@field AnyPropertyType System.Windows.Forms.Atom
---@field XA_PRIMARY System.Windows.Forms.Atom
---@field XA_SECONDARY System.Windows.Forms.Atom
---@field XA_ARC System.Windows.Forms.Atom
---@field XA_ATOM System.Windows.Forms.Atom
---@field XA_BITMAP System.Windows.Forms.Atom
---@field XA_CARDINAL System.Windows.Forms.Atom
---@field XA_COLORMAP System.Windows.Forms.Atom
---@field XA_CURSOR System.Windows.Forms.Atom
---@field XA_CUT_BUFFER0 System.Windows.Forms.Atom
---@field XA_CUT_BUFFER1 System.Windows.Forms.Atom
---@field XA_CUT_BUFFER2 System.Windows.Forms.Atom
---@field XA_CUT_BUFFER3 System.Windows.Forms.Atom
---@field XA_CUT_BUFFER4 System.Windows.Forms.Atom
---@field XA_CUT_BUFFER5 System.Windows.Forms.Atom
---@field XA_CUT_BUFFER6 System.Windows.Forms.Atom
---@field XA_CUT_BUFFER7 System.Windows.Forms.Atom
---@field XA_DRAWABLE System.Windows.Forms.Atom
---@field XA_FONT System.Windows.Forms.Atom
---@field XA_INTEGER System.Windows.Forms.Atom
---@field XA_PIXMAP System.Windows.Forms.Atom
---@field XA_POINT System.Windows.Forms.Atom
---@field XA_RECTANGLE System.Windows.Forms.Atom
---@field XA_RESOURCE_MANAGER System.Windows.Forms.Atom
---@field XA_RGB_COLOR_MAP System.Windows.Forms.Atom
---@field XA_RGB_BEST_MAP System.Windows.Forms.Atom
---@field XA_RGB_BLUE_MAP System.Windows.Forms.Atom
---@field XA_RGB_DEFAULT_MAP System.Windows.Forms.Atom
---@field XA_RGB_GRAY_MAP System.Windows.Forms.Atom
---@field XA_RGB_GREEN_MAP System.Windows.Forms.Atom
---@field XA_RGB_RED_MAP System.Windows.Forms.Atom
---@field XA_STRING System.Windows.Forms.Atom
---@field XA_VISUALID System.Windows.Forms.Atom
---@field XA_WINDOW System.Windows.Forms.Atom
---@field XA_WM_COMMAND System.Windows.Forms.Atom
---@field XA_WM_HINTS System.Windows.Forms.Atom
---@field XA_WM_CLIENT_MACHINE System.Windows.Forms.Atom
---@field XA_WM_ICON_NAME System.Windows.Forms.Atom
---@field XA_WM_ICON_SIZE System.Windows.Forms.Atom
---@field XA_WM_NAME System.Windows.Forms.Atom
---@field XA_WM_NORMAL_HINTS System.Windows.Forms.Atom
---@field XA_WM_SIZE_HINTS System.Windows.Forms.Atom
---@field XA_WM_ZOOM_HINTS System.Windows.Forms.Atom
---@field XA_MIN_SPACE System.Windows.Forms.Atom
---@field XA_NORM_SPACE System.Windows.Forms.Atom
---@field XA_MAX_SPACE System.Windows.Forms.Atom
---@field XA_END_SPACE System.Windows.Forms.Atom
---@field XA_SUPERSCRIPT_X System.Windows.Forms.Atom
---@field XA_SUPERSCRIPT_Y System.Windows.Forms.Atom
---@field XA_SUBSCRIPT_X System.Windows.Forms.Atom
---@field XA_SUBSCRIPT_Y System.Windows.Forms.Atom
---@field XA_UNDERLINE_POSITION System.Windows.Forms.Atom
---@field XA_UNDERLINE_THICKNESS System.Windows.Forms.Atom
---@field XA_STRIKEOUT_ASCENT System.Windows.Forms.Atom
---@field XA_STRIKEOUT_DESCENT System.Windows.Forms.Atom
---@field XA_ITALIC_ANGLE System.Windows.Forms.Atom
---@field XA_X_HEIGHT System.Windows.Forms.Atom
---@field XA_QUAD_WIDTH System.Windows.Forms.Atom
---@field XA_WEIGHT System.Windows.Forms.Atom
---@field XA_POINT_SIZE System.Windows.Forms.Atom
---@field XA_RESOLUTION System.Windows.Forms.Atom
---@field XA_COPYRIGHT System.Windows.Forms.Atom
---@field XA_NOTICE System.Windows.Forms.Atom
---@field XA_FONT_NAME System.Windows.Forms.Atom
---@field XA_FAMILY_NAME System.Windows.Forms.Atom
---@field XA_FULL_NAME System.Windows.Forms.Atom
---@field XA_CAP_HEIGHT System.Windows.Forms.Atom
---@field XA_WM_CLASS System.Windows.Forms.Atom
---@field XA_WM_TRANSIENT_FOR System.Windows.Forms.Atom
---@field XA_LAST_PREDEFINED System.Windows.Forms.Atom
System.Windows.Forms.Atom = {}
---@alias CS.System.Windows.Forms.Atom System.Windows.Forms.Atom
CS.System.Windows.Forms.Atom = System.Windows.Forms.Atom


---@class System.Windows.Forms.XScreen : System.ValueType
System.Windows.Forms.XScreen = {}
---@alias CS.System.Windows.Forms.XScreen System.Windows.Forms.XScreen
CS.System.Windows.Forms.XScreen = System.Windows.Forms.XScreen


---@class System.Windows.Forms.ChangeWindowFlags
---@field CWX System.Windows.Forms.ChangeWindowFlags
---@field CWY System.Windows.Forms.ChangeWindowFlags
---@field CWWidth System.Windows.Forms.ChangeWindowFlags
---@field CWHeight System.Windows.Forms.ChangeWindowFlags
---@field CWBorderWidth System.Windows.Forms.ChangeWindowFlags
---@field CWSibling System.Windows.Forms.ChangeWindowFlags
---@field CWStackMode System.Windows.Forms.ChangeWindowFlags
System.Windows.Forms.ChangeWindowFlags = {}
---@alias CS.System.Windows.Forms.ChangeWindowFlags System.Windows.Forms.ChangeWindowFlags
CS.System.Windows.Forms.ChangeWindowFlags = System.Windows.Forms.ChangeWindowFlags


---@class System.Windows.Forms.StackMode
---@field Above System.Windows.Forms.StackMode
---@field Below System.Windows.Forms.StackMode
---@field TopIf System.Windows.Forms.StackMode
---@field BottomIf System.Windows.Forms.StackMode
---@field Opposite System.Windows.Forms.StackMode
System.Windows.Forms.StackMode = {}
---@alias CS.System.Windows.Forms.StackMode System.Windows.Forms.StackMode
CS.System.Windows.Forms.StackMode = System.Windows.Forms.StackMode


---@class System.Windows.Forms.XWindowChanges : System.ValueType
System.Windows.Forms.XWindowChanges = {}
---@alias CS.System.Windows.Forms.XWindowChanges System.Windows.Forms.XWindowChanges
CS.System.Windows.Forms.XWindowChanges = System.Windows.Forms.XWindowChanges


---@class System.Windows.Forms.ColorFlags
---@field DoRed System.Windows.Forms.ColorFlags
---@field DoGreen System.Windows.Forms.ColorFlags
---@field DoBlue System.Windows.Forms.ColorFlags
System.Windows.Forms.ColorFlags = {}
---@alias CS.System.Windows.Forms.ColorFlags System.Windows.Forms.ColorFlags
CS.System.Windows.Forms.ColorFlags = System.Windows.Forms.ColorFlags


---@class System.Windows.Forms.NotifyMode
---@field NotifyNormal System.Windows.Forms.NotifyMode
---@field NotifyGrab System.Windows.Forms.NotifyMode
---@field NotifyUngrab System.Windows.Forms.NotifyMode
System.Windows.Forms.NotifyMode = {}
---@alias CS.System.Windows.Forms.NotifyMode System.Windows.Forms.NotifyMode
CS.System.Windows.Forms.NotifyMode = System.Windows.Forms.NotifyMode


---@class System.Windows.Forms.NotifyDetail
---@field NotifyAncestor System.Windows.Forms.NotifyDetail
---@field NotifyVirtual System.Windows.Forms.NotifyDetail
---@field NotifyInferior System.Windows.Forms.NotifyDetail
---@field NotifyNonlinear System.Windows.Forms.NotifyDetail
---@field NotifyNonlinearVirtual System.Windows.Forms.NotifyDetail
---@field NotifyPointer System.Windows.Forms.NotifyDetail
---@field NotifyPointerRoot System.Windows.Forms.NotifyDetail
---@field NotifyDetailNone System.Windows.Forms.NotifyDetail
System.Windows.Forms.NotifyDetail = {}
---@alias CS.System.Windows.Forms.NotifyDetail System.Windows.Forms.NotifyDetail
CS.System.Windows.Forms.NotifyDetail = System.Windows.Forms.NotifyDetail


---@class System.Windows.Forms.MotifWmHints : System.ValueType
System.Windows.Forms.MotifWmHints = {}
---@alias CS.System.Windows.Forms.MotifWmHints System.Windows.Forms.MotifWmHints
CS.System.Windows.Forms.MotifWmHints = System.Windows.Forms.MotifWmHints

---@return string
function System.Windows.Forms.MotifWmHints:ToString() end

---@class System.Windows.Forms.MotifFlags
---@field Functions System.Windows.Forms.MotifFlags
---@field Decorations System.Windows.Forms.MotifFlags
---@field InputMode System.Windows.Forms.MotifFlags
---@field Status System.Windows.Forms.MotifFlags
System.Windows.Forms.MotifFlags = {}
---@alias CS.System.Windows.Forms.MotifFlags System.Windows.Forms.MotifFlags
CS.System.Windows.Forms.MotifFlags = System.Windows.Forms.MotifFlags


---@class System.Windows.Forms.MotifFunctions
---@field All System.Windows.Forms.MotifFunctions
---@field Resize System.Windows.Forms.MotifFunctions
---@field Move System.Windows.Forms.MotifFunctions
---@field Minimize System.Windows.Forms.MotifFunctions
---@field Maximize System.Windows.Forms.MotifFunctions
---@field Close System.Windows.Forms.MotifFunctions
System.Windows.Forms.MotifFunctions = {}
---@alias CS.System.Windows.Forms.MotifFunctions System.Windows.Forms.MotifFunctions
CS.System.Windows.Forms.MotifFunctions = System.Windows.Forms.MotifFunctions


---@class System.Windows.Forms.MotifDecorations
---@field All System.Windows.Forms.MotifDecorations
---@field Border System.Windows.Forms.MotifDecorations
---@field ResizeH System.Windows.Forms.MotifDecorations
---@field Title System.Windows.Forms.MotifDecorations
---@field Menu System.Windows.Forms.MotifDecorations
---@field Minimize System.Windows.Forms.MotifDecorations
---@field Maximize System.Windows.Forms.MotifDecorations
System.Windows.Forms.MotifDecorations = {}
---@alias CS.System.Windows.Forms.MotifDecorations System.Windows.Forms.MotifDecorations
CS.System.Windows.Forms.MotifDecorations = System.Windows.Forms.MotifDecorations


---@class System.Windows.Forms.MotifInputMode
---@field Modeless System.Windows.Forms.MotifInputMode
---@field ApplicationModal System.Windows.Forms.MotifInputMode
---@field SystemModal System.Windows.Forms.MotifInputMode
---@field FullApplicationModal System.Windows.Forms.MotifInputMode
System.Windows.Forms.MotifInputMode = {}
---@alias CS.System.Windows.Forms.MotifInputMode System.Windows.Forms.MotifInputMode
CS.System.Windows.Forms.MotifInputMode = System.Windows.Forms.MotifInputMode


---@class System.Windows.Forms.KeyMasks
---@field ShiftMask System.Windows.Forms.KeyMasks
---@field LockMask System.Windows.Forms.KeyMasks
---@field ControlMask System.Windows.Forms.KeyMasks
---@field Mod1Mask System.Windows.Forms.KeyMasks
---@field Mod2Mask System.Windows.Forms.KeyMasks
---@field Mod3Mask System.Windows.Forms.KeyMasks
---@field Mod4Mask System.Windows.Forms.KeyMasks
---@field Mod5Mask System.Windows.Forms.KeyMasks
---@field ModMasks System.Windows.Forms.KeyMasks
System.Windows.Forms.KeyMasks = {}
---@alias CS.System.Windows.Forms.KeyMasks System.Windows.Forms.KeyMasks
CS.System.Windows.Forms.KeyMasks = System.Windows.Forms.KeyMasks


---@class System.Windows.Forms.MouseKeyMasks
---@field Button1Mask System.Windows.Forms.MouseKeyMasks
---@field Button2Mask System.Windows.Forms.MouseKeyMasks
---@field Button3Mask System.Windows.Forms.MouseKeyMasks
---@field Button4Mask System.Windows.Forms.MouseKeyMasks
---@field Button5Mask System.Windows.Forms.MouseKeyMasks
System.Windows.Forms.MouseKeyMasks = {}
---@alias CS.System.Windows.Forms.MouseKeyMasks System.Windows.Forms.MouseKeyMasks
CS.System.Windows.Forms.MouseKeyMasks = System.Windows.Forms.MouseKeyMasks


---@class System.Windows.Forms.XModifierKeymap : System.ValueType
---@field max_keypermod number
---@field modifiermap System.IntPtr
System.Windows.Forms.XModifierKeymap = {}
---@alias CS.System.Windows.Forms.XModifierKeymap System.Windows.Forms.XModifierKeymap
CS.System.Windows.Forms.XModifierKeymap = System.Windows.Forms.XModifierKeymap


---@class System.Windows.Forms.PropertyMode
---@field Replace System.Windows.Forms.PropertyMode
---@field Prepend System.Windows.Forms.PropertyMode
---@field Append System.Windows.Forms.PropertyMode
System.Windows.Forms.PropertyMode = {}
---@alias CS.System.Windows.Forms.PropertyMode System.Windows.Forms.PropertyMode
CS.System.Windows.Forms.PropertyMode = System.Windows.Forms.PropertyMode


---@class System.Windows.Forms.XKeyBoardState : System.ValueType
---@field key_click_percent number
---@field bell_percent number
---@field bell_pitch number
---@field bell_duration number
---@field led_mask System.IntPtr
---@field global_auto_repeat number
---@field auto_repeats System.Windows.Forms.XKeyBoardState.AutoRepeats
System.Windows.Forms.XKeyBoardState = {}
---@alias CS.System.Windows.Forms.XKeyBoardState System.Windows.Forms.XKeyBoardState
CS.System.Windows.Forms.XKeyBoardState = System.Windows.Forms.XKeyBoardState


---@class System.Windows.Forms.XKeyBoardState.AutoRepeats : System.ValueType
---@field first number
---@field last number
System.Windows.Forms.XKeyBoardState.AutoRepeats = {}
---@alias CS.System.Windows.Forms.XKeyBoardState.AutoRepeats System.Windows.Forms.XKeyBoardState.AutoRepeats
CS.System.Windows.Forms.XKeyBoardState.AutoRepeats = System.Windows.Forms.XKeyBoardState.AutoRepeats


---@class System.Windows.Forms.GCFunction
---@field GCFunction System.Windows.Forms.GCFunction
---@field GCPlaneMask System.Windows.Forms.GCFunction
---@field GCForeground System.Windows.Forms.GCFunction
---@field GCBackground System.Windows.Forms.GCFunction
---@field GCLineWidth System.Windows.Forms.GCFunction
---@field GCLineStyle System.Windows.Forms.GCFunction
---@field GCCapStyle System.Windows.Forms.GCFunction
---@field GCJoinStyle System.Windows.Forms.GCFunction
---@field GCFillStyle System.Windows.Forms.GCFunction
---@field GCFillRule System.Windows.Forms.GCFunction
---@field GCTile System.Windows.Forms.GCFunction
---@field GCStipple System.Windows.Forms.GCFunction
---@field GCTileStipXOrigin System.Windows.Forms.GCFunction
---@field GCTileStipYOrigin System.Windows.Forms.GCFunction
---@field GCFont System.Windows.Forms.GCFunction
---@field GCSubwindowMode System.Windows.Forms.GCFunction
---@field GCGraphicsExposures System.Windows.Forms.GCFunction
---@field GCClipXOrigin System.Windows.Forms.GCFunction
---@field GCClipYOrigin System.Windows.Forms.GCFunction
---@field GCClipMask System.Windows.Forms.GCFunction
---@field GCDashOffset System.Windows.Forms.GCFunction
---@field GCDashList System.Windows.Forms.GCFunction
---@field GCArcMode System.Windows.Forms.GCFunction
System.Windows.Forms.GCFunction = {}
---@alias CS.System.Windows.Forms.GCFunction System.Windows.Forms.GCFunction
CS.System.Windows.Forms.GCFunction = System.Windows.Forms.GCFunction


---@class System.Windows.Forms.GCJoinStyle
---@field JoinMiter System.Windows.Forms.GCJoinStyle
---@field JoinRound System.Windows.Forms.GCJoinStyle
---@field JoinBevel System.Windows.Forms.GCJoinStyle
System.Windows.Forms.GCJoinStyle = {}
---@alias CS.System.Windows.Forms.GCJoinStyle System.Windows.Forms.GCJoinStyle
CS.System.Windows.Forms.GCJoinStyle = System.Windows.Forms.GCJoinStyle


---@class System.Windows.Forms.GCLineStyle
---@field LineSolid System.Windows.Forms.GCLineStyle
---@field LineOnOffDash System.Windows.Forms.GCLineStyle
---@field LineDoubleDash System.Windows.Forms.GCLineStyle
System.Windows.Forms.GCLineStyle = {}
---@alias CS.System.Windows.Forms.GCLineStyle System.Windows.Forms.GCLineStyle
CS.System.Windows.Forms.GCLineStyle = System.Windows.Forms.GCLineStyle


---@class System.Windows.Forms.GCCapStyle
---@field CapNotLast System.Windows.Forms.GCCapStyle
---@field CapButt System.Windows.Forms.GCCapStyle
---@field CapRound System.Windows.Forms.GCCapStyle
---@field CapProjecting System.Windows.Forms.GCCapStyle
System.Windows.Forms.GCCapStyle = {}
---@alias CS.System.Windows.Forms.GCCapStyle System.Windows.Forms.GCCapStyle
CS.System.Windows.Forms.GCCapStyle = System.Windows.Forms.GCCapStyle


---@class System.Windows.Forms.GCFillStyle
---@field FillSolid System.Windows.Forms.GCFillStyle
---@field FillTiled System.Windows.Forms.GCFillStyle
---@field FillStippled System.Windows.Forms.GCFillStyle
---@field FillOpaqueStppled System.Windows.Forms.GCFillStyle
System.Windows.Forms.GCFillStyle = {}
---@alias CS.System.Windows.Forms.GCFillStyle System.Windows.Forms.GCFillStyle
CS.System.Windows.Forms.GCFillStyle = System.Windows.Forms.GCFillStyle


---@class System.Windows.Forms.GCFillRule
---@field EvenOddRule System.Windows.Forms.GCFillRule
---@field WindingRule System.Windows.Forms.GCFillRule
System.Windows.Forms.GCFillRule = {}
---@alias CS.System.Windows.Forms.GCFillRule System.Windows.Forms.GCFillRule
CS.System.Windows.Forms.GCFillRule = System.Windows.Forms.GCFillRule


---@class System.Windows.Forms.GCArcMode
---@field ArcChord System.Windows.Forms.GCArcMode
---@field ArcPieSlice System.Windows.Forms.GCArcMode
System.Windows.Forms.GCArcMode = {}
---@alias CS.System.Windows.Forms.GCArcMode System.Windows.Forms.GCArcMode
CS.System.Windows.Forms.GCArcMode = System.Windows.Forms.GCArcMode


---@class System.Windows.Forms.GCSubwindowMode
---@field ClipByChildren System.Windows.Forms.GCSubwindowMode
---@field IncludeInferiors System.Windows.Forms.GCSubwindowMode
System.Windows.Forms.GCSubwindowMode = {}
---@alias CS.System.Windows.Forms.GCSubwindowMode System.Windows.Forms.GCSubwindowMode
CS.System.Windows.Forms.GCSubwindowMode = System.Windows.Forms.GCSubwindowMode


---@class System.Windows.Forms.XGCValues : System.ValueType
System.Windows.Forms.XGCValues = {}
---@alias CS.System.Windows.Forms.XGCValues System.Windows.Forms.XGCValues
CS.System.Windows.Forms.XGCValues = System.Windows.Forms.XGCValues


---@class System.Windows.Forms.GXFunction
---@field GXclear System.Windows.Forms.GXFunction
---@field GXand System.Windows.Forms.GXFunction
---@field GXandReverse System.Windows.Forms.GXFunction
---@field GXcopy System.Windows.Forms.GXFunction
---@field GXandInverted System.Windows.Forms.GXFunction
---@field GXnoop System.Windows.Forms.GXFunction
---@field GXxor System.Windows.Forms.GXFunction
---@field GXor System.Windows.Forms.GXFunction
---@field GXnor System.Windows.Forms.GXFunction
---@field GXequiv System.Windows.Forms.GXFunction
---@field GXinvert System.Windows.Forms.GXFunction
---@field GXorReverse System.Windows.Forms.GXFunction
---@field GXcopyInverted System.Windows.Forms.GXFunction
---@field GXorInverted System.Windows.Forms.GXFunction
---@field GXnand System.Windows.Forms.GXFunction
---@field GXset System.Windows.Forms.GXFunction
System.Windows.Forms.GXFunction = {}
---@alias CS.System.Windows.Forms.GXFunction System.Windows.Forms.GXFunction
CS.System.Windows.Forms.GXFunction = System.Windows.Forms.GXFunction


---@class System.Windows.Forms.NetWindowManagerState
---@field Remove System.Windows.Forms.NetWindowManagerState
---@field Add System.Windows.Forms.NetWindowManagerState
---@field Toggle System.Windows.Forms.NetWindowManagerState
System.Windows.Forms.NetWindowManagerState = {}
---@alias CS.System.Windows.Forms.NetWindowManagerState System.Windows.Forms.NetWindowManagerState
CS.System.Windows.Forms.NetWindowManagerState = System.Windows.Forms.NetWindowManagerState


---@class System.Windows.Forms.RevertTo
---@field None System.Windows.Forms.RevertTo
---@field PointerRoot System.Windows.Forms.RevertTo
---@field Parent System.Windows.Forms.RevertTo
System.Windows.Forms.RevertTo = {}
---@alias CS.System.Windows.Forms.RevertTo System.Windows.Forms.RevertTo
CS.System.Windows.Forms.RevertTo = System.Windows.Forms.RevertTo


---@class System.Windows.Forms.MapState
---@field IsUnmapped System.Windows.Forms.MapState
---@field IsUnviewable System.Windows.Forms.MapState
---@field IsViewable System.Windows.Forms.MapState
System.Windows.Forms.MapState = {}
---@alias CS.System.Windows.Forms.MapState System.Windows.Forms.MapState
CS.System.Windows.Forms.MapState = System.Windows.Forms.MapState


---@class System.Windows.Forms.CursorFontShape
---@field XC_X_cursor System.Windows.Forms.CursorFontShape
---@field XC_arrow System.Windows.Forms.CursorFontShape
---@field XC_based_arrow_down System.Windows.Forms.CursorFontShape
---@field XC_based_arrow_up System.Windows.Forms.CursorFontShape
---@field XC_boat System.Windows.Forms.CursorFontShape
---@field XC_bogosity System.Windows.Forms.CursorFontShape
---@field XC_bottom_left_corner System.Windows.Forms.CursorFontShape
---@field XC_bottom_right_corner System.Windows.Forms.CursorFontShape
---@field XC_bottom_side System.Windows.Forms.CursorFontShape
---@field XC_bottom_tee System.Windows.Forms.CursorFontShape
---@field XC_box_spiral System.Windows.Forms.CursorFontShape
---@field XC_center_ptr System.Windows.Forms.CursorFontShape
---@field XC_circle System.Windows.Forms.CursorFontShape
---@field XC_clock System.Windows.Forms.CursorFontShape
---@field XC_coffee_mug System.Windows.Forms.CursorFontShape
---@field XC_cross System.Windows.Forms.CursorFontShape
---@field XC_cross_reverse System.Windows.Forms.CursorFontShape
---@field XC_crosshair System.Windows.Forms.CursorFontShape
---@field XC_diamond_cross System.Windows.Forms.CursorFontShape
---@field XC_dot System.Windows.Forms.CursorFontShape
---@field XC_dotbox System.Windows.Forms.CursorFontShape
---@field XC_double_arrow System.Windows.Forms.CursorFontShape
---@field XC_draft_large System.Windows.Forms.CursorFontShape
---@field XC_draft_small System.Windows.Forms.CursorFontShape
---@field XC_draped_box System.Windows.Forms.CursorFontShape
---@field XC_exchange System.Windows.Forms.CursorFontShape
---@field XC_fleur System.Windows.Forms.CursorFontShape
---@field XC_gobbler System.Windows.Forms.CursorFontShape
---@field XC_gumby System.Windows.Forms.CursorFontShape
---@field XC_hand1 System.Windows.Forms.CursorFontShape
---@field XC_hand2 System.Windows.Forms.CursorFontShape
---@field XC_heart System.Windows.Forms.CursorFontShape
---@field XC_icon System.Windows.Forms.CursorFontShape
---@field XC_iron_cross System.Windows.Forms.CursorFontShape
---@field XC_left_ptr System.Windows.Forms.CursorFontShape
---@field XC_left_side System.Windows.Forms.CursorFontShape
---@field XC_left_tee System.Windows.Forms.CursorFontShape
---@field XC_left_button System.Windows.Forms.CursorFontShape
---@field XC_ll_angle System.Windows.Forms.CursorFontShape
---@field XC_lr_angle System.Windows.Forms.CursorFontShape
---@field XC_man System.Windows.Forms.CursorFontShape
---@field XC_middlebutton System.Windows.Forms.CursorFontShape
---@field XC_mouse System.Windows.Forms.CursorFontShape
---@field XC_pencil System.Windows.Forms.CursorFontShape
---@field XC_pirate System.Windows.Forms.CursorFontShape
---@field XC_plus System.Windows.Forms.CursorFontShape
---@field XC_question_arrow System.Windows.Forms.CursorFontShape
---@field XC_right_ptr System.Windows.Forms.CursorFontShape
---@field XC_right_side System.Windows.Forms.CursorFontShape
---@field XC_right_tee System.Windows.Forms.CursorFontShape
---@field XC_rightbutton System.Windows.Forms.CursorFontShape
---@field XC_rtl_logo System.Windows.Forms.CursorFontShape
---@field XC_sailboat System.Windows.Forms.CursorFontShape
---@field XC_sb_down_arrow System.Windows.Forms.CursorFontShape
---@field XC_sb_h_double_arrow System.Windows.Forms.CursorFontShape
---@field XC_sb_left_arrow System.Windows.Forms.CursorFontShape
---@field XC_sb_right_arrow System.Windows.Forms.CursorFontShape
---@field XC_sb_up_arrow System.Windows.Forms.CursorFontShape
---@field XC_sb_v_double_arrow System.Windows.Forms.CursorFontShape
---@field XC_sb_shuttle System.Windows.Forms.CursorFontShape
---@field XC_sizing System.Windows.Forms.CursorFontShape
---@field XC_spider System.Windows.Forms.CursorFontShape
---@field XC_spraycan System.Windows.Forms.CursorFontShape
---@field XC_star System.Windows.Forms.CursorFontShape
---@field XC_target System.Windows.Forms.CursorFontShape
---@field XC_tcross System.Windows.Forms.CursorFontShape
---@field XC_top_left_arrow System.Windows.Forms.CursorFontShape
---@field XC_top_left_corner System.Windows.Forms.CursorFontShape
---@field XC_top_right_corner System.Windows.Forms.CursorFontShape
---@field XC_top_side System.Windows.Forms.CursorFontShape
---@field XC_top_tee System.Windows.Forms.CursorFontShape
---@field XC_trek System.Windows.Forms.CursorFontShape
---@field XC_ul_angle System.Windows.Forms.CursorFontShape
---@field XC_umbrella System.Windows.Forms.CursorFontShape
---@field XC_ur_angle System.Windows.Forms.CursorFontShape
---@field XC_watch System.Windows.Forms.CursorFontShape
---@field XC_xterm System.Windows.Forms.CursorFontShape
---@field XC_num_glyphs System.Windows.Forms.CursorFontShape
System.Windows.Forms.CursorFontShape = {}
---@alias CS.System.Windows.Forms.CursorFontShape System.Windows.Forms.CursorFontShape
CS.System.Windows.Forms.CursorFontShape = System.Windows.Forms.CursorFontShape


---@class System.Windows.Forms.SystrayRequest
---@field SYSTEM_TRAY_REQUEST_DOCK System.Windows.Forms.SystrayRequest
---@field SYSTEM_TRAY_BEGIN_MESSAGE System.Windows.Forms.SystrayRequest
---@field SYSTEM_TRAY_CANCEL_MESSAGE System.Windows.Forms.SystrayRequest
System.Windows.Forms.SystrayRequest = {}
---@alias CS.System.Windows.Forms.SystrayRequest System.Windows.Forms.SystrayRequest
CS.System.Windows.Forms.SystrayRequest = System.Windows.Forms.SystrayRequest


---@class System.Windows.Forms.NetWmStateRequest
---@field _NET_WM_STATE_REMOVE System.Windows.Forms.NetWmStateRequest
---@field _NET_WM_STATE_ADD System.Windows.Forms.NetWmStateRequest
---@field _NET_WM_STATE_TOGGLE System.Windows.Forms.NetWmStateRequest
System.Windows.Forms.NetWmStateRequest = {}
---@alias CS.System.Windows.Forms.NetWmStateRequest System.Windows.Forms.NetWmStateRequest
CS.System.Windows.Forms.NetWmStateRequest = System.Windows.Forms.NetWmStateRequest


---@class System.Windows.Forms.NetWmMoveResize
---@field _NET_WM_MOVERESIZE_SIZE_TOPLEFT System.Windows.Forms.NetWmMoveResize
---@field _NET_WM_MOVERESIZE_SIZE_TOP System.Windows.Forms.NetWmMoveResize
---@field _NET_WM_MOVERESIZE_SIZE_TOPRIGHT System.Windows.Forms.NetWmMoveResize
---@field _NET_WM_MOVERESIZE_SIZE_RIGHT System.Windows.Forms.NetWmMoveResize
---@field _NET_WM_MOVERESIZE_SIZE_BOTTOMRIGHT System.Windows.Forms.NetWmMoveResize
---@field _NET_WM_MOVERESIZE_SIZE_BOTTOM System.Windows.Forms.NetWmMoveResize
---@field _NET_WM_MOVERESIZE_SIZE_BOTTOMLEFT System.Windows.Forms.NetWmMoveResize
---@field _NET_WM_MOVERESIZE_SIZE_LEFT System.Windows.Forms.NetWmMoveResize
---@field _NET_WM_MOVERESIZE_MOVE System.Windows.Forms.NetWmMoveResize
---@field _NET_WM_MOVERESIZE_SIZE_KEYBOARD System.Windows.Forms.NetWmMoveResize
---@field _NET_WM_MOVERESIZE_MOVE_KEYBOARD System.Windows.Forms.NetWmMoveResize
---@field _NET_WM_MOVERESIZE_CANCEL System.Windows.Forms.NetWmMoveResize
System.Windows.Forms.NetWmMoveResize = {}
---@alias CS.System.Windows.Forms.NetWmMoveResize System.Windows.Forms.NetWmMoveResize
CS.System.Windows.Forms.NetWmMoveResize = System.Windows.Forms.NetWmMoveResize


---@class System.Windows.Forms.XSizeHintsFlags
---@field USPosition System.Windows.Forms.XSizeHintsFlags
---@field USSize System.Windows.Forms.XSizeHintsFlags
---@field PPosition System.Windows.Forms.XSizeHintsFlags
---@field PSize System.Windows.Forms.XSizeHintsFlags
---@field PMinSize System.Windows.Forms.XSizeHintsFlags
---@field PMaxSize System.Windows.Forms.XSizeHintsFlags
---@field PResizeInc System.Windows.Forms.XSizeHintsFlags
---@field PAspect System.Windows.Forms.XSizeHintsFlags
---@field PAllHints System.Windows.Forms.XSizeHintsFlags
---@field PBaseSize System.Windows.Forms.XSizeHintsFlags
---@field PWinGravity System.Windows.Forms.XSizeHintsFlags
System.Windows.Forms.XSizeHintsFlags = {}
---@alias CS.System.Windows.Forms.XSizeHintsFlags System.Windows.Forms.XSizeHintsFlags
CS.System.Windows.Forms.XSizeHintsFlags = System.Windows.Forms.XSizeHintsFlags


---@class System.Windows.Forms.XSizeHints : System.ValueType
System.Windows.Forms.XSizeHints = {}
---@alias CS.System.Windows.Forms.XSizeHints System.Windows.Forms.XSizeHints
CS.System.Windows.Forms.XSizeHints = System.Windows.Forms.XSizeHints


---@class System.Windows.Forms.XWMHintsFlags
---@field InputHint System.Windows.Forms.XWMHintsFlags
---@field StateHint System.Windows.Forms.XWMHintsFlags
---@field IconPixmapHint System.Windows.Forms.XWMHintsFlags
---@field IconWindowHint System.Windows.Forms.XWMHintsFlags
---@field IconPositionHint System.Windows.Forms.XWMHintsFlags
---@field IconMaskHint System.Windows.Forms.XWMHintsFlags
---@field WindowGroupHint System.Windows.Forms.XWMHintsFlags
---@field AllHints System.Windows.Forms.XWMHintsFlags
System.Windows.Forms.XWMHintsFlags = {}
---@alias CS.System.Windows.Forms.XWMHintsFlags System.Windows.Forms.XWMHintsFlags
CS.System.Windows.Forms.XWMHintsFlags = System.Windows.Forms.XWMHintsFlags


---@class System.Windows.Forms.XInitialState
---@field DontCareState System.Windows.Forms.XInitialState
---@field NormalState System.Windows.Forms.XInitialState
---@field ZoomState System.Windows.Forms.XInitialState
---@field IconicState System.Windows.Forms.XInitialState
---@field InactiveState System.Windows.Forms.XInitialState
System.Windows.Forms.XInitialState = {}
---@alias CS.System.Windows.Forms.XInitialState System.Windows.Forms.XInitialState
CS.System.Windows.Forms.XInitialState = System.Windows.Forms.XInitialState


---@class System.Windows.Forms.XWMHints : System.ValueType
System.Windows.Forms.XWMHints = {}
---@alias CS.System.Windows.Forms.XWMHints System.Windows.Forms.XWMHints
CS.System.Windows.Forms.XWMHints = System.Windows.Forms.XWMHints


---@class System.Windows.Forms.XIconSize : System.ValueType
System.Windows.Forms.XIconSize = {}
---@alias CS.System.Windows.Forms.XIconSize System.Windows.Forms.XIconSize
CS.System.Windows.Forms.XIconSize = System.Windows.Forms.XIconSize


---@class System.Windows.Forms.CaretStruct : System.ValueType
System.Windows.Forms.CaretStruct = {}
---@alias CS.System.Windows.Forms.CaretStruct System.Windows.Forms.CaretStruct
CS.System.Windows.Forms.CaretStruct = System.Windows.Forms.CaretStruct


---@class System.Windows.Forms.HoverStruct : System.ValueType
System.Windows.Forms.HoverStruct = {}
---@alias CS.System.Windows.Forms.HoverStruct System.Windows.Forms.HoverStruct
CS.System.Windows.Forms.HoverStruct = System.Windows.Forms.HoverStruct


---@class System.Windows.Forms.ClickStruct : System.ValueType
System.Windows.Forms.ClickStruct = {}
---@alias CS.System.Windows.Forms.ClickStruct System.Windows.Forms.ClickStruct
CS.System.Windows.Forms.ClickStruct = System.Windows.Forms.ClickStruct


---@class System.Windows.Forms.GrabStruct : System.ValueType
System.Windows.Forms.GrabStruct = {}
---@alias CS.System.Windows.Forms.GrabStruct System.Windows.Forms.GrabStruct
CS.System.Windows.Forms.GrabStruct = System.Windows.Forms.GrabStruct


---@class System.Windows.Forms.XErrorHandler : System.MulticastDelegate
System.Windows.Forms.XErrorHandler = {}
---@alias CS.System.Windows.Forms.XErrorHandler System.Windows.Forms.XErrorHandler
CS.System.Windows.Forms.XErrorHandler = System.Windows.Forms.XErrorHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.XErrorHandler
function System.Windows.Forms.XErrorHandler.New(object, method) end
---@param DisplayHandle System.IntPtr
---@param ref_error_event System.Windows.Forms.XErrorEvent
---@return number,System.Windows.Forms.XErrorEvent
function System.Windows.Forms.XErrorHandler:Invoke(DisplayHandle, ref_error_event) end
---@param DisplayHandle System.IntPtr
---@param ref_error_event System.Windows.Forms.XErrorEvent
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult,System.Windows.Forms.XErrorEvent
function System.Windows.Forms.XErrorHandler:BeginInvoke(DisplayHandle, ref_error_event, callback, object) end
---@param ref_error_event System.Windows.Forms.XErrorEvent
---@param result System.IAsyncResult
---@return number,System.Windows.Forms.XErrorEvent
function System.Windows.Forms.XErrorHandler:EndInvoke(ref_error_event, result) end

---@class System.Windows.Forms.XRequest
---@field X_CreateWindow System.Windows.Forms.XRequest
---@field X_ChangeWindowAttributes System.Windows.Forms.XRequest
---@field X_GetWindowAttributes System.Windows.Forms.XRequest
---@field X_DestroyWindow System.Windows.Forms.XRequest
---@field X_DestroySubwindows System.Windows.Forms.XRequest
---@field X_ChangeSaveSet System.Windows.Forms.XRequest
---@field X_ReparentWindow System.Windows.Forms.XRequest
---@field X_MapWindow System.Windows.Forms.XRequest
---@field X_MapSubwindows System.Windows.Forms.XRequest
---@field X_UnmapWindow System.Windows.Forms.XRequest
---@field X_UnmapSubwindows System.Windows.Forms.XRequest
---@field X_ConfigureWindow System.Windows.Forms.XRequest
---@field X_CirculateWindow System.Windows.Forms.XRequest
---@field X_GetGeometry System.Windows.Forms.XRequest
---@field X_QueryTree System.Windows.Forms.XRequest
---@field X_InternAtom System.Windows.Forms.XRequest
---@field X_GetAtomName System.Windows.Forms.XRequest
---@field X_ChangeProperty System.Windows.Forms.XRequest
---@field X_DeleteProperty System.Windows.Forms.XRequest
---@field X_GetProperty System.Windows.Forms.XRequest
---@field X_ListProperties System.Windows.Forms.XRequest
---@field X_SetSelectionOwner System.Windows.Forms.XRequest
---@field X_GetSelectionOwner System.Windows.Forms.XRequest
---@field X_ConvertSelection System.Windows.Forms.XRequest
---@field X_SendEvent System.Windows.Forms.XRequest
---@field X_GrabPointer System.Windows.Forms.XRequest
---@field X_UngrabPointer System.Windows.Forms.XRequest
---@field X_GrabButton System.Windows.Forms.XRequest
---@field X_UngrabButton System.Windows.Forms.XRequest
---@field X_ChangeActivePointerGrab System.Windows.Forms.XRequest
---@field X_GrabKeyboard System.Windows.Forms.XRequest
---@field X_UngrabKeyboard System.Windows.Forms.XRequest
---@field X_GrabKey System.Windows.Forms.XRequest
---@field X_UngrabKey System.Windows.Forms.XRequest
---@field X_AllowEvents System.Windows.Forms.XRequest
---@field X_GrabServer System.Windows.Forms.XRequest
---@field X_UngrabServer System.Windows.Forms.XRequest
---@field X_QueryPointer System.Windows.Forms.XRequest
---@field X_GetMotionEvents System.Windows.Forms.XRequest
---@field X_TranslateCoords System.Windows.Forms.XRequest
---@field X_WarpPointer System.Windows.Forms.XRequest
---@field X_SetInputFocus System.Windows.Forms.XRequest
---@field X_GetInputFocus System.Windows.Forms.XRequest
---@field X_QueryKeymap System.Windows.Forms.XRequest
---@field X_OpenFont System.Windows.Forms.XRequest
---@field X_CloseFont System.Windows.Forms.XRequest
---@field X_QueryFont System.Windows.Forms.XRequest
---@field X_QueryTextExtents System.Windows.Forms.XRequest
---@field X_ListFonts System.Windows.Forms.XRequest
---@field X_ListFontsWithInfo System.Windows.Forms.XRequest
---@field X_SetFontPath System.Windows.Forms.XRequest
---@field X_GetFontPath System.Windows.Forms.XRequest
---@field X_CreatePixmap System.Windows.Forms.XRequest
---@field X_FreePixmap System.Windows.Forms.XRequest
---@field X_CreateGC System.Windows.Forms.XRequest
---@field X_ChangeGC System.Windows.Forms.XRequest
---@field X_CopyGC System.Windows.Forms.XRequest
---@field X_SetDashes System.Windows.Forms.XRequest
---@field X_SetClipRectangles System.Windows.Forms.XRequest
---@field X_FreeGC System.Windows.Forms.XRequest
---@field X_ClearArea System.Windows.Forms.XRequest
---@field X_CopyArea System.Windows.Forms.XRequest
---@field X_CopyPlane System.Windows.Forms.XRequest
---@field X_PolyPoint System.Windows.Forms.XRequest
---@field X_PolyLine System.Windows.Forms.XRequest
---@field X_PolySegment System.Windows.Forms.XRequest
---@field X_PolyRectangle System.Windows.Forms.XRequest
---@field X_PolyArc System.Windows.Forms.XRequest
---@field X_FillPoly System.Windows.Forms.XRequest
---@field X_PolyFillRectangle System.Windows.Forms.XRequest
---@field X_PolyFillArc System.Windows.Forms.XRequest
---@field X_PutImage System.Windows.Forms.XRequest
---@field X_GetImage System.Windows.Forms.XRequest
---@field X_PolyText8 System.Windows.Forms.XRequest
---@field X_PolyText16 System.Windows.Forms.XRequest
---@field X_ImageText8 System.Windows.Forms.XRequest
---@field X_ImageText16 System.Windows.Forms.XRequest
---@field X_CreateColormap System.Windows.Forms.XRequest
---@field X_FreeColormap System.Windows.Forms.XRequest
---@field X_CopyColormapAndFree System.Windows.Forms.XRequest
---@field X_InstallColormap System.Windows.Forms.XRequest
---@field X_UninstallColormap System.Windows.Forms.XRequest
---@field X_ListInstalledColormaps System.Windows.Forms.XRequest
---@field X_AllocColor System.Windows.Forms.XRequest
---@field X_AllocNamedColor System.Windows.Forms.XRequest
---@field X_AllocColorCells System.Windows.Forms.XRequest
---@field X_AllocColorPlanes System.Windows.Forms.XRequest
---@field X_FreeColors System.Windows.Forms.XRequest
---@field X_StoreColors System.Windows.Forms.XRequest
---@field X_StoreNamedColor System.Windows.Forms.XRequest
---@field X_QueryColors System.Windows.Forms.XRequest
---@field X_LookupColor System.Windows.Forms.XRequest
---@field X_CreateCursor System.Windows.Forms.XRequest
---@field X_CreateGlyphCursor System.Windows.Forms.XRequest
---@field X_FreeCursor System.Windows.Forms.XRequest
---@field X_RecolorCursor System.Windows.Forms.XRequest
---@field X_QueryBestSize System.Windows.Forms.XRequest
---@field X_QueryExtension System.Windows.Forms.XRequest
---@field X_ListExtensions System.Windows.Forms.XRequest
---@field X_ChangeKeyboardMapping System.Windows.Forms.XRequest
---@field X_GetKeyboardMapping System.Windows.Forms.XRequest
---@field X_ChangeKeyboardControl System.Windows.Forms.XRequest
---@field X_GetKeyboardControl System.Windows.Forms.XRequest
---@field X_Bell System.Windows.Forms.XRequest
---@field X_ChangePointerControl System.Windows.Forms.XRequest
---@field X_GetPointerControl System.Windows.Forms.XRequest
---@field X_SetScreenSaver System.Windows.Forms.XRequest
---@field X_GetScreenSaver System.Windows.Forms.XRequest
---@field X_ChangeHosts System.Windows.Forms.XRequest
---@field X_ListHosts System.Windows.Forms.XRequest
---@field X_SetAccessControl System.Windows.Forms.XRequest
---@field X_SetCloseDownMode System.Windows.Forms.XRequest
---@field X_KillClient System.Windows.Forms.XRequest
---@field X_RotateProperties System.Windows.Forms.XRequest
---@field X_ForceScreenSaver System.Windows.Forms.XRequest
---@field X_SetPointerMapping System.Windows.Forms.XRequest
---@field X_GetPointerMapping System.Windows.Forms.XRequest
---@field X_SetModifierMapping System.Windows.Forms.XRequest
---@field X_GetModifierMapping System.Windows.Forms.XRequest
---@field X_NoOperation System.Windows.Forms.XRequest
System.Windows.Forms.XRequest = {}
---@alias CS.System.Windows.Forms.XRequest System.Windows.Forms.XRequest
CS.System.Windows.Forms.XRequest = System.Windows.Forms.XRequest


---@class System.Windows.Forms.XIMProperties
---@field XIMPreeditArea System.Windows.Forms.XIMProperties
---@field XIMPreeditCallbacks System.Windows.Forms.XIMProperties
---@field XIMPreeditPosition System.Windows.Forms.XIMProperties
---@field XIMPreeditNothing System.Windows.Forms.XIMProperties
---@field XIMPreeditNone System.Windows.Forms.XIMProperties
---@field XIMStatusArea System.Windows.Forms.XIMProperties
---@field XIMStatusCallbacks System.Windows.Forms.XIMProperties
---@field XIMStatusNothing System.Windows.Forms.XIMProperties
---@field XIMStatusNone System.Windows.Forms.XIMProperties
System.Windows.Forms.XIMProperties = {}
---@alias CS.System.Windows.Forms.XIMProperties System.Windows.Forms.XIMProperties
CS.System.Windows.Forms.XIMProperties = System.Windows.Forms.XIMProperties


---@class System.Windows.Forms.WindowType
---@field Client System.Windows.Forms.WindowType
---@field Whole System.Windows.Forms.WindowType
---@field Both System.Windows.Forms.WindowType
System.Windows.Forms.WindowType = {}
---@alias CS.System.Windows.Forms.WindowType System.Windows.Forms.WindowType
CS.System.Windows.Forms.WindowType = System.Windows.Forms.WindowType


---@class System.Windows.Forms.XEmbedMessage
---@field EmbeddedNotify System.Windows.Forms.XEmbedMessage
---@field WindowActivate System.Windows.Forms.XEmbedMessage
---@field WindowDeactivate System.Windows.Forms.XEmbedMessage
---@field RequestFocus System.Windows.Forms.XEmbedMessage
---@field FocusIn System.Windows.Forms.XEmbedMessage
---@field FocusOut System.Windows.Forms.XEmbedMessage
---@field FocusNext System.Windows.Forms.XEmbedMessage
---@field FocusPrev System.Windows.Forms.XEmbedMessage
---@field ModalityOn System.Windows.Forms.XEmbedMessage
---@field ModalityOff System.Windows.Forms.XEmbedMessage
---@field RegisterAccelerator System.Windows.Forms.XEmbedMessage
---@field UnregisterAccelerator System.Windows.Forms.XEmbedMessage
---@field ActivateAccelerator System.Windows.Forms.XEmbedMessage
System.Windows.Forms.XEmbedMessage = {}
---@alias CS.System.Windows.Forms.XEmbedMessage System.Windows.Forms.XEmbedMessage
CS.System.Windows.Forms.XEmbedMessage = System.Windows.Forms.XEmbedMessage


---@class System.Windows.Forms.XcursorImage : System.ValueType
---@field size number
---@field width number
---@field height number
---@field xhot number
---@field yhot number
---@field delay number
---@field pixels System.IntPtr
System.Windows.Forms.XcursorImage = {}
---@alias CS.System.Windows.Forms.XcursorImage System.Windows.Forms.XcursorImage
CS.System.Windows.Forms.XcursorImage = System.Windows.Forms.XcursorImage

---@return string
function System.Windows.Forms.XcursorImage:ToString() end

---@class System.Windows.Forms.XcursorImages : System.ValueType
---@field nimage number
---@field images System.IntPtr
System.Windows.Forms.XcursorImages = {}
---@alias CS.System.Windows.Forms.XcursorImages System.Windows.Forms.XcursorImages
CS.System.Windows.Forms.XcursorImages = System.Windows.Forms.XcursorImages


---@class System.Windows.Forms.XIMStyles : System.ValueType
---@field count_styles number
---@field supported_styles System.IntPtr
System.Windows.Forms.XIMStyles = {}
---@alias CS.System.Windows.Forms.XIMStyles System.Windows.Forms.XIMStyles
CS.System.Windows.Forms.XIMStyles = System.Windows.Forms.XIMStyles


---@class System.Windows.Forms.XPoint : System.Object
---@field X number
---@field Y number
System.Windows.Forms.XPoint = {}
---@alias CS.System.Windows.Forms.XPoint System.Windows.Forms.XPoint
CS.System.Windows.Forms.XPoint = System.Windows.Forms.XPoint

---@return System.Windows.Forms.XPoint
function System.Windows.Forms.XPoint.New() end

---@class System.Windows.Forms.XRectangle : System.ValueType
---@field X number
---@field Y number
---@field Width number
---@field Height number
System.Windows.Forms.XRectangle = {}
---@alias CS.System.Windows.Forms.XRectangle System.Windows.Forms.XRectangle
CS.System.Windows.Forms.XRectangle = System.Windows.Forms.XRectangle


---@class System.Windows.Forms.XIMCallback : System.Object
---@field client_data System.IntPtr
---@field callback System.Windows.Forms.XIMProc
System.Windows.Forms.XIMCallback = {}
---@alias CS.System.Windows.Forms.XIMCallback System.Windows.Forms.XIMCallback
CS.System.Windows.Forms.XIMCallback = System.Windows.Forms.XIMCallback

---@param clientData System.IntPtr
---@param proc System.Windows.Forms.XIMProc
---@return System.Windows.Forms.XIMCallback
function System.Windows.Forms.XIMCallback.New(clientData, proc) end

---@class System.Windows.Forms.XIMFeedback
---@field Reverse System.Windows.Forms.XIMFeedback
---@field Underline System.Windows.Forms.XIMFeedback
---@field Highlight System.Windows.Forms.XIMFeedback
---@field Primary System.Windows.Forms.XIMFeedback
---@field Secondary System.Windows.Forms.XIMFeedback
---@field Tertiary System.Windows.Forms.XIMFeedback
System.Windows.Forms.XIMFeedback = {}
---@alias CS.System.Windows.Forms.XIMFeedback System.Windows.Forms.XIMFeedback
CS.System.Windows.Forms.XIMFeedback = System.Windows.Forms.XIMFeedback


---@class System.Windows.Forms.XIMFeedbackStruct : System.ValueType
---@field FeedbackMask number
System.Windows.Forms.XIMFeedbackStruct = {}
---@alias CS.System.Windows.Forms.XIMFeedbackStruct System.Windows.Forms.XIMFeedbackStruct
CS.System.Windows.Forms.XIMFeedbackStruct = System.Windows.Forms.XIMFeedbackStruct


---@class System.Windows.Forms.XIMText : System.ValueType
---@field Length number
---@field Feedback System.IntPtr
---@field EncodingIsWChar boolean
---@field String System.IntPtr
System.Windows.Forms.XIMText = {}
---@alias CS.System.Windows.Forms.XIMText System.Windows.Forms.XIMText
CS.System.Windows.Forms.XIMText = System.Windows.Forms.XIMText


---@class System.Windows.Forms.XIMPreeditDrawCallbackStruct : System.ValueType
---@field Caret number
---@field ChangeFirst number
---@field ChangeLength number
---@field Text System.IntPtr
System.Windows.Forms.XIMPreeditDrawCallbackStruct = {}
---@alias CS.System.Windows.Forms.XIMPreeditDrawCallbackStruct System.Windows.Forms.XIMPreeditDrawCallbackStruct
CS.System.Windows.Forms.XIMPreeditDrawCallbackStruct = System.Windows.Forms.XIMPreeditDrawCallbackStruct


---@class System.Windows.Forms.XIMCaretDirection
---@field XIMForwardChar System.Windows.Forms.XIMCaretDirection
---@field XIMBackwardChar System.Windows.Forms.XIMCaretDirection
---@field XIMForwardWord System.Windows.Forms.XIMCaretDirection
---@field XIMBackwardWord System.Windows.Forms.XIMCaretDirection
---@field XIMCaretUp System.Windows.Forms.XIMCaretDirection
---@field XIMCaretDown System.Windows.Forms.XIMCaretDirection
---@field XIMNextLine System.Windows.Forms.XIMCaretDirection
---@field XIMPreviousLine System.Windows.Forms.XIMCaretDirection
---@field XIMLineStart System.Windows.Forms.XIMCaretDirection
---@field XIMLineEnd System.Windows.Forms.XIMCaretDirection
---@field XIMAbsolutePosition System.Windows.Forms.XIMCaretDirection
---@field XIMDontChange System.Windows.Forms.XIMCaretDirection
System.Windows.Forms.XIMCaretDirection = {}
---@alias CS.System.Windows.Forms.XIMCaretDirection System.Windows.Forms.XIMCaretDirection
CS.System.Windows.Forms.XIMCaretDirection = System.Windows.Forms.XIMCaretDirection


---@class System.Windows.Forms.XIMCaretStyle
---@field IsInvisible System.Windows.Forms.XIMCaretStyle
---@field IsPrimary System.Windows.Forms.XIMCaretStyle
---@field IsSecondary System.Windows.Forms.XIMCaretStyle
System.Windows.Forms.XIMCaretStyle = {}
---@alias CS.System.Windows.Forms.XIMCaretStyle System.Windows.Forms.XIMCaretStyle
CS.System.Windows.Forms.XIMCaretStyle = System.Windows.Forms.XIMCaretStyle


---@class System.Windows.Forms.XIMPreeditCaretCallbackStruct : System.ValueType
---@field Position number
---@field Direction System.Windows.Forms.XIMCaretDirection
---@field Style System.Windows.Forms.XIMCaretStyle
System.Windows.Forms.XIMPreeditCaretCallbackStruct = {}
---@alias CS.System.Windows.Forms.XIMPreeditCaretCallbackStruct System.Windows.Forms.XIMPreeditCaretCallbackStruct
CS.System.Windows.Forms.XIMPreeditCaretCallbackStruct = System.Windows.Forms.XIMPreeditCaretCallbackStruct


---@class System.Windows.Forms.XIMProc : System.MulticastDelegate
System.Windows.Forms.XIMProc = {}
---@alias CS.System.Windows.Forms.XIMProc System.Windows.Forms.XIMProc
CS.System.Windows.Forms.XIMProc = System.Windows.Forms.XIMProc

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.XIMProc
function System.Windows.Forms.XIMProc.New(object, method) end
---@param xim System.IntPtr
---@param clientData System.IntPtr
---@param callData System.IntPtr
---@return number
function System.Windows.Forms.XIMProc:Invoke(xim, clientData, callData) end
---@param xim System.IntPtr
---@param clientData System.IntPtr
---@param callData System.IntPtr
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Windows.Forms.XIMProc:BeginInvoke(xim, clientData, callData, callback, object) end
---@param result System.IAsyncResult
---@return number
function System.Windows.Forms.XIMProc:EndInvoke(result) end

---@class System.Windows.Forms.XNames : System.Object
---@field XNVaNestedList string
---@field XNQueryInputStyle string
---@field XNClientWindow string
---@field XNInputStyle string
---@field XNFocusWindow string
---@field XNPreeditStartCallback string
---@field XNPreeditDoneCallback string
---@field XNPreeditDrawCallback string
---@field XNPreeditCaretCallback string
---@field XNPreeditStateNotifyCallback string
---@field XNPreeditAttributes string
---@field XNStatusStartCallback string
---@field XNStatusDoneCallback string
---@field XNStatusDrawCallback string
---@field XNStatusAttributes string
---@field XNArea string
---@field XNAreaNeeded string
---@field XNSpotLocation string
---@field XNFontSet string
System.Windows.Forms.XNames = {}
---@alias CS.System.Windows.Forms.XNames System.Windows.Forms.XNames
CS.System.Windows.Forms.XNames = System.Windows.Forms.XNames


---@class System.Windows.Forms.XineramaScreenInfo : System.ValueType
---@field screen_number number
---@field x_org number
---@field y_org number
---@field width number
---@field height number
System.Windows.Forms.XineramaScreenInfo = {}
---@alias CS.System.Windows.Forms.XineramaScreenInfo System.Windows.Forms.XineramaScreenInfo
CS.System.Windows.Forms.XineramaScreenInfo = System.Windows.Forms.XineramaScreenInfo


---@class System.Windows.Forms.XShapeOperation
---@field ShapeSet System.Windows.Forms.XShapeOperation
---@field ShapeUnion System.Windows.Forms.XShapeOperation
---@field ShapeIntersect System.Windows.Forms.XShapeOperation
---@field ShapeSubtract System.Windows.Forms.XShapeOperation
---@field ShapeInvert System.Windows.Forms.XShapeOperation
System.Windows.Forms.XShapeOperation = {}
---@alias CS.System.Windows.Forms.XShapeOperation System.Windows.Forms.XShapeOperation
CS.System.Windows.Forms.XShapeOperation = System.Windows.Forms.XShapeOperation


---@class System.Windows.Forms.XShapeKind
---@field ShapeBounding System.Windows.Forms.XShapeKind
---@field ShapeClip System.Windows.Forms.XShapeKind
System.Windows.Forms.XShapeKind = {}
---@alias CS.System.Windows.Forms.XShapeKind System.Windows.Forms.XShapeKind
CS.System.Windows.Forms.XShapeKind = System.Windows.Forms.XShapeKind


---@class System.Windows.Forms.XOrdering
---@field Unsorted System.Windows.Forms.XOrdering
---@field YSorted System.Windows.Forms.XOrdering
---@field YXSorted System.Windows.Forms.XOrdering
---@field YXBanded System.Windows.Forms.XOrdering
System.Windows.Forms.XOrdering = {}
---@alias CS.System.Windows.Forms.XOrdering System.Windows.Forms.XOrdering
CS.System.Windows.Forms.XOrdering = System.Windows.Forms.XOrdering


---@class System.Windows.Forms.XEventQueue : System.Object
---@field Count number
---@field Paint System.Windows.Forms.XEventQueue.PaintQueue
---@field Thread System.Threading.Thread
---@field DispatchIdle boolean
System.Windows.Forms.XEventQueue = {}
---@alias CS.System.Windows.Forms.XEventQueue System.Windows.Forms.XEventQueue
CS.System.Windows.Forms.XEventQueue = System.Windows.Forms.XEventQueue

---@param thread System.Threading.Thread
---@return System.Windows.Forms.XEventQueue
function System.Windows.Forms.XEventQueue.New(thread) end
---@param xevent System.Windows.Forms.XEvent
function System.Windows.Forms.XEventQueue:Enqueue(xevent) end
---@param xevent System.Windows.Forms.XEvent
function System.Windows.Forms.XEventQueue:EnqueueLocked(xevent) end
---@return System.Windows.Forms.XEvent
function System.Windows.Forms.XEventQueue:Dequeue() end
---@return System.Windows.Forms.XEvent
function System.Windows.Forms.XEventQueue:Peek() end

---@class System.Windows.Forms.XEventQueue.PaintQueue : System.Object
---@field Count number
System.Windows.Forms.XEventQueue.PaintQueue = {}
---@alias CS.System.Windows.Forms.XEventQueue.PaintQueue System.Windows.Forms.XEventQueue.PaintQueue
CS.System.Windows.Forms.XEventQueue.PaintQueue = System.Windows.Forms.XEventQueue.PaintQueue

---@param size number
---@return System.Windows.Forms.XEventQueue.PaintQueue
function System.Windows.Forms.XEventQueue.PaintQueue.New(size) end
---@param hwnd System.Windows.Forms.Hwnd
function System.Windows.Forms.XEventQueue.PaintQueue:Enqueue(hwnd) end
---@param hwnd System.Windows.Forms.Hwnd
function System.Windows.Forms.XEventQueue.PaintQueue:Remove(hwnd) end
---@return System.Windows.Forms.XEvent
function System.Windows.Forms.XEventQueue.PaintQueue:Dequeue() end

---@class System.Windows.Forms.XEventQueue.XQueue : System.Object
---@field Count number
System.Windows.Forms.XEventQueue.XQueue = {}
---@alias CS.System.Windows.Forms.XEventQueue.XQueue System.Windows.Forms.XEventQueue.XQueue
CS.System.Windows.Forms.XEventQueue.XQueue = System.Windows.Forms.XEventQueue.XQueue

---@param size number
---@return System.Windows.Forms.XEventQueue.XQueue
function System.Windows.Forms.XEventQueue.XQueue.New(size) end
---@param xevent System.Windows.Forms.XEvent
function System.Windows.Forms.XEventQueue.XQueue:Enqueue(xevent) end
---@return System.Windows.Forms.XEvent
function System.Windows.Forms.XEventQueue.XQueue:Dequeue() end
---@return System.Windows.Forms.XEvent
function System.Windows.Forms.XEventQueue.XQueue:Peek() end

---@class System.Windows.Forms.XplatUI : System.Object
---@field RunningOnUnix boolean
---@field ActiveWindowTrackingDelay number
---@field Border3DSize System.Drawing.Size
---@field BorderSize System.Drawing.Size
---@field CaptionButtonSize System.Drawing.Size
---@field CaptionHeight number
---@field CaretBlinkTime number
---@field CaretWidth number
---@field CursorSize System.Drawing.Size
---@field DoubleClickSize System.Drawing.Size
---@field DoubleClickTime number
---@field DragFullWindows boolean
---@field DragSize System.Drawing.Size
---@field FixedFrameBorderSize System.Drawing.Size
---@field FontSmoothingContrast number
---@field FontSmoothingType number
---@field FrameBorderSize System.Drawing.Size
---@field HorizontalResizeBorderThickness number
---@field HorizontalScrollBarHeight number
---@field IconSize System.Drawing.Size
---@field IsActiveWindowTrackingEnabled boolean
---@field IsComboBoxAnimationEnabled boolean
---@field IsDropShadowEnabled boolean
---@field IsFontSmoothingEnabled boolean
---@field IsHotTrackingEnabled boolean
---@field IsIconTitleWrappingEnabled boolean
---@field IsKeyboardPreferred boolean
---@field IsListBoxSmoothScrollingEnabled boolean
---@field IsMenuAnimationEnabled boolean
---@field IsMenuFadeEnabled boolean
---@field IsMinimizeRestoreAnimationEnabled boolean
---@field IsSelectionFadeEnabled boolean
---@field IsSnapToDefaultEnabled boolean
---@field IsTitleBarGradientEnabled boolean
---@field IsToolTipAnimationEnabled boolean
---@field KeyboardSpeed number
---@field KeyboardDelay number
---@field MaxWindowTrackSize System.Drawing.Size
---@field MenuAccessKeysUnderlined boolean
---@field MenuBarButtonSize System.Drawing.Size
---@field MenuButtonSize System.Drawing.Size
---@field MenuShowDelay number
---@field MinimizedWindowSize System.Drawing.Size
---@field MinimizedWindowSpacingSize System.Drawing.Size
---@field MinimumWindowSize System.Drawing.Size
---@field MinimumFixedToolWindowSize System.Drawing.Size
---@field MinimumSizeableToolWindowSize System.Drawing.Size
---@field MinimumNoBorderWindowSize System.Drawing.Size
---@field MinWindowTrackSize System.Drawing.Size
---@field MouseSpeed number
---@field SmallIconSize System.Drawing.Size
---@field MenuHeight number
---@field MouseButtonCount number
---@field MouseButtonsSwapped boolean
---@field MouseHoverSize System.Drawing.Size
---@field MouseHoverTime number
---@field MouseWheelScrollDelta number
---@field MouseWheelPresent boolean
---@field PopupMenuAlignment System.Windows.Forms.LeftRightAlignment
---@field PowerStatus System.Windows.Forms.PowerStatus
---@field RequiresPositiveClientAreaSize boolean
---@field SizingBorderWidth number
---@field SmallCaptionButtonSize System.Drawing.Size
---@field UIEffectsEnabled boolean
---@field UserClipWontExposeParent boolean
---@field VerticalResizeBorderThickness number
---@field VerticalScrollBarWidth number
---@field VirtualScreen System.Drawing.Rectangle
---@field WorkingArea System.Drawing.Rectangle
---@field AllScreens System.Windows.Forms.Screen[]
---@field ThemesEnabled boolean
---@field ToolWindowCaptionHeight number
---@field ToolWindowCaptionButtonSize System.Drawing.Size
System.Windows.Forms.XplatUI = {}
---@alias CS.System.Windows.Forms.XplatUI System.Windows.Forms.XplatUI
CS.System.Windows.Forms.XplatUI = System.Windows.Forms.XplatUI

---@return System.Windows.Forms.XplatUI
function System.Windows.Forms.XplatUI.New() end

---@class System.Windows.Forms.XplatUI.State : System.Object
---@field ModifierKeys System.Windows.Forms.Keys
---@field MouseButtons System.Windows.Forms.MouseButtons
---@field MousePosition System.Drawing.Point
System.Windows.Forms.XplatUI.State = {}
---@alias CS.System.Windows.Forms.XplatUI.State System.Windows.Forms.XplatUI.State
CS.System.Windows.Forms.XplatUI.State = System.Windows.Forms.XplatUI.State

---@return System.Windows.Forms.XplatUI.State
function System.Windows.Forms.XplatUI.State.New() end

---@class System.Windows.Forms.XplatUI.ClipboardToObject : System.MulticastDelegate
System.Windows.Forms.XplatUI.ClipboardToObject = {}
---@alias CS.System.Windows.Forms.XplatUI.ClipboardToObject System.Windows.Forms.XplatUI.ClipboardToObject
CS.System.Windows.Forms.XplatUI.ClipboardToObject = System.Windows.Forms.XplatUI.ClipboardToObject

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.XplatUI.ClipboardToObject
function System.Windows.Forms.XplatUI.ClipboardToObject.New(object, method) end
---@param type number
---@param data System.IntPtr
---@param out_obj System.Object
---@return boolean,System.Object
function System.Windows.Forms.XplatUI.ClipboardToObject:Invoke(type, data, out_obj) end
---@param type number
---@param data System.IntPtr
---@param out_obj System.Object
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult,System.Object
function System.Windows.Forms.XplatUI.ClipboardToObject:BeginInvoke(type, data, out_obj, callback, object) end
---@param out_obj System.Object
---@param result System.IAsyncResult
---@return boolean,System.Object
function System.Windows.Forms.XplatUI.ClipboardToObject:EndInvoke(out_obj, result) end

---@class System.Windows.Forms.XplatUI.ObjectToClipboard : System.MulticastDelegate
System.Windows.Forms.XplatUI.ObjectToClipboard = {}
---@alias CS.System.Windows.Forms.XplatUI.ObjectToClipboard System.Windows.Forms.XplatUI.ObjectToClipboard
CS.System.Windows.Forms.XplatUI.ObjectToClipboard = System.Windows.Forms.XplatUI.ObjectToClipboard

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.XplatUI.ObjectToClipboard
function System.Windows.Forms.XplatUI.ObjectToClipboard.New(object, method) end
---@param ref_type number
---@param obj System.Object
---@param out_data System.Byte[]
---@return boolean,number,System.Byte[]
function System.Windows.Forms.XplatUI.ObjectToClipboard:Invoke(ref_type, obj, out_data) end
---@param ref_type number
---@param obj System.Object
---@param out_data System.Byte[]
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult,number,System.Byte[]
function System.Windows.Forms.XplatUI.ObjectToClipboard:BeginInvoke(ref_type, obj, out_data, callback, object) end
---@param ref_type number
---@param out_data System.Byte[]
---@param result System.IAsyncResult
---@return boolean,number,System.Byte[]
function System.Windows.Forms.XplatUI.ObjectToClipboard:EndInvoke(ref_type, out_data, result) end

---@class System.Windows.Forms.HwndDelegate : System.MulticastDelegate
System.Windows.Forms.HwndDelegate = {}
---@alias CS.System.Windows.Forms.HwndDelegate System.Windows.Forms.HwndDelegate
CS.System.Windows.Forms.HwndDelegate = System.Windows.Forms.HwndDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.HwndDelegate
function System.Windows.Forms.HwndDelegate.New(object, method) end
---@param handle System.IntPtr
---@return System.Drawing.Rectangle[]
function System.Windows.Forms.HwndDelegate:Invoke(handle) end
---@param handle System.IntPtr
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Windows.Forms.HwndDelegate:BeginInvoke(handle, callback, object) end
---@param result System.IAsyncResult
---@return System.Drawing.Rectangle[]
function System.Windows.Forms.HwndDelegate:EndInvoke(result) end

---@class System.Windows.Forms.XplatUICarbon : System.Windows.Forms.XplatUIDriver
---@field Reference number
System.Windows.Forms.XplatUICarbon = {}
---@alias CS.System.Windows.Forms.XplatUICarbon System.Windows.Forms.XplatUICarbon
CS.System.Windows.Forms.XplatUICarbon = System.Windows.Forms.XplatUICarbon

---@return System.Windows.Forms.XplatUICarbon
function System.Windows.Forms.XplatUICarbon.GetInstance() end

---@class System.Windows.Forms.XplatUIDriver : System.Object
---@field MenuButtonSize System.Drawing.Size
---@field ToolWindowCaptionHeight number
---@field ToolWindowCaptionButtonSize System.Drawing.Size
System.Windows.Forms.XplatUIDriver = {}
---@alias CS.System.Windows.Forms.XplatUIDriver System.Windows.Forms.XplatUIDriver
CS.System.Windows.Forms.XplatUIDriver = System.Windows.Forms.XplatUIDriver


---@class System.Windows.Forms.XplatUIDriver.WndProc : System.MulticastDelegate
System.Windows.Forms.XplatUIDriver.WndProc = {}
---@alias CS.System.Windows.Forms.XplatUIDriver.WndProc System.Windows.Forms.XplatUIDriver.WndProc
CS.System.Windows.Forms.XplatUIDriver.WndProc = System.Windows.Forms.XplatUIDriver.WndProc

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.XplatUIDriver.WndProc
function System.Windows.Forms.XplatUIDriver.WndProc.New(object, method) end
---@param hwnd System.IntPtr
---@param msg System.Windows.Forms.Msg
---@param wParam System.IntPtr
---@param lParam System.IntPtr
---@return System.IntPtr
function System.Windows.Forms.XplatUIDriver.WndProc:Invoke(hwnd, msg, wParam, lParam) end
---@param hwnd System.IntPtr
---@param msg System.Windows.Forms.Msg
---@param wParam System.IntPtr
---@param lParam System.IntPtr
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Windows.Forms.XplatUIDriver.WndProc:BeginInvoke(hwnd, msg, wParam, lParam, callback, object) end
---@param result System.IAsyncResult
---@return System.IntPtr
function System.Windows.Forms.XplatUIDriver.WndProc:EndInvoke(result) end

---@class System.Windows.Forms.XplatUIDriverSupport : System.Object
System.Windows.Forms.XplatUIDriverSupport = {}
---@alias CS.System.Windows.Forms.XplatUIDriverSupport System.Windows.Forms.XplatUIDriverSupport
CS.System.Windows.Forms.XplatUIDriverSupport = System.Windows.Forms.XplatUIDriverSupport


---@class System.Windows.Forms.WindowStyles
---@field WS_OVERLAPPED System.Windows.Forms.WindowStyles
---@field WS_POPUP System.Windows.Forms.WindowStyles
---@field WS_CHILD System.Windows.Forms.WindowStyles
---@field WS_MINIMIZE System.Windows.Forms.WindowStyles
---@field WS_VISIBLE System.Windows.Forms.WindowStyles
---@field WS_DISABLED System.Windows.Forms.WindowStyles
---@field WS_CLIPSIBLINGS System.Windows.Forms.WindowStyles
---@field WS_CLIPCHILDREN System.Windows.Forms.WindowStyles
---@field WS_MAXIMIZE System.Windows.Forms.WindowStyles
---@field WS_CAPTION System.Windows.Forms.WindowStyles
---@field WS_BORDER System.Windows.Forms.WindowStyles
---@field WS_DLGFRAME System.Windows.Forms.WindowStyles
---@field WS_VSCROLL System.Windows.Forms.WindowStyles
---@field WS_HSCROLL System.Windows.Forms.WindowStyles
---@field WS_SYSMENU System.Windows.Forms.WindowStyles
---@field WS_THICKFRAME System.Windows.Forms.WindowStyles
---@field WS_GROUP System.Windows.Forms.WindowStyles
---@field WS_TABSTOP System.Windows.Forms.WindowStyles
---@field WS_MINIMIZEBOX System.Windows.Forms.WindowStyles
---@field WS_MAXIMIZEBOX System.Windows.Forms.WindowStyles
---@field WS_TILED System.Windows.Forms.WindowStyles
---@field WS_ICONIC System.Windows.Forms.WindowStyles
---@field WS_SIZEBOX System.Windows.Forms.WindowStyles
---@field WS_POPUPWINDOW System.Windows.Forms.WindowStyles
---@field WS_OVERLAPPEDWINDOW System.Windows.Forms.WindowStyles
---@field WS_TILEDWINDOW System.Windows.Forms.WindowStyles
---@field WS_CHILDWINDOW System.Windows.Forms.WindowStyles
System.Windows.Forms.WindowStyles = {}
---@alias CS.System.Windows.Forms.WindowStyles System.Windows.Forms.WindowStyles
CS.System.Windows.Forms.WindowStyles = System.Windows.Forms.WindowStyles


---@class System.Windows.Forms.WindowExStyles
---@field WS_EX_DLGMODALFRAME System.Windows.Forms.WindowExStyles
---@field WS_EX_DRAGDETECT System.Windows.Forms.WindowExStyles
---@field WS_EX_NOPARENTNOTIFY System.Windows.Forms.WindowExStyles
---@field WS_EX_TOPMOST System.Windows.Forms.WindowExStyles
---@field WS_EX_ACCEPTFILES System.Windows.Forms.WindowExStyles
---@field WS_EX_TRANSPARENT System.Windows.Forms.WindowExStyles
---@field WS_EX_MDICHILD System.Windows.Forms.WindowExStyles
---@field WS_EX_TOOLWINDOW System.Windows.Forms.WindowExStyles
---@field WS_EX_WINDOWEDGE System.Windows.Forms.WindowExStyles
---@field WS_EX_CLIENTEDGE System.Windows.Forms.WindowExStyles
---@field WS_EX_CONTEXTHELP System.Windows.Forms.WindowExStyles
---@field WS_EX_RIGHT System.Windows.Forms.WindowExStyles
---@field WS_EX_LEFT System.Windows.Forms.WindowExStyles
---@field WS_EX_RTLREADING System.Windows.Forms.WindowExStyles
---@field WS_EX_LTRREADING System.Windows.Forms.WindowExStyles
---@field WS_EX_LEFTSCROLLBAR System.Windows.Forms.WindowExStyles
---@field WS_EX_LAYERED System.Windows.Forms.WindowExStyles
---@field WS_EX_RIGHTSCROLLBAR System.Windows.Forms.WindowExStyles
---@field WS_EX_CONTROLPARENT System.Windows.Forms.WindowExStyles
---@field WS_EX_STATICEDGE System.Windows.Forms.WindowExStyles
---@field WS_EX_APPWINDOW System.Windows.Forms.WindowExStyles
---@field WS_EX_NOINHERITLAYOUT System.Windows.Forms.WindowExStyles
---@field WS_EX_LAYOUTRTL System.Windows.Forms.WindowExStyles
---@field WS_EX_COMPOSITED System.Windows.Forms.WindowExStyles
---@field WS_EX_NOACTIVATE System.Windows.Forms.WindowExStyles
---@field WS_EX_OVERLAPPEDWINDOW System.Windows.Forms.WindowExStyles
---@field WS_EX_PALETTEWINDOW System.Windows.Forms.WindowExStyles
System.Windows.Forms.WindowExStyles = {}
---@alias CS.System.Windows.Forms.WindowExStyles System.Windows.Forms.WindowExStyles
CS.System.Windows.Forms.WindowExStyles = System.Windows.Forms.WindowExStyles


---@class System.Windows.Forms.ToolBarStyles
---@field TBSTYLE_TOOLTIPS System.Windows.Forms.ToolBarStyles
---@field TBSTYLE_FLAT System.Windows.Forms.ToolBarStyles
---@field TBSTYLE_LIST System.Windows.Forms.ToolBarStyles
---@field TBSTYLE_TRANSPARENT System.Windows.Forms.ToolBarStyles
System.Windows.Forms.ToolBarStyles = {}
---@alias CS.System.Windows.Forms.ToolBarStyles System.Windows.Forms.ToolBarStyles
CS.System.Windows.Forms.ToolBarStyles = System.Windows.Forms.ToolBarStyles


---@class System.Windows.Forms.Msg
---@field WM_NULL System.Windows.Forms.Msg
---@field WM_CREATE System.Windows.Forms.Msg
---@field WM_DESTROY System.Windows.Forms.Msg
---@field WM_MOVE System.Windows.Forms.Msg
---@field WM_SIZE System.Windows.Forms.Msg
---@field WM_ACTIVATE System.Windows.Forms.Msg
---@field WM_SETFOCUS System.Windows.Forms.Msg
---@field WM_KILLFOCUS System.Windows.Forms.Msg
---@field WM_ENABLE System.Windows.Forms.Msg
---@field WM_SETREDRAW System.Windows.Forms.Msg
---@field WM_SETTEXT System.Windows.Forms.Msg
---@field WM_GETTEXT System.Windows.Forms.Msg
---@field WM_GETTEXTLENGTH System.Windows.Forms.Msg
---@field WM_PAINT System.Windows.Forms.Msg
---@field WM_CLOSE System.Windows.Forms.Msg
---@field WM_QUERYENDSESSION System.Windows.Forms.Msg
---@field WM_QUIT System.Windows.Forms.Msg
---@field WM_QUERYOPEN System.Windows.Forms.Msg
---@field WM_ERASEBKGND System.Windows.Forms.Msg
---@field WM_SYSCOLORCHANGE System.Windows.Forms.Msg
---@field WM_ENDSESSION System.Windows.Forms.Msg
---@field WM_SHOWWINDOW System.Windows.Forms.Msg
---@field WM_CTLCOLOR System.Windows.Forms.Msg
---@field WM_WININICHANGE System.Windows.Forms.Msg
---@field WM_SETTINGCHANGE System.Windows.Forms.Msg
---@field WM_DEVMODECHANGE System.Windows.Forms.Msg
---@field WM_ACTIVATEAPP System.Windows.Forms.Msg
---@field WM_FONTCHANGE System.Windows.Forms.Msg
---@field WM_TIMECHANGE System.Windows.Forms.Msg
---@field WM_CANCELMODE System.Windows.Forms.Msg
---@field WM_SETCURSOR System.Windows.Forms.Msg
---@field WM_MOUSEACTIVATE System.Windows.Forms.Msg
---@field WM_CHILDACTIVATE System.Windows.Forms.Msg
---@field WM_QUEUESYNC System.Windows.Forms.Msg
---@field WM_GETMINMAXINFO System.Windows.Forms.Msg
---@field WM_PAINTICON System.Windows.Forms.Msg
---@field WM_ICONERASEBKGND System.Windows.Forms.Msg
---@field WM_NEXTDLGCTL System.Windows.Forms.Msg
---@field WM_SPOOLERSTATUS System.Windows.Forms.Msg
---@field WM_DRAWITEM System.Windows.Forms.Msg
---@field WM_MEASUREITEM System.Windows.Forms.Msg
---@field WM_DELETEITEM System.Windows.Forms.Msg
---@field WM_VKEYTOITEM System.Windows.Forms.Msg
---@field WM_CHARTOITEM System.Windows.Forms.Msg
---@field WM_SETFONT System.Windows.Forms.Msg
---@field WM_GETFONT System.Windows.Forms.Msg
---@field WM_SETHOTKEY System.Windows.Forms.Msg
---@field WM_GETHOTKEY System.Windows.Forms.Msg
---@field WM_QUERYDRAGICON System.Windows.Forms.Msg
---@field WM_COMPAREITEM System.Windows.Forms.Msg
---@field WM_GETOBJECT System.Windows.Forms.Msg
---@field WM_COMPACTING System.Windows.Forms.Msg
---@field WM_COMMNOTIFY System.Windows.Forms.Msg
---@field WM_WINDOWPOSCHANGING System.Windows.Forms.Msg
---@field WM_WINDOWPOSCHANGED System.Windows.Forms.Msg
---@field WM_POWER System.Windows.Forms.Msg
---@field WM_COPYDATA System.Windows.Forms.Msg
---@field WM_CANCELJOURNAL System.Windows.Forms.Msg
---@field WM_NOTIFY System.Windows.Forms.Msg
---@field WM_INPUTLANGCHANGEREQUEST System.Windows.Forms.Msg
---@field WM_INPUTLANGCHANGE System.Windows.Forms.Msg
---@field WM_TCARD System.Windows.Forms.Msg
---@field WM_HELP System.Windows.Forms.Msg
---@field WM_USERCHANGED System.Windows.Forms.Msg
---@field WM_NOTIFYFORMAT System.Windows.Forms.Msg
---@field WM_CONTEXTMENU System.Windows.Forms.Msg
---@field WM_STYLECHANGING System.Windows.Forms.Msg
---@field WM_STYLECHANGED System.Windows.Forms.Msg
---@field WM_DISPLAYCHANGE System.Windows.Forms.Msg
---@field WM_GETICON System.Windows.Forms.Msg
---@field WM_SETICON System.Windows.Forms.Msg
---@field WM_NCCREATE System.Windows.Forms.Msg
---@field WM_NCDESTROY System.Windows.Forms.Msg
---@field WM_NCCALCSIZE System.Windows.Forms.Msg
---@field WM_NCHITTEST System.Windows.Forms.Msg
---@field WM_NCPAINT System.Windows.Forms.Msg
---@field WM_NCACTIVATE System.Windows.Forms.Msg
---@field WM_GETDLGCODE System.Windows.Forms.Msg
---@field WM_SYNCPAINT System.Windows.Forms.Msg
---@field WM_NCMOUSEMOVE System.Windows.Forms.Msg
---@field WM_NCLBUTTONDOWN System.Windows.Forms.Msg
---@field WM_NCLBUTTONUP System.Windows.Forms.Msg
---@field WM_NCLBUTTONDBLCLK System.Windows.Forms.Msg
---@field WM_NCRBUTTONDOWN System.Windows.Forms.Msg
---@field WM_NCRBUTTONUP System.Windows.Forms.Msg
---@field WM_NCRBUTTONDBLCLK System.Windows.Forms.Msg
---@field WM_NCMBUTTONDOWN System.Windows.Forms.Msg
---@field WM_NCMBUTTONUP System.Windows.Forms.Msg
---@field WM_NCMBUTTONDBLCLK System.Windows.Forms.Msg
---@field WM_KEYDOWN System.Windows.Forms.Msg
---@field WM_KEYFIRST System.Windows.Forms.Msg
---@field WM_KEYUP System.Windows.Forms.Msg
---@field WM_CHAR System.Windows.Forms.Msg
---@field WM_DEADCHAR System.Windows.Forms.Msg
---@field WM_SYSKEYDOWN System.Windows.Forms.Msg
---@field WM_SYSKEYUP System.Windows.Forms.Msg
---@field WM_SYSCHAR System.Windows.Forms.Msg
---@field WM_SYSDEADCHAR System.Windows.Forms.Msg
---@field WM_KEYLAST System.Windows.Forms.Msg
---@field WM_IME_STARTCOMPOSITION System.Windows.Forms.Msg
---@field WM_IME_ENDCOMPOSITION System.Windows.Forms.Msg
---@field WM_IME_COMPOSITION System.Windows.Forms.Msg
---@field WM_IME_KEYLAST System.Windows.Forms.Msg
---@field WM_INITDIALOG System.Windows.Forms.Msg
---@field WM_COMMAND System.Windows.Forms.Msg
---@field WM_SYSCOMMAND System.Windows.Forms.Msg
---@field WM_TIMER System.Windows.Forms.Msg
---@field WM_HSCROLL System.Windows.Forms.Msg
---@field WM_VSCROLL System.Windows.Forms.Msg
---@field WM_INITMENU System.Windows.Forms.Msg
---@field WM_INITMENUPOPUP System.Windows.Forms.Msg
---@field WM_MENUSELECT System.Windows.Forms.Msg
---@field WM_MENUCHAR System.Windows.Forms.Msg
---@field WM_ENTERIDLE System.Windows.Forms.Msg
---@field WM_MENURBUTTONUP System.Windows.Forms.Msg
---@field WM_MENUDRAG System.Windows.Forms.Msg
---@field WM_MENUGETOBJECT System.Windows.Forms.Msg
---@field WM_UNINITMENUPOPUP System.Windows.Forms.Msg
---@field WM_MENUCOMMAND System.Windows.Forms.Msg
---@field WM_CHANGEUISTATE System.Windows.Forms.Msg
---@field WM_UPDATEUISTATE System.Windows.Forms.Msg
---@field WM_QUERYUISTATE System.Windows.Forms.Msg
---@field WM_CTLCOLORMSGBOX System.Windows.Forms.Msg
---@field WM_CTLCOLOREDIT System.Windows.Forms.Msg
---@field WM_CTLCOLORLISTBOX System.Windows.Forms.Msg
---@field WM_CTLCOLORBTN System.Windows.Forms.Msg
---@field WM_CTLCOLORDLG System.Windows.Forms.Msg
---@field WM_CTLCOLORSCROLLBAR System.Windows.Forms.Msg
---@field WM_CTLCOLORSTATIC System.Windows.Forms.Msg
---@field WM_MOUSEMOVE System.Windows.Forms.Msg
---@field WM_MOUSEFIRST System.Windows.Forms.Msg
---@field WM_LBUTTONDOWN System.Windows.Forms.Msg
---@field WM_LBUTTONUP System.Windows.Forms.Msg
---@field WM_LBUTTONDBLCLK System.Windows.Forms.Msg
---@field WM_RBUTTONDOWN System.Windows.Forms.Msg
---@field WM_RBUTTONUP System.Windows.Forms.Msg
---@field WM_RBUTTONDBLCLK System.Windows.Forms.Msg
---@field WM_MBUTTONDOWN System.Windows.Forms.Msg
---@field WM_MBUTTONUP System.Windows.Forms.Msg
---@field WM_MBUTTONDBLCLK System.Windows.Forms.Msg
---@field WM_MOUSEWHEEL System.Windows.Forms.Msg
---@field WM_MOUSELAST System.Windows.Forms.Msg
---@field WM_PARENTNOTIFY System.Windows.Forms.Msg
---@field WM_ENTERMENULOOP System.Windows.Forms.Msg
---@field WM_EXITMENULOOP System.Windows.Forms.Msg
---@field WM_NEXTMENU System.Windows.Forms.Msg
---@field WM_SIZING System.Windows.Forms.Msg
---@field WM_CAPTURECHANGED System.Windows.Forms.Msg
---@field WM_MOVING System.Windows.Forms.Msg
---@field WM_DEVICECHANGE System.Windows.Forms.Msg
---@field WM_MDICREATE System.Windows.Forms.Msg
---@field WM_MDIDESTROY System.Windows.Forms.Msg
---@field WM_MDIACTIVATE System.Windows.Forms.Msg
---@field WM_MDIRESTORE System.Windows.Forms.Msg
---@field WM_MDINEXT System.Windows.Forms.Msg
---@field WM_MDIMAXIMIZE System.Windows.Forms.Msg
---@field WM_MDITILE System.Windows.Forms.Msg
---@field WM_MDICASCADE System.Windows.Forms.Msg
---@field WM_MDIICONARRANGE System.Windows.Forms.Msg
---@field WM_MDIGETACTIVE System.Windows.Forms.Msg
---@field WM_MDISETMENU System.Windows.Forms.Msg
---@field WM_ENTERSIZEMOVE System.Windows.Forms.Msg
---@field WM_EXITSIZEMOVE System.Windows.Forms.Msg
---@field WM_DROPFILES System.Windows.Forms.Msg
---@field WM_MDIREFRESHMENU System.Windows.Forms.Msg
---@field WM_IME_SETCONTEXT System.Windows.Forms.Msg
---@field WM_IME_NOTIFY System.Windows.Forms.Msg
---@field WM_IME_CONTROL System.Windows.Forms.Msg
---@field WM_IME_COMPOSITIONFULL System.Windows.Forms.Msg
---@field WM_IME_SELECT System.Windows.Forms.Msg
---@field WM_IME_CHAR System.Windows.Forms.Msg
---@field WM_IME_REQUEST System.Windows.Forms.Msg
---@field WM_IME_KEYDOWN System.Windows.Forms.Msg
---@field WM_IME_KEYUP System.Windows.Forms.Msg
---@field WM_NCMOUSEHOVER System.Windows.Forms.Msg
---@field WM_MOUSEHOVER System.Windows.Forms.Msg
---@field WM_NCMOUSELEAVE System.Windows.Forms.Msg
---@field WM_MOUSELEAVE System.Windows.Forms.Msg
---@field WM_CUT System.Windows.Forms.Msg
---@field WM_COPY System.Windows.Forms.Msg
---@field WM_PASTE System.Windows.Forms.Msg
---@field WM_CLEAR System.Windows.Forms.Msg
---@field WM_UNDO System.Windows.Forms.Msg
---@field WM_RENDERFORMAT System.Windows.Forms.Msg
---@field WM_RENDERALLFORMATS System.Windows.Forms.Msg
---@field WM_DESTROYCLIPBOARD System.Windows.Forms.Msg
---@field WM_DRAWCLIPBOARD System.Windows.Forms.Msg
---@field WM_PAINTCLIPBOARD System.Windows.Forms.Msg
---@field WM_VSCROLLCLIPBOARD System.Windows.Forms.Msg
---@field WM_SIZECLIPBOARD System.Windows.Forms.Msg
---@field WM_ASKCBFORMATNAME System.Windows.Forms.Msg
---@field WM_CHANGECBCHAIN System.Windows.Forms.Msg
---@field WM_HSCROLLCLIPBOARD System.Windows.Forms.Msg
---@field WM_QUERYNEWPALETTE System.Windows.Forms.Msg
---@field WM_PALETTEISCHANGING System.Windows.Forms.Msg
---@field WM_PALETTECHANGED System.Windows.Forms.Msg
---@field WM_HOTKEY System.Windows.Forms.Msg
---@field WM_PRINT System.Windows.Forms.Msg
---@field WM_PRINTCLIENT System.Windows.Forms.Msg
---@field WM_HANDHELDFIRST System.Windows.Forms.Msg
---@field WM_HANDHELDLAST System.Windows.Forms.Msg
---@field WM_AFXFIRST System.Windows.Forms.Msg
---@field WM_AFXLAST System.Windows.Forms.Msg
---@field WM_PENWINFIRST System.Windows.Forms.Msg
---@field WM_PENWINLAST System.Windows.Forms.Msg
---@field WM_APP System.Windows.Forms.Msg
---@field WM_USER System.Windows.Forms.Msg
---@field WM_MOUSE_ENTER System.Windows.Forms.Msg
---@field WM_ASYNC_MESSAGE System.Windows.Forms.Msg
---@field WM_REFLECT System.Windows.Forms.Msg
---@field WM_CLOSE_INTERNAL System.Windows.Forms.Msg
---@field WM_XIM_PREEDITSTART System.Windows.Forms.Msg
---@field WM_XIM_PREEDITDONE System.Windows.Forms.Msg
---@field WM_XIM_PREEDITDRAW System.Windows.Forms.Msg
---@field WM_XIM_PREEDITCARET System.Windows.Forms.Msg
---@field NIN_BALLOONSHOW System.Windows.Forms.Msg
---@field NIN_BALLOONHIDE System.Windows.Forms.Msg
---@field NIN_BALLOONTIMEOUT System.Windows.Forms.Msg
---@field NIN_BALLOONUSERCLICK System.Windows.Forms.Msg
System.Windows.Forms.Msg = {}
---@alias CS.System.Windows.Forms.Msg System.Windows.Forms.Msg
CS.System.Windows.Forms.Msg = System.Windows.Forms.Msg


---@class System.Windows.Forms.MsgButtons
---@field MK_LBUTTON System.Windows.Forms.MsgButtons
---@field MK_RBUTTON System.Windows.Forms.MsgButtons
---@field MK_SHIFT System.Windows.Forms.MsgButtons
---@field MK_CONTROL System.Windows.Forms.MsgButtons
---@field MK_MBUTTON System.Windows.Forms.MsgButtons
---@field MK_XBUTTON1 System.Windows.Forms.MsgButtons
---@field MK_XBUTTON2 System.Windows.Forms.MsgButtons
System.Windows.Forms.MsgButtons = {}
---@alias CS.System.Windows.Forms.MsgButtons System.Windows.Forms.MsgButtons
CS.System.Windows.Forms.MsgButtons = System.Windows.Forms.MsgButtons


---@class System.Windows.Forms.MsgUIState
---@field UIS_SET System.Windows.Forms.MsgUIState
---@field UIS_CLEAR System.Windows.Forms.MsgUIState
---@field UIS_INITIALIZE System.Windows.Forms.MsgUIState
---@field UISF_HIDEFOCUS System.Windows.Forms.MsgUIState
---@field UISF_HIDEACCEL System.Windows.Forms.MsgUIState
---@field UISF_ACTIVE System.Windows.Forms.MsgUIState
System.Windows.Forms.MsgUIState = {}
---@alias CS.System.Windows.Forms.MsgUIState System.Windows.Forms.MsgUIState
CS.System.Windows.Forms.MsgUIState = System.Windows.Forms.MsgUIState


---@class System.Windows.Forms.POINT : System.ValueType
---@field x number
---@field y number
System.Windows.Forms.POINT = {}
---@alias CS.System.Windows.Forms.POINT System.Windows.Forms.POINT
CS.System.Windows.Forms.POINT = System.Windows.Forms.POINT

---@param x number
---@param y number
---@return System.Windows.Forms.POINT
function System.Windows.Forms.POINT.New(x, y) end
---@return System.Drawing.Point
function System.Windows.Forms.POINT:ToPoint() end
---@return string
function System.Windows.Forms.POINT:ToString() end

---@class System.Windows.Forms.MSG : System.ValueType
System.Windows.Forms.MSG = {}
---@alias CS.System.Windows.Forms.MSG System.Windows.Forms.MSG
CS.System.Windows.Forms.MSG = System.Windows.Forms.MSG

---@return string
function System.Windows.Forms.MSG:ToString() end

---@class System.Windows.Forms.TransparencySupport
---@field None System.Windows.Forms.TransparencySupport
---@field Get System.Windows.Forms.TransparencySupport
---@field Set System.Windows.Forms.TransparencySupport
---@field GetSet System.Windows.Forms.TransparencySupport
System.Windows.Forms.TransparencySupport = {}
---@alias CS.System.Windows.Forms.TransparencySupport System.Windows.Forms.TransparencySupport
CS.System.Windows.Forms.TransparencySupport = System.Windows.Forms.TransparencySupport


---@class System.Windows.Forms.WindowActiveFlags
---@field WA_INACTIVE System.Windows.Forms.WindowActiveFlags
---@field WA_ACTIVE System.Windows.Forms.WindowActiveFlags
---@field WA_CLICKACTIVE System.Windows.Forms.WindowActiveFlags
System.Windows.Forms.WindowActiveFlags = {}
---@alias CS.System.Windows.Forms.WindowActiveFlags System.Windows.Forms.WindowActiveFlags
CS.System.Windows.Forms.WindowActiveFlags = System.Windows.Forms.WindowActiveFlags


---@class System.Windows.Forms.KeybdEventFlags
---@field None System.Windows.Forms.KeybdEventFlags
---@field ExtendedKey System.Windows.Forms.KeybdEventFlags
---@field KeyUp System.Windows.Forms.KeybdEventFlags
System.Windows.Forms.KeybdEventFlags = {}
---@alias CS.System.Windows.Forms.KeybdEventFlags System.Windows.Forms.KeybdEventFlags
CS.System.Windows.Forms.KeybdEventFlags = System.Windows.Forms.KeybdEventFlags


---@class System.Windows.Forms.VirtualKeys
---@field VK_LBUTTON System.Windows.Forms.VirtualKeys
---@field VK_RBUTTON System.Windows.Forms.VirtualKeys
---@field VK_CANCEL System.Windows.Forms.VirtualKeys
---@field VK_MBUTTON System.Windows.Forms.VirtualKeys
---@field VK_XBUTTON1 System.Windows.Forms.VirtualKeys
---@field VK_XBUTTON2 System.Windows.Forms.VirtualKeys
---@field VK_BACK System.Windows.Forms.VirtualKeys
---@field VK_TAB System.Windows.Forms.VirtualKeys
---@field VK_CLEAR System.Windows.Forms.VirtualKeys
---@field VK_RETURN System.Windows.Forms.VirtualKeys
---@field VK_SHIFT System.Windows.Forms.VirtualKeys
---@field VK_CONTROL System.Windows.Forms.VirtualKeys
---@field VK_MENU System.Windows.Forms.VirtualKeys
---@field VK_PAUSE System.Windows.Forms.VirtualKeys
---@field VK_CAPITAL System.Windows.Forms.VirtualKeys
---@field VK_ESCAPE System.Windows.Forms.VirtualKeys
---@field VK_CONVERT System.Windows.Forms.VirtualKeys
---@field VK_NONCONVERT System.Windows.Forms.VirtualKeys
---@field VK_SPACE System.Windows.Forms.VirtualKeys
---@field VK_PRIOR System.Windows.Forms.VirtualKeys
---@field VK_NEXT System.Windows.Forms.VirtualKeys
---@field VK_END System.Windows.Forms.VirtualKeys
---@field VK_HOME System.Windows.Forms.VirtualKeys
---@field VK_LEFT System.Windows.Forms.VirtualKeys
---@field VK_UP System.Windows.Forms.VirtualKeys
---@field VK_RIGHT System.Windows.Forms.VirtualKeys
---@field VK_DOWN System.Windows.Forms.VirtualKeys
---@field VK_SELECT System.Windows.Forms.VirtualKeys
---@field VK_PRINT System.Windows.Forms.VirtualKeys
---@field VK_EXECUTE System.Windows.Forms.VirtualKeys
---@field VK_SNAPSHOT System.Windows.Forms.VirtualKeys
---@field VK_INSERT System.Windows.Forms.VirtualKeys
---@field VK_DELETE System.Windows.Forms.VirtualKeys
---@field VK_HELP System.Windows.Forms.VirtualKeys
---@field VK_0 System.Windows.Forms.VirtualKeys
---@field VK_1 System.Windows.Forms.VirtualKeys
---@field VK_2 System.Windows.Forms.VirtualKeys
---@field VK_3 System.Windows.Forms.VirtualKeys
---@field VK_4 System.Windows.Forms.VirtualKeys
---@field VK_5 System.Windows.Forms.VirtualKeys
---@field VK_6 System.Windows.Forms.VirtualKeys
---@field VK_7 System.Windows.Forms.VirtualKeys
---@field VK_8 System.Windows.Forms.VirtualKeys
---@field VK_9 System.Windows.Forms.VirtualKeys
---@field VK_A System.Windows.Forms.VirtualKeys
---@field VK_B System.Windows.Forms.VirtualKeys
---@field VK_C System.Windows.Forms.VirtualKeys
---@field VK_D System.Windows.Forms.VirtualKeys
---@field VK_E System.Windows.Forms.VirtualKeys
---@field VK_F System.Windows.Forms.VirtualKeys
---@field VK_G System.Windows.Forms.VirtualKeys
---@field VK_H System.Windows.Forms.VirtualKeys
---@field VK_I System.Windows.Forms.VirtualKeys
---@field VK_J System.Windows.Forms.VirtualKeys
---@field VK_K System.Windows.Forms.VirtualKeys
---@field VK_L System.Windows.Forms.VirtualKeys
---@field VK_M System.Windows.Forms.VirtualKeys
---@field VK_N System.Windows.Forms.VirtualKeys
---@field VK_O System.Windows.Forms.VirtualKeys
---@field VK_P System.Windows.Forms.VirtualKeys
---@field VK_Q System.Windows.Forms.VirtualKeys
---@field VK_R System.Windows.Forms.VirtualKeys
---@field VK_S System.Windows.Forms.VirtualKeys
---@field VK_T System.Windows.Forms.VirtualKeys
---@field VK_U System.Windows.Forms.VirtualKeys
---@field VK_V System.Windows.Forms.VirtualKeys
---@field VK_W System.Windows.Forms.VirtualKeys
---@field VK_X System.Windows.Forms.VirtualKeys
---@field VK_Y System.Windows.Forms.VirtualKeys
---@field VK_Z System.Windows.Forms.VirtualKeys
---@field VK_LWIN System.Windows.Forms.VirtualKeys
---@field VK_RWIN System.Windows.Forms.VirtualKeys
---@field VK_APPS System.Windows.Forms.VirtualKeys
---@field VK_NUMPAD0 System.Windows.Forms.VirtualKeys
---@field VK_NUMPAD1 System.Windows.Forms.VirtualKeys
---@field VK_NUMPAD2 System.Windows.Forms.VirtualKeys
---@field VK_NUMPAD3 System.Windows.Forms.VirtualKeys
---@field VK_NUMPAD4 System.Windows.Forms.VirtualKeys
---@field VK_NUMPAD5 System.Windows.Forms.VirtualKeys
---@field VK_NUMPAD6 System.Windows.Forms.VirtualKeys
---@field VK_NUMPAD7 System.Windows.Forms.VirtualKeys
---@field VK_NUMPAD8 System.Windows.Forms.VirtualKeys
---@field VK_NUMPAD9 System.Windows.Forms.VirtualKeys
---@field VK_MULTIPLY System.Windows.Forms.VirtualKeys
---@field VK_ADD System.Windows.Forms.VirtualKeys
---@field VK_SEPARATOR System.Windows.Forms.VirtualKeys
---@field VK_SUBTRACT System.Windows.Forms.VirtualKeys
---@field VK_DECIMAL System.Windows.Forms.VirtualKeys
---@field VK_DIVIDE System.Windows.Forms.VirtualKeys
---@field VK_F1 System.Windows.Forms.VirtualKeys
---@field VK_F2 System.Windows.Forms.VirtualKeys
---@field VK_F3 System.Windows.Forms.VirtualKeys
---@field VK_F4 System.Windows.Forms.VirtualKeys
---@field VK_F5 System.Windows.Forms.VirtualKeys
---@field VK_F6 System.Windows.Forms.VirtualKeys
---@field VK_F7 System.Windows.Forms.VirtualKeys
---@field VK_F8 System.Windows.Forms.VirtualKeys
---@field VK_F9 System.Windows.Forms.VirtualKeys
---@field VK_F10 System.Windows.Forms.VirtualKeys
---@field VK_F11 System.Windows.Forms.VirtualKeys
---@field VK_F12 System.Windows.Forms.VirtualKeys
---@field VK_F13 System.Windows.Forms.VirtualKeys
---@field VK_F14 System.Windows.Forms.VirtualKeys
---@field VK_F15 System.Windows.Forms.VirtualKeys
---@field VK_F16 System.Windows.Forms.VirtualKeys
---@field VK_F17 System.Windows.Forms.VirtualKeys
---@field VK_F18 System.Windows.Forms.VirtualKeys
---@field VK_F19 System.Windows.Forms.VirtualKeys
---@field VK_F20 System.Windows.Forms.VirtualKeys
---@field VK_F21 System.Windows.Forms.VirtualKeys
---@field VK_F22 System.Windows.Forms.VirtualKeys
---@field VK_F23 System.Windows.Forms.VirtualKeys
---@field VK_F24 System.Windows.Forms.VirtualKeys
---@field VK_NUMLOCK System.Windows.Forms.VirtualKeys
---@field VK_SCROLL System.Windows.Forms.VirtualKeys
---@field VK_LSHIFT System.Windows.Forms.VirtualKeys
---@field VK_RSHIFT System.Windows.Forms.VirtualKeys
---@field VK_LCONTROL System.Windows.Forms.VirtualKeys
---@field VK_RCONTROL System.Windows.Forms.VirtualKeys
---@field VK_LMENU System.Windows.Forms.VirtualKeys
---@field VK_RMENU System.Windows.Forms.VirtualKeys
---@field VK_OEM_1 System.Windows.Forms.VirtualKeys
---@field VK_OEM_PLUS System.Windows.Forms.VirtualKeys
---@field VK_OEM_COMMA System.Windows.Forms.VirtualKeys
---@field VK_OEM_MINUS System.Windows.Forms.VirtualKeys
---@field VK_OEM_PERIOD System.Windows.Forms.VirtualKeys
---@field VK_OEM_2 System.Windows.Forms.VirtualKeys
---@field VK_OEM_3 System.Windows.Forms.VirtualKeys
---@field VK_OEM_4 System.Windows.Forms.VirtualKeys
---@field VK_OEM_5 System.Windows.Forms.VirtualKeys
---@field VK_OEM_6 System.Windows.Forms.VirtualKeys
---@field VK_OEM_7 System.Windows.Forms.VirtualKeys
---@field VK_OEM_8 System.Windows.Forms.VirtualKeys
---@field VK_OEM_AX System.Windows.Forms.VirtualKeys
---@field VK_OEM_102 System.Windows.Forms.VirtualKeys
---@field VK_ICO_HELP System.Windows.Forms.VirtualKeys
---@field VK_ICO_00 System.Windows.Forms.VirtualKeys
---@field VK_PROCESSKEY System.Windows.Forms.VirtualKeys
---@field VK_OEM_ATTN System.Windows.Forms.VirtualKeys
---@field VK_OEM_COPY System.Windows.Forms.VirtualKeys
---@field VK_OEM_AUTO System.Windows.Forms.VirtualKeys
---@field VK_OEM_ENLW System.Windows.Forms.VirtualKeys
---@field VK_OEM_BACKTAB System.Windows.Forms.VirtualKeys
---@field VK_ATTN System.Windows.Forms.VirtualKeys
---@field VK_CRSEL System.Windows.Forms.VirtualKeys
---@field VK_EXSEL System.Windows.Forms.VirtualKeys
---@field VK_EREOF System.Windows.Forms.VirtualKeys
---@field VK_PLAY System.Windows.Forms.VirtualKeys
---@field VK_ZOOM System.Windows.Forms.VirtualKeys
---@field VK_NONAME System.Windows.Forms.VirtualKeys
---@field VK_PA1 System.Windows.Forms.VirtualKeys
---@field VK_OEM_CLEAR System.Windows.Forms.VirtualKeys
System.Windows.Forms.VirtualKeys = {}
---@alias CS.System.Windows.Forms.VirtualKeys System.Windows.Forms.VirtualKeys
CS.System.Windows.Forms.VirtualKeys = System.Windows.Forms.VirtualKeys


---@class System.Windows.Forms.TtyKeys
---@field XK_BackSpace System.Windows.Forms.TtyKeys
---@field XK_Tab System.Windows.Forms.TtyKeys
---@field XK_Linefeed System.Windows.Forms.TtyKeys
---@field XK_Clear System.Windows.Forms.TtyKeys
---@field XK_Return System.Windows.Forms.TtyKeys
---@field XK_Pause System.Windows.Forms.TtyKeys
---@field XK_Scroll_Lock System.Windows.Forms.TtyKeys
---@field XK_Sys_Req System.Windows.Forms.TtyKeys
---@field XK_Escape System.Windows.Forms.TtyKeys
---@field XK_Delete System.Windows.Forms.TtyKeys
System.Windows.Forms.TtyKeys = {}
---@alias CS.System.Windows.Forms.TtyKeys System.Windows.Forms.TtyKeys
CS.System.Windows.Forms.TtyKeys = System.Windows.Forms.TtyKeys


---@class System.Windows.Forms.MiscKeys
---@field XK_ISO_Lock System.Windows.Forms.MiscKeys
---@field XK_ISO_Last_Group_Lock System.Windows.Forms.MiscKeys
---@field XK_Select System.Windows.Forms.MiscKeys
---@field XK_Print System.Windows.Forms.MiscKeys
---@field XK_Execute System.Windows.Forms.MiscKeys
---@field XK_Insert System.Windows.Forms.MiscKeys
---@field XK_Undo System.Windows.Forms.MiscKeys
---@field XK_Redo System.Windows.Forms.MiscKeys
---@field XK_Menu System.Windows.Forms.MiscKeys
---@field XK_Find System.Windows.Forms.MiscKeys
---@field XK_Cancel System.Windows.Forms.MiscKeys
---@field XK_Help System.Windows.Forms.MiscKeys
---@field XK_Break System.Windows.Forms.MiscKeys
---@field XK_Mode_switch System.Windows.Forms.MiscKeys
---@field XK_script_switch System.Windows.Forms.MiscKeys
---@field XK_Num_Lock System.Windows.Forms.MiscKeys
System.Windows.Forms.MiscKeys = {}
---@alias CS.System.Windows.Forms.MiscKeys System.Windows.Forms.MiscKeys
CS.System.Windows.Forms.MiscKeys = System.Windows.Forms.MiscKeys


---@class System.Windows.Forms.KeypadKeys
---@field XK_KP_Space System.Windows.Forms.KeypadKeys
---@field XK_KP_Tab System.Windows.Forms.KeypadKeys
---@field XK_KP_Enter System.Windows.Forms.KeypadKeys
---@field XK_KP_F1 System.Windows.Forms.KeypadKeys
---@field XK_KP_F2 System.Windows.Forms.KeypadKeys
---@field XK_KP_F3 System.Windows.Forms.KeypadKeys
---@field XK_KP_F4 System.Windows.Forms.KeypadKeys
---@field XK_KP_Home System.Windows.Forms.KeypadKeys
---@field XK_KP_Left System.Windows.Forms.KeypadKeys
---@field XK_KP_Up System.Windows.Forms.KeypadKeys
---@field XK_KP_Right System.Windows.Forms.KeypadKeys
---@field XK_KP_Down System.Windows.Forms.KeypadKeys
---@field XK_KP_Prior System.Windows.Forms.KeypadKeys
---@field XK_KP_Page_Up System.Windows.Forms.KeypadKeys
---@field XK_KP_Next System.Windows.Forms.KeypadKeys
---@field XK_KP_Page_Down System.Windows.Forms.KeypadKeys
---@field XK_KP_End System.Windows.Forms.KeypadKeys
---@field XK_KP_Begin System.Windows.Forms.KeypadKeys
---@field XK_KP_Insert System.Windows.Forms.KeypadKeys
---@field XK_KP_Delete System.Windows.Forms.KeypadKeys
---@field XK_KP_Equal System.Windows.Forms.KeypadKeys
---@field XK_KP_Multiply System.Windows.Forms.KeypadKeys
---@field XK_KP_Add System.Windows.Forms.KeypadKeys
---@field XK_KP_Separator System.Windows.Forms.KeypadKeys
---@field XK_KP_Subtract System.Windows.Forms.KeypadKeys
---@field XK_KP_Decimal System.Windows.Forms.KeypadKeys
---@field XK_KP_Divide System.Windows.Forms.KeypadKeys
---@field XK_KP_0 System.Windows.Forms.KeypadKeys
---@field XK_KP_1 System.Windows.Forms.KeypadKeys
---@field XK_KP_2 System.Windows.Forms.KeypadKeys
---@field XK_KP_3 System.Windows.Forms.KeypadKeys
---@field XK_KP_4 System.Windows.Forms.KeypadKeys
---@field XK_KP_5 System.Windows.Forms.KeypadKeys
---@field XK_KP_6 System.Windows.Forms.KeypadKeys
---@field XK_KP_7 System.Windows.Forms.KeypadKeys
---@field XK_KP_8 System.Windows.Forms.KeypadKeys
---@field XK_KP_9 System.Windows.Forms.KeypadKeys
System.Windows.Forms.KeypadKeys = {}
---@alias CS.System.Windows.Forms.KeypadKeys System.Windows.Forms.KeypadKeys
CS.System.Windows.Forms.KeypadKeys = System.Windows.Forms.KeypadKeys


---@class System.Windows.Forms.DeadKeys
---@field XK_dead_grave System.Windows.Forms.DeadKeys
---@field XK_dead_acute System.Windows.Forms.DeadKeys
---@field XK_dead_circumflex System.Windows.Forms.DeadKeys
---@field XK_dead_tilde System.Windows.Forms.DeadKeys
---@field XK_dead_macron System.Windows.Forms.DeadKeys
---@field XK_dead_breve System.Windows.Forms.DeadKeys
---@field XK_dead_abovedot System.Windows.Forms.DeadKeys
---@field XK_dead_diaeresis System.Windows.Forms.DeadKeys
---@field XK_dead_abovering System.Windows.Forms.DeadKeys
---@field XK_dead_doubleacute System.Windows.Forms.DeadKeys
---@field XK_dead_caron System.Windows.Forms.DeadKeys
---@field XK_dead_cedilla System.Windows.Forms.DeadKeys
---@field XK_dead_ogonek System.Windows.Forms.DeadKeys
---@field XK_dead_iota System.Windows.Forms.DeadKeys
---@field XK_dead_voiced_sound System.Windows.Forms.DeadKeys
---@field XK_dead_semivoiced_sound System.Windows.Forms.DeadKeys
---@field XK_dead_belowdot System.Windows.Forms.DeadKeys
---@field XK_dead_hook System.Windows.Forms.DeadKeys
---@field XK_dead_horn System.Windows.Forms.DeadKeys
System.Windows.Forms.DeadKeys = {}
---@alias CS.System.Windows.Forms.DeadKeys System.Windows.Forms.DeadKeys
CS.System.Windows.Forms.DeadKeys = System.Windows.Forms.DeadKeys


---@class System.Windows.Forms.HELPINFO : System.ValueType
System.Windows.Forms.HELPINFO = {}
---@alias CS.System.Windows.Forms.HELPINFO System.Windows.Forms.HELPINFO
CS.System.Windows.Forms.HELPINFO = System.Windows.Forms.HELPINFO


---@class System.Windows.Forms.PeekMessageFlags
---@field PM_NOREMOVE System.Windows.Forms.PeekMessageFlags
---@field PM_REMOVE System.Windows.Forms.PeekMessageFlags
---@field PM_NOYIELD System.Windows.Forms.PeekMessageFlags
System.Windows.Forms.PeekMessageFlags = {}
---@alias CS.System.Windows.Forms.PeekMessageFlags System.Windows.Forms.PeekMessageFlags
CS.System.Windows.Forms.PeekMessageFlags = System.Windows.Forms.PeekMessageFlags


---@class System.Windows.Forms.StdCursor
---@field Default System.Windows.Forms.StdCursor
---@field AppStarting System.Windows.Forms.StdCursor
---@field Arrow System.Windows.Forms.StdCursor
---@field Cross System.Windows.Forms.StdCursor
---@field Hand System.Windows.Forms.StdCursor
---@field Help System.Windows.Forms.StdCursor
---@field HSplit System.Windows.Forms.StdCursor
---@field IBeam System.Windows.Forms.StdCursor
---@field No System.Windows.Forms.StdCursor
---@field NoMove2D System.Windows.Forms.StdCursor
---@field NoMoveHoriz System.Windows.Forms.StdCursor
---@field NoMoveVert System.Windows.Forms.StdCursor
---@field PanEast System.Windows.Forms.StdCursor
---@field PanNE System.Windows.Forms.StdCursor
---@field PanNorth System.Windows.Forms.StdCursor
---@field PanNW System.Windows.Forms.StdCursor
---@field PanSE System.Windows.Forms.StdCursor
---@field PanSouth System.Windows.Forms.StdCursor
---@field PanSW System.Windows.Forms.StdCursor
---@field PanWest System.Windows.Forms.StdCursor
---@field SizeAll System.Windows.Forms.StdCursor
---@field SizeNESW System.Windows.Forms.StdCursor
---@field SizeNS System.Windows.Forms.StdCursor
---@field SizeNWSE System.Windows.Forms.StdCursor
---@field SizeWE System.Windows.Forms.StdCursor
---@field UpArrow System.Windows.Forms.StdCursor
---@field VSplit System.Windows.Forms.StdCursor
---@field WaitCursor System.Windows.Forms.StdCursor
System.Windows.Forms.StdCursor = {}
---@alias CS.System.Windows.Forms.StdCursor System.Windows.Forms.StdCursor
CS.System.Windows.Forms.StdCursor = System.Windows.Forms.StdCursor


---@class System.Windows.Forms.HitTest
---@field HTERROR System.Windows.Forms.HitTest
---@field HTTRANSPARENT System.Windows.Forms.HitTest
---@field HTNOWHERE System.Windows.Forms.HitTest
---@field HTCLIENT System.Windows.Forms.HitTest
---@field HTCAPTION System.Windows.Forms.HitTest
---@field HTSYSMENU System.Windows.Forms.HitTest
---@field HTGROWBOX System.Windows.Forms.HitTest
---@field HTSIZE System.Windows.Forms.HitTest
---@field HTMENU System.Windows.Forms.HitTest
---@field HTHSCROLL System.Windows.Forms.HitTest
---@field HTVSCROLL System.Windows.Forms.HitTest
---@field HTMINBUTTON System.Windows.Forms.HitTest
---@field HTMAXBUTTON System.Windows.Forms.HitTest
---@field HTLEFT System.Windows.Forms.HitTest
---@field HTRIGHT System.Windows.Forms.HitTest
---@field HTTOP System.Windows.Forms.HitTest
---@field HTTOPLEFT System.Windows.Forms.HitTest
---@field HTTOPRIGHT System.Windows.Forms.HitTest
---@field HTBOTTOM System.Windows.Forms.HitTest
---@field HTBOTTOMLEFT System.Windows.Forms.HitTest
---@field HTBOTTOMRIGHT System.Windows.Forms.HitTest
---@field HTBORDER System.Windows.Forms.HitTest
---@field HTREDUCE System.Windows.Forms.HitTest
---@field HTZOOM System.Windows.Forms.HitTest
---@field HTSIZEFIRST System.Windows.Forms.HitTest
---@field HTSIZELAST System.Windows.Forms.HitTest
---@field HTOBJECT System.Windows.Forms.HitTest
---@field HTCLOSE System.Windows.Forms.HitTest
---@field HTHELP System.Windows.Forms.HitTest
System.Windows.Forms.HitTest = {}
---@alias CS.System.Windows.Forms.HitTest System.Windows.Forms.HitTest
CS.System.Windows.Forms.HitTest = System.Windows.Forms.HitTest


---@class System.Windows.Forms.TitleStyle
---@field None System.Windows.Forms.TitleStyle
---@field Normal System.Windows.Forms.TitleStyle
---@field Tool System.Windows.Forms.TitleStyle
System.Windows.Forms.TitleStyle = {}
---@alias CS.System.Windows.Forms.TitleStyle System.Windows.Forms.TitleStyle
CS.System.Windows.Forms.TitleStyle = System.Windows.Forms.TitleStyle


---@class System.Windows.Forms.BITMAPINFOHEADER : System.ValueType
System.Windows.Forms.BITMAPINFOHEADER = {}
---@alias CS.System.Windows.Forms.BITMAPINFOHEADER System.Windows.Forms.BITMAPINFOHEADER
CS.System.Windows.Forms.BITMAPINFOHEADER = System.Windows.Forms.BITMAPINFOHEADER


---@class System.Windows.Forms.ClipboardFormats
---@field CF_TEXT System.Windows.Forms.ClipboardFormats
---@field CF_BITMAP System.Windows.Forms.ClipboardFormats
---@field CF_METAFILEPICT System.Windows.Forms.ClipboardFormats
---@field CF_SYLK System.Windows.Forms.ClipboardFormats
---@field CF_DIF System.Windows.Forms.ClipboardFormats
---@field CF_TIFF System.Windows.Forms.ClipboardFormats
---@field CF_OEMTEXT System.Windows.Forms.ClipboardFormats
---@field CF_DIB System.Windows.Forms.ClipboardFormats
---@field CF_PALETTE System.Windows.Forms.ClipboardFormats
---@field CF_PENDATA System.Windows.Forms.ClipboardFormats
---@field CF_RIFF System.Windows.Forms.ClipboardFormats
---@field CF_WAVE System.Windows.Forms.ClipboardFormats
---@field CF_UNICODETEXT System.Windows.Forms.ClipboardFormats
---@field CF_ENHMETAFILE System.Windows.Forms.ClipboardFormats
---@field CF_HDROP System.Windows.Forms.ClipboardFormats
---@field CF_LOCALE System.Windows.Forms.ClipboardFormats
---@field CF_DIBV5 System.Windows.Forms.ClipboardFormats
System.Windows.Forms.ClipboardFormats = {}
---@alias CS.System.Windows.Forms.ClipboardFormats System.Windows.Forms.ClipboardFormats
CS.System.Windows.Forms.ClipboardFormats = System.Windows.Forms.ClipboardFormats


---@class System.Windows.Forms.MINMAXINFO : System.ValueType
System.Windows.Forms.MINMAXINFO = {}
---@alias CS.System.Windows.Forms.MINMAXINFO System.Windows.Forms.MINMAXINFO
CS.System.Windows.Forms.MINMAXINFO = System.Windows.Forms.MINMAXINFO


---@class System.Windows.Forms.KeyFilterData : System.ValueType
System.Windows.Forms.KeyFilterData = {}
---@alias CS.System.Windows.Forms.KeyFilterData System.Windows.Forms.KeyFilterData
CS.System.Windows.Forms.KeyFilterData = System.Windows.Forms.KeyFilterData


---@class System.Windows.Forms.ScrollBarCommands
---@field SB_LINEUP System.Windows.Forms.ScrollBarCommands
---@field SB_LINELEFT System.Windows.Forms.ScrollBarCommands
---@field SB_LINEDOWN System.Windows.Forms.ScrollBarCommands
---@field SB_LINERIGHT System.Windows.Forms.ScrollBarCommands
---@field SB_PAGEUP System.Windows.Forms.ScrollBarCommands
---@field SB_PAGELEFT System.Windows.Forms.ScrollBarCommands
---@field SB_PAGEDOWN System.Windows.Forms.ScrollBarCommands
---@field SB_PAGERIGHT System.Windows.Forms.ScrollBarCommands
---@field SB_THUMBPOSITION System.Windows.Forms.ScrollBarCommands
---@field SB_THUMBTRACK System.Windows.Forms.ScrollBarCommands
---@field SB_TOP System.Windows.Forms.ScrollBarCommands
---@field SB_LEFT System.Windows.Forms.ScrollBarCommands
---@field SB_BOTTOM System.Windows.Forms.ScrollBarCommands
---@field SB_RIGHT System.Windows.Forms.ScrollBarCommands
---@field SB_ENDSCROLL System.Windows.Forms.ScrollBarCommands
System.Windows.Forms.ScrollBarCommands = {}
---@alias CS.System.Windows.Forms.ScrollBarCommands System.Windows.Forms.ScrollBarCommands
CS.System.Windows.Forms.ScrollBarCommands = System.Windows.Forms.ScrollBarCommands


---@class System.Windows.Forms.ClipCombineMode
---@field RGN_AND System.Windows.Forms.ClipCombineMode
---@field RGN_OR System.Windows.Forms.ClipCombineMode
---@field RGN_XOR System.Windows.Forms.ClipCombineMode
---@field RGN_DIFF System.Windows.Forms.ClipCombineMode
---@field RGN_COPY System.Windows.Forms.ClipCombineMode
---@field RGN_MIN System.Windows.Forms.ClipCombineMode
---@field RGN_MAX System.Windows.Forms.ClipCombineMode
System.Windows.Forms.ClipCombineMode = {}
---@alias CS.System.Windows.Forms.ClipCombineMode System.Windows.Forms.ClipCombineMode
CS.System.Windows.Forms.ClipCombineMode = System.Windows.Forms.ClipCombineMode


---@class System.Windows.Forms.SystemCommands
---@field SC_SIZE System.Windows.Forms.SystemCommands
---@field SC_MOVE System.Windows.Forms.SystemCommands
---@field SC_MINIMIZE System.Windows.Forms.SystemCommands
---@field SC_MAXIMIZE System.Windows.Forms.SystemCommands
---@field SC_NEXTWINDOW System.Windows.Forms.SystemCommands
---@field SC_PREVWINDOW System.Windows.Forms.SystemCommands
---@field SC_CLOSE System.Windows.Forms.SystemCommands
---@field SC_VSCROLL System.Windows.Forms.SystemCommands
---@field SC_HSCROLL System.Windows.Forms.SystemCommands
---@field SC_MOUSEMENU System.Windows.Forms.SystemCommands
---@field SC_KEYMENU System.Windows.Forms.SystemCommands
---@field SC_ARRANGE System.Windows.Forms.SystemCommands
---@field SC_RESTORE System.Windows.Forms.SystemCommands
---@field SC_TASKLIST System.Windows.Forms.SystemCommands
---@field SC_SCREENSAVE System.Windows.Forms.SystemCommands
---@field SC_HOTKEY System.Windows.Forms.SystemCommands
---@field SC_DEFAULT System.Windows.Forms.SystemCommands
---@field SC_MONITORPOWER System.Windows.Forms.SystemCommands
---@field SC_CONTEXTHELP System.Windows.Forms.SystemCommands
System.Windows.Forms.SystemCommands = {}
---@alias CS.System.Windows.Forms.SystemCommands System.Windows.Forms.SystemCommands
CS.System.Windows.Forms.SystemCommands = System.Windows.Forms.SystemCommands


---@class System.Windows.Forms.AlertType
---@field Default System.Windows.Forms.AlertType
---@field Error System.Windows.Forms.AlertType
---@field Question System.Windows.Forms.AlertType
---@field Warning System.Windows.Forms.AlertType
---@field Information System.Windows.Forms.AlertType
System.Windows.Forms.AlertType = {}
---@alias CS.System.Windows.Forms.AlertType System.Windows.Forms.AlertType
CS.System.Windows.Forms.AlertType = System.Windows.Forms.AlertType


---@class System.Windows.Forms.MonoPInvokeCallbackAttribute : System.Attribute
System.Windows.Forms.MonoPInvokeCallbackAttribute = {}
---@alias CS.System.Windows.Forms.MonoPInvokeCallbackAttribute System.Windows.Forms.MonoPInvokeCallbackAttribute
CS.System.Windows.Forms.MonoPInvokeCallbackAttribute = System.Windows.Forms.MonoPInvokeCallbackAttribute

---@param t System.Type
---@return System.Windows.Forms.MonoPInvokeCallbackAttribute
function System.Windows.Forms.MonoPInvokeCallbackAttribute.New(t) end

---@class System.Windows.Forms.XplatUIWin32 : System.Windows.Forms.XplatUIDriver
---@field MenuButtonSize System.Drawing.Size
---@field ToolWindowCaptionHeight number
---@field ToolWindowCaptionButtonSize System.Drawing.Size
---@field Reference number
System.Windows.Forms.XplatUIWin32 = {}
---@alias CS.System.Windows.Forms.XplatUIWin32 System.Windows.Forms.XplatUIWin32
CS.System.Windows.Forms.XplatUIWin32 = System.Windows.Forms.XplatUIWin32

---@return System.Windows.Forms.XplatUIWin32
function System.Windows.Forms.XplatUIWin32.GetInstance() end
---@param o System.IntPtr
---@return boolean
function System.Windows.Forms.XplatUIWin32.Win32DeleteObject(o) end

---@class System.Windows.Forms.XplatUIWin32.WNDCLASS : System.ValueType
System.Windows.Forms.XplatUIWin32.WNDCLASS = {}
---@alias CS.System.Windows.Forms.XplatUIWin32.WNDCLASS System.Windows.Forms.XplatUIWin32.WNDCLASS
CS.System.Windows.Forms.XplatUIWin32.WNDCLASS = System.Windows.Forms.XplatUIWin32.WNDCLASS


---@class System.Windows.Forms.XplatUIWin32.RECT : System.ValueType
---@field Height number
---@field Width number
---@field Size System.Drawing.Size
---@field Location System.Drawing.Point
System.Windows.Forms.XplatUIWin32.RECT = {}
---@alias CS.System.Windows.Forms.XplatUIWin32.RECT System.Windows.Forms.XplatUIWin32.RECT
CS.System.Windows.Forms.XplatUIWin32.RECT = System.Windows.Forms.XplatUIWin32.RECT

---@param left number
---@param top number
---@param right number
---@param bottom number
---@return System.Windows.Forms.XplatUIWin32.RECT
function System.Windows.Forms.XplatUIWin32.RECT.New(left, top, right, bottom) end
---@param rectangle System.Drawing.Rectangle
---@return System.Windows.Forms.XplatUIWin32.RECT
function System.Windows.Forms.XplatUIWin32.RECT.FromRectangle(rectangle) end
---@return System.Drawing.Rectangle
function System.Windows.Forms.XplatUIWin32.RECT:ToRectangle() end
---@return number
function System.Windows.Forms.XplatUIWin32.RECT:GetHashCode() end
---@return string
function System.Windows.Forms.XplatUIWin32.RECT:ToString() end

---@class System.Windows.Forms.XplatUIWin32.SPIAction
---@field SPI_GETACTIVEWINDOWTRACKING System.Windows.Forms.XplatUIWin32.SPIAction
---@field SPI_GETACTIVEWNDTRKTIMEOUT System.Windows.Forms.XplatUIWin32.SPIAction
---@field SPI_GETANIMATION System.Windows.Forms.XplatUIWin32.SPIAction
---@field SPI_GETCARETWIDTH System.Windows.Forms.XplatUIWin32.SPIAction
---@field SPI_GETCOMBOBOXANIMATION System.Windows.Forms.XplatUIWin32.SPIAction
---@field SPI_GETDRAGFULLWINDOWS System.Windows.Forms.XplatUIWin32.SPIAction
---@field SPI_GETDROPSHADOW System.Windows.Forms.XplatUIWin32.SPIAction
---@field SPI_GETFONTSMOOTHING System.Windows.Forms.XplatUIWin32.SPIAction
---@field SPI_GETFONTSMOOTHINGCONTRAST System.Windows.Forms.XplatUIWin32.SPIAction
---@field SPI_GETFONTSMOOTHINGTYPE System.Windows.Forms.XplatUIWin32.SPIAction
---@field SPI_GETGRADIENTCAPTIONS System.Windows.Forms.XplatUIWin32.SPIAction
---@field SPI_GETHOTTRACKING System.Windows.Forms.XplatUIWin32.SPIAction
---@field SPI_GETICONTITLEWRAP System.Windows.Forms.XplatUIWin32.SPIAction
---@field SPI_GETKEYBOARDSPEED System.Windows.Forms.XplatUIWin32.SPIAction
---@field SPI_GETKEYBOARDDELAY System.Windows.Forms.XplatUIWin32.SPIAction
---@field SPI_GETKEYBOARDCUES System.Windows.Forms.XplatUIWin32.SPIAction
---@field SPI_GETKEYBOARDPREF System.Windows.Forms.XplatUIWin32.SPIAction
---@field SPI_GETLISTBOXSMOOTHSCROLLING System.Windows.Forms.XplatUIWin32.SPIAction
---@field SPI_GETMENUANIMATION System.Windows.Forms.XplatUIWin32.SPIAction
---@field SPI_GETMENUDROPALIGNMENT System.Windows.Forms.XplatUIWin32.SPIAction
---@field SPI_GETMENUFADE System.Windows.Forms.XplatUIWin32.SPIAction
---@field SPI_GETMENUSHOWDELAY System.Windows.Forms.XplatUIWin32.SPIAction
---@field SPI_GETMOUSESPEED System.Windows.Forms.XplatUIWin32.SPIAction
---@field SPI_GETSELECTIONFADE System.Windows.Forms.XplatUIWin32.SPIAction
---@field SPI_GETSNAPTODEFBUTTON System.Windows.Forms.XplatUIWin32.SPIAction
---@field SPI_GETTOOLTIPANIMATION System.Windows.Forms.XplatUIWin32.SPIAction
---@field SPI_GETWORKAREA System.Windows.Forms.XplatUIWin32.SPIAction
---@field SPI_GETMOUSEHOVERWIDTH System.Windows.Forms.XplatUIWin32.SPIAction
---@field SPI_GETMOUSEHOVERHEIGHT System.Windows.Forms.XplatUIWin32.SPIAction
---@field SPI_GETMOUSEHOVERTIME System.Windows.Forms.XplatUIWin32.SPIAction
---@field SPI_GETUIEFFECTS System.Windows.Forms.XplatUIWin32.SPIAction
---@field SPI_GETWHEELSCROLLLINES System.Windows.Forms.XplatUIWin32.SPIAction
System.Windows.Forms.XplatUIWin32.SPIAction = {}
---@alias CS.System.Windows.Forms.XplatUIWin32.SPIAction System.Windows.Forms.XplatUIWin32.SPIAction
CS.System.Windows.Forms.XplatUIWin32.SPIAction = System.Windows.Forms.XplatUIWin32.SPIAction


---@class System.Windows.Forms.XplatUIWin32.WindowPlacementFlags
---@field SW_HIDE System.Windows.Forms.XplatUIWin32.WindowPlacementFlags
---@field SW_SHOWNORMAL System.Windows.Forms.XplatUIWin32.WindowPlacementFlags
---@field SW_NORMAL System.Windows.Forms.XplatUIWin32.WindowPlacementFlags
---@field SW_SHOWMINIMIZED System.Windows.Forms.XplatUIWin32.WindowPlacementFlags
---@field SW_SHOWMAXIMIZED System.Windows.Forms.XplatUIWin32.WindowPlacementFlags
---@field SW_MAXIMIZE System.Windows.Forms.XplatUIWin32.WindowPlacementFlags
---@field SW_SHOWNOACTIVATE System.Windows.Forms.XplatUIWin32.WindowPlacementFlags
---@field SW_SHOW System.Windows.Forms.XplatUIWin32.WindowPlacementFlags
---@field SW_MINIMIZE System.Windows.Forms.XplatUIWin32.WindowPlacementFlags
---@field SW_SHOWMINNOACTIVE System.Windows.Forms.XplatUIWin32.WindowPlacementFlags
---@field SW_SHOWNA System.Windows.Forms.XplatUIWin32.WindowPlacementFlags
---@field SW_RESTORE System.Windows.Forms.XplatUIWin32.WindowPlacementFlags
---@field SW_SHOWDEFAULT System.Windows.Forms.XplatUIWin32.WindowPlacementFlags
---@field SW_FORCEMINIMIZE System.Windows.Forms.XplatUIWin32.WindowPlacementFlags
---@field SW_MAX System.Windows.Forms.XplatUIWin32.WindowPlacementFlags
System.Windows.Forms.XplatUIWin32.WindowPlacementFlags = {}
---@alias CS.System.Windows.Forms.XplatUIWin32.WindowPlacementFlags System.Windows.Forms.XplatUIWin32.WindowPlacementFlags
CS.System.Windows.Forms.XplatUIWin32.WindowPlacementFlags = System.Windows.Forms.XplatUIWin32.WindowPlacementFlags


---@class System.Windows.Forms.XplatUIWin32.WINDOWPLACEMENT : System.ValueType
System.Windows.Forms.XplatUIWin32.WINDOWPLACEMENT = {}
---@alias CS.System.Windows.Forms.XplatUIWin32.WINDOWPLACEMENT System.Windows.Forms.XplatUIWin32.WINDOWPLACEMENT
CS.System.Windows.Forms.XplatUIWin32.WINDOWPLACEMENT = System.Windows.Forms.XplatUIWin32.WINDOWPLACEMENT


---@class System.Windows.Forms.XplatUIWin32.NCCALCSIZE_PARAMS : System.ValueType
System.Windows.Forms.XplatUIWin32.NCCALCSIZE_PARAMS = {}
---@alias CS.System.Windows.Forms.XplatUIWin32.NCCALCSIZE_PARAMS System.Windows.Forms.XplatUIWin32.NCCALCSIZE_PARAMS
CS.System.Windows.Forms.XplatUIWin32.NCCALCSIZE_PARAMS = System.Windows.Forms.XplatUIWin32.NCCALCSIZE_PARAMS


---@class System.Windows.Forms.XplatUIWin32.TMEFlags
---@field TME_HOVER System.Windows.Forms.XplatUIWin32.TMEFlags
---@field TME_LEAVE System.Windows.Forms.XplatUIWin32.TMEFlags
---@field TME_NONCLIENT System.Windows.Forms.XplatUIWin32.TMEFlags
---@field TME_QUERY System.Windows.Forms.XplatUIWin32.TMEFlags
---@field TME_CANCEL System.Windows.Forms.XplatUIWin32.TMEFlags
System.Windows.Forms.XplatUIWin32.TMEFlags = {}
---@alias CS.System.Windows.Forms.XplatUIWin32.TMEFlags System.Windows.Forms.XplatUIWin32.TMEFlags
CS.System.Windows.Forms.XplatUIWin32.TMEFlags = System.Windows.Forms.XplatUIWin32.TMEFlags


---@class System.Windows.Forms.XplatUIWin32.TRACKMOUSEEVENT : System.ValueType
System.Windows.Forms.XplatUIWin32.TRACKMOUSEEVENT = {}
---@alias CS.System.Windows.Forms.XplatUIWin32.TRACKMOUSEEVENT System.Windows.Forms.XplatUIWin32.TRACKMOUSEEVENT
CS.System.Windows.Forms.XplatUIWin32.TRACKMOUSEEVENT = System.Windows.Forms.XplatUIWin32.TRACKMOUSEEVENT


---@class System.Windows.Forms.XplatUIWin32.PAINTSTRUCT : System.ValueType
System.Windows.Forms.XplatUIWin32.PAINTSTRUCT = {}
---@alias CS.System.Windows.Forms.XplatUIWin32.PAINTSTRUCT System.Windows.Forms.XplatUIWin32.PAINTSTRUCT
CS.System.Windows.Forms.XplatUIWin32.PAINTSTRUCT = System.Windows.Forms.XplatUIWin32.PAINTSTRUCT


---@class System.Windows.Forms.XplatUIWin32.KEYBDINPUT : System.ValueType
System.Windows.Forms.XplatUIWin32.KEYBDINPUT = {}
---@alias CS.System.Windows.Forms.XplatUIWin32.KEYBDINPUT System.Windows.Forms.XplatUIWin32.KEYBDINPUT
CS.System.Windows.Forms.XplatUIWin32.KEYBDINPUT = System.Windows.Forms.XplatUIWin32.KEYBDINPUT


---@class System.Windows.Forms.XplatUIWin32.MOUSEINPUT : System.ValueType
System.Windows.Forms.XplatUIWin32.MOUSEINPUT = {}
---@alias CS.System.Windows.Forms.XplatUIWin32.MOUSEINPUT System.Windows.Forms.XplatUIWin32.MOUSEINPUT
CS.System.Windows.Forms.XplatUIWin32.MOUSEINPUT = System.Windows.Forms.XplatUIWin32.MOUSEINPUT


---@class System.Windows.Forms.XplatUIWin32.HARDWAREINPUT : System.ValueType
System.Windows.Forms.XplatUIWin32.HARDWAREINPUT = {}
---@alias CS.System.Windows.Forms.XplatUIWin32.HARDWAREINPUT System.Windows.Forms.XplatUIWin32.HARDWAREINPUT
CS.System.Windows.Forms.XplatUIWin32.HARDWAREINPUT = System.Windows.Forms.XplatUIWin32.HARDWAREINPUT


---@class System.Windows.Forms.XplatUIWin32.ICONINFO : System.ValueType
System.Windows.Forms.XplatUIWin32.ICONINFO = {}
---@alias CS.System.Windows.Forms.XplatUIWin32.ICONINFO System.Windows.Forms.XplatUIWin32.ICONINFO
CS.System.Windows.Forms.XplatUIWin32.ICONINFO = System.Windows.Forms.XplatUIWin32.ICONINFO


---@class System.Windows.Forms.XplatUIWin32.InputUnion : System.ValueType
System.Windows.Forms.XplatUIWin32.InputUnion = {}
---@alias CS.System.Windows.Forms.XplatUIWin32.InputUnion System.Windows.Forms.XplatUIWin32.InputUnion
CS.System.Windows.Forms.XplatUIWin32.InputUnion = System.Windows.Forms.XplatUIWin32.InputUnion


---@class System.Windows.Forms.XplatUIWin32.INPUT : System.ValueType
System.Windows.Forms.XplatUIWin32.INPUT = {}
---@alias CS.System.Windows.Forms.XplatUIWin32.INPUT System.Windows.Forms.XplatUIWin32.INPUT
CS.System.Windows.Forms.XplatUIWin32.INPUT = System.Windows.Forms.XplatUIWin32.INPUT


---@class System.Windows.Forms.XplatUIWin32.ANIMATIONINFO : System.ValueType
System.Windows.Forms.XplatUIWin32.ANIMATIONINFO = {}
---@alias CS.System.Windows.Forms.XplatUIWin32.ANIMATIONINFO System.Windows.Forms.XplatUIWin32.ANIMATIONINFO
CS.System.Windows.Forms.XplatUIWin32.ANIMATIONINFO = System.Windows.Forms.XplatUIWin32.ANIMATIONINFO


---@class System.Windows.Forms.XplatUIWin32.InputFlags
---@field KEYEVENTF_EXTENDEDKEY System.Windows.Forms.XplatUIWin32.InputFlags
---@field KEYEVENTF_KEYUP System.Windows.Forms.XplatUIWin32.InputFlags
---@field KEYEVENTF_SCANCODE System.Windows.Forms.XplatUIWin32.InputFlags
---@field KEYEVENTF_UNICODE System.Windows.Forms.XplatUIWin32.InputFlags
System.Windows.Forms.XplatUIWin32.InputFlags = {}
---@alias CS.System.Windows.Forms.XplatUIWin32.InputFlags System.Windows.Forms.XplatUIWin32.InputFlags
CS.System.Windows.Forms.XplatUIWin32.InputFlags = System.Windows.Forms.XplatUIWin32.InputFlags


---@class System.Windows.Forms.XplatUIWin32.ClassStyle
---@field CS_VREDRAW System.Windows.Forms.XplatUIWin32.ClassStyle
---@field CS_HREDRAW System.Windows.Forms.XplatUIWin32.ClassStyle
---@field CS_KEYCVTWINDOW System.Windows.Forms.XplatUIWin32.ClassStyle
---@field CS_DBLCLKS System.Windows.Forms.XplatUIWin32.ClassStyle
---@field CS_OWNDC System.Windows.Forms.XplatUIWin32.ClassStyle
---@field CS_CLASSDC System.Windows.Forms.XplatUIWin32.ClassStyle
---@field CS_PARENTDC System.Windows.Forms.XplatUIWin32.ClassStyle
---@field CS_NOKEYCVT System.Windows.Forms.XplatUIWin32.ClassStyle
---@field CS_NOCLOSE System.Windows.Forms.XplatUIWin32.ClassStyle
---@field CS_SAVEBITS System.Windows.Forms.XplatUIWin32.ClassStyle
---@field CS_BYTEALIGNCLIENT System.Windows.Forms.XplatUIWin32.ClassStyle
---@field CS_BYTEALIGNWINDOW System.Windows.Forms.XplatUIWin32.ClassStyle
---@field CS_GLOBALCLASS System.Windows.Forms.XplatUIWin32.ClassStyle
---@field CS_IME System.Windows.Forms.XplatUIWin32.ClassStyle
---@field CS_DROPSHADOW System.Windows.Forms.XplatUIWin32.ClassStyle
System.Windows.Forms.XplatUIWin32.ClassStyle = {}
---@alias CS.System.Windows.Forms.XplatUIWin32.ClassStyle System.Windows.Forms.XplatUIWin32.ClassStyle
CS.System.Windows.Forms.XplatUIWin32.ClassStyle = System.Windows.Forms.XplatUIWin32.ClassStyle


---@class System.Windows.Forms.XplatUIWin32.SetWindowPosZOrder
---@field HWND_TOP System.Windows.Forms.XplatUIWin32.SetWindowPosZOrder
---@field HWND_BOTTOM System.Windows.Forms.XplatUIWin32.SetWindowPosZOrder
---@field HWND_TOPMOST System.Windows.Forms.XplatUIWin32.SetWindowPosZOrder
---@field HWND_NOTOPMOST System.Windows.Forms.XplatUIWin32.SetWindowPosZOrder
System.Windows.Forms.XplatUIWin32.SetWindowPosZOrder = {}
---@alias CS.System.Windows.Forms.XplatUIWin32.SetWindowPosZOrder System.Windows.Forms.XplatUIWin32.SetWindowPosZOrder
CS.System.Windows.Forms.XplatUIWin32.SetWindowPosZOrder = System.Windows.Forms.XplatUIWin32.SetWindowPosZOrder


---@class System.Windows.Forms.XplatUIWin32.SetWindowPosFlags
---@field SWP_ASYNCWINDOWPOS System.Windows.Forms.XplatUIWin32.SetWindowPosFlags
---@field SWP_DEFERERASE System.Windows.Forms.XplatUIWin32.SetWindowPosFlags
---@field SWP_DRAWFRAME System.Windows.Forms.XplatUIWin32.SetWindowPosFlags
---@field SWP_FRAMECHANGED System.Windows.Forms.XplatUIWin32.SetWindowPosFlags
---@field SWP_HIDEWINDOW System.Windows.Forms.XplatUIWin32.SetWindowPosFlags
---@field SWP_NOACTIVATE System.Windows.Forms.XplatUIWin32.SetWindowPosFlags
---@field SWP_NOCOPYBITS System.Windows.Forms.XplatUIWin32.SetWindowPosFlags
---@field SWP_NOMOVE System.Windows.Forms.XplatUIWin32.SetWindowPosFlags
---@field SWP_NOOWNERZORDER System.Windows.Forms.XplatUIWin32.SetWindowPosFlags
---@field SWP_NOREDRAW System.Windows.Forms.XplatUIWin32.SetWindowPosFlags
---@field SWP_NOREPOSITION System.Windows.Forms.XplatUIWin32.SetWindowPosFlags
---@field SWP_NOENDSCHANGING System.Windows.Forms.XplatUIWin32.SetWindowPosFlags
---@field SWP_NOSIZE System.Windows.Forms.XplatUIWin32.SetWindowPosFlags
---@field SWP_NOZORDER System.Windows.Forms.XplatUIWin32.SetWindowPosFlags
---@field SWP_SHOWWINDOW System.Windows.Forms.XplatUIWin32.SetWindowPosFlags
System.Windows.Forms.XplatUIWin32.SetWindowPosFlags = {}
---@alias CS.System.Windows.Forms.XplatUIWin32.SetWindowPosFlags System.Windows.Forms.XplatUIWin32.SetWindowPosFlags
CS.System.Windows.Forms.XplatUIWin32.SetWindowPosFlags = System.Windows.Forms.XplatUIWin32.SetWindowPosFlags


---@class System.Windows.Forms.XplatUIWin32.GetSysColorIndex
---@field COLOR_SCROLLBAR System.Windows.Forms.XplatUIWin32.GetSysColorIndex
---@field COLOR_BACKGROUND System.Windows.Forms.XplatUIWin32.GetSysColorIndex
---@field COLOR_ACTIVECAPTION System.Windows.Forms.XplatUIWin32.GetSysColorIndex
---@field COLOR_INACTIVECAPTION System.Windows.Forms.XplatUIWin32.GetSysColorIndex
---@field COLOR_MENU System.Windows.Forms.XplatUIWin32.GetSysColorIndex
---@field COLOR_WINDOW System.Windows.Forms.XplatUIWin32.GetSysColorIndex
---@field COLOR_WINDOWFRAME System.Windows.Forms.XplatUIWin32.GetSysColorIndex
---@field COLOR_MENUTEXT System.Windows.Forms.XplatUIWin32.GetSysColorIndex
---@field COLOR_WINDOWTEXT System.Windows.Forms.XplatUIWin32.GetSysColorIndex
---@field COLOR_CAPTIONTEXT System.Windows.Forms.XplatUIWin32.GetSysColorIndex
---@field COLOR_ACTIVEBORDER System.Windows.Forms.XplatUIWin32.GetSysColorIndex
---@field COLOR_INACTIVEBORDER System.Windows.Forms.XplatUIWin32.GetSysColorIndex
---@field COLOR_APPWORKSPACE System.Windows.Forms.XplatUIWin32.GetSysColorIndex
---@field COLOR_HIGHLIGHT System.Windows.Forms.XplatUIWin32.GetSysColorIndex
---@field COLOR_HIGHLIGHTTEXT System.Windows.Forms.XplatUIWin32.GetSysColorIndex
---@field COLOR_BTNFACE System.Windows.Forms.XplatUIWin32.GetSysColorIndex
---@field COLOR_BTNSHADOW System.Windows.Forms.XplatUIWin32.GetSysColorIndex
---@field COLOR_GRAYTEXT System.Windows.Forms.XplatUIWin32.GetSysColorIndex
---@field COLOR_BTNTEXT System.Windows.Forms.XplatUIWin32.GetSysColorIndex
---@field COLOR_INACTIVECAPTIONTEXT System.Windows.Forms.XplatUIWin32.GetSysColorIndex
---@field COLOR_BTNHIGHLIGHT System.Windows.Forms.XplatUIWin32.GetSysColorIndex
---@field COLOR_3DDKSHADOW System.Windows.Forms.XplatUIWin32.GetSysColorIndex
---@field COLOR_3DLIGHT System.Windows.Forms.XplatUIWin32.GetSysColorIndex
---@field COLOR_INFOTEXT System.Windows.Forms.XplatUIWin32.GetSysColorIndex
---@field COLOR_INFOBK System.Windows.Forms.XplatUIWin32.GetSysColorIndex
---@field COLOR_HOTLIGHT System.Windows.Forms.XplatUIWin32.GetSysColorIndex
---@field COLOR_GRADIENTACTIVECAPTION System.Windows.Forms.XplatUIWin32.GetSysColorIndex
---@field COLOR_GRADIENTINACTIVECAPTION System.Windows.Forms.XplatUIWin32.GetSysColorIndex
---@field COLOR_MENUHIGHLIGHT System.Windows.Forms.XplatUIWin32.GetSysColorIndex
---@field COLOR_MENUBAR System.Windows.Forms.XplatUIWin32.GetSysColorIndex
---@field COLOR_DESKTOP System.Windows.Forms.XplatUIWin32.GetSysColorIndex
---@field COLOR_3DFACE System.Windows.Forms.XplatUIWin32.GetSysColorIndex
---@field COLOR_3DSHADOW System.Windows.Forms.XplatUIWin32.GetSysColorIndex
---@field COLOR_3DHIGHLIGHT System.Windows.Forms.XplatUIWin32.GetSysColorIndex
---@field COLOR_3DHILIGHT System.Windows.Forms.XplatUIWin32.GetSysColorIndex
---@field COLOR_BTNHILIGHT System.Windows.Forms.XplatUIWin32.GetSysColorIndex
---@field COLOR_MAXVALUE System.Windows.Forms.XplatUIWin32.GetSysColorIndex
System.Windows.Forms.XplatUIWin32.GetSysColorIndex = {}
---@alias CS.System.Windows.Forms.XplatUIWin32.GetSysColorIndex System.Windows.Forms.XplatUIWin32.GetSysColorIndex
CS.System.Windows.Forms.XplatUIWin32.GetSysColorIndex = System.Windows.Forms.XplatUIWin32.GetSysColorIndex


---@class System.Windows.Forms.XplatUIWin32.LoadCursorType
---@field First System.Windows.Forms.XplatUIWin32.LoadCursorType
---@field IDC_ARROW System.Windows.Forms.XplatUIWin32.LoadCursorType
---@field IDC_IBEAM System.Windows.Forms.XplatUIWin32.LoadCursorType
---@field IDC_WAIT System.Windows.Forms.XplatUIWin32.LoadCursorType
---@field IDC_CROSS System.Windows.Forms.XplatUIWin32.LoadCursorType
---@field IDC_UPARROW System.Windows.Forms.XplatUIWin32.LoadCursorType
---@field IDC_SIZE System.Windows.Forms.XplatUIWin32.LoadCursorType
---@field IDC_ICON System.Windows.Forms.XplatUIWin32.LoadCursorType
---@field IDC_SIZENWSE System.Windows.Forms.XplatUIWin32.LoadCursorType
---@field IDC_SIZENESW System.Windows.Forms.XplatUIWin32.LoadCursorType
---@field IDC_SIZEWE System.Windows.Forms.XplatUIWin32.LoadCursorType
---@field IDC_SIZENS System.Windows.Forms.XplatUIWin32.LoadCursorType
---@field IDC_SIZEALL System.Windows.Forms.XplatUIWin32.LoadCursorType
---@field IDC_NO System.Windows.Forms.XplatUIWin32.LoadCursorType
---@field IDC_HAND System.Windows.Forms.XplatUIWin32.LoadCursorType
---@field IDC_APPSTARTING System.Windows.Forms.XplatUIWin32.LoadCursorType
---@field IDC_HELP System.Windows.Forms.XplatUIWin32.LoadCursorType
---@field Last System.Windows.Forms.XplatUIWin32.LoadCursorType
System.Windows.Forms.XplatUIWin32.LoadCursorType = {}
---@alias CS.System.Windows.Forms.XplatUIWin32.LoadCursorType System.Windows.Forms.XplatUIWin32.LoadCursorType
CS.System.Windows.Forms.XplatUIWin32.LoadCursorType = System.Windows.Forms.XplatUIWin32.LoadCursorType


---@class System.Windows.Forms.XplatUIWin32.AncestorType
---@field GA_PARENT System.Windows.Forms.XplatUIWin32.AncestorType
---@field GA_ROOT System.Windows.Forms.XplatUIWin32.AncestorType
---@field GA_ROOTOWNER System.Windows.Forms.XplatUIWin32.AncestorType
System.Windows.Forms.XplatUIWin32.AncestorType = {}
---@alias CS.System.Windows.Forms.XplatUIWin32.AncestorType System.Windows.Forms.XplatUIWin32.AncestorType
CS.System.Windows.Forms.XplatUIWin32.AncestorType = System.Windows.Forms.XplatUIWin32.AncestorType


---@class System.Windows.Forms.XplatUIWin32.WindowLong
---@field GWL_WNDPROC System.Windows.Forms.XplatUIWin32.WindowLong
---@field GWL_HINSTANCE System.Windows.Forms.XplatUIWin32.WindowLong
---@field GWL_HWNDPARENT System.Windows.Forms.XplatUIWin32.WindowLong
---@field GWL_STYLE System.Windows.Forms.XplatUIWin32.WindowLong
---@field GWL_EXSTYLE System.Windows.Forms.XplatUIWin32.WindowLong
---@field GWL_USERDATA System.Windows.Forms.XplatUIWin32.WindowLong
---@field GWL_ID System.Windows.Forms.XplatUIWin32.WindowLong
System.Windows.Forms.XplatUIWin32.WindowLong = {}
---@alias CS.System.Windows.Forms.XplatUIWin32.WindowLong System.Windows.Forms.XplatUIWin32.WindowLong
CS.System.Windows.Forms.XplatUIWin32.WindowLong = System.Windows.Forms.XplatUIWin32.WindowLong


---@class System.Windows.Forms.XplatUIWin32.LogBrushStyle
---@field BS_SOLID System.Windows.Forms.XplatUIWin32.LogBrushStyle
---@field BS_NULL System.Windows.Forms.XplatUIWin32.LogBrushStyle
---@field BS_HATCHED System.Windows.Forms.XplatUIWin32.LogBrushStyle
---@field BS_PATTERN System.Windows.Forms.XplatUIWin32.LogBrushStyle
---@field BS_INDEXED System.Windows.Forms.XplatUIWin32.LogBrushStyle
---@field BS_DIBPATTERN System.Windows.Forms.XplatUIWin32.LogBrushStyle
---@field BS_DIBPATTERNPT System.Windows.Forms.XplatUIWin32.LogBrushStyle
---@field BS_PATTERN8X8 System.Windows.Forms.XplatUIWin32.LogBrushStyle
---@field BS_DIBPATTERN8X8 System.Windows.Forms.XplatUIWin32.LogBrushStyle
---@field BS_MONOPATTERN System.Windows.Forms.XplatUIWin32.LogBrushStyle
System.Windows.Forms.XplatUIWin32.LogBrushStyle = {}
---@alias CS.System.Windows.Forms.XplatUIWin32.LogBrushStyle System.Windows.Forms.XplatUIWin32.LogBrushStyle
CS.System.Windows.Forms.XplatUIWin32.LogBrushStyle = System.Windows.Forms.XplatUIWin32.LogBrushStyle


---@class System.Windows.Forms.XplatUIWin32.LogBrushHatch
---@field HS_HORIZONTAL System.Windows.Forms.XplatUIWin32.LogBrushHatch
---@field HS_VERTICAL System.Windows.Forms.XplatUIWin32.LogBrushHatch
---@field HS_FDIAGONAL System.Windows.Forms.XplatUIWin32.LogBrushHatch
---@field HS_BDIAGONAL System.Windows.Forms.XplatUIWin32.LogBrushHatch
---@field HS_CROSS System.Windows.Forms.XplatUIWin32.LogBrushHatch
---@field HS_DIAGCROSS System.Windows.Forms.XplatUIWin32.LogBrushHatch
System.Windows.Forms.XplatUIWin32.LogBrushHatch = {}
---@alias CS.System.Windows.Forms.XplatUIWin32.LogBrushHatch System.Windows.Forms.XplatUIWin32.LogBrushHatch
CS.System.Windows.Forms.XplatUIWin32.LogBrushHatch = System.Windows.Forms.XplatUIWin32.LogBrushHatch


---@class System.Windows.Forms.XplatUIWin32.COLORREF : System.ValueType
System.Windows.Forms.XplatUIWin32.COLORREF = {}
---@alias CS.System.Windows.Forms.XplatUIWin32.COLORREF System.Windows.Forms.XplatUIWin32.COLORREF
CS.System.Windows.Forms.XplatUIWin32.COLORREF = System.Windows.Forms.XplatUIWin32.COLORREF


---@class System.Windows.Forms.XplatUIWin32.LOGBRUSH : System.ValueType
System.Windows.Forms.XplatUIWin32.LOGBRUSH = {}
---@alias CS.System.Windows.Forms.XplatUIWin32.LOGBRUSH System.Windows.Forms.XplatUIWin32.LOGBRUSH
CS.System.Windows.Forms.XplatUIWin32.LOGBRUSH = System.Windows.Forms.XplatUIWin32.LOGBRUSH


---@class System.Windows.Forms.XplatUIWin32.TEXTMETRIC : System.ValueType
System.Windows.Forms.XplatUIWin32.TEXTMETRIC = {}
---@alias CS.System.Windows.Forms.XplatUIWin32.TEXTMETRIC System.Windows.Forms.XplatUIWin32.TEXTMETRIC
CS.System.Windows.Forms.XplatUIWin32.TEXTMETRIC = System.Windows.Forms.XplatUIWin32.TEXTMETRIC


---@class System.Windows.Forms.XplatUIWin32.TernaryRasterOperations
---@field SRCCOPY System.Windows.Forms.XplatUIWin32.TernaryRasterOperations
---@field SRCPAINT System.Windows.Forms.XplatUIWin32.TernaryRasterOperations
---@field SRCAND System.Windows.Forms.XplatUIWin32.TernaryRasterOperations
---@field SRCINVERT System.Windows.Forms.XplatUIWin32.TernaryRasterOperations
---@field SRCERASE System.Windows.Forms.XplatUIWin32.TernaryRasterOperations
---@field NOTSRCCOPY System.Windows.Forms.XplatUIWin32.TernaryRasterOperations
---@field NOTSRCERASE System.Windows.Forms.XplatUIWin32.TernaryRasterOperations
---@field MERGECOPY System.Windows.Forms.XplatUIWin32.TernaryRasterOperations
---@field MERGEPAINT System.Windows.Forms.XplatUIWin32.TernaryRasterOperations
---@field PATCOPY System.Windows.Forms.XplatUIWin32.TernaryRasterOperations
---@field PATPAINT System.Windows.Forms.XplatUIWin32.TernaryRasterOperations
---@field PATINVERT System.Windows.Forms.XplatUIWin32.TernaryRasterOperations
---@field DSTINVERT System.Windows.Forms.XplatUIWin32.TernaryRasterOperations
---@field BLACKNESS System.Windows.Forms.XplatUIWin32.TernaryRasterOperations
---@field WHITENESS System.Windows.Forms.XplatUIWin32.TernaryRasterOperations
System.Windows.Forms.XplatUIWin32.TernaryRasterOperations = {}
---@alias CS.System.Windows.Forms.XplatUIWin32.TernaryRasterOperations System.Windows.Forms.XplatUIWin32.TernaryRasterOperations
CS.System.Windows.Forms.XplatUIWin32.TernaryRasterOperations = System.Windows.Forms.XplatUIWin32.TernaryRasterOperations


---@class System.Windows.Forms.XplatUIWin32.ScrollWindowExFlags
---@field SW_NONE System.Windows.Forms.XplatUIWin32.ScrollWindowExFlags
---@field SW_SCROLLCHILDREN System.Windows.Forms.XplatUIWin32.ScrollWindowExFlags
---@field SW_INVALIDATE System.Windows.Forms.XplatUIWin32.ScrollWindowExFlags
---@field SW_ERASE System.Windows.Forms.XplatUIWin32.ScrollWindowExFlags
---@field SW_SMOOTHSCROLL System.Windows.Forms.XplatUIWin32.ScrollWindowExFlags
System.Windows.Forms.XplatUIWin32.ScrollWindowExFlags = {}
---@alias CS.System.Windows.Forms.XplatUIWin32.ScrollWindowExFlags System.Windows.Forms.XplatUIWin32.ScrollWindowExFlags
CS.System.Windows.Forms.XplatUIWin32.ScrollWindowExFlags = System.Windows.Forms.XplatUIWin32.ScrollWindowExFlags


---@class System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CXSCREEN System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CYSCREEN System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CXVSCROLL System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CYHSCROLL System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CYCAPTION System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CXBORDER System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CYBORDER System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CXDLGFRAME System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CYDLGFRAME System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CYVTHUMB System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CXHTHUMB System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CXICON System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CYICON System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CXCURSOR System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CYCURSOR System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CYMENU System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CXFULLSCREEN System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CYFULLSCREEN System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CYKANJIWINDOW System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_MOUSEPRESENT System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CYVSCROLL System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CXHSCROLL System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_DEBUG System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_SWAPBUTTON System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_RESERVED1 System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_RESERVED2 System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_RESERVED3 System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_RESERVED4 System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CXMIN System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CYMIN System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CXSIZE System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CYSIZE System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CXFRAME System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CYFRAME System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CXMINTRACK System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CYMINTRACK System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CXDOUBLECLK System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CYDOUBLECLK System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CXICONSPACING System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CYICONSPACING System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_MENUDROPALIGNMENT System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_PENWINDOWS System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_DBCSENABLED System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CMOUSEBUTTONS System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CXFIXEDFRAME System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CYFIXEDFRAME System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CXSIZEFRAME System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CYSIZEFRAME System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_SECURE System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CXEDGE System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CYEDGE System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CXMINSPACING System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CYMINSPACING System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CXSMICON System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CYSMICON System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CYSMCAPTION System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CXSMSIZE System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CYSMSIZE System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CXMENUSIZE System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CYMENUSIZE System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_ARRANGE System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CXMINIMIZED System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CYMINIMIZED System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CXMAXTRACK System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CYMAXTRACK System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CXMAXIMIZED System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CYMAXIMIZED System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_NETWORK System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CLEANBOOT System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CXDRAG System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CYDRAG System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_SHOWSOUNDS System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CXMENUCHECK System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CYMENUCHECK System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_SLOWMACHINE System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_MIDEASTENABLED System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_MOUSEWHEELPRESENT System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_XVIRTUALSCREEN System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_YVIRTUALSCREEN System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CXVIRTUALSCREEN System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CYVIRTUALSCREEN System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CMONITORS System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_SAMEDISPLAYFORMAT System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_IMMENABLED System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CXFOCUSBORDER System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CYFOCUSBORDER System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_TABLETPC System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_MEDIACENTER System.Windows.Forms.XplatUIWin32.SystemMetrics
---@field SM_CMETRICS System.Windows.Forms.XplatUIWin32.SystemMetrics
System.Windows.Forms.XplatUIWin32.SystemMetrics = {}
---@alias CS.System.Windows.Forms.XplatUIWin32.SystemMetrics System.Windows.Forms.XplatUIWin32.SystemMetrics
CS.System.Windows.Forms.XplatUIWin32.SystemMetrics = System.Windows.Forms.XplatUIWin32.SystemMetrics


---@class System.Windows.Forms.XplatUIWin32.NotifyIconMessage
---@field NIM_ADD System.Windows.Forms.XplatUIWin32.NotifyIconMessage
---@field NIM_MODIFY System.Windows.Forms.XplatUIWin32.NotifyIconMessage
---@field NIM_DELETE System.Windows.Forms.XplatUIWin32.NotifyIconMessage
System.Windows.Forms.XplatUIWin32.NotifyIconMessage = {}
---@alias CS.System.Windows.Forms.XplatUIWin32.NotifyIconMessage System.Windows.Forms.XplatUIWin32.NotifyIconMessage
CS.System.Windows.Forms.XplatUIWin32.NotifyIconMessage = System.Windows.Forms.XplatUIWin32.NotifyIconMessage


---@class System.Windows.Forms.XplatUIWin32.NotifyIconFlags
---@field NIF_MESSAGE System.Windows.Forms.XplatUIWin32.NotifyIconFlags
---@field NIF_ICON System.Windows.Forms.XplatUIWin32.NotifyIconFlags
---@field NIF_TIP System.Windows.Forms.XplatUIWin32.NotifyIconFlags
---@field NIF_STATE System.Windows.Forms.XplatUIWin32.NotifyIconFlags
---@field NIF_INFO System.Windows.Forms.XplatUIWin32.NotifyIconFlags
System.Windows.Forms.XplatUIWin32.NotifyIconFlags = {}
---@alias CS.System.Windows.Forms.XplatUIWin32.NotifyIconFlags System.Windows.Forms.XplatUIWin32.NotifyIconFlags
CS.System.Windows.Forms.XplatUIWin32.NotifyIconFlags = System.Windows.Forms.XplatUIWin32.NotifyIconFlags


---@class System.Windows.Forms.XplatUIWin32.NOTIFYICONDATA : System.ValueType
System.Windows.Forms.XplatUIWin32.NOTIFYICONDATA = {}
---@alias CS.System.Windows.Forms.XplatUIWin32.NOTIFYICONDATA System.Windows.Forms.XplatUIWin32.NOTIFYICONDATA
CS.System.Windows.Forms.XplatUIWin32.NOTIFYICONDATA = System.Windows.Forms.XplatUIWin32.NOTIFYICONDATA


---@class System.Windows.Forms.XplatUIWin32.DCExFlags
---@field DCX_WINDOW System.Windows.Forms.XplatUIWin32.DCExFlags
---@field DCX_CACHE System.Windows.Forms.XplatUIWin32.DCExFlags
---@field DCX_NORESETATTRS System.Windows.Forms.XplatUIWin32.DCExFlags
---@field DCX_CLIPCHILDREN System.Windows.Forms.XplatUIWin32.DCExFlags
---@field DCX_CLIPSIBLINGS System.Windows.Forms.XplatUIWin32.DCExFlags
---@field DCX_PARENTCLIP System.Windows.Forms.XplatUIWin32.DCExFlags
---@field DCX_EXCLUDERGN System.Windows.Forms.XplatUIWin32.DCExFlags
---@field DCX_INTERSECTRGN System.Windows.Forms.XplatUIWin32.DCExFlags
---@field DCX_EXCLUDEUPDATE System.Windows.Forms.XplatUIWin32.DCExFlags
---@field DCX_INTERSECTUPDATE System.Windows.Forms.XplatUIWin32.DCExFlags
---@field DCX_LOCKWINDOWUPDATE System.Windows.Forms.XplatUIWin32.DCExFlags
---@field DCX_USESTYLE System.Windows.Forms.XplatUIWin32.DCExFlags
---@field DCX_VALIDATE System.Windows.Forms.XplatUIWin32.DCExFlags
System.Windows.Forms.XplatUIWin32.DCExFlags = {}
---@alias CS.System.Windows.Forms.XplatUIWin32.DCExFlags System.Windows.Forms.XplatUIWin32.DCExFlags
CS.System.Windows.Forms.XplatUIWin32.DCExFlags = System.Windows.Forms.XplatUIWin32.DCExFlags


---@class System.Windows.Forms.XplatUIWin32.CLIENTCREATESTRUCT : System.ValueType
System.Windows.Forms.XplatUIWin32.CLIENTCREATESTRUCT = {}
---@alias CS.System.Windows.Forms.XplatUIWin32.CLIENTCREATESTRUCT System.Windows.Forms.XplatUIWin32.CLIENTCREATESTRUCT
CS.System.Windows.Forms.XplatUIWin32.CLIENTCREATESTRUCT = System.Windows.Forms.XplatUIWin32.CLIENTCREATESTRUCT


---@class System.Windows.Forms.XplatUIWin32.ClassLong
---@field GCL_MENUNAME System.Windows.Forms.XplatUIWin32.ClassLong
---@field GCL_HBRBACKGROUND System.Windows.Forms.XplatUIWin32.ClassLong
---@field GCL_HCURSOR System.Windows.Forms.XplatUIWin32.ClassLong
---@field GCL_HICON System.Windows.Forms.XplatUIWin32.ClassLong
---@field GCL_HMODULE System.Windows.Forms.XplatUIWin32.ClassLong
---@field GCL_CBWNDEXTRA System.Windows.Forms.XplatUIWin32.ClassLong
---@field GCL_CBCLSEXTRA System.Windows.Forms.XplatUIWin32.ClassLong
---@field GCL_WNDPROC System.Windows.Forms.XplatUIWin32.ClassLong
---@field GCL_STYLE System.Windows.Forms.XplatUIWin32.ClassLong
---@field GCW_ATOM System.Windows.Forms.XplatUIWin32.ClassLong
---@field GCL_HICONSM System.Windows.Forms.XplatUIWin32.ClassLong
System.Windows.Forms.XplatUIWin32.ClassLong = {}
---@alias CS.System.Windows.Forms.XplatUIWin32.ClassLong System.Windows.Forms.XplatUIWin32.ClassLong
CS.System.Windows.Forms.XplatUIWin32.ClassLong = System.Windows.Forms.XplatUIWin32.ClassLong


---@class System.Windows.Forms.XplatUIWin32.GAllocFlags
---@field GMEM_FIXED System.Windows.Forms.XplatUIWin32.GAllocFlags
---@field GMEM_MOVEABLE System.Windows.Forms.XplatUIWin32.GAllocFlags
---@field GMEM_NOCOMPACT System.Windows.Forms.XplatUIWin32.GAllocFlags
---@field GMEM_NODISCARD System.Windows.Forms.XplatUIWin32.GAllocFlags
---@field GMEM_ZEROINIT System.Windows.Forms.XplatUIWin32.GAllocFlags
---@field GMEM_MODIFY System.Windows.Forms.XplatUIWin32.GAllocFlags
---@field GMEM_DISCARDABLE System.Windows.Forms.XplatUIWin32.GAllocFlags
---@field GMEM_NOT_BANKED System.Windows.Forms.XplatUIWin32.GAllocFlags
---@field GMEM_SHARE System.Windows.Forms.XplatUIWin32.GAllocFlags
---@field GMEM_DDESHARE System.Windows.Forms.XplatUIWin32.GAllocFlags
---@field GMEM_NOTIFY System.Windows.Forms.XplatUIWin32.GAllocFlags
---@field GMEM_LOWER System.Windows.Forms.XplatUIWin32.GAllocFlags
---@field GMEM_VALID_FLAGS System.Windows.Forms.XplatUIWin32.GAllocFlags
---@field GMEM_INVALID_HANDLE System.Windows.Forms.XplatUIWin32.GAllocFlags
---@field GHND System.Windows.Forms.XplatUIWin32.GAllocFlags
---@field GPTR System.Windows.Forms.XplatUIWin32.GAllocFlags
System.Windows.Forms.XplatUIWin32.GAllocFlags = {}
---@alias CS.System.Windows.Forms.XplatUIWin32.GAllocFlags System.Windows.Forms.XplatUIWin32.GAllocFlags
CS.System.Windows.Forms.XplatUIWin32.GAllocFlags = System.Windows.Forms.XplatUIWin32.GAllocFlags


---@class System.Windows.Forms.XplatUIWin32.ROP2DrawMode
---@field R2_BLACK System.Windows.Forms.XplatUIWin32.ROP2DrawMode
---@field R2_NOTMERGEPEN System.Windows.Forms.XplatUIWin32.ROP2DrawMode
---@field R2_MASKNOTPEN System.Windows.Forms.XplatUIWin32.ROP2DrawMode
---@field R2_NOTCOPYPEN System.Windows.Forms.XplatUIWin32.ROP2DrawMode
---@field R2_MASKPENNOT System.Windows.Forms.XplatUIWin32.ROP2DrawMode
---@field R2_NOT System.Windows.Forms.XplatUIWin32.ROP2DrawMode
---@field R2_XORPEN System.Windows.Forms.XplatUIWin32.ROP2DrawMode
---@field R2_NOTMASKPEN System.Windows.Forms.XplatUIWin32.ROP2DrawMode
---@field R2_MASKPEN System.Windows.Forms.XplatUIWin32.ROP2DrawMode
---@field R2_NOTXORPEN System.Windows.Forms.XplatUIWin32.ROP2DrawMode
---@field R2_NOP System.Windows.Forms.XplatUIWin32.ROP2DrawMode
---@field R2_MERGENOTPEN System.Windows.Forms.XplatUIWin32.ROP2DrawMode
---@field R2_COPYPEN System.Windows.Forms.XplatUIWin32.ROP2DrawMode
---@field R2_MERGEPENNOT System.Windows.Forms.XplatUIWin32.ROP2DrawMode
---@field R2_MERGEPEN System.Windows.Forms.XplatUIWin32.ROP2DrawMode
---@field R2_WHITE System.Windows.Forms.XplatUIWin32.ROP2DrawMode
---@field R2_LAST System.Windows.Forms.XplatUIWin32.ROP2DrawMode
System.Windows.Forms.XplatUIWin32.ROP2DrawMode = {}
---@alias CS.System.Windows.Forms.XplatUIWin32.ROP2DrawMode System.Windows.Forms.XplatUIWin32.ROP2DrawMode
CS.System.Windows.Forms.XplatUIWin32.ROP2DrawMode = System.Windows.Forms.XplatUIWin32.ROP2DrawMode


---@class System.Windows.Forms.XplatUIWin32.PenStyle
---@field PS_SOLID System.Windows.Forms.XplatUIWin32.PenStyle
---@field PS_DASH System.Windows.Forms.XplatUIWin32.PenStyle
---@field PS_DOT System.Windows.Forms.XplatUIWin32.PenStyle
---@field PS_DASHDOT System.Windows.Forms.XplatUIWin32.PenStyle
---@field PS_DASHDOTDOT System.Windows.Forms.XplatUIWin32.PenStyle
---@field PS_NULL System.Windows.Forms.XplatUIWin32.PenStyle
---@field PS_INSIDEFRAME System.Windows.Forms.XplatUIWin32.PenStyle
---@field PS_USERSTYLE System.Windows.Forms.XplatUIWin32.PenStyle
---@field PS_ALTERNATE System.Windows.Forms.XplatUIWin32.PenStyle
System.Windows.Forms.XplatUIWin32.PenStyle = {}
---@alias CS.System.Windows.Forms.XplatUIWin32.PenStyle System.Windows.Forms.XplatUIWin32.PenStyle
CS.System.Windows.Forms.XplatUIWin32.PenStyle = System.Windows.Forms.XplatUIWin32.PenStyle


---@class System.Windows.Forms.XplatUIWin32.PatBltRop
---@field PATCOPY System.Windows.Forms.XplatUIWin32.PatBltRop
---@field PATINVERT System.Windows.Forms.XplatUIWin32.PatBltRop
---@field DSTINVERT System.Windows.Forms.XplatUIWin32.PatBltRop
---@field BLACKNESS System.Windows.Forms.XplatUIWin32.PatBltRop
---@field WHITENESS System.Windows.Forms.XplatUIWin32.PatBltRop
System.Windows.Forms.XplatUIWin32.PatBltRop = {}
---@alias CS.System.Windows.Forms.XplatUIWin32.PatBltRop System.Windows.Forms.XplatUIWin32.PatBltRop
CS.System.Windows.Forms.XplatUIWin32.PatBltRop = System.Windows.Forms.XplatUIWin32.PatBltRop


---@class System.Windows.Forms.XplatUIWin32.StockObject
---@field WHITE_BRUSH System.Windows.Forms.XplatUIWin32.StockObject
---@field LTGRAY_BRUSH System.Windows.Forms.XplatUIWin32.StockObject
---@field GRAY_BRUSH System.Windows.Forms.XplatUIWin32.StockObject
---@field DKGRAY_BRUSH System.Windows.Forms.XplatUIWin32.StockObject
---@field BLACK_BRUSH System.Windows.Forms.XplatUIWin32.StockObject
---@field NULL_BRUSH System.Windows.Forms.XplatUIWin32.StockObject
---@field HOLLOW_BRUSH System.Windows.Forms.XplatUIWin32.StockObject
---@field WHITE_PEN System.Windows.Forms.XplatUIWin32.StockObject
---@field BLACK_PEN System.Windows.Forms.XplatUIWin32.StockObject
---@field NULL_PEN System.Windows.Forms.XplatUIWin32.StockObject
---@field OEM_FIXED_FONT System.Windows.Forms.XplatUIWin32.StockObject
---@field ANSI_FIXED_FONT System.Windows.Forms.XplatUIWin32.StockObject
---@field ANSI_VAR_FONT System.Windows.Forms.XplatUIWin32.StockObject
---@field SYSTEM_FONT System.Windows.Forms.XplatUIWin32.StockObject
---@field DEVICE_DEFAULT_FONT System.Windows.Forms.XplatUIWin32.StockObject
---@field DEFAULT_PALETTE System.Windows.Forms.XplatUIWin32.StockObject
---@field SYSTEM_FIXED_FONT System.Windows.Forms.XplatUIWin32.StockObject
System.Windows.Forms.XplatUIWin32.StockObject = {}
---@alias CS.System.Windows.Forms.XplatUIWin32.StockObject System.Windows.Forms.XplatUIWin32.StockObject
CS.System.Windows.Forms.XplatUIWin32.StockObject = System.Windows.Forms.XplatUIWin32.StockObject


---@class System.Windows.Forms.XplatUIWin32.HatchStyle
---@field HS_HORIZONTAL System.Windows.Forms.XplatUIWin32.HatchStyle
---@field HS_VERTICAL System.Windows.Forms.XplatUIWin32.HatchStyle
---@field HS_FDIAGONAL System.Windows.Forms.XplatUIWin32.HatchStyle
---@field HS_BDIAGONAL System.Windows.Forms.XplatUIWin32.HatchStyle
---@field HS_CROSS System.Windows.Forms.XplatUIWin32.HatchStyle
---@field HS_DIAGCROSS System.Windows.Forms.XplatUIWin32.HatchStyle
System.Windows.Forms.XplatUIWin32.HatchStyle = {}
---@alias CS.System.Windows.Forms.XplatUIWin32.HatchStyle System.Windows.Forms.XplatUIWin32.HatchStyle
CS.System.Windows.Forms.XplatUIWin32.HatchStyle = System.Windows.Forms.XplatUIWin32.HatchStyle


---@class System.Windows.Forms.XplatUIWin32.SndFlags
---@field SND_SYNC System.Windows.Forms.XplatUIWin32.SndFlags
---@field SND_ASYNC System.Windows.Forms.XplatUIWin32.SndFlags
---@field SND_NODEFAULT System.Windows.Forms.XplatUIWin32.SndFlags
---@field SND_MEMORY System.Windows.Forms.XplatUIWin32.SndFlags
---@field SND_LOOP System.Windows.Forms.XplatUIWin32.SndFlags
---@field SND_NOSTOP System.Windows.Forms.XplatUIWin32.SndFlags
---@field SND_NOWAIT System.Windows.Forms.XplatUIWin32.SndFlags
---@field SND_ALIAS System.Windows.Forms.XplatUIWin32.SndFlags
---@field SND_ALIAS_ID System.Windows.Forms.XplatUIWin32.SndFlags
---@field SND_FILENAME System.Windows.Forms.XplatUIWin32.SndFlags
---@field SND_RESOURCE System.Windows.Forms.XplatUIWin32.SndFlags
---@field SND_PURGE System.Windows.Forms.XplatUIWin32.SndFlags
---@field SND_APPLICATION System.Windows.Forms.XplatUIWin32.SndFlags
System.Windows.Forms.XplatUIWin32.SndFlags = {}
---@alias CS.System.Windows.Forms.XplatUIWin32.SndFlags System.Windows.Forms.XplatUIWin32.SndFlags
CS.System.Windows.Forms.XplatUIWin32.SndFlags = System.Windows.Forms.XplatUIWin32.SndFlags


---@class System.Windows.Forms.XplatUIWin32.LayeredWindowAttributes
---@field LWA_COLORKEY System.Windows.Forms.XplatUIWin32.LayeredWindowAttributes
---@field LWA_ALPHA System.Windows.Forms.XplatUIWin32.LayeredWindowAttributes
System.Windows.Forms.XplatUIWin32.LayeredWindowAttributes = {}
---@alias CS.System.Windows.Forms.XplatUIWin32.LayeredWindowAttributes System.Windows.Forms.XplatUIWin32.LayeredWindowAttributes
CS.System.Windows.Forms.XplatUIWin32.LayeredWindowAttributes = System.Windows.Forms.XplatUIWin32.LayeredWindowAttributes


---@class System.Windows.Forms.XplatUIWin32.ACLineStatus
---@field Offline System.Windows.Forms.XplatUIWin32.ACLineStatus
---@field Online System.Windows.Forms.XplatUIWin32.ACLineStatus
---@field Unknown System.Windows.Forms.XplatUIWin32.ACLineStatus
System.Windows.Forms.XplatUIWin32.ACLineStatus = {}
---@alias CS.System.Windows.Forms.XplatUIWin32.ACLineStatus System.Windows.Forms.XplatUIWin32.ACLineStatus
CS.System.Windows.Forms.XplatUIWin32.ACLineStatus = System.Windows.Forms.XplatUIWin32.ACLineStatus


---@class System.Windows.Forms.XplatUIWin32.BatteryFlag
---@field High System.Windows.Forms.XplatUIWin32.BatteryFlag
---@field Low System.Windows.Forms.XplatUIWin32.BatteryFlag
---@field Critical System.Windows.Forms.XplatUIWin32.BatteryFlag
---@field Charging System.Windows.Forms.XplatUIWin32.BatteryFlag
---@field NoSystemBattery System.Windows.Forms.XplatUIWin32.BatteryFlag
---@field Unknown System.Windows.Forms.XplatUIWin32.BatteryFlag
System.Windows.Forms.XplatUIWin32.BatteryFlag = {}
---@alias CS.System.Windows.Forms.XplatUIWin32.BatteryFlag System.Windows.Forms.XplatUIWin32.BatteryFlag
CS.System.Windows.Forms.XplatUIWin32.BatteryFlag = System.Windows.Forms.XplatUIWin32.BatteryFlag


---@class System.Windows.Forms.XplatUIWin32.SYSTEMPOWERSTATUS : System.Object
---@field _ACLineStatus System.Windows.Forms.XplatUIWin32.ACLineStatus
---@field _BatteryFlag System.Windows.Forms.XplatUIWin32.BatteryFlag
---@field _BatteryLifePercent number
---@field _Reserved1 number
---@field _BatteryLifeTime number
---@field _BatteryFullLifeTime number
System.Windows.Forms.XplatUIWin32.SYSTEMPOWERSTATUS = {}
---@alias CS.System.Windows.Forms.XplatUIWin32.SYSTEMPOWERSTATUS System.Windows.Forms.XplatUIWin32.SYSTEMPOWERSTATUS
CS.System.Windows.Forms.XplatUIWin32.SYSTEMPOWERSTATUS = System.Windows.Forms.XplatUIWin32.SYSTEMPOWERSTATUS

---@return System.Windows.Forms.XplatUIWin32.SYSTEMPOWERSTATUS
function System.Windows.Forms.XplatUIWin32.SYSTEMPOWERSTATUS.New() end

---@class System.Windows.Forms.XplatUIWin32.Win32PaintEventArgs : System.Windows.Forms.PaintEventArgs
---@field Context System.Object
System.Windows.Forms.XplatUIWin32.Win32PaintEventArgs = {}
---@alias CS.System.Windows.Forms.XplatUIWin32.Win32PaintEventArgs System.Windows.Forms.XplatUIWin32.Win32PaintEventArgs
CS.System.Windows.Forms.XplatUIWin32.Win32PaintEventArgs = System.Windows.Forms.XplatUIWin32.Win32PaintEventArgs

---@param g System.Drawing.Graphics
---@param clip System.Drawing.Rectangle
---@param context System.Object
---@return System.Windows.Forms.XplatUIWin32.Win32PaintEventArgs
function System.Windows.Forms.XplatUIWin32.Win32PaintEventArgs.New(g, clip, context) end

---@class System.Windows.Forms.XplatUIWin32.WinBuffer : System.Object
---@field hdc System.IntPtr
---@field bitmap System.IntPtr
System.Windows.Forms.XplatUIWin32.WinBuffer = {}
---@alias CS.System.Windows.Forms.XplatUIWin32.WinBuffer System.Windows.Forms.XplatUIWin32.WinBuffer
CS.System.Windows.Forms.XplatUIWin32.WinBuffer = System.Windows.Forms.XplatUIWin32.WinBuffer

---@param hdc System.IntPtr
---@param bitmap System.IntPtr
---@return System.Windows.Forms.XplatUIWin32.WinBuffer
function System.Windows.Forms.XplatUIWin32.WinBuffer.New(hdc, bitmap) end

---@class System.Windows.Forms.XplatUIX11 : System.Windows.Forms.XplatUIDriver
---@field Reference number
System.Windows.Forms.XplatUIX11 = {}
---@alias CS.System.Windows.Forms.XplatUIX11 System.Windows.Forms.XplatUIX11
CS.System.Windows.Forms.XplatUIX11 = System.Windows.Forms.XplatUIX11

---@return System.Windows.Forms.XplatUIX11
function System.Windows.Forms.XplatUIX11.GetInstance() end

---@class System.Windows.Forms.XplatUIX11.XException : System.ApplicationException
---@field Message string
System.Windows.Forms.XplatUIX11.XException = {}
---@alias CS.System.Windows.Forms.XplatUIX11.XException System.Windows.Forms.XplatUIX11.XException
CS.System.Windows.Forms.XplatUIX11.XException = System.Windows.Forms.XplatUIX11.XException

---@param Display System.IntPtr
---@param ResourceID System.IntPtr
---@param Serial System.IntPtr
---@param ErrorCode number
---@param RequestCode System.Windows.Forms.XRequest
---@param MinorCode number
---@return System.Windows.Forms.XplatUIX11.XException
function System.Windows.Forms.XplatUIX11.XException.New(Display, ResourceID, Serial, ErrorCode, RequestCode, MinorCode) end
---@param Display System.IntPtr
---@param ResourceID System.IntPtr
---@param Serial System.IntPtr
---@param ErrorCode number
---@param RequestCode System.Windows.Forms.XRequest
---@param MinorCode number
---@return string
function System.Windows.Forms.XplatUIX11.XException.GetMessage(Display, ResourceID, Serial, ErrorCode, RequestCode, MinorCode) end

---@class System.Windows.Forms.XplatUIX11.EventPredicate : System.MulticastDelegate
System.Windows.Forms.XplatUIX11.EventPredicate = {}
---@alias CS.System.Windows.Forms.XplatUIX11.EventPredicate System.Windows.Forms.XplatUIX11.EventPredicate
CS.System.Windows.Forms.XplatUIX11.EventPredicate = System.Windows.Forms.XplatUIX11.EventPredicate

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.XplatUIX11.EventPredicate
function System.Windows.Forms.XplatUIX11.EventPredicate.New(object, method) end
---@param display System.IntPtr
---@param ref_xevent System.Windows.Forms.XEvent
---@param arg System.IntPtr
---@return boolean,System.Windows.Forms.XEvent
function System.Windows.Forms.XplatUIX11.EventPredicate:Invoke(display, ref_xevent, arg) end
---@param display System.IntPtr
---@param ref_xevent System.Windows.Forms.XEvent
---@param arg System.IntPtr
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult,System.Windows.Forms.XEvent
function System.Windows.Forms.XplatUIX11.EventPredicate:BeginInvoke(display, ref_xevent, arg, callback, object) end
---@param ref_xevent System.Windows.Forms.XEvent
---@param result System.IAsyncResult
---@return boolean,System.Windows.Forms.XEvent
function System.Windows.Forms.XplatUIX11.EventPredicate:EndInvoke(ref_xevent, result) end

---@class System.Windows.Forms.XplatUIX11.WndProcDelegate : System.MulticastDelegate
System.Windows.Forms.XplatUIX11.WndProcDelegate = {}
---@alias CS.System.Windows.Forms.XplatUIX11.WndProcDelegate System.Windows.Forms.XplatUIX11.WndProcDelegate
CS.System.Windows.Forms.XplatUIX11.WndProcDelegate = System.Windows.Forms.XplatUIX11.WndProcDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.XplatUIX11.WndProcDelegate
function System.Windows.Forms.XplatUIX11.WndProcDelegate.New(object, method) end
---@param hwnd System.IntPtr
---@param message System.Windows.Forms.Msg
---@param wParam System.IntPtr
---@param lParam System.IntPtr
---@return System.IntPtr
function System.Windows.Forms.XplatUIX11.WndProcDelegate:Invoke(hwnd, message, wParam, lParam) end
---@param hwnd System.IntPtr
---@param message System.Windows.Forms.Msg
---@param wParam System.IntPtr
---@param lParam System.IntPtr
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Windows.Forms.XplatUIX11.WndProcDelegate:BeginInvoke(hwnd, message, wParam, lParam, callback, object) end
---@param result System.IAsyncResult
---@return System.IntPtr
function System.Windows.Forms.XplatUIX11.WndProcDelegate:EndInvoke(result) end

---@class System.Windows.Forms.ComponentModel.Com2Interop.Com2Variant : System.Object
System.Windows.Forms.ComponentModel.Com2Interop.Com2Variant = {}
---@alias CS.System.Windows.Forms.ComponentModel.Com2Interop.Com2Variant System.Windows.Forms.ComponentModel.Com2Interop.Com2Variant
CS.System.Windows.Forms.ComponentModel.Com2Interop.Com2Variant = System.Windows.Forms.ComponentModel.Com2Interop.Com2Variant

---@return System.Windows.Forms.ComponentModel.Com2Interop.Com2Variant
function System.Windows.Forms.ComponentModel.Com2Interop.Com2Variant.New() end

---@class System.Windows.Forms.ComponentModel.Com2Interop.ICom2PropertyPageDisplayService
System.Windows.Forms.ComponentModel.Com2Interop.ICom2PropertyPageDisplayService = {}
---@alias CS.System.Windows.Forms.ComponentModel.Com2Interop.ICom2PropertyPageDisplayService System.Windows.Forms.ComponentModel.Com2Interop.ICom2PropertyPageDisplayService
CS.System.Windows.Forms.ComponentModel.Com2Interop.ICom2PropertyPageDisplayService = System.Windows.Forms.ComponentModel.Com2Interop.ICom2PropertyPageDisplayService

---@param title string
---@param component System.Object
---@param dispid number
---@param pageGuid System.Guid
---@param parentHandle System.IntPtr
function System.Windows.Forms.ComponentModel.Com2Interop.ICom2PropertyPageDisplayService:ShowPropertyPage(title, component, dispid, pageGuid, parentHandle) end

---@class System.Windows.Forms.ComponentModel.Com2Interop.IComPropertyBrowser
---@field InPropertySet boolean
System.Windows.Forms.ComponentModel.Com2Interop.IComPropertyBrowser = {}
---@alias CS.System.Windows.Forms.ComponentModel.Com2Interop.IComPropertyBrowser System.Windows.Forms.ComponentModel.Com2Interop.IComPropertyBrowser
CS.System.Windows.Forms.ComponentModel.Com2Interop.IComPropertyBrowser = System.Windows.Forms.ComponentModel.Com2Interop.IComPropertyBrowser

function System.Windows.Forms.ComponentModel.Com2Interop.IComPropertyBrowser:DropDownDone() end
---@return boolean
function System.Windows.Forms.ComponentModel.Com2Interop.IComPropertyBrowser:EnsurePendingChangesCommitted() end
function System.Windows.Forms.ComponentModel.Com2Interop.IComPropertyBrowser:HandleF4() end
---@param key Microsoft.Win32.RegistryKey
function System.Windows.Forms.ComponentModel.Com2Interop.IComPropertyBrowser:LoadState(key) end
---@param key Microsoft.Win32.RegistryKey
function System.Windows.Forms.ComponentModel.Com2Interop.IComPropertyBrowser:SaveState(key) end

---@class System.Windows.Forms.WebBrowserDialogs.AlertCheck : System.Windows.Forms.WebBrowserDialogs.Generic
---@field Checked boolean
System.Windows.Forms.WebBrowserDialogs.AlertCheck = {}
---@alias CS.System.Windows.Forms.WebBrowserDialogs.AlertCheck System.Windows.Forms.WebBrowserDialogs.AlertCheck
CS.System.Windows.Forms.WebBrowserDialogs.AlertCheck = System.Windows.Forms.WebBrowserDialogs.AlertCheck

---@param title string
---@param text string
---@param checkMessage string
---@param checkState boolean
---@return System.Windows.Forms.WebBrowserDialogs.AlertCheck
function System.Windows.Forms.WebBrowserDialogs.AlertCheck.New(title, text, checkMessage, checkState) end

---@class System.Windows.Forms.WebBrowserDialogs.ConfirmCheck : System.Windows.Forms.WebBrowserDialogs.Generic
---@field Checked boolean
System.Windows.Forms.WebBrowserDialogs.ConfirmCheck = {}
---@alias CS.System.Windows.Forms.WebBrowserDialogs.ConfirmCheck System.Windows.Forms.WebBrowserDialogs.ConfirmCheck
CS.System.Windows.Forms.WebBrowserDialogs.ConfirmCheck = System.Windows.Forms.WebBrowserDialogs.ConfirmCheck

---@param title string
---@param text string
---@param checkMessage string
---@param checkState boolean
---@return System.Windows.Forms.WebBrowserDialogs.ConfirmCheck
function System.Windows.Forms.WebBrowserDialogs.ConfirmCheck.New(title, text, checkMessage, checkState) end

---@class System.Windows.Forms.WebBrowserDialogs.Generic : System.Windows.Forms.Form
System.Windows.Forms.WebBrowserDialogs.Generic = {}
---@alias CS.System.Windows.Forms.WebBrowserDialogs.Generic System.Windows.Forms.WebBrowserDialogs.Generic
CS.System.Windows.Forms.WebBrowserDialogs.Generic = System.Windows.Forms.WebBrowserDialogs.Generic

---@param title string
---@return System.Windows.Forms.WebBrowserDialogs.Generic
function System.Windows.Forms.WebBrowserDialogs.Generic.New(title) end
---@return System.Windows.Forms.DialogResult
function System.Windows.Forms.WebBrowserDialogs.Generic:Show() end

---@class System.Windows.Forms.WebBrowserDialogs.Prompt : System.Windows.Forms.WebBrowserDialogs.Generic
---@field Text string
System.Windows.Forms.WebBrowserDialogs.Prompt = {}
---@alias CS.System.Windows.Forms.WebBrowserDialogs.Prompt System.Windows.Forms.WebBrowserDialogs.Prompt
CS.System.Windows.Forms.WebBrowserDialogs.Prompt = System.Windows.Forms.WebBrowserDialogs.Prompt

---@param title string
---@param message string
---@param text string
---@return System.Windows.Forms.WebBrowserDialogs.Prompt
function System.Windows.Forms.WebBrowserDialogs.Prompt.New(title, message, text) end

---@class System.Windows.Forms.VisualStyles.BackgroundType
---@field ImageFile System.Windows.Forms.VisualStyles.BackgroundType
---@field BorderFill System.Windows.Forms.VisualStyles.BackgroundType
---@field None System.Windows.Forms.VisualStyles.BackgroundType
System.Windows.Forms.VisualStyles.BackgroundType = {}
---@alias CS.System.Windows.Forms.VisualStyles.BackgroundType System.Windows.Forms.VisualStyles.BackgroundType
CS.System.Windows.Forms.VisualStyles.BackgroundType = System.Windows.Forms.VisualStyles.BackgroundType


---@class System.Windows.Forms.VisualStyles.BooleanProperty
---@field Transparent System.Windows.Forms.VisualStyles.BooleanProperty
---@field AutoSize System.Windows.Forms.VisualStyles.BooleanProperty
---@field BorderOnly System.Windows.Forms.VisualStyles.BooleanProperty
---@field Composited System.Windows.Forms.VisualStyles.BooleanProperty
---@field BackgroundFill System.Windows.Forms.VisualStyles.BooleanProperty
---@field GlyphTransparent System.Windows.Forms.VisualStyles.BooleanProperty
---@field GlyphOnly System.Windows.Forms.VisualStyles.BooleanProperty
---@field AlwaysShowSizingBar System.Windows.Forms.VisualStyles.BooleanProperty
---@field MirrorImage System.Windows.Forms.VisualStyles.BooleanProperty
---@field UniformSizing System.Windows.Forms.VisualStyles.BooleanProperty
---@field IntegralSizing System.Windows.Forms.VisualStyles.BooleanProperty
---@field SourceGrow System.Windows.Forms.VisualStyles.BooleanProperty
---@field SourceShrink System.Windows.Forms.VisualStyles.BooleanProperty
System.Windows.Forms.VisualStyles.BooleanProperty = {}
---@alias CS.System.Windows.Forms.VisualStyles.BooleanProperty System.Windows.Forms.VisualStyles.BooleanProperty
CS.System.Windows.Forms.VisualStyles.BooleanProperty = System.Windows.Forms.VisualStyles.BooleanProperty


---@class System.Windows.Forms.VisualStyles.BorderType
---@field Rectangle System.Windows.Forms.VisualStyles.BorderType
---@field RoundedRectangle System.Windows.Forms.VisualStyles.BorderType
---@field Ellipse System.Windows.Forms.VisualStyles.BorderType
System.Windows.Forms.VisualStyles.BorderType = {}
---@alias CS.System.Windows.Forms.VisualStyles.BorderType System.Windows.Forms.VisualStyles.BorderType
CS.System.Windows.Forms.VisualStyles.BorderType = System.Windows.Forms.VisualStyles.BorderType


---@class System.Windows.Forms.VisualStyles.CheckBoxState
---@field UncheckedNormal System.Windows.Forms.VisualStyles.CheckBoxState
---@field UncheckedHot System.Windows.Forms.VisualStyles.CheckBoxState
---@field UncheckedPressed System.Windows.Forms.VisualStyles.CheckBoxState
---@field UncheckedDisabled System.Windows.Forms.VisualStyles.CheckBoxState
---@field CheckedNormal System.Windows.Forms.VisualStyles.CheckBoxState
---@field CheckedHot System.Windows.Forms.VisualStyles.CheckBoxState
---@field CheckedPressed System.Windows.Forms.VisualStyles.CheckBoxState
---@field CheckedDisabled System.Windows.Forms.VisualStyles.CheckBoxState
---@field MixedNormal System.Windows.Forms.VisualStyles.CheckBoxState
---@field MixedHot System.Windows.Forms.VisualStyles.CheckBoxState
---@field MixedPressed System.Windows.Forms.VisualStyles.CheckBoxState
---@field MixedDisabled System.Windows.Forms.VisualStyles.CheckBoxState
System.Windows.Forms.VisualStyles.CheckBoxState = {}
---@alias CS.System.Windows.Forms.VisualStyles.CheckBoxState System.Windows.Forms.VisualStyles.CheckBoxState
CS.System.Windows.Forms.VisualStyles.CheckBoxState = System.Windows.Forms.VisualStyles.CheckBoxState


---@class System.Windows.Forms.VisualStyles.ColorProperty
---@field BorderColor System.Windows.Forms.VisualStyles.ColorProperty
---@field FillColor System.Windows.Forms.VisualStyles.ColorProperty
---@field TextColor System.Windows.Forms.VisualStyles.ColorProperty
---@field EdgeLightColor System.Windows.Forms.VisualStyles.ColorProperty
---@field EdgeHighlightColor System.Windows.Forms.VisualStyles.ColorProperty
---@field EdgeShadowColor System.Windows.Forms.VisualStyles.ColorProperty
---@field EdgeDarkShadowColor System.Windows.Forms.VisualStyles.ColorProperty
---@field EdgeFillColor System.Windows.Forms.VisualStyles.ColorProperty
---@field TransparentColor System.Windows.Forms.VisualStyles.ColorProperty
---@field GradientColor1 System.Windows.Forms.VisualStyles.ColorProperty
---@field GradientColor2 System.Windows.Forms.VisualStyles.ColorProperty
---@field GradientColor3 System.Windows.Forms.VisualStyles.ColorProperty
---@field GradientColor4 System.Windows.Forms.VisualStyles.ColorProperty
---@field GradientColor5 System.Windows.Forms.VisualStyles.ColorProperty
---@field ShadowColor System.Windows.Forms.VisualStyles.ColorProperty
---@field GlowColor System.Windows.Forms.VisualStyles.ColorProperty
---@field TextBorderColor System.Windows.Forms.VisualStyles.ColorProperty
---@field TextShadowColor System.Windows.Forms.VisualStyles.ColorProperty
---@field GlyphTextColor System.Windows.Forms.VisualStyles.ColorProperty
---@field GlyphTransparentColor System.Windows.Forms.VisualStyles.ColorProperty
---@field FillColorHint System.Windows.Forms.VisualStyles.ColorProperty
---@field BorderColorHint System.Windows.Forms.VisualStyles.ColorProperty
---@field AccentColorHint System.Windows.Forms.VisualStyles.ColorProperty
System.Windows.Forms.VisualStyles.ColorProperty = {}
---@alias CS.System.Windows.Forms.VisualStyles.ColorProperty System.Windows.Forms.VisualStyles.ColorProperty
CS.System.Windows.Forms.VisualStyles.ColorProperty = System.Windows.Forms.VisualStyles.ColorProperty


---@class System.Windows.Forms.VisualStyles.ComboBoxState
---@field Normal System.Windows.Forms.VisualStyles.ComboBoxState
---@field Hot System.Windows.Forms.VisualStyles.ComboBoxState
---@field Pressed System.Windows.Forms.VisualStyles.ComboBoxState
---@field Disabled System.Windows.Forms.VisualStyles.ComboBoxState
System.Windows.Forms.VisualStyles.ComboBoxState = {}
---@alias CS.System.Windows.Forms.VisualStyles.ComboBoxState System.Windows.Forms.VisualStyles.ComboBoxState
CS.System.Windows.Forms.VisualStyles.ComboBoxState = System.Windows.Forms.VisualStyles.ComboBoxState


---@class System.Windows.Forms.VisualStyles.ContentAlignment
---@field Left System.Windows.Forms.VisualStyles.ContentAlignment
---@field Center System.Windows.Forms.VisualStyles.ContentAlignment
---@field Right System.Windows.Forms.VisualStyles.ContentAlignment
System.Windows.Forms.VisualStyles.ContentAlignment = {}
---@alias CS.System.Windows.Forms.VisualStyles.ContentAlignment System.Windows.Forms.VisualStyles.ContentAlignment
CS.System.Windows.Forms.VisualStyles.ContentAlignment = System.Windows.Forms.VisualStyles.ContentAlignment


---@class System.Windows.Forms.VisualStyles.EdgeEffects
---@field None System.Windows.Forms.VisualStyles.EdgeEffects
---@field FillInterior System.Windows.Forms.VisualStyles.EdgeEffects
---@field Flat System.Windows.Forms.VisualStyles.EdgeEffects
---@field Soft System.Windows.Forms.VisualStyles.EdgeEffects
---@field Mono System.Windows.Forms.VisualStyles.EdgeEffects
System.Windows.Forms.VisualStyles.EdgeEffects = {}
---@alias CS.System.Windows.Forms.VisualStyles.EdgeEffects System.Windows.Forms.VisualStyles.EdgeEffects
CS.System.Windows.Forms.VisualStyles.EdgeEffects = System.Windows.Forms.VisualStyles.EdgeEffects


---@class System.Windows.Forms.VisualStyles.EdgeStyle
---@field Raised System.Windows.Forms.VisualStyles.EdgeStyle
---@field Etched System.Windows.Forms.VisualStyles.EdgeStyle
---@field Bump System.Windows.Forms.VisualStyles.EdgeStyle
---@field Sunken System.Windows.Forms.VisualStyles.EdgeStyle
System.Windows.Forms.VisualStyles.EdgeStyle = {}
---@alias CS.System.Windows.Forms.VisualStyles.EdgeStyle System.Windows.Forms.VisualStyles.EdgeStyle
CS.System.Windows.Forms.VisualStyles.EdgeStyle = System.Windows.Forms.VisualStyles.EdgeStyle


---@class System.Windows.Forms.VisualStyles.Edges
---@field Left System.Windows.Forms.VisualStyles.Edges
---@field Top System.Windows.Forms.VisualStyles.Edges
---@field Right System.Windows.Forms.VisualStyles.Edges
---@field Bottom System.Windows.Forms.VisualStyles.Edges
---@field Diagonal System.Windows.Forms.VisualStyles.Edges
System.Windows.Forms.VisualStyles.Edges = {}
---@alias CS.System.Windows.Forms.VisualStyles.Edges System.Windows.Forms.VisualStyles.Edges
CS.System.Windows.Forms.VisualStyles.Edges = System.Windows.Forms.VisualStyles.Edges


---@class System.Windows.Forms.VisualStyles.EnumProperty
---@field BackgroundType System.Windows.Forms.VisualStyles.EnumProperty
---@field BorderType System.Windows.Forms.VisualStyles.EnumProperty
---@field FillType System.Windows.Forms.VisualStyles.EnumProperty
---@field SizingType System.Windows.Forms.VisualStyles.EnumProperty
---@field HorizontalAlignment System.Windows.Forms.VisualStyles.EnumProperty
---@field ContentAlignment System.Windows.Forms.VisualStyles.EnumProperty
---@field VerticalAlignment System.Windows.Forms.VisualStyles.EnumProperty
---@field OffsetType System.Windows.Forms.VisualStyles.EnumProperty
---@field IconEffect System.Windows.Forms.VisualStyles.EnumProperty
---@field TextShadowType System.Windows.Forms.VisualStyles.EnumProperty
---@field ImageLayout System.Windows.Forms.VisualStyles.EnumProperty
---@field GlyphType System.Windows.Forms.VisualStyles.EnumProperty
---@field ImageSelectType System.Windows.Forms.VisualStyles.EnumProperty
---@field GlyphFontSizingType System.Windows.Forms.VisualStyles.EnumProperty
---@field TrueSizeScalingType System.Windows.Forms.VisualStyles.EnumProperty
System.Windows.Forms.VisualStyles.EnumProperty = {}
---@alias CS.System.Windows.Forms.VisualStyles.EnumProperty System.Windows.Forms.VisualStyles.EnumProperty
CS.System.Windows.Forms.VisualStyles.EnumProperty = System.Windows.Forms.VisualStyles.EnumProperty


---@class System.Windows.Forms.VisualStyles.FilenameProperty
---@field ImageFile System.Windows.Forms.VisualStyles.FilenameProperty
---@field ImageFile1 System.Windows.Forms.VisualStyles.FilenameProperty
---@field ImageFile2 System.Windows.Forms.VisualStyles.FilenameProperty
---@field ImageFile3 System.Windows.Forms.VisualStyles.FilenameProperty
---@field ImageFile4 System.Windows.Forms.VisualStyles.FilenameProperty
---@field ImageFile5 System.Windows.Forms.VisualStyles.FilenameProperty
---@field StockImageFile System.Windows.Forms.VisualStyles.FilenameProperty
---@field GlyphImageFile System.Windows.Forms.VisualStyles.FilenameProperty
System.Windows.Forms.VisualStyles.FilenameProperty = {}
---@alias CS.System.Windows.Forms.VisualStyles.FilenameProperty System.Windows.Forms.VisualStyles.FilenameProperty
CS.System.Windows.Forms.VisualStyles.FilenameProperty = System.Windows.Forms.VisualStyles.FilenameProperty


---@class System.Windows.Forms.VisualStyles.FillType
---@field Solid System.Windows.Forms.VisualStyles.FillType
---@field VerticalGradient System.Windows.Forms.VisualStyles.FillType
---@field HorizontalGradient System.Windows.Forms.VisualStyles.FillType
---@field RadialGradient System.Windows.Forms.VisualStyles.FillType
---@field TileImage System.Windows.Forms.VisualStyles.FillType
System.Windows.Forms.VisualStyles.FillType = {}
---@alias CS.System.Windows.Forms.VisualStyles.FillType System.Windows.Forms.VisualStyles.FillType
CS.System.Windows.Forms.VisualStyles.FillType = System.Windows.Forms.VisualStyles.FillType


---@class System.Windows.Forms.VisualStyles.FontProperty
---@field GlyphFont System.Windows.Forms.VisualStyles.FontProperty
System.Windows.Forms.VisualStyles.FontProperty = {}
---@alias CS.System.Windows.Forms.VisualStyles.FontProperty System.Windows.Forms.VisualStyles.FontProperty
CS.System.Windows.Forms.VisualStyles.FontProperty = System.Windows.Forms.VisualStyles.FontProperty


---@class System.Windows.Forms.VisualStyles.GlyphFontSizingType
---@field None System.Windows.Forms.VisualStyles.GlyphFontSizingType
---@field Size System.Windows.Forms.VisualStyles.GlyphFontSizingType
---@field Dpi System.Windows.Forms.VisualStyles.GlyphFontSizingType
System.Windows.Forms.VisualStyles.GlyphFontSizingType = {}
---@alias CS.System.Windows.Forms.VisualStyles.GlyphFontSizingType System.Windows.Forms.VisualStyles.GlyphFontSizingType
CS.System.Windows.Forms.VisualStyles.GlyphFontSizingType = System.Windows.Forms.VisualStyles.GlyphFontSizingType


---@class System.Windows.Forms.VisualStyles.GlyphType
---@field None System.Windows.Forms.VisualStyles.GlyphType
---@field ImageGlyph System.Windows.Forms.VisualStyles.GlyphType
---@field FontGlyph System.Windows.Forms.VisualStyles.GlyphType
System.Windows.Forms.VisualStyles.GlyphType = {}
---@alias CS.System.Windows.Forms.VisualStyles.GlyphType System.Windows.Forms.VisualStyles.GlyphType
CS.System.Windows.Forms.VisualStyles.GlyphType = System.Windows.Forms.VisualStyles.GlyphType


---@class System.Windows.Forms.VisualStyles.GroupBoxState
---@field Normal System.Windows.Forms.VisualStyles.GroupBoxState
---@field Disabled System.Windows.Forms.VisualStyles.GroupBoxState
System.Windows.Forms.VisualStyles.GroupBoxState = {}
---@alias CS.System.Windows.Forms.VisualStyles.GroupBoxState System.Windows.Forms.VisualStyles.GroupBoxState
CS.System.Windows.Forms.VisualStyles.GroupBoxState = System.Windows.Forms.VisualStyles.GroupBoxState


---@class System.Windows.Forms.VisualStyles.GtkPlus : System.Object
---@field Instance System.Windows.Forms.VisualStyles.GtkPlus
System.Windows.Forms.VisualStyles.GtkPlus = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus System.Windows.Forms.VisualStyles.GtkPlus
CS.System.Windows.Forms.VisualStyles.GtkPlus = System.Windows.Forms.VisualStyles.GtkPlus

---@return boolean
function System.Windows.Forms.VisualStyles.GtkPlus.Initialize() end
---@param dc System.Drawing.IDeviceContext
---@param bounds System.Drawing.Rectangle
---@param clippingArea System.Drawing.Rectangle
---@param default boolean
---@param state System.Windows.Forms.VisualStyles.GtkPlusState
function System.Windows.Forms.VisualStyles.GtkPlus:ButtonPaint(dc, bounds, clippingArea, default, state) end
---@param dc System.Drawing.IDeviceContext
---@param bounds System.Drawing.Rectangle
---@param clippingArea System.Drawing.Rectangle
---@param state System.Windows.Forms.VisualStyles.GtkPlusState
---@param value System.Windows.Forms.VisualStyles.GtkPlusToggleButtonValue
function System.Windows.Forms.VisualStyles.GtkPlus:CheckBoxPaint(dc, bounds, clippingArea, state, value) end
---@return System.Drawing.Size
function System.Windows.Forms.VisualStyles.GtkPlus:CheckBoxGetSize() end
---@param dc System.Drawing.IDeviceContext
---@param bounds System.Drawing.Rectangle
---@param clippingArea System.Drawing.Rectangle
---@param state System.Windows.Forms.VisualStyles.GtkPlusState
function System.Windows.Forms.VisualStyles.GtkPlus:ComboBoxPaintDropDownButton(dc, bounds, clippingArea, state) end
---@param dc System.Drawing.IDeviceContext
---@param bounds System.Drawing.Rectangle
---@param clippingArea System.Drawing.Rectangle
function System.Windows.Forms.VisualStyles.GtkPlus:ComboBoxPaintBorder(dc, bounds, clippingArea) end
---@param dc System.Drawing.IDeviceContext
---@param bounds System.Drawing.Rectangle
---@param excludedArea System.Drawing.Rectangle
---@param state System.Windows.Forms.VisualStyles.GtkPlusState
function System.Windows.Forms.VisualStyles.GtkPlus:GroupBoxPaint(dc, bounds, excludedArea, state) end
---@param dc System.Drawing.IDeviceContext
---@param bounds System.Drawing.Rectangle
---@param clippingArea System.Drawing.Rectangle
---@param state System.Windows.Forms.VisualStyles.GtkPlusState
function System.Windows.Forms.VisualStyles.GtkPlus:HeaderPaint(dc, bounds, clippingArea, state) end
---@param dc System.Drawing.IDeviceContext
---@param bounds System.Drawing.Rectangle
---@param clippingArea System.Drawing.Rectangle
function System.Windows.Forms.VisualStyles.GtkPlus:ProgressBarPaintBar(dc, bounds, clippingArea) end
---@param dc System.Drawing.IDeviceContext
---@param bounds System.Drawing.Rectangle
---@param clippingArea System.Drawing.Rectangle
function System.Windows.Forms.VisualStyles.GtkPlus:ProgressBarPaintChunk(dc, bounds, clippingArea) end
---@param bounds System.Drawing.Rectangle
---@return System.Drawing.Rectangle
function System.Windows.Forms.VisualStyles.GtkPlus:ProgressBarGetBackgroundContentRectagle(bounds) end
---@param dc System.Drawing.IDeviceContext
---@param bounds System.Drawing.Rectangle
---@param clippingArea System.Drawing.Rectangle
---@param state System.Windows.Forms.VisualStyles.GtkPlusState
---@param value System.Windows.Forms.VisualStyles.GtkPlusToggleButtonValue
function System.Windows.Forms.VisualStyles.GtkPlus:RadioButtonPaint(dc, bounds, clippingArea, state, value) end
---@return System.Drawing.Size
function System.Windows.Forms.VisualStyles.GtkPlus:RadioButtonGetSize() end
---@param dc System.Drawing.IDeviceContext
---@param bounds System.Drawing.Rectangle
---@param clippingArea System.Drawing.Rectangle
---@param state System.Windows.Forms.VisualStyles.GtkPlusState
---@param horizontal boolean
---@param upOrLeft boolean
function System.Windows.Forms.VisualStyles.GtkPlus:ScrollBarPaintArrowButton(dc, bounds, clippingArea, state, horizontal, upOrLeft) end
---@param dc System.Drawing.IDeviceContext
---@param bounds System.Drawing.Rectangle
---@param clippingArea System.Drawing.Rectangle
---@param state System.Windows.Forms.VisualStyles.GtkPlusState
---@param horizontal boolean
function System.Windows.Forms.VisualStyles.GtkPlus:ScrollBarPaintThumbButton(dc, bounds, clippingArea, state, horizontal) end
---@param dc System.Drawing.IDeviceContext
---@param bounds System.Drawing.Rectangle
---@param clippingArea System.Drawing.Rectangle
---@param state System.Windows.Forms.VisualStyles.GtkPlusState
---@param horizontal boolean
---@param upOrLeft boolean
function System.Windows.Forms.VisualStyles.GtkPlus:ScrollBarPaintTrack(dc, bounds, clippingArea, state, horizontal, upOrLeft) end
---@param dc System.Drawing.IDeviceContext
---@param bounds System.Drawing.Rectangle
---@param clippingArea System.Drawing.Rectangle
function System.Windows.Forms.VisualStyles.GtkPlus:StatusBarPaintGripper(dc, bounds, clippingArea) end
---@param dc System.Drawing.IDeviceContext
---@param bounds System.Drawing.Rectangle
---@param clippingArea System.Drawing.Rectangle
function System.Windows.Forms.VisualStyles.GtkPlus:TabControlPaintPane(dc, bounds, clippingArea) end
---@param dc System.Drawing.IDeviceContext
---@param bounds System.Drawing.Rectangle
---@param clippingArea System.Drawing.Rectangle
---@param state System.Windows.Forms.VisualStyles.GtkPlusState
function System.Windows.Forms.VisualStyles.GtkPlus:TabControlPaintTabItem(dc, bounds, clippingArea, state) end
---@param dc System.Drawing.IDeviceContext
---@param bounds System.Drawing.Rectangle
---@param excludedArea System.Drawing.Rectangle
---@param state System.Windows.Forms.VisualStyles.GtkPlusState
function System.Windows.Forms.VisualStyles.GtkPlus:TextBoxPaint(dc, bounds, excludedArea, state) end
---@param dc System.Drawing.IDeviceContext
---@param bounds System.Drawing.Rectangle
---@param clippingArea System.Drawing.Rectangle
function System.Windows.Forms.VisualStyles.GtkPlus:ToolBarPaint(dc, bounds, clippingArea) end
---@param dc System.Drawing.IDeviceContext
---@param bounds System.Drawing.Rectangle
---@param clippingArea System.Drawing.Rectangle
---@param state System.Windows.Forms.VisualStyles.GtkPlusState
function System.Windows.Forms.VisualStyles.GtkPlus:ToolBarPaintButton(dc, bounds, clippingArea, state) end
---@param dc System.Drawing.IDeviceContext
---@param bounds System.Drawing.Rectangle
---@param clippingArea System.Drawing.Rectangle
function System.Windows.Forms.VisualStyles.GtkPlus:ToolBarPaintCheckedButton(dc, bounds, clippingArea) end
---@param dc System.Drawing.IDeviceContext
---@param bounds System.Drawing.Rectangle
---@param clippingArea System.Drawing.Rectangle
---@param horizontal boolean
function System.Windows.Forms.VisualStyles.GtkPlus:TrackBarPaintTrack(dc, bounds, clippingArea, horizontal) end
---@param dc System.Drawing.IDeviceContext
---@param bounds System.Drawing.Rectangle
---@param clippingArea System.Drawing.Rectangle
---@param state System.Windows.Forms.VisualStyles.GtkPlusState
---@param horizontal boolean
function System.Windows.Forms.VisualStyles.GtkPlus:TrackBarPaintThumb(dc, bounds, clippingArea, state, horizontal) end
---@param dc System.Drawing.IDeviceContext
---@param bounds System.Drawing.Rectangle
---@param clippingArea System.Drawing.Rectangle
---@param closed boolean
function System.Windows.Forms.VisualStyles.GtkPlus:TreeViewPaintGlyph(dc, bounds, clippingArea, closed) end
---@param dc System.Drawing.IDeviceContext
---@param bounds System.Drawing.Rectangle
---@param clippingArea System.Drawing.Rectangle
---@param up boolean
---@param state System.Windows.Forms.VisualStyles.GtkPlusState
function System.Windows.Forms.VisualStyles.GtkPlus:UpDownPaint(dc, bounds, clippingArea, up, state) end

---@class System.Windows.Forms.VisualStyles.GtkPlus.Painter : System.Object
System.Windows.Forms.VisualStyles.GtkPlus.Painter = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus.Painter System.Windows.Forms.VisualStyles.GtkPlus.Painter
CS.System.Windows.Forms.VisualStyles.GtkPlus.Painter = System.Windows.Forms.VisualStyles.GtkPlus.Painter

---@param widgetType System.Windows.Forms.VisualStyles.GtkPlus.WidgetType
---@param drawable System.IntPtr
---@param gtkPlus System.Windows.Forms.VisualStyles.GtkPlus
function System.Windows.Forms.VisualStyles.GtkPlus.Painter:AttachStyle(widgetType, drawable, gtkPlus) end
---@param style System.IntPtr
---@param window System.IntPtr
---@param area System.Windows.Forms.VisualStyles.GtkPlus.GdkRectangle
---@param widget System.IntPtr
---@param x number
---@param y number
---@param width number
---@param height number
---@param gtkPlus System.Windows.Forms.VisualStyles.GtkPlus
function System.Windows.Forms.VisualStyles.GtkPlus.Painter:Paint(style, window, area, widget, x, y, width, height, gtkPlus) end

---@class System.Windows.Forms.VisualStyles.GtkPlus.TransparencyType
---@field None System.Windows.Forms.VisualStyles.GtkPlus.TransparencyType
---@field Color System.Windows.Forms.VisualStyles.GtkPlus.TransparencyType
---@field Alpha System.Windows.Forms.VisualStyles.GtkPlus.TransparencyType
System.Windows.Forms.VisualStyles.GtkPlus.TransparencyType = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus.TransparencyType System.Windows.Forms.VisualStyles.GtkPlus.TransparencyType
CS.System.Windows.Forms.VisualStyles.GtkPlus.TransparencyType = System.Windows.Forms.VisualStyles.GtkPlus.TransparencyType


---@class System.Windows.Forms.VisualStyles.GtkPlus.DeviceContextType
---@field Unknown System.Windows.Forms.VisualStyles.GtkPlus.DeviceContextType
---@field Graphics System.Windows.Forms.VisualStyles.GtkPlus.DeviceContextType
---@field Native System.Windows.Forms.VisualStyles.GtkPlus.DeviceContextType
System.Windows.Forms.VisualStyles.GtkPlus.DeviceContextType = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus.DeviceContextType System.Windows.Forms.VisualStyles.GtkPlus.DeviceContextType
CS.System.Windows.Forms.VisualStyles.GtkPlus.DeviceContextType = System.Windows.Forms.VisualStyles.GtkPlus.DeviceContextType


---@class System.Windows.Forms.VisualStyles.GtkPlus.ButtonPainter : System.Windows.Forms.VisualStyles.GtkPlus.Painter
System.Windows.Forms.VisualStyles.GtkPlus.ButtonPainter = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus.ButtonPainter System.Windows.Forms.VisualStyles.GtkPlus.ButtonPainter
CS.System.Windows.Forms.VisualStyles.GtkPlus.ButtonPainter = System.Windows.Forms.VisualStyles.GtkPlus.ButtonPainter

---@return System.Windows.Forms.VisualStyles.GtkPlus.ButtonPainter
function System.Windows.Forms.VisualStyles.GtkPlus.ButtonPainter.New() end
---@param default boolean
---@param state System.Windows.Forms.VisualStyles.GtkPlusState
function System.Windows.Forms.VisualStyles.GtkPlus.ButtonPainter:Configure(default, state) end
---@param style System.IntPtr
---@param window System.IntPtr
---@param area System.Windows.Forms.VisualStyles.GtkPlus.GdkRectangle
---@param widget System.IntPtr
---@param x number
---@param y number
---@param width number
---@param height number
---@param gtkPlus System.Windows.Forms.VisualStyles.GtkPlus
function System.Windows.Forms.VisualStyles.GtkPlus.ButtonPainter:Paint(style, window, area, widget, x, y, width, height, gtkPlus) end

---@class System.Windows.Forms.VisualStyles.GtkPlus.ToggleButtonPainter : System.Windows.Forms.VisualStyles.GtkPlus.Painter
System.Windows.Forms.VisualStyles.GtkPlus.ToggleButtonPainter = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus.ToggleButtonPainter System.Windows.Forms.VisualStyles.GtkPlus.ToggleButtonPainter
CS.System.Windows.Forms.VisualStyles.GtkPlus.ToggleButtonPainter = System.Windows.Forms.VisualStyles.GtkPlus.ToggleButtonPainter

---@param state System.Windows.Forms.VisualStyles.GtkPlusState
---@param value System.Windows.Forms.VisualStyles.GtkPlusToggleButtonValue
function System.Windows.Forms.VisualStyles.GtkPlus.ToggleButtonPainter:Configure(state, value) end
---@param style System.IntPtr
---@param window System.IntPtr
---@param area System.Windows.Forms.VisualStyles.GtkPlus.GdkRectangle
---@param widget System.IntPtr
---@param x number
---@param y number
---@param width number
---@param height number
---@param gtkPlus System.Windows.Forms.VisualStyles.GtkPlus
function System.Windows.Forms.VisualStyles.GtkPlus.ToggleButtonPainter:Paint(style, window, area, widget, x, y, width, height, gtkPlus) end

---@class System.Windows.Forms.VisualStyles.GtkPlus.ToggleButtonPaintFunction : System.MulticastDelegate
System.Windows.Forms.VisualStyles.GtkPlus.ToggleButtonPaintFunction = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus.ToggleButtonPaintFunction System.Windows.Forms.VisualStyles.GtkPlus.ToggleButtonPaintFunction
CS.System.Windows.Forms.VisualStyles.GtkPlus.ToggleButtonPaintFunction = System.Windows.Forms.VisualStyles.GtkPlus.ToggleButtonPaintFunction

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.VisualStyles.GtkPlus.ToggleButtonPaintFunction
function System.Windows.Forms.VisualStyles.GtkPlus.ToggleButtonPaintFunction.New(object, method) end
---@param style System.IntPtr
---@param window System.IntPtr
---@param state_type System.Windows.Forms.VisualStyles.GtkPlus.GtkStateType
---@param shadow_type System.Windows.Forms.VisualStyles.GtkPlus.GtkShadowType
---@param ref_area System.Windows.Forms.VisualStyles.GtkPlus.GdkRectangle
---@param widget System.IntPtr
---@param detail string
---@param x number
---@param y number
---@param width number
---@param height number
---@return ,System.Windows.Forms.VisualStyles.GtkPlus.GdkRectangle
function System.Windows.Forms.VisualStyles.GtkPlus.ToggleButtonPaintFunction:Invoke(style, window, state_type, shadow_type, ref_area, widget, detail, x, y, width, height) end
---@param style System.IntPtr
---@param window System.IntPtr
---@param state_type System.Windows.Forms.VisualStyles.GtkPlus.GtkStateType
---@param shadow_type System.Windows.Forms.VisualStyles.GtkPlus.GtkShadowType
---@param ref_area System.Windows.Forms.VisualStyles.GtkPlus.GdkRectangle
---@param widget System.IntPtr
---@param detail string
---@param x number
---@param y number
---@param width number
---@param height number
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult,System.Windows.Forms.VisualStyles.GtkPlus.GdkRectangle
function System.Windows.Forms.VisualStyles.GtkPlus.ToggleButtonPaintFunction:BeginInvoke(style, window, state_type, shadow_type, ref_area, widget, detail, x, y, width, height, callback, object) end
---@param ref_area System.Windows.Forms.VisualStyles.GtkPlus.GdkRectangle
---@param result System.IAsyncResult
---@return ,System.Windows.Forms.VisualStyles.GtkPlus.GdkRectangle
function System.Windows.Forms.VisualStyles.GtkPlus.ToggleButtonPaintFunction:EndInvoke(ref_area, result) end

---@class System.Windows.Forms.VisualStyles.GtkPlus.CheckBoxPainter : System.Windows.Forms.VisualStyles.GtkPlus.ToggleButtonPainter
System.Windows.Forms.VisualStyles.GtkPlus.CheckBoxPainter = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus.CheckBoxPainter System.Windows.Forms.VisualStyles.GtkPlus.CheckBoxPainter
CS.System.Windows.Forms.VisualStyles.GtkPlus.CheckBoxPainter = System.Windows.Forms.VisualStyles.GtkPlus.CheckBoxPainter

---@return System.Windows.Forms.VisualStyles.GtkPlus.CheckBoxPainter
function System.Windows.Forms.VisualStyles.GtkPlus.CheckBoxPainter.New() end

---@class System.Windows.Forms.VisualStyles.GtkPlus.RadioButtonPainter : System.Windows.Forms.VisualStyles.GtkPlus.ToggleButtonPainter
System.Windows.Forms.VisualStyles.GtkPlus.RadioButtonPainter = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus.RadioButtonPainter System.Windows.Forms.VisualStyles.GtkPlus.RadioButtonPainter
CS.System.Windows.Forms.VisualStyles.GtkPlus.RadioButtonPainter = System.Windows.Forms.VisualStyles.GtkPlus.RadioButtonPainter

---@return System.Windows.Forms.VisualStyles.GtkPlus.RadioButtonPainter
function System.Windows.Forms.VisualStyles.GtkPlus.RadioButtonPainter.New() end

---@class System.Windows.Forms.VisualStyles.GtkPlus.ComboBoxDropDownButtonPainter : System.Windows.Forms.VisualStyles.GtkPlus.Painter
System.Windows.Forms.VisualStyles.GtkPlus.ComboBoxDropDownButtonPainter = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus.ComboBoxDropDownButtonPainter System.Windows.Forms.VisualStyles.GtkPlus.ComboBoxDropDownButtonPainter
CS.System.Windows.Forms.VisualStyles.GtkPlus.ComboBoxDropDownButtonPainter = System.Windows.Forms.VisualStyles.GtkPlus.ComboBoxDropDownButtonPainter

---@return System.Windows.Forms.VisualStyles.GtkPlus.ComboBoxDropDownButtonPainter
function System.Windows.Forms.VisualStyles.GtkPlus.ComboBoxDropDownButtonPainter.New() end
---@param state System.Windows.Forms.VisualStyles.GtkPlusState
function System.Windows.Forms.VisualStyles.GtkPlus.ComboBoxDropDownButtonPainter:Configure(state) end
---@param widgetType System.Windows.Forms.VisualStyles.GtkPlus.WidgetType
---@param drawable System.IntPtr
---@param gtkPlus System.Windows.Forms.VisualStyles.GtkPlus
function System.Windows.Forms.VisualStyles.GtkPlus.ComboBoxDropDownButtonPainter:AttachStyle(widgetType, drawable, gtkPlus) end
---@param style System.IntPtr
---@param window System.IntPtr
---@param area System.Windows.Forms.VisualStyles.GtkPlus.GdkRectangle
---@param widget System.IntPtr
---@param x number
---@param y number
---@param width number
---@param height number
---@param gtkPlus System.Windows.Forms.VisualStyles.GtkPlus
function System.Windows.Forms.VisualStyles.GtkPlus.ComboBoxDropDownButtonPainter:Paint(style, window, area, widget, x, y, width, height, gtkPlus) end

---@class System.Windows.Forms.VisualStyles.GtkPlus.ComboBoxBorderPainter : System.Windows.Forms.VisualStyles.GtkPlus.Painter
System.Windows.Forms.VisualStyles.GtkPlus.ComboBoxBorderPainter = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus.ComboBoxBorderPainter System.Windows.Forms.VisualStyles.GtkPlus.ComboBoxBorderPainter
CS.System.Windows.Forms.VisualStyles.GtkPlus.ComboBoxBorderPainter = System.Windows.Forms.VisualStyles.GtkPlus.ComboBoxBorderPainter

---@return System.Windows.Forms.VisualStyles.GtkPlus.ComboBoxBorderPainter
function System.Windows.Forms.VisualStyles.GtkPlus.ComboBoxBorderPainter.New() end
---@param style System.IntPtr
---@param window System.IntPtr
---@param area System.Windows.Forms.VisualStyles.GtkPlus.GdkRectangle
---@param widget System.IntPtr
---@param x number
---@param y number
---@param width number
---@param height number
---@param gtkPlus System.Windows.Forms.VisualStyles.GtkPlus
function System.Windows.Forms.VisualStyles.GtkPlus.ComboBoxBorderPainter:Paint(style, window, area, widget, x, y, width, height, gtkPlus) end

---@class System.Windows.Forms.VisualStyles.GtkPlus.GroupBoxPainter : System.Windows.Forms.VisualStyles.GtkPlus.Painter
System.Windows.Forms.VisualStyles.GtkPlus.GroupBoxPainter = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus.GroupBoxPainter System.Windows.Forms.VisualStyles.GtkPlus.GroupBoxPainter
CS.System.Windows.Forms.VisualStyles.GtkPlus.GroupBoxPainter = System.Windows.Forms.VisualStyles.GtkPlus.GroupBoxPainter

---@return System.Windows.Forms.VisualStyles.GtkPlus.GroupBoxPainter
function System.Windows.Forms.VisualStyles.GtkPlus.GroupBoxPainter.New() end
---@param state System.Windows.Forms.VisualStyles.GtkPlusState
function System.Windows.Forms.VisualStyles.GtkPlus.GroupBoxPainter:Configure(state) end
---@param style System.IntPtr
---@param window System.IntPtr
---@param area System.Windows.Forms.VisualStyles.GtkPlus.GdkRectangle
---@param widget System.IntPtr
---@param x number
---@param y number
---@param width number
---@param height number
---@param gtkPlus System.Windows.Forms.VisualStyles.GtkPlus
function System.Windows.Forms.VisualStyles.GtkPlus.GroupBoxPainter:Paint(style, window, area, widget, x, y, width, height, gtkPlus) end

---@class System.Windows.Forms.VisualStyles.GtkPlus.HeaderPainter : System.Windows.Forms.VisualStyles.GtkPlus.Painter
System.Windows.Forms.VisualStyles.GtkPlus.HeaderPainter = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus.HeaderPainter System.Windows.Forms.VisualStyles.GtkPlus.HeaderPainter
CS.System.Windows.Forms.VisualStyles.GtkPlus.HeaderPainter = System.Windows.Forms.VisualStyles.GtkPlus.HeaderPainter

---@return System.Windows.Forms.VisualStyles.GtkPlus.HeaderPainter
function System.Windows.Forms.VisualStyles.GtkPlus.HeaderPainter.New() end
---@param state System.Windows.Forms.VisualStyles.GtkPlusState
function System.Windows.Forms.VisualStyles.GtkPlus.HeaderPainter:Configure(state) end
---@param widgetType System.Windows.Forms.VisualStyles.GtkPlus.WidgetType
---@param drawable System.IntPtr
---@param gtkPlus System.Windows.Forms.VisualStyles.GtkPlus
function System.Windows.Forms.VisualStyles.GtkPlus.HeaderPainter:AttachStyle(widgetType, drawable, gtkPlus) end
---@param style System.IntPtr
---@param window System.IntPtr
---@param area System.Windows.Forms.VisualStyles.GtkPlus.GdkRectangle
---@param widget System.IntPtr
---@param x number
---@param y number
---@param width number
---@param height number
---@param gtkPlus System.Windows.Forms.VisualStyles.GtkPlus
function System.Windows.Forms.VisualStyles.GtkPlus.HeaderPainter:Paint(style, window, area, widget, x, y, width, height, gtkPlus) end

---@class System.Windows.Forms.VisualStyles.GtkPlus.ProgressBarBarPainter : System.Windows.Forms.VisualStyles.GtkPlus.Painter
System.Windows.Forms.VisualStyles.GtkPlus.ProgressBarBarPainter = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus.ProgressBarBarPainter System.Windows.Forms.VisualStyles.GtkPlus.ProgressBarBarPainter
CS.System.Windows.Forms.VisualStyles.GtkPlus.ProgressBarBarPainter = System.Windows.Forms.VisualStyles.GtkPlus.ProgressBarBarPainter

---@return System.Windows.Forms.VisualStyles.GtkPlus.ProgressBarBarPainter
function System.Windows.Forms.VisualStyles.GtkPlus.ProgressBarBarPainter.New() end
---@param style System.IntPtr
---@param window System.IntPtr
---@param area System.Windows.Forms.VisualStyles.GtkPlus.GdkRectangle
---@param widget System.IntPtr
---@param x number
---@param y number
---@param width number
---@param height number
---@param gtkPlus System.Windows.Forms.VisualStyles.GtkPlus
function System.Windows.Forms.VisualStyles.GtkPlus.ProgressBarBarPainter:Paint(style, window, area, widget, x, y, width, height, gtkPlus) end

---@class System.Windows.Forms.VisualStyles.GtkPlus.ProgressBarChunkPainter : System.Windows.Forms.VisualStyles.GtkPlus.Painter
System.Windows.Forms.VisualStyles.GtkPlus.ProgressBarChunkPainter = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus.ProgressBarChunkPainter System.Windows.Forms.VisualStyles.GtkPlus.ProgressBarChunkPainter
CS.System.Windows.Forms.VisualStyles.GtkPlus.ProgressBarChunkPainter = System.Windows.Forms.VisualStyles.GtkPlus.ProgressBarChunkPainter

---@return System.Windows.Forms.VisualStyles.GtkPlus.ProgressBarChunkPainter
function System.Windows.Forms.VisualStyles.GtkPlus.ProgressBarChunkPainter.New() end
---@param style System.IntPtr
---@param window System.IntPtr
---@param area System.Windows.Forms.VisualStyles.GtkPlus.GdkRectangle
---@param widget System.IntPtr
---@param x number
---@param y number
---@param width number
---@param height number
---@param gtkPlus System.Windows.Forms.VisualStyles.GtkPlus
function System.Windows.Forms.VisualStyles.GtkPlus.ProgressBarChunkPainter:Paint(style, window, area, widget, x, y, width, height, gtkPlus) end

---@class System.Windows.Forms.VisualStyles.GtkPlus.ScrollBarArrowButtonPainter : System.Windows.Forms.VisualStyles.GtkPlus.Painter
System.Windows.Forms.VisualStyles.GtkPlus.ScrollBarArrowButtonPainter = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus.ScrollBarArrowButtonPainter System.Windows.Forms.VisualStyles.GtkPlus.ScrollBarArrowButtonPainter
CS.System.Windows.Forms.VisualStyles.GtkPlus.ScrollBarArrowButtonPainter = System.Windows.Forms.VisualStyles.GtkPlus.ScrollBarArrowButtonPainter

---@return System.Windows.Forms.VisualStyles.GtkPlus.ScrollBarArrowButtonPainter
function System.Windows.Forms.VisualStyles.GtkPlus.ScrollBarArrowButtonPainter.New() end
---@param state System.Windows.Forms.VisualStyles.GtkPlusState
---@param horizontal boolean
---@param upOrLeft boolean
function System.Windows.Forms.VisualStyles.GtkPlus.ScrollBarArrowButtonPainter:Configure(state, horizontal, upOrLeft) end
---@param style System.IntPtr
---@param window System.IntPtr
---@param area System.Windows.Forms.VisualStyles.GtkPlus.GdkRectangle
---@param widget System.IntPtr
---@param x number
---@param y number
---@param width number
---@param height number
---@param gtkPlus System.Windows.Forms.VisualStyles.GtkPlus
function System.Windows.Forms.VisualStyles.GtkPlus.ScrollBarArrowButtonPainter:Paint(style, window, area, widget, x, y, width, height, gtkPlus) end

---@class System.Windows.Forms.VisualStyles.GtkPlus.RangeThumbButtonPainter : System.Windows.Forms.VisualStyles.GtkPlus.Painter
System.Windows.Forms.VisualStyles.GtkPlus.RangeThumbButtonPainter = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus.RangeThumbButtonPainter System.Windows.Forms.VisualStyles.GtkPlus.RangeThumbButtonPainter
CS.System.Windows.Forms.VisualStyles.GtkPlus.RangeThumbButtonPainter = System.Windows.Forms.VisualStyles.GtkPlus.RangeThumbButtonPainter

---@param state System.Windows.Forms.VisualStyles.GtkPlusState
---@param horizontal boolean
function System.Windows.Forms.VisualStyles.GtkPlus.RangeThumbButtonPainter:Configure(state, horizontal) end
---@param style System.IntPtr
---@param window System.IntPtr
---@param area System.Windows.Forms.VisualStyles.GtkPlus.GdkRectangle
---@param widget System.IntPtr
---@param x number
---@param y number
---@param width number
---@param height number
---@param gtkPlus System.Windows.Forms.VisualStyles.GtkPlus
function System.Windows.Forms.VisualStyles.GtkPlus.RangeThumbButtonPainter:Paint(style, window, area, widget, x, y, width, height, gtkPlus) end

---@class System.Windows.Forms.VisualStyles.GtkPlus.ScrollBarThumbButtonPainter : System.Windows.Forms.VisualStyles.GtkPlus.RangeThumbButtonPainter
System.Windows.Forms.VisualStyles.GtkPlus.ScrollBarThumbButtonPainter = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus.ScrollBarThumbButtonPainter System.Windows.Forms.VisualStyles.GtkPlus.ScrollBarThumbButtonPainter
CS.System.Windows.Forms.VisualStyles.GtkPlus.ScrollBarThumbButtonPainter = System.Windows.Forms.VisualStyles.GtkPlus.ScrollBarThumbButtonPainter

---@return System.Windows.Forms.VisualStyles.GtkPlus.ScrollBarThumbButtonPainter
function System.Windows.Forms.VisualStyles.GtkPlus.ScrollBarThumbButtonPainter.New() end

---@class System.Windows.Forms.VisualStyles.GtkPlus.ScrollBarTrackPainter : System.Windows.Forms.VisualStyles.GtkPlus.Painter
System.Windows.Forms.VisualStyles.GtkPlus.ScrollBarTrackPainter = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus.ScrollBarTrackPainter System.Windows.Forms.VisualStyles.GtkPlus.ScrollBarTrackPainter
CS.System.Windows.Forms.VisualStyles.GtkPlus.ScrollBarTrackPainter = System.Windows.Forms.VisualStyles.GtkPlus.ScrollBarTrackPainter

---@return System.Windows.Forms.VisualStyles.GtkPlus.ScrollBarTrackPainter
function System.Windows.Forms.VisualStyles.GtkPlus.ScrollBarTrackPainter.New() end
---@param state System.Windows.Forms.VisualStyles.GtkPlusState
---@param upOrLeft boolean
function System.Windows.Forms.VisualStyles.GtkPlus.ScrollBarTrackPainter:Configure(state, upOrLeft) end
---@param style System.IntPtr
---@param window System.IntPtr
---@param area System.Windows.Forms.VisualStyles.GtkPlus.GdkRectangle
---@param widget System.IntPtr
---@param x number
---@param y number
---@param width number
---@param height number
---@param gtkPlus System.Windows.Forms.VisualStyles.GtkPlus
function System.Windows.Forms.VisualStyles.GtkPlus.ScrollBarTrackPainter:Paint(style, window, area, widget, x, y, width, height, gtkPlus) end

---@class System.Windows.Forms.VisualStyles.GtkPlus.StatusBarGripperPainter : System.Windows.Forms.VisualStyles.GtkPlus.Painter
System.Windows.Forms.VisualStyles.GtkPlus.StatusBarGripperPainter = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus.StatusBarGripperPainter System.Windows.Forms.VisualStyles.GtkPlus.StatusBarGripperPainter
CS.System.Windows.Forms.VisualStyles.GtkPlus.StatusBarGripperPainter = System.Windows.Forms.VisualStyles.GtkPlus.StatusBarGripperPainter

---@return System.Windows.Forms.VisualStyles.GtkPlus.StatusBarGripperPainter
function System.Windows.Forms.VisualStyles.GtkPlus.StatusBarGripperPainter.New() end
---@param style System.IntPtr
---@param window System.IntPtr
---@param area System.Windows.Forms.VisualStyles.GtkPlus.GdkRectangle
---@param widget System.IntPtr
---@param x number
---@param y number
---@param width number
---@param height number
---@param gtkPlus System.Windows.Forms.VisualStyles.GtkPlus
function System.Windows.Forms.VisualStyles.GtkPlus.StatusBarGripperPainter:Paint(style, window, area, widget, x, y, width, height, gtkPlus) end

---@class System.Windows.Forms.VisualStyles.GtkPlus.TabControlPanePainter : System.Windows.Forms.VisualStyles.GtkPlus.Painter
System.Windows.Forms.VisualStyles.GtkPlus.TabControlPanePainter = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus.TabControlPanePainter System.Windows.Forms.VisualStyles.GtkPlus.TabControlPanePainter
CS.System.Windows.Forms.VisualStyles.GtkPlus.TabControlPanePainter = System.Windows.Forms.VisualStyles.GtkPlus.TabControlPanePainter

---@return System.Windows.Forms.VisualStyles.GtkPlus.TabControlPanePainter
function System.Windows.Forms.VisualStyles.GtkPlus.TabControlPanePainter.New() end
---@param style System.IntPtr
---@param window System.IntPtr
---@param area System.Windows.Forms.VisualStyles.GtkPlus.GdkRectangle
---@param widget System.IntPtr
---@param x number
---@param y number
---@param width number
---@param height number
---@param gtkPlus System.Windows.Forms.VisualStyles.GtkPlus
function System.Windows.Forms.VisualStyles.GtkPlus.TabControlPanePainter:Paint(style, window, area, widget, x, y, width, height, gtkPlus) end

---@class System.Windows.Forms.VisualStyles.GtkPlus.TabControlTabItemPainter : System.Windows.Forms.VisualStyles.GtkPlus.Painter
System.Windows.Forms.VisualStyles.GtkPlus.TabControlTabItemPainter = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus.TabControlTabItemPainter System.Windows.Forms.VisualStyles.GtkPlus.TabControlTabItemPainter
CS.System.Windows.Forms.VisualStyles.GtkPlus.TabControlTabItemPainter = System.Windows.Forms.VisualStyles.GtkPlus.TabControlTabItemPainter

---@return System.Windows.Forms.VisualStyles.GtkPlus.TabControlTabItemPainter
function System.Windows.Forms.VisualStyles.GtkPlus.TabControlTabItemPainter.New() end
---@param state System.Windows.Forms.VisualStyles.GtkPlusState
function System.Windows.Forms.VisualStyles.GtkPlus.TabControlTabItemPainter:Configure(state) end
---@param style System.IntPtr
---@param window System.IntPtr
---@param area System.Windows.Forms.VisualStyles.GtkPlus.GdkRectangle
---@param widget System.IntPtr
---@param x number
---@param y number
---@param width number
---@param height number
---@param gtkPlus System.Windows.Forms.VisualStyles.GtkPlus
function System.Windows.Forms.VisualStyles.GtkPlus.TabControlTabItemPainter:Paint(style, window, area, widget, x, y, width, height, gtkPlus) end

---@class System.Windows.Forms.VisualStyles.GtkPlus.TextBoxPainter : System.Windows.Forms.VisualStyles.GtkPlus.Painter
System.Windows.Forms.VisualStyles.GtkPlus.TextBoxPainter = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus.TextBoxPainter System.Windows.Forms.VisualStyles.GtkPlus.TextBoxPainter
CS.System.Windows.Forms.VisualStyles.GtkPlus.TextBoxPainter = System.Windows.Forms.VisualStyles.GtkPlus.TextBoxPainter

---@return System.Windows.Forms.VisualStyles.GtkPlus.TextBoxPainter
function System.Windows.Forms.VisualStyles.GtkPlus.TextBoxPainter.New() end
---@param state System.Windows.Forms.VisualStyles.GtkPlusState
function System.Windows.Forms.VisualStyles.GtkPlus.TextBoxPainter:Configure(state) end
---@param style System.IntPtr
---@param window System.IntPtr
---@param area System.Windows.Forms.VisualStyles.GtkPlus.GdkRectangle
---@param widget System.IntPtr
---@param x number
---@param y number
---@param width number
---@param height number
---@param gtkPlus System.Windows.Forms.VisualStyles.GtkPlus
function System.Windows.Forms.VisualStyles.GtkPlus.TextBoxPainter:Paint(style, window, area, widget, x, y, width, height, gtkPlus) end

---@class System.Windows.Forms.VisualStyles.GtkPlus.ToolBarPainter : System.Windows.Forms.VisualStyles.GtkPlus.Painter
System.Windows.Forms.VisualStyles.GtkPlus.ToolBarPainter = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus.ToolBarPainter System.Windows.Forms.VisualStyles.GtkPlus.ToolBarPainter
CS.System.Windows.Forms.VisualStyles.GtkPlus.ToolBarPainter = System.Windows.Forms.VisualStyles.GtkPlus.ToolBarPainter

---@return System.Windows.Forms.VisualStyles.GtkPlus.ToolBarPainter
function System.Windows.Forms.VisualStyles.GtkPlus.ToolBarPainter.New() end
---@param style System.IntPtr
---@param window System.IntPtr
---@param area System.Windows.Forms.VisualStyles.GtkPlus.GdkRectangle
---@param widget System.IntPtr
---@param x number
---@param y number
---@param width number
---@param height number
---@param gtkPlus System.Windows.Forms.VisualStyles.GtkPlus
function System.Windows.Forms.VisualStyles.GtkPlus.ToolBarPainter:Paint(style, window, area, widget, x, y, width, height, gtkPlus) end

---@class System.Windows.Forms.VisualStyles.GtkPlus.ToolBarButtonPainter : System.Windows.Forms.VisualStyles.GtkPlus.Painter
System.Windows.Forms.VisualStyles.GtkPlus.ToolBarButtonPainter = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus.ToolBarButtonPainter System.Windows.Forms.VisualStyles.GtkPlus.ToolBarButtonPainter
CS.System.Windows.Forms.VisualStyles.GtkPlus.ToolBarButtonPainter = System.Windows.Forms.VisualStyles.GtkPlus.ToolBarButtonPainter

---@return System.Windows.Forms.VisualStyles.GtkPlus.ToolBarButtonPainter
function System.Windows.Forms.VisualStyles.GtkPlus.ToolBarButtonPainter.New() end
---@param state System.Windows.Forms.VisualStyles.GtkPlusState
function System.Windows.Forms.VisualStyles.GtkPlus.ToolBarButtonPainter:Configure(state) end
---@param widgetType System.Windows.Forms.VisualStyles.GtkPlus.WidgetType
---@param drawable System.IntPtr
---@param gtkPlus System.Windows.Forms.VisualStyles.GtkPlus
function System.Windows.Forms.VisualStyles.GtkPlus.ToolBarButtonPainter:AttachStyle(widgetType, drawable, gtkPlus) end
---@param style System.IntPtr
---@param window System.IntPtr
---@param area System.Windows.Forms.VisualStyles.GtkPlus.GdkRectangle
---@param widget System.IntPtr
---@param x number
---@param y number
---@param width number
---@param height number
---@param gtkPlus System.Windows.Forms.VisualStyles.GtkPlus
function System.Windows.Forms.VisualStyles.GtkPlus.ToolBarButtonPainter:Paint(style, window, area, widget, x, y, width, height, gtkPlus) end

---@class System.Windows.Forms.VisualStyles.GtkPlus.ToolBarCheckedButtonPainter : System.Windows.Forms.VisualStyles.GtkPlus.Painter
System.Windows.Forms.VisualStyles.GtkPlus.ToolBarCheckedButtonPainter = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus.ToolBarCheckedButtonPainter System.Windows.Forms.VisualStyles.GtkPlus.ToolBarCheckedButtonPainter
CS.System.Windows.Forms.VisualStyles.GtkPlus.ToolBarCheckedButtonPainter = System.Windows.Forms.VisualStyles.GtkPlus.ToolBarCheckedButtonPainter

---@return System.Windows.Forms.VisualStyles.GtkPlus.ToolBarCheckedButtonPainter
function System.Windows.Forms.VisualStyles.GtkPlus.ToolBarCheckedButtonPainter.New() end
---@param widgetType System.Windows.Forms.VisualStyles.GtkPlus.WidgetType
---@param drawable System.IntPtr
---@param gtkPlus System.Windows.Forms.VisualStyles.GtkPlus
function System.Windows.Forms.VisualStyles.GtkPlus.ToolBarCheckedButtonPainter:AttachStyle(widgetType, drawable, gtkPlus) end
---@param style System.IntPtr
---@param window System.IntPtr
---@param area System.Windows.Forms.VisualStyles.GtkPlus.GdkRectangle
---@param widget System.IntPtr
---@param x number
---@param y number
---@param width number
---@param height number
---@param gtkPlus System.Windows.Forms.VisualStyles.GtkPlus
function System.Windows.Forms.VisualStyles.GtkPlus.ToolBarCheckedButtonPainter:Paint(style, window, area, widget, x, y, width, height, gtkPlus) end

---@class System.Windows.Forms.VisualStyles.GtkPlus.TrackBarTrackPainter : System.Windows.Forms.VisualStyles.GtkPlus.Painter
System.Windows.Forms.VisualStyles.GtkPlus.TrackBarTrackPainter = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus.TrackBarTrackPainter System.Windows.Forms.VisualStyles.GtkPlus.TrackBarTrackPainter
CS.System.Windows.Forms.VisualStyles.GtkPlus.TrackBarTrackPainter = System.Windows.Forms.VisualStyles.GtkPlus.TrackBarTrackPainter

---@return System.Windows.Forms.VisualStyles.GtkPlus.TrackBarTrackPainter
function System.Windows.Forms.VisualStyles.GtkPlus.TrackBarTrackPainter.New() end
---@param style System.IntPtr
---@param window System.IntPtr
---@param area System.Windows.Forms.VisualStyles.GtkPlus.GdkRectangle
---@param widget System.IntPtr
---@param x number
---@param y number
---@param width number
---@param height number
---@param gtkPlus System.Windows.Forms.VisualStyles.GtkPlus
function System.Windows.Forms.VisualStyles.GtkPlus.TrackBarTrackPainter:Paint(style, window, area, widget, x, y, width, height, gtkPlus) end

---@class System.Windows.Forms.VisualStyles.GtkPlus.TrackBarThumbPainter : System.Windows.Forms.VisualStyles.GtkPlus.RangeThumbButtonPainter
System.Windows.Forms.VisualStyles.GtkPlus.TrackBarThumbPainter = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus.TrackBarThumbPainter System.Windows.Forms.VisualStyles.GtkPlus.TrackBarThumbPainter
CS.System.Windows.Forms.VisualStyles.GtkPlus.TrackBarThumbPainter = System.Windows.Forms.VisualStyles.GtkPlus.TrackBarThumbPainter

---@return System.Windows.Forms.VisualStyles.GtkPlus.TrackBarThumbPainter
function System.Windows.Forms.VisualStyles.GtkPlus.TrackBarThumbPainter.New() end

---@class System.Windows.Forms.VisualStyles.GtkPlus.TreeViewGlyphPainter : System.Windows.Forms.VisualStyles.GtkPlus.Painter
System.Windows.Forms.VisualStyles.GtkPlus.TreeViewGlyphPainter = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus.TreeViewGlyphPainter System.Windows.Forms.VisualStyles.GtkPlus.TreeViewGlyphPainter
CS.System.Windows.Forms.VisualStyles.GtkPlus.TreeViewGlyphPainter = System.Windows.Forms.VisualStyles.GtkPlus.TreeViewGlyphPainter

---@return System.Windows.Forms.VisualStyles.GtkPlus.TreeViewGlyphPainter
function System.Windows.Forms.VisualStyles.GtkPlus.TreeViewGlyphPainter.New() end
---@param closed boolean
function System.Windows.Forms.VisualStyles.GtkPlus.TreeViewGlyphPainter:Configure(closed) end
---@param style System.IntPtr
---@param window System.IntPtr
---@param area System.Windows.Forms.VisualStyles.GtkPlus.GdkRectangle
---@param widget System.IntPtr
---@param x number
---@param y number
---@param width number
---@param height number
---@param gtkPlus System.Windows.Forms.VisualStyles.GtkPlus
function System.Windows.Forms.VisualStyles.GtkPlus.TreeViewGlyphPainter:Paint(style, window, area, widget, x, y, width, height, gtkPlus) end

---@class System.Windows.Forms.VisualStyles.GtkPlus.UpDownPainter : System.Windows.Forms.VisualStyles.GtkPlus.Painter
System.Windows.Forms.VisualStyles.GtkPlus.UpDownPainter = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus.UpDownPainter System.Windows.Forms.VisualStyles.GtkPlus.UpDownPainter
CS.System.Windows.Forms.VisualStyles.GtkPlus.UpDownPainter = System.Windows.Forms.VisualStyles.GtkPlus.UpDownPainter

---@return System.Windows.Forms.VisualStyles.GtkPlus.UpDownPainter
function System.Windows.Forms.VisualStyles.GtkPlus.UpDownPainter.New() end
---@param up boolean
---@param state System.Windows.Forms.VisualStyles.GtkPlusState
function System.Windows.Forms.VisualStyles.GtkPlus.UpDownPainter:Configure(up, state) end
---@param style System.IntPtr
---@param window System.IntPtr
---@param area System.Windows.Forms.VisualStyles.GtkPlus.GdkRectangle
---@param widget System.IntPtr
---@param x number
---@param y number
---@param width number
---@param height number
---@param gtkPlus System.Windows.Forms.VisualStyles.GtkPlus
function System.Windows.Forms.VisualStyles.GtkPlus.UpDownPainter:Paint(style, window, area, widget, x, y, width, height, gtkPlus) end

---@class System.Windows.Forms.VisualStyles.GtkPlus.WidgetType
---@field Button System.Windows.Forms.VisualStyles.GtkPlus.WidgetType
---@field CheckBox System.Windows.Forms.VisualStyles.GtkPlus.WidgetType
---@field ComboBox System.Windows.Forms.VisualStyles.GtkPlus.WidgetType
---@field GroupBox System.Windows.Forms.VisualStyles.GtkPlus.WidgetType
---@field ProgressBar System.Windows.Forms.VisualStyles.GtkPlus.WidgetType
---@field RadioButton System.Windows.Forms.VisualStyles.GtkPlus.WidgetType
---@field HScrollBar System.Windows.Forms.VisualStyles.GtkPlus.WidgetType
---@field VScrollBar System.Windows.Forms.VisualStyles.GtkPlus.WidgetType
---@field StatusBar System.Windows.Forms.VisualStyles.GtkPlus.WidgetType
---@field TabControl System.Windows.Forms.VisualStyles.GtkPlus.WidgetType
---@field TextBox System.Windows.Forms.VisualStyles.GtkPlus.WidgetType
---@field ToolBar System.Windows.Forms.VisualStyles.GtkPlus.WidgetType
---@field HorizontalTrackBar System.Windows.Forms.VisualStyles.GtkPlus.WidgetType
---@field VerticalTrackBar System.Windows.Forms.VisualStyles.GtkPlus.WidgetType
---@field TreeView System.Windows.Forms.VisualStyles.GtkPlus.WidgetType
---@field UpDown System.Windows.Forms.VisualStyles.GtkPlus.WidgetType
System.Windows.Forms.VisualStyles.GtkPlus.WidgetType = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus.WidgetType System.Windows.Forms.VisualStyles.GtkPlus.WidgetType
CS.System.Windows.Forms.VisualStyles.GtkPlus.WidgetType = System.Windows.Forms.VisualStyles.GtkPlus.WidgetType


---@class System.Windows.Forms.VisualStyles.GtkPlus.GetFirstChildWidgetOfType : System.Object
System.Windows.Forms.VisualStyles.GtkPlus.GetFirstChildWidgetOfType = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus.GetFirstChildWidgetOfType System.Windows.Forms.VisualStyles.GtkPlus.GetFirstChildWidgetOfType
CS.System.Windows.Forms.VisualStyles.GtkPlus.GetFirstChildWidgetOfType = System.Windows.Forms.VisualStyles.GtkPlus.GetFirstChildWidgetOfType

---@param parent System.IntPtr
---@param childType System.IntPtr
---@return System.IntPtr
function System.Windows.Forms.VisualStyles.GtkPlus.GetFirstChildWidgetOfType.Get(parent, childType) end

---@class System.Windows.Forms.VisualStyles.GtkPlus.GdkColor : System.ValueType
---@field pixel number
---@field red number
---@field green number
---@field blue number
System.Windows.Forms.VisualStyles.GtkPlus.GdkColor = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus.GdkColor System.Windows.Forms.VisualStyles.GtkPlus.GdkColor
CS.System.Windows.Forms.VisualStyles.GtkPlus.GdkColor = System.Windows.Forms.VisualStyles.GtkPlus.GdkColor

---@param value System.Drawing.Color
---@return System.Windows.Forms.VisualStyles.GtkPlus.GdkColor
function System.Windows.Forms.VisualStyles.GtkPlus.GdkColor.New(value) end

---@class System.Windows.Forms.VisualStyles.GtkPlus.GdkRectangle : System.ValueType
---@field x number
---@field y number
---@field width number
---@field height number
System.Windows.Forms.VisualStyles.GtkPlus.GdkRectangle = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus.GdkRectangle System.Windows.Forms.VisualStyles.GtkPlus.GdkRectangle
CS.System.Windows.Forms.VisualStyles.GtkPlus.GdkRectangle = System.Windows.Forms.VisualStyles.GtkPlus.GdkRectangle

---@param value System.Drawing.Rectangle
---@return System.Windows.Forms.VisualStyles.GtkPlus.GdkRectangle
function System.Windows.Forms.VisualStyles.GtkPlus.GdkRectangle.New(value) end

---@class System.Windows.Forms.VisualStyles.GtkPlus.GdkColorspace
---@field GDK_COLORSPACE_RGB System.Windows.Forms.VisualStyles.GtkPlus.GdkColorspace
System.Windows.Forms.VisualStyles.GtkPlus.GdkColorspace = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus.GdkColorspace System.Windows.Forms.VisualStyles.GtkPlus.GdkColorspace
CS.System.Windows.Forms.VisualStyles.GtkPlus.GdkColorspace = System.Windows.Forms.VisualStyles.GtkPlus.GdkColorspace


---@class System.Windows.Forms.VisualStyles.GtkPlus.GtkCallback : System.MulticastDelegate
System.Windows.Forms.VisualStyles.GtkPlus.GtkCallback = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus.GtkCallback System.Windows.Forms.VisualStyles.GtkPlus.GtkCallback
CS.System.Windows.Forms.VisualStyles.GtkPlus.GtkCallback = System.Windows.Forms.VisualStyles.GtkPlus.GtkCallback

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.VisualStyles.GtkPlus.GtkCallback
function System.Windows.Forms.VisualStyles.GtkPlus.GtkCallback.New(object, method) end
---@param widget System.IntPtr
---@param data System.IntPtr
function System.Windows.Forms.VisualStyles.GtkPlus.GtkCallback:Invoke(widget, data) end
---@param widget System.IntPtr
---@param data System.IntPtr
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Windows.Forms.VisualStyles.GtkPlus.GtkCallback:BeginInvoke(widget, data, callback, object) end
---@param result System.IAsyncResult
function System.Windows.Forms.VisualStyles.GtkPlus.GtkCallback:EndInvoke(result) end

---@class System.Windows.Forms.VisualStyles.GtkPlus.GtkShadowType
---@field GTK_SHADOW_NONE System.Windows.Forms.VisualStyles.GtkPlus.GtkShadowType
---@field GTK_SHADOW_IN System.Windows.Forms.VisualStyles.GtkPlus.GtkShadowType
---@field GTK_SHADOW_OUT System.Windows.Forms.VisualStyles.GtkPlus.GtkShadowType
---@field GTK_SHADOW_ETCHED_IN System.Windows.Forms.VisualStyles.GtkPlus.GtkShadowType
---@field GTK_SHADOW_ETCHED_OUT System.Windows.Forms.VisualStyles.GtkPlus.GtkShadowType
System.Windows.Forms.VisualStyles.GtkPlus.GtkShadowType = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus.GtkShadowType System.Windows.Forms.VisualStyles.GtkPlus.GtkShadowType
CS.System.Windows.Forms.VisualStyles.GtkPlus.GtkShadowType = System.Windows.Forms.VisualStyles.GtkPlus.GtkShadowType


---@class System.Windows.Forms.VisualStyles.GtkPlus.GtkStateType
---@field GTK_STATE_NORMAL System.Windows.Forms.VisualStyles.GtkPlus.GtkStateType
---@field GTK_STATE_ACTIVE System.Windows.Forms.VisualStyles.GtkPlus.GtkStateType
---@field GTK_STATE_PRELIGHT System.Windows.Forms.VisualStyles.GtkPlus.GtkStateType
---@field GTK_STATE_SELECTED System.Windows.Forms.VisualStyles.GtkPlus.GtkStateType
---@field GTK_STATE_INSENSITIVE System.Windows.Forms.VisualStyles.GtkPlus.GtkStateType
System.Windows.Forms.VisualStyles.GtkPlus.GtkStateType = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus.GtkStateType System.Windows.Forms.VisualStyles.GtkPlus.GtkStateType
CS.System.Windows.Forms.VisualStyles.GtkPlus.GtkStateType = System.Windows.Forms.VisualStyles.GtkPlus.GtkStateType


---@class System.Windows.Forms.VisualStyles.GtkPlus.GtkWindowType
---@field GTK_WINDOW_TOPLEVEL System.Windows.Forms.VisualStyles.GtkPlus.GtkWindowType
---@field GTK_WINDOW_POPUP System.Windows.Forms.VisualStyles.GtkPlus.GtkWindowType
System.Windows.Forms.VisualStyles.GtkPlus.GtkWindowType = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus.GtkWindowType System.Windows.Forms.VisualStyles.GtkPlus.GtkWindowType
CS.System.Windows.Forms.VisualStyles.GtkPlus.GtkWindowType = System.Windows.Forms.VisualStyles.GtkPlus.GtkWindowType


---@class System.Windows.Forms.VisualStyles.GtkPlus.GtkArrowType
---@field GTK_ARROW_UP System.Windows.Forms.VisualStyles.GtkPlus.GtkArrowType
---@field GTK_ARROW_DOWN System.Windows.Forms.VisualStyles.GtkPlus.GtkArrowType
---@field GTK_ARROW_LEFT System.Windows.Forms.VisualStyles.GtkPlus.GtkArrowType
---@field GTK_ARROW_RIGHT System.Windows.Forms.VisualStyles.GtkPlus.GtkArrowType
---@field GTK_ARROW_NONE System.Windows.Forms.VisualStyles.GtkPlus.GtkArrowType
System.Windows.Forms.VisualStyles.GtkPlus.GtkArrowType = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus.GtkArrowType System.Windows.Forms.VisualStyles.GtkPlus.GtkArrowType
CS.System.Windows.Forms.VisualStyles.GtkPlus.GtkArrowType = System.Windows.Forms.VisualStyles.GtkPlus.GtkArrowType


---@class System.Windows.Forms.VisualStyles.GtkPlus.GtkOrientation
---@field GTK_ORIENTATION_HORIZONTAL System.Windows.Forms.VisualStyles.GtkPlus.GtkOrientation
---@field GTK_ORIENTATION_VERTICAL System.Windows.Forms.VisualStyles.GtkPlus.GtkOrientation
System.Windows.Forms.VisualStyles.GtkPlus.GtkOrientation = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus.GtkOrientation System.Windows.Forms.VisualStyles.GtkPlus.GtkOrientation
CS.System.Windows.Forms.VisualStyles.GtkPlus.GtkOrientation = System.Windows.Forms.VisualStyles.GtkPlus.GtkOrientation


---@class System.Windows.Forms.VisualStyles.GtkPlus.GtkExpanderStyle
---@field GTK_EXPANDER_COLLAPSED System.Windows.Forms.VisualStyles.GtkPlus.GtkExpanderStyle
---@field GTK_EXPANDER_SEMI_COLLAPSED System.Windows.Forms.VisualStyles.GtkPlus.GtkExpanderStyle
---@field GTK_EXPANDER_SEMI_EXPANDED System.Windows.Forms.VisualStyles.GtkPlus.GtkExpanderStyle
---@field GTK_EXPANDER_EXPANDED System.Windows.Forms.VisualStyles.GtkPlus.GtkExpanderStyle
System.Windows.Forms.VisualStyles.GtkPlus.GtkExpanderStyle = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus.GtkExpanderStyle System.Windows.Forms.VisualStyles.GtkPlus.GtkExpanderStyle
CS.System.Windows.Forms.VisualStyles.GtkPlus.GtkExpanderStyle = System.Windows.Forms.VisualStyles.GtkPlus.GtkExpanderStyle


---@class System.Windows.Forms.VisualStyles.GtkPlus.GtkPositionType
---@field GTK_POS_LEFT System.Windows.Forms.VisualStyles.GtkPlus.GtkPositionType
---@field GTK_POS_RIGHT System.Windows.Forms.VisualStyles.GtkPlus.GtkPositionType
---@field GTK_POS_TOP System.Windows.Forms.VisualStyles.GtkPlus.GtkPositionType
---@field GTK_POS_BOTTOM System.Windows.Forms.VisualStyles.GtkPlus.GtkPositionType
System.Windows.Forms.VisualStyles.GtkPlus.GtkPositionType = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus.GtkPositionType System.Windows.Forms.VisualStyles.GtkPlus.GtkPositionType
CS.System.Windows.Forms.VisualStyles.GtkPlus.GtkPositionType = System.Windows.Forms.VisualStyles.GtkPlus.GtkPositionType


---@class System.Windows.Forms.VisualStyles.GtkPlus.GtkWidgetFlags
---@field GTK_CAN_DEFAULT System.Windows.Forms.VisualStyles.GtkPlus.GtkWidgetFlags
System.Windows.Forms.VisualStyles.GtkPlus.GtkWidgetFlags = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus.GtkWidgetFlags System.Windows.Forms.VisualStyles.GtkPlus.GtkWidgetFlags
CS.System.Windows.Forms.VisualStyles.GtkPlus.GtkWidgetFlags = System.Windows.Forms.VisualStyles.GtkPlus.GtkWidgetFlags


---@class System.Windows.Forms.VisualStyles.GtkPlus.GdkWindowEdge
---@field GDK_WINDOW_EDGE_NORTH_WEST System.Windows.Forms.VisualStyles.GtkPlus.GdkWindowEdge
---@field GDK_WINDOW_EDGE_NORTH System.Windows.Forms.VisualStyles.GtkPlus.GdkWindowEdge
---@field GDK_WINDOW_EDGE_NORTH_EAST System.Windows.Forms.VisualStyles.GtkPlus.GdkWindowEdge
---@field GDK_WINDOW_EDGE_WEST System.Windows.Forms.VisualStyles.GtkPlus.GdkWindowEdge
---@field GDK_WINDOW_EDGE_EAST System.Windows.Forms.VisualStyles.GtkPlus.GdkWindowEdge
---@field GDK_WINDOW_EDGE_SOUTH_WEST System.Windows.Forms.VisualStyles.GtkPlus.GdkWindowEdge
---@field GDK_WINDOW_EDGE_SOUTH System.Windows.Forms.VisualStyles.GtkPlus.GdkWindowEdge
---@field GDK_WINDOW_EDGE_SOUTH_EAST System.Windows.Forms.VisualStyles.GtkPlus.GdkWindowEdge
System.Windows.Forms.VisualStyles.GtkPlus.GdkWindowEdge = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus.GdkWindowEdge System.Windows.Forms.VisualStyles.GtkPlus.GdkWindowEdge
CS.System.Windows.Forms.VisualStyles.GtkPlus.GdkWindowEdge = System.Windows.Forms.VisualStyles.GtkPlus.GdkWindowEdge


---@class System.Windows.Forms.VisualStyles.GtkPlus.GtkStyle : System.ValueType
---@field xthickness number
---@field ythickness number
System.Windows.Forms.VisualStyles.GtkPlus.GtkStyle = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus.GtkStyle System.Windows.Forms.VisualStyles.GtkPlus.GtkStyle
CS.System.Windows.Forms.VisualStyles.GtkPlus.GtkStyle = System.Windows.Forms.VisualStyles.GtkPlus.GtkStyle


---@class System.Windows.Forms.VisualStyles.GtkPlus.GtkWidget : System.ValueType
---@field allocation System.Windows.Forms.VisualStyles.GtkPlus.GdkRectangle
System.Windows.Forms.VisualStyles.GtkPlus.GtkWidget = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus.GtkWidget System.Windows.Forms.VisualStyles.GtkPlus.GtkWidget
CS.System.Windows.Forms.VisualStyles.GtkPlus.GtkWidget = System.Windows.Forms.VisualStyles.GtkPlus.GtkWidget


---@class System.Windows.Forms.VisualStyles.GtkPlus.GtkObject : System.ValueType
---@field flags number
System.Windows.Forms.VisualStyles.GtkPlus.GtkObject = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus.GtkObject System.Windows.Forms.VisualStyles.GtkPlus.GtkObject
CS.System.Windows.Forms.VisualStyles.GtkPlus.GtkObject = System.Windows.Forms.VisualStyles.GtkPlus.GtkObject


---@class System.Windows.Forms.VisualStyles.GtkPlus.GtkRequisition : System.ValueType
System.Windows.Forms.VisualStyles.GtkPlus.GtkRequisition = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus.GtkRequisition System.Windows.Forms.VisualStyles.GtkPlus.GtkRequisition
CS.System.Windows.Forms.VisualStyles.GtkPlus.GtkRequisition = System.Windows.Forms.VisualStyles.GtkPlus.GtkRequisition


---@class System.Windows.Forms.VisualStyles.GtkPlus.GtkMisc : System.ValueType
---@field xalign number
---@field yalign number
---@field xpad number
---@field ypad number
System.Windows.Forms.VisualStyles.GtkPlus.GtkMisc = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus.GtkMisc System.Windows.Forms.VisualStyles.GtkPlus.GtkMisc
CS.System.Windows.Forms.VisualStyles.GtkPlus.GtkMisc = System.Windows.Forms.VisualStyles.GtkPlus.GtkMisc


---@class System.Windows.Forms.VisualStyles.GtkPlus.GtkTreeViewColumn : System.ValueType
---@field button System.IntPtr
System.Windows.Forms.VisualStyles.GtkPlus.GtkTreeViewColumn = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus.GtkTreeViewColumn System.Windows.Forms.VisualStyles.GtkPlus.GtkTreeViewColumn
CS.System.Windows.Forms.VisualStyles.GtkPlus.GtkTreeViewColumn = System.Windows.Forms.VisualStyles.GtkPlus.GtkTreeViewColumn


---@class System.Windows.Forms.VisualStyles.GtkPlus.G_TYPE
System.Windows.Forms.VisualStyles.GtkPlus.G_TYPE = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus.G_TYPE System.Windows.Forms.VisualStyles.GtkPlus.G_TYPE
CS.System.Windows.Forms.VisualStyles.GtkPlus.G_TYPE = System.Windows.Forms.VisualStyles.GtkPlus.G_TYPE


---@class System.Windows.Forms.VisualStyles.GtkPlus.GTypeInstance : System.ValueType
System.Windows.Forms.VisualStyles.GtkPlus.GTypeInstance = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus.GTypeInstance System.Windows.Forms.VisualStyles.GtkPlus.GTypeInstance
CS.System.Windows.Forms.VisualStyles.GtkPlus.GTypeInstance = System.Windows.Forms.VisualStyles.GtkPlus.GTypeInstance


---@class System.Windows.Forms.VisualStyles.GtkPlus.GObject : System.ValueType
System.Windows.Forms.VisualStyles.GtkPlus.GObject = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlus.GObject System.Windows.Forms.VisualStyles.GtkPlus.GObject
CS.System.Windows.Forms.VisualStyles.GtkPlus.GObject = System.Windows.Forms.VisualStyles.GtkPlus.GObject


---@class System.Windows.Forms.VisualStyles.GtkPlusToggleButtonValue
---@field Unchecked System.Windows.Forms.VisualStyles.GtkPlusToggleButtonValue
---@field Mixed System.Windows.Forms.VisualStyles.GtkPlusToggleButtonValue
---@field Checked System.Windows.Forms.VisualStyles.GtkPlusToggleButtonValue
System.Windows.Forms.VisualStyles.GtkPlusToggleButtonValue = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlusToggleButtonValue System.Windows.Forms.VisualStyles.GtkPlusToggleButtonValue
CS.System.Windows.Forms.VisualStyles.GtkPlusToggleButtonValue = System.Windows.Forms.VisualStyles.GtkPlusToggleButtonValue


---@class System.Windows.Forms.VisualStyles.GtkPlusState
---@field Normal System.Windows.Forms.VisualStyles.GtkPlusState
---@field Pressed System.Windows.Forms.VisualStyles.GtkPlusState
---@field Hot System.Windows.Forms.VisualStyles.GtkPlusState
---@field Selected System.Windows.Forms.VisualStyles.GtkPlusState
---@field Disabled System.Windows.Forms.VisualStyles.GtkPlusState
System.Windows.Forms.VisualStyles.GtkPlusState = {}
---@alias CS.System.Windows.Forms.VisualStyles.GtkPlusState System.Windows.Forms.VisualStyles.GtkPlusState
CS.System.Windows.Forms.VisualStyles.GtkPlusState = System.Windows.Forms.VisualStyles.GtkPlusState


---@class System.Windows.Forms.VisualStyles.HitTestCode
---@field Nowhere System.Windows.Forms.VisualStyles.HitTestCode
---@field Client System.Windows.Forms.VisualStyles.HitTestCode
---@field Left System.Windows.Forms.VisualStyles.HitTestCode
---@field Right System.Windows.Forms.VisualStyles.HitTestCode
---@field Top System.Windows.Forms.VisualStyles.HitTestCode
---@field TopLeft System.Windows.Forms.VisualStyles.HitTestCode
---@field TopRight System.Windows.Forms.VisualStyles.HitTestCode
---@field Bottom System.Windows.Forms.VisualStyles.HitTestCode
---@field BottomLeft System.Windows.Forms.VisualStyles.HitTestCode
---@field BottomRight System.Windows.Forms.VisualStyles.HitTestCode
System.Windows.Forms.VisualStyles.HitTestCode = {}
---@alias CS.System.Windows.Forms.VisualStyles.HitTestCode System.Windows.Forms.VisualStyles.HitTestCode
CS.System.Windows.Forms.VisualStyles.HitTestCode = System.Windows.Forms.VisualStyles.HitTestCode


---@class System.Windows.Forms.VisualStyles.HitTestOptions
---@field BackgroundSegment System.Windows.Forms.VisualStyles.HitTestOptions
---@field FixedBorder System.Windows.Forms.VisualStyles.HitTestOptions
---@field Caption System.Windows.Forms.VisualStyles.HitTestOptions
---@field ResizingBorderLeft System.Windows.Forms.VisualStyles.HitTestOptions
---@field ResizingBorderTop System.Windows.Forms.VisualStyles.HitTestOptions
---@field ResizingBorderRight System.Windows.Forms.VisualStyles.HitTestOptions
---@field ResizingBorderBottom System.Windows.Forms.VisualStyles.HitTestOptions
---@field ResizingBorder System.Windows.Forms.VisualStyles.HitTestOptions
---@field SizingTemplate System.Windows.Forms.VisualStyles.HitTestOptions
---@field SystemSizingMargins System.Windows.Forms.VisualStyles.HitTestOptions
System.Windows.Forms.VisualStyles.HitTestOptions = {}
---@alias CS.System.Windows.Forms.VisualStyles.HitTestOptions System.Windows.Forms.VisualStyles.HitTestOptions
CS.System.Windows.Forms.VisualStyles.HitTestOptions = System.Windows.Forms.VisualStyles.HitTestOptions


---@class System.Windows.Forms.VisualStyles.HorizontalAlign
---@field Left System.Windows.Forms.VisualStyles.HorizontalAlign
---@field Center System.Windows.Forms.VisualStyles.HorizontalAlign
---@field Right System.Windows.Forms.VisualStyles.HorizontalAlign
System.Windows.Forms.VisualStyles.HorizontalAlign = {}
---@alias CS.System.Windows.Forms.VisualStyles.HorizontalAlign System.Windows.Forms.VisualStyles.HorizontalAlign
CS.System.Windows.Forms.VisualStyles.HorizontalAlign = System.Windows.Forms.VisualStyles.HorizontalAlign


---@class System.Windows.Forms.VisualStyles.IVisualStyles
---@field VisualStyleInformationAuthor string
---@field VisualStyleInformationColorScheme string
---@field VisualStyleInformationCompany string
---@field VisualStyleInformationControlHighlightHot System.Drawing.Color
---@field VisualStyleInformationCopyright string
---@field VisualStyleInformationDescription string
---@field VisualStyleInformationDisplayName string
---@field VisualStyleInformationFileName string
---@field VisualStyleInformationIsSupportedByOS boolean
---@field VisualStyleInformationMinimumColorDepth number
---@field VisualStyleInformationSize string
---@field VisualStyleInformationSupportsFlatMenus boolean
---@field VisualStyleInformationTextControlBorder System.Drawing.Color
---@field VisualStyleInformationUrl string
---@field VisualStyleInformationVersion string
System.Windows.Forms.VisualStyles.IVisualStyles = {}
---@alias CS.System.Windows.Forms.VisualStyles.IVisualStyles System.Windows.Forms.VisualStyles.IVisualStyles
CS.System.Windows.Forms.VisualStyles.IVisualStyles = System.Windows.Forms.VisualStyles.IVisualStyles

---@param hTheme System.IntPtr
---@return number
function System.Windows.Forms.VisualStyles.IVisualStyles:UxThemeCloseThemeData(hTheme) end
---@overload fun(self: System.Windows.Forms.VisualStyles.IVisualStyles, hTheme: System.IntPtr, dc: System.Drawing.IDeviceContext, iPartId: number, iStateId: number, bounds: System.Drawing.Rectangle) : number
---@param hTheme System.IntPtr
---@param dc System.Drawing.IDeviceContext
---@param iPartId number
---@param iStateId number
---@param bounds System.Drawing.Rectangle
---@param clipRectangle System.Drawing.Rectangle
---@return number
function System.Windows.Forms.VisualStyles.IVisualStyles:UxThemeDrawThemeBackground(hTheme, dc, iPartId, iStateId, bounds, clipRectangle) end
---@param hTheme System.IntPtr
---@param dc System.Drawing.IDeviceContext
---@param iPartId number
---@param iStateId number
---@param bounds System.Drawing.Rectangle
---@param edges System.Windows.Forms.VisualStyles.Edges
---@param style System.Windows.Forms.VisualStyles.EdgeStyle
---@param effects System.Windows.Forms.VisualStyles.EdgeEffects
---@param out_result System.Drawing.Rectangle
---@return number,System.Drawing.Rectangle
function System.Windows.Forms.VisualStyles.IVisualStyles:UxThemeDrawThemeEdge(hTheme, dc, iPartId, iStateId, bounds, edges, style, effects, out_result) end
---@param dc System.Drawing.IDeviceContext
---@param bounds System.Drawing.Rectangle
---@param childControl System.Windows.Forms.Control
---@return number
function System.Windows.Forms.VisualStyles.IVisualStyles:UxThemeDrawThemeParentBackground(dc, bounds, childControl) end
---@param hTheme System.IntPtr
---@param dc System.Drawing.IDeviceContext
---@param iPartId number
---@param iStateId number
---@param text string
---@param textFlags System.Windows.Forms.TextFormatFlags
---@param bounds System.Drawing.Rectangle
---@return number
function System.Windows.Forms.VisualStyles.IVisualStyles:UxThemeDrawThemeText(hTheme, dc, iPartId, iStateId, text, textFlags, bounds) end
---@param hTheme System.IntPtr
---@param dc System.Drawing.IDeviceContext
---@param iPartId number
---@param iStateId number
---@param bounds System.Drawing.Rectangle
---@param out_result System.Drawing.Rectangle
---@return number,System.Drawing.Rectangle
function System.Windows.Forms.VisualStyles.IVisualStyles:UxThemeGetThemeBackgroundContentRect(hTheme, dc, iPartId, iStateId, bounds, out_result) end
---@param hTheme System.IntPtr
---@param dc System.Drawing.IDeviceContext
---@param iPartId number
---@param iStateId number
---@param contentBounds System.Drawing.Rectangle
---@param out_result System.Drawing.Rectangle
---@return number,System.Drawing.Rectangle
function System.Windows.Forms.VisualStyles.IVisualStyles:UxThemeGetThemeBackgroundExtent(hTheme, dc, iPartId, iStateId, contentBounds, out_result) end
---@param hTheme System.IntPtr
---@param dc System.Drawing.IDeviceContext
---@param iPartId number
---@param iStateId number
---@param bounds System.Drawing.Rectangle
---@param out_result System.Drawing.Region
---@return number,System.Drawing.Region
function System.Windows.Forms.VisualStyles.IVisualStyles:UxThemeGetThemeBackgroundRegion(hTheme, dc, iPartId, iStateId, bounds, out_result) end
---@param hTheme System.IntPtr
---@param iPartId number
---@param iStateId number
---@param prop System.Windows.Forms.VisualStyles.BooleanProperty
---@param out_result boolean
---@return number,boolean
function System.Windows.Forms.VisualStyles.IVisualStyles:UxThemeGetThemeBool(hTheme, iPartId, iStateId, prop, out_result) end
---@param hTheme System.IntPtr
---@param iPartId number
---@param iStateId number
---@param prop System.Windows.Forms.VisualStyles.ColorProperty
---@param out_result System.Drawing.Color
---@return number,System.Drawing.Color
function System.Windows.Forms.VisualStyles.IVisualStyles:UxThemeGetThemeColor(hTheme, iPartId, iStateId, prop, out_result) end
---@param hTheme System.IntPtr
---@param iPartId number
---@param iStateId number
---@param prop System.Windows.Forms.VisualStyles.EnumProperty
---@param out_result number
---@return number,number
function System.Windows.Forms.VisualStyles.IVisualStyles:UxThemeGetThemeEnumValue(hTheme, iPartId, iStateId, prop, out_result) end
---@param hTheme System.IntPtr
---@param iPartId number
---@param iStateId number
---@param prop System.Windows.Forms.VisualStyles.FilenameProperty
---@param out_result string
---@return number,string
function System.Windows.Forms.VisualStyles.IVisualStyles:UxThemeGetThemeFilename(hTheme, iPartId, iStateId, prop, out_result) end
---@param hTheme System.IntPtr
---@param iPartId number
---@param iStateId number
---@param prop System.Windows.Forms.VisualStyles.IntegerProperty
---@param out_result number
---@return number,number
function System.Windows.Forms.VisualStyles.IVisualStyles:UxThemeGetThemeInt(hTheme, iPartId, iStateId, prop, out_result) end
---@param hTheme System.IntPtr
---@param dc System.Drawing.IDeviceContext
---@param iPartId number
---@param iStateId number
---@param prop System.Windows.Forms.VisualStyles.MarginProperty
---@param out_result System.Windows.Forms.Padding
---@return number,System.Windows.Forms.Padding
function System.Windows.Forms.VisualStyles.IVisualStyles:UxThemeGetThemeMargins(hTheme, dc, iPartId, iStateId, prop, out_result) end
---@overload fun(self: System.Windows.Forms.VisualStyles.IVisualStyles, hTheme: System.IntPtr, dc: System.Drawing.IDeviceContext, iPartId: number, iStateId: number, bounds: System.Drawing.Rectangle, type: System.Windows.Forms.VisualStyles.ThemeSizeType, out_result: System.Drawing.Size) : number, System.Drawing.Size
---@param hTheme System.IntPtr
---@param dc System.Drawing.IDeviceContext
---@param iPartId number
---@param iStateId number
---@param type System.Windows.Forms.VisualStyles.ThemeSizeType
---@param out_result System.Drawing.Size
---@return number,System.Drawing.Size
function System.Windows.Forms.VisualStyles.IVisualStyles:UxThemeGetThemePartSize(hTheme, dc, iPartId, iStateId, type, out_result) end
---@param hTheme System.IntPtr
---@param iPartId number
---@param iStateId number
---@param prop System.Windows.Forms.VisualStyles.PointProperty
---@param out_result System.Drawing.Point
---@return number,System.Drawing.Point
function System.Windows.Forms.VisualStyles.IVisualStyles:UxThemeGetThemePosition(hTheme, iPartId, iStateId, prop, out_result) end
---@param hTheme System.IntPtr
---@param iPartId number
---@param iStateId number
---@param prop System.Windows.Forms.VisualStyles.StringProperty
---@param out_result string
---@return number,string
function System.Windows.Forms.VisualStyles.IVisualStyles:UxThemeGetThemeString(hTheme, iPartId, iStateId, prop, out_result) end
---@overload fun(self: System.Windows.Forms.VisualStyles.IVisualStyles, hTheme: System.IntPtr, dc: System.Drawing.IDeviceContext, iPartId: number, iStateId: number, textToDraw: string, flags: System.Windows.Forms.TextFormatFlags, bounds: System.Drawing.Rectangle, out_result: System.Drawing.Rectangle) : number, System.Drawing.Rectangle
---@param hTheme System.IntPtr
---@param dc System.Drawing.IDeviceContext
---@param iPartId number
---@param iStateId number
---@param textToDraw string
---@param flags System.Windows.Forms.TextFormatFlags
---@param out_result System.Drawing.Rectangle
---@return number,System.Drawing.Rectangle
function System.Windows.Forms.VisualStyles.IVisualStyles:UxThemeGetThemeTextExtent(hTheme, dc, iPartId, iStateId, textToDraw, flags, out_result) end
---@param hTheme System.IntPtr
---@param dc System.Drawing.IDeviceContext
---@param iPartId number
---@param iStateId number
---@param out_result System.Windows.Forms.VisualStyles.TextMetrics
---@return number,System.Windows.Forms.VisualStyles.TextMetrics
function System.Windows.Forms.VisualStyles.IVisualStyles:UxThemeGetThemeTextMetrics(hTheme, dc, iPartId, iStateId, out_result) end
---@param hTheme System.IntPtr
---@param dc System.Drawing.IDeviceContext
---@param iPartId number
---@param iStateId number
---@param options System.Windows.Forms.VisualStyles.HitTestOptions
---@param backgroundRectangle System.Drawing.Rectangle
---@param hrgn System.IntPtr
---@param pt System.Drawing.Point
---@param out_result System.Windows.Forms.VisualStyles.HitTestCode
---@return number,System.Windows.Forms.VisualStyles.HitTestCode
function System.Windows.Forms.VisualStyles.IVisualStyles:UxThemeHitTestThemeBackground(hTheme, dc, iPartId, iStateId, options, backgroundRectangle, hrgn, pt, out_result) end
---@return boolean
function System.Windows.Forms.VisualStyles.IVisualStyles:UxThemeIsAppThemed() end
---@return boolean
function System.Windows.Forms.VisualStyles.IVisualStyles:UxThemeIsThemeActive() end
---@param hTheme System.IntPtr
---@param iPartId number
---@param iStateId number
---@return boolean
function System.Windows.Forms.VisualStyles.IVisualStyles:UxThemeIsThemeBackgroundPartiallyTransparent(hTheme, iPartId, iStateId) end
---@param hTheme System.IntPtr
---@param iPartId number
---@return boolean
function System.Windows.Forms.VisualStyles.IVisualStyles:UxThemeIsThemePartDefined(hTheme, iPartId) end
---@param hWnd System.IntPtr
---@param classList string
---@return System.IntPtr
function System.Windows.Forms.VisualStyles.IVisualStyles:UxThemeOpenThemeData(hWnd, classList) end
---@param theme System.IntPtr
---@param dc System.Drawing.IDeviceContext
---@param part number
---@param state number
---@param bounds System.Drawing.Rectangle
---@param excludedArea System.Drawing.Rectangle
function System.Windows.Forms.VisualStyles.IVisualStyles:VisualStyleRendererDrawBackgroundExcludingArea(theme, dc, part, state, bounds, excludedArea) end

---@class System.Windows.Forms.VisualStyles.IconEffect
---@field None System.Windows.Forms.VisualStyles.IconEffect
---@field Glow System.Windows.Forms.VisualStyles.IconEffect
---@field Shadow System.Windows.Forms.VisualStyles.IconEffect
---@field Pulse System.Windows.Forms.VisualStyles.IconEffect
---@field Alpha System.Windows.Forms.VisualStyles.IconEffect
System.Windows.Forms.VisualStyles.IconEffect = {}
---@alias CS.System.Windows.Forms.VisualStyles.IconEffect System.Windows.Forms.VisualStyles.IconEffect
CS.System.Windows.Forms.VisualStyles.IconEffect = System.Windows.Forms.VisualStyles.IconEffect


---@class System.Windows.Forms.VisualStyles.ImageOrientation
---@field Vertical System.Windows.Forms.VisualStyles.ImageOrientation
---@field Horizontal System.Windows.Forms.VisualStyles.ImageOrientation
System.Windows.Forms.VisualStyles.ImageOrientation = {}
---@alias CS.System.Windows.Forms.VisualStyles.ImageOrientation System.Windows.Forms.VisualStyles.ImageOrientation
CS.System.Windows.Forms.VisualStyles.ImageOrientation = System.Windows.Forms.VisualStyles.ImageOrientation


---@class System.Windows.Forms.VisualStyles.ImageSelectType
---@field None System.Windows.Forms.VisualStyles.ImageSelectType
---@field Size System.Windows.Forms.VisualStyles.ImageSelectType
---@field Dpi System.Windows.Forms.VisualStyles.ImageSelectType
System.Windows.Forms.VisualStyles.ImageSelectType = {}
---@alias CS.System.Windows.Forms.VisualStyles.ImageSelectType System.Windows.Forms.VisualStyles.ImageSelectType
CS.System.Windows.Forms.VisualStyles.ImageSelectType = System.Windows.Forms.VisualStyles.ImageSelectType


---@class System.Windows.Forms.VisualStyles.IntegerProperty
---@field ImageCount System.Windows.Forms.VisualStyles.IntegerProperty
---@field AlphaLevel System.Windows.Forms.VisualStyles.IntegerProperty
---@field BorderSize System.Windows.Forms.VisualStyles.IntegerProperty
---@field RoundCornerWidth System.Windows.Forms.VisualStyles.IntegerProperty
---@field RoundCornerHeight System.Windows.Forms.VisualStyles.IntegerProperty
---@field GradientRatio1 System.Windows.Forms.VisualStyles.IntegerProperty
---@field GradientRatio2 System.Windows.Forms.VisualStyles.IntegerProperty
---@field GradientRatio3 System.Windows.Forms.VisualStyles.IntegerProperty
---@field GradientRatio4 System.Windows.Forms.VisualStyles.IntegerProperty
---@field GradientRatio5 System.Windows.Forms.VisualStyles.IntegerProperty
---@field ProgressChunkSize System.Windows.Forms.VisualStyles.IntegerProperty
---@field ProgressSpaceSize System.Windows.Forms.VisualStyles.IntegerProperty
---@field Saturation System.Windows.Forms.VisualStyles.IntegerProperty
---@field TextBorderSize System.Windows.Forms.VisualStyles.IntegerProperty
---@field AlphaThreshold System.Windows.Forms.VisualStyles.IntegerProperty
---@field Width System.Windows.Forms.VisualStyles.IntegerProperty
---@field Height System.Windows.Forms.VisualStyles.IntegerProperty
---@field GlyphIndex System.Windows.Forms.VisualStyles.IntegerProperty
---@field TrueSizeStretchMark System.Windows.Forms.VisualStyles.IntegerProperty
---@field MinDpi1 System.Windows.Forms.VisualStyles.IntegerProperty
---@field MinDpi2 System.Windows.Forms.VisualStyles.IntegerProperty
---@field MinDpi3 System.Windows.Forms.VisualStyles.IntegerProperty
---@field MinDpi4 System.Windows.Forms.VisualStyles.IntegerProperty
---@field MinDpi5 System.Windows.Forms.VisualStyles.IntegerProperty
System.Windows.Forms.VisualStyles.IntegerProperty = {}
---@alias CS.System.Windows.Forms.VisualStyles.IntegerProperty System.Windows.Forms.VisualStyles.IntegerProperty
CS.System.Windows.Forms.VisualStyles.IntegerProperty = System.Windows.Forms.VisualStyles.IntegerProperty


---@class System.Windows.Forms.VisualStyles.MarginProperty
---@field SizingMargins System.Windows.Forms.VisualStyles.MarginProperty
---@field ContentMargins System.Windows.Forms.VisualStyles.MarginProperty
---@field CaptionMargins System.Windows.Forms.VisualStyles.MarginProperty
System.Windows.Forms.VisualStyles.MarginProperty = {}
---@alias CS.System.Windows.Forms.VisualStyles.MarginProperty System.Windows.Forms.VisualStyles.MarginProperty
CS.System.Windows.Forms.VisualStyles.MarginProperty = System.Windows.Forms.VisualStyles.MarginProperty


---@class System.Windows.Forms.VisualStyles.OffsetType
---@field TopLeft System.Windows.Forms.VisualStyles.OffsetType
---@field TopRight System.Windows.Forms.VisualStyles.OffsetType
---@field TopMiddle System.Windows.Forms.VisualStyles.OffsetType
---@field BottomLeft System.Windows.Forms.VisualStyles.OffsetType
---@field BottomRight System.Windows.Forms.VisualStyles.OffsetType
---@field BottomMiddle System.Windows.Forms.VisualStyles.OffsetType
---@field MiddleLeft System.Windows.Forms.VisualStyles.OffsetType
---@field MiddleRight System.Windows.Forms.VisualStyles.OffsetType
---@field LeftOfCaption System.Windows.Forms.VisualStyles.OffsetType
---@field RightOfCaption System.Windows.Forms.VisualStyles.OffsetType
---@field LeftOfLastButton System.Windows.Forms.VisualStyles.OffsetType
---@field RightOfLastButton System.Windows.Forms.VisualStyles.OffsetType
---@field AboveLastButton System.Windows.Forms.VisualStyles.OffsetType
---@field BelowLastButton System.Windows.Forms.VisualStyles.OffsetType
System.Windows.Forms.VisualStyles.OffsetType = {}
---@alias CS.System.Windows.Forms.VisualStyles.OffsetType System.Windows.Forms.VisualStyles.OffsetType
CS.System.Windows.Forms.VisualStyles.OffsetType = System.Windows.Forms.VisualStyles.OffsetType


---@class System.Windows.Forms.VisualStyles.PointProperty
---@field Offset System.Windows.Forms.VisualStyles.PointProperty
---@field TextShadowOffset System.Windows.Forms.VisualStyles.PointProperty
---@field MinSize System.Windows.Forms.VisualStyles.PointProperty
---@field MinSize1 System.Windows.Forms.VisualStyles.PointProperty
---@field MinSize2 System.Windows.Forms.VisualStyles.PointProperty
---@field MinSize3 System.Windows.Forms.VisualStyles.PointProperty
---@field MinSize4 System.Windows.Forms.VisualStyles.PointProperty
---@field MinSize5 System.Windows.Forms.VisualStyles.PointProperty
System.Windows.Forms.VisualStyles.PointProperty = {}
---@alias CS.System.Windows.Forms.VisualStyles.PointProperty System.Windows.Forms.VisualStyles.PointProperty
CS.System.Windows.Forms.VisualStyles.PointProperty = System.Windows.Forms.VisualStyles.PointProperty


---@class System.Windows.Forms.VisualStyles.PushButtonState
---@field Normal System.Windows.Forms.VisualStyles.PushButtonState
---@field Hot System.Windows.Forms.VisualStyles.PushButtonState
---@field Pressed System.Windows.Forms.VisualStyles.PushButtonState
---@field Disabled System.Windows.Forms.VisualStyles.PushButtonState
---@field Default System.Windows.Forms.VisualStyles.PushButtonState
System.Windows.Forms.VisualStyles.PushButtonState = {}
---@alias CS.System.Windows.Forms.VisualStyles.PushButtonState System.Windows.Forms.VisualStyles.PushButtonState
CS.System.Windows.Forms.VisualStyles.PushButtonState = System.Windows.Forms.VisualStyles.PushButtonState


---@class System.Windows.Forms.VisualStyles.RadioButtonState
---@field UncheckedNormal System.Windows.Forms.VisualStyles.RadioButtonState
---@field UncheckedHot System.Windows.Forms.VisualStyles.RadioButtonState
---@field UncheckedPressed System.Windows.Forms.VisualStyles.RadioButtonState
---@field UncheckedDisabled System.Windows.Forms.VisualStyles.RadioButtonState
---@field CheckedNormal System.Windows.Forms.VisualStyles.RadioButtonState
---@field CheckedHot System.Windows.Forms.VisualStyles.RadioButtonState
---@field CheckedPressed System.Windows.Forms.VisualStyles.RadioButtonState
---@field CheckedDisabled System.Windows.Forms.VisualStyles.RadioButtonState
System.Windows.Forms.VisualStyles.RadioButtonState = {}
---@alias CS.System.Windows.Forms.VisualStyles.RadioButtonState System.Windows.Forms.VisualStyles.RadioButtonState
CS.System.Windows.Forms.VisualStyles.RadioButtonState = System.Windows.Forms.VisualStyles.RadioButtonState


---@class System.Windows.Forms.VisualStyles.ScrollBarArrowButtonState
---@field UpNormal System.Windows.Forms.VisualStyles.ScrollBarArrowButtonState
---@field UpHot System.Windows.Forms.VisualStyles.ScrollBarArrowButtonState
---@field UpPressed System.Windows.Forms.VisualStyles.ScrollBarArrowButtonState
---@field UpDisabled System.Windows.Forms.VisualStyles.ScrollBarArrowButtonState
---@field DownNormal System.Windows.Forms.VisualStyles.ScrollBarArrowButtonState
---@field DownHot System.Windows.Forms.VisualStyles.ScrollBarArrowButtonState
---@field DownPressed System.Windows.Forms.VisualStyles.ScrollBarArrowButtonState
---@field DownDisabled System.Windows.Forms.VisualStyles.ScrollBarArrowButtonState
---@field LeftNormal System.Windows.Forms.VisualStyles.ScrollBarArrowButtonState
---@field LeftHot System.Windows.Forms.VisualStyles.ScrollBarArrowButtonState
---@field LeftPressed System.Windows.Forms.VisualStyles.ScrollBarArrowButtonState
---@field LeftDisabled System.Windows.Forms.VisualStyles.ScrollBarArrowButtonState
---@field RightNormal System.Windows.Forms.VisualStyles.ScrollBarArrowButtonState
---@field RightHot System.Windows.Forms.VisualStyles.ScrollBarArrowButtonState
---@field RightPressed System.Windows.Forms.VisualStyles.ScrollBarArrowButtonState
---@field RightDisabled System.Windows.Forms.VisualStyles.ScrollBarArrowButtonState
System.Windows.Forms.VisualStyles.ScrollBarArrowButtonState = {}
---@alias CS.System.Windows.Forms.VisualStyles.ScrollBarArrowButtonState System.Windows.Forms.VisualStyles.ScrollBarArrowButtonState
CS.System.Windows.Forms.VisualStyles.ScrollBarArrowButtonState = System.Windows.Forms.VisualStyles.ScrollBarArrowButtonState


---@class System.Windows.Forms.VisualStyles.ScrollBarSizeBoxState
---@field RightAlign System.Windows.Forms.VisualStyles.ScrollBarSizeBoxState
---@field LeftAlign System.Windows.Forms.VisualStyles.ScrollBarSizeBoxState
System.Windows.Forms.VisualStyles.ScrollBarSizeBoxState = {}
---@alias CS.System.Windows.Forms.VisualStyles.ScrollBarSizeBoxState System.Windows.Forms.VisualStyles.ScrollBarSizeBoxState
CS.System.Windows.Forms.VisualStyles.ScrollBarSizeBoxState = System.Windows.Forms.VisualStyles.ScrollBarSizeBoxState


---@class System.Windows.Forms.VisualStyles.ScrollBarState
---@field Normal System.Windows.Forms.VisualStyles.ScrollBarState
---@field Hot System.Windows.Forms.VisualStyles.ScrollBarState
---@field Pressed System.Windows.Forms.VisualStyles.ScrollBarState
---@field Disabled System.Windows.Forms.VisualStyles.ScrollBarState
System.Windows.Forms.VisualStyles.ScrollBarState = {}
---@alias CS.System.Windows.Forms.VisualStyles.ScrollBarState System.Windows.Forms.VisualStyles.ScrollBarState
CS.System.Windows.Forms.VisualStyles.ScrollBarState = System.Windows.Forms.VisualStyles.ScrollBarState


---@class System.Windows.Forms.VisualStyles.SizingType
---@field FixedSize System.Windows.Forms.VisualStyles.SizingType
---@field Stretch System.Windows.Forms.VisualStyles.SizingType
---@field Tile System.Windows.Forms.VisualStyles.SizingType
System.Windows.Forms.VisualStyles.SizingType = {}
---@alias CS.System.Windows.Forms.VisualStyles.SizingType System.Windows.Forms.VisualStyles.SizingType
CS.System.Windows.Forms.VisualStyles.SizingType = System.Windows.Forms.VisualStyles.SizingType


---@class System.Windows.Forms.VisualStyles.StringProperty
---@field Text System.Windows.Forms.VisualStyles.StringProperty
System.Windows.Forms.VisualStyles.StringProperty = {}
---@alias CS.System.Windows.Forms.VisualStyles.StringProperty System.Windows.Forms.VisualStyles.StringProperty
CS.System.Windows.Forms.VisualStyles.StringProperty = System.Windows.Forms.VisualStyles.StringProperty


---@class System.Windows.Forms.VisualStyles.TabItemState
---@field Normal System.Windows.Forms.VisualStyles.TabItemState
---@field Hot System.Windows.Forms.VisualStyles.TabItemState
---@field Selected System.Windows.Forms.VisualStyles.TabItemState
---@field Disabled System.Windows.Forms.VisualStyles.TabItemState
System.Windows.Forms.VisualStyles.TabItemState = {}
---@alias CS.System.Windows.Forms.VisualStyles.TabItemState System.Windows.Forms.VisualStyles.TabItemState
CS.System.Windows.Forms.VisualStyles.TabItemState = System.Windows.Forms.VisualStyles.TabItemState


---@class System.Windows.Forms.VisualStyles.TextBoxState
---@field Normal System.Windows.Forms.VisualStyles.TextBoxState
---@field Hot System.Windows.Forms.VisualStyles.TextBoxState
---@field Selected System.Windows.Forms.VisualStyles.TextBoxState
---@field Disabled System.Windows.Forms.VisualStyles.TextBoxState
---@field Readonly System.Windows.Forms.VisualStyles.TextBoxState
---@field Assist System.Windows.Forms.VisualStyles.TextBoxState
System.Windows.Forms.VisualStyles.TextBoxState = {}
---@alias CS.System.Windows.Forms.VisualStyles.TextBoxState System.Windows.Forms.VisualStyles.TextBoxState
CS.System.Windows.Forms.VisualStyles.TextBoxState = System.Windows.Forms.VisualStyles.TextBoxState


---@class System.Windows.Forms.VisualStyles.TextMetrics : System.ValueType
---@field Ascent number
---@field AverageCharWidth number
---@field BreakChar System.Char
---@field CharSet System.Windows.Forms.VisualStyles.TextMetricsCharacterSet
---@field DefaultChar System.Char
---@field Descent number
---@field DigitizedAspectX number
---@field DigitizedAspectY number
---@field ExternalLeading number
---@field FirstChar System.Char
---@field Height number
---@field InternalLeading number
---@field Italic boolean
---@field LastChar System.Char
---@field MaxCharWidth number
---@field Overhang number
---@field PitchAndFamily System.Windows.Forms.VisualStyles.TextMetricsPitchAndFamilyValues
---@field StruckOut boolean
---@field Underlined boolean
---@field Weight number
System.Windows.Forms.VisualStyles.TextMetrics = {}
---@alias CS.System.Windows.Forms.VisualStyles.TextMetrics System.Windows.Forms.VisualStyles.TextMetrics
CS.System.Windows.Forms.VisualStyles.TextMetrics = System.Windows.Forms.VisualStyles.TextMetrics


---@class System.Windows.Forms.VisualStyles.TextMetricsCharacterSet
---@field Ansi System.Windows.Forms.VisualStyles.TextMetricsCharacterSet
---@field Default System.Windows.Forms.VisualStyles.TextMetricsCharacterSet
---@field Symbol System.Windows.Forms.VisualStyles.TextMetricsCharacterSet
---@field Mac System.Windows.Forms.VisualStyles.TextMetricsCharacterSet
---@field ShiftJis System.Windows.Forms.VisualStyles.TextMetricsCharacterSet
---@field Hangul System.Windows.Forms.VisualStyles.TextMetricsCharacterSet
---@field Johab System.Windows.Forms.VisualStyles.TextMetricsCharacterSet
---@field Gb2312 System.Windows.Forms.VisualStyles.TextMetricsCharacterSet
---@field ChineseBig5 System.Windows.Forms.VisualStyles.TextMetricsCharacterSet
---@field Greek System.Windows.Forms.VisualStyles.TextMetricsCharacterSet
---@field Turkish System.Windows.Forms.VisualStyles.TextMetricsCharacterSet
---@field Vietnamese System.Windows.Forms.VisualStyles.TextMetricsCharacterSet
---@field Hebrew System.Windows.Forms.VisualStyles.TextMetricsCharacterSet
---@field Arabic System.Windows.Forms.VisualStyles.TextMetricsCharacterSet
---@field Baltic System.Windows.Forms.VisualStyles.TextMetricsCharacterSet
---@field Russian System.Windows.Forms.VisualStyles.TextMetricsCharacterSet
---@field Thai System.Windows.Forms.VisualStyles.TextMetricsCharacterSet
---@field EastEurope System.Windows.Forms.VisualStyles.TextMetricsCharacterSet
---@field Oem System.Windows.Forms.VisualStyles.TextMetricsCharacterSet
System.Windows.Forms.VisualStyles.TextMetricsCharacterSet = {}
---@alias CS.System.Windows.Forms.VisualStyles.TextMetricsCharacterSet System.Windows.Forms.VisualStyles.TextMetricsCharacterSet
CS.System.Windows.Forms.VisualStyles.TextMetricsCharacterSet = System.Windows.Forms.VisualStyles.TextMetricsCharacterSet


---@class System.Windows.Forms.VisualStyles.TextMetricsPitchAndFamilyValues
---@field FixedPitch System.Windows.Forms.VisualStyles.TextMetricsPitchAndFamilyValues
---@field Vector System.Windows.Forms.VisualStyles.TextMetricsPitchAndFamilyValues
---@field TrueType System.Windows.Forms.VisualStyles.TextMetricsPitchAndFamilyValues
---@field Device System.Windows.Forms.VisualStyles.TextMetricsPitchAndFamilyValues
System.Windows.Forms.VisualStyles.TextMetricsPitchAndFamilyValues = {}
---@alias CS.System.Windows.Forms.VisualStyles.TextMetricsPitchAndFamilyValues System.Windows.Forms.VisualStyles.TextMetricsPitchAndFamilyValues
CS.System.Windows.Forms.VisualStyles.TextMetricsPitchAndFamilyValues = System.Windows.Forms.VisualStyles.TextMetricsPitchAndFamilyValues


---@class System.Windows.Forms.VisualStyles.TextShadowType
---@field None System.Windows.Forms.VisualStyles.TextShadowType
---@field Single System.Windows.Forms.VisualStyles.TextShadowType
---@field Continuous System.Windows.Forms.VisualStyles.TextShadowType
System.Windows.Forms.VisualStyles.TextShadowType = {}
---@alias CS.System.Windows.Forms.VisualStyles.TextShadowType System.Windows.Forms.VisualStyles.TextShadowType
CS.System.Windows.Forms.VisualStyles.TextShadowType = System.Windows.Forms.VisualStyles.TextShadowType


---@class System.Windows.Forms.VisualStyles.ThemeSizeType
---@field Minimum System.Windows.Forms.VisualStyles.ThemeSizeType
---@field True System.Windows.Forms.VisualStyles.ThemeSizeType
---@field Draw System.Windows.Forms.VisualStyles.ThemeSizeType
System.Windows.Forms.VisualStyles.ThemeSizeType = {}
---@alias CS.System.Windows.Forms.VisualStyles.ThemeSizeType System.Windows.Forms.VisualStyles.ThemeSizeType
CS.System.Windows.Forms.VisualStyles.ThemeSizeType = System.Windows.Forms.VisualStyles.ThemeSizeType


---@class System.Windows.Forms.VisualStyles.ToolBarState
---@field Normal System.Windows.Forms.VisualStyles.ToolBarState
---@field Hot System.Windows.Forms.VisualStyles.ToolBarState
---@field Pressed System.Windows.Forms.VisualStyles.ToolBarState
---@field Disabled System.Windows.Forms.VisualStyles.ToolBarState
---@field Checked System.Windows.Forms.VisualStyles.ToolBarState
---@field HotChecked System.Windows.Forms.VisualStyles.ToolBarState
System.Windows.Forms.VisualStyles.ToolBarState = {}
---@alias CS.System.Windows.Forms.VisualStyles.ToolBarState System.Windows.Forms.VisualStyles.ToolBarState
CS.System.Windows.Forms.VisualStyles.ToolBarState = System.Windows.Forms.VisualStyles.ToolBarState


---@class System.Windows.Forms.VisualStyles.TrackBarThumbState
---@field Normal System.Windows.Forms.VisualStyles.TrackBarThumbState
---@field Hot System.Windows.Forms.VisualStyles.TrackBarThumbState
---@field Pressed System.Windows.Forms.VisualStyles.TrackBarThumbState
---@field Disabled System.Windows.Forms.VisualStyles.TrackBarThumbState
System.Windows.Forms.VisualStyles.TrackBarThumbState = {}
---@alias CS.System.Windows.Forms.VisualStyles.TrackBarThumbState System.Windows.Forms.VisualStyles.TrackBarThumbState
CS.System.Windows.Forms.VisualStyles.TrackBarThumbState = System.Windows.Forms.VisualStyles.TrackBarThumbState


---@class System.Windows.Forms.VisualStyles.TrueSizeScalingType
---@field None System.Windows.Forms.VisualStyles.TrueSizeScalingType
---@field Size System.Windows.Forms.VisualStyles.TrueSizeScalingType
---@field Dpi System.Windows.Forms.VisualStyles.TrueSizeScalingType
System.Windows.Forms.VisualStyles.TrueSizeScalingType = {}
---@alias CS.System.Windows.Forms.VisualStyles.TrueSizeScalingType System.Windows.Forms.VisualStyles.TrueSizeScalingType
CS.System.Windows.Forms.VisualStyles.TrueSizeScalingType = System.Windows.Forms.VisualStyles.TrueSizeScalingType


---@class System.Windows.Forms.VisualStyles.UXTheme : System.Object
System.Windows.Forms.VisualStyles.UXTheme = {}
---@alias CS.System.Windows.Forms.VisualStyles.UXTheme System.Windows.Forms.VisualStyles.UXTheme
CS.System.Windows.Forms.VisualStyles.UXTheme = System.Windows.Forms.VisualStyles.UXTheme

---@return System.Windows.Forms.VisualStyles.UXTheme
function System.Windows.Forms.VisualStyles.UXTheme.New() end
---@param hTheme System.IntPtr
---@return number
function System.Windows.Forms.VisualStyles.UXTheme.CloseThemeData(hTheme) end
---@overload fun(hTheme: System.IntPtr, hdc: System.IntPtr, iPartId: number, iStateId: number, ref_pRect: System.Windows.Forms.XplatUIWin32.RECT, ref_pClipRect: System.Windows.Forms.XplatUIWin32.RECT) : number, System.Windows.Forms.XplatUIWin32.RECT, System.Windows.Forms.XplatUIWin32.RECT
---@param hTheme System.IntPtr
---@param hdc System.IntPtr
---@param iPartId number
---@param iStateId number
---@param ref_pRect System.Windows.Forms.XplatUIWin32.RECT
---@param pClipRect System.IntPtr
---@return number,System.Windows.Forms.XplatUIWin32.RECT
function System.Windows.Forms.VisualStyles.UXTheme.DrawThemeBackground(hTheme, hdc, iPartId, iStateId, ref_pRect, pClipRect) end
---@overload fun(hTheme: System.IntPtr, hdc: System.IntPtr, iPartId: number, iStateId: number, ref_pDestRect: System.Windows.Forms.XplatUIWin32.RECT, egde: number, flags: number, out_pRect: System.Windows.Forms.XplatUIWin32.RECT) : number, System.Windows.Forms.XplatUIWin32.RECT, System.Windows.Forms.XplatUIWin32.RECT
---@param hTheme System.IntPtr
---@param hdc System.IntPtr
---@param iPartId number
---@param iStateId number
---@param ref_pDestRect System.Windows.Forms.XplatUIWin32.RECT
---@param edge number
---@param flags number
---@param pRect number
---@return number,System.Windows.Forms.XplatUIWin32.RECT
function System.Windows.Forms.VisualStyles.UXTheme.DrawThemeEdge(hTheme, hdc, iPartId, iStateId, ref_pDestRect, edge, flags, pRect) end
---@param hTheme System.IntPtr
---@param hdc System.IntPtr
---@param iPartId number
---@param iStateId number
---@param ref_pRect System.Windows.Forms.XplatUIWin32.RECT
---@param himl System.IntPtr
---@param iImageIndex number
---@return number,System.Windows.Forms.XplatUIWin32.RECT
function System.Windows.Forms.VisualStyles.UXTheme.DrawThemeIcon(hTheme, hdc, iPartId, iStateId, ref_pRect, himl, iImageIndex) end
---@overload fun(hWnd: System.IntPtr, hdc: System.IntPtr, ref_pRect: System.Windows.Forms.XplatUIWin32.RECT) : number, System.Windows.Forms.XplatUIWin32.RECT
---@param hWnd System.IntPtr
---@param hdc System.IntPtr
---@param pRect number
---@return number
function System.Windows.Forms.VisualStyles.UXTheme.DrawThemeParentBackground(hWnd, hdc, pRect) end
---@param hTheme System.IntPtr
---@param hdc System.IntPtr
---@param iPartId number
---@param iStateId number
---@param text string
---@param textLength number
---@param textFlags number
---@param textFlags2 number
---@param ref_pRect System.Windows.Forms.XplatUIWin32.RECT
---@return number,System.Windows.Forms.XplatUIWin32.RECT
function System.Windows.Forms.VisualStyles.UXTheme.DrawThemeText(hTheme, hdc, iPartId, iStateId, text, textLength, textFlags, textFlags2, ref_pRect) end
---@param fEnable number
---@return number
function System.Windows.Forms.VisualStyles.UXTheme.EnableTheming(fEnable) end
---@param hWnd System.IntPtr
---@param classList string
---@return System.IntPtr
function System.Windows.Forms.VisualStyles.UXTheme.OpenThemeData(hWnd, classList) end
---@param hTheme System.IntPtr
---@param hdc System.IntPtr
---@param iPartId number
---@param iStateId number
---@param ref_pBoundingRect System.Windows.Forms.XplatUIWin32.RECT
---@param out_pContentRect System.Windows.Forms.XplatUIWin32.RECT
---@return number,System.Windows.Forms.XplatUIWin32.RECT,System.Windows.Forms.XplatUIWin32.RECT
function System.Windows.Forms.VisualStyles.UXTheme.GetThemeBackgroundContentRect(hTheme, hdc, iPartId, iStateId, ref_pBoundingRect, out_pContentRect) end
---@param hTheme System.IntPtr
---@param hdc System.IntPtr
---@param iPartId number
---@param iStateId number
---@param ref_pRect System.Windows.Forms.XplatUIWin32.RECT
---@param ref_pClipRect System.Windows.Forms.XplatUIWin32.RECT
---@return number,System.Windows.Forms.XplatUIWin32.RECT,System.Windows.Forms.XplatUIWin32.RECT
function System.Windows.Forms.VisualStyles.UXTheme.GetThemeBackgroundExtent(hTheme, hdc, iPartId, iStateId, ref_pRect, ref_pClipRect) end
---@param hTheme System.IntPtr
---@param hdc System.IntPtr
---@param iPartId number
---@param iStateId number
---@param ref_pRect System.Windows.Forms.XplatUIWin32.RECT
---@param out_pRegion System.IntPtr
---@return number,System.Windows.Forms.XplatUIWin32.RECT,System.IntPtr
function System.Windows.Forms.VisualStyles.UXTheme.GetThemeBackgroundRegion(hTheme, hdc, iPartId, iStateId, ref_pRect, out_pRegion) end
---@param hTheme System.IntPtr
---@param iPartId number
---@param iStateId number
---@param iPropId number
---@param out_pfVal number
---@return number,number
function System.Windows.Forms.VisualStyles.UXTheme.GetThemeBool(hTheme, iPartId, iStateId, iPropId, out_pfVal) end
---@param hTheme System.IntPtr
---@param iPartId number
---@param iStateId number
---@param iPropId number
---@param out_pColor number
---@return number,number
function System.Windows.Forms.VisualStyles.UXTheme.GetThemeColor(hTheme, iPartId, iStateId, iPropId, out_pColor) end
---@param hTheme System.IntPtr
---@param iPartId number
---@param iStateId number
---@param iPropId number
---@param out_piVal number
---@return number,number
function System.Windows.Forms.VisualStyles.UXTheme.GetThemeEnumValue(hTheme, iPartId, iStateId, iPropId, out_piVal) end
---@param hTheme System.IntPtr
---@param iPartId number
---@param iStateId number
---@param iPropId number
---@param themeFileName System.Text.StringBuilder
---@param themeFileNameLength number
---@return number
function System.Windows.Forms.VisualStyles.UXTheme.GetThemeFilename(hTheme, iPartId, iStateId, iPropId, themeFileName, themeFileNameLength) end
---@param hTheme System.IntPtr
---@param hdc System.IntPtr
---@param iPartId number
---@param iStateId number
---@param iPropId number
---@param out_lf System.Windows.Forms.VisualStyles.UXTheme.LOGFONT
---@return number,System.Windows.Forms.VisualStyles.UXTheme.LOGFONT
function System.Windows.Forms.VisualStyles.UXTheme.GetThemeFont(hTheme, hdc, iPartId, iStateId, iPropId, out_lf) end
---@param lplf System.Windows.Forms.VisualStyles.UXTheme.LOGFONT
---@return System.IntPtr
function System.Windows.Forms.VisualStyles.UXTheme.CreateFontIndirect(lplf) end
---@param hTheme System.IntPtr
---@param iPartId number
---@param iStateId number
---@param iPropId number
---@param out_piVal number
---@return number,number
function System.Windows.Forms.VisualStyles.UXTheme.GetThemeInt(hTheme, iPartId, iStateId, iPropId, out_piVal) end
---@param hTheme System.IntPtr
---@param hdc System.IntPtr
---@param iPartId number
---@param iStateId number
---@param iPropId number
---@param out_prc System.Windows.Forms.XplatUIWin32.RECT
---@param out_pMargins System.Windows.Forms.VisualStyles.UXTheme.MARGINS
---@return number,System.Windows.Forms.XplatUIWin32.RECT,System.Windows.Forms.VisualStyles.UXTheme.MARGINS
function System.Windows.Forms.VisualStyles.UXTheme.GetThemeMargins(hTheme, hdc, iPartId, iStateId, iPropId, out_prc, out_pMargins) end
---@overload fun(hTheme: System.IntPtr, hdc: System.IntPtr, iPartId: number, iStateId: number, ref_pRect: System.Windows.Forms.XplatUIWin32.RECT, eSize: number, out_size: System.Windows.Forms.VisualStyles.UXTheme.SIZE) : number, System.Windows.Forms.XplatUIWin32.RECT, System.Windows.Forms.VisualStyles.UXTheme.SIZE
---@param hTheme System.IntPtr
---@param hdc System.IntPtr
---@param iPartId number
---@param iStateId number
---@param pRect System.IntPtr
---@param eSize number
---@param out_size System.Windows.Forms.VisualStyles.UXTheme.SIZE
---@return number,System.Windows.Forms.VisualStyles.UXTheme.SIZE
function System.Windows.Forms.VisualStyles.UXTheme.GetThemePartSize(hTheme, hdc, iPartId, iStateId, pRect, eSize, out_size) end
---@param hTheme System.IntPtr
---@param iPartId number
---@param iStateId number
---@param iPropId number
---@param out_pPoint System.Windows.Forms.POINT
---@return number,System.Windows.Forms.POINT
function System.Windows.Forms.VisualStyles.UXTheme.GetThemePosition(hTheme, iPartId, iStateId, iPropId, out_pPoint) end
---@param hTheme System.IntPtr
---@param iPartId number
---@param iStateId number
---@param iPropId number
---@param themeString System.Text.StringBuilder
---@param themeStringLength number
---@return number
function System.Windows.Forms.VisualStyles.UXTheme.GetThemeString(hTheme, iPartId, iStateId, iPropId, themeString, themeStringLength) end
---@overload fun(hTheme: System.IntPtr, hdc: System.IntPtr, iPartId: number, iStateId: number, text: string, textLength: number, textFlags: number, ref_boundingRect: System.Windows.Forms.XplatUIWin32.RECT, out_extentRect: System.Windows.Forms.XplatUIWin32.RECT) : number, System.Windows.Forms.XplatUIWin32.RECT, System.Windows.Forms.XplatUIWin32.RECT
---@param hTheme System.IntPtr
---@param hdc System.IntPtr
---@param iPartId number
---@param iStateId number
---@param text string
---@param textLength number
---@param textFlags number
---@param boundingRect number
---@param out_extentRect System.Windows.Forms.XplatUIWin32.RECT
---@return number,System.Windows.Forms.XplatUIWin32.RECT
function System.Windows.Forms.VisualStyles.UXTheme.GetThemeTextExtent(hTheme, hdc, iPartId, iStateId, text, textLength, textFlags, boundingRect, out_extentRect) end
---@param hTheme System.IntPtr
---@param hdc System.IntPtr
---@param iPartId number
---@param iStateId number
---@param out_textMetric System.Windows.Forms.XplatUIWin32.TEXTMETRIC
---@return number,System.Windows.Forms.XplatUIWin32.TEXTMETRIC
function System.Windows.Forms.VisualStyles.UXTheme.GetThemeTextMetrics(hTheme, hdc, iPartId, iStateId, out_textMetric) end
---@overload fun(hTheme: System.IntPtr, hdc: System.IntPtr, iPartId: number, iStateId: number, dwOptions: number, ref_pRect: System.Windows.Forms.XplatUIWin32.RECT, hrgn: System.IntPtr, ptTest: System.Windows.Forms.POINT, out_code: System.Windows.Forms.VisualStyles.HitTestCode) : number, System.Windows.Forms.XplatUIWin32.RECT, System.Windows.Forms.VisualStyles.HitTestCode
---@param hTheme System.IntPtr
---@param hdc System.IntPtr
---@param iPartId number
---@param iStateId number
---@param dwOptions number
---@param ref_pRect System.Windows.Forms.XplatUIWin32.RECT
---@param hrgn System.IntPtr
---@param ptTest System.Windows.Forms.POINT
---@param out_code number
---@return number,System.Windows.Forms.XplatUIWin32.RECT,number
function System.Windows.Forms.VisualStyles.UXTheme.HitTestThemeBackground(hTheme, hdc, iPartId, iStateId, dwOptions, ref_pRect, hrgn, ptTest, out_code) end
---@param hTheme System.IntPtr
---@param iPartId number
---@param iStateId number
---@return number
function System.Windows.Forms.VisualStyles.UXTheme.IsThemeBackgroundPartiallyTransparent(hTheme, iPartId, iStateId) end
---@param hTheme System.IntPtr
---@param iPartId number
---@param iStateId number
---@return boolean
function System.Windows.Forms.VisualStyles.UXTheme.IsThemePartDefined(hTheme, iPartId, iStateId) end
---@return boolean
function System.Windows.Forms.VisualStyles.UXTheme.IsThemeActive() end
---@return boolean
function System.Windows.Forms.VisualStyles.UXTheme.IsAppThemed() end
---@param stringThemeName string
---@param stringPropertyName string
---@param stringValue System.Text.StringBuilder
---@param lengthValue number
---@return number
function System.Windows.Forms.VisualStyles.UXTheme.GetThemeDocumentationProperty(stringThemeName, stringPropertyName, stringValue, lengthValue) end
---@param stringThemeName System.Text.StringBuilder
---@param lengthThemeName number
---@param stringColorName System.Text.StringBuilder
---@param lengthColorName number
---@param stringSizeName System.Text.StringBuilder
---@param lengthSizeName number
---@return number
function System.Windows.Forms.VisualStyles.UXTheme.GetCurrentThemeName(stringThemeName, lengthThemeName, stringColorName, lengthColorName, stringSizeName, lengthSizeName) end
---@param hTheme System.IntPtr
---@param iColorId number
---@return number
function System.Windows.Forms.VisualStyles.UXTheme.GetThemeSysColor(hTheme, iColorId) end
---@param hTheme System.IntPtr
---@param iIntId number
---@param out_piVal number
---@return number,number
function System.Windows.Forms.VisualStyles.UXTheme.GetThemeSysInt(hTheme, iIntId, out_piVal) end
---@param hTheme System.IntPtr
---@param iBoolId number
---@return number
function System.Windows.Forms.VisualStyles.UXTheme.GetThemeSysBool(hTheme, iBoolId) end

---@class System.Windows.Forms.VisualStyles.UXTheme.LOGFONT : System.Object
---@field lfHeight number
---@field lfWidth number
---@field lfEscapement number
---@field lfOrientation number
---@field lfWeight number
---@field lfItalic number
---@field lfUnderline number
---@field lfStrikeOut number
---@field lfCharSet number
---@field lfOutPrecision number
---@field lfClipPrecision number
---@field lfQuality number
---@field lfPitchAndFamily number
---@field lfFaceName string
System.Windows.Forms.VisualStyles.UXTheme.LOGFONT = {}
---@alias CS.System.Windows.Forms.VisualStyles.UXTheme.LOGFONT System.Windows.Forms.VisualStyles.UXTheme.LOGFONT
CS.System.Windows.Forms.VisualStyles.UXTheme.LOGFONT = System.Windows.Forms.VisualStyles.UXTheme.LOGFONT

---@return System.Windows.Forms.VisualStyles.UXTheme.LOGFONT
function System.Windows.Forms.VisualStyles.UXTheme.LOGFONT.New() end

---@class System.Windows.Forms.VisualStyles.UXTheme.MARGINS : System.ValueType
---@field leftWidth number
---@field rightWidth number
---@field topHeight number
---@field bottomHeight number
System.Windows.Forms.VisualStyles.UXTheme.MARGINS = {}
---@alias CS.System.Windows.Forms.VisualStyles.UXTheme.MARGINS System.Windows.Forms.VisualStyles.UXTheme.MARGINS
CS.System.Windows.Forms.VisualStyles.UXTheme.MARGINS = System.Windows.Forms.VisualStyles.UXTheme.MARGINS

---@return System.Windows.Forms.Padding
function System.Windows.Forms.VisualStyles.UXTheme.MARGINS:ToPadding() end

---@class System.Windows.Forms.VisualStyles.UXTheme.SIZE : System.ValueType
---@field cx number
---@field cy number
System.Windows.Forms.VisualStyles.UXTheme.SIZE = {}
---@alias CS.System.Windows.Forms.VisualStyles.UXTheme.SIZE System.Windows.Forms.VisualStyles.UXTheme.SIZE
CS.System.Windows.Forms.VisualStyles.UXTheme.SIZE = System.Windows.Forms.VisualStyles.UXTheme.SIZE

---@return System.Drawing.Size
function System.Windows.Forms.VisualStyles.UXTheme.SIZE:ToSize() end

---@class System.Windows.Forms.VisualStyles.VerticalAlignment
---@field Top System.Windows.Forms.VisualStyles.VerticalAlignment
---@field Center System.Windows.Forms.VisualStyles.VerticalAlignment
---@field Bottom System.Windows.Forms.VisualStyles.VerticalAlignment
System.Windows.Forms.VisualStyles.VerticalAlignment = {}
---@alias CS.System.Windows.Forms.VisualStyles.VerticalAlignment System.Windows.Forms.VisualStyles.VerticalAlignment
CS.System.Windows.Forms.VisualStyles.VerticalAlignment = System.Windows.Forms.VisualStyles.VerticalAlignment


---@class System.Windows.Forms.VisualStyles.VisualStyleElement : System.Object
---@field ClassName string
---@field Part number
---@field State number
System.Windows.Forms.VisualStyles.VisualStyleElement = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement System.Windows.Forms.VisualStyles.VisualStyleElement
CS.System.Windows.Forms.VisualStyles.VisualStyleElement = System.Windows.Forms.VisualStyles.VisualStyleElement

---@param className string
---@param part number
---@param state number
---@return System.Windows.Forms.VisualStyles.VisualStyleElement
function System.Windows.Forms.VisualStyles.VisualStyleElement.CreateElement(className, part, state) end

---@class System.Windows.Forms.VisualStyles.VisualStyleElement.DATEPICKERPARTS
---@field DP_DATEBORDER System.Windows.Forms.VisualStyles.VisualStyleElement.DATEPICKERPARTS
---@field DP_SHOWCALENDARBUTTONRIGHT System.Windows.Forms.VisualStyles.VisualStyleElement.DATEPICKERPARTS
System.Windows.Forms.VisualStyles.VisualStyleElement.DATEPICKERPARTS = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.DATEPICKERPARTS System.Windows.Forms.VisualStyles.VisualStyleElement.DATEPICKERPARTS
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.DATEPICKERPARTS = System.Windows.Forms.VisualStyles.VisualStyleElement.DATEPICKERPARTS


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.DATEBORDERSTATES
---@field DPDB_NORMAL System.Windows.Forms.VisualStyles.VisualStyleElement.DATEBORDERSTATES
---@field DPDB_HOT System.Windows.Forms.VisualStyles.VisualStyleElement.DATEBORDERSTATES
---@field DPDB_FOCUSED System.Windows.Forms.VisualStyles.VisualStyleElement.DATEBORDERSTATES
---@field DPDB_DISABLED System.Windows.Forms.VisualStyles.VisualStyleElement.DATEBORDERSTATES
System.Windows.Forms.VisualStyles.VisualStyleElement.DATEBORDERSTATES = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.DATEBORDERSTATES System.Windows.Forms.VisualStyles.VisualStyleElement.DATEBORDERSTATES
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.DATEBORDERSTATES = System.Windows.Forms.VisualStyles.VisualStyleElement.DATEBORDERSTATES


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.SHOWCALENDARBUTTONRIGHTSTATES
---@field DPSCBR_NORMAL System.Windows.Forms.VisualStyles.VisualStyleElement.SHOWCALENDARBUTTONRIGHTSTATES
---@field DPSCBR_HOT System.Windows.Forms.VisualStyles.VisualStyleElement.SHOWCALENDARBUTTONRIGHTSTATES
---@field DPSCBR_PRESSED System.Windows.Forms.VisualStyles.VisualStyleElement.SHOWCALENDARBUTTONRIGHTSTATES
---@field DPSCBR_DISABLED System.Windows.Forms.VisualStyles.VisualStyleElement.SHOWCALENDARBUTTONRIGHTSTATES
System.Windows.Forms.VisualStyles.VisualStyleElement.SHOWCALENDARBUTTONRIGHTSTATES = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.SHOWCALENDARBUTTONRIGHTSTATES System.Windows.Forms.VisualStyles.VisualStyleElement.SHOWCALENDARBUTTONRIGHTSTATES
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.SHOWCALENDARBUTTONRIGHTSTATES = System.Windows.Forms.VisualStyles.VisualStyleElement.SHOWCALENDARBUTTONRIGHTSTATES


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Button : System.Object
System.Windows.Forms.VisualStyles.VisualStyleElement.Button = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Button System.Windows.Forms.VisualStyles.VisualStyleElement.Button
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Button = System.Windows.Forms.VisualStyles.VisualStyleElement.Button


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Button.CheckBox : System.Object
---@field CheckedDisabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field CheckedHot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field CheckedNormal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field CheckedPressed System.Windows.Forms.VisualStyles.VisualStyleElement
---@field MixedDisabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field MixedHot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field MixedNormal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field MixedPressed System.Windows.Forms.VisualStyles.VisualStyleElement
---@field UncheckedDisabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field UncheckedHot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field UncheckedNormal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field UncheckedPressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Button.CheckBox = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Button.CheckBox System.Windows.Forms.VisualStyles.VisualStyleElement.Button.CheckBox
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Button.CheckBox = System.Windows.Forms.VisualStyles.VisualStyleElement.Button.CheckBox


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Button.GroupBox : System.Object
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Button.GroupBox = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Button.GroupBox System.Windows.Forms.VisualStyles.VisualStyleElement.Button.GroupBox
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Button.GroupBox = System.Windows.Forms.VisualStyles.VisualStyleElement.Button.GroupBox


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Button.PushButton : System.Object
---@field Default System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Button.PushButton = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Button.PushButton System.Windows.Forms.VisualStyles.VisualStyleElement.Button.PushButton
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Button.PushButton = System.Windows.Forms.VisualStyles.VisualStyleElement.Button.PushButton


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Button.RadioButton : System.Object
---@field CheckedDisabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field CheckedHot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field CheckedNormal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field CheckedPressed System.Windows.Forms.VisualStyles.VisualStyleElement
---@field UncheckedDisabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field UncheckedHot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field UncheckedNormal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field UncheckedPressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Button.RadioButton = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Button.RadioButton System.Windows.Forms.VisualStyles.VisualStyleElement.Button.RadioButton
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Button.RadioButton = System.Windows.Forms.VisualStyles.VisualStyleElement.Button.RadioButton


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Button.UserButton : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Button.UserButton = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Button.UserButton System.Windows.Forms.VisualStyles.VisualStyleElement.Button.UserButton
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Button.UserButton = System.Windows.Forms.VisualStyles.VisualStyleElement.Button.UserButton


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.ComboBox : System.Object
System.Windows.Forms.VisualStyles.VisualStyleElement.ComboBox = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ComboBox System.Windows.Forms.VisualStyles.VisualStyleElement.ComboBox
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ComboBox = System.Windows.Forms.VisualStyles.VisualStyleElement.ComboBox


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.ComboBox.DropDownButton : System.Object
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.ComboBox.DropDownButton = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ComboBox.DropDownButton System.Windows.Forms.VisualStyles.VisualStyleElement.ComboBox.DropDownButton
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ComboBox.DropDownButton = System.Windows.Forms.VisualStyles.VisualStyleElement.ComboBox.DropDownButton


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.ComboBox.Border : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Focused System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.ComboBox.Border = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ComboBox.Border System.Windows.Forms.VisualStyles.VisualStyleElement.ComboBox.Border
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ComboBox.Border = System.Windows.Forms.VisualStyles.VisualStyleElement.ComboBox.Border


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.DatePicker : System.Object
System.Windows.Forms.VisualStyles.VisualStyleElement.DatePicker = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.DatePicker System.Windows.Forms.VisualStyles.VisualStyleElement.DatePicker
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.DatePicker = System.Windows.Forms.VisualStyles.VisualStyleElement.DatePicker


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.DatePicker.DateBorder : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Focused System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.DatePicker.DateBorder = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.DatePicker.DateBorder System.Windows.Forms.VisualStyles.VisualStyleElement.DatePicker.DateBorder
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.DatePicker.DateBorder = System.Windows.Forms.VisualStyles.VisualStyleElement.DatePicker.DateBorder


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.DatePicker.ShowCalendarButtonRight : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.DatePicker.ShowCalendarButtonRight = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.DatePicker.ShowCalendarButtonRight System.Windows.Forms.VisualStyles.VisualStyleElement.DatePicker.ShowCalendarButtonRight
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.DatePicker.ShowCalendarButtonRight = System.Windows.Forms.VisualStyles.VisualStyleElement.DatePicker.ShowCalendarButtonRight


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar : System.Object
System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar = System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.HeaderBackground : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.HeaderBackground = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.HeaderBackground System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.HeaderBackground
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.HeaderBackground = System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.HeaderBackground


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.HeaderClose : System.Object
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.HeaderClose = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.HeaderClose System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.HeaderClose
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.HeaderClose = System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.HeaderClose


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.HeaderPin : System.Object
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
---@field SelectedHot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field SelectedNormal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field SelectedPressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.HeaderPin = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.HeaderPin System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.HeaderPin
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.HeaderPin = System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.HeaderPin


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.IEBarMenu : System.Object
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.IEBarMenu = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.IEBarMenu System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.IEBarMenu
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.IEBarMenu = System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.IEBarMenu


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.NormalGroupBackground : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.NormalGroupBackground = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.NormalGroupBackground System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.NormalGroupBackground
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.NormalGroupBackground = System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.NormalGroupBackground


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.NormalGroupCollapse : System.Object
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.NormalGroupCollapse = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.NormalGroupCollapse System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.NormalGroupCollapse
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.NormalGroupCollapse = System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.NormalGroupCollapse


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.NormalGroupExpand : System.Object
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.NormalGroupExpand = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.NormalGroupExpand System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.NormalGroupExpand
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.NormalGroupExpand = System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.NormalGroupExpand


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.NormalGroupHead : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.NormalGroupHead = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.NormalGroupHead System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.NormalGroupHead
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.NormalGroupHead = System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.NormalGroupHead


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.SpecialGroupBackground : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.SpecialGroupBackground = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.SpecialGroupBackground System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.SpecialGroupBackground
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.SpecialGroupBackground = System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.SpecialGroupBackground


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.SpecialGroupCollapse : System.Object
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.SpecialGroupCollapse = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.SpecialGroupCollapse System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.SpecialGroupCollapse
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.SpecialGroupCollapse = System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.SpecialGroupCollapse


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.SpecialGroupExpand : System.Object
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.SpecialGroupExpand = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.SpecialGroupExpand System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.SpecialGroupExpand
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.SpecialGroupExpand = System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.SpecialGroupExpand


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.SpecialGroupHead : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.SpecialGroupHead = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.SpecialGroupHead System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.SpecialGroupHead
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.SpecialGroupHead = System.Windows.Forms.VisualStyles.VisualStyleElement.ExplorerBar.SpecialGroupHead


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Header : System.Object
System.Windows.Forms.VisualStyles.VisualStyleElement.Header = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Header System.Windows.Forms.VisualStyles.VisualStyleElement.Header
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Header = System.Windows.Forms.VisualStyles.VisualStyleElement.Header


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Header.Item : System.Object
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Header.Item = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Header.Item System.Windows.Forms.VisualStyles.VisualStyleElement.Header.Item
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Header.Item = System.Windows.Forms.VisualStyles.VisualStyleElement.Header.Item


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Header.ItemLeft : System.Object
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Header.ItemLeft = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Header.ItemLeft System.Windows.Forms.VisualStyles.VisualStyleElement.Header.ItemLeft
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Header.ItemLeft = System.Windows.Forms.VisualStyles.VisualStyleElement.Header.ItemLeft


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Header.ItemRight : System.Object
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Header.ItemRight = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Header.ItemRight System.Windows.Forms.VisualStyles.VisualStyleElement.Header.ItemRight
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Header.ItemRight = System.Windows.Forms.VisualStyles.VisualStyleElement.Header.ItemRight


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Header.SortArrow : System.Object
---@field SortedDown System.Windows.Forms.VisualStyles.VisualStyleElement
---@field SortedUp System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Header.SortArrow = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Header.SortArrow System.Windows.Forms.VisualStyles.VisualStyleElement.Header.SortArrow
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Header.SortArrow = System.Windows.Forms.VisualStyles.VisualStyleElement.Header.SortArrow


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.ListView : System.Object
System.Windows.Forms.VisualStyles.VisualStyleElement.ListView = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ListView System.Windows.Forms.VisualStyles.VisualStyleElement.ListView
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ListView = System.Windows.Forms.VisualStyles.VisualStyleElement.ListView


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.ListView.Detail : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.ListView.Detail = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ListView.Detail System.Windows.Forms.VisualStyles.VisualStyleElement.ListView.Detail
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ListView.Detail = System.Windows.Forms.VisualStyles.VisualStyleElement.ListView.Detail


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.ListView.EmptyText : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.ListView.EmptyText = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ListView.EmptyText System.Windows.Forms.VisualStyles.VisualStyleElement.ListView.EmptyText
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ListView.EmptyText = System.Windows.Forms.VisualStyles.VisualStyleElement.ListView.EmptyText


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.ListView.Group : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.ListView.Group = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ListView.Group System.Windows.Forms.VisualStyles.VisualStyleElement.ListView.Group
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ListView.Group = System.Windows.Forms.VisualStyles.VisualStyleElement.ListView.Group


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.ListView.Item : System.Object
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Selected System.Windows.Forms.VisualStyles.VisualStyleElement
---@field SelectedNotFocus System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.ListView.Item = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ListView.Item System.Windows.Forms.VisualStyles.VisualStyleElement.ListView.Item
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ListView.Item = System.Windows.Forms.VisualStyles.VisualStyleElement.ListView.Item


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.ListView.SortedDetail : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.ListView.SortedDetail = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ListView.SortedDetail System.Windows.Forms.VisualStyles.VisualStyleElement.ListView.SortedDetail
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ListView.SortedDetail = System.Windows.Forms.VisualStyles.VisualStyleElement.ListView.SortedDetail


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Menu : System.Object
System.Windows.Forms.VisualStyles.VisualStyleElement.Menu = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Menu System.Windows.Forms.VisualStyles.VisualStyleElement.Menu
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Menu = System.Windows.Forms.VisualStyles.VisualStyleElement.Menu


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Menu.BarDropDown : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Menu.BarDropDown = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Menu.BarDropDown System.Windows.Forms.VisualStyles.VisualStyleElement.Menu.BarDropDown
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Menu.BarDropDown = System.Windows.Forms.VisualStyles.VisualStyleElement.Menu.BarDropDown


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Menu.BarItem : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Menu.BarItem = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Menu.BarItem System.Windows.Forms.VisualStyles.VisualStyleElement.Menu.BarItem
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Menu.BarItem = System.Windows.Forms.VisualStyles.VisualStyleElement.Menu.BarItem


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Menu.Chevron : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Menu.Chevron = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Menu.Chevron System.Windows.Forms.VisualStyles.VisualStyleElement.Menu.Chevron
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Menu.Chevron = System.Windows.Forms.VisualStyles.VisualStyleElement.Menu.Chevron


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Menu.DropDown : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Menu.DropDown = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Menu.DropDown System.Windows.Forms.VisualStyles.VisualStyleElement.Menu.DropDown
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Menu.DropDown = System.Windows.Forms.VisualStyles.VisualStyleElement.Menu.DropDown


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Menu.Item : System.Object
---@field Demoted System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Selected System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Menu.Item = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Menu.Item System.Windows.Forms.VisualStyles.VisualStyleElement.Menu.Item
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Menu.Item = System.Windows.Forms.VisualStyles.VisualStyleElement.Menu.Item


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Menu.Separator : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Menu.Separator = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Menu.Separator System.Windows.Forms.VisualStyles.VisualStyleElement.Menu.Separator
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Menu.Separator = System.Windows.Forms.VisualStyles.VisualStyleElement.Menu.Separator


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.MenuBand : System.Object
System.Windows.Forms.VisualStyles.VisualStyleElement.MenuBand = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.MenuBand System.Windows.Forms.VisualStyles.VisualStyleElement.MenuBand
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.MenuBand = System.Windows.Forms.VisualStyles.VisualStyleElement.MenuBand


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.MenuBand.NewApplicationButton : System.Object
---@field Checked System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field HotChecked System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.MenuBand.NewApplicationButton = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.MenuBand.NewApplicationButton System.Windows.Forms.VisualStyles.VisualStyleElement.MenuBand.NewApplicationButton
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.MenuBand.NewApplicationButton = System.Windows.Forms.VisualStyles.VisualStyleElement.MenuBand.NewApplicationButton


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.MenuBand.Separator : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.MenuBand.Separator = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.MenuBand.Separator System.Windows.Forms.VisualStyles.VisualStyleElement.MenuBand.Separator
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.MenuBand.Separator = System.Windows.Forms.VisualStyles.VisualStyleElement.MenuBand.Separator


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Page : System.Object
System.Windows.Forms.VisualStyles.VisualStyleElement.Page = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Page System.Windows.Forms.VisualStyles.VisualStyleElement.Page
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Page = System.Windows.Forms.VisualStyles.VisualStyleElement.Page


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Page.Down : System.Object
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Page.Down = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Page.Down System.Windows.Forms.VisualStyles.VisualStyleElement.Page.Down
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Page.Down = System.Windows.Forms.VisualStyles.VisualStyleElement.Page.Down


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Page.DownHorizontal : System.Object
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Page.DownHorizontal = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Page.DownHorizontal System.Windows.Forms.VisualStyles.VisualStyleElement.Page.DownHorizontal
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Page.DownHorizontal = System.Windows.Forms.VisualStyles.VisualStyleElement.Page.DownHorizontal


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Page.Up : System.Object
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Page.Up = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Page.Up System.Windows.Forms.VisualStyles.VisualStyleElement.Page.Up
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Page.Up = System.Windows.Forms.VisualStyles.VisualStyleElement.Page.Up


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Page.UpHorizontal : System.Object
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Page.UpHorizontal = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Page.UpHorizontal System.Windows.Forms.VisualStyles.VisualStyleElement.Page.UpHorizontal
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Page.UpHorizontal = System.Windows.Forms.VisualStyles.VisualStyleElement.Page.UpHorizontal


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.ProgressBar : System.Object
System.Windows.Forms.VisualStyles.VisualStyleElement.ProgressBar = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ProgressBar System.Windows.Forms.VisualStyles.VisualStyleElement.ProgressBar
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ProgressBar = System.Windows.Forms.VisualStyles.VisualStyleElement.ProgressBar


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.ProgressBar.Bar : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.ProgressBar.Bar = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ProgressBar.Bar System.Windows.Forms.VisualStyles.VisualStyleElement.ProgressBar.Bar
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ProgressBar.Bar = System.Windows.Forms.VisualStyles.VisualStyleElement.ProgressBar.Bar


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.ProgressBar.BarVertical : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.ProgressBar.BarVertical = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ProgressBar.BarVertical System.Windows.Forms.VisualStyles.VisualStyleElement.ProgressBar.BarVertical
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ProgressBar.BarVertical = System.Windows.Forms.VisualStyles.VisualStyleElement.ProgressBar.BarVertical


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.ProgressBar.Chunk : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.ProgressBar.Chunk = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ProgressBar.Chunk System.Windows.Forms.VisualStyles.VisualStyleElement.ProgressBar.Chunk
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ProgressBar.Chunk = System.Windows.Forms.VisualStyles.VisualStyleElement.ProgressBar.Chunk


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.ProgressBar.ChunkVertical : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.ProgressBar.ChunkVertical = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ProgressBar.ChunkVertical System.Windows.Forms.VisualStyles.VisualStyleElement.ProgressBar.ChunkVertical
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ProgressBar.ChunkVertical = System.Windows.Forms.VisualStyles.VisualStyleElement.ProgressBar.ChunkVertical


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Rebar : System.Object
System.Windows.Forms.VisualStyles.VisualStyleElement.Rebar = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Rebar System.Windows.Forms.VisualStyles.VisualStyleElement.Rebar
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Rebar = System.Windows.Forms.VisualStyles.VisualStyleElement.Rebar


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Rebar.Band : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Rebar.Band = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Rebar.Band System.Windows.Forms.VisualStyles.VisualStyleElement.Rebar.Band
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Rebar.Band = System.Windows.Forms.VisualStyles.VisualStyleElement.Rebar.Band


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Rebar.Chevron : System.Object
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Rebar.Chevron = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Rebar.Chevron System.Windows.Forms.VisualStyles.VisualStyleElement.Rebar.Chevron
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Rebar.Chevron = System.Windows.Forms.VisualStyles.VisualStyleElement.Rebar.Chevron


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Rebar.ChevronVertical : System.Object
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Rebar.ChevronVertical = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Rebar.ChevronVertical System.Windows.Forms.VisualStyles.VisualStyleElement.Rebar.ChevronVertical
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Rebar.ChevronVertical = System.Windows.Forms.VisualStyles.VisualStyleElement.Rebar.ChevronVertical


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Rebar.Gripper : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Rebar.Gripper = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Rebar.Gripper System.Windows.Forms.VisualStyles.VisualStyleElement.Rebar.Gripper
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Rebar.Gripper = System.Windows.Forms.VisualStyles.VisualStyleElement.Rebar.Gripper


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Rebar.GripperVertical : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Rebar.GripperVertical = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Rebar.GripperVertical System.Windows.Forms.VisualStyles.VisualStyleElement.Rebar.GripperVertical
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Rebar.GripperVertical = System.Windows.Forms.VisualStyles.VisualStyleElement.Rebar.GripperVertical


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar : System.Object
System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar = System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.ArrowButton : System.Object
---@field DownDisabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field DownHot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field DownNormal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field DownPressed System.Windows.Forms.VisualStyles.VisualStyleElement
---@field LeftDisabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field LeftHot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field LeftNormal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field LeftPressed System.Windows.Forms.VisualStyles.VisualStyleElement
---@field RightDisabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field RightHot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field RightNormal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field RightPressed System.Windows.Forms.VisualStyles.VisualStyleElement
---@field UpDisabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field UpHot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field UpNormal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field UpPressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.ArrowButton = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.ArrowButton System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.ArrowButton
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.ArrowButton = System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.ArrowButton


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.GripperHorizontal : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.GripperHorizontal = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.GripperHorizontal System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.GripperHorizontal
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.GripperHorizontal = System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.GripperHorizontal


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.GripperVertical : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.GripperVertical = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.GripperVertical System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.GripperVertical
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.GripperVertical = System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.GripperVertical


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.LeftTrackHorizontal : System.Object
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.LeftTrackHorizontal = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.LeftTrackHorizontal System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.LeftTrackHorizontal
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.LeftTrackHorizontal = System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.LeftTrackHorizontal


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.LowerTrackVertical : System.Object
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.LowerTrackVertical = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.LowerTrackVertical System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.LowerTrackVertical
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.LowerTrackVertical = System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.LowerTrackVertical


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.RightTrackHorizontal : System.Object
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.RightTrackHorizontal = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.RightTrackHorizontal System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.RightTrackHorizontal
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.RightTrackHorizontal = System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.RightTrackHorizontal


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.SizeBox : System.Object
---@field LeftAlign System.Windows.Forms.VisualStyles.VisualStyleElement
---@field RightAlign System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.SizeBox = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.SizeBox System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.SizeBox
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.SizeBox = System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.SizeBox


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.ThumbButtonHorizontal : System.Object
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.ThumbButtonHorizontal = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.ThumbButtonHorizontal System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.ThumbButtonHorizontal
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.ThumbButtonHorizontal = System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.ThumbButtonHorizontal


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.ThumbButtonVertical : System.Object
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.ThumbButtonVertical = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.ThumbButtonVertical System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.ThumbButtonVertical
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.ThumbButtonVertical = System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.ThumbButtonVertical


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.UpperTrackVertical : System.Object
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.UpperTrackVertical = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.UpperTrackVertical System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.UpperTrackVertical
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.UpperTrackVertical = System.Windows.Forms.VisualStyles.VisualStyleElement.ScrollBar.UpperTrackVertical


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Spin : System.Object
System.Windows.Forms.VisualStyles.VisualStyleElement.Spin = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Spin System.Windows.Forms.VisualStyles.VisualStyleElement.Spin
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Spin = System.Windows.Forms.VisualStyles.VisualStyleElement.Spin


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Spin.Down : System.Object
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Spin.Down = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Spin.Down System.Windows.Forms.VisualStyles.VisualStyleElement.Spin.Down
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Spin.Down = System.Windows.Forms.VisualStyles.VisualStyleElement.Spin.Down


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Spin.DownHorizontal : System.Object
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Spin.DownHorizontal = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Spin.DownHorizontal System.Windows.Forms.VisualStyles.VisualStyleElement.Spin.DownHorizontal
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Spin.DownHorizontal = System.Windows.Forms.VisualStyles.VisualStyleElement.Spin.DownHorizontal


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Spin.Up : System.Object
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Spin.Up = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Spin.Up System.Windows.Forms.VisualStyles.VisualStyleElement.Spin.Up
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Spin.Up = System.Windows.Forms.VisualStyles.VisualStyleElement.Spin.Up


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Spin.UpHorizontal : System.Object
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Spin.UpHorizontal = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Spin.UpHorizontal System.Windows.Forms.VisualStyles.VisualStyleElement.Spin.UpHorizontal
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Spin.UpHorizontal = System.Windows.Forms.VisualStyles.VisualStyleElement.Spin.UpHorizontal


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel : System.Object
System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel = System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.LogOff : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.LogOff = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.LogOff System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.LogOff
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.LogOff = System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.LogOff


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.LogOffButtons : System.Object
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.LogOffButtons = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.LogOffButtons System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.LogOffButtons
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.LogOffButtons = System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.LogOffButtons


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.MorePrograms : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.MorePrograms = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.MorePrograms System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.MorePrograms
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.MorePrograms = System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.MorePrograms


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.MoreProgramsArrow : System.Object
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.MoreProgramsArrow = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.MoreProgramsArrow System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.MoreProgramsArrow
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.MoreProgramsArrow = System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.MoreProgramsArrow


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.PlaceList : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.PlaceList = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.PlaceList System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.PlaceList
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.PlaceList = System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.PlaceList


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.PlaceListSeparator : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.PlaceListSeparator = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.PlaceListSeparator System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.PlaceListSeparator
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.PlaceListSeparator = System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.PlaceListSeparator


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.Preview : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.Preview = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.Preview System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.Preview
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.Preview = System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.Preview


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.ProgList : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.ProgList = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.ProgList System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.ProgList
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.ProgList = System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.ProgList


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.ProgListSeparator : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.ProgListSeparator = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.ProgListSeparator System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.ProgListSeparator
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.ProgListSeparator = System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.ProgListSeparator


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.UserPane : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.UserPane = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.UserPane System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.UserPane
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.UserPane = System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.UserPane


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.UserPicture : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.UserPicture = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.UserPicture System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.UserPicture
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.UserPicture = System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel.UserPicture


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Status : System.Object
System.Windows.Forms.VisualStyles.VisualStyleElement.Status = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Status System.Windows.Forms.VisualStyles.VisualStyleElement.Status
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Status = System.Windows.Forms.VisualStyles.VisualStyleElement.Status


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Status.Bar : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Status.Bar = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Status.Bar System.Windows.Forms.VisualStyles.VisualStyleElement.Status.Bar
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Status.Bar = System.Windows.Forms.VisualStyles.VisualStyleElement.Status.Bar


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Status.Gripper : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Status.Gripper = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Status.Gripper System.Windows.Forms.VisualStyles.VisualStyleElement.Status.Gripper
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Status.Gripper = System.Windows.Forms.VisualStyles.VisualStyleElement.Status.Gripper


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Status.GripperPane : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Status.GripperPane = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Status.GripperPane System.Windows.Forms.VisualStyles.VisualStyleElement.Status.GripperPane
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Status.GripperPane = System.Windows.Forms.VisualStyles.VisualStyleElement.Status.GripperPane


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Status.Pane : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Status.Pane = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Status.Pane System.Windows.Forms.VisualStyles.VisualStyleElement.Status.Pane
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Status.Pane = System.Windows.Forms.VisualStyles.VisualStyleElement.Status.Pane


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Tab : System.Object
System.Windows.Forms.VisualStyles.VisualStyleElement.Tab = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Tab System.Windows.Forms.VisualStyles.VisualStyleElement.Tab
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Tab = System.Windows.Forms.VisualStyles.VisualStyleElement.Tab


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.Body : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.Body = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.Body System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.Body
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.Body = System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.Body


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.Pane : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.Pane = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.Pane System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.Pane
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.Pane = System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.Pane


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.TabItem : System.Object
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.TabItem = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.TabItem System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.TabItem
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.TabItem = System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.TabItem


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.TabItemBothEdges : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.TabItemBothEdges = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.TabItemBothEdges System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.TabItemBothEdges
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.TabItemBothEdges = System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.TabItemBothEdges


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.TabItemLeftEdge : System.Object
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.TabItemLeftEdge = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.TabItemLeftEdge System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.TabItemLeftEdge
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.TabItemLeftEdge = System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.TabItemLeftEdge


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.TabItemRightEdge : System.Object
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.TabItemRightEdge = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.TabItemRightEdge System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.TabItemRightEdge
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.TabItemRightEdge = System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.TabItemRightEdge


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.TopTabItem : System.Object
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.TopTabItem = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.TopTabItem System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.TopTabItem
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.TopTabItem = System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.TopTabItem


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.TopTabItemBothEdges : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.TopTabItemBothEdges = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.TopTabItemBothEdges System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.TopTabItemBothEdges
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.TopTabItemBothEdges = System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.TopTabItemBothEdges


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.TopTabItemLeftEdge : System.Object
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.TopTabItemLeftEdge = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.TopTabItemLeftEdge System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.TopTabItemLeftEdge
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.TopTabItemLeftEdge = System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.TopTabItemLeftEdge


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.TopTabItemRightEdge : System.Object
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.TopTabItemRightEdge = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.TopTabItemRightEdge System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.TopTabItemRightEdge
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.TopTabItemRightEdge = System.Windows.Forms.VisualStyles.VisualStyleElement.Tab.TopTabItemRightEdge


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.TaskBand : System.Object
System.Windows.Forms.VisualStyles.VisualStyleElement.TaskBand = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TaskBand System.Windows.Forms.VisualStyles.VisualStyleElement.TaskBand
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TaskBand = System.Windows.Forms.VisualStyles.VisualStyleElement.TaskBand


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.TaskBand.FlashButton : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.TaskBand.FlashButton = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TaskBand.FlashButton System.Windows.Forms.VisualStyles.VisualStyleElement.TaskBand.FlashButton
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TaskBand.FlashButton = System.Windows.Forms.VisualStyles.VisualStyleElement.TaskBand.FlashButton


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.TaskBand.FlashButtonGroupMenu : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.TaskBand.FlashButtonGroupMenu = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TaskBand.FlashButtonGroupMenu System.Windows.Forms.VisualStyles.VisualStyleElement.TaskBand.FlashButtonGroupMenu
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TaskBand.FlashButtonGroupMenu = System.Windows.Forms.VisualStyles.VisualStyleElement.TaskBand.FlashButtonGroupMenu


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.TaskBand.GroupCount : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.TaskBand.GroupCount = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TaskBand.GroupCount System.Windows.Forms.VisualStyles.VisualStyleElement.TaskBand.GroupCount
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TaskBand.GroupCount = System.Windows.Forms.VisualStyles.VisualStyleElement.TaskBand.GroupCount


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar : System.Object
System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar = System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar.BackgroundBottom : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar.BackgroundBottom = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar.BackgroundBottom System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar.BackgroundBottom
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar.BackgroundBottom = System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar.BackgroundBottom


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar.BackgroundLeft : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar.BackgroundLeft = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar.BackgroundLeft System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar.BackgroundLeft
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar.BackgroundLeft = System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar.BackgroundLeft


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar.BackgroundRight : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar.BackgroundRight = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar.BackgroundRight System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar.BackgroundRight
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar.BackgroundRight = System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar.BackgroundRight


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar.BackgroundTop : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar.BackgroundTop = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar.BackgroundTop System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar.BackgroundTop
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar.BackgroundTop = System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar.BackgroundTop


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar.SizingBarBottom : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar.SizingBarBottom = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar.SizingBarBottom System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar.SizingBarBottom
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar.SizingBarBottom = System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar.SizingBarBottom


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar.SizingBarLeft : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar.SizingBarLeft = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar.SizingBarLeft System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar.SizingBarLeft
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar.SizingBarLeft = System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar.SizingBarLeft


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar.SizingBarRight : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar.SizingBarRight = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar.SizingBarRight System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar.SizingBarRight
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar.SizingBarRight = System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar.SizingBarRight


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar.SizingBarTop : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar.SizingBarTop = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar.SizingBarTop System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar.SizingBarTop
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar.SizingBarTop = System.Windows.Forms.VisualStyles.VisualStyleElement.Taskbar.SizingBarTop


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.TaskbarClock : System.Object
System.Windows.Forms.VisualStyles.VisualStyleElement.TaskbarClock = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TaskbarClock System.Windows.Forms.VisualStyles.VisualStyleElement.TaskbarClock
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TaskbarClock = System.Windows.Forms.VisualStyles.VisualStyleElement.TaskbarClock


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.TaskbarClock.Time : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.TaskbarClock.Time = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TaskbarClock.Time System.Windows.Forms.VisualStyles.VisualStyleElement.TaskbarClock.Time
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TaskbarClock.Time = System.Windows.Forms.VisualStyles.VisualStyleElement.TaskbarClock.Time


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.TextBox : System.Object
System.Windows.Forms.VisualStyles.VisualStyleElement.TextBox = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TextBox System.Windows.Forms.VisualStyles.VisualStyleElement.TextBox
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TextBox = System.Windows.Forms.VisualStyles.VisualStyleElement.TextBox


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.TextBox.Caret : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.TextBox.Caret = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TextBox.Caret System.Windows.Forms.VisualStyles.VisualStyleElement.TextBox.Caret
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TextBox.Caret = System.Windows.Forms.VisualStyles.VisualStyleElement.TextBox.Caret


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.TextBox.TextEdit : System.Object
---@field Assist System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Focused System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field ReadOnly System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Selected System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.TextBox.TextEdit = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TextBox.TextEdit System.Windows.Forms.VisualStyles.VisualStyleElement.TextBox.TextEdit
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TextBox.TextEdit = System.Windows.Forms.VisualStyles.VisualStyleElement.TextBox.TextEdit


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.ToolBar : System.Object
System.Windows.Forms.VisualStyles.VisualStyleElement.ToolBar = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ToolBar System.Windows.Forms.VisualStyles.VisualStyleElement.ToolBar
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ToolBar = System.Windows.Forms.VisualStyles.VisualStyleElement.ToolBar


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.ToolBar.Button : System.Object
---@field Checked System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field HotChecked System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.ToolBar.Button = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ToolBar.Button System.Windows.Forms.VisualStyles.VisualStyleElement.ToolBar.Button
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ToolBar.Button = System.Windows.Forms.VisualStyles.VisualStyleElement.ToolBar.Button


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.ToolBar.DropDownButton : System.Object
---@field Checked System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field HotChecked System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.ToolBar.DropDownButton = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ToolBar.DropDownButton System.Windows.Forms.VisualStyles.VisualStyleElement.ToolBar.DropDownButton
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ToolBar.DropDownButton = System.Windows.Forms.VisualStyles.VisualStyleElement.ToolBar.DropDownButton


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.ToolBar.SeparatorHorizontal : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.ToolBar.SeparatorHorizontal = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ToolBar.SeparatorHorizontal System.Windows.Forms.VisualStyles.VisualStyleElement.ToolBar.SeparatorHorizontal
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ToolBar.SeparatorHorizontal = System.Windows.Forms.VisualStyles.VisualStyleElement.ToolBar.SeparatorHorizontal


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.ToolBar.SeparatorVertical : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.ToolBar.SeparatorVertical = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ToolBar.SeparatorVertical System.Windows.Forms.VisualStyles.VisualStyleElement.ToolBar.SeparatorVertical
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ToolBar.SeparatorVertical = System.Windows.Forms.VisualStyles.VisualStyleElement.ToolBar.SeparatorVertical


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.ToolBar.SplitButton : System.Object
---@field Checked System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field HotChecked System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.ToolBar.SplitButton = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ToolBar.SplitButton System.Windows.Forms.VisualStyles.VisualStyleElement.ToolBar.SplitButton
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ToolBar.SplitButton = System.Windows.Forms.VisualStyles.VisualStyleElement.ToolBar.SplitButton


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.ToolBar.SplitButtonDropDown : System.Object
---@field Checked System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field HotChecked System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.ToolBar.SplitButtonDropDown = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ToolBar.SplitButtonDropDown System.Windows.Forms.VisualStyles.VisualStyleElement.ToolBar.SplitButtonDropDown
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ToolBar.SplitButtonDropDown = System.Windows.Forms.VisualStyles.VisualStyleElement.ToolBar.SplitButtonDropDown


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.ToolTip : System.Object
System.Windows.Forms.VisualStyles.VisualStyleElement.ToolTip = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ToolTip System.Windows.Forms.VisualStyles.VisualStyleElement.ToolTip
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ToolTip = System.Windows.Forms.VisualStyles.VisualStyleElement.ToolTip


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.ToolTip.Balloon : System.Object
---@field Link System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.ToolTip.Balloon = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ToolTip.Balloon System.Windows.Forms.VisualStyles.VisualStyleElement.ToolTip.Balloon
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ToolTip.Balloon = System.Windows.Forms.VisualStyles.VisualStyleElement.ToolTip.Balloon


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.ToolTip.BalloonTitle : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.ToolTip.BalloonTitle = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ToolTip.BalloonTitle System.Windows.Forms.VisualStyles.VisualStyleElement.ToolTip.BalloonTitle
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ToolTip.BalloonTitle = System.Windows.Forms.VisualStyles.VisualStyleElement.ToolTip.BalloonTitle


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.ToolTip.Close : System.Object
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.ToolTip.Close = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ToolTip.Close System.Windows.Forms.VisualStyles.VisualStyleElement.ToolTip.Close
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ToolTip.Close = System.Windows.Forms.VisualStyles.VisualStyleElement.ToolTip.Close


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.ToolTip.Standard : System.Object
---@field Link System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.ToolTip.Standard = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ToolTip.Standard System.Windows.Forms.VisualStyles.VisualStyleElement.ToolTip.Standard
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ToolTip.Standard = System.Windows.Forms.VisualStyles.VisualStyleElement.ToolTip.Standard


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.ToolTip.StandardTitle : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.ToolTip.StandardTitle = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ToolTip.StandardTitle System.Windows.Forms.VisualStyles.VisualStyleElement.ToolTip.StandardTitle
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.ToolTip.StandardTitle = System.Windows.Forms.VisualStyles.VisualStyleElement.ToolTip.StandardTitle


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar : System.Object
System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar = System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.Thumb : System.Object
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Focused System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.Thumb = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.Thumb System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.Thumb
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.Thumb = System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.Thumb


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.ThumbBottom : System.Object
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Focused System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.ThumbBottom = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.ThumbBottom System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.ThumbBottom
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.ThumbBottom = System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.ThumbBottom


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.ThumbLeft : System.Object
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Focused System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.ThumbLeft = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.ThumbLeft System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.ThumbLeft
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.ThumbLeft = System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.ThumbLeft


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.ThumbRight : System.Object
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Focused System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.ThumbRight = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.ThumbRight System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.ThumbRight
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.ThumbRight = System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.ThumbRight


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.ThumbTop : System.Object
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Focused System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.ThumbTop = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.ThumbTop System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.ThumbTop
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.ThumbTop = System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.ThumbTop


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.ThumbVertical : System.Object
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Focused System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.ThumbVertical = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.ThumbVertical System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.ThumbVertical
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.ThumbVertical = System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.ThumbVertical


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.Ticks : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.Ticks = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.Ticks System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.Ticks
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.Ticks = System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.Ticks


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.TicksVertical : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.TicksVertical = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.TicksVertical System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.TicksVertical
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.TicksVertical = System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.TicksVertical


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.Track : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.Track = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.Track System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.Track
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.Track = System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.Track


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.TrackVertical : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.TrackVertical = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.TrackVertical System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.TrackVertical
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.TrackVertical = System.Windows.Forms.VisualStyles.VisualStyleElement.TrackBar.TrackVertical


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.TrayNotify : System.Object
System.Windows.Forms.VisualStyles.VisualStyleElement.TrayNotify = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TrayNotify System.Windows.Forms.VisualStyles.VisualStyleElement.TrayNotify
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TrayNotify = System.Windows.Forms.VisualStyles.VisualStyleElement.TrayNotify


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.TrayNotify.AnimateBackground : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.TrayNotify.AnimateBackground = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TrayNotify.AnimateBackground System.Windows.Forms.VisualStyles.VisualStyleElement.TrayNotify.AnimateBackground
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TrayNotify.AnimateBackground = System.Windows.Forms.VisualStyles.VisualStyleElement.TrayNotify.AnimateBackground


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.TrayNotify.Background : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.TrayNotify.Background = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TrayNotify.Background System.Windows.Forms.VisualStyles.VisualStyleElement.TrayNotify.Background
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TrayNotify.Background = System.Windows.Forms.VisualStyles.VisualStyleElement.TrayNotify.Background


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.TreeView : System.Object
System.Windows.Forms.VisualStyles.VisualStyleElement.TreeView = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TreeView System.Windows.Forms.VisualStyles.VisualStyleElement.TreeView
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TreeView = System.Windows.Forms.VisualStyles.VisualStyleElement.TreeView


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.TreeView.Branch : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.TreeView.Branch = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TreeView.Branch System.Windows.Forms.VisualStyles.VisualStyleElement.TreeView.Branch
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TreeView.Branch = System.Windows.Forms.VisualStyles.VisualStyleElement.TreeView.Branch


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.TreeView.Glyph : System.Object
---@field Closed System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Opened System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.TreeView.Glyph = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TreeView.Glyph System.Windows.Forms.VisualStyles.VisualStyleElement.TreeView.Glyph
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TreeView.Glyph = System.Windows.Forms.VisualStyles.VisualStyleElement.TreeView.Glyph


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.TreeView.Item : System.Object
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Selected System.Windows.Forms.VisualStyles.VisualStyleElement
---@field SelectedNotFocus System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.TreeView.Item = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TreeView.Item System.Windows.Forms.VisualStyles.VisualStyleElement.TreeView.Item
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.TreeView.Item = System.Windows.Forms.VisualStyles.VisualStyleElement.TreeView.Item


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Window : System.Object
System.Windows.Forms.VisualStyles.VisualStyleElement.Window = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window System.Windows.Forms.VisualStyles.VisualStyleElement.Window
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window = System.Windows.Forms.VisualStyles.VisualStyleElement.Window


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Window.Caption : System.Object
---@field Active System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Inactive System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Window.Caption = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.Caption System.Windows.Forms.VisualStyles.VisualStyleElement.Window.Caption
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.Caption = System.Windows.Forms.VisualStyles.VisualStyleElement.Window.Caption


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Window.CaptionSizingTemplate : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Window.CaptionSizingTemplate = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.CaptionSizingTemplate System.Windows.Forms.VisualStyles.VisualStyleElement.Window.CaptionSizingTemplate
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.CaptionSizingTemplate = System.Windows.Forms.VisualStyles.VisualStyleElement.Window.CaptionSizingTemplate


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Window.CloseButton : System.Object
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Window.CloseButton = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.CloseButton System.Windows.Forms.VisualStyles.VisualStyleElement.Window.CloseButton
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.CloseButton = System.Windows.Forms.VisualStyles.VisualStyleElement.Window.CloseButton


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Window.Dialog : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Window.Dialog = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.Dialog System.Windows.Forms.VisualStyles.VisualStyleElement.Window.Dialog
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.Dialog = System.Windows.Forms.VisualStyles.VisualStyleElement.Window.Dialog


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Window.FrameBottom : System.Object
---@field Active System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Inactive System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Window.FrameBottom = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.FrameBottom System.Windows.Forms.VisualStyles.VisualStyleElement.Window.FrameBottom
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.FrameBottom = System.Windows.Forms.VisualStyles.VisualStyleElement.Window.FrameBottom


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Window.FrameBottomSizingTemplate : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Window.FrameBottomSizingTemplate = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.FrameBottomSizingTemplate System.Windows.Forms.VisualStyles.VisualStyleElement.Window.FrameBottomSizingTemplate
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.FrameBottomSizingTemplate = System.Windows.Forms.VisualStyles.VisualStyleElement.Window.FrameBottomSizingTemplate


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Window.FrameLeft : System.Object
---@field Active System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Inactive System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Window.FrameLeft = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.FrameLeft System.Windows.Forms.VisualStyles.VisualStyleElement.Window.FrameLeft
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.FrameLeft = System.Windows.Forms.VisualStyles.VisualStyleElement.Window.FrameLeft


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Window.FrameLeftSizingTemplate : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Window.FrameLeftSizingTemplate = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.FrameLeftSizingTemplate System.Windows.Forms.VisualStyles.VisualStyleElement.Window.FrameLeftSizingTemplate
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.FrameLeftSizingTemplate = System.Windows.Forms.VisualStyles.VisualStyleElement.Window.FrameLeftSizingTemplate


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Window.FrameRight : System.Object
---@field Active System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Inactive System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Window.FrameRight = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.FrameRight System.Windows.Forms.VisualStyles.VisualStyleElement.Window.FrameRight
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.FrameRight = System.Windows.Forms.VisualStyles.VisualStyleElement.Window.FrameRight


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Window.FrameRightSizingTemplate : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Window.FrameRightSizingTemplate = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.FrameRightSizingTemplate System.Windows.Forms.VisualStyles.VisualStyleElement.Window.FrameRightSizingTemplate
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.FrameRightSizingTemplate = System.Windows.Forms.VisualStyles.VisualStyleElement.Window.FrameRightSizingTemplate


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Window.HelpButton : System.Object
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Window.HelpButton = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.HelpButton System.Windows.Forms.VisualStyles.VisualStyleElement.Window.HelpButton
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.HelpButton = System.Windows.Forms.VisualStyles.VisualStyleElement.Window.HelpButton


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Window.HorizontalScroll : System.Object
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Window.HorizontalScroll = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.HorizontalScroll System.Windows.Forms.VisualStyles.VisualStyleElement.Window.HorizontalScroll
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.HorizontalScroll = System.Windows.Forms.VisualStyles.VisualStyleElement.Window.HorizontalScroll


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Window.HorizontalThumb : System.Object
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Window.HorizontalThumb = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.HorizontalThumb System.Windows.Forms.VisualStyles.VisualStyleElement.Window.HorizontalThumb
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.HorizontalThumb = System.Windows.Forms.VisualStyles.VisualStyleElement.Window.HorizontalThumb


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MaxButton : System.Object
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MaxButton = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MaxButton System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MaxButton
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MaxButton = System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MaxButton


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MaxCaption : System.Object
---@field Active System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Inactive System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MaxCaption = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MaxCaption System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MaxCaption
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MaxCaption = System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MaxCaption


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MdiCloseButton : System.Object
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MdiCloseButton = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MdiCloseButton System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MdiCloseButton
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MdiCloseButton = System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MdiCloseButton


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MdiHelpButton : System.Object
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MdiHelpButton = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MdiHelpButton System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MdiHelpButton
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MdiHelpButton = System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MdiHelpButton


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MdiMinButton : System.Object
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MdiMinButton = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MdiMinButton System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MdiMinButton
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MdiMinButton = System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MdiMinButton


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MdiRestoreButton : System.Object
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MdiRestoreButton = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MdiRestoreButton System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MdiRestoreButton
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MdiRestoreButton = System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MdiRestoreButton


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MdiSysButton : System.Object
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MdiSysButton = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MdiSysButton System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MdiSysButton
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MdiSysButton = System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MdiSysButton


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MinButton : System.Object
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MinButton = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MinButton System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MinButton
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MinButton = System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MinButton


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MinCaption : System.Object
---@field Active System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Inactive System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MinCaption = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MinCaption System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MinCaption
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MinCaption = System.Windows.Forms.VisualStyles.VisualStyleElement.Window.MinCaption


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Window.RestoreButton : System.Object
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Window.RestoreButton = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.RestoreButton System.Windows.Forms.VisualStyles.VisualStyleElement.Window.RestoreButton
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.RestoreButton = System.Windows.Forms.VisualStyles.VisualStyleElement.Window.RestoreButton


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallCaption : System.Object
---@field Active System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Inactive System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallCaption = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallCaption System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallCaption
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallCaption = System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallCaption


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallCaptionSizingTemplate : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallCaptionSizingTemplate = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallCaptionSizingTemplate System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallCaptionSizingTemplate
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallCaptionSizingTemplate = System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallCaptionSizingTemplate


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallCloseButton : System.Object
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallCloseButton = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallCloseButton System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallCloseButton
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallCloseButton = System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallCloseButton


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallFrameBottom : System.Object
---@field Active System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Inactive System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallFrameBottom = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallFrameBottom System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallFrameBottom
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallFrameBottom = System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallFrameBottom


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallFrameBottomSizingTemplate : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallFrameBottomSizingTemplate = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallFrameBottomSizingTemplate System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallFrameBottomSizingTemplate
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallFrameBottomSizingTemplate = System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallFrameBottomSizingTemplate


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallFrameLeft : System.Object
---@field Active System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Inactive System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallFrameLeft = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallFrameLeft System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallFrameLeft
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallFrameLeft = System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallFrameLeft


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallFrameLeftSizingTemplate : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallFrameLeftSizingTemplate = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallFrameLeftSizingTemplate System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallFrameLeftSizingTemplate
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallFrameLeftSizingTemplate = System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallFrameLeftSizingTemplate


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallFrameRight : System.Object
---@field Active System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Inactive System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallFrameRight = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallFrameRight System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallFrameRight
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallFrameRight = System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallFrameRight


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallFrameRightSizingTemplate : System.Object
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallFrameRightSizingTemplate = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallFrameRightSizingTemplate System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallFrameRightSizingTemplate
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallFrameRightSizingTemplate = System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallFrameRightSizingTemplate


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallMaxCaption : System.Object
---@field Active System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Inactive System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallMaxCaption = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallMaxCaption System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallMaxCaption
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallMaxCaption = System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallMaxCaption


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallMinCaption : System.Object
---@field Active System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Inactive System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallMinCaption = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallMinCaption System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallMinCaption
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallMinCaption = System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SmallMinCaption


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SysButton : System.Object
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SysButton = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SysButton System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SysButton
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SysButton = System.Windows.Forms.VisualStyles.VisualStyleElement.Window.SysButton


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Window.VerticalScroll : System.Object
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Window.VerticalScroll = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.VerticalScroll System.Windows.Forms.VisualStyles.VisualStyleElement.Window.VerticalScroll
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.VerticalScroll = System.Windows.Forms.VisualStyles.VisualStyleElement.Window.VerticalScroll


---@class System.Windows.Forms.VisualStyles.VisualStyleElement.Window.VerticalThumb : System.Object
---@field Disabled System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Hot System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Normal System.Windows.Forms.VisualStyles.VisualStyleElement
---@field Pressed System.Windows.Forms.VisualStyles.VisualStyleElement
System.Windows.Forms.VisualStyles.VisualStyleElement.Window.VerticalThumb = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.VerticalThumb System.Windows.Forms.VisualStyles.VisualStyleElement.Window.VerticalThumb
CS.System.Windows.Forms.VisualStyles.VisualStyleElement.Window.VerticalThumb = System.Windows.Forms.VisualStyles.VisualStyleElement.Window.VerticalThumb


---@class System.Windows.Forms.VisualStyles.BUTTONPARTS
---@field BP_PUSHBUTTON System.Windows.Forms.VisualStyles.BUTTONPARTS
---@field BP_RADIOBUTTON System.Windows.Forms.VisualStyles.BUTTONPARTS
---@field BP_CHECKBOX System.Windows.Forms.VisualStyles.BUTTONPARTS
---@field BP_GROUPBOX System.Windows.Forms.VisualStyles.BUTTONPARTS
System.Windows.Forms.VisualStyles.BUTTONPARTS = {}
---@alias CS.System.Windows.Forms.VisualStyles.BUTTONPARTS System.Windows.Forms.VisualStyles.BUTTONPARTS
CS.System.Windows.Forms.VisualStyles.BUTTONPARTS = System.Windows.Forms.VisualStyles.BUTTONPARTS


---@class System.Windows.Forms.VisualStyles.PUSHBUTTONSTATES
---@field PBS_NORMAL System.Windows.Forms.VisualStyles.PUSHBUTTONSTATES
---@field PBS_HOT System.Windows.Forms.VisualStyles.PUSHBUTTONSTATES
---@field PBS_PRESSED System.Windows.Forms.VisualStyles.PUSHBUTTONSTATES
---@field PBS_DISABLED System.Windows.Forms.VisualStyles.PUSHBUTTONSTATES
---@field PBS_DEFAULTED System.Windows.Forms.VisualStyles.PUSHBUTTONSTATES
System.Windows.Forms.VisualStyles.PUSHBUTTONSTATES = {}
---@alias CS.System.Windows.Forms.VisualStyles.PUSHBUTTONSTATES System.Windows.Forms.VisualStyles.PUSHBUTTONSTATES
CS.System.Windows.Forms.VisualStyles.PUSHBUTTONSTATES = System.Windows.Forms.VisualStyles.PUSHBUTTONSTATES


---@class System.Windows.Forms.VisualStyles.RADIOBUTTONSTATES
---@field RBS_UNCHECKEDNORMAL System.Windows.Forms.VisualStyles.RADIOBUTTONSTATES
---@field RBS_UNCHECKEDHOT System.Windows.Forms.VisualStyles.RADIOBUTTONSTATES
---@field RBS_UNCHECKEDPRESSED System.Windows.Forms.VisualStyles.RADIOBUTTONSTATES
---@field RBS_UNCHECKEDDISABLED System.Windows.Forms.VisualStyles.RADIOBUTTONSTATES
---@field RBS_CHECKEDNORMAL System.Windows.Forms.VisualStyles.RADIOBUTTONSTATES
---@field RBS_CHECKEDHOT System.Windows.Forms.VisualStyles.RADIOBUTTONSTATES
---@field RBS_CHECKEDPRESSED System.Windows.Forms.VisualStyles.RADIOBUTTONSTATES
---@field RBS_CHECKEDDISABLED System.Windows.Forms.VisualStyles.RADIOBUTTONSTATES
System.Windows.Forms.VisualStyles.RADIOBUTTONSTATES = {}
---@alias CS.System.Windows.Forms.VisualStyles.RADIOBUTTONSTATES System.Windows.Forms.VisualStyles.RADIOBUTTONSTATES
CS.System.Windows.Forms.VisualStyles.RADIOBUTTONSTATES = System.Windows.Forms.VisualStyles.RADIOBUTTONSTATES


---@class System.Windows.Forms.VisualStyles.CHECKBOXSTATES
---@field CBS_UNCHECKEDNORMAL System.Windows.Forms.VisualStyles.CHECKBOXSTATES
---@field CBS_UNCHECKEDHOT System.Windows.Forms.VisualStyles.CHECKBOXSTATES
---@field CBS_UNCHECKEDPRESSED System.Windows.Forms.VisualStyles.CHECKBOXSTATES
---@field CBS_UNCHECKEDDISABLED System.Windows.Forms.VisualStyles.CHECKBOXSTATES
---@field CBS_CHECKEDNORMAL System.Windows.Forms.VisualStyles.CHECKBOXSTATES
---@field CBS_CHECKEDHOT System.Windows.Forms.VisualStyles.CHECKBOXSTATES
---@field CBS_CHECKEDPRESSED System.Windows.Forms.VisualStyles.CHECKBOXSTATES
---@field CBS_CHECKEDDISABLED System.Windows.Forms.VisualStyles.CHECKBOXSTATES
---@field CBS_MIXEDNORMAL System.Windows.Forms.VisualStyles.CHECKBOXSTATES
---@field CBS_MIXEDHOT System.Windows.Forms.VisualStyles.CHECKBOXSTATES
---@field CBS_MIXEDPRESSED System.Windows.Forms.VisualStyles.CHECKBOXSTATES
---@field CBS_MIXEDDISABLED System.Windows.Forms.VisualStyles.CHECKBOXSTATES
System.Windows.Forms.VisualStyles.CHECKBOXSTATES = {}
---@alias CS.System.Windows.Forms.VisualStyles.CHECKBOXSTATES System.Windows.Forms.VisualStyles.CHECKBOXSTATES
CS.System.Windows.Forms.VisualStyles.CHECKBOXSTATES = System.Windows.Forms.VisualStyles.CHECKBOXSTATES


---@class System.Windows.Forms.VisualStyles.GROUPBOXSTATES
---@field GBS_NORMAL System.Windows.Forms.VisualStyles.GROUPBOXSTATES
---@field GBS_DISABLED System.Windows.Forms.VisualStyles.GROUPBOXSTATES
System.Windows.Forms.VisualStyles.GROUPBOXSTATES = {}
---@alias CS.System.Windows.Forms.VisualStyles.GROUPBOXSTATES System.Windows.Forms.VisualStyles.GROUPBOXSTATES
CS.System.Windows.Forms.VisualStyles.GROUPBOXSTATES = System.Windows.Forms.VisualStyles.GROUPBOXSTATES


---@class System.Windows.Forms.VisualStyles.COMBOBOXPARTS
---@field CP_DROPDOWNBUTTON System.Windows.Forms.VisualStyles.COMBOBOXPARTS
---@field CP_BORDER System.Windows.Forms.VisualStyles.COMBOBOXPARTS
System.Windows.Forms.VisualStyles.COMBOBOXPARTS = {}
---@alias CS.System.Windows.Forms.VisualStyles.COMBOBOXPARTS System.Windows.Forms.VisualStyles.COMBOBOXPARTS
CS.System.Windows.Forms.VisualStyles.COMBOBOXPARTS = System.Windows.Forms.VisualStyles.COMBOBOXPARTS


---@class System.Windows.Forms.VisualStyles.COMBOBOXSTYLESTATES
---@field CBXS_NORMAL System.Windows.Forms.VisualStyles.COMBOBOXSTYLESTATES
---@field CBXS_HOT System.Windows.Forms.VisualStyles.COMBOBOXSTYLESTATES
---@field CBXS_PRESSED System.Windows.Forms.VisualStyles.COMBOBOXSTYLESTATES
---@field CBXS_DISABLED System.Windows.Forms.VisualStyles.COMBOBOXSTYLESTATES
System.Windows.Forms.VisualStyles.COMBOBOXSTYLESTATES = {}
---@alias CS.System.Windows.Forms.VisualStyles.COMBOBOXSTYLESTATES System.Windows.Forms.VisualStyles.COMBOBOXSTYLESTATES
CS.System.Windows.Forms.VisualStyles.COMBOBOXSTYLESTATES = System.Windows.Forms.VisualStyles.COMBOBOXSTYLESTATES


---@class System.Windows.Forms.VisualStyles.BORDERSTATES
---@field CBB_NORMAL System.Windows.Forms.VisualStyles.BORDERSTATES
---@field CBB_HOT System.Windows.Forms.VisualStyles.BORDERSTATES
---@field CBB_FOCUSED System.Windows.Forms.VisualStyles.BORDERSTATES
---@field CBB_DISABLED System.Windows.Forms.VisualStyles.BORDERSTATES
System.Windows.Forms.VisualStyles.BORDERSTATES = {}
---@alias CS.System.Windows.Forms.VisualStyles.BORDERSTATES System.Windows.Forms.VisualStyles.BORDERSTATES
CS.System.Windows.Forms.VisualStyles.BORDERSTATES = System.Windows.Forms.VisualStyles.BORDERSTATES


---@class System.Windows.Forms.VisualStyles.EDITPARTS
---@field EP_EDITTEXT System.Windows.Forms.VisualStyles.EDITPARTS
System.Windows.Forms.VisualStyles.EDITPARTS = {}
---@alias CS.System.Windows.Forms.VisualStyles.EDITPARTS System.Windows.Forms.VisualStyles.EDITPARTS
CS.System.Windows.Forms.VisualStyles.EDITPARTS = System.Windows.Forms.VisualStyles.EDITPARTS


---@class System.Windows.Forms.VisualStyles.EDITTEXTSTATES
---@field ETS_NORMAL System.Windows.Forms.VisualStyles.EDITTEXTSTATES
---@field ETS_HOT System.Windows.Forms.VisualStyles.EDITTEXTSTATES
---@field ETS_SELECTED System.Windows.Forms.VisualStyles.EDITTEXTSTATES
---@field ETS_DISABLED System.Windows.Forms.VisualStyles.EDITTEXTSTATES
---@field ETS_FOCUSED System.Windows.Forms.VisualStyles.EDITTEXTSTATES
---@field ETS_READONLY System.Windows.Forms.VisualStyles.EDITTEXTSTATES
---@field ETS_ASSIST System.Windows.Forms.VisualStyles.EDITTEXTSTATES
System.Windows.Forms.VisualStyles.EDITTEXTSTATES = {}
---@alias CS.System.Windows.Forms.VisualStyles.EDITTEXTSTATES System.Windows.Forms.VisualStyles.EDITTEXTSTATES
CS.System.Windows.Forms.VisualStyles.EDITTEXTSTATES = System.Windows.Forms.VisualStyles.EDITTEXTSTATES


---@class System.Windows.Forms.VisualStyles.HEADERPARTS
---@field HP_HEADERITEM System.Windows.Forms.VisualStyles.HEADERPARTS
System.Windows.Forms.VisualStyles.HEADERPARTS = {}
---@alias CS.System.Windows.Forms.VisualStyles.HEADERPARTS System.Windows.Forms.VisualStyles.HEADERPARTS
CS.System.Windows.Forms.VisualStyles.HEADERPARTS = System.Windows.Forms.VisualStyles.HEADERPARTS


---@class System.Windows.Forms.VisualStyles.HEADERITEMSTATES
---@field HIS_NORMAL System.Windows.Forms.VisualStyles.HEADERITEMSTATES
---@field HIS_HOT System.Windows.Forms.VisualStyles.HEADERITEMSTATES
---@field HIS_PRESSED System.Windows.Forms.VisualStyles.HEADERITEMSTATES
System.Windows.Forms.VisualStyles.HEADERITEMSTATES = {}
---@alias CS.System.Windows.Forms.VisualStyles.HEADERITEMSTATES System.Windows.Forms.VisualStyles.HEADERITEMSTATES
CS.System.Windows.Forms.VisualStyles.HEADERITEMSTATES = System.Windows.Forms.VisualStyles.HEADERITEMSTATES


---@class System.Windows.Forms.VisualStyles.PROGRESSPARTS
---@field PP_BAR System.Windows.Forms.VisualStyles.PROGRESSPARTS
---@field PP_BARVERT System.Windows.Forms.VisualStyles.PROGRESSPARTS
---@field PP_CHUNK System.Windows.Forms.VisualStyles.PROGRESSPARTS
---@field PP_CHUNKVERT System.Windows.Forms.VisualStyles.PROGRESSPARTS
System.Windows.Forms.VisualStyles.PROGRESSPARTS = {}
---@alias CS.System.Windows.Forms.VisualStyles.PROGRESSPARTS System.Windows.Forms.VisualStyles.PROGRESSPARTS
CS.System.Windows.Forms.VisualStyles.PROGRESSPARTS = System.Windows.Forms.VisualStyles.PROGRESSPARTS


---@class System.Windows.Forms.VisualStyles.REBARPARTS
---@field RP_BAND System.Windows.Forms.VisualStyles.REBARPARTS
System.Windows.Forms.VisualStyles.REBARPARTS = {}
---@alias CS.System.Windows.Forms.VisualStyles.REBARPARTS System.Windows.Forms.VisualStyles.REBARPARTS
CS.System.Windows.Forms.VisualStyles.REBARPARTS = System.Windows.Forms.VisualStyles.REBARPARTS


---@class System.Windows.Forms.VisualStyles.SCROLLBARPARTS
---@field SBP_ARROWBTN System.Windows.Forms.VisualStyles.SCROLLBARPARTS
---@field SBP_THUMBBTNHORZ System.Windows.Forms.VisualStyles.SCROLLBARPARTS
---@field SBP_THUMBBTNVERT System.Windows.Forms.VisualStyles.SCROLLBARPARTS
---@field SBP_LOWERTRACKHORZ System.Windows.Forms.VisualStyles.SCROLLBARPARTS
---@field SBP_UPPERTRACKHORZ System.Windows.Forms.VisualStyles.SCROLLBARPARTS
---@field SBP_LOWERTRACKVERT System.Windows.Forms.VisualStyles.SCROLLBARPARTS
---@field SBP_UPPERTRACKVERT System.Windows.Forms.VisualStyles.SCROLLBARPARTS
---@field SBP_GRIPPERHORZ System.Windows.Forms.VisualStyles.SCROLLBARPARTS
---@field SBP_GRIPPERVERT System.Windows.Forms.VisualStyles.SCROLLBARPARTS
---@field SBP_SIZEBOX System.Windows.Forms.VisualStyles.SCROLLBARPARTS
System.Windows.Forms.VisualStyles.SCROLLBARPARTS = {}
---@alias CS.System.Windows.Forms.VisualStyles.SCROLLBARPARTS System.Windows.Forms.VisualStyles.SCROLLBARPARTS
CS.System.Windows.Forms.VisualStyles.SCROLLBARPARTS = System.Windows.Forms.VisualStyles.SCROLLBARPARTS


---@class System.Windows.Forms.VisualStyles.ARROWBTNSTATES
---@field ABS_UPNORMAL System.Windows.Forms.VisualStyles.ARROWBTNSTATES
---@field ABS_UPHOT System.Windows.Forms.VisualStyles.ARROWBTNSTATES
---@field ABS_UPPRESSED System.Windows.Forms.VisualStyles.ARROWBTNSTATES
---@field ABS_UPDISABLED System.Windows.Forms.VisualStyles.ARROWBTNSTATES
---@field ABS_DOWNNORMAL System.Windows.Forms.VisualStyles.ARROWBTNSTATES
---@field ABS_DOWNHOT System.Windows.Forms.VisualStyles.ARROWBTNSTATES
---@field ABS_DOWNPRESSED System.Windows.Forms.VisualStyles.ARROWBTNSTATES
---@field ABS_DOWNDISABLED System.Windows.Forms.VisualStyles.ARROWBTNSTATES
---@field ABS_LEFTNORMAL System.Windows.Forms.VisualStyles.ARROWBTNSTATES
---@field ABS_LEFTHOT System.Windows.Forms.VisualStyles.ARROWBTNSTATES
---@field ABS_LEFTPRESSED System.Windows.Forms.VisualStyles.ARROWBTNSTATES
---@field ABS_LEFTDISABLED System.Windows.Forms.VisualStyles.ARROWBTNSTATES
---@field ABS_RIGHTNORMAL System.Windows.Forms.VisualStyles.ARROWBTNSTATES
---@field ABS_RIGHTHOT System.Windows.Forms.VisualStyles.ARROWBTNSTATES
---@field ABS_RIGHTPRESSED System.Windows.Forms.VisualStyles.ARROWBTNSTATES
---@field ABS_RIGHTDISABLED System.Windows.Forms.VisualStyles.ARROWBTNSTATES
---@field ABS_UPHOVER System.Windows.Forms.VisualStyles.ARROWBTNSTATES
---@field ABS_DOWNHOVER System.Windows.Forms.VisualStyles.ARROWBTNSTATES
---@field ABS_LEFTHOVER System.Windows.Forms.VisualStyles.ARROWBTNSTATES
---@field ABS_RIGHTHOVER System.Windows.Forms.VisualStyles.ARROWBTNSTATES
System.Windows.Forms.VisualStyles.ARROWBTNSTATES = {}
---@alias CS.System.Windows.Forms.VisualStyles.ARROWBTNSTATES System.Windows.Forms.VisualStyles.ARROWBTNSTATES
CS.System.Windows.Forms.VisualStyles.ARROWBTNSTATES = System.Windows.Forms.VisualStyles.ARROWBTNSTATES


---@class System.Windows.Forms.VisualStyles.SCROLLBARSTYLESTATES
---@field SCRBS_NORMAL System.Windows.Forms.VisualStyles.SCROLLBARSTYLESTATES
---@field SCRBS_HOT System.Windows.Forms.VisualStyles.SCROLLBARSTYLESTATES
---@field SCRBS_PRESSED System.Windows.Forms.VisualStyles.SCROLLBARSTYLESTATES
---@field SCRBS_DISABLED System.Windows.Forms.VisualStyles.SCROLLBARSTYLESTATES
System.Windows.Forms.VisualStyles.SCROLLBARSTYLESTATES = {}
---@alias CS.System.Windows.Forms.VisualStyles.SCROLLBARSTYLESTATES System.Windows.Forms.VisualStyles.SCROLLBARSTYLESTATES
CS.System.Windows.Forms.VisualStyles.SCROLLBARSTYLESTATES = System.Windows.Forms.VisualStyles.SCROLLBARSTYLESTATES


---@class System.Windows.Forms.VisualStyles.SIZEBOXSTATES
---@field SZB_RIGHTALIGN System.Windows.Forms.VisualStyles.SIZEBOXSTATES
---@field SZB_LEFTALIGN System.Windows.Forms.VisualStyles.SIZEBOXSTATES
System.Windows.Forms.VisualStyles.SIZEBOXSTATES = {}
---@alias CS.System.Windows.Forms.VisualStyles.SIZEBOXSTATES System.Windows.Forms.VisualStyles.SIZEBOXSTATES
CS.System.Windows.Forms.VisualStyles.SIZEBOXSTATES = System.Windows.Forms.VisualStyles.SIZEBOXSTATES


---@class System.Windows.Forms.VisualStyles.SPINPARTS
---@field SPNP_UP System.Windows.Forms.VisualStyles.SPINPARTS
---@field SPNP_DOWN System.Windows.Forms.VisualStyles.SPINPARTS
---@field SPNP_UPHORZ System.Windows.Forms.VisualStyles.SPINPARTS
---@field SPNP_DOWNHORZ System.Windows.Forms.VisualStyles.SPINPARTS
System.Windows.Forms.VisualStyles.SPINPARTS = {}
---@alias CS.System.Windows.Forms.VisualStyles.SPINPARTS System.Windows.Forms.VisualStyles.SPINPARTS
CS.System.Windows.Forms.VisualStyles.SPINPARTS = System.Windows.Forms.VisualStyles.SPINPARTS


---@class System.Windows.Forms.VisualStyles.UPSTATES
---@field UPS_NORMAL System.Windows.Forms.VisualStyles.UPSTATES
---@field UPS_HOT System.Windows.Forms.VisualStyles.UPSTATES
---@field UPS_PRESSED System.Windows.Forms.VisualStyles.UPSTATES
---@field UPS_DISABLED System.Windows.Forms.VisualStyles.UPSTATES
System.Windows.Forms.VisualStyles.UPSTATES = {}
---@alias CS.System.Windows.Forms.VisualStyles.UPSTATES System.Windows.Forms.VisualStyles.UPSTATES
CS.System.Windows.Forms.VisualStyles.UPSTATES = System.Windows.Forms.VisualStyles.UPSTATES


---@class System.Windows.Forms.VisualStyles.DOWNSTATES
---@field DNS_NORMAL System.Windows.Forms.VisualStyles.DOWNSTATES
---@field DNS_HOT System.Windows.Forms.VisualStyles.DOWNSTATES
---@field DNS_PRESSED System.Windows.Forms.VisualStyles.DOWNSTATES
---@field DNS_DISABLED System.Windows.Forms.VisualStyles.DOWNSTATES
System.Windows.Forms.VisualStyles.DOWNSTATES = {}
---@alias CS.System.Windows.Forms.VisualStyles.DOWNSTATES System.Windows.Forms.VisualStyles.DOWNSTATES
CS.System.Windows.Forms.VisualStyles.DOWNSTATES = System.Windows.Forms.VisualStyles.DOWNSTATES


---@class System.Windows.Forms.VisualStyles.UPHORZSTATES
---@field UPHZS_NORMAL System.Windows.Forms.VisualStyles.UPHORZSTATES
---@field UPHZS_HOT System.Windows.Forms.VisualStyles.UPHORZSTATES
---@field UPHZS_PRESSED System.Windows.Forms.VisualStyles.UPHORZSTATES
---@field UPHZS_DISABLED System.Windows.Forms.VisualStyles.UPHORZSTATES
System.Windows.Forms.VisualStyles.UPHORZSTATES = {}
---@alias CS.System.Windows.Forms.VisualStyles.UPHORZSTATES System.Windows.Forms.VisualStyles.UPHORZSTATES
CS.System.Windows.Forms.VisualStyles.UPHORZSTATES = System.Windows.Forms.VisualStyles.UPHORZSTATES


---@class System.Windows.Forms.VisualStyles.DOWNHORZSTATES
---@field DNHZS_NORMAL System.Windows.Forms.VisualStyles.DOWNHORZSTATES
---@field DNHZS_HOT System.Windows.Forms.VisualStyles.DOWNHORZSTATES
---@field DNHZS_PRESSED System.Windows.Forms.VisualStyles.DOWNHORZSTATES
---@field DNHZS_DISABLED System.Windows.Forms.VisualStyles.DOWNHORZSTATES
System.Windows.Forms.VisualStyles.DOWNHORZSTATES = {}
---@alias CS.System.Windows.Forms.VisualStyles.DOWNHORZSTATES System.Windows.Forms.VisualStyles.DOWNHORZSTATES
CS.System.Windows.Forms.VisualStyles.DOWNHORZSTATES = System.Windows.Forms.VisualStyles.DOWNHORZSTATES


---@class System.Windows.Forms.VisualStyles.STATUSPARTS
---@field SP_GRIPPER System.Windows.Forms.VisualStyles.STATUSPARTS
System.Windows.Forms.VisualStyles.STATUSPARTS = {}
---@alias CS.System.Windows.Forms.VisualStyles.STATUSPARTS System.Windows.Forms.VisualStyles.STATUSPARTS
CS.System.Windows.Forms.VisualStyles.STATUSPARTS = System.Windows.Forms.VisualStyles.STATUSPARTS


---@class System.Windows.Forms.VisualStyles.TABPARTS
---@field TABP_TABITEM System.Windows.Forms.VisualStyles.TABPARTS
---@field TABP_TABITEMLEFTEDGE System.Windows.Forms.VisualStyles.TABPARTS
---@field TABP_TABITEMRIGHTEDGE System.Windows.Forms.VisualStyles.TABPARTS
---@field TABP_TABITEMBOTHEDGE System.Windows.Forms.VisualStyles.TABPARTS
---@field TABP_TOPTABITEM System.Windows.Forms.VisualStyles.TABPARTS
---@field TABP_TOPTABITEMLEFTEDGE System.Windows.Forms.VisualStyles.TABPARTS
---@field TABP_TOPTABITEMRIGHTEDGE System.Windows.Forms.VisualStyles.TABPARTS
---@field TABP_TOPTABITEMBOTHEDGE System.Windows.Forms.VisualStyles.TABPARTS
---@field TABP_PANE System.Windows.Forms.VisualStyles.TABPARTS
---@field TABP_BODY System.Windows.Forms.VisualStyles.TABPARTS
System.Windows.Forms.VisualStyles.TABPARTS = {}
---@alias CS.System.Windows.Forms.VisualStyles.TABPARTS System.Windows.Forms.VisualStyles.TABPARTS
CS.System.Windows.Forms.VisualStyles.TABPARTS = System.Windows.Forms.VisualStyles.TABPARTS


---@class System.Windows.Forms.VisualStyles.TABITEMSTATES
---@field TIS_NORMAL System.Windows.Forms.VisualStyles.TABITEMSTATES
---@field TIS_HOT System.Windows.Forms.VisualStyles.TABITEMSTATES
---@field TIS_SELECTED System.Windows.Forms.VisualStyles.TABITEMSTATES
---@field TIS_DISABLED System.Windows.Forms.VisualStyles.TABITEMSTATES
System.Windows.Forms.VisualStyles.TABITEMSTATES = {}
---@alias CS.System.Windows.Forms.VisualStyles.TABITEMSTATES System.Windows.Forms.VisualStyles.TABITEMSTATES
CS.System.Windows.Forms.VisualStyles.TABITEMSTATES = System.Windows.Forms.VisualStyles.TABITEMSTATES


---@class System.Windows.Forms.VisualStyles.TABITEMLEFTEDGESTATES
---@field TILES_NORMAL System.Windows.Forms.VisualStyles.TABITEMLEFTEDGESTATES
---@field TILES_HOT System.Windows.Forms.VisualStyles.TABITEMLEFTEDGESTATES
---@field TILES_SELECTED System.Windows.Forms.VisualStyles.TABITEMLEFTEDGESTATES
---@field TILES_DISABLED System.Windows.Forms.VisualStyles.TABITEMLEFTEDGESTATES
System.Windows.Forms.VisualStyles.TABITEMLEFTEDGESTATES = {}
---@alias CS.System.Windows.Forms.VisualStyles.TABITEMLEFTEDGESTATES System.Windows.Forms.VisualStyles.TABITEMLEFTEDGESTATES
CS.System.Windows.Forms.VisualStyles.TABITEMLEFTEDGESTATES = System.Windows.Forms.VisualStyles.TABITEMLEFTEDGESTATES


---@class System.Windows.Forms.VisualStyles.TABITEMRIGHTEDGESTATES
---@field TIRES_NORMAL System.Windows.Forms.VisualStyles.TABITEMRIGHTEDGESTATES
---@field TIRES_HOT System.Windows.Forms.VisualStyles.TABITEMRIGHTEDGESTATES
---@field TIRES_SELECTED System.Windows.Forms.VisualStyles.TABITEMRIGHTEDGESTATES
---@field TIRES_DISABLED System.Windows.Forms.VisualStyles.TABITEMRIGHTEDGESTATES
System.Windows.Forms.VisualStyles.TABITEMRIGHTEDGESTATES = {}
---@alias CS.System.Windows.Forms.VisualStyles.TABITEMRIGHTEDGESTATES System.Windows.Forms.VisualStyles.TABITEMRIGHTEDGESTATES
CS.System.Windows.Forms.VisualStyles.TABITEMRIGHTEDGESTATES = System.Windows.Forms.VisualStyles.TABITEMRIGHTEDGESTATES


---@class System.Windows.Forms.VisualStyles.TOPTABITEMSTATES
---@field TTIS_NORMAL System.Windows.Forms.VisualStyles.TOPTABITEMSTATES
---@field TTIS_HOT System.Windows.Forms.VisualStyles.TOPTABITEMSTATES
---@field TTIS_SELECTED System.Windows.Forms.VisualStyles.TOPTABITEMSTATES
---@field TTIS_DISABLED System.Windows.Forms.VisualStyles.TOPTABITEMSTATES
System.Windows.Forms.VisualStyles.TOPTABITEMSTATES = {}
---@alias CS.System.Windows.Forms.VisualStyles.TOPTABITEMSTATES System.Windows.Forms.VisualStyles.TOPTABITEMSTATES
CS.System.Windows.Forms.VisualStyles.TOPTABITEMSTATES = System.Windows.Forms.VisualStyles.TOPTABITEMSTATES


---@class System.Windows.Forms.VisualStyles.TOPTABITEMLEFTEDGESTATES
---@field TTILES_NORMAL System.Windows.Forms.VisualStyles.TOPTABITEMLEFTEDGESTATES
---@field TTILES_HOT System.Windows.Forms.VisualStyles.TOPTABITEMLEFTEDGESTATES
---@field TTILES_SELECTED System.Windows.Forms.VisualStyles.TOPTABITEMLEFTEDGESTATES
---@field TTILES_DISABLED System.Windows.Forms.VisualStyles.TOPTABITEMLEFTEDGESTATES
System.Windows.Forms.VisualStyles.TOPTABITEMLEFTEDGESTATES = {}
---@alias CS.System.Windows.Forms.VisualStyles.TOPTABITEMLEFTEDGESTATES System.Windows.Forms.VisualStyles.TOPTABITEMLEFTEDGESTATES
CS.System.Windows.Forms.VisualStyles.TOPTABITEMLEFTEDGESTATES = System.Windows.Forms.VisualStyles.TOPTABITEMLEFTEDGESTATES


---@class System.Windows.Forms.VisualStyles.TOPTABITEMRIGHTEDGESTATES
---@field TTIRES_NORMAL System.Windows.Forms.VisualStyles.TOPTABITEMRIGHTEDGESTATES
---@field TTIRES_HOT System.Windows.Forms.VisualStyles.TOPTABITEMRIGHTEDGESTATES
---@field TTIRES_SELECTED System.Windows.Forms.VisualStyles.TOPTABITEMRIGHTEDGESTATES
---@field TTIRES_DISABLED System.Windows.Forms.VisualStyles.TOPTABITEMRIGHTEDGESTATES
System.Windows.Forms.VisualStyles.TOPTABITEMRIGHTEDGESTATES = {}
---@alias CS.System.Windows.Forms.VisualStyles.TOPTABITEMRIGHTEDGESTATES System.Windows.Forms.VisualStyles.TOPTABITEMRIGHTEDGESTATES
CS.System.Windows.Forms.VisualStyles.TOPTABITEMRIGHTEDGESTATES = System.Windows.Forms.VisualStyles.TOPTABITEMRIGHTEDGESTATES


---@class System.Windows.Forms.VisualStyles.TOOLBARPARTS
---@field TP_BUTTON System.Windows.Forms.VisualStyles.TOOLBARPARTS
System.Windows.Forms.VisualStyles.TOOLBARPARTS = {}
---@alias CS.System.Windows.Forms.VisualStyles.TOOLBARPARTS System.Windows.Forms.VisualStyles.TOOLBARPARTS
CS.System.Windows.Forms.VisualStyles.TOOLBARPARTS = System.Windows.Forms.VisualStyles.TOOLBARPARTS


---@class System.Windows.Forms.VisualStyles.TOOLBARSTYLESTATES
---@field TS_NORMAL System.Windows.Forms.VisualStyles.TOOLBARSTYLESTATES
---@field TS_HOT System.Windows.Forms.VisualStyles.TOOLBARSTYLESTATES
---@field TS_PRESSED System.Windows.Forms.VisualStyles.TOOLBARSTYLESTATES
---@field TS_DISABLED System.Windows.Forms.VisualStyles.TOOLBARSTYLESTATES
---@field TS_CHECKED System.Windows.Forms.VisualStyles.TOOLBARSTYLESTATES
---@field TS_HOTCHECKED System.Windows.Forms.VisualStyles.TOOLBARSTYLESTATES
System.Windows.Forms.VisualStyles.TOOLBARSTYLESTATES = {}
---@alias CS.System.Windows.Forms.VisualStyles.TOOLBARSTYLESTATES System.Windows.Forms.VisualStyles.TOOLBARSTYLESTATES
CS.System.Windows.Forms.VisualStyles.TOOLBARSTYLESTATES = System.Windows.Forms.VisualStyles.TOOLBARSTYLESTATES


---@class System.Windows.Forms.VisualStyles.TRACKBARPARTS
---@field TKP_TRACK System.Windows.Forms.VisualStyles.TRACKBARPARTS
---@field TKP_TRACKVERT System.Windows.Forms.VisualStyles.TRACKBARPARTS
---@field TKP_THUMB System.Windows.Forms.VisualStyles.TRACKBARPARTS
---@field TKP_THUMBVERT System.Windows.Forms.VisualStyles.TRACKBARPARTS
System.Windows.Forms.VisualStyles.TRACKBARPARTS = {}
---@alias CS.System.Windows.Forms.VisualStyles.TRACKBARPARTS System.Windows.Forms.VisualStyles.TRACKBARPARTS
CS.System.Windows.Forms.VisualStyles.TRACKBARPARTS = System.Windows.Forms.VisualStyles.TRACKBARPARTS


---@class System.Windows.Forms.VisualStyles.TRACKSTATES
---@field TRS_NORMAL System.Windows.Forms.VisualStyles.TRACKSTATES
System.Windows.Forms.VisualStyles.TRACKSTATES = {}
---@alias CS.System.Windows.Forms.VisualStyles.TRACKSTATES System.Windows.Forms.VisualStyles.TRACKSTATES
CS.System.Windows.Forms.VisualStyles.TRACKSTATES = System.Windows.Forms.VisualStyles.TRACKSTATES


---@class System.Windows.Forms.VisualStyles.TRACKVERTSTATES
---@field TRVS_NORMAL System.Windows.Forms.VisualStyles.TRACKVERTSTATES
System.Windows.Forms.VisualStyles.TRACKVERTSTATES = {}
---@alias CS.System.Windows.Forms.VisualStyles.TRACKVERTSTATES System.Windows.Forms.VisualStyles.TRACKVERTSTATES
CS.System.Windows.Forms.VisualStyles.TRACKVERTSTATES = System.Windows.Forms.VisualStyles.TRACKVERTSTATES


---@class System.Windows.Forms.VisualStyles.THUMBSTATES
---@field TUS_NORMAL System.Windows.Forms.VisualStyles.THUMBSTATES
---@field TUS_HOT System.Windows.Forms.VisualStyles.THUMBSTATES
---@field TUS_PRESSED System.Windows.Forms.VisualStyles.THUMBSTATES
---@field TUS_FOCUSED System.Windows.Forms.VisualStyles.THUMBSTATES
---@field TUS_DISABLED System.Windows.Forms.VisualStyles.THUMBSTATES
System.Windows.Forms.VisualStyles.THUMBSTATES = {}
---@alias CS.System.Windows.Forms.VisualStyles.THUMBSTATES System.Windows.Forms.VisualStyles.THUMBSTATES
CS.System.Windows.Forms.VisualStyles.THUMBSTATES = System.Windows.Forms.VisualStyles.THUMBSTATES


---@class System.Windows.Forms.VisualStyles.THUMBVERTSTATES
---@field TUVS_NORMAL System.Windows.Forms.VisualStyles.THUMBVERTSTATES
---@field TUVS_HOT System.Windows.Forms.VisualStyles.THUMBVERTSTATES
---@field TUVS_PRESSED System.Windows.Forms.VisualStyles.THUMBVERTSTATES
---@field TUVS_FOCUSED System.Windows.Forms.VisualStyles.THUMBVERTSTATES
---@field TUVS_DISABLED System.Windows.Forms.VisualStyles.THUMBVERTSTATES
System.Windows.Forms.VisualStyles.THUMBVERTSTATES = {}
---@alias CS.System.Windows.Forms.VisualStyles.THUMBVERTSTATES System.Windows.Forms.VisualStyles.THUMBVERTSTATES
CS.System.Windows.Forms.VisualStyles.THUMBVERTSTATES = System.Windows.Forms.VisualStyles.THUMBVERTSTATES


---@class System.Windows.Forms.VisualStyles.TREEVIEWPARTS
---@field TVP_GLYPH System.Windows.Forms.VisualStyles.TREEVIEWPARTS
System.Windows.Forms.VisualStyles.TREEVIEWPARTS = {}
---@alias CS.System.Windows.Forms.VisualStyles.TREEVIEWPARTS System.Windows.Forms.VisualStyles.TREEVIEWPARTS
CS.System.Windows.Forms.VisualStyles.TREEVIEWPARTS = System.Windows.Forms.VisualStyles.TREEVIEWPARTS


---@class System.Windows.Forms.VisualStyles.GLYPHSTATES
---@field GLPS_CLOSED System.Windows.Forms.VisualStyles.GLYPHSTATES
---@field GLPS_OPENED System.Windows.Forms.VisualStyles.GLYPHSTATES
System.Windows.Forms.VisualStyles.GLYPHSTATES = {}
---@alias CS.System.Windows.Forms.VisualStyles.GLYPHSTATES System.Windows.Forms.VisualStyles.GLYPHSTATES
CS.System.Windows.Forms.VisualStyles.GLYPHSTATES = System.Windows.Forms.VisualStyles.GLYPHSTATES


---@class System.Windows.Forms.VisualStyles.VisualStyleInformation : System.Object
---@field Author string
---@field ColorScheme string
---@field Company string
---@field ControlHighlightHot System.Drawing.Color
---@field Copyright string
---@field Description string
---@field DisplayName string
---@field IsEnabledByUser boolean
---@field IsSupportedByOS boolean
---@field MinimumColorDepth number
---@field Size string
---@field SupportsFlatMenus boolean
---@field TextControlBorder System.Drawing.Color
---@field Url string
---@field Version string
System.Windows.Forms.VisualStyles.VisualStyleInformation = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleInformation System.Windows.Forms.VisualStyles.VisualStyleInformation
CS.System.Windows.Forms.VisualStyles.VisualStyleInformation = System.Windows.Forms.VisualStyles.VisualStyleInformation


---@class System.Windows.Forms.VisualStyles.VisualStyleRenderer : System.Object
---@field IsSupported boolean
---@field Class string
---@field Handle System.IntPtr
---@field LastHResult number
---@field Part number
---@field State number
System.Windows.Forms.VisualStyles.VisualStyleRenderer = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleRenderer System.Windows.Forms.VisualStyles.VisualStyleRenderer
CS.System.Windows.Forms.VisualStyles.VisualStyleRenderer = System.Windows.Forms.VisualStyles.VisualStyleRenderer

---@overload fun(className: string, part: number, state: number) : System.Windows.Forms.VisualStyles.VisualStyleRenderer
---@param element System.Windows.Forms.VisualStyles.VisualStyleElement
---@return System.Windows.Forms.VisualStyles.VisualStyleRenderer
function System.Windows.Forms.VisualStyles.VisualStyleRenderer.New(element) end
---@param element System.Windows.Forms.VisualStyles.VisualStyleElement
---@return boolean
function System.Windows.Forms.VisualStyles.VisualStyleRenderer.IsElementDefined(element) end
---@overload fun(self: System.Windows.Forms.VisualStyles.VisualStyleRenderer, dc: System.Drawing.IDeviceContext, bounds: System.Drawing.Rectangle)
---@param dc System.Drawing.IDeviceContext
---@param bounds System.Drawing.Rectangle
---@param clipRectangle System.Drawing.Rectangle
function System.Windows.Forms.VisualStyles.VisualStyleRenderer:DrawBackground(dc, bounds, clipRectangle) end
---@param dc System.Drawing.IDeviceContext
---@param bounds System.Drawing.Rectangle
---@param edges System.Windows.Forms.VisualStyles.Edges
---@param style System.Windows.Forms.VisualStyles.EdgeStyle
---@param effects System.Windows.Forms.VisualStyles.EdgeEffects
---@return System.Drawing.Rectangle
function System.Windows.Forms.VisualStyles.VisualStyleRenderer:DrawEdge(dc, bounds, edges, style, effects) end
---@overload fun(self: System.Windows.Forms.VisualStyles.VisualStyleRenderer, g: System.Drawing.Graphics, bounds: System.Drawing.Rectangle, imageList: System.Windows.Forms.ImageList, imageIndex: number)
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param image System.Drawing.Image
function System.Windows.Forms.VisualStyles.VisualStyleRenderer:DrawImage(g, bounds, image) end
---@param dc System.Drawing.IDeviceContext
---@param bounds System.Drawing.Rectangle
---@param childControl System.Windows.Forms.Control
function System.Windows.Forms.VisualStyles.VisualStyleRenderer:DrawParentBackground(dc, bounds, childControl) end
---@overload fun(self: System.Windows.Forms.VisualStyles.VisualStyleRenderer, dc: System.Drawing.IDeviceContext, bounds: System.Drawing.Rectangle, textToDraw: string, drawDisabled: boolean, flags: System.Windows.Forms.TextFormatFlags)
---@overload fun(self: System.Windows.Forms.VisualStyles.VisualStyleRenderer, dc: System.Drawing.IDeviceContext, bounds: System.Drawing.Rectangle, textToDraw: string, drawDisabled: boolean)
---@param dc System.Drawing.IDeviceContext
---@param bounds System.Drawing.Rectangle
---@param textToDraw string
function System.Windows.Forms.VisualStyles.VisualStyleRenderer:DrawText(dc, bounds, textToDraw) end
---@param dc System.Drawing.IDeviceContext
---@param bounds System.Drawing.Rectangle
---@return System.Drawing.Rectangle
function System.Windows.Forms.VisualStyles.VisualStyleRenderer:GetBackgroundContentRectangle(dc, bounds) end
---@param dc System.Drawing.IDeviceContext
---@param contentBounds System.Drawing.Rectangle
---@return System.Drawing.Rectangle
function System.Windows.Forms.VisualStyles.VisualStyleRenderer:GetBackgroundExtent(dc, contentBounds) end
---@param dc System.Drawing.IDeviceContext
---@param bounds System.Drawing.Rectangle
---@return System.Drawing.Region
function System.Windows.Forms.VisualStyles.VisualStyleRenderer:GetBackgroundRegion(dc, bounds) end
---@param prop System.Windows.Forms.VisualStyles.BooleanProperty
---@return boolean
function System.Windows.Forms.VisualStyles.VisualStyleRenderer:GetBoolean(prop) end
---@param prop System.Windows.Forms.VisualStyles.ColorProperty
---@return System.Drawing.Color
function System.Windows.Forms.VisualStyles.VisualStyleRenderer:GetColor(prop) end
---@param prop System.Windows.Forms.VisualStyles.EnumProperty
---@return number
function System.Windows.Forms.VisualStyles.VisualStyleRenderer:GetEnumValue(prop) end
---@param prop System.Windows.Forms.VisualStyles.FilenameProperty
---@return string
function System.Windows.Forms.VisualStyles.VisualStyleRenderer:GetFilename(prop) end
---@param dc System.Drawing.IDeviceContext
---@param prop System.Windows.Forms.VisualStyles.FontProperty
---@return System.Drawing.Font
function System.Windows.Forms.VisualStyles.VisualStyleRenderer:GetFont(dc, prop) end
---@param prop System.Windows.Forms.VisualStyles.IntegerProperty
---@return number
function System.Windows.Forms.VisualStyles.VisualStyleRenderer:GetInteger(prop) end
---@param dc System.Drawing.IDeviceContext
---@param prop System.Windows.Forms.VisualStyles.MarginProperty
---@return System.Windows.Forms.Padding
function System.Windows.Forms.VisualStyles.VisualStyleRenderer:GetMargins(dc, prop) end
---@overload fun(self: System.Windows.Forms.VisualStyles.VisualStyleRenderer, dc: System.Drawing.IDeviceContext, bounds: System.Drawing.Rectangle, type: System.Windows.Forms.VisualStyles.ThemeSizeType) : System.Drawing.Size
---@param dc System.Drawing.IDeviceContext
---@param type System.Windows.Forms.VisualStyles.ThemeSizeType
---@return System.Drawing.Size
function System.Windows.Forms.VisualStyles.VisualStyleRenderer:GetPartSize(dc, type) end
---@param prop System.Windows.Forms.VisualStyles.PointProperty
---@return System.Drawing.Point
function System.Windows.Forms.VisualStyles.VisualStyleRenderer:GetPoint(prop) end
---@param prop System.Windows.Forms.VisualStyles.StringProperty
---@return string
function System.Windows.Forms.VisualStyles.VisualStyleRenderer:GetString(prop) end
---@overload fun(self: System.Windows.Forms.VisualStyles.VisualStyleRenderer, dc: System.Drawing.IDeviceContext, bounds: System.Drawing.Rectangle, textToDraw: string, flags: System.Windows.Forms.TextFormatFlags) : System.Drawing.Rectangle
---@param dc System.Drawing.IDeviceContext
---@param textToDraw string
---@param flags System.Windows.Forms.TextFormatFlags
---@return System.Drawing.Rectangle
function System.Windows.Forms.VisualStyles.VisualStyleRenderer:GetTextExtent(dc, textToDraw, flags) end
---@param dc System.Drawing.IDeviceContext
---@return System.Windows.Forms.VisualStyles.TextMetrics
function System.Windows.Forms.VisualStyles.VisualStyleRenderer:GetTextMetrics(dc) end
---@overload fun(self: System.Windows.Forms.VisualStyles.VisualStyleRenderer, dc: System.Drawing.IDeviceContext, backgroundRectangle: System.Drawing.Rectangle, hRgn: System.IntPtr, pt: System.Drawing.Point, options: System.Windows.Forms.VisualStyles.HitTestOptions) : System.Windows.Forms.VisualStyles.HitTestCode
---@overload fun(self: System.Windows.Forms.VisualStyles.VisualStyleRenderer, g: System.Drawing.Graphics, backgroundRectangle: System.Drawing.Rectangle, region: System.Drawing.Region, pt: System.Drawing.Point, options: System.Windows.Forms.VisualStyles.HitTestOptions) : System.Windows.Forms.VisualStyles.HitTestCode
---@param dc System.Drawing.IDeviceContext
---@param backgroundRectangle System.Drawing.Rectangle
---@param pt System.Drawing.Point
---@param options System.Windows.Forms.VisualStyles.HitTestOptions
---@return System.Windows.Forms.VisualStyles.HitTestCode
function System.Windows.Forms.VisualStyles.VisualStyleRenderer:HitTestBackground(dc, backgroundRectangle, pt, options) end
---@return boolean
function System.Windows.Forms.VisualStyles.VisualStyleRenderer:IsBackgroundPartiallyTransparent() end
---@overload fun(self: System.Windows.Forms.VisualStyles.VisualStyleRenderer, className: string, part: number, state: number)
---@param element System.Windows.Forms.VisualStyles.VisualStyleElement
function System.Windows.Forms.VisualStyles.VisualStyleRenderer:SetParameters(element) end

---@class System.Windows.Forms.VisualStyles.VisualStyleRenderer.ThemeHandleManager : System.Object
---@field VisualStyleRenderer System.Windows.Forms.VisualStyles.VisualStyleRenderer
System.Windows.Forms.VisualStyles.VisualStyleRenderer.ThemeHandleManager = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleRenderer.ThemeHandleManager System.Windows.Forms.VisualStyles.VisualStyleRenderer.ThemeHandleManager
CS.System.Windows.Forms.VisualStyles.VisualStyleRenderer.ThemeHandleManager = System.Windows.Forms.VisualStyles.VisualStyleRenderer.ThemeHandleManager

---@return System.Windows.Forms.VisualStyles.VisualStyleRenderer.ThemeHandleManager
function System.Windows.Forms.VisualStyles.VisualStyleRenderer.ThemeHandleManager.New() end

---@class System.Windows.Forms.VisualStyles.VisualStyleState
---@field NoneEnabled System.Windows.Forms.VisualStyles.VisualStyleState
---@field NonClientAreaEnabled System.Windows.Forms.VisualStyles.VisualStyleState
---@field ClientAreaEnabled System.Windows.Forms.VisualStyles.VisualStyleState
---@field ClientAndNonClientAreasEnabled System.Windows.Forms.VisualStyles.VisualStyleState
System.Windows.Forms.VisualStyles.VisualStyleState = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStyleState System.Windows.Forms.VisualStyles.VisualStyleState
CS.System.Windows.Forms.VisualStyles.VisualStyleState = System.Windows.Forms.VisualStyles.VisualStyleState


---@class System.Windows.Forms.VisualStyles.VisualStylesEngine : System.Object
---@field Instance System.Windows.Forms.VisualStyles.IVisualStyles
System.Windows.Forms.VisualStyles.VisualStylesEngine = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStylesEngine System.Windows.Forms.VisualStyles.VisualStylesEngine
CS.System.Windows.Forms.VisualStyles.VisualStylesEngine = System.Windows.Forms.VisualStyles.VisualStylesEngine

---@return System.Windows.Forms.VisualStyles.VisualStylesEngine
function System.Windows.Forms.VisualStyles.VisualStylesEngine.New() end

---@class System.Windows.Forms.VisualStyles.VisualStylesGtkPlus : System.Object
---@field VisualStyleInformationAuthor string
---@field VisualStyleInformationColorScheme string
---@field VisualStyleInformationCompany string
---@field VisualStyleInformationControlHighlightHot System.Drawing.Color
---@field VisualStyleInformationCopyright string
---@field VisualStyleInformationDescription string
---@field VisualStyleInformationDisplayName string
---@field VisualStyleInformationFileName string
---@field VisualStyleInformationIsSupportedByOS boolean
---@field VisualStyleInformationMinimumColorDepth number
---@field VisualStyleInformationSize string
---@field VisualStyleInformationSupportsFlatMenus boolean
---@field VisualStyleInformationTextControlBorder System.Drawing.Color
---@field VisualStyleInformationUrl string
---@field VisualStyleInformationVersion string
System.Windows.Forms.VisualStyles.VisualStylesGtkPlus = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStylesGtkPlus System.Windows.Forms.VisualStyles.VisualStylesGtkPlus
CS.System.Windows.Forms.VisualStyles.VisualStylesGtkPlus = System.Windows.Forms.VisualStyles.VisualStylesGtkPlus

---@return System.Windows.Forms.VisualStyles.VisualStylesGtkPlus
function System.Windows.Forms.VisualStyles.VisualStylesGtkPlus.New() end
---@return boolean
function System.Windows.Forms.VisualStyles.VisualStylesGtkPlus.Initialize() end
---@param hTheme System.IntPtr
---@return number
function System.Windows.Forms.VisualStyles.VisualStylesGtkPlus:UxThemeCloseThemeData(hTheme) end
---@param dc System.Drawing.IDeviceContext
---@param bounds System.Drawing.Rectangle
---@param childControl System.Windows.Forms.Control
---@return number
function System.Windows.Forms.VisualStyles.VisualStylesGtkPlus:UxThemeDrawThemeParentBackground(dc, bounds, childControl) end
---@overload fun(self: System.Windows.Forms.VisualStyles.VisualStylesGtkPlus, hTheme: System.IntPtr, dc: System.Drawing.IDeviceContext, iPartId: number, iStateId: number, bounds: System.Drawing.Rectangle, clipRectangle: System.Drawing.Rectangle) : number
---@param hTheme System.IntPtr
---@param dc System.Drawing.IDeviceContext
---@param iPartId number
---@param iStateId number
---@param bounds System.Drawing.Rectangle
---@return number
function System.Windows.Forms.VisualStyles.VisualStylesGtkPlus:UxThemeDrawThemeBackground(hTheme, dc, iPartId, iStateId, bounds) end
---@param hTheme System.IntPtr
---@param dc System.Drawing.IDeviceContext
---@param iPartId number
---@param iStateId number
---@param bounds System.Drawing.Rectangle
---@param edges System.Windows.Forms.VisualStyles.Edges
---@param style System.Windows.Forms.VisualStyles.EdgeStyle
---@param effects System.Windows.Forms.VisualStyles.EdgeEffects
---@param out_result System.Drawing.Rectangle
---@return number,System.Drawing.Rectangle
function System.Windows.Forms.VisualStyles.VisualStylesGtkPlus:UxThemeDrawThemeEdge(hTheme, dc, iPartId, iStateId, bounds, edges, style, effects, out_result) end
---@param hTheme System.IntPtr
---@param dc System.Drawing.IDeviceContext
---@param iPartId number
---@param iStateId number
---@param text string
---@param textFlags System.Windows.Forms.TextFormatFlags
---@param bounds System.Drawing.Rectangle
---@return number
function System.Windows.Forms.VisualStyles.VisualStylesGtkPlus:UxThemeDrawThemeText(hTheme, dc, iPartId, iStateId, text, textFlags, bounds) end
---@param hTheme System.IntPtr
---@param dc System.Drawing.IDeviceContext
---@param iPartId number
---@param iStateId number
---@param bounds System.Drawing.Rectangle
---@param out_result System.Drawing.Rectangle
---@return number,System.Drawing.Rectangle
function System.Windows.Forms.VisualStyles.VisualStylesGtkPlus:UxThemeGetThemeBackgroundContentRect(hTheme, dc, iPartId, iStateId, bounds, out_result) end
---@param hTheme System.IntPtr
---@param dc System.Drawing.IDeviceContext
---@param iPartId number
---@param iStateId number
---@param contentBounds System.Drawing.Rectangle
---@param out_result System.Drawing.Rectangle
---@return number,System.Drawing.Rectangle
function System.Windows.Forms.VisualStyles.VisualStylesGtkPlus:UxThemeGetThemeBackgroundExtent(hTheme, dc, iPartId, iStateId, contentBounds, out_result) end
---@param hTheme System.IntPtr
---@param dc System.Drawing.IDeviceContext
---@param iPartId number
---@param iStateId number
---@param bounds System.Drawing.Rectangle
---@param out_result System.Drawing.Region
---@return number,System.Drawing.Region
function System.Windows.Forms.VisualStyles.VisualStylesGtkPlus:UxThemeGetThemeBackgroundRegion(hTheme, dc, iPartId, iStateId, bounds, out_result) end
---@param hTheme System.IntPtr
---@param iPartId number
---@param iStateId number
---@param prop System.Windows.Forms.VisualStyles.BooleanProperty
---@param out_result boolean
---@return number,boolean
function System.Windows.Forms.VisualStyles.VisualStylesGtkPlus:UxThemeGetThemeBool(hTheme, iPartId, iStateId, prop, out_result) end
---@param hTheme System.IntPtr
---@param iPartId number
---@param iStateId number
---@param prop System.Windows.Forms.VisualStyles.ColorProperty
---@param out_result System.Drawing.Color
---@return number,System.Drawing.Color
function System.Windows.Forms.VisualStyles.VisualStylesGtkPlus:UxThemeGetThemeColor(hTheme, iPartId, iStateId, prop, out_result) end
---@param hTheme System.IntPtr
---@param iPartId number
---@param iStateId number
---@param prop System.Windows.Forms.VisualStyles.EnumProperty
---@param out_result number
---@return number,number
function System.Windows.Forms.VisualStyles.VisualStylesGtkPlus:UxThemeGetThemeEnumValue(hTheme, iPartId, iStateId, prop, out_result) end
---@param hTheme System.IntPtr
---@param iPartId number
---@param iStateId number
---@param prop System.Windows.Forms.VisualStyles.FilenameProperty
---@param out_result string
---@return number,string
function System.Windows.Forms.VisualStyles.VisualStylesGtkPlus:UxThemeGetThemeFilename(hTheme, iPartId, iStateId, prop, out_result) end
---@param hTheme System.IntPtr
---@param iPartId number
---@param iStateId number
---@param prop System.Windows.Forms.VisualStyles.IntegerProperty
---@param out_result number
---@return number,number
function System.Windows.Forms.VisualStyles.VisualStylesGtkPlus:UxThemeGetThemeInt(hTheme, iPartId, iStateId, prop, out_result) end
---@param hTheme System.IntPtr
---@param dc System.Drawing.IDeviceContext
---@param iPartId number
---@param iStateId number
---@param prop System.Windows.Forms.VisualStyles.MarginProperty
---@param out_result System.Windows.Forms.Padding
---@return number,System.Windows.Forms.Padding
function System.Windows.Forms.VisualStyles.VisualStylesGtkPlus:UxThemeGetThemeMargins(hTheme, dc, iPartId, iStateId, prop, out_result) end
---@overload fun(self: System.Windows.Forms.VisualStyles.VisualStylesGtkPlus, hTheme: System.IntPtr, dc: System.Drawing.IDeviceContext, iPartId: number, iStateId: number, bounds: System.Drawing.Rectangle, type: System.Windows.Forms.VisualStyles.ThemeSizeType, out_result: System.Drawing.Size) : number, System.Drawing.Size
---@param hTheme System.IntPtr
---@param dc System.Drawing.IDeviceContext
---@param iPartId number
---@param iStateId number
---@param type System.Windows.Forms.VisualStyles.ThemeSizeType
---@param out_result System.Drawing.Size
---@return number,System.Drawing.Size
function System.Windows.Forms.VisualStyles.VisualStylesGtkPlus:UxThemeGetThemePartSize(hTheme, dc, iPartId, iStateId, type, out_result) end
---@param hTheme System.IntPtr
---@param iPartId number
---@param iStateId number
---@param prop System.Windows.Forms.VisualStyles.PointProperty
---@param out_result System.Drawing.Point
---@return number,System.Drawing.Point
function System.Windows.Forms.VisualStyles.VisualStylesGtkPlus:UxThemeGetThemePosition(hTheme, iPartId, iStateId, prop, out_result) end
---@param hTheme System.IntPtr
---@param iPartId number
---@param iStateId number
---@param prop System.Windows.Forms.VisualStyles.StringProperty
---@param out_result string
---@return number,string
function System.Windows.Forms.VisualStyles.VisualStylesGtkPlus:UxThemeGetThemeString(hTheme, iPartId, iStateId, prop, out_result) end
---@overload fun(self: System.Windows.Forms.VisualStyles.VisualStylesGtkPlus, hTheme: System.IntPtr, dc: System.Drawing.IDeviceContext, iPartId: number, iStateId: number, textToDraw: string, flags: System.Windows.Forms.TextFormatFlags, bounds: System.Drawing.Rectangle, out_result: System.Drawing.Rectangle) : number, System.Drawing.Rectangle
---@param hTheme System.IntPtr
---@param dc System.Drawing.IDeviceContext
---@param iPartId number
---@param iStateId number
---@param textToDraw string
---@param flags System.Windows.Forms.TextFormatFlags
---@param out_result System.Drawing.Rectangle
---@return number,System.Drawing.Rectangle
function System.Windows.Forms.VisualStyles.VisualStylesGtkPlus:UxThemeGetThemeTextExtent(hTheme, dc, iPartId, iStateId, textToDraw, flags, out_result) end
---@param hTheme System.IntPtr
---@param dc System.Drawing.IDeviceContext
---@param iPartId number
---@param iStateId number
---@param out_result System.Windows.Forms.VisualStyles.TextMetrics
---@return number,System.Windows.Forms.VisualStyles.TextMetrics
function System.Windows.Forms.VisualStyles.VisualStylesGtkPlus:UxThemeGetThemeTextMetrics(hTheme, dc, iPartId, iStateId, out_result) end
---@param hTheme System.IntPtr
---@param dc System.Drawing.IDeviceContext
---@param iPartId number
---@param iStateId number
---@param options System.Windows.Forms.VisualStyles.HitTestOptions
---@param backgroundRectangle System.Drawing.Rectangle
---@param hrgn System.IntPtr
---@param pt System.Drawing.Point
---@param out_result System.Windows.Forms.VisualStyles.HitTestCode
---@return number,System.Windows.Forms.VisualStyles.HitTestCode
function System.Windows.Forms.VisualStyles.VisualStylesGtkPlus:UxThemeHitTestThemeBackground(hTheme, dc, iPartId, iStateId, options, backgroundRectangle, hrgn, pt, out_result) end
---@return boolean
function System.Windows.Forms.VisualStyles.VisualStylesGtkPlus:UxThemeIsAppThemed() end
---@return boolean
function System.Windows.Forms.VisualStyles.VisualStylesGtkPlus:UxThemeIsThemeActive() end
---@param hTheme System.IntPtr
---@param iPartId number
---@param iStateId number
---@return boolean
function System.Windows.Forms.VisualStyles.VisualStylesGtkPlus:UxThemeIsThemeBackgroundPartiallyTransparent(hTheme, iPartId, iStateId) end
---@param hTheme System.IntPtr
---@param iPartId number
---@return boolean
function System.Windows.Forms.VisualStyles.VisualStylesGtkPlus:UxThemeIsThemePartDefined(hTheme, iPartId) end
---@param hWnd System.IntPtr
---@param classList string
---@return System.IntPtr
function System.Windows.Forms.VisualStyles.VisualStylesGtkPlus:UxThemeOpenThemeData(hWnd, classList) end
---@param theme System.IntPtr
---@param dc System.Drawing.IDeviceContext
---@param part number
---@param state number
---@param bounds System.Drawing.Rectangle
---@param excludedArea System.Drawing.Rectangle
function System.Windows.Forms.VisualStyles.VisualStylesGtkPlus:VisualStyleRendererDrawBackgroundExcludingArea(theme, dc, part, state, bounds, excludedArea) end

---@class System.Windows.Forms.VisualStyles.VisualStylesGtkPlus.S
---@field S_OK System.Windows.Forms.VisualStyles.VisualStylesGtkPlus.S
---@field S_FALSE System.Windows.Forms.VisualStyles.VisualStylesGtkPlus.S
System.Windows.Forms.VisualStyles.VisualStylesGtkPlus.S = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStylesGtkPlus.S System.Windows.Forms.VisualStyles.VisualStylesGtkPlus.S
CS.System.Windows.Forms.VisualStyles.VisualStylesGtkPlus.S = System.Windows.Forms.VisualStyles.VisualStylesGtkPlus.S


---@class System.Windows.Forms.VisualStyles.VisualStylesGtkPlus.ThemeHandle
---@field BUTTON System.Windows.Forms.VisualStyles.VisualStylesGtkPlus.ThemeHandle
---@field COMBOBOX System.Windows.Forms.VisualStyles.VisualStylesGtkPlus.ThemeHandle
---@field EDIT System.Windows.Forms.VisualStyles.VisualStylesGtkPlus.ThemeHandle
---@field HEADER System.Windows.Forms.VisualStyles.VisualStylesGtkPlus.ThemeHandle
---@field PROGRESS System.Windows.Forms.VisualStyles.VisualStylesGtkPlus.ThemeHandle
---@field REBAR System.Windows.Forms.VisualStyles.VisualStylesGtkPlus.ThemeHandle
---@field SCROLLBAR System.Windows.Forms.VisualStyles.VisualStylesGtkPlus.ThemeHandle
---@field SPIN System.Windows.Forms.VisualStyles.VisualStylesGtkPlus.ThemeHandle
---@field STATUS System.Windows.Forms.VisualStyles.VisualStylesGtkPlus.ThemeHandle
---@field TAB System.Windows.Forms.VisualStyles.VisualStylesGtkPlus.ThemeHandle
---@field TOOLBAR System.Windows.Forms.VisualStyles.VisualStylesGtkPlus.ThemeHandle
---@field TRACKBAR System.Windows.Forms.VisualStyles.VisualStylesGtkPlus.ThemeHandle
---@field TREEVIEW System.Windows.Forms.VisualStyles.VisualStylesGtkPlus.ThemeHandle
System.Windows.Forms.VisualStyles.VisualStylesGtkPlus.ThemeHandle = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStylesGtkPlus.ThemeHandle System.Windows.Forms.VisualStyles.VisualStylesGtkPlus.ThemeHandle
CS.System.Windows.Forms.VisualStyles.VisualStylesGtkPlus.ThemeHandle = System.Windows.Forms.VisualStyles.VisualStylesGtkPlus.ThemeHandle


---@class System.Windows.Forms.VisualStyles.VisualStylesNative : System.Object
---@field VisualStyleInformationAuthor string
---@field VisualStyleInformationColorScheme string
---@field VisualStyleInformationCompany string
---@field VisualStyleInformationControlHighlightHot System.Drawing.Color
---@field VisualStyleInformationCopyright string
---@field VisualStyleInformationDescription string
---@field VisualStyleInformationDisplayName string
---@field VisualStyleInformationFileName string
---@field VisualStyleInformationIsSupportedByOS boolean
---@field VisualStyleInformationMinimumColorDepth number
---@field VisualStyleInformationSize string
---@field VisualStyleInformationSupportsFlatMenus boolean
---@field VisualStyleInformationTextControlBorder System.Drawing.Color
---@field VisualStyleInformationUrl string
---@field VisualStyleInformationVersion string
System.Windows.Forms.VisualStyles.VisualStylesNative = {}
---@alias CS.System.Windows.Forms.VisualStyles.VisualStylesNative System.Windows.Forms.VisualStyles.VisualStylesNative
CS.System.Windows.Forms.VisualStyles.VisualStylesNative = System.Windows.Forms.VisualStyles.VisualStylesNative

---@return System.Windows.Forms.VisualStyles.VisualStylesNative
function System.Windows.Forms.VisualStyles.VisualStylesNative.New() end
---@return boolean
function System.Windows.Forms.VisualStyles.VisualStylesNative.IsSupported() end
---@param hTheme System.IntPtr
---@return number
function System.Windows.Forms.VisualStyles.VisualStylesNative:UxThemeCloseThemeData(hTheme) end
---@overload fun(self: System.Windows.Forms.VisualStyles.VisualStylesNative, hTheme: System.IntPtr, dc: System.Drawing.IDeviceContext, iPartId: number, iStateId: number, bounds: System.Drawing.Rectangle) : number
---@param hTheme System.IntPtr
---@param dc System.Drawing.IDeviceContext
---@param iPartId number
---@param iStateId number
---@param bounds System.Drawing.Rectangle
---@param clipRectangle System.Drawing.Rectangle
---@return number
function System.Windows.Forms.VisualStyles.VisualStylesNative:UxThemeDrawThemeBackground(hTheme, dc, iPartId, iStateId, bounds, clipRectangle) end
---@param hTheme System.IntPtr
---@param dc System.Drawing.IDeviceContext
---@param iPartId number
---@param iStateId number
---@param bounds System.Drawing.Rectangle
---@param edges System.Windows.Forms.VisualStyles.Edges
---@param style System.Windows.Forms.VisualStyles.EdgeStyle
---@param effects System.Windows.Forms.VisualStyles.EdgeEffects
---@param out_result System.Drawing.Rectangle
---@return number,System.Drawing.Rectangle
function System.Windows.Forms.VisualStyles.VisualStylesNative:UxThemeDrawThemeEdge(hTheme, dc, iPartId, iStateId, bounds, edges, style, effects, out_result) end
---@param dc System.Drawing.IDeviceContext
---@param bounds System.Drawing.Rectangle
---@param childControl System.Windows.Forms.Control
---@return number
function System.Windows.Forms.VisualStyles.VisualStylesNative:UxThemeDrawThemeParentBackground(dc, bounds, childControl) end
---@param hTheme System.IntPtr
---@param dc System.Drawing.IDeviceContext
---@param iPartId number
---@param iStateId number
---@param text string
---@param textFlags System.Windows.Forms.TextFormatFlags
---@param bounds System.Drawing.Rectangle
---@return number
function System.Windows.Forms.VisualStyles.VisualStylesNative:UxThemeDrawThemeText(hTheme, dc, iPartId, iStateId, text, textFlags, bounds) end
---@param hTheme System.IntPtr
---@param dc System.Drawing.IDeviceContext
---@param iPartId number
---@param iStateId number
---@param bounds System.Drawing.Rectangle
---@param out_result System.Drawing.Rectangle
---@return number,System.Drawing.Rectangle
function System.Windows.Forms.VisualStyles.VisualStylesNative:UxThemeGetThemeBackgroundContentRect(hTheme, dc, iPartId, iStateId, bounds, out_result) end
---@param hTheme System.IntPtr
---@param dc System.Drawing.IDeviceContext
---@param iPartId number
---@param iStateId number
---@param contentBounds System.Drawing.Rectangle
---@param out_result System.Drawing.Rectangle
---@return number,System.Drawing.Rectangle
function System.Windows.Forms.VisualStyles.VisualStylesNative:UxThemeGetThemeBackgroundExtent(hTheme, dc, iPartId, iStateId, contentBounds, out_result) end
---@param hTheme System.IntPtr
---@param dc System.Drawing.IDeviceContext
---@param iPartId number
---@param iStateId number
---@param bounds System.Drawing.Rectangle
---@param out_result System.Drawing.Region
---@return number,System.Drawing.Region
function System.Windows.Forms.VisualStyles.VisualStylesNative:UxThemeGetThemeBackgroundRegion(hTheme, dc, iPartId, iStateId, bounds, out_result) end
---@param hTheme System.IntPtr
---@param iPartId number
---@param iStateId number
---@param prop System.Windows.Forms.VisualStyles.BooleanProperty
---@param out_result boolean
---@return number,boolean
function System.Windows.Forms.VisualStyles.VisualStylesNative:UxThemeGetThemeBool(hTheme, iPartId, iStateId, prop, out_result) end
---@param hTheme System.IntPtr
---@param iPartId number
---@param iStateId number
---@param prop System.Windows.Forms.VisualStyles.ColorProperty
---@param out_result System.Drawing.Color
---@return number,System.Drawing.Color
function System.Windows.Forms.VisualStyles.VisualStylesNative:UxThemeGetThemeColor(hTheme, iPartId, iStateId, prop, out_result) end
---@param hTheme System.IntPtr
---@param iPartId number
---@param iStateId number
---@param prop System.Windows.Forms.VisualStyles.EnumProperty
---@param out_result number
---@return number,number
function System.Windows.Forms.VisualStyles.VisualStylesNative:UxThemeGetThemeEnumValue(hTheme, iPartId, iStateId, prop, out_result) end
---@param hTheme System.IntPtr
---@param iPartId number
---@param iStateId number
---@param prop System.Windows.Forms.VisualStyles.FilenameProperty
---@param out_result string
---@return number,string
function System.Windows.Forms.VisualStyles.VisualStylesNative:UxThemeGetThemeFilename(hTheme, iPartId, iStateId, prop, out_result) end
---@param hTheme System.IntPtr
---@param iPartId number
---@param iStateId number
---@param prop System.Windows.Forms.VisualStyles.IntegerProperty
---@param out_result number
---@return number,number
function System.Windows.Forms.VisualStyles.VisualStylesNative:UxThemeGetThemeInt(hTheme, iPartId, iStateId, prop, out_result) end
---@param hTheme System.IntPtr
---@param dc System.Drawing.IDeviceContext
---@param iPartId number
---@param iStateId number
---@param prop System.Windows.Forms.VisualStyles.MarginProperty
---@param out_result System.Windows.Forms.Padding
---@return number,System.Windows.Forms.Padding
function System.Windows.Forms.VisualStyles.VisualStylesNative:UxThemeGetThemeMargins(hTheme, dc, iPartId, iStateId, prop, out_result) end
---@overload fun(self: System.Windows.Forms.VisualStyles.VisualStylesNative, hTheme: System.IntPtr, dc: System.Drawing.IDeviceContext, iPartId: number, iStateId: number, bounds: System.Drawing.Rectangle, type: System.Windows.Forms.VisualStyles.ThemeSizeType, out_result: System.Drawing.Size) : number, System.Drawing.Size
---@param hTheme System.IntPtr
---@param dc System.Drawing.IDeviceContext
---@param iPartId number
---@param iStateId number
---@param type System.Windows.Forms.VisualStyles.ThemeSizeType
---@param out_result System.Drawing.Size
---@return number,System.Drawing.Size
function System.Windows.Forms.VisualStyles.VisualStylesNative:UxThemeGetThemePartSize(hTheme, dc, iPartId, iStateId, type, out_result) end
---@param hTheme System.IntPtr
---@param iPartId number
---@param iStateId number
---@param prop System.Windows.Forms.VisualStyles.PointProperty
---@param out_result System.Drawing.Point
---@return number,System.Drawing.Point
function System.Windows.Forms.VisualStyles.VisualStylesNative:UxThemeGetThemePosition(hTheme, iPartId, iStateId, prop, out_result) end
---@param hTheme System.IntPtr
---@param iPartId number
---@param iStateId number
---@param prop System.Windows.Forms.VisualStyles.StringProperty
---@param out_result string
---@return number,string
function System.Windows.Forms.VisualStyles.VisualStylesNative:UxThemeGetThemeString(hTheme, iPartId, iStateId, prop, out_result) end
---@overload fun(self: System.Windows.Forms.VisualStyles.VisualStylesNative, hTheme: System.IntPtr, dc: System.Drawing.IDeviceContext, iPartId: number, iStateId: number, textToDraw: string, flags: System.Windows.Forms.TextFormatFlags, bounds: System.Drawing.Rectangle, out_result: System.Drawing.Rectangle) : number, System.Drawing.Rectangle
---@param hTheme System.IntPtr
---@param dc System.Drawing.IDeviceContext
---@param iPartId number
---@param iStateId number
---@param textToDraw string
---@param flags System.Windows.Forms.TextFormatFlags
---@param out_result System.Drawing.Rectangle
---@return number,System.Drawing.Rectangle
function System.Windows.Forms.VisualStyles.VisualStylesNative:UxThemeGetThemeTextExtent(hTheme, dc, iPartId, iStateId, textToDraw, flags, out_result) end
---@param hTheme System.IntPtr
---@param dc System.Drawing.IDeviceContext
---@param iPartId number
---@param iStateId number
---@param out_result System.Windows.Forms.VisualStyles.TextMetrics
---@return number,System.Windows.Forms.VisualStyles.TextMetrics
function System.Windows.Forms.VisualStyles.VisualStylesNative:UxThemeGetThemeTextMetrics(hTheme, dc, iPartId, iStateId, out_result) end
---@param hTheme System.IntPtr
---@param dc System.Drawing.IDeviceContext
---@param iPartId number
---@param iStateId number
---@param options System.Windows.Forms.VisualStyles.HitTestOptions
---@param backgroundRectangle System.Drawing.Rectangle
---@param hrgn System.IntPtr
---@param pt System.Drawing.Point
---@param out_result System.Windows.Forms.VisualStyles.HitTestCode
---@return number,System.Windows.Forms.VisualStyles.HitTestCode
function System.Windows.Forms.VisualStyles.VisualStylesNative:UxThemeHitTestThemeBackground(hTheme, dc, iPartId, iStateId, options, backgroundRectangle, hrgn, pt, out_result) end
---@return boolean
function System.Windows.Forms.VisualStyles.VisualStylesNative:UxThemeIsAppThemed() end
---@return boolean
function System.Windows.Forms.VisualStyles.VisualStylesNative:UxThemeIsThemeActive() end
---@param hTheme System.IntPtr
---@param iPartId number
---@return boolean
function System.Windows.Forms.VisualStyles.VisualStylesNative:UxThemeIsThemePartDefined(hTheme, iPartId) end
---@param hTheme System.IntPtr
---@param iPartId number
---@param iStateId number
---@return boolean
function System.Windows.Forms.VisualStyles.VisualStylesNative:UxThemeIsThemeBackgroundPartiallyTransparent(hTheme, iPartId, iStateId) end
---@param hWnd System.IntPtr
---@param classList string
---@return System.IntPtr
function System.Windows.Forms.VisualStyles.VisualStylesNative:UxThemeOpenThemeData(hWnd, classList) end
---@param theme System.IntPtr
---@param dc System.Drawing.IDeviceContext
---@param part number
---@param state number
---@param bounds System.Drawing.Rectangle
---@param excludedArea System.Drawing.Rectangle
function System.Windows.Forms.VisualStyles.VisualStylesNative:VisualStyleRendererDrawBackgroundExcludingArea(theme, dc, part, state, bounds, excludedArea) end

---@class System.Windows.Forms.Theming.ThemeElements : System.Object
---@field CurrentTheme System.Windows.Forms.Theming.ThemeElementsDefault
---@field LabelPainter System.Windows.Forms.Theming.Default.LabelPainter
---@field LinkLabelPainter System.Windows.Forms.Theming.Default.LinkLabelPainter
---@field ButtonPainter System.Windows.Forms.Theming.Default.ButtonPainter
---@field TabControlPainter System.Windows.Forms.Theming.Default.TabControlPainter
---@field CheckBoxPainter System.Windows.Forms.Theming.Default.CheckBoxPainter
---@field RadioButtonPainter System.Windows.Forms.Theming.Default.RadioButtonPainter
---@field ToolStripPainter System.Windows.Forms.Theming.Default.ToolStripPainter
System.Windows.Forms.Theming.ThemeElements = {}
---@alias CS.System.Windows.Forms.Theming.ThemeElements System.Windows.Forms.Theming.ThemeElements
CS.System.Windows.Forms.Theming.ThemeElements = System.Windows.Forms.Theming.ThemeElements

---@return System.Windows.Forms.Theming.ThemeElements
function System.Windows.Forms.Theming.ThemeElements.New() end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param state System.Windows.Forms.Theming.ButtonThemeState
---@param backColor System.Drawing.Color
---@param foreColor System.Drawing.Color
function System.Windows.Forms.Theming.ThemeElements.DrawButton(g, bounds, state, backColor, foreColor) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param state System.Windows.Forms.Theming.ButtonThemeState
---@param backColor System.Drawing.Color
---@param foreColor System.Drawing.Color
---@param appearance System.Windows.Forms.FlatButtonAppearance
function System.Windows.Forms.Theming.ThemeElements.DrawFlatButton(g, bounds, state, backColor, foreColor, appearance) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param state System.Windows.Forms.Theming.ButtonThemeState
---@param backColor System.Drawing.Color
---@param foreColor System.Drawing.Color
function System.Windows.Forms.Theming.ThemeElements.DrawPopupButton(g, bounds, state, backColor, foreColor) end

---@class System.Windows.Forms.Theming.ButtonThemeState
---@field Normal System.Windows.Forms.Theming.ButtonThemeState
---@field Entered System.Windows.Forms.Theming.ButtonThemeState
---@field Pressed System.Windows.Forms.Theming.ButtonThemeState
---@field Disabled System.Windows.Forms.Theming.ButtonThemeState
---@field Default System.Windows.Forms.Theming.ButtonThemeState
System.Windows.Forms.Theming.ButtonThemeState = {}
---@alias CS.System.Windows.Forms.Theming.ButtonThemeState System.Windows.Forms.Theming.ButtonThemeState
CS.System.Windows.Forms.Theming.ButtonThemeState = System.Windows.Forms.Theming.ButtonThemeState


---@class System.Windows.Forms.Theming.ElementState
---@field Normal System.Windows.Forms.Theming.ElementState
---@field Hot System.Windows.Forms.Theming.ElementState
---@field Pressed System.Windows.Forms.Theming.ElementState
---@field Disabled System.Windows.Forms.Theming.ElementState
System.Windows.Forms.Theming.ElementState = {}
---@alias CS.System.Windows.Forms.Theming.ElementState System.Windows.Forms.Theming.ElementState
CS.System.Windows.Forms.Theming.ElementState = System.Windows.Forms.Theming.ElementState


---@class System.Windows.Forms.Theming.ThemeElementsDefault : System.Object
---@field TabControlPainter System.Windows.Forms.Theming.Default.TabControlPainter
---@field ButtonPainter System.Windows.Forms.Theming.Default.ButtonPainter
---@field LabelPainter System.Windows.Forms.Theming.Default.LabelPainter
---@field LinkLabelPainter System.Windows.Forms.Theming.Default.LinkLabelPainter
---@field ToolStripPainter System.Windows.Forms.Theming.Default.ToolStripPainter
---@field CheckBoxPainter System.Windows.Forms.Theming.Default.CheckBoxPainter
---@field RadioButtonPainter System.Windows.Forms.Theming.Default.RadioButtonPainter
System.Windows.Forms.Theming.ThemeElementsDefault = {}
---@alias CS.System.Windows.Forms.Theming.ThemeElementsDefault System.Windows.Forms.Theming.ThemeElementsDefault
CS.System.Windows.Forms.Theming.ThemeElementsDefault = System.Windows.Forms.Theming.ThemeElementsDefault

---@return System.Windows.Forms.Theming.ThemeElementsDefault
function System.Windows.Forms.Theming.ThemeElementsDefault.New() end

---@class System.Windows.Forms.Theming.ThemeElementsVisualStyles : System.Windows.Forms.Theming.ThemeElementsDefault
---@field CheckBoxPainter System.Windows.Forms.Theming.Default.CheckBoxPainter
---@field RadioButtonPainter System.Windows.Forms.Theming.Default.RadioButtonPainter
---@field ToolStripPainter System.Windows.Forms.Theming.Default.ToolStripPainter
---@field TabControlPainter System.Windows.Forms.Theming.Default.TabControlPainter
System.Windows.Forms.Theming.ThemeElementsVisualStyles = {}
---@alias CS.System.Windows.Forms.Theming.ThemeElementsVisualStyles System.Windows.Forms.Theming.ThemeElementsVisualStyles
CS.System.Windows.Forms.Theming.ThemeElementsVisualStyles = System.Windows.Forms.Theming.ThemeElementsVisualStyles

---@return System.Windows.Forms.Theming.ThemeElementsVisualStyles
function System.Windows.Forms.Theming.ThemeElementsVisualStyles.New() end

---@class System.Windows.Forms.Theming.VisualStyles.CheckBoxPainter : System.Windows.Forms.Theming.Default.CheckBoxPainter
System.Windows.Forms.Theming.VisualStyles.CheckBoxPainter = {}
---@alias CS.System.Windows.Forms.Theming.VisualStyles.CheckBoxPainter System.Windows.Forms.Theming.VisualStyles.CheckBoxPainter
CS.System.Windows.Forms.Theming.VisualStyles.CheckBoxPainter = System.Windows.Forms.Theming.VisualStyles.CheckBoxPainter

---@return System.Windows.Forms.Theming.VisualStyles.CheckBoxPainter
function System.Windows.Forms.Theming.VisualStyles.CheckBoxPainter.New() end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param backColor System.Drawing.Color
---@param foreColor System.Drawing.Color
---@param state System.Windows.Forms.CheckState
function System.Windows.Forms.Theming.VisualStyles.CheckBoxPainter:DrawNormalCheckBox(g, bounds, backColor, foreColor, state) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param backColor System.Drawing.Color
---@param foreColor System.Drawing.Color
---@param state System.Windows.Forms.CheckState
function System.Windows.Forms.Theming.VisualStyles.CheckBoxPainter:DrawHotCheckBox(g, bounds, backColor, foreColor, state) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param backColor System.Drawing.Color
---@param foreColor System.Drawing.Color
---@param state System.Windows.Forms.CheckState
function System.Windows.Forms.Theming.VisualStyles.CheckBoxPainter:DrawPressedCheckBox(g, bounds, backColor, foreColor, state) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param backColor System.Drawing.Color
---@param foreColor System.Drawing.Color
---@param state System.Windows.Forms.CheckState
function System.Windows.Forms.Theming.VisualStyles.CheckBoxPainter:DrawDisabledCheckBox(g, bounds, backColor, foreColor, state) end

---@class System.Windows.Forms.Theming.VisualStyles.RadioButtonPainter : System.Windows.Forms.Theming.Default.RadioButtonPainter
System.Windows.Forms.Theming.VisualStyles.RadioButtonPainter = {}
---@alias CS.System.Windows.Forms.Theming.VisualStyles.RadioButtonPainter System.Windows.Forms.Theming.VisualStyles.RadioButtonPainter
CS.System.Windows.Forms.Theming.VisualStyles.RadioButtonPainter = System.Windows.Forms.Theming.VisualStyles.RadioButtonPainter

---@return System.Windows.Forms.Theming.VisualStyles.RadioButtonPainter
function System.Windows.Forms.Theming.VisualStyles.RadioButtonPainter.New() end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param backColor System.Drawing.Color
---@param foreColor System.Drawing.Color
---@param isChecked boolean
function System.Windows.Forms.Theming.VisualStyles.RadioButtonPainter:DrawNormalRadioButton(g, bounds, backColor, foreColor, isChecked) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param backColor System.Drawing.Color
---@param foreColor System.Drawing.Color
---@param isChecked boolean
function System.Windows.Forms.Theming.VisualStyles.RadioButtonPainter:DrawHotRadioButton(g, bounds, backColor, foreColor, isChecked) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param backColor System.Drawing.Color
---@param foreColor System.Drawing.Color
---@param isChecked boolean
function System.Windows.Forms.Theming.VisualStyles.RadioButtonPainter:DrawPressedRadioButton(g, bounds, backColor, foreColor, isChecked) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param backColor System.Drawing.Color
---@param foreColor System.Drawing.Color
---@param isChecked boolean
function System.Windows.Forms.Theming.VisualStyles.RadioButtonPainter:DrawDisabledRadioButton(g, bounds, backColor, foreColor, isChecked) end

---@class System.Windows.Forms.Theming.VisualStyles.TabControlPainter : System.Windows.Forms.Theming.Default.TabControlPainter
System.Windows.Forms.Theming.VisualStyles.TabControlPainter = {}
---@alias CS.System.Windows.Forms.Theming.VisualStyles.TabControlPainter System.Windows.Forms.Theming.VisualStyles.TabControlPainter
CS.System.Windows.Forms.Theming.VisualStyles.TabControlPainter = System.Windows.Forms.Theming.VisualStyles.TabControlPainter

---@return System.Windows.Forms.Theming.VisualStyles.TabControlPainter
function System.Windows.Forms.Theming.VisualStyles.TabControlPainter.New() end
---@param tabControl System.Windows.Forms.TabControl
---@return boolean
function System.Windows.Forms.Theming.VisualStyles.TabControlPainter:HasHotElementStyles(tabControl) end

---@class System.Windows.Forms.Theming.VisualStyles.ToolStripPainter : System.Windows.Forms.Theming.Default.ToolStripPainter
System.Windows.Forms.Theming.VisualStyles.ToolStripPainter = {}
---@alias CS.System.Windows.Forms.Theming.VisualStyles.ToolStripPainter System.Windows.Forms.Theming.VisualStyles.ToolStripPainter
CS.System.Windows.Forms.Theming.VisualStyles.ToolStripPainter = System.Windows.Forms.Theming.VisualStyles.ToolStripPainter

---@return System.Windows.Forms.Theming.VisualStyles.ToolStripPainter
function System.Windows.Forms.Theming.VisualStyles.ToolStripPainter.New() end
---@param e System.Windows.Forms.ToolStripItemRenderEventArgs
function System.Windows.Forms.Theming.VisualStyles.ToolStripPainter:OnRenderButtonBackground(e) end
---@param e System.Windows.Forms.ToolStripItemRenderEventArgs
function System.Windows.Forms.Theming.VisualStyles.ToolStripPainter:OnRenderDropDownButtonBackground(e) end
---@param e System.Windows.Forms.ToolStripGripRenderEventArgs
function System.Windows.Forms.Theming.VisualStyles.ToolStripPainter:OnRenderGrip(e) end
---@param e System.Windows.Forms.ToolStripItemRenderEventArgs
function System.Windows.Forms.Theming.VisualStyles.ToolStripPainter:OnRenderOverflowButtonBackground(e) end
---@param e System.Windows.Forms.ToolStripSeparatorRenderEventArgs
function System.Windows.Forms.Theming.VisualStyles.ToolStripPainter:OnRenderSeparator(e) end
---@param e System.Windows.Forms.ToolStripItemRenderEventArgs
function System.Windows.Forms.Theming.VisualStyles.ToolStripPainter:OnRenderSplitButtonBackground(e) end
---@param e System.Windows.Forms.ToolStripRenderEventArgs
function System.Windows.Forms.Theming.VisualStyles.ToolStripPainter:OnRenderToolStripBackground(e) end

---@class System.Windows.Forms.Theming.Default.ButtonPainter : System.Object
System.Windows.Forms.Theming.Default.ButtonPainter = {}
---@alias CS.System.Windows.Forms.Theming.Default.ButtonPainter System.Windows.Forms.Theming.Default.ButtonPainter
CS.System.Windows.Forms.Theming.Default.ButtonPainter = System.Windows.Forms.Theming.Default.ButtonPainter

---@return System.Windows.Forms.Theming.Default.ButtonPainter
function System.Windows.Forms.Theming.Default.ButtonPainter.New() end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param state System.Windows.Forms.Theming.ButtonThemeState
---@param backColor System.Drawing.Color
---@param foreColor System.Drawing.Color
function System.Windows.Forms.Theming.Default.ButtonPainter:Draw(g, bounds, state, backColor, foreColor) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param state System.Windows.Forms.Theming.ButtonThemeState
---@param backColor System.Drawing.Color
---@param foreColor System.Drawing.Color
---@param appearance System.Windows.Forms.FlatButtonAppearance
function System.Windows.Forms.Theming.Default.ButtonPainter:DrawFlat(g, bounds, state, backColor, foreColor, appearance) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param state System.Windows.Forms.Theming.ButtonThemeState
---@param backColor System.Drawing.Color
---@param foreColor System.Drawing.Color
function System.Windows.Forms.Theming.Default.ButtonPainter:DrawPopup(g, bounds, state, backColor, foreColor) end

---@class System.Windows.Forms.Theming.Default.CheckBoxPainter : System.Object
System.Windows.Forms.Theming.Default.CheckBoxPainter = {}
---@alias CS.System.Windows.Forms.Theming.Default.CheckBoxPainter System.Windows.Forms.Theming.Default.CheckBoxPainter
CS.System.Windows.Forms.Theming.Default.CheckBoxPainter = System.Windows.Forms.Theming.Default.CheckBoxPainter

---@return System.Windows.Forms.Theming.Default.CheckBoxPainter
function System.Windows.Forms.Theming.Default.CheckBoxPainter.New() end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param backColor System.Drawing.Color
---@param foreColor System.Drawing.Color
---@param state System.Windows.Forms.Theming.ElementState
---@param style System.Windows.Forms.FlatStyle
---@param checkState System.Windows.Forms.CheckState
function System.Windows.Forms.Theming.Default.CheckBoxPainter:PaintCheckBox(g, bounds, backColor, foreColor, state, style, checkState) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param backColor System.Drawing.Color
---@param foreColor System.Drawing.Color
---@param state System.Windows.Forms.CheckState
function System.Windows.Forms.Theming.Default.CheckBoxPainter:DrawNormalCheckBox(g, bounds, backColor, foreColor, state) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param backColor System.Drawing.Color
---@param foreColor System.Drawing.Color
---@param state System.Windows.Forms.CheckState
function System.Windows.Forms.Theming.Default.CheckBoxPainter:DrawHotCheckBox(g, bounds, backColor, foreColor, state) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param backColor System.Drawing.Color
---@param foreColor System.Drawing.Color
---@param state System.Windows.Forms.CheckState
function System.Windows.Forms.Theming.Default.CheckBoxPainter:DrawPressedCheckBox(g, bounds, backColor, foreColor, state) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param backColor System.Drawing.Color
---@param foreColor System.Drawing.Color
---@param state System.Windows.Forms.CheckState
function System.Windows.Forms.Theming.Default.CheckBoxPainter:DrawDisabledCheckBox(g, bounds, backColor, foreColor, state) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param backColor System.Drawing.Color
---@param foreColor System.Drawing.Color
---@param state System.Windows.Forms.CheckState
function System.Windows.Forms.Theming.Default.CheckBoxPainter:DrawFlatNormalCheckBox(g, bounds, backColor, foreColor, state) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param backColor System.Drawing.Color
---@param foreColor System.Drawing.Color
---@param state System.Windows.Forms.CheckState
function System.Windows.Forms.Theming.Default.CheckBoxPainter:DrawFlatHotCheckBox(g, bounds, backColor, foreColor, state) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param backColor System.Drawing.Color
---@param foreColor System.Drawing.Color
---@param state System.Windows.Forms.CheckState
function System.Windows.Forms.Theming.Default.CheckBoxPainter:DrawFlatPressedCheckBox(g, bounds, backColor, foreColor, state) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param backColor System.Drawing.Color
---@param foreColor System.Drawing.Color
---@param state System.Windows.Forms.CheckState
function System.Windows.Forms.Theming.Default.CheckBoxPainter:DrawFlatDisabledCheckBox(g, bounds, backColor, foreColor, state) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param backColor System.Drawing.Color
---@param foreColor System.Drawing.Color
---@param state System.Windows.Forms.CheckState
function System.Windows.Forms.Theming.Default.CheckBoxPainter:DrawPopupNormalCheckBox(g, bounds, backColor, foreColor, state) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param backColor System.Drawing.Color
---@param foreColor System.Drawing.Color
---@param state System.Windows.Forms.CheckState
function System.Windows.Forms.Theming.Default.CheckBoxPainter:DrawPopupHotCheckBox(g, bounds, backColor, foreColor, state) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param backColor System.Drawing.Color
---@param foreColor System.Drawing.Color
---@param state System.Windows.Forms.CheckState
function System.Windows.Forms.Theming.Default.CheckBoxPainter:DrawPopupPressedCheckBox(g, bounds, backColor, foreColor, state) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param backColor System.Drawing.Color
---@param foreColor System.Drawing.Color
---@param state System.Windows.Forms.CheckState
function System.Windows.Forms.Theming.Default.CheckBoxPainter:DrawPopupDisabledCheckBox(g, bounds, backColor, foreColor, state) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param checkColor System.Drawing.Color
function System.Windows.Forms.Theming.Default.CheckBoxPainter:DrawCheck(g, bounds, checkColor) end

---@class System.Windows.Forms.Theming.Default.LabelPainter : System.Object
---@field DefaultSize System.Drawing.Size
System.Windows.Forms.Theming.Default.LabelPainter = {}
---@alias CS.System.Windows.Forms.Theming.Default.LabelPainter System.Windows.Forms.Theming.Default.LabelPainter
CS.System.Windows.Forms.Theming.Default.LabelPainter = System.Windows.Forms.Theming.Default.LabelPainter

---@return System.Windows.Forms.Theming.Default.LabelPainter
function System.Windows.Forms.Theming.Default.LabelPainter.New() end
---@param dc System.Drawing.Graphics
---@param client_rectangle System.Drawing.Rectangle
---@param label System.Windows.Forms.Label
function System.Windows.Forms.Theming.Default.LabelPainter:Draw(dc, client_rectangle, label) end

---@class System.Windows.Forms.Theming.Default.LinkLabelPainter : System.Object
System.Windows.Forms.Theming.Default.LinkLabelPainter = {}
---@alias CS.System.Windows.Forms.Theming.Default.LinkLabelPainter System.Windows.Forms.Theming.Default.LinkLabelPainter
CS.System.Windows.Forms.Theming.Default.LinkLabelPainter = System.Windows.Forms.Theming.Default.LinkLabelPainter

---@return System.Windows.Forms.Theming.Default.LinkLabelPainter
function System.Windows.Forms.Theming.Default.LinkLabelPainter.New() end
---@param dc System.Drawing.Graphics
---@param clip_rectangle System.Drawing.Rectangle
---@param label System.Windows.Forms.LinkLabel
function System.Windows.Forms.Theming.Default.LinkLabelPainter:Draw(dc, clip_rectangle, label) end

---@class System.Windows.Forms.Theming.Default.RadioButtonPainter : System.Object
System.Windows.Forms.Theming.Default.RadioButtonPainter = {}
---@alias CS.System.Windows.Forms.Theming.Default.RadioButtonPainter System.Windows.Forms.Theming.Default.RadioButtonPainter
CS.System.Windows.Forms.Theming.Default.RadioButtonPainter = System.Windows.Forms.Theming.Default.RadioButtonPainter

---@return System.Windows.Forms.Theming.Default.RadioButtonPainter
function System.Windows.Forms.Theming.Default.RadioButtonPainter.New() end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param backColor System.Drawing.Color
---@param foreColor System.Drawing.Color
---@param state System.Windows.Forms.Theming.ElementState
---@param style System.Windows.Forms.FlatStyle
---@param isChecked boolean
function System.Windows.Forms.Theming.Default.RadioButtonPainter:PaintRadioButton(g, bounds, backColor, foreColor, state, style, isChecked) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param backColor System.Drawing.Color
---@param foreColor System.Drawing.Color
---@param isChecked boolean
function System.Windows.Forms.Theming.Default.RadioButtonPainter:DrawNormalRadioButton(g, bounds, backColor, foreColor, isChecked) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param backColor System.Drawing.Color
---@param foreColor System.Drawing.Color
---@param isChecked boolean
function System.Windows.Forms.Theming.Default.RadioButtonPainter:DrawHotRadioButton(g, bounds, backColor, foreColor, isChecked) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param backColor System.Drawing.Color
---@param foreColor System.Drawing.Color
---@param isChecked boolean
function System.Windows.Forms.Theming.Default.RadioButtonPainter:DrawPressedRadioButton(g, bounds, backColor, foreColor, isChecked) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param backColor System.Drawing.Color
---@param foreColor System.Drawing.Color
---@param isChecked boolean
function System.Windows.Forms.Theming.Default.RadioButtonPainter:DrawDisabledRadioButton(g, bounds, backColor, foreColor, isChecked) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param backColor System.Drawing.Color
---@param foreColor System.Drawing.Color
---@param isChecked boolean
function System.Windows.Forms.Theming.Default.RadioButtonPainter:DrawFlatNormalRadioButton(g, bounds, backColor, foreColor, isChecked) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param backColor System.Drawing.Color
---@param foreColor System.Drawing.Color
---@param isChecked boolean
function System.Windows.Forms.Theming.Default.RadioButtonPainter:DrawFlatHotRadioButton(g, bounds, backColor, foreColor, isChecked) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param backColor System.Drawing.Color
---@param foreColor System.Drawing.Color
---@param isChecked boolean
function System.Windows.Forms.Theming.Default.RadioButtonPainter:DrawFlatPressedRadioButton(g, bounds, backColor, foreColor, isChecked) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param backColor System.Drawing.Color
---@param foreColor System.Drawing.Color
---@param isChecked boolean
function System.Windows.Forms.Theming.Default.RadioButtonPainter:DrawFlatDisabledRadioButton(g, bounds, backColor, foreColor, isChecked) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param backColor System.Drawing.Color
---@param foreColor System.Drawing.Color
---@param isChecked boolean
function System.Windows.Forms.Theming.Default.RadioButtonPainter:DrawPopupNormalRadioButton(g, bounds, backColor, foreColor, isChecked) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param backColor System.Drawing.Color
---@param foreColor System.Drawing.Color
---@param isChecked boolean
function System.Windows.Forms.Theming.Default.RadioButtonPainter:DrawPopupHotRadioButton(g, bounds, backColor, foreColor, isChecked) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param backColor System.Drawing.Color
---@param foreColor System.Drawing.Color
---@param isChecked boolean
function System.Windows.Forms.Theming.Default.RadioButtonPainter:DrawPopupPressedRadioButton(g, bounds, backColor, foreColor, isChecked) end
---@param g System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@param backColor System.Drawing.Color
---@param foreColor System.Drawing.Color
---@param isChecked boolean
function System.Windows.Forms.Theming.Default.RadioButtonPainter:DrawPopupDisabledRadioButton(g, bounds, backColor, foreColor, isChecked) end

---@class System.Windows.Forms.Theming.Default.TabControlPainter : System.Object
---@field DefaultItemSize System.Drawing.Size
---@field DefaultPadding System.Drawing.Point
---@field MinimumTabWidth number
---@field SelectedTabDelta System.Drawing.Rectangle
---@field TabPanelOffset System.Drawing.Point
---@field SelectedSpacing number
---@field RowSpacingNormal System.Drawing.Size
---@field RowSpacingButtons System.Drawing.Size
---@field RowSpacingFlatButtons System.Drawing.Size
---@field FocusRectSpacing System.Drawing.Point
---@field ColSpacing number
---@field FlatButtonSpacing number
---@field TabPageSpacing System.Drawing.Rectangle
---@field ImagePadding System.Drawing.Point
---@field DefaultFormatting System.Drawing.StringFormat
---@field BorderThickness System.Drawing.Rectangle
---@field ScrollerWidth number
System.Windows.Forms.Theming.Default.TabControlPainter = {}
---@alias CS.System.Windows.Forms.Theming.Default.TabControlPainter System.Windows.Forms.Theming.Default.TabControlPainter
CS.System.Windows.Forms.Theming.Default.TabControlPainter = System.Windows.Forms.Theming.Default.TabControlPainter

---@return System.Windows.Forms.Theming.Default.TabControlPainter
function System.Windows.Forms.Theming.Default.TabControlPainter.New() end
---@param tab System.Windows.Forms.TabControl
---@return System.Drawing.Size
function System.Windows.Forms.Theming.Default.TabControlPainter:RowSpacing(tab) end
---@param tab System.Windows.Forms.TabControl
---@return System.Drawing.Rectangle
function System.Windows.Forms.Theming.Default.TabControlPainter:GetLeftScrollRect(tab) end
---@param tab System.Windows.Forms.TabControl
---@return System.Drawing.Rectangle
function System.Windows.Forms.Theming.Default.TabControlPainter:GetRightScrollRect(tab) end
---@param tab System.Windows.Forms.TabControl
---@return System.Drawing.Rectangle
function System.Windows.Forms.Theming.Default.TabControlPainter:GetDisplayRectangle(tab) end
---@param tab System.Windows.Forms.TabControl
---@return System.Drawing.Rectangle
function System.Windows.Forms.Theming.Default.TabControlPainter:GetTabPanelRect(tab) end
---@param dc System.Drawing.Graphics
---@param area System.Drawing.Rectangle
---@param tab System.Windows.Forms.TabControl
function System.Windows.Forms.Theming.Default.TabControlPainter:Draw(dc, area, tab) end
---@param tabControl System.Windows.Forms.TabControl
---@return boolean
function System.Windows.Forms.Theming.Default.TabControlPainter:HasHotElementStyles(tabControl) end

---@class System.Windows.Forms.Theming.Default.ToolStripPainter : System.Object
System.Windows.Forms.Theming.Default.ToolStripPainter = {}
---@alias CS.System.Windows.Forms.Theming.Default.ToolStripPainter System.Windows.Forms.Theming.Default.ToolStripPainter
CS.System.Windows.Forms.Theming.Default.ToolStripPainter = System.Windows.Forms.Theming.Default.ToolStripPainter

---@return System.Windows.Forms.Theming.Default.ToolStripPainter
function System.Windows.Forms.Theming.Default.ToolStripPainter.New() end
---@param e System.Windows.Forms.ToolStripItemRenderEventArgs
function System.Windows.Forms.Theming.Default.ToolStripPainter:OnRenderButtonBackground(e) end
---@param e System.Windows.Forms.ToolStripItemRenderEventArgs
function System.Windows.Forms.Theming.Default.ToolStripPainter:OnRenderDropDownButtonBackground(e) end
---@param e System.Windows.Forms.ToolStripGripRenderEventArgs
function System.Windows.Forms.Theming.Default.ToolStripPainter:OnRenderGrip(e) end
---@param e System.Windows.Forms.ToolStripItemRenderEventArgs
function System.Windows.Forms.Theming.Default.ToolStripPainter:OnRenderMenuItemBackground(e) end
---@param e System.Windows.Forms.ToolStripItemRenderEventArgs
function System.Windows.Forms.Theming.Default.ToolStripPainter:OnRenderOverflowButtonBackground(e) end
---@param e System.Windows.Forms.ToolStripSeparatorRenderEventArgs
function System.Windows.Forms.Theming.Default.ToolStripPainter:OnRenderSeparator(e) end
---@param e System.Windows.Forms.ToolStripItemRenderEventArgs
function System.Windows.Forms.Theming.Default.ToolStripPainter:OnRenderSplitButtonBackground(e) end
---@param e System.Windows.Forms.ToolStripRenderEventArgs
function System.Windows.Forms.Theming.Default.ToolStripPainter:OnRenderToolStripBackground(e) end
---@param e System.Windows.Forms.ToolStripRenderEventArgs
function System.Windows.Forms.Theming.Default.ToolStripPainter:OnRenderToolStripBorder(e) end

---@class System.Windows.Forms.RTF.CharsetToCodepage : System.Object
System.Windows.Forms.RTF.CharsetToCodepage = {}
---@alias CS.System.Windows.Forms.RTF.CharsetToCodepage System.Windows.Forms.RTF.CharsetToCodepage
CS.System.Windows.Forms.RTF.CharsetToCodepage = System.Windows.Forms.RTF.CharsetToCodepage

---@param charset System.Windows.Forms.RTF.CharsetType
---@return number
function System.Windows.Forms.RTF.CharsetToCodepage.Translate(charset) end

---@class System.Windows.Forms.RTF.CharsetType
---@field ANSI System.Windows.Forms.RTF.CharsetType
---@field General System.Windows.Forms.RTF.CharsetType
---@field Symbol System.Windows.Forms.RTF.CharsetType
---@field Mac System.Windows.Forms.RTF.CharsetType
---@field Shift_Jis System.Windows.Forms.RTF.CharsetType
---@field Hangul System.Windows.Forms.RTF.CharsetType
---@field Johab System.Windows.Forms.RTF.CharsetType
---@field GB2312 System.Windows.Forms.RTF.CharsetType
---@field Big5 System.Windows.Forms.RTF.CharsetType
---@field Greek System.Windows.Forms.RTF.CharsetType
---@field Turkish System.Windows.Forms.RTF.CharsetType
---@field Vietnamese System.Windows.Forms.RTF.CharsetType
---@field Hebrew System.Windows.Forms.RTF.CharsetType
---@field Arabic System.Windows.Forms.RTF.CharsetType
---@field Arabic_Traditional System.Windows.Forms.RTF.CharsetType
---@field Arabic_user System.Windows.Forms.RTF.CharsetType
---@field Hebrew_user System.Windows.Forms.RTF.CharsetType
---@field Baltic System.Windows.Forms.RTF.CharsetType
---@field Russian System.Windows.Forms.RTF.CharsetType
---@field Thai System.Windows.Forms.RTF.CharsetType
---@field Eastern_European System.Windows.Forms.RTF.CharsetType
---@field PC_437 System.Windows.Forms.RTF.CharsetType
---@field OEM System.Windows.Forms.RTF.CharsetType
System.Windows.Forms.RTF.CharsetType = {}
---@alias CS.System.Windows.Forms.RTF.CharsetType System.Windows.Forms.RTF.CharsetType
CS.System.Windows.Forms.RTF.CharsetType = System.Windows.Forms.RTF.CharsetType


---@class System.Windows.Forms.RTF.ClassDelegate : System.MulticastDelegate
System.Windows.Forms.RTF.ClassDelegate = {}
---@alias CS.System.Windows.Forms.RTF.ClassDelegate System.Windows.Forms.RTF.ClassDelegate
CS.System.Windows.Forms.RTF.ClassDelegate = System.Windows.Forms.RTF.ClassDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.RTF.ClassDelegate
function System.Windows.Forms.RTF.ClassDelegate.New(object, method) end
---@param sender System.Windows.Forms.RTF.RTF
function System.Windows.Forms.RTF.ClassDelegate:Invoke(sender) end
---@param sender System.Windows.Forms.RTF.RTF
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Windows.Forms.RTF.ClassDelegate:BeginInvoke(sender, callback, object) end
---@param result System.IAsyncResult
function System.Windows.Forms.RTF.ClassDelegate:EndInvoke(result) end

---@class System.Windows.Forms.RTF.ClassCallback : System.Object
---@field Item System.Windows.Forms.RTF.ClassDelegate
System.Windows.Forms.RTF.ClassCallback = {}
---@alias CS.System.Windows.Forms.RTF.ClassCallback System.Windows.Forms.RTF.ClassCallback
CS.System.Windows.Forms.RTF.ClassCallback = System.Windows.Forms.RTF.ClassCallback

---@return System.Windows.Forms.RTF.ClassCallback
function System.Windows.Forms.RTF.ClassCallback.New() end

---@class System.Windows.Forms.RTF.Color : System.Object
---@field Red number
---@field Green number
---@field Blue number
---@field Num number
System.Windows.Forms.RTF.Color = {}
---@alias CS.System.Windows.Forms.RTF.Color System.Windows.Forms.RTF.Color
CS.System.Windows.Forms.RTF.Color = System.Windows.Forms.RTF.Color

---@param rtf System.Windows.Forms.RTF.RTF
---@return System.Windows.Forms.RTF.Color
function System.Windows.Forms.RTF.Color.New(rtf) end
---@param rtf System.Windows.Forms.RTF.RTF
---@param color_number number
---@return System.Windows.Forms.RTF.Color
function System.Windows.Forms.RTF.Color.GetColor(rtf, color_number) end

---@class System.Windows.Forms.RTF.DestinationDelegate : System.MulticastDelegate
System.Windows.Forms.RTF.DestinationDelegate = {}
---@alias CS.System.Windows.Forms.RTF.DestinationDelegate System.Windows.Forms.RTF.DestinationDelegate
CS.System.Windows.Forms.RTF.DestinationDelegate = System.Windows.Forms.RTF.DestinationDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.RTF.DestinationDelegate
function System.Windows.Forms.RTF.DestinationDelegate.New(object, method) end
---@param Sender System.Windows.Forms.RTF.RTF
function System.Windows.Forms.RTF.DestinationDelegate:Invoke(Sender) end
---@param Sender System.Windows.Forms.RTF.RTF
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Windows.Forms.RTF.DestinationDelegate:BeginInvoke(Sender, callback, object) end
---@param result System.IAsyncResult
function System.Windows.Forms.RTF.DestinationDelegate:EndInvoke(result) end

---@class System.Windows.Forms.RTF.DestinationCallback : System.Object
---@field Item System.Windows.Forms.RTF.DestinationDelegate
System.Windows.Forms.RTF.DestinationCallback = {}
---@alias CS.System.Windows.Forms.RTF.DestinationCallback System.Windows.Forms.RTF.DestinationCallback
CS.System.Windows.Forms.RTF.DestinationCallback = System.Windows.Forms.RTF.DestinationCallback

---@return System.Windows.Forms.RTF.DestinationCallback
function System.Windows.Forms.RTF.DestinationCallback.New() end

---@class System.Windows.Forms.RTF.Font : System.Object
---@field Name string
---@field AltName string
---@field Num number
---@field Family number
---@field Charset System.Windows.Forms.RTF.CharsetType
---@field Pitch number
---@field Type number
---@field Codepage number
System.Windows.Forms.RTF.Font = {}
---@alias CS.System.Windows.Forms.RTF.Font System.Windows.Forms.RTF.Font
CS.System.Windows.Forms.RTF.Font = System.Windows.Forms.RTF.Font

---@param rtf System.Windows.Forms.RTF.RTF
---@return System.Windows.Forms.RTF.Font
function System.Windows.Forms.RTF.Font.New(rtf) end
---@param rtf System.Windows.Forms.RTF.RTF
---@param font_number number
---@return boolean
function System.Windows.Forms.RTF.Font.DeleteFont(rtf, font_number) end
---@overload fun(rtf: System.Windows.Forms.RTF.RTF, font_number: number) : System.Windows.Forms.RTF.Font
---@param start System.Windows.Forms.RTF.Font
---@param font_number number
---@return System.Windows.Forms.RTF.Font
function System.Windows.Forms.RTF.Font.GetFont(start, font_number) end

---@class System.Windows.Forms.RTF.KeyStruct : System.ValueType
---@field Major System.Windows.Forms.RTF.Major
---@field Minor System.Windows.Forms.RTF.Minor
---@field Symbol string
System.Windows.Forms.RTF.KeyStruct = {}
---@alias CS.System.Windows.Forms.RTF.KeyStruct System.Windows.Forms.RTF.KeyStruct
CS.System.Windows.Forms.RTF.KeyStruct = System.Windows.Forms.RTF.KeyStruct

---@param major System.Windows.Forms.RTF.Major
---@param minor System.Windows.Forms.RTF.Minor
---@param symbol string
---@return System.Windows.Forms.RTF.KeyStruct
function System.Windows.Forms.RTF.KeyStruct.New(major, minor, symbol) end

---@class System.Windows.Forms.RTF.KeysInit : System.Object
System.Windows.Forms.RTF.KeysInit = {}
---@alias CS.System.Windows.Forms.RTF.KeysInit System.Windows.Forms.RTF.KeysInit
CS.System.Windows.Forms.RTF.KeysInit = System.Windows.Forms.RTF.KeysInit

---@return System.Windows.Forms.RTF.KeysInit
function System.Windows.Forms.RTF.KeysInit.New() end
---@return System.Windows.Forms.RTF.KeyStruct[]
function System.Windows.Forms.RTF.KeysInit.Init() end

---@class System.Windows.Forms.RTF.Major
---@field BeginGroup System.Windows.Forms.RTF.Major
---@field EndGroup System.Windows.Forms.RTF.Major
---@field Version System.Windows.Forms.RTF.Major
---@field DefFont System.Windows.Forms.RTF.Major
---@field CharSet System.Windows.Forms.RTF.Major
---@field Destination System.Windows.Forms.RTF.Major
---@field FontFamily System.Windows.Forms.RTF.Major
---@field ColorName System.Windows.Forms.RTF.Major
---@field SpecialChar System.Windows.Forms.RTF.Major
---@field StyleAttr System.Windows.Forms.RTF.Major
---@field DocAttr System.Windows.Forms.RTF.Major
---@field SectAttr System.Windows.Forms.RTF.Major
---@field TblAttr System.Windows.Forms.RTF.Major
---@field ParAttr System.Windows.Forms.RTF.Major
---@field CharAttr System.Windows.Forms.RTF.Major
---@field PictAttr System.Windows.Forms.RTF.Major
---@field BookmarkAttr System.Windows.Forms.RTF.Major
---@field NeXTGrAttr System.Windows.Forms.RTF.Major
---@field FieldAttr System.Windows.Forms.RTF.Major
---@field TOCAttr System.Windows.Forms.RTF.Major
---@field PosAttr System.Windows.Forms.RTF.Major
---@field ObjAttr System.Windows.Forms.RTF.Major
---@field FNoteAttr System.Windows.Forms.RTF.Major
---@field KeyCodeAttr System.Windows.Forms.RTF.Major
---@field ACharAttr System.Windows.Forms.RTF.Major
---@field FontAttr System.Windows.Forms.RTF.Major
---@field FileAttr System.Windows.Forms.RTF.Major
---@field FileSource System.Windows.Forms.RTF.Major
---@field DrawAttr System.Windows.Forms.RTF.Major
---@field IndexAttr System.Windows.Forms.RTF.Major
---@field Unicode System.Windows.Forms.RTF.Major
System.Windows.Forms.RTF.Major = {}
---@alias CS.System.Windows.Forms.RTF.Major System.Windows.Forms.RTF.Major
CS.System.Windows.Forms.RTF.Major = System.Windows.Forms.RTF.Major


---@class System.Windows.Forms.RTF.Minor
---@field Undefined System.Windows.Forms.RTF.Minor
---@field Skip System.Windows.Forms.RTF.Minor
---@field AnsiCharSet System.Windows.Forms.RTF.Minor
---@field MacCharSet System.Windows.Forms.RTF.Minor
---@field PcCharSet System.Windows.Forms.RTF.Minor
---@field PcaCharSet System.Windows.Forms.RTF.Minor
---@field FontTbl System.Windows.Forms.RTF.Minor
---@field FontName System.Windows.Forms.RTF.Minor
---@field FontAltName System.Windows.Forms.RTF.Minor
---@field EmbeddedFont System.Windows.Forms.RTF.Minor
---@field FontFile System.Windows.Forms.RTF.Minor
---@field FileTbl System.Windows.Forms.RTF.Minor
---@field FileInfo System.Windows.Forms.RTF.Minor
---@field ColorTbl System.Windows.Forms.RTF.Minor
---@field StyleSheet System.Windows.Forms.RTF.Minor
---@field KeyCode System.Windows.Forms.RTF.Minor
---@field RevisionTbl System.Windows.Forms.RTF.Minor
---@field Info System.Windows.Forms.RTF.Minor
---@field ITitle System.Windows.Forms.RTF.Minor
---@field ISubject System.Windows.Forms.RTF.Minor
---@field IAuthor System.Windows.Forms.RTF.Minor
---@field IOperator System.Windows.Forms.RTF.Minor
---@field IKeywords System.Windows.Forms.RTF.Minor
---@field IComment System.Windows.Forms.RTF.Minor
---@field IVersion System.Windows.Forms.RTF.Minor
---@field IDoccomm System.Windows.Forms.RTF.Minor
---@field IVerscomm System.Windows.Forms.RTF.Minor
---@field NextFile System.Windows.Forms.RTF.Minor
---@field Template System.Windows.Forms.RTF.Minor
---@field FNSep System.Windows.Forms.RTF.Minor
---@field FNContSep System.Windows.Forms.RTF.Minor
---@field FNContNotice System.Windows.Forms.RTF.Minor
---@field ENSep System.Windows.Forms.RTF.Minor
---@field ENContSep System.Windows.Forms.RTF.Minor
---@field ENContNotice System.Windows.Forms.RTF.Minor
---@field PageNumLevel System.Windows.Forms.RTF.Minor
---@field ParNumLevelStyle System.Windows.Forms.RTF.Minor
---@field Header System.Windows.Forms.RTF.Minor
---@field Footer System.Windows.Forms.RTF.Minor
---@field HeaderLeft System.Windows.Forms.RTF.Minor
---@field HeaderRight System.Windows.Forms.RTF.Minor
---@field HeaderFirst System.Windows.Forms.RTF.Minor
---@field FooterLeft System.Windows.Forms.RTF.Minor
---@field FooterRight System.Windows.Forms.RTF.Minor
---@field FooterFirst System.Windows.Forms.RTF.Minor
---@field ParNumText System.Windows.Forms.RTF.Minor
---@field ParNumbering System.Windows.Forms.RTF.Minor
---@field ParNumTextAfter System.Windows.Forms.RTF.Minor
---@field ParNumTextBefore System.Windows.Forms.RTF.Minor
---@field BookmarkStart System.Windows.Forms.RTF.Minor
---@field BookmarkEnd System.Windows.Forms.RTF.Minor
---@field Pict System.Windows.Forms.RTF.Minor
---@field Object System.Windows.Forms.RTF.Minor
---@field ObjClass System.Windows.Forms.RTF.Minor
---@field ObjName System.Windows.Forms.RTF.Minor
---@field ObjTime System.Windows.Forms.RTF.Minor
---@field ObjData System.Windows.Forms.RTF.Minor
---@field ObjAlias System.Windows.Forms.RTF.Minor
---@field ObjSection System.Windows.Forms.RTF.Minor
---@field ObjResult System.Windows.Forms.RTF.Minor
---@field ObjItem System.Windows.Forms.RTF.Minor
---@field ObjTopic System.Windows.Forms.RTF.Minor
---@field DrawObject System.Windows.Forms.RTF.Minor
---@field Footnote System.Windows.Forms.RTF.Minor
---@field AnnotRefStart System.Windows.Forms.RTF.Minor
---@field AnnotRefEnd System.Windows.Forms.RTF.Minor
---@field AnnotID System.Windows.Forms.RTF.Minor
---@field AnnotAuthor System.Windows.Forms.RTF.Minor
---@field Annotation System.Windows.Forms.RTF.Minor
---@field AnnotRef System.Windows.Forms.RTF.Minor
---@field AnnotTime System.Windows.Forms.RTF.Minor
---@field AnnotIcon System.Windows.Forms.RTF.Minor
---@field Field System.Windows.Forms.RTF.Minor
---@field FieldInst System.Windows.Forms.RTF.Minor
---@field FieldResult System.Windows.Forms.RTF.Minor
---@field DataField System.Windows.Forms.RTF.Minor
---@field Index System.Windows.Forms.RTF.Minor
---@field IndexText System.Windows.Forms.RTF.Minor
---@field IndexRange System.Windows.Forms.RTF.Minor
---@field TOC System.Windows.Forms.RTF.Minor
---@field NeXTGraphic System.Windows.Forms.RTF.Minor
---@field MaxDestination System.Windows.Forms.RTF.Minor
---@field FFNil System.Windows.Forms.RTF.Minor
---@field FFRoman System.Windows.Forms.RTF.Minor
---@field FFSwiss System.Windows.Forms.RTF.Minor
---@field FFModern System.Windows.Forms.RTF.Minor
---@field FFScript System.Windows.Forms.RTF.Minor
---@field FFDecor System.Windows.Forms.RTF.Minor
---@field FFTech System.Windows.Forms.RTF.Minor
---@field FFBidirectional System.Windows.Forms.RTF.Minor
---@field Red System.Windows.Forms.RTF.Minor
---@field Green System.Windows.Forms.RTF.Minor
---@field Blue System.Windows.Forms.RTF.Minor
---@field IIntVersion System.Windows.Forms.RTF.Minor
---@field ICreateTime System.Windows.Forms.RTF.Minor
---@field IRevisionTime System.Windows.Forms.RTF.Minor
---@field IPrintTime System.Windows.Forms.RTF.Minor
---@field IBackupTime System.Windows.Forms.RTF.Minor
---@field IEditTime System.Windows.Forms.RTF.Minor
---@field IYear System.Windows.Forms.RTF.Minor
---@field IMonth System.Windows.Forms.RTF.Minor
---@field IDay System.Windows.Forms.RTF.Minor
---@field IHour System.Windows.Forms.RTF.Minor
---@field IMinute System.Windows.Forms.RTF.Minor
---@field ISecond System.Windows.Forms.RTF.Minor
---@field INPages System.Windows.Forms.RTF.Minor
---@field INWords System.Windows.Forms.RTF.Minor
---@field INChars System.Windows.Forms.RTF.Minor
---@field IIntID System.Windows.Forms.RTF.Minor
---@field CurHeadDate System.Windows.Forms.RTF.Minor
---@field CurHeadDateLong System.Windows.Forms.RTF.Minor
---@field CurHeadDateAbbrev System.Windows.Forms.RTF.Minor
---@field CurHeadTime System.Windows.Forms.RTF.Minor
---@field CurHeadPage System.Windows.Forms.RTF.Minor
---@field SectNum System.Windows.Forms.RTF.Minor
---@field CurFNote System.Windows.Forms.RTF.Minor
---@field CurAnnotRef System.Windows.Forms.RTF.Minor
---@field FNoteSep System.Windows.Forms.RTF.Minor
---@field FNoteCont System.Windows.Forms.RTF.Minor
---@field Cell System.Windows.Forms.RTF.Minor
---@field Row System.Windows.Forms.RTF.Minor
---@field Par System.Windows.Forms.RTF.Minor
---@field Sect System.Windows.Forms.RTF.Minor
---@field Page System.Windows.Forms.RTF.Minor
---@field Column System.Windows.Forms.RTF.Minor
---@field Line System.Windows.Forms.RTF.Minor
---@field SoftPage System.Windows.Forms.RTF.Minor
---@field SoftColumn System.Windows.Forms.RTF.Minor
---@field SoftLine System.Windows.Forms.RTF.Minor
---@field SoftLineHt System.Windows.Forms.RTF.Minor
---@field Tab System.Windows.Forms.RTF.Minor
---@field EmDash System.Windows.Forms.RTF.Minor
---@field EnDash System.Windows.Forms.RTF.Minor
---@field EmSpace System.Windows.Forms.RTF.Minor
---@field EnSpace System.Windows.Forms.RTF.Minor
---@field Bullet System.Windows.Forms.RTF.Minor
---@field LQuote System.Windows.Forms.RTF.Minor
---@field RQuote System.Windows.Forms.RTF.Minor
---@field LDblQuote System.Windows.Forms.RTF.Minor
---@field RDblQuote System.Windows.Forms.RTF.Minor
---@field Formula System.Windows.Forms.RTF.Minor
---@field NoBrkSpace System.Windows.Forms.RTF.Minor
---@field NoReqHyphen System.Windows.Forms.RTF.Minor
---@field NoBrkHyphen System.Windows.Forms.RTF.Minor
---@field OptDest System.Windows.Forms.RTF.Minor
---@field LTRMark System.Windows.Forms.RTF.Minor
---@field RTLMark System.Windows.Forms.RTF.Minor
---@field NoWidthJoiner System.Windows.Forms.RTF.Minor
---@field NoWidthNonJoiner System.Windows.Forms.RTF.Minor
---@field CurHeadPict System.Windows.Forms.RTF.Minor
---@field Additive System.Windows.Forms.RTF.Minor
---@field BasedOn System.Windows.Forms.RTF.Minor
---@field Next System.Windows.Forms.RTF.Minor
---@field DefTab System.Windows.Forms.RTF.Minor
---@field HyphHotZone System.Windows.Forms.RTF.Minor
---@field HyphConsecLines System.Windows.Forms.RTF.Minor
---@field HyphCaps System.Windows.Forms.RTF.Minor
---@field HyphAuto System.Windows.Forms.RTF.Minor
---@field LineStart System.Windows.Forms.RTF.Minor
---@field FracWidth System.Windows.Forms.RTF.Minor
---@field MakeBackup System.Windows.Forms.RTF.Minor
---@field RTFDefault System.Windows.Forms.RTF.Minor
---@field PSOverlay System.Windows.Forms.RTF.Minor
---@field DocTemplate System.Windows.Forms.RTF.Minor
---@field DefLanguage System.Windows.Forms.RTF.Minor
---@field FENoteType System.Windows.Forms.RTF.Minor
---@field FNoteEndSect System.Windows.Forms.RTF.Minor
---@field FNoteEndDoc System.Windows.Forms.RTF.Minor
---@field FNoteText System.Windows.Forms.RTF.Minor
---@field FNoteBottom System.Windows.Forms.RTF.Minor
---@field ENoteEndSect System.Windows.Forms.RTF.Minor
---@field ENoteEndDoc System.Windows.Forms.RTF.Minor
---@field ENoteText System.Windows.Forms.RTF.Minor
---@field ENoteBottom System.Windows.Forms.RTF.Minor
---@field FNoteStart System.Windows.Forms.RTF.Minor
---@field ENoteStart System.Windows.Forms.RTF.Minor
---@field FNoteRestartPage System.Windows.Forms.RTF.Minor
---@field FNoteRestart System.Windows.Forms.RTF.Minor
---@field FNoteRestartCont System.Windows.Forms.RTF.Minor
---@field ENoteRestart System.Windows.Forms.RTF.Minor
---@field ENoteRestartCont System.Windows.Forms.RTF.Minor
---@field FNoteNumArabic System.Windows.Forms.RTF.Minor
---@field FNoteNumLLetter System.Windows.Forms.RTF.Minor
---@field FNoteNumULetter System.Windows.Forms.RTF.Minor
---@field FNoteNumLRoman System.Windows.Forms.RTF.Minor
---@field FNoteNumURoman System.Windows.Forms.RTF.Minor
---@field FNoteNumChicago System.Windows.Forms.RTF.Minor
---@field ENoteNumArabic System.Windows.Forms.RTF.Minor
---@field ENoteNumLLetter System.Windows.Forms.RTF.Minor
---@field ENoteNumULetter System.Windows.Forms.RTF.Minor
---@field ENoteNumLRoman System.Windows.Forms.RTF.Minor
---@field ENoteNumURoman System.Windows.Forms.RTF.Minor
---@field ENoteNumChicago System.Windows.Forms.RTF.Minor
---@field PaperWidth System.Windows.Forms.RTF.Minor
---@field PaperHeight System.Windows.Forms.RTF.Minor
---@field PaperSize System.Windows.Forms.RTF.Minor
---@field LeftMargin System.Windows.Forms.RTF.Minor
---@field RightMargin System.Windows.Forms.RTF.Minor
---@field TopMargin System.Windows.Forms.RTF.Minor
---@field BottomMargin System.Windows.Forms.RTF.Minor
---@field FacingPage System.Windows.Forms.RTF.Minor
---@field GutterWid System.Windows.Forms.RTF.Minor
---@field MirrorMargin System.Windows.Forms.RTF.Minor
---@field Landscape System.Windows.Forms.RTF.Minor
---@field PageStart System.Windows.Forms.RTF.Minor
---@field WidowCtrl System.Windows.Forms.RTF.Minor
---@field LinkStyles System.Windows.Forms.RTF.Minor
---@field NoAutoTabIndent System.Windows.Forms.RTF.Minor
---@field WrapSpaces System.Windows.Forms.RTF.Minor
---@field PrintColorsBlack System.Windows.Forms.RTF.Minor
---@field NoExtraSpaceRL System.Windows.Forms.RTF.Minor
---@field NoColumnBalance System.Windows.Forms.RTF.Minor
---@field CvtMailMergeQuote System.Windows.Forms.RTF.Minor
---@field SuppressTopSpace System.Windows.Forms.RTF.Minor
---@field SuppressPreParSpace System.Windows.Forms.RTF.Minor
---@field CombineTblBorders System.Windows.Forms.RTF.Minor
---@field TranspMetafiles System.Windows.Forms.RTF.Minor
---@field SwapBorders System.Windows.Forms.RTF.Minor
---@field ShowHardBreaks System.Windows.Forms.RTF.Minor
---@field FormProtected System.Windows.Forms.RTF.Minor
---@field AllProtected System.Windows.Forms.RTF.Minor
---@field FormShading System.Windows.Forms.RTF.Minor
---@field FormDisplay System.Windows.Forms.RTF.Minor
---@field PrintData System.Windows.Forms.RTF.Minor
---@field RevProtected System.Windows.Forms.RTF.Minor
---@field Revisions System.Windows.Forms.RTF.Minor
---@field RevDisplay System.Windows.Forms.RTF.Minor
---@field RevBar System.Windows.Forms.RTF.Minor
---@field AnnotProtected System.Windows.Forms.RTF.Minor
---@field RTLDoc System.Windows.Forms.RTF.Minor
---@field LTRDoc System.Windows.Forms.RTF.Minor
---@field SectDef System.Windows.Forms.RTF.Minor
---@field ENoteHere System.Windows.Forms.RTF.Minor
---@field PrtBinFirst System.Windows.Forms.RTF.Minor
---@field PrtBin System.Windows.Forms.RTF.Minor
---@field SectStyleNum System.Windows.Forms.RTF.Minor
---@field NoBreak System.Windows.Forms.RTF.Minor
---@field ColBreak System.Windows.Forms.RTF.Minor
---@field PageBreak System.Windows.Forms.RTF.Minor
---@field EvenBreak System.Windows.Forms.RTF.Minor
---@field OddBreak System.Windows.Forms.RTF.Minor
---@field Columns System.Windows.Forms.RTF.Minor
---@field ColumnSpace System.Windows.Forms.RTF.Minor
---@field ColumnNumber System.Windows.Forms.RTF.Minor
---@field ColumnSpRight System.Windows.Forms.RTF.Minor
---@field ColumnWidth System.Windows.Forms.RTF.Minor
---@field ColumnLine System.Windows.Forms.RTF.Minor
---@field LineModulus System.Windows.Forms.RTF.Minor
---@field LineDist System.Windows.Forms.RTF.Minor
---@field LineStarts System.Windows.Forms.RTF.Minor
---@field LineRestart System.Windows.Forms.RTF.Minor
---@field LineRestartPg System.Windows.Forms.RTF.Minor
---@field LineCont System.Windows.Forms.RTF.Minor
---@field SectPageWid System.Windows.Forms.RTF.Minor
---@field SectPageHt System.Windows.Forms.RTF.Minor
---@field SectMarginLeft System.Windows.Forms.RTF.Minor
---@field SectMarginRight System.Windows.Forms.RTF.Minor
---@field SectMarginTop System.Windows.Forms.RTF.Minor
---@field SectMarginBottom System.Windows.Forms.RTF.Minor
---@field SectMarginGutter System.Windows.Forms.RTF.Minor
---@field SectLandscape System.Windows.Forms.RTF.Minor
---@field TitleSpecial System.Windows.Forms.RTF.Minor
---@field HeaderY System.Windows.Forms.RTF.Minor
---@field FooterY System.Windows.Forms.RTF.Minor
---@field PageStarts System.Windows.Forms.RTF.Minor
---@field PageCont System.Windows.Forms.RTF.Minor
---@field PageRestart System.Windows.Forms.RTF.Minor
---@field PageNumRight System.Windows.Forms.RTF.Minor
---@field PageNumTop System.Windows.Forms.RTF.Minor
---@field PageDecimal System.Windows.Forms.RTF.Minor
---@field PageURoman System.Windows.Forms.RTF.Minor
---@field PageLRoman System.Windows.Forms.RTF.Minor
---@field PageULetter System.Windows.Forms.RTF.Minor
---@field PageLLetter System.Windows.Forms.RTF.Minor
---@field PageNumHyphSep System.Windows.Forms.RTF.Minor
---@field PageNumSpaceSep System.Windows.Forms.RTF.Minor
---@field PageNumColonSep System.Windows.Forms.RTF.Minor
---@field PageNumEmdashSep System.Windows.Forms.RTF.Minor
---@field PageNumEndashSep System.Windows.Forms.RTF.Minor
---@field TopVAlign System.Windows.Forms.RTF.Minor
---@field BottomVAlign System.Windows.Forms.RTF.Minor
---@field CenterVAlign System.Windows.Forms.RTF.Minor
---@field JustVAlign System.Windows.Forms.RTF.Minor
---@field RTLSect System.Windows.Forms.RTF.Minor
---@field LTRSect System.Windows.Forms.RTF.Minor
---@field RowDef System.Windows.Forms.RTF.Minor
---@field RowGapH System.Windows.Forms.RTF.Minor
---@field CellPos System.Windows.Forms.RTF.Minor
---@field MergeRngFirst System.Windows.Forms.RTF.Minor
---@field MergePrevious System.Windows.Forms.RTF.Minor
---@field RowLeft System.Windows.Forms.RTF.Minor
---@field RowRight System.Windows.Forms.RTF.Minor
---@field RowCenter System.Windows.Forms.RTF.Minor
---@field RowLeftEdge System.Windows.Forms.RTF.Minor
---@field RowHt System.Windows.Forms.RTF.Minor
---@field RowHeader System.Windows.Forms.RTF.Minor
---@field RowKeep System.Windows.Forms.RTF.Minor
---@field RTLRow System.Windows.Forms.RTF.Minor
---@field LTRRow System.Windows.Forms.RTF.Minor
---@field RowBordTop System.Windows.Forms.RTF.Minor
---@field RowBordLeft System.Windows.Forms.RTF.Minor
---@field RowBordBottom System.Windows.Forms.RTF.Minor
---@field RowBordRight System.Windows.Forms.RTF.Minor
---@field RowBordHoriz System.Windows.Forms.RTF.Minor
---@field RowBordVert System.Windows.Forms.RTF.Minor
---@field CellBordBottom System.Windows.Forms.RTF.Minor
---@field CellBordTop System.Windows.Forms.RTF.Minor
---@field CellBordLeft System.Windows.Forms.RTF.Minor
---@field CellBordRight System.Windows.Forms.RTF.Minor
---@field CellShading System.Windows.Forms.RTF.Minor
---@field CellBgPatH System.Windows.Forms.RTF.Minor
---@field CellBgPatV System.Windows.Forms.RTF.Minor
---@field CellFwdDiagBgPat System.Windows.Forms.RTF.Minor
---@field CellBwdDiagBgPat System.Windows.Forms.RTF.Minor
---@field CellHatchBgPat System.Windows.Forms.RTF.Minor
---@field CellDiagHatchBgPat System.Windows.Forms.RTF.Minor
---@field CellDarkBgPatH System.Windows.Forms.RTF.Minor
---@field CellDarkBgPatV System.Windows.Forms.RTF.Minor
---@field CellFwdDarkBgPat System.Windows.Forms.RTF.Minor
---@field CellBwdDarkBgPat System.Windows.Forms.RTF.Minor
---@field CellDarkHatchBgPat System.Windows.Forms.RTF.Minor
---@field CellDarkDiagHatchBgPat System.Windows.Forms.RTF.Minor
---@field CellBgPatLineColor System.Windows.Forms.RTF.Minor
---@field CellBgPatColor System.Windows.Forms.RTF.Minor
---@field ParDef System.Windows.Forms.RTF.Minor
---@field StyleNum System.Windows.Forms.RTF.Minor
---@field Hyphenate System.Windows.Forms.RTF.Minor
---@field InTable System.Windows.Forms.RTF.Minor
---@field Keep System.Windows.Forms.RTF.Minor
---@field NoWidowControl System.Windows.Forms.RTF.Minor
---@field KeepNext System.Windows.Forms.RTF.Minor
---@field OutlineLevel System.Windows.Forms.RTF.Minor
---@field NoLineNum System.Windows.Forms.RTF.Minor
---@field PBBefore System.Windows.Forms.RTF.Minor
---@field SideBySide System.Windows.Forms.RTF.Minor
---@field QuadLeft System.Windows.Forms.RTF.Minor
---@field QuadRight System.Windows.Forms.RTF.Minor
---@field QuadJust System.Windows.Forms.RTF.Minor
---@field QuadCenter System.Windows.Forms.RTF.Minor
---@field FirstIndent System.Windows.Forms.RTF.Minor
---@field LeftIndent System.Windows.Forms.RTF.Minor
---@field RightIndent System.Windows.Forms.RTF.Minor
---@field SpaceBefore System.Windows.Forms.RTF.Minor
---@field SpaceAfter System.Windows.Forms.RTF.Minor
---@field SpaceBetween System.Windows.Forms.RTF.Minor
---@field SpaceMultiply System.Windows.Forms.RTF.Minor
---@field SubDocument System.Windows.Forms.RTF.Minor
---@field RTLPar System.Windows.Forms.RTF.Minor
---@field LTRPar System.Windows.Forms.RTF.Minor
---@field TabPos System.Windows.Forms.RTF.Minor
---@field TabLeft System.Windows.Forms.RTF.Minor
---@field TabRight System.Windows.Forms.RTF.Minor
---@field TabCenter System.Windows.Forms.RTF.Minor
---@field TabDecimal System.Windows.Forms.RTF.Minor
---@field TabBar System.Windows.Forms.RTF.Minor
---@field LeaderDot System.Windows.Forms.RTF.Minor
---@field LeaderHyphen System.Windows.Forms.RTF.Minor
---@field LeaderUnder System.Windows.Forms.RTF.Minor
---@field LeaderThick System.Windows.Forms.RTF.Minor
---@field LeaderEqual System.Windows.Forms.RTF.Minor
---@field ParLevel System.Windows.Forms.RTF.Minor
---@field ParBullet System.Windows.Forms.RTF.Minor
---@field ParSimple System.Windows.Forms.RTF.Minor
---@field ParNumCont System.Windows.Forms.RTF.Minor
---@field ParNumOnce System.Windows.Forms.RTF.Minor
---@field ParNumAcross System.Windows.Forms.RTF.Minor
---@field ParHangIndent System.Windows.Forms.RTF.Minor
---@field ParNumRestart System.Windows.Forms.RTF.Minor
---@field ParNumCardinal System.Windows.Forms.RTF.Minor
---@field ParNumDecimal System.Windows.Forms.RTF.Minor
---@field ParNumULetter System.Windows.Forms.RTF.Minor
---@field ParNumURoman System.Windows.Forms.RTF.Minor
---@field ParNumLLetter System.Windows.Forms.RTF.Minor
---@field ParNumLRoman System.Windows.Forms.RTF.Minor
---@field ParNumOrdinal System.Windows.Forms.RTF.Minor
---@field ParNumOrdinalText System.Windows.Forms.RTF.Minor
---@field ParNumBold System.Windows.Forms.RTF.Minor
---@field ParNumItalic System.Windows.Forms.RTF.Minor
---@field ParNumAllCaps System.Windows.Forms.RTF.Minor
---@field ParNumSmallCaps System.Windows.Forms.RTF.Minor
---@field ParNumUnder System.Windows.Forms.RTF.Minor
---@field ParNumDotUnder System.Windows.Forms.RTF.Minor
---@field ParNumDbUnder System.Windows.Forms.RTF.Minor
---@field ParNumNoUnder System.Windows.Forms.RTF.Minor
---@field ParNumWordUnder System.Windows.Forms.RTF.Minor
---@field ParNumStrikethru System.Windows.Forms.RTF.Minor
---@field ParNumForeColor System.Windows.Forms.RTF.Minor
---@field ParNumFont System.Windows.Forms.RTF.Minor
---@field ParNumFontSize System.Windows.Forms.RTF.Minor
---@field ParNumIndent System.Windows.Forms.RTF.Minor
---@field ParNumSpacing System.Windows.Forms.RTF.Minor
---@field ParNumInclPrev System.Windows.Forms.RTF.Minor
---@field ParNumCenter System.Windows.Forms.RTF.Minor
---@field ParNumLeft System.Windows.Forms.RTF.Minor
---@field ParNumRight System.Windows.Forms.RTF.Minor
---@field ParNumStartAt System.Windows.Forms.RTF.Minor
---@field BorderTop System.Windows.Forms.RTF.Minor
---@field BorderBottom System.Windows.Forms.RTF.Minor
---@field BorderLeft System.Windows.Forms.RTF.Minor
---@field BorderRight System.Windows.Forms.RTF.Minor
---@field BorderBetween System.Windows.Forms.RTF.Minor
---@field BorderBar System.Windows.Forms.RTF.Minor
---@field BorderBox System.Windows.Forms.RTF.Minor
---@field BorderSingle System.Windows.Forms.RTF.Minor
---@field BorderThick System.Windows.Forms.RTF.Minor
---@field BorderShadow System.Windows.Forms.RTF.Minor
---@field BorderDouble System.Windows.Forms.RTF.Minor
---@field BorderDot System.Windows.Forms.RTF.Minor
---@field BorderDash System.Windows.Forms.RTF.Minor
---@field BorderHair System.Windows.Forms.RTF.Minor
---@field BorderWidth System.Windows.Forms.RTF.Minor
---@field BorderColor System.Windows.Forms.RTF.Minor
---@field BorderSpace System.Windows.Forms.RTF.Minor
---@field Shading System.Windows.Forms.RTF.Minor
---@field BgPatH System.Windows.Forms.RTF.Minor
---@field BgPatV System.Windows.Forms.RTF.Minor
---@field FwdDiagBgPat System.Windows.Forms.RTF.Minor
---@field BwdDiagBgPat System.Windows.Forms.RTF.Minor
---@field HatchBgPat System.Windows.Forms.RTF.Minor
---@field DiagHatchBgPat System.Windows.Forms.RTF.Minor
---@field DarkBgPatH System.Windows.Forms.RTF.Minor
---@field DarkBgPatV System.Windows.Forms.RTF.Minor
---@field FwdDarkBgPat System.Windows.Forms.RTF.Minor
---@field BwdDarkBgPat System.Windows.Forms.RTF.Minor
---@field DarkHatchBgPat System.Windows.Forms.RTF.Minor
---@field DarkDiagHatchBgPat System.Windows.Forms.RTF.Minor
---@field BgPatLineColor System.Windows.Forms.RTF.Minor
---@field BgPatColor System.Windows.Forms.RTF.Minor
---@field Plain System.Windows.Forms.RTF.Minor
---@field Bold System.Windows.Forms.RTF.Minor
---@field AllCaps System.Windows.Forms.RTF.Minor
---@field Deleted System.Windows.Forms.RTF.Minor
---@field SubScript System.Windows.Forms.RTF.Minor
---@field SubScrShrink System.Windows.Forms.RTF.Minor
---@field NoSuperSub System.Windows.Forms.RTF.Minor
---@field Expand System.Windows.Forms.RTF.Minor
---@field ExpandTwips System.Windows.Forms.RTF.Minor
---@field Kerning System.Windows.Forms.RTF.Minor
---@field FontNum System.Windows.Forms.RTF.Minor
---@field FontSize System.Windows.Forms.RTF.Minor
---@field Italic System.Windows.Forms.RTF.Minor
---@field Outline System.Windows.Forms.RTF.Minor
---@field Revised System.Windows.Forms.RTF.Minor
---@field RevAuthor System.Windows.Forms.RTF.Minor
---@field RevDTTM System.Windows.Forms.RTF.Minor
---@field SmallCaps System.Windows.Forms.RTF.Minor
---@field Shadow System.Windows.Forms.RTF.Minor
---@field StrikeThru System.Windows.Forms.RTF.Minor
---@field Underline System.Windows.Forms.RTF.Minor
---@field DotUnderline System.Windows.Forms.RTF.Minor
---@field DbUnderline System.Windows.Forms.RTF.Minor
---@field NoUnderline System.Windows.Forms.RTF.Minor
---@field WordUnderline System.Windows.Forms.RTF.Minor
---@field SuperScript System.Windows.Forms.RTF.Minor
---@field SuperScrShrink System.Windows.Forms.RTF.Minor
---@field Invisible System.Windows.Forms.RTF.Minor
---@field ForeColor System.Windows.Forms.RTF.Minor
---@field BackColor System.Windows.Forms.RTF.Minor
---@field RTLChar System.Windows.Forms.RTF.Minor
---@field LTRChar System.Windows.Forms.RTF.Minor
---@field CharStyleNum System.Windows.Forms.RTF.Minor
---@field CharCharSet System.Windows.Forms.RTF.Minor
---@field Language System.Windows.Forms.RTF.Minor
---@field Gray System.Windows.Forms.RTF.Minor
---@field MacQD System.Windows.Forms.RTF.Minor
---@field PMMetafile System.Windows.Forms.RTF.Minor
---@field EnhancedMetafile System.Windows.Forms.RTF.Minor
---@field WinMetafile System.Windows.Forms.RTF.Minor
---@field DevIndBitmap System.Windows.Forms.RTF.Minor
---@field WinBitmap System.Windows.Forms.RTF.Minor
---@field PngBlip System.Windows.Forms.RTF.Minor
---@field JpegBlip System.Windows.Forms.RTF.Minor
---@field PixelBits System.Windows.Forms.RTF.Minor
---@field BitmapPlanes System.Windows.Forms.RTF.Minor
---@field BitmapWid System.Windows.Forms.RTF.Minor
---@field PicWid System.Windows.Forms.RTF.Minor
---@field PicHt System.Windows.Forms.RTF.Minor
---@field PicGoalWid System.Windows.Forms.RTF.Minor
---@field PicGoalHt System.Windows.Forms.RTF.Minor
---@field PicScaleX System.Windows.Forms.RTF.Minor
---@field PicScaleY System.Windows.Forms.RTF.Minor
---@field PicScaled System.Windows.Forms.RTF.Minor
---@field PicCropTop System.Windows.Forms.RTF.Minor
---@field PicCropBottom System.Windows.Forms.RTF.Minor
---@field PicCropLeft System.Windows.Forms.RTF.Minor
---@field PicCropRight System.Windows.Forms.RTF.Minor
---@field PicMFHasBitmap System.Windows.Forms.RTF.Minor
---@field PicMFBitsPerPixel System.Windows.Forms.RTF.Minor
---@field PicBinary System.Windows.Forms.RTF.Minor
---@field BookmarkFirstCol System.Windows.Forms.RTF.Minor
---@field BookmarkLastCol System.Windows.Forms.RTF.Minor
---@field NeXTGWidth System.Windows.Forms.RTF.Minor
---@field NeXTGHeight System.Windows.Forms.RTF.Minor
---@field FieldDirty System.Windows.Forms.RTF.Minor
---@field FieldEdited System.Windows.Forms.RTF.Minor
---@field FieldLocked System.Windows.Forms.RTF.Minor
---@field FieldPrivate System.Windows.Forms.RTF.Minor
---@field FieldAlt System.Windows.Forms.RTF.Minor
---@field TOCType System.Windows.Forms.RTF.Minor
---@field TOCLevel System.Windows.Forms.RTF.Minor
---@field AbsWid System.Windows.Forms.RTF.Minor
---@field AbsHt System.Windows.Forms.RTF.Minor
---@field RPosMargH System.Windows.Forms.RTF.Minor
---@field RPosPageH System.Windows.Forms.RTF.Minor
---@field RPosColH System.Windows.Forms.RTF.Minor
---@field PosX System.Windows.Forms.RTF.Minor
---@field PosNegX System.Windows.Forms.RTF.Minor
---@field PosXCenter System.Windows.Forms.RTF.Minor
---@field PosXInside System.Windows.Forms.RTF.Minor
---@field PosXOutSide System.Windows.Forms.RTF.Minor
---@field PosXRight System.Windows.Forms.RTF.Minor
---@field PosXLeft System.Windows.Forms.RTF.Minor
---@field RPosMargV System.Windows.Forms.RTF.Minor
---@field RPosPageV System.Windows.Forms.RTF.Minor
---@field RPosParaV System.Windows.Forms.RTF.Minor
---@field PosY System.Windows.Forms.RTF.Minor
---@field PosNegY System.Windows.Forms.RTF.Minor
---@field PosYInline System.Windows.Forms.RTF.Minor
---@field PosYTop System.Windows.Forms.RTF.Minor
---@field PosYCenter System.Windows.Forms.RTF.Minor
---@field PosYBottom System.Windows.Forms.RTF.Minor
---@field NoWrap System.Windows.Forms.RTF.Minor
---@field DistFromTextAll System.Windows.Forms.RTF.Minor
---@field DistFromTextX System.Windows.Forms.RTF.Minor
---@field DistFromTextY System.Windows.Forms.RTF.Minor
---@field TextDistY System.Windows.Forms.RTF.Minor
---@field DropCapLines System.Windows.Forms.RTF.Minor
---@field DropCapType System.Windows.Forms.RTF.Minor
---@field ObjEmb System.Windows.Forms.RTF.Minor
---@field ObjLink System.Windows.Forms.RTF.Minor
---@field ObjAutoLink System.Windows.Forms.RTF.Minor
---@field ObjSubscriber System.Windows.Forms.RTF.Minor
---@field ObjPublisher System.Windows.Forms.RTF.Minor
---@field ObjICEmb System.Windows.Forms.RTF.Minor
---@field ObjLinkSelf System.Windows.Forms.RTF.Minor
---@field ObjLock System.Windows.Forms.RTF.Minor
---@field ObjUpdate System.Windows.Forms.RTF.Minor
---@field ObjHt System.Windows.Forms.RTF.Minor
---@field ObjWid System.Windows.Forms.RTF.Minor
---@field ObjSetSize System.Windows.Forms.RTF.Minor
---@field ObjAlign System.Windows.Forms.RTF.Minor
---@field ObjTransposeY System.Windows.Forms.RTF.Minor
---@field ObjCropTop System.Windows.Forms.RTF.Minor
---@field ObjCropBottom System.Windows.Forms.RTF.Minor
---@field ObjCropLeft System.Windows.Forms.RTF.Minor
---@field ObjCropRight System.Windows.Forms.RTF.Minor
---@field ObjScaleX System.Windows.Forms.RTF.Minor
---@field ObjScaleY System.Windows.Forms.RTF.Minor
---@field ObjResRTF System.Windows.Forms.RTF.Minor
---@field ObjResPict System.Windows.Forms.RTF.Minor
---@field ObjResBitmap System.Windows.Forms.RTF.Minor
---@field ObjResText System.Windows.Forms.RTF.Minor
---@field ObjResMerge System.Windows.Forms.RTF.Minor
---@field ObjBookmarkPubObj System.Windows.Forms.RTF.Minor
---@field ObjPubAutoUpdate System.Windows.Forms.RTF.Minor
---@field FNAlt System.Windows.Forms.RTF.Minor
---@field AltKey System.Windows.Forms.RTF.Minor
---@field ShiftKey System.Windows.Forms.RTF.Minor
---@field ControlKey System.Windows.Forms.RTF.Minor
---@field FunctionKey System.Windows.Forms.RTF.Minor
---@field ACBold System.Windows.Forms.RTF.Minor
---@field ACAllCaps System.Windows.Forms.RTF.Minor
---@field ACForeColor System.Windows.Forms.RTF.Minor
---@field ACSubScript System.Windows.Forms.RTF.Minor
---@field ACExpand System.Windows.Forms.RTF.Minor
---@field ACFontNum System.Windows.Forms.RTF.Minor
---@field ACFontSize System.Windows.Forms.RTF.Minor
---@field ACItalic System.Windows.Forms.RTF.Minor
---@field ACLanguage System.Windows.Forms.RTF.Minor
---@field ACOutline System.Windows.Forms.RTF.Minor
---@field ACSmallCaps System.Windows.Forms.RTF.Minor
---@field ACShadow System.Windows.Forms.RTF.Minor
---@field ACStrikeThru System.Windows.Forms.RTF.Minor
---@field ACUnderline System.Windows.Forms.RTF.Minor
---@field ACDotUnderline System.Windows.Forms.RTF.Minor
---@field ACDbUnderline System.Windows.Forms.RTF.Minor
---@field ACNoUnderline System.Windows.Forms.RTF.Minor
---@field ACWordUnderline System.Windows.Forms.RTF.Minor
---@field ACSuperScript System.Windows.Forms.RTF.Minor
---@field FontCharSet System.Windows.Forms.RTF.Minor
---@field FontPitch System.Windows.Forms.RTF.Minor
---@field FontCodePage System.Windows.Forms.RTF.Minor
---@field FTypeNil System.Windows.Forms.RTF.Minor
---@field FTypeTrueType System.Windows.Forms.RTF.Minor
---@field FileNum System.Windows.Forms.RTF.Minor
---@field FileRelPath System.Windows.Forms.RTF.Minor
---@field FileOSNum System.Windows.Forms.RTF.Minor
---@field SrcMacintosh System.Windows.Forms.RTF.Minor
---@field SrcDOS System.Windows.Forms.RTF.Minor
---@field SrcNTFS System.Windows.Forms.RTF.Minor
---@field SrcHPFS System.Windows.Forms.RTF.Minor
---@field SrcNetwork System.Windows.Forms.RTF.Minor
---@field DrawLock System.Windows.Forms.RTF.Minor
---@field DrawPageRelX System.Windows.Forms.RTF.Minor
---@field DrawColumnRelX System.Windows.Forms.RTF.Minor
---@field DrawMarginRelX System.Windows.Forms.RTF.Minor
---@field DrawPageRelY System.Windows.Forms.RTF.Minor
---@field DrawColumnRelY System.Windows.Forms.RTF.Minor
---@field DrawMarginRelY System.Windows.Forms.RTF.Minor
---@field DrawHeight System.Windows.Forms.RTF.Minor
---@field DrawBeginGroup System.Windows.Forms.RTF.Minor
---@field DrawGroupCount System.Windows.Forms.RTF.Minor
---@field DrawEndGroup System.Windows.Forms.RTF.Minor
---@field DrawArc System.Windows.Forms.RTF.Minor
---@field DrawCallout System.Windows.Forms.RTF.Minor
---@field DrawEllipse System.Windows.Forms.RTF.Minor
---@field DrawLine System.Windows.Forms.RTF.Minor
---@field DrawPolygon System.Windows.Forms.RTF.Minor
---@field DrawPolyLine System.Windows.Forms.RTF.Minor
---@field DrawRect System.Windows.Forms.RTF.Minor
---@field DrawTextBox System.Windows.Forms.RTF.Minor
---@field DrawOffsetX System.Windows.Forms.RTF.Minor
---@field DrawSizeX System.Windows.Forms.RTF.Minor
---@field DrawOffsetY System.Windows.Forms.RTF.Minor
---@field DrawSizeY System.Windows.Forms.RTF.Minor
---@field COAngle System.Windows.Forms.RTF.Minor
---@field COAccentBar System.Windows.Forms.RTF.Minor
---@field COBestFit System.Windows.Forms.RTF.Minor
---@field COBorder System.Windows.Forms.RTF.Minor
---@field COAttachAbsDist System.Windows.Forms.RTF.Minor
---@field COAttachBottom System.Windows.Forms.RTF.Minor
---@field COAttachCenter System.Windows.Forms.RTF.Minor
---@field COAttachTop System.Windows.Forms.RTF.Minor
---@field COLength System.Windows.Forms.RTF.Minor
---@field CONegXQuadrant System.Windows.Forms.RTF.Minor
---@field CONegYQuadrant System.Windows.Forms.RTF.Minor
---@field COOffset System.Windows.Forms.RTF.Minor
---@field COAttachSmart System.Windows.Forms.RTF.Minor
---@field CODoubleLine System.Windows.Forms.RTF.Minor
---@field CORightAngle System.Windows.Forms.RTF.Minor
---@field COSingleLine System.Windows.Forms.RTF.Minor
---@field COTripleLine System.Windows.Forms.RTF.Minor
---@field DrawTextBoxMargin System.Windows.Forms.RTF.Minor
---@field DrawTextBoxText System.Windows.Forms.RTF.Minor
---@field DrawRoundRect System.Windows.Forms.RTF.Minor
---@field DrawPointX System.Windows.Forms.RTF.Minor
---@field DrawPointY System.Windows.Forms.RTF.Minor
---@field DrawPolyCount System.Windows.Forms.RTF.Minor
---@field DrawArcFlipX System.Windows.Forms.RTF.Minor
---@field DrawArcFlipY System.Windows.Forms.RTF.Minor
---@field DrawLineBlue System.Windows.Forms.RTF.Minor
---@field DrawLineGreen System.Windows.Forms.RTF.Minor
---@field DrawLineRed System.Windows.Forms.RTF.Minor
---@field DrawLinePalette System.Windows.Forms.RTF.Minor
---@field DrawLineDashDot System.Windows.Forms.RTF.Minor
---@field DrawLineDashDotDot System.Windows.Forms.RTF.Minor
---@field DrawLineDash System.Windows.Forms.RTF.Minor
---@field DrawLineDot System.Windows.Forms.RTF.Minor
---@field DrawLineGray System.Windows.Forms.RTF.Minor
---@field DrawLineHollow System.Windows.Forms.RTF.Minor
---@field DrawLineSolid System.Windows.Forms.RTF.Minor
---@field DrawLineWidth System.Windows.Forms.RTF.Minor
---@field DrawHollowEndArrow System.Windows.Forms.RTF.Minor
---@field DrawEndArrowLength System.Windows.Forms.RTF.Minor
---@field DrawSolidEndArrow System.Windows.Forms.RTF.Minor
---@field DrawEndArrowWidth System.Windows.Forms.RTF.Minor
---@field DrawHollowStartArrow System.Windows.Forms.RTF.Minor
---@field DrawStartArrowLength System.Windows.Forms.RTF.Minor
---@field DrawSolidStartArrow System.Windows.Forms.RTF.Minor
---@field DrawStartArrowWidth System.Windows.Forms.RTF.Minor
---@field DrawBgFillBlue System.Windows.Forms.RTF.Minor
---@field DrawBgFillGreen System.Windows.Forms.RTF.Minor
---@field DrawBgFillRed System.Windows.Forms.RTF.Minor
---@field DrawBgFillPalette System.Windows.Forms.RTF.Minor
---@field DrawBgFillGray System.Windows.Forms.RTF.Minor
---@field DrawFgFillBlue System.Windows.Forms.RTF.Minor
---@field DrawFgFillGreen System.Windows.Forms.RTF.Minor
---@field DrawFgFillRed System.Windows.Forms.RTF.Minor
---@field DrawFgFillPalette System.Windows.Forms.RTF.Minor
---@field DrawFgFillGray System.Windows.Forms.RTF.Minor
---@field DrawFillPatIndex System.Windows.Forms.RTF.Minor
---@field DrawShadow System.Windows.Forms.RTF.Minor
---@field DrawShadowXOffset System.Windows.Forms.RTF.Minor
---@field DrawShadowYOffset System.Windows.Forms.RTF.Minor
---@field IndexNumber System.Windows.Forms.RTF.Minor
---@field IndexBold System.Windows.Forms.RTF.Minor
---@field IndexItalic System.Windows.Forms.RTF.Minor
---@field UnicodeCharBytes System.Windows.Forms.RTF.Minor
---@field UnicodeChar System.Windows.Forms.RTF.Minor
---@field UnicodeDestination System.Windows.Forms.RTF.Minor
---@field UnicodeDualDestination System.Windows.Forms.RTF.Minor
---@field UnicodeAnsiCodepage System.Windows.Forms.RTF.Minor
System.Windows.Forms.RTF.Minor = {}
---@alias CS.System.Windows.Forms.RTF.Minor System.Windows.Forms.RTF.Minor
CS.System.Windows.Forms.RTF.Minor = System.Windows.Forms.RTF.Minor


---@class System.Windows.Forms.RTF.Picture : System.Object
---@field ImageType System.Windows.Forms.RTF.Minor
---@field Data System.IO.MemoryStream
---@field Width number
---@field Height number
---@field Size System.Drawing.SizeF
System.Windows.Forms.RTF.Picture = {}
---@alias CS.System.Windows.Forms.RTF.Picture System.Windows.Forms.RTF.Picture
CS.System.Windows.Forms.RTF.Picture = System.Windows.Forms.RTF.Picture

---@return System.Windows.Forms.RTF.Picture
function System.Windows.Forms.RTF.Picture.New() end
---@param twips number
function System.Windows.Forms.RTF.Picture:SetWidthFromTwips(twips) end
---@param twips number
function System.Windows.Forms.RTF.Picture:SetHeightFromTwips(twips) end
---@return boolean
function System.Windows.Forms.RTF.Picture:IsValid() end
---@param dc System.Drawing.Graphics
---@param x number
---@param y number
---@param selected boolean
function System.Windows.Forms.RTF.Picture:DrawImage(dc, x, y, selected) end
---@return System.Drawing.Image
function System.Windows.Forms.RTF.Picture:ToImage() end

---@class System.Windows.Forms.RTF.RTF : System.Object
---@field TokenClass System.Windows.Forms.RTF.TokenClass
---@field Major System.Windows.Forms.RTF.Major
---@field Minor System.Windows.Forms.RTF.Minor
---@field Param number
---@field Text string
---@field EncodedText string
---@field Picture System.Windows.Forms.RTF.Picture
---@field Colors System.Windows.Forms.RTF.Color
---@field Styles System.Windows.Forms.RTF.Style
---@field Fonts System.Windows.Forms.RTF.Font
---@field ClassCallback System.Windows.Forms.RTF.ClassCallback
---@field DestinationCallback System.Windows.Forms.RTF.DestinationCallback
---@field LineNumber number
---@field LinePos number
System.Windows.Forms.RTF.RTF = {}
---@alias CS.System.Windows.Forms.RTF.RTF System.Windows.Forms.RTF.RTF
CS.System.Windows.Forms.RTF.RTF = System.Windows.Forms.RTF.RTF

---@param stream System.IO.Stream
---@return System.Windows.Forms.RTF.RTF
function System.Windows.Forms.RTF.RTF.New(stream) end
---@param name string
function System.Windows.Forms.RTF.RTF:DefaultFont(name) end
function System.Windows.Forms.RTF.RTF:Read() end
function System.Windows.Forms.RTF.RTF:RouteToken() end
function System.Windows.Forms.RTF.RTF:SkipGroup() end
---@return System.Windows.Forms.RTF.TokenClass
function System.Windows.Forms.RTF.RTF:GetToken() end
---@param cl System.Windows.Forms.RTF.TokenClass
---@param maj System.Windows.Forms.RTF.Major
---@param min System.Windows.Forms.RTF.Minor
---@param par number
---@param text string
function System.Windows.Forms.RTF.RTF:SetToken(cl, maj, min, par, text) end
function System.Windows.Forms.RTF.RTF:UngetToken() end
---@return System.Windows.Forms.RTF.TokenClass
function System.Windows.Forms.RTF.RTF:PeekToken() end
---@param token string
function System.Windows.Forms.RTF.RTF:Lookup(token) end
---@param rtf_class System.Windows.Forms.RTF.TokenClass
---@param major System.Windows.Forms.RTF.Major
---@return boolean
function System.Windows.Forms.RTF.RTF:CheckCM(rtf_class, major) end
---@param rtf_class System.Windows.Forms.RTF.TokenClass
---@param major System.Windows.Forms.RTF.Major
---@param minor System.Windows.Forms.RTF.Minor
---@return boolean
function System.Windows.Forms.RTF.RTF:CheckCMM(rtf_class, major, minor) end
---@param major System.Windows.Forms.RTF.Major
---@param minor System.Windows.Forms.RTF.Minor
---@return boolean
function System.Windows.Forms.RTF.RTF:CheckMM(major, minor) end

---@class System.Windows.Forms.RTF.RTFException : System.ApplicationException
---@field Message string
System.Windows.Forms.RTF.RTFException = {}
---@alias CS.System.Windows.Forms.RTF.RTFException System.Windows.Forms.RTF.RTFException
CS.System.Windows.Forms.RTF.RTFException = System.Windows.Forms.RTF.RTFException

---@param rtf System.Windows.Forms.RTF.RTF
---@param error_message string
---@return System.Windows.Forms.RTF.RTFException
function System.Windows.Forms.RTF.RTFException.New(rtf, error_message) end

---@class System.Windows.Forms.RTF.Style : System.Object
---@field NoStyleNum number
---@field NormalStyleNum number
---@field Name string
---@field Type System.Windows.Forms.RTF.StyleType
---@field Additive boolean
---@field BasedOn number
---@field Elements System.Windows.Forms.RTF.StyleElement
---@field Expanding boolean
---@field NextPar number
---@field Num number
System.Windows.Forms.RTF.Style = {}
---@alias CS.System.Windows.Forms.RTF.Style System.Windows.Forms.RTF.Style
CS.System.Windows.Forms.RTF.Style = System.Windows.Forms.RTF.Style

---@param rtf System.Windows.Forms.RTF.RTF
---@return System.Windows.Forms.RTF.Style
function System.Windows.Forms.RTF.Style.New(rtf) end
---@overload fun(rtf: System.Windows.Forms.RTF.RTF, style_number: number) : System.Windows.Forms.RTF.Style
---@param start System.Windows.Forms.RTF.Style
---@param style_number number
---@return System.Windows.Forms.RTF.Style
function System.Windows.Forms.RTF.Style.GetStyle(start, style_number) end
---@param rtf System.Windows.Forms.RTF.RTF
function System.Windows.Forms.RTF.Style:Expand(rtf) end

---@class System.Windows.Forms.RTF.StyleElement : System.Object
---@field TokenClass System.Windows.Forms.RTF.TokenClass
---@field Major System.Windows.Forms.RTF.Major
---@field Minor System.Windows.Forms.RTF.Minor
---@field Param number
---@field Text string
System.Windows.Forms.RTF.StyleElement = {}
---@alias CS.System.Windows.Forms.RTF.StyleElement System.Windows.Forms.RTF.StyleElement
CS.System.Windows.Forms.RTF.StyleElement = System.Windows.Forms.RTF.StyleElement

---@param s System.Windows.Forms.RTF.Style
---@param token_class System.Windows.Forms.RTF.TokenClass
---@param major System.Windows.Forms.RTF.Major
---@param minor System.Windows.Forms.RTF.Minor
---@param param number
---@param text string
---@return System.Windows.Forms.RTF.StyleElement
function System.Windows.Forms.RTF.StyleElement.New(s, token_class, major, minor, param, text) end

---@class System.Windows.Forms.RTF.StyleType
---@field Paragraph System.Windows.Forms.RTF.StyleType
---@field Character System.Windows.Forms.RTF.StyleType
---@field Section System.Windows.Forms.RTF.StyleType
System.Windows.Forms.RTF.StyleType = {}
---@alias CS.System.Windows.Forms.RTF.StyleType System.Windows.Forms.RTF.StyleType
CS.System.Windows.Forms.RTF.StyleType = System.Windows.Forms.RTF.StyleType


---@class System.Windows.Forms.RTF.TokenClass
---@field None System.Windows.Forms.RTF.TokenClass
---@field Unknown System.Windows.Forms.RTF.TokenClass
---@field Group System.Windows.Forms.RTF.TokenClass
---@field Text System.Windows.Forms.RTF.TokenClass
---@field Control System.Windows.Forms.RTF.TokenClass
---@field EOF System.Windows.Forms.RTF.TokenClass
---@field MaxClass System.Windows.Forms.RTF.TokenClass
System.Windows.Forms.RTF.TokenClass = {}
---@alias CS.System.Windows.Forms.RTF.TokenClass System.Windows.Forms.RTF.TokenClass
CS.System.Windows.Forms.RTF.TokenClass = System.Windows.Forms.RTF.TokenClass


---@class System.Windows.Forms.PropertyGridInternal.PropertiesTab : System.Windows.Forms.Design.PropertyTab
---@field HelpKeyword string
---@field TabName string
System.Windows.Forms.PropertyGridInternal.PropertiesTab = {}
---@alias CS.System.Windows.Forms.PropertyGridInternal.PropertiesTab System.Windows.Forms.PropertyGridInternal.PropertiesTab
CS.System.Windows.Forms.PropertyGridInternal.PropertiesTab = System.Windows.Forms.PropertyGridInternal.PropertiesTab

---@return System.Windows.Forms.PropertyGridInternal.PropertiesTab
function System.Windows.Forms.PropertyGridInternal.PropertiesTab.New() end
---@overload fun(self: System.Windows.Forms.PropertyGridInternal.PropertiesTab, component: System.Object, attributes: System.Attribute[]) : System.ComponentModel.PropertyDescriptorCollection
---@param context System.ComponentModel.ITypeDescriptorContext
---@param component System.Object
---@param attributes System.Attribute[]
---@return System.ComponentModel.PropertyDescriptorCollection
function System.Windows.Forms.PropertyGridInternal.PropertiesTab:GetProperties(context, component, attributes) end
---@param obj System.Object
---@return System.ComponentModel.PropertyDescriptor
function System.Windows.Forms.PropertyGridInternal.PropertiesTab:GetDefaultProperty(obj) end

---@class System.Windows.Forms.PropertyGridInternal.CategoryGridEntry : System.Windows.Forms.PropertyGridInternal.GridEntry
---@field GridItemType System.Windows.Forms.GridItemType
---@field Expandable boolean
---@field Label string
---@field IsReadOnly boolean
---@field IsEditable boolean
---@field IsResetable boolean
System.Windows.Forms.PropertyGridInternal.CategoryGridEntry = {}
---@alias CS.System.Windows.Forms.PropertyGridInternal.CategoryGridEntry System.Windows.Forms.PropertyGridInternal.CategoryGridEntry
CS.System.Windows.Forms.PropertyGridInternal.CategoryGridEntry = System.Windows.Forms.PropertyGridInternal.CategoryGridEntry

---@param owner System.Windows.Forms.PropertyGrid
---@param category string
---@param parent System.Windows.Forms.PropertyGridInternal.GridEntry
---@return System.Windows.Forms.PropertyGridInternal.CategoryGridEntry
function System.Windows.Forms.PropertyGridInternal.CategoryGridEntry.New(owner, category, parent) end

---@class System.Windows.Forms.PropertyGridInternal.GridEntry : System.Windows.Forms.GridItem
---@field Expandable boolean
---@field Expanded boolean
---@field GridItems System.Windows.Forms.GridItemCollection
---@field GridItemType System.Windows.Forms.GridItemType
---@field Label string
---@field Parent System.Windows.Forms.GridItem
---@field ParentEntry System.Windows.Forms.PropertyGridInternal.GridEntry
---@field PropertyDescriptor System.ComponentModel.PropertyDescriptor
---@field PropertyDescriptors System.ComponentModel.PropertyDescriptor[]
---@field PropertyOwner System.Object
---@field PropertyOwners System.Object[]
---@field HasMergedValue boolean
---@field IsMerged boolean
---@field Values System.Object[]
---@field Value System.Object
---@field ValueText string
---@field AcceptedValues System.Collections.ICollection
---@field HasCustomEditor boolean
---@field EditorStyle System.Drawing.Design.UITypeEditorEditStyle
---@field EditorResizeable boolean
---@field HasDefaultValue boolean
---@field IsResetable boolean
---@field IsEditable boolean
---@field IsReadOnly boolean
---@field IsPassword boolean
---@field ShouldCreateParentInstance boolean
---@field PaintValueSupported boolean
System.Windows.Forms.PropertyGridInternal.GridEntry = {}
---@alias CS.System.Windows.Forms.PropertyGridInternal.GridEntry System.Windows.Forms.PropertyGridInternal.GridEntry
CS.System.Windows.Forms.PropertyGridInternal.GridEntry = System.Windows.Forms.PropertyGridInternal.GridEntry

---@param propertyGrid System.Windows.Forms.PropertyGrid
---@param properties System.ComponentModel.PropertyDescriptor[]
---@param parent System.Windows.Forms.PropertyGridInternal.GridEntry
---@return System.Windows.Forms.PropertyGridInternal.GridEntry
function System.Windows.Forms.PropertyGridInternal.GridEntry.New(propertyGrid, properties, parent) end
---@return boolean
function System.Windows.Forms.PropertyGridInternal.GridEntry:Select() end
---@param parent System.Windows.Forms.GridItem
function System.Windows.Forms.PropertyGridInternal.GridEntry:SetParent(parent) end
---@param service System.Windows.Forms.Design.IWindowsFormsEditorService
---@return boolean
function System.Windows.Forms.PropertyGridInternal.GridEntry:EditValue(service) end
---@return boolean
function System.Windows.Forms.PropertyGridInternal.GridEntry:ToggleValue() end
---@param value System.Object
---@param out_error string
---@return boolean,string
function System.Windows.Forms.PropertyGridInternal.GridEntry:SetValue(value, out_error) end
---@return boolean
function System.Windows.Forms.PropertyGridInternal.GridEntry:ResetValue() end
---@param gfx System.Drawing.Graphics
---@param rect System.Drawing.Rectangle
function System.Windows.Forms.PropertyGridInternal.GridEntry:PaintValue(gfx, rect) end

---@class System.Windows.Forms.PropertyGridInternal.IRootGridEntry
---@field BrowsableAttributes System.ComponentModel.AttributeCollection
System.Windows.Forms.PropertyGridInternal.IRootGridEntry = {}
---@alias CS.System.Windows.Forms.PropertyGridInternal.IRootGridEntry System.Windows.Forms.PropertyGridInternal.IRootGridEntry
CS.System.Windows.Forms.PropertyGridInternal.IRootGridEntry = System.Windows.Forms.PropertyGridInternal.IRootGridEntry

---@param showCategories boolean
function System.Windows.Forms.PropertyGridInternal.IRootGridEntry:ShowCategories(showCategories) end
function System.Windows.Forms.PropertyGridInternal.IRootGridEntry:ResetBrowsableAttributes() end

---@class System.Windows.Forms.PropertyGridInternal.PropertyGridCommands : System.Object
---@field Commands System.ComponentModel.Design.CommandID
---@field Description System.ComponentModel.Design.CommandID
---@field Hide System.ComponentModel.Design.CommandID
---@field Reset System.ComponentModel.Design.CommandID
System.Windows.Forms.PropertyGridInternal.PropertyGridCommands = {}
---@alias CS.System.Windows.Forms.PropertyGridInternal.PropertyGridCommands System.Windows.Forms.PropertyGridInternal.PropertyGridCommands
CS.System.Windows.Forms.PropertyGridInternal.PropertyGridCommands = System.Windows.Forms.PropertyGridInternal.PropertyGridCommands

---@return System.Windows.Forms.PropertyGridInternal.PropertyGridCommands
function System.Windows.Forms.PropertyGridInternal.PropertyGridCommands.New() end

---@class System.Windows.Forms.PropertyGridInternal.PGTextBox : System.Windows.Forms.TextBox
System.Windows.Forms.PropertyGridInternal.PGTextBox = {}
---@alias CS.System.Windows.Forms.PropertyGridInternal.PGTextBox System.Windows.Forms.PropertyGridInternal.PGTextBox
CS.System.Windows.Forms.PropertyGridInternal.PGTextBox = System.Windows.Forms.PropertyGridInternal.PGTextBox

---@return System.Windows.Forms.PropertyGridInternal.PGTextBox
function System.Windows.Forms.PropertyGridInternal.PGTextBox.New() end
---@param location System.Drawing.Point
function System.Windows.Forms.PropertyGridInternal.PGTextBox:FocusAt(location) end

---@class System.Windows.Forms.PropertyGridInternal.PropertyGridTextBox : System.Windows.Forms.UserControl
---@field DialogButtonVisible boolean
---@field DropDownButtonVisible boolean
---@field ForeColor System.Drawing.Color
---@field BackColor System.Drawing.Color
---@field ReadOnly boolean
---@field Text string
---@field PasswordChar System.Char
System.Windows.Forms.PropertyGridInternal.PropertyGridTextBox = {}
---@alias CS.System.Windows.Forms.PropertyGridInternal.PropertyGridTextBox System.Windows.Forms.PropertyGridInternal.PropertyGridTextBox
CS.System.Windows.Forms.PropertyGridInternal.PropertyGridTextBox = System.Windows.Forms.PropertyGridInternal.PropertyGridTextBox

---@return System.Windows.Forms.PropertyGridInternal.PropertyGridTextBox
function System.Windows.Forms.PropertyGridInternal.PropertyGridTextBox.New() end

---@class System.Windows.Forms.PropertyGridInternal.PropertyGridView : System.Windows.Forms.ScrollableControl
System.Windows.Forms.PropertyGridInternal.PropertyGridView = {}
---@alias CS.System.Windows.Forms.PropertyGridInternal.PropertyGridView System.Windows.Forms.PropertyGridInternal.PropertyGridView
CS.System.Windows.Forms.PropertyGridInternal.PropertyGridView = System.Windows.Forms.PropertyGridInternal.PropertyGridView

---@param propertyGrid System.Windows.Forms.PropertyGrid
---@return System.Windows.Forms.PropertyGridInternal.PropertyGridView
function System.Windows.Forms.PropertyGridInternal.PropertyGridView.New(propertyGrid) end
function System.Windows.Forms.PropertyGridInternal.PropertyGridView:CloseDropDown() end
---@param control System.Windows.Forms.Control
function System.Windows.Forms.PropertyGridInternal.PropertyGridView:DropDownControl(control) end
---@param dialog System.Windows.Forms.Form
---@return System.Windows.Forms.DialogResult
function System.Windows.Forms.PropertyGridInternal.PropertyGridView:ShowDialog(dialog) end

---@class System.Windows.Forms.PropertyGridInternal.PropertyGridView.PropertyGridDropDown : System.Windows.Forms.Form
System.Windows.Forms.PropertyGridInternal.PropertyGridView.PropertyGridDropDown = {}
---@alias CS.System.Windows.Forms.PropertyGridInternal.PropertyGridView.PropertyGridDropDown System.Windows.Forms.PropertyGridInternal.PropertyGridView.PropertyGridDropDown
CS.System.Windows.Forms.PropertyGridInternal.PropertyGridView.PropertyGridDropDown = System.Windows.Forms.PropertyGridInternal.PropertyGridView.PropertyGridDropDown

---@return System.Windows.Forms.PropertyGridInternal.PropertyGridView.PropertyGridDropDown
function System.Windows.Forms.PropertyGridInternal.PropertyGridView.PropertyGridDropDown.New() end

---@class System.Windows.Forms.PropertyGridInternal.RootGridEntry : System.Windows.Forms.PropertyGridInternal.GridEntry
---@field Expandable boolean
---@field GridItemType System.Windows.Forms.GridItemType
---@field Label string
---@field Value System.Object
---@field Values System.Object[]
---@field IsReadOnly boolean
---@field IsEditable boolean
---@field IsResetable boolean
---@field IsMerged boolean
System.Windows.Forms.PropertyGridInternal.RootGridEntry = {}
---@alias CS.System.Windows.Forms.PropertyGridInternal.RootGridEntry System.Windows.Forms.PropertyGridInternal.RootGridEntry
CS.System.Windows.Forms.PropertyGridInternal.RootGridEntry = System.Windows.Forms.PropertyGridInternal.RootGridEntry

---@param owner System.Windows.Forms.PropertyGrid
---@param obj System.Object[]
---@return System.Windows.Forms.PropertyGridInternal.RootGridEntry
function System.Windows.Forms.PropertyGridInternal.RootGridEntry.New(owner, obj) end
---@return boolean
function System.Windows.Forms.PropertyGridInternal.RootGridEntry:Select() end

---@class System.Windows.Forms.Layout.ArrangedElementCollection : System.Object
---@field Count number
---@field IsReadOnly boolean
System.Windows.Forms.Layout.ArrangedElementCollection = {}
---@alias CS.System.Windows.Forms.Layout.ArrangedElementCollection System.Windows.Forms.Layout.ArrangedElementCollection
CS.System.Windows.Forms.Layout.ArrangedElementCollection = System.Windows.Forms.Layout.ArrangedElementCollection

---@param array System.Array
---@param index number
function System.Windows.Forms.Layout.ArrangedElementCollection:CopyTo(array, index) end
---@param obj System.Object
---@return boolean
function System.Windows.Forms.Layout.ArrangedElementCollection:Equals(obj) end
---@return System.Collections.IEnumerator
function System.Windows.Forms.Layout.ArrangedElementCollection:GetEnumerator() end
---@return number
function System.Windows.Forms.Layout.ArrangedElementCollection:GetHashCode() end

---@class System.Windows.Forms.Layout.DefaultLayout : System.Windows.Forms.Layout.LayoutEngine
System.Windows.Forms.Layout.DefaultLayout = {}
---@alias CS.System.Windows.Forms.Layout.DefaultLayout System.Windows.Forms.Layout.DefaultLayout
CS.System.Windows.Forms.Layout.DefaultLayout = System.Windows.Forms.Layout.DefaultLayout

---@param child System.Object
---@param specified System.Windows.Forms.BoundsSpecified
function System.Windows.Forms.Layout.DefaultLayout:InitLayout(child, specified) end
---@param container System.Object
---@param args System.Windows.Forms.LayoutEventArgs
---@return boolean
function System.Windows.Forms.Layout.DefaultLayout:Layout(container, args) end

---@class System.Windows.Forms.Layout.FlowLayout : System.Windows.Forms.Layout.LayoutEngine
System.Windows.Forms.Layout.FlowLayout = {}
---@alias CS.System.Windows.Forms.Layout.FlowLayout System.Windows.Forms.Layout.FlowLayout
CS.System.Windows.Forms.Layout.FlowLayout = System.Windows.Forms.Layout.FlowLayout

---@param child System.Object
---@param specified System.Windows.Forms.BoundsSpecified
function System.Windows.Forms.Layout.FlowLayout:InitLayout(child, specified) end
---@param container System.Object
---@param args System.Windows.Forms.LayoutEventArgs
---@return boolean
function System.Windows.Forms.Layout.FlowLayout:Layout(container, args) end

---@class System.Windows.Forms.Layout.IArrangedContainer
---@field Controls System.Windows.Forms.Layout.ArrangedElementCollection
System.Windows.Forms.Layout.IArrangedContainer = {}
---@alias CS.System.Windows.Forms.Layout.IArrangedContainer System.Windows.Forms.Layout.IArrangedContainer
CS.System.Windows.Forms.Layout.IArrangedContainer = System.Windows.Forms.Layout.IArrangedContainer

---@param affectedElement System.Windows.Forms.Layout.IArrangedElement
---@param affectedProperty string
function System.Windows.Forms.Layout.IArrangedContainer:PerformLayout(affectedElement, affectedProperty) end

---@class System.Windows.Forms.Layout.IArrangedElement
---@field Visible boolean
---@field AutoSize boolean
---@field Bounds System.Drawing.Rectangle
---@field ExplicitBounds System.Drawing.Rectangle
---@field Padding System.Windows.Forms.Padding
---@field Margin System.Windows.Forms.Padding
---@field MinimumSize System.Drawing.Size
---@field Anchor System.Windows.Forms.AnchorStyles
---@field Dock System.Windows.Forms.DockStyle
---@field DisplayRectangle System.Drawing.Rectangle
---@field Parent System.Windows.Forms.Layout.IArrangedContainer
---@field Name string
---@field DistanceRight number
---@field DistanceBottom number
System.Windows.Forms.Layout.IArrangedElement = {}
---@alias CS.System.Windows.Forms.Layout.IArrangedElement System.Windows.Forms.Layout.IArrangedElement
CS.System.Windows.Forms.Layout.IArrangedElement = System.Windows.Forms.Layout.IArrangedElement

---@return System.Windows.Forms.AutoSizeMode
function System.Windows.Forms.Layout.IArrangedElement:GetAutoSizeMode() end
---@param x number
---@param y number
---@param width number
---@param height number
---@param specified System.Windows.Forms.BoundsSpecified
function System.Windows.Forms.Layout.IArrangedElement:SetBounds(x, y, width, height, specified) end
---@param proposedSize System.Drawing.Size
---@return System.Drawing.Size
function System.Windows.Forms.Layout.IArrangedElement:GetPreferredSize(proposedSize) end

---@class System.Windows.Forms.Layout.LayoutEngine : System.Object
System.Windows.Forms.Layout.LayoutEngine = {}
---@alias CS.System.Windows.Forms.Layout.LayoutEngine System.Windows.Forms.Layout.LayoutEngine
CS.System.Windows.Forms.Layout.LayoutEngine = System.Windows.Forms.Layout.LayoutEngine

---@param child System.Object
---@param specified System.Windows.Forms.BoundsSpecified
function System.Windows.Forms.Layout.LayoutEngine:InitLayout(child, specified) end
---@param container System.Object
---@param layoutEventArgs System.Windows.Forms.LayoutEventArgs
---@return boolean
function System.Windows.Forms.Layout.LayoutEngine:Layout(container, layoutEventArgs) end

---@class System.Windows.Forms.Layout.TableLayout : System.Windows.Forms.Layout.LayoutEngine
System.Windows.Forms.Layout.TableLayout = {}
---@alias CS.System.Windows.Forms.Layout.TableLayout System.Windows.Forms.Layout.TableLayout
CS.System.Windows.Forms.Layout.TableLayout = System.Windows.Forms.Layout.TableLayout

---@param child System.Object
---@param specified System.Windows.Forms.BoundsSpecified
function System.Windows.Forms.Layout.TableLayout:InitLayout(child, specified) end
---@param container System.Object
---@param args System.Windows.Forms.LayoutEventArgs
---@return boolean
function System.Windows.Forms.Layout.TableLayout:Layout(container, args) end

---@class System.Windows.Forms.Layout.TableLayoutSettingsTypeConverter : System.ComponentModel.TypeConverter
System.Windows.Forms.Layout.TableLayoutSettingsTypeConverter = {}
---@alias CS.System.Windows.Forms.Layout.TableLayoutSettingsTypeConverter System.Windows.Forms.Layout.TableLayoutSettingsTypeConverter
CS.System.Windows.Forms.Layout.TableLayoutSettingsTypeConverter = System.Windows.Forms.Layout.TableLayoutSettingsTypeConverter

---@return System.Windows.Forms.Layout.TableLayoutSettingsTypeConverter
function System.Windows.Forms.Layout.TableLayoutSettingsTypeConverter.New() end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param destinationType System.Type
---@return boolean
function System.Windows.Forms.Layout.TableLayoutSettingsTypeConverter:CanConvertTo(context, destinationType) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param sourceType System.Type
---@return boolean
function System.Windows.Forms.Layout.TableLayoutSettingsTypeConverter:CanConvertFrom(context, sourceType) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@param destinationType System.Type
---@return System.Object
function System.Windows.Forms.Layout.TableLayoutSettingsTypeConverter:ConvertTo(context, culture, value, destinationType) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@return System.Object
function System.Windows.Forms.Layout.TableLayoutSettingsTypeConverter:ConvertFrom(context, culture, value) end

---@class System.Windows.Forms.Design.ComponentEditorForm : System.Windows.Forms.Form
---@field AutoSize boolean
System.Windows.Forms.Design.ComponentEditorForm = {}
---@alias CS.System.Windows.Forms.Design.ComponentEditorForm System.Windows.Forms.Design.ComponentEditorForm
CS.System.Windows.Forms.Design.ComponentEditorForm = System.Windows.Forms.Design.ComponentEditorForm

---@param component System.Object
---@param pageTypes System.Type[]
---@return System.Windows.Forms.Design.ComponentEditorForm
function System.Windows.Forms.Design.ComponentEditorForm.New(component, pageTypes) end
---@param ref_msg System.Windows.Forms.Message
---@return boolean,System.Windows.Forms.Message
function System.Windows.Forms.Design.ComponentEditorForm:PreProcessMessage(ref_msg) end
---@overload fun() : System.Windows.Forms.DialogResult
---@overload fun(self: System.Windows.Forms.Design.ComponentEditorForm, page: number) : System.Windows.Forms.DialogResult
---@overload fun(self: System.Windows.Forms.Design.ComponentEditorForm, owner: System.Windows.Forms.IWin32Window) : System.Windows.Forms.DialogResult
---@param owner System.Windows.Forms.IWin32Window
---@param page number
---@return System.Windows.Forms.DialogResult
function System.Windows.Forms.Design.ComponentEditorForm:ShowForm(owner, page) end

---@class System.Windows.Forms.Design.ComponentEditorPage : System.Windows.Forms.Panel
---@field AutoSize boolean
---@field CommitOnDeactivate boolean
---@field Icon System.Drawing.Icon
---@field Title string
System.Windows.Forms.Design.ComponentEditorPage = {}
---@alias CS.System.Windows.Forms.Design.ComponentEditorPage System.Windows.Forms.Design.ComponentEditorPage
CS.System.Windows.Forms.Design.ComponentEditorPage = System.Windows.Forms.Design.ComponentEditorPage

---@return System.Windows.Forms.Design.ComponentEditorPage
function System.Windows.Forms.Design.ComponentEditorPage.New() end
function System.Windows.Forms.Design.ComponentEditorPage:Activate() end
function System.Windows.Forms.Design.ComponentEditorPage:ApplyChanges() end
function System.Windows.Forms.Design.ComponentEditorPage:Deactivate() end
---@return System.Windows.Forms.Control
function System.Windows.Forms.Design.ComponentEditorPage:GetControl() end
---@param ref_msg System.Windows.Forms.Message
---@return boolean,System.Windows.Forms.Message
function System.Windows.Forms.Design.ComponentEditorPage:IsPageMessage(ref_msg) end
function System.Windows.Forms.Design.ComponentEditorPage:OnApplyComplete() end
---@param component System.ComponentModel.IComponent
function System.Windows.Forms.Design.ComponentEditorPage:SetComponent(component) end
---@param site System.Windows.Forms.IComponentEditorPageSite
function System.Windows.Forms.Design.ComponentEditorPage:SetSite(site) end
function System.Windows.Forms.Design.ComponentEditorPage:ShowHelp() end
---@return boolean
function System.Windows.Forms.Design.ComponentEditorPage:SupportsHelp() end

---@class System.Windows.Forms.Design.EventsTab : System.Windows.Forms.Design.PropertyTab
---@field HelpKeyword string
---@field TabName string
System.Windows.Forms.Design.EventsTab = {}
---@alias CS.System.Windows.Forms.Design.EventsTab System.Windows.Forms.Design.EventsTab
CS.System.Windows.Forms.Design.EventsTab = System.Windows.Forms.Design.EventsTab

---@param sp System.IServiceProvider
---@return System.Windows.Forms.Design.EventsTab
function System.Windows.Forms.Design.EventsTab.New(sp) end
---@overload fun(self: System.Windows.Forms.Design.EventsTab, context: System.ComponentModel.ITypeDescriptorContext, component: System.Object, attributes: System.Attribute[]) : System.ComponentModel.PropertyDescriptorCollection
---@param component System.Object
---@param attributes System.Attribute[]
---@return System.ComponentModel.PropertyDescriptorCollection
function System.Windows.Forms.Design.EventsTab:GetProperties(component, attributes) end
---@param extendee System.Object
---@return boolean
function System.Windows.Forms.Design.EventsTab:CanExtend(extendee) end
---@param obj System.Object
---@return System.ComponentModel.PropertyDescriptor
function System.Windows.Forms.Design.EventsTab:GetDefaultProperty(obj) end

---@class System.Windows.Forms.Design.IUIService
---@field Styles System.Collections.IDictionary
System.Windows.Forms.Design.IUIService = {}
---@alias CS.System.Windows.Forms.Design.IUIService System.Windows.Forms.Design.IUIService
CS.System.Windows.Forms.Design.IUIService = System.Windows.Forms.Design.IUIService

---@param component System.Object
---@return boolean
function System.Windows.Forms.Design.IUIService:CanShowComponentEditor(component) end
---@return System.Windows.Forms.IWin32Window
function System.Windows.Forms.Design.IUIService:GetDialogOwnerWindow() end
function System.Windows.Forms.Design.IUIService:SetUIDirty() end
---@param component System.Object
---@param parent System.Windows.Forms.IWin32Window
---@return boolean
function System.Windows.Forms.Design.IUIService:ShowComponentEditor(component, parent) end
---@overload fun(self: System.Windows.Forms.Design.IUIService, ex: System.Exception)
---@overload fun(self: System.Windows.Forms.Design.IUIService, message: string)
---@param ex System.Exception
---@param message string
function System.Windows.Forms.Design.IUIService:ShowError(ex, message) end
---@param form System.Windows.Forms.Form
---@return System.Windows.Forms.DialogResult
function System.Windows.Forms.Design.IUIService:ShowDialog(form) end
---@overload fun(self: System.Windows.Forms.Design.IUIService, message: string)
---@overload fun(self: System.Windows.Forms.Design.IUIService, message: string, caption: string)
---@param message string
---@param caption string
---@param buttons System.Windows.Forms.MessageBoxButtons
---@return System.Windows.Forms.DialogResult
function System.Windows.Forms.Design.IUIService:ShowMessage(message, caption, buttons) end
---@param toolWindow System.Guid
---@return boolean
function System.Windows.Forms.Design.IUIService:ShowToolWindow(toolWindow) end

---@class System.Windows.Forms.Design.IWindowsFormsEditorService
System.Windows.Forms.Design.IWindowsFormsEditorService = {}
---@alias CS.System.Windows.Forms.Design.IWindowsFormsEditorService System.Windows.Forms.Design.IWindowsFormsEditorService
CS.System.Windows.Forms.Design.IWindowsFormsEditorService = System.Windows.Forms.Design.IWindowsFormsEditorService

function System.Windows.Forms.Design.IWindowsFormsEditorService:CloseDropDown() end
---@param control System.Windows.Forms.Control
function System.Windows.Forms.Design.IWindowsFormsEditorService:DropDownControl(control) end
---@param dialog System.Windows.Forms.Form
---@return System.Windows.Forms.DialogResult
function System.Windows.Forms.Design.IWindowsFormsEditorService:ShowDialog(dialog) end

---@class System.Windows.Forms.Design.PropertyTab : System.Object
---@field Bitmap System.Drawing.Bitmap
---@field Components System.Object[]
---@field HelpKeyword string
---@field TabName string
System.Windows.Forms.Design.PropertyTab = {}
---@alias CS.System.Windows.Forms.Design.PropertyTab System.Windows.Forms.Design.PropertyTab
CS.System.Windows.Forms.Design.PropertyTab = System.Windows.Forms.Design.PropertyTab

---@param extendee System.Object
---@return boolean
function System.Windows.Forms.Design.PropertyTab:CanExtend(extendee) end
function System.Windows.Forms.Design.PropertyTab:Dispose() end
---@param component System.Object
---@return System.ComponentModel.PropertyDescriptor
function System.Windows.Forms.Design.PropertyTab:GetDefaultProperty(component) end
---@overload fun(self: System.Windows.Forms.Design.PropertyTab, component: System.Object) : System.ComponentModel.PropertyDescriptorCollection
---@overload fun(self: System.Windows.Forms.Design.PropertyTab, component: System.Object, attributes: System.Attribute[]) : System.ComponentModel.PropertyDescriptorCollection
---@param context System.ComponentModel.ITypeDescriptorContext
---@param component System.Object
---@param attributes System.Attribute[]
---@return System.ComponentModel.PropertyDescriptorCollection
function System.Windows.Forms.Design.PropertyTab:GetProperties(context, component, attributes) end

---@class System.Windows.Forms.Design.ToolStripItemDesignerAvailability
---@field None System.Windows.Forms.Design.ToolStripItemDesignerAvailability
---@field ToolStrip System.Windows.Forms.Design.ToolStripItemDesignerAvailability
---@field MenuStrip System.Windows.Forms.Design.ToolStripItemDesignerAvailability
---@field ContextMenuStrip System.Windows.Forms.Design.ToolStripItemDesignerAvailability
---@field StatusStrip System.Windows.Forms.Design.ToolStripItemDesignerAvailability
---@field All System.Windows.Forms.Design.ToolStripItemDesignerAvailability
System.Windows.Forms.Design.ToolStripItemDesignerAvailability = {}
---@alias CS.System.Windows.Forms.Design.ToolStripItemDesignerAvailability System.Windows.Forms.Design.ToolStripItemDesignerAvailability
CS.System.Windows.Forms.Design.ToolStripItemDesignerAvailability = System.Windows.Forms.Design.ToolStripItemDesignerAvailability


---@class System.Windows.Forms.Design.ToolStripItemDesignerAvailabilityAttribute : System.Attribute
---@field Default System.Windows.Forms.Design.ToolStripItemDesignerAvailabilityAttribute
---@field ItemAdditionVisibility System.Windows.Forms.Design.ToolStripItemDesignerAvailability
System.Windows.Forms.Design.ToolStripItemDesignerAvailabilityAttribute = {}
---@alias CS.System.Windows.Forms.Design.ToolStripItemDesignerAvailabilityAttribute System.Windows.Forms.Design.ToolStripItemDesignerAvailabilityAttribute
CS.System.Windows.Forms.Design.ToolStripItemDesignerAvailabilityAttribute = System.Windows.Forms.Design.ToolStripItemDesignerAvailabilityAttribute

---@overload fun() : System.Windows.Forms.Design.ToolStripItemDesignerAvailabilityAttribute
---@param visibility System.Windows.Forms.Design.ToolStripItemDesignerAvailability
---@return System.Windows.Forms.Design.ToolStripItemDesignerAvailabilityAttribute
function System.Windows.Forms.Design.ToolStripItemDesignerAvailabilityAttribute.New(visibility) end
---@param obj System.Object
---@return boolean
function System.Windows.Forms.Design.ToolStripItemDesignerAvailabilityAttribute:Equals(obj) end
---@return number
function System.Windows.Forms.Design.ToolStripItemDesignerAvailabilityAttribute:GetHashCode() end
---@return boolean
function System.Windows.Forms.Design.ToolStripItemDesignerAvailabilityAttribute:IsDefaultAttribute() end

---@class System.Windows.Forms.Design.WindowsFormsComponentEditor : System.ComponentModel.ComponentEditor
System.Windows.Forms.Design.WindowsFormsComponentEditor = {}
---@alias CS.System.Windows.Forms.Design.WindowsFormsComponentEditor System.Windows.Forms.Design.WindowsFormsComponentEditor
CS.System.Windows.Forms.Design.WindowsFormsComponentEditor = System.Windows.Forms.Design.WindowsFormsComponentEditor

---@overload fun(self: System.Windows.Forms.Design.WindowsFormsComponentEditor, context: System.ComponentModel.ITypeDescriptorContext, component: System.Object) : boolean
---@overload fun(self: System.Windows.Forms.Design.WindowsFormsComponentEditor, context: System.ComponentModel.ITypeDescriptorContext, component: System.Object, owner: System.Windows.Forms.IWin32Window) : boolean
---@param component System.Object
---@param owner System.Windows.Forms.IWin32Window
---@return boolean
function System.Windows.Forms.Design.WindowsFormsComponentEditor:EditComponent(component, owner) end

---@class System.Windows.Forms.CarbonInternal.ApplicationHandler : System.Windows.Forms.CarbonInternal.EventHandlerBase
System.Windows.Forms.CarbonInternal.ApplicationHandler = {}
---@alias CS.System.Windows.Forms.CarbonInternal.ApplicationHandler System.Windows.Forms.CarbonInternal.ApplicationHandler
CS.System.Windows.Forms.CarbonInternal.ApplicationHandler = System.Windows.Forms.CarbonInternal.ApplicationHandler

---@param callref System.IntPtr
---@param eventref System.IntPtr
---@param handle System.IntPtr
---@param kind number
---@param ref_msg System.Windows.Forms.MSG
---@return boolean,System.Windows.Forms.MSG
function System.Windows.Forms.CarbonInternal.ApplicationHandler:ProcessEvent(callref, eventref, handle, kind, ref_msg) end

---@class System.Windows.Forms.CarbonInternal.ControlHandler : System.Windows.Forms.CarbonInternal.EventHandlerBase
System.Windows.Forms.CarbonInternal.ControlHandler = {}
---@alias CS.System.Windows.Forms.CarbonInternal.ControlHandler System.Windows.Forms.CarbonInternal.ControlHandler
CS.System.Windows.Forms.CarbonInternal.ControlHandler = System.Windows.Forms.CarbonInternal.ControlHandler

---@param callref System.IntPtr
---@param eventref System.IntPtr
---@param handle System.IntPtr
---@param kind number
---@param ref_msg System.Windows.Forms.MSG
---@return boolean,System.Windows.Forms.MSG
function System.Windows.Forms.CarbonInternal.ControlHandler:ProcessEvent(callref, eventref, handle, kind, ref_msg) end

---@class System.Windows.Forms.CarbonInternal.Cursor : System.Object
System.Windows.Forms.CarbonInternal.Cursor = {}
---@alias CS.System.Windows.Forms.CarbonInternal.Cursor System.Windows.Forms.CarbonInternal.Cursor
CS.System.Windows.Forms.CarbonInternal.Cursor = System.Windows.Forms.CarbonInternal.Cursor

---@return System.Windows.Forms.CarbonInternal.Cursor
function System.Windows.Forms.CarbonInternal.Cursor.New() end

---@class System.Windows.Forms.CarbonInternal.CarbonCursor : System.ValueType
---@field StdCursor System.Windows.Forms.StdCursor
---@field Bitmap System.Drawing.Bitmap
---@field Mask System.Drawing.Bitmap
---@field CursorColor System.Drawing.Color
---@field MaskColor System.Drawing.Color
---@field HotSpotX number
---@field HotSpotY number
System.Windows.Forms.CarbonInternal.CarbonCursor = {}
---@alias CS.System.Windows.Forms.CarbonInternal.CarbonCursor System.Windows.Forms.CarbonInternal.CarbonCursor
CS.System.Windows.Forms.CarbonInternal.CarbonCursor = System.Windows.Forms.CarbonInternal.CarbonCursor

---@overload fun(bitmap: System.Drawing.Bitmap, mask: System.Drawing.Bitmap, cursor_pixel: System.Drawing.Color, mask_pixel: System.Drawing.Color, xHotSpot: number, yHotSpot: number) : System.Windows.Forms.CarbonInternal.CarbonCursor
---@param id System.Windows.Forms.StdCursor
---@return System.Windows.Forms.CarbonInternal.CarbonCursor
function System.Windows.Forms.CarbonInternal.CarbonCursor.New(id) end
function System.Windows.Forms.CarbonInternal.CarbonCursor:SetCursor() end
function System.Windows.Forms.CarbonInternal.CarbonCursor:SetCustomCursor() end
function System.Windows.Forms.CarbonInternal.CarbonCursor:SetStandardCursor() end

---@class System.Windows.Forms.CarbonInternal.DragTrackingDelegate : System.MulticastDelegate
System.Windows.Forms.CarbonInternal.DragTrackingDelegate = {}
---@alias CS.System.Windows.Forms.CarbonInternal.DragTrackingDelegate System.Windows.Forms.CarbonInternal.DragTrackingDelegate
CS.System.Windows.Forms.CarbonInternal.DragTrackingDelegate = System.Windows.Forms.CarbonInternal.DragTrackingDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.CarbonInternal.DragTrackingDelegate
function System.Windows.Forms.CarbonInternal.DragTrackingDelegate.New(object, method) end
---@param message number
---@param window System.IntPtr
---@param data System.IntPtr
---@param dragref System.IntPtr
function System.Windows.Forms.CarbonInternal.DragTrackingDelegate:Invoke(message, window, data, dragref) end
---@param message number
---@param window System.IntPtr
---@param data System.IntPtr
---@param dragref System.IntPtr
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Windows.Forms.CarbonInternal.DragTrackingDelegate:BeginInvoke(message, window, data, dragref, callback, object) end
---@param result System.IAsyncResult
function System.Windows.Forms.CarbonInternal.DragTrackingDelegate:EndInvoke(result) end

---@class System.Windows.Forms.CarbonInternal.Dnd : System.Object
System.Windows.Forms.CarbonInternal.Dnd = {}
---@alias CS.System.Windows.Forms.CarbonInternal.Dnd System.Windows.Forms.CarbonInternal.Dnd
CS.System.Windows.Forms.CarbonInternal.Dnd = System.Windows.Forms.CarbonInternal.Dnd

---@param hwnd System.Windows.Forms.Hwnd
---@param allow boolean
function System.Windows.Forms.CarbonInternal.Dnd:SetAllowDrop(hwnd, allow) end
---@param handle System.IntPtr
---@param from System.IntPtr
---@param time System.IntPtr
function System.Windows.Forms.CarbonInternal.Dnd:SendDrop(handle, from, time) end
---@param handle System.IntPtr
---@param data System.Object
---@param allowed_effects System.Windows.Forms.DragDropEffects
---@return System.Windows.Forms.DragDropEffects
function System.Windows.Forms.CarbonInternal.Dnd:StartDrag(handle, data, allowed_effects) end
---@param handle System.IntPtr
---@param dragref System.IntPtr
---@param data System.Object
function System.Windows.Forms.CarbonInternal.Dnd:StoreObjectInDrag(handle, dragref, data) end

---@class System.Windows.Forms.CarbonInternal.EventRecord : System.ValueType
System.Windows.Forms.CarbonInternal.EventRecord = {}
---@alias CS.System.Windows.Forms.CarbonInternal.EventRecord System.Windows.Forms.CarbonInternal.EventRecord
CS.System.Windows.Forms.CarbonInternal.EventRecord = System.Windows.Forms.CarbonInternal.EventRecord


---@class System.Windows.Forms.CarbonInternal.FlavorHandler : System.Object
System.Windows.Forms.CarbonInternal.FlavorHandler = {}
---@alias CS.System.Windows.Forms.CarbonInternal.FlavorHandler System.Windows.Forms.CarbonInternal.FlavorHandler
CS.System.Windows.Forms.CarbonInternal.FlavorHandler = System.Windows.Forms.CarbonInternal.FlavorHandler

---@return string
function System.Windows.Forms.CarbonInternal.FlavorHandler:ToString() end

---@class System.Windows.Forms.CarbonInternal.WindowClass
---@field kAlertWindowClass System.Windows.Forms.CarbonInternal.WindowClass
---@field kMovableAlertWindowClass System.Windows.Forms.CarbonInternal.WindowClass
---@field kModalWindowClass System.Windows.Forms.CarbonInternal.WindowClass
---@field kMovableModalWindowClass System.Windows.Forms.CarbonInternal.WindowClass
---@field kFloatingWindowClass System.Windows.Forms.CarbonInternal.WindowClass
---@field kDocumentWindowClass System.Windows.Forms.CarbonInternal.WindowClass
---@field kUtilityWindowClass System.Windows.Forms.CarbonInternal.WindowClass
---@field kHelpWindowClass System.Windows.Forms.CarbonInternal.WindowClass
---@field kSheetWindowClass System.Windows.Forms.CarbonInternal.WindowClass
---@field kToolbarWindowClass System.Windows.Forms.CarbonInternal.WindowClass
---@field kPlainWindowClass System.Windows.Forms.CarbonInternal.WindowClass
---@field kOverlayWindowClass System.Windows.Forms.CarbonInternal.WindowClass
---@field kSheetAlertWindowClass System.Windows.Forms.CarbonInternal.WindowClass
---@field kAltPlainWindowClass System.Windows.Forms.CarbonInternal.WindowClass
---@field kDrawerWindowClass System.Windows.Forms.CarbonInternal.WindowClass
---@field kAllWindowClasses System.Windows.Forms.CarbonInternal.WindowClass
System.Windows.Forms.CarbonInternal.WindowClass = {}
---@alias CS.System.Windows.Forms.CarbonInternal.WindowClass System.Windows.Forms.CarbonInternal.WindowClass
CS.System.Windows.Forms.CarbonInternal.WindowClass = System.Windows.Forms.CarbonInternal.WindowClass


---@class System.Windows.Forms.CarbonInternal.WindowAttributes
---@field kWindowNoAttributes System.Windows.Forms.CarbonInternal.WindowAttributes
---@field kWindowCloseBoxAttribute System.Windows.Forms.CarbonInternal.WindowAttributes
---@field kWindowHorizontalZoomAttribute System.Windows.Forms.CarbonInternal.WindowAttributes
---@field kWindowVerticalZoomAttribute System.Windows.Forms.CarbonInternal.WindowAttributes
---@field kWindowFullZoomAttribute System.Windows.Forms.CarbonInternal.WindowAttributes
---@field kWindowCollapseBoxAttribute System.Windows.Forms.CarbonInternal.WindowAttributes
---@field kWindowResizableAttribute System.Windows.Forms.CarbonInternal.WindowAttributes
---@field kWindowSideTitlebarAttribute System.Windows.Forms.CarbonInternal.WindowAttributes
---@field kWindowToolbarButtonAttribute System.Windows.Forms.CarbonInternal.WindowAttributes
---@field kWindowMetalAttribute System.Windows.Forms.CarbonInternal.WindowAttributes
---@field kWindowNoUpdatesAttribute System.Windows.Forms.CarbonInternal.WindowAttributes
---@field kWindowNoActivatesAttribute System.Windows.Forms.CarbonInternal.WindowAttributes
---@field kWindowOpaqueForEventsAttribute System.Windows.Forms.CarbonInternal.WindowAttributes
---@field kWindowCompositingAttribute System.Windows.Forms.CarbonInternal.WindowAttributes
---@field kWindowNoShadowAttribute System.Windows.Forms.CarbonInternal.WindowAttributes
---@field kWindowHideOnSuspendAttribute System.Windows.Forms.CarbonInternal.WindowAttributes
---@field kWindowStandardHandlerAttribute System.Windows.Forms.CarbonInternal.WindowAttributes
---@field kWindowHideOnFullScreenAttribute System.Windows.Forms.CarbonInternal.WindowAttributes
---@field kWindowInWindowMenuAttribute System.Windows.Forms.CarbonInternal.WindowAttributes
---@field kWindowLiveResizeAttribute System.Windows.Forms.CarbonInternal.WindowAttributes
---@field kWindowIgnoreClicksAttribute System.Windows.Forms.CarbonInternal.WindowAttributes
---@field kWindowNoConstrainAttribute System.Windows.Forms.CarbonInternal.WindowAttributes
---@field kWindowStandardDocumentAttributes System.Windows.Forms.CarbonInternal.WindowAttributes
---@field kWindowStandardFloatingAttributes System.Windows.Forms.CarbonInternal.WindowAttributes
System.Windows.Forms.CarbonInternal.WindowAttributes = {}
---@alias CS.System.Windows.Forms.CarbonInternal.WindowAttributes System.Windows.Forms.CarbonInternal.WindowAttributes
CS.System.Windows.Forms.CarbonInternal.WindowAttributes = System.Windows.Forms.CarbonInternal.WindowAttributes


---@class System.Windows.Forms.CarbonInternal.ThemeCursor
---@field kThemeArrowCursor System.Windows.Forms.CarbonInternal.ThemeCursor
---@field kThemeCopyArrowCursor System.Windows.Forms.CarbonInternal.ThemeCursor
---@field kThemeAliasArrowCursor System.Windows.Forms.CarbonInternal.ThemeCursor
---@field kThemeContextualMenuArrowCursor System.Windows.Forms.CarbonInternal.ThemeCursor
---@field kThemeIBeamCursor System.Windows.Forms.CarbonInternal.ThemeCursor
---@field kThemeCrossCursor System.Windows.Forms.CarbonInternal.ThemeCursor
---@field kThemePlusCursor System.Windows.Forms.CarbonInternal.ThemeCursor
---@field kThemeWatchCursor System.Windows.Forms.CarbonInternal.ThemeCursor
---@field kThemeClosedHandCursor System.Windows.Forms.CarbonInternal.ThemeCursor
---@field kThemeOpenHandCursor System.Windows.Forms.CarbonInternal.ThemeCursor
---@field kThemePointingHandCursor System.Windows.Forms.CarbonInternal.ThemeCursor
---@field kThemeCountingUpHandCursor System.Windows.Forms.CarbonInternal.ThemeCursor
---@field kThemeCountingDownHandCursor System.Windows.Forms.CarbonInternal.ThemeCursor
---@field kThemeCountingUpAndDownHandCursor System.Windows.Forms.CarbonInternal.ThemeCursor
---@field kThemeSpinningCursor System.Windows.Forms.CarbonInternal.ThemeCursor
---@field kThemeResizeLeftCursor System.Windows.Forms.CarbonInternal.ThemeCursor
---@field kThemeResizeRightCursor System.Windows.Forms.CarbonInternal.ThemeCursor
---@field kThemeResizeLeftRightCursor System.Windows.Forms.CarbonInternal.ThemeCursor
---@field kThemeNotAllowedCursor System.Windows.Forms.CarbonInternal.ThemeCursor
System.Windows.Forms.CarbonInternal.ThemeCursor = {}
---@alias CS.System.Windows.Forms.CarbonInternal.ThemeCursor System.Windows.Forms.CarbonInternal.ThemeCursor
CS.System.Windows.Forms.CarbonInternal.ThemeCursor = System.Windows.Forms.CarbonInternal.ThemeCursor


---@class System.Windows.Forms.CarbonInternal.MouseTrackingResult
---@field kMouseTrackingMouseDown System.Windows.Forms.CarbonInternal.MouseTrackingResult
---@field kMouseTrackingMouseUp System.Windows.Forms.CarbonInternal.MouseTrackingResult
---@field kMouseTrackingMouseExited System.Windows.Forms.CarbonInternal.MouseTrackingResult
---@field kMouseTrackingMouseEntered System.Windows.Forms.CarbonInternal.MouseTrackingResult
---@field kMouseTrackingMouseDragged System.Windows.Forms.CarbonInternal.MouseTrackingResult
---@field kMouseTrackingKeyModifiersChanged System.Windows.Forms.CarbonInternal.MouseTrackingResult
---@field kMouseTrackingUserCancelled System.Windows.Forms.CarbonInternal.MouseTrackingResult
---@field kMouseTrackingTimedOut System.Windows.Forms.CarbonInternal.MouseTrackingResult
---@field kMouseTrackingMouseMoved System.Windows.Forms.CarbonInternal.MouseTrackingResult
System.Windows.Forms.CarbonInternal.MouseTrackingResult = {}
---@alias CS.System.Windows.Forms.CarbonInternal.MouseTrackingResult System.Windows.Forms.CarbonInternal.MouseTrackingResult
CS.System.Windows.Forms.CarbonInternal.MouseTrackingResult = System.Windows.Forms.CarbonInternal.MouseTrackingResult


---@class System.Windows.Forms.CarbonInternal.CFStringEncoding
---@field kCFStringEncodingMacRoman System.Windows.Forms.CarbonInternal.CFStringEncoding
---@field kCFStringEncodingWindowsLatin1 System.Windows.Forms.CarbonInternal.CFStringEncoding
---@field kCFStringEncodingISOLatin1 System.Windows.Forms.CarbonInternal.CFStringEncoding
---@field kCFStringEncodingNextStepLatin System.Windows.Forms.CarbonInternal.CFStringEncoding
---@field kCFStringEncodingASCII System.Windows.Forms.CarbonInternal.CFStringEncoding
---@field kCFStringEncodingUnicode System.Windows.Forms.CarbonInternal.CFStringEncoding
---@field kCFStringEncodingUTF8 System.Windows.Forms.CarbonInternal.CFStringEncoding
---@field kCFStringEncodingNonLossyASCII System.Windows.Forms.CarbonInternal.CFStringEncoding
---@field kCFStringEncodingUTF16 System.Windows.Forms.CarbonInternal.CFStringEncoding
---@field kCFStringEncodingUTF16BE System.Windows.Forms.CarbonInternal.CFStringEncoding
---@field kCFStringEncodingUTF16LE System.Windows.Forms.CarbonInternal.CFStringEncoding
---@field kCFStringEncodingUTF32 System.Windows.Forms.CarbonInternal.CFStringEncoding
---@field kCFStringEncodingUTF32BE System.Windows.Forms.CarbonInternal.CFStringEncoding
---@field kCFStringEncodingUTF32LE System.Windows.Forms.CarbonInternal.CFStringEncoding
System.Windows.Forms.CarbonInternal.CFStringEncoding = {}
---@alias CS.System.Windows.Forms.CarbonInternal.CFStringEncoding System.Windows.Forms.CarbonInternal.CFStringEncoding
CS.System.Windows.Forms.CarbonInternal.CFStringEncoding = System.Windows.Forms.CarbonInternal.CFStringEncoding


---@class System.Windows.Forms.CarbonInternal.EventDelegate : System.MulticastDelegate
System.Windows.Forms.CarbonInternal.EventDelegate = {}
---@alias CS.System.Windows.Forms.CarbonInternal.EventDelegate System.Windows.Forms.CarbonInternal.EventDelegate
CS.System.Windows.Forms.CarbonInternal.EventDelegate = System.Windows.Forms.CarbonInternal.EventDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.CarbonInternal.EventDelegate
function System.Windows.Forms.CarbonInternal.EventDelegate.New(object, method) end
---@param callref System.IntPtr
---@param eventref System.IntPtr
---@param user_data System.IntPtr
---@return number
function System.Windows.Forms.CarbonInternal.EventDelegate:Invoke(callref, eventref, user_data) end
---@param callref System.IntPtr
---@param eventref System.IntPtr
---@param user_data System.IntPtr
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Windows.Forms.CarbonInternal.EventDelegate:BeginInvoke(callref, eventref, user_data, callback, object) end
---@param result System.IAsyncResult
---@return number
function System.Windows.Forms.CarbonInternal.EventDelegate:EndInvoke(result) end

---@class System.Windows.Forms.CarbonInternal.EventHandler : System.Object
System.Windows.Forms.CarbonInternal.EventHandler = {}
---@alias CS.System.Windows.Forms.CarbonInternal.EventHandler System.Windows.Forms.CarbonInternal.EventHandler
CS.System.Windows.Forms.CarbonInternal.EventHandler = System.Windows.Forms.CarbonInternal.EventHandler

---@return System.Windows.Forms.CarbonInternal.EventHandler
function System.Windows.Forms.CarbonInternal.EventHandler.New() end

---@class System.Windows.Forms.CarbonInternal.EventHandlerBase : System.Object
System.Windows.Forms.CarbonInternal.EventHandlerBase = {}
---@alias CS.System.Windows.Forms.CarbonInternal.EventHandlerBase System.Windows.Forms.CarbonInternal.EventHandlerBase
CS.System.Windows.Forms.CarbonInternal.EventHandlerBase = System.Windows.Forms.CarbonInternal.EventHandlerBase

---@overload fun() : System.Windows.Forms.CarbonInternal.EventHandlerBase
---@param driver System.Windows.Forms.XplatUICarbon
---@return System.Windows.Forms.CarbonInternal.EventHandlerBase
function System.Windows.Forms.CarbonInternal.EventHandlerBase.New(driver) end

---@class System.Windows.Forms.CarbonInternal.HIObjectHandler : System.Windows.Forms.CarbonInternal.EventHandlerBase
System.Windows.Forms.CarbonInternal.HIObjectHandler = {}
---@alias CS.System.Windows.Forms.CarbonInternal.HIObjectHandler System.Windows.Forms.CarbonInternal.HIObjectHandler
CS.System.Windows.Forms.CarbonInternal.HIObjectHandler = System.Windows.Forms.CarbonInternal.HIObjectHandler

---@param callref System.IntPtr
---@param eventref System.IntPtr
---@param handle System.IntPtr
---@param kind number
---@param ref_msg System.Windows.Forms.MSG
---@return boolean,System.Windows.Forms.MSG
function System.Windows.Forms.CarbonInternal.HIObjectHandler:ProcessEvent(callref, eventref, handle, kind, ref_msg) end

---@class System.Windows.Forms.CarbonInternal.IEventHandler
System.Windows.Forms.CarbonInternal.IEventHandler = {}
---@alias CS.System.Windows.Forms.CarbonInternal.IEventHandler System.Windows.Forms.CarbonInternal.IEventHandler
CS.System.Windows.Forms.CarbonInternal.IEventHandler = System.Windows.Forms.CarbonInternal.IEventHandler

---@param callref System.IntPtr
---@param eventref System.IntPtr
---@param handle System.IntPtr
---@param kind number
---@param ref_msg System.Windows.Forms.MSG
---@return boolean,System.Windows.Forms.MSG
function System.Windows.Forms.CarbonInternal.IEventHandler:ProcessEvent(callref, eventref, handle, kind, ref_msg) end

---@class System.Windows.Forms.CarbonInternal.KeyboardHandler : System.Windows.Forms.CarbonInternal.EventHandlerBase
System.Windows.Forms.CarbonInternal.KeyboardHandler = {}
---@alias CS.System.Windows.Forms.CarbonInternal.KeyboardHandler System.Windows.Forms.CarbonInternal.KeyboardHandler
CS.System.Windows.Forms.CarbonInternal.KeyboardHandler = System.Windows.Forms.CarbonInternal.KeyboardHandler

---@param eventref System.IntPtr
---@param ref_msg System.Windows.Forms.MSG
---@return ,System.Windows.Forms.MSG
function System.Windows.Forms.CarbonInternal.KeyboardHandler:ProcessModifiers(eventref, ref_msg) end
---@param eventref System.IntPtr
---@param ref_msg System.Windows.Forms.MSG
---@return ,System.Windows.Forms.MSG
function System.Windows.Forms.CarbonInternal.KeyboardHandler:ProcessText(eventref, ref_msg) end
---@param eventref System.IntPtr
---@param ref_msg System.Windows.Forms.MSG
---@return ,System.Windows.Forms.MSG
function System.Windows.Forms.CarbonInternal.KeyboardHandler:ProcessKeyPress(eventref, ref_msg) end
---@param callref System.IntPtr
---@param eventref System.IntPtr
---@param handle System.IntPtr
---@param kind number
---@param ref_msg System.Windows.Forms.MSG
---@return boolean,System.Windows.Forms.MSG
function System.Windows.Forms.CarbonInternal.KeyboardHandler:ProcessEvent(callref, eventref, handle, kind, ref_msg) end
---@param ref_msg System.Windows.Forms.MSG
---@return boolean,System.Windows.Forms.MSG
function System.Windows.Forms.CarbonInternal.KeyboardHandler:TranslateMessage(ref_msg) end

---@class System.Windows.Forms.CarbonInternal.KeyboardModifiers
---@field activeFlag System.Windows.Forms.CarbonInternal.KeyboardModifiers
---@field btnState System.Windows.Forms.CarbonInternal.KeyboardModifiers
---@field cmdKey System.Windows.Forms.CarbonInternal.KeyboardModifiers
---@field shiftKey System.Windows.Forms.CarbonInternal.KeyboardModifiers
---@field alphaLock System.Windows.Forms.CarbonInternal.KeyboardModifiers
---@field optionKey System.Windows.Forms.CarbonInternal.KeyboardModifiers
---@field controlKey System.Windows.Forms.CarbonInternal.KeyboardModifiers
---@field rightShiftKey System.Windows.Forms.CarbonInternal.KeyboardModifiers
---@field rightOptionKey System.Windows.Forms.CarbonInternal.KeyboardModifiers
---@field rightControlKey System.Windows.Forms.CarbonInternal.KeyboardModifiers
System.Windows.Forms.CarbonInternal.KeyboardModifiers = {}
---@alias CS.System.Windows.Forms.CarbonInternal.KeyboardModifiers System.Windows.Forms.CarbonInternal.KeyboardModifiers
CS.System.Windows.Forms.CarbonInternal.KeyboardModifiers = System.Windows.Forms.CarbonInternal.KeyboardModifiers


---@class System.Windows.Forms.CarbonInternal.MouseHandler : System.Windows.Forms.CarbonInternal.EventHandlerBase
System.Windows.Forms.CarbonInternal.MouseHandler = {}
---@alias CS.System.Windows.Forms.CarbonInternal.MouseHandler System.Windows.Forms.CarbonInternal.MouseHandler
CS.System.Windows.Forms.CarbonInternal.MouseHandler = System.Windows.Forms.CarbonInternal.MouseHandler

---@param callref System.IntPtr
---@param eventref System.IntPtr
---@param handle System.IntPtr
---@param kind number
---@param ref_msg System.Windows.Forms.MSG
---@return boolean,System.Windows.Forms.MSG
function System.Windows.Forms.CarbonInternal.MouseHandler:ProcessEvent(callref, eventref, handle, kind, ref_msg) end

---@class System.Windows.Forms.CarbonInternal.Pasteboard : System.Object
System.Windows.Forms.CarbonInternal.Pasteboard = {}
---@alias CS.System.Windows.Forms.CarbonInternal.Pasteboard System.Windows.Forms.CarbonInternal.Pasteboard
CS.System.Windows.Forms.CarbonInternal.Pasteboard = System.Windows.Forms.CarbonInternal.Pasteboard

---@return System.Windows.Forms.CarbonInternal.Pasteboard
function System.Windows.Forms.CarbonInternal.Pasteboard.New() end

---@class System.Windows.Forms.CarbonInternal.CGSize : System.ValueType
---@field width number
---@field height number
System.Windows.Forms.CarbonInternal.CGSize = {}
---@alias CS.System.Windows.Forms.CarbonInternal.CGSize System.Windows.Forms.CarbonInternal.CGSize
CS.System.Windows.Forms.CarbonInternal.CGSize = System.Windows.Forms.CarbonInternal.CGSize

---@param w number
---@param h number
---@return System.Windows.Forms.CarbonInternal.CGSize
function System.Windows.Forms.CarbonInternal.CGSize.New(w, h) end

---@class System.Windows.Forms.CarbonInternal.QDPoint : System.ValueType
---@field y number
---@field x number
System.Windows.Forms.CarbonInternal.QDPoint = {}
---@alias CS.System.Windows.Forms.CarbonInternal.QDPoint System.Windows.Forms.CarbonInternal.QDPoint
CS.System.Windows.Forms.CarbonInternal.QDPoint = System.Windows.Forms.CarbonInternal.QDPoint

---@param x number
---@param y number
---@return System.Windows.Forms.CarbonInternal.QDPoint
function System.Windows.Forms.CarbonInternal.QDPoint.New(x, y) end

---@class System.Windows.Forms.CarbonInternal.CGPoint : System.ValueType
---@field x number
---@field y number
System.Windows.Forms.CarbonInternal.CGPoint = {}
---@alias CS.System.Windows.Forms.CarbonInternal.CGPoint System.Windows.Forms.CarbonInternal.CGPoint
CS.System.Windows.Forms.CarbonInternal.CGPoint = System.Windows.Forms.CarbonInternal.CGPoint

---@param x number
---@param y number
---@return System.Windows.Forms.CarbonInternal.CGPoint
function System.Windows.Forms.CarbonInternal.CGPoint.New(x, y) end

---@class System.Windows.Forms.CarbonInternal.HIRect : System.ValueType
---@field origin System.Windows.Forms.CarbonInternal.CGPoint
---@field size System.Windows.Forms.CarbonInternal.CGSize
System.Windows.Forms.CarbonInternal.HIRect = {}
---@alias CS.System.Windows.Forms.CarbonInternal.HIRect System.Windows.Forms.CarbonInternal.HIRect
CS.System.Windows.Forms.CarbonInternal.HIRect = System.Windows.Forms.CarbonInternal.HIRect

---@param x number
---@param y number
---@param w number
---@param h number
---@return System.Windows.Forms.CarbonInternal.HIRect
function System.Windows.Forms.CarbonInternal.HIRect.New(x, y, w, h) end

---@class System.Windows.Forms.CarbonInternal.HIViewID : System.ValueType
---@field type number
---@field id number
System.Windows.Forms.CarbonInternal.HIViewID = {}
---@alias CS.System.Windows.Forms.CarbonInternal.HIViewID System.Windows.Forms.CarbonInternal.HIViewID
CS.System.Windows.Forms.CarbonInternal.HIViewID = System.Windows.Forms.CarbonInternal.HIViewID

---@param type number
---@param id number
---@return System.Windows.Forms.CarbonInternal.HIViewID
function System.Windows.Forms.CarbonInternal.HIViewID.New(type, id) end

---@class System.Windows.Forms.CarbonInternal.EventTypeSpec : System.ValueType
---@field eventClass number
---@field eventKind number
System.Windows.Forms.CarbonInternal.EventTypeSpec = {}
---@alias CS.System.Windows.Forms.CarbonInternal.EventTypeSpec System.Windows.Forms.CarbonInternal.EventTypeSpec
CS.System.Windows.Forms.CarbonInternal.EventTypeSpec = System.Windows.Forms.CarbonInternal.EventTypeSpec

---@param eventClass number
---@param eventKind number
---@return System.Windows.Forms.CarbonInternal.EventTypeSpec
function System.Windows.Forms.CarbonInternal.EventTypeSpec.New(eventClass, eventKind) end

---@class System.Windows.Forms.CarbonInternal.CarbonEvent : System.ValueType
---@field hWnd System.IntPtr
---@field evt System.IntPtr
System.Windows.Forms.CarbonInternal.CarbonEvent = {}
---@alias CS.System.Windows.Forms.CarbonInternal.CarbonEvent System.Windows.Forms.CarbonInternal.CarbonEvent
CS.System.Windows.Forms.CarbonInternal.CarbonEvent = System.Windows.Forms.CarbonInternal.CarbonEvent

---@param hWnd System.IntPtr
---@param evt System.IntPtr
---@return System.Windows.Forms.CarbonInternal.CarbonEvent
function System.Windows.Forms.CarbonInternal.CarbonEvent.New(hWnd, evt) end

---@class System.Windows.Forms.CarbonInternal.RGBColor : System.ValueType
---@field red number
---@field green number
---@field blue number
System.Windows.Forms.CarbonInternal.RGBColor = {}
---@alias CS.System.Windows.Forms.CarbonInternal.RGBColor System.Windows.Forms.CarbonInternal.RGBColor
CS.System.Windows.Forms.CarbonInternal.RGBColor = System.Windows.Forms.CarbonInternal.RGBColor


---@class System.Windows.Forms.CarbonInternal.Rect : System.ValueType
---@field top number
---@field left number
---@field bottom number
---@field right number
System.Windows.Forms.CarbonInternal.Rect = {}
---@alias CS.System.Windows.Forms.CarbonInternal.Rect System.Windows.Forms.CarbonInternal.Rect
CS.System.Windows.Forms.CarbonInternal.Rect = System.Windows.Forms.CarbonInternal.Rect


---@class System.Windows.Forms.CarbonInternal.Caret : System.ValueType
System.Windows.Forms.CarbonInternal.Caret = {}
---@alias CS.System.Windows.Forms.CarbonInternal.Caret System.Windows.Forms.CarbonInternal.Caret
CS.System.Windows.Forms.CarbonInternal.Caret = System.Windows.Forms.CarbonInternal.Caret


---@class System.Windows.Forms.CarbonInternal.Hover : System.ValueType
System.Windows.Forms.CarbonInternal.Hover = {}
---@alias CS.System.Windows.Forms.CarbonInternal.Hover System.Windows.Forms.CarbonInternal.Hover
CS.System.Windows.Forms.CarbonInternal.Hover = System.Windows.Forms.CarbonInternal.Hover


---@class System.Windows.Forms.CarbonInternal.CGAffineTransform : System.ValueType
System.Windows.Forms.CarbonInternal.CGAffineTransform = {}
---@alias CS.System.Windows.Forms.CarbonInternal.CGAffineTransform System.Windows.Forms.CarbonInternal.CGAffineTransform
CS.System.Windows.Forms.CarbonInternal.CGAffineTransform = System.Windows.Forms.CarbonInternal.CGAffineTransform


---@class System.Windows.Forms.CarbonInternal.MouseTrackingRegionID : System.ValueType
---@field signature number
---@field id number
System.Windows.Forms.CarbonInternal.MouseTrackingRegionID = {}
---@alias CS.System.Windows.Forms.CarbonInternal.MouseTrackingRegionID System.Windows.Forms.CarbonInternal.MouseTrackingRegionID
CS.System.Windows.Forms.CarbonInternal.MouseTrackingRegionID = System.Windows.Forms.CarbonInternal.MouseTrackingRegionID

---@param signature number
---@param id number
---@return System.Windows.Forms.CarbonInternal.MouseTrackingRegionID
function System.Windows.Forms.CarbonInternal.MouseTrackingRegionID.New(signature, id) end

---@class System.Windows.Forms.CarbonInternal.ProcessSerialNumber : System.ValueType
---@field highLongOfPSN number
---@field lowLongOfPSN number
System.Windows.Forms.CarbonInternal.ProcessSerialNumber = {}
---@alias CS.System.Windows.Forms.CarbonInternal.ProcessSerialNumber System.Windows.Forms.CarbonInternal.ProcessSerialNumber
CS.System.Windows.Forms.CarbonInternal.ProcessSerialNumber = System.Windows.Forms.CarbonInternal.ProcessSerialNumber


---@class System.Windows.Forms.CarbonInternal.WindowHandler : System.Windows.Forms.CarbonInternal.EventHandlerBase
System.Windows.Forms.CarbonInternal.WindowHandler = {}
---@alias CS.System.Windows.Forms.CarbonInternal.WindowHandler System.Windows.Forms.CarbonInternal.WindowHandler
CS.System.Windows.Forms.CarbonInternal.WindowHandler = System.Windows.Forms.CarbonInternal.WindowHandler

---@param callref System.IntPtr
---@param eventref System.IntPtr
---@param handle System.IntPtr
---@param kind number
---@param ref_msg System.Windows.Forms.MSG
---@return boolean,System.Windows.Forms.MSG
function System.Windows.Forms.CarbonInternal.WindowHandler:ProcessEvent(callref, eventref, handle, kind, ref_msg) end

---@class System.Windows.Forms.Automation.AutomationNotificationKind
---@field ActionAborted System.Windows.Forms.Automation.AutomationNotificationKind
---@field ActionCompleted System.Windows.Forms.Automation.AutomationNotificationKind
---@field ItemAdded System.Windows.Forms.Automation.AutomationNotificationKind
---@field ItemRemoved System.Windows.Forms.Automation.AutomationNotificationKind
---@field Other System.Windows.Forms.Automation.AutomationNotificationKind
System.Windows.Forms.Automation.AutomationNotificationKind = {}
---@alias CS.System.Windows.Forms.Automation.AutomationNotificationKind System.Windows.Forms.Automation.AutomationNotificationKind
CS.System.Windows.Forms.Automation.AutomationNotificationKind = System.Windows.Forms.Automation.AutomationNotificationKind


---@class System.Windows.Forms.Automation.AutomationNotificationProcessing
---@field All System.Windows.Forms.Automation.AutomationNotificationProcessing
---@field CurrentThenMostRecent System.Windows.Forms.Automation.AutomationNotificationProcessing
---@field ImportantAll System.Windows.Forms.Automation.AutomationNotificationProcessing
---@field ImportantMostRecent System.Windows.Forms.Automation.AutomationNotificationProcessing
---@field MostRecent System.Windows.Forms.Automation.AutomationNotificationProcessing
System.Windows.Forms.Automation.AutomationNotificationProcessing = {}
---@alias CS.System.Windows.Forms.Automation.AutomationNotificationProcessing System.Windows.Forms.Automation.AutomationNotificationProcessing
CS.System.Windows.Forms.Automation.AutomationNotificationProcessing = System.Windows.Forms.Automation.AutomationNotificationProcessing


---@class System.Windows.Forms.DpiChangedEventHandler : System.MulticastDelegate
System.Windows.Forms.DpiChangedEventHandler = {}
---@alias CS.System.Windows.Forms.DpiChangedEventHandler System.Windows.Forms.DpiChangedEventHandler
CS.System.Windows.Forms.DpiChangedEventHandler = System.Windows.Forms.DpiChangedEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Windows.Forms.DpiChangedEventHandler
function System.Windows.Forms.DpiChangedEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Windows.Forms.DpiChangedEventArgs
function System.Windows.Forms.DpiChangedEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Windows.Forms.DpiChangedEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Windows.Forms.DpiChangedEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Windows.Forms.DpiChangedEventHandler:EndInvoke(result) end

---@class System.Windows.Forms.DpiChangedEventArgs : System.ComponentModel.CancelEventArgs
---@field DeviceDpiNew number
---@field DeviceDpiOld number
---@field SuggestedRectangle System.Drawing.Rectangle
System.Windows.Forms.DpiChangedEventArgs = {}
---@alias CS.System.Windows.Forms.DpiChangedEventArgs System.Windows.Forms.DpiChangedEventArgs
CS.System.Windows.Forms.DpiChangedEventArgs = System.Windows.Forms.DpiChangedEventArgs


---@class System.Windows.Forms.Automation.AutomationLiveSetting
---@field Assertive System.Windows.Forms.Automation.AutomationLiveSetting
---@field Off System.Windows.Forms.Automation.AutomationLiveSetting
---@field Polite System.Windows.Forms.Automation.AutomationLiveSetting
System.Windows.Forms.Automation.AutomationLiveSetting = {}
---@alias CS.System.Windows.Forms.Automation.AutomationLiveSetting System.Windows.Forms.Automation.AutomationLiveSetting
CS.System.Windows.Forms.Automation.AutomationLiveSetting = System.Windows.Forms.Automation.AutomationLiveSetting


---@class System.Windows.Forms.Automation.IAutomationLiveRegion
---@field LiveSetting System.Windows.Forms.Automation.AutomationLiveSetting
System.Windows.Forms.Automation.IAutomationLiveRegion = {}
---@alias CS.System.Windows.Forms.Automation.IAutomationLiveRegion System.Windows.Forms.Automation.IAutomationLiveRegion
CS.System.Windows.Forms.Automation.IAutomationLiveRegion = System.Windows.Forms.Automation.IAutomationLiveRegion


---@class System.Windows.Forms.ImeContext : System.Object
System.Windows.Forms.ImeContext = {}
---@alias CS.System.Windows.Forms.ImeContext System.Windows.Forms.ImeContext
CS.System.Windows.Forms.ImeContext = System.Windows.Forms.ImeContext

---@param handle System.IntPtr
function System.Windows.Forms.ImeContext.Disable(handle) end
---@param handle System.IntPtr
function System.Windows.Forms.ImeContext.Enable(handle) end
---@param handle System.IntPtr
---@return System.Windows.Forms.ImeMode
function System.Windows.Forms.ImeContext.GetImeMode(handle) end
---@param handle System.IntPtr
---@return boolean
function System.Windows.Forms.ImeContext.IsOpen(handle) end
---@param imeMode System.Windows.Forms.ImeMode
---@param handle System.IntPtr
function System.Windows.Forms.ImeContext.SetImeStatus(imeMode, handle) end
---@param open boolean
---@param handle System.IntPtr
function System.Windows.Forms.ImeContext.SetOpenStatus(open, handle) end

---@class System.Windows.Forms.ImeModeConversion : System.ValueType
---@field ImeModeConversionBits System.Collections.Generic.Dictionary
---@field IsCurrentConversionTableSupported boolean
System.Windows.Forms.ImeModeConversion = {}
---@alias CS.System.Windows.Forms.ImeModeConversion System.Windows.Forms.ImeModeConversion
CS.System.Windows.Forms.ImeModeConversion = System.Windows.Forms.ImeModeConversion


---@class Consts : System.Object
---@field MonoCorlibVersion string
---@field MonoVersion string
---@field MonoCompany string
---@field MonoProduct string
---@field MonoCopyright string
---@field FxVersion string
---@field FxFileVersion string
---@field EnvironmentVersion string
---@field VsVersion string
---@field VsFileVersion string
---@field AssemblyI18N string
---@field AssemblyMicrosoft_JScript string
---@field AssemblyMicrosoft_VisualStudio string
---@field AssemblyMicrosoft_VisualStudio_Web string
---@field AssemblyMicrosoft_VSDesigner string
---@field AssemblyMono_Http string
---@field AssemblyMono_Posix string
---@field AssemblyMono_Security string
---@field AssemblyMono_Messaging_RabbitMQ string
---@field AssemblyCorlib string
---@field AssemblySystem string
---@field AssemblySystem_Data string
---@field AssemblySystem_Design string
---@field AssemblySystem_DirectoryServices string
---@field AssemblySystem_Drawing string
---@field AssemblySystem_Drawing_Design string
---@field AssemblySystem_Messaging string
---@field AssemblySystem_Security string
---@field AssemblySystem_ServiceProcess string
---@field AssemblySystem_Web string
---@field AssemblySystem_Windows_Forms string
---@field AssemblySystem_2_0 string
---@field AssemblySystemCore_3_5 string
---@field AssemblySystem_Core string
---@field WindowsBase_3_0 string
---@field AssemblyWindowsBase string
---@field AssemblyPresentationCore_3_5 string
---@field AssemblyPresentationCore_4_0 string
---@field AssemblyPresentationFramework_3_5 string
---@field AssemblySystemServiceModel_3_0 string
Consts = {}
---@alias CS.Consts Consts
CS.Consts = Consts


---@class IAccessibleHandler
IAccessibleHandler = {}
---@alias CS.IAccessibleHandler IAccessibleHandler
CS.IAccessibleHandler = IAccessibleHandler


---@class Consts : System.Object
---@field MonoCorlibVersion string
---@field MonoVersion string
---@field MonoCompany string
---@field MonoProduct string
---@field MonoCopyright string
---@field FxVersion string
---@field FxFileVersion string
---@field EnvironmentVersion string
---@field VsVersion string
---@field VsFileVersion string
---@field AssemblyI18N string
---@field AssemblyMicrosoft_JScript string
---@field AssemblyMicrosoft_VisualStudio string
---@field AssemblyMicrosoft_VisualStudio_Web string
---@field AssemblyMicrosoft_VSDesigner string
---@field AssemblyMono_Http string
---@field AssemblyMono_Posix string
---@field AssemblyMono_Security string
---@field AssemblyMono_Messaging_RabbitMQ string
---@field AssemblyCorlib string
---@field AssemblySystem string
---@field AssemblySystem_Data string
---@field AssemblySystem_Design string
---@field AssemblySystem_DirectoryServices string
---@field AssemblySystem_Drawing string
---@field AssemblySystem_Drawing_Design string
---@field AssemblySystem_Messaging string
---@field AssemblySystem_Security string
---@field AssemblySystem_ServiceProcess string
---@field AssemblySystem_Web string
---@field AssemblySystem_Windows_Forms string
---@field AssemblySystem_2_0 string
---@field AssemblySystemCore_3_5 string
---@field AssemblySystem_Core string
---@field WindowsBase_3_0 string
---@field AssemblyWindowsBase string
---@field AssemblyPresentationCore_3_5 string
---@field AssemblyPresentationCore_4_0 string
---@field AssemblyPresentationFramework_3_5 string
---@field AssemblySystemServiceModel_3_0 string
Consts = {}
---@alias CS.Consts Consts
CS.Consts = Consts


---@class Locale : System.Object
Locale = {}
---@alias CS.Locale Locale
CS.Locale = Locale

---@overload fun(msg: string) : string
---@param fmt string
---@param args System.Object[]
---@return string
function Locale.GetText(fmt, args) end

---@class System.MonoTODOAttribute : System.Attribute
---@field Comment string
System.MonoTODOAttribute = {}
---@alias CS.System.MonoTODOAttribute System.MonoTODOAttribute
CS.System.MonoTODOAttribute = System.MonoTODOAttribute

---@overload fun() : System.MonoTODOAttribute
---@param comment string
---@return System.MonoTODOAttribute
function System.MonoTODOAttribute.New(comment) end

---@class System.MonoDocumentationNoteAttribute : System.MonoTODOAttribute
System.MonoDocumentationNoteAttribute = {}
---@alias CS.System.MonoDocumentationNoteAttribute System.MonoDocumentationNoteAttribute
CS.System.MonoDocumentationNoteAttribute = System.MonoDocumentationNoteAttribute

---@param comment string
---@return System.MonoDocumentationNoteAttribute
function System.MonoDocumentationNoteAttribute.New(comment) end

---@class System.MonoExtensionAttribute : System.MonoTODOAttribute
System.MonoExtensionAttribute = {}
---@alias CS.System.MonoExtensionAttribute System.MonoExtensionAttribute
CS.System.MonoExtensionAttribute = System.MonoExtensionAttribute

---@param comment string
---@return System.MonoExtensionAttribute
function System.MonoExtensionAttribute.New(comment) end

---@class System.MonoInternalNoteAttribute : System.MonoTODOAttribute
System.MonoInternalNoteAttribute = {}
---@alias CS.System.MonoInternalNoteAttribute System.MonoInternalNoteAttribute
CS.System.MonoInternalNoteAttribute = System.MonoInternalNoteAttribute

---@param comment string
---@return System.MonoInternalNoteAttribute
function System.MonoInternalNoteAttribute.New(comment) end

---@class System.MonoLimitationAttribute : System.MonoTODOAttribute
System.MonoLimitationAttribute = {}
---@alias CS.System.MonoLimitationAttribute System.MonoLimitationAttribute
CS.System.MonoLimitationAttribute = System.MonoLimitationAttribute

---@param comment string
---@return System.MonoLimitationAttribute
function System.MonoLimitationAttribute.New(comment) end

---@class System.MonoNotSupportedAttribute : System.MonoTODOAttribute
System.MonoNotSupportedAttribute = {}
---@alias CS.System.MonoNotSupportedAttribute System.MonoNotSupportedAttribute
CS.System.MonoNotSupportedAttribute = System.MonoNotSupportedAttribute

---@param comment string
---@return System.MonoNotSupportedAttribute
function System.MonoNotSupportedAttribute.New(comment) end

---@class System.Drawing.Design.BitmapEditor : System.Drawing.Design.ImageEditor
System.Drawing.Design.BitmapEditor = {}
---@alias CS.System.Drawing.Design.BitmapEditor System.Drawing.Design.BitmapEditor
CS.System.Drawing.Design.BitmapEditor = System.Drawing.Design.BitmapEditor

---@return System.Drawing.Design.BitmapEditor
function System.Drawing.Design.BitmapEditor.New() end

---@class System.Drawing.Design.ColorEditor : System.Drawing.Design.UITypeEditor
System.Drawing.Design.ColorEditor = {}
---@alias CS.System.Drawing.Design.ColorEditor System.Drawing.Design.ColorEditor
CS.System.Drawing.Design.ColorEditor = System.Drawing.Design.ColorEditor

---@return System.Drawing.Design.ColorEditor
function System.Drawing.Design.ColorEditor.New() end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param provider System.IServiceProvider
---@param value System.Object
---@return System.Object
function System.Drawing.Design.ColorEditor:EditValue(context, provider, value) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return System.Drawing.Design.UITypeEditorEditStyle
function System.Drawing.Design.ColorEditor:GetEditStyle(context) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return boolean
function System.Drawing.Design.ColorEditor:GetPaintValueSupported(context) end
---@param e System.Drawing.Design.PaintValueEventArgs
function System.Drawing.Design.ColorEditor:PaintValue(e) end

---@class System.Drawing.Design.ColorEditor.ColorListBox : System.Windows.Forms.ListBox
System.Drawing.Design.ColorEditor.ColorListBox = {}
---@alias CS.System.Drawing.Design.ColorEditor.ColorListBox System.Drawing.Design.ColorEditor.ColorListBox
CS.System.Drawing.Design.ColorEditor.ColorListBox = System.Drawing.Design.ColorEditor.ColorListBox

---@return System.Drawing.Design.ColorEditor.ColorListBox
function System.Drawing.Design.ColorEditor.ColorListBox.New() end

---@class System.Drawing.Design.ColorEditor.SystemColorCompare : System.Object
System.Drawing.Design.ColorEditor.SystemColorCompare = {}
---@alias CS.System.Drawing.Design.ColorEditor.SystemColorCompare System.Drawing.Design.ColorEditor.SystemColorCompare
CS.System.Drawing.Design.ColorEditor.SystemColorCompare = System.Drawing.Design.ColorEditor.SystemColorCompare

---@return System.Drawing.Design.ColorEditor.SystemColorCompare
function System.Drawing.Design.ColorEditor.SystemColorCompare.New() end
---@param x System.Object
---@param y System.Object
---@return number
function System.Drawing.Design.ColorEditor.SystemColorCompare:Compare(x, y) end

---@class System.Drawing.Design.ColorEditor.WebColorCompare : System.Object
System.Drawing.Design.ColorEditor.WebColorCompare = {}
---@alias CS.System.Drawing.Design.ColorEditor.WebColorCompare System.Drawing.Design.ColorEditor.WebColorCompare
CS.System.Drawing.Design.ColorEditor.WebColorCompare = System.Drawing.Design.ColorEditor.WebColorCompare

---@return System.Drawing.Design.ColorEditor.WebColorCompare
function System.Drawing.Design.ColorEditor.WebColorCompare.New() end
---@param x System.Object
---@param y System.Object
---@return number
function System.Drawing.Design.ColorEditor.WebColorCompare:Compare(x, y) end

---@class System.Drawing.Design.ColorEditor.CustomColorPicker : System.Windows.Forms.UserControl
System.Drawing.Design.ColorEditor.CustomColorPicker = {}
---@alias CS.System.Drawing.Design.ColorEditor.CustomColorPicker System.Drawing.Design.ColorEditor.CustomColorPicker
CS.System.Drawing.Design.ColorEditor.CustomColorPicker = System.Drawing.Design.ColorEditor.CustomColorPicker

---@return System.Drawing.Design.ColorEditor.CustomColorPicker
function System.Drawing.Design.ColorEditor.CustomColorPicker.New() end

---@class System.Drawing.Design.ContentAlignmentEditor : System.Drawing.Design.UITypeEditor
System.Drawing.Design.ContentAlignmentEditor = {}
---@alias CS.System.Drawing.Design.ContentAlignmentEditor System.Drawing.Design.ContentAlignmentEditor
CS.System.Drawing.Design.ContentAlignmentEditor = System.Drawing.Design.ContentAlignmentEditor

---@return System.Drawing.Design.ContentAlignmentEditor
function System.Drawing.Design.ContentAlignmentEditor.New() end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param provider System.IServiceProvider
---@param value System.Object
---@return System.Object
function System.Drawing.Design.ContentAlignmentEditor:EditValue(context, provider, value) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return System.Drawing.Design.UITypeEditorEditStyle
function System.Drawing.Design.ContentAlignmentEditor:GetEditStyle(context) end

---@class System.Drawing.Design.ContentAlignmentEditor.AlignmentUI : System.Windows.Forms.ListBox
---@field Value System.Object
System.Drawing.Design.ContentAlignmentEditor.AlignmentUI = {}
---@alias CS.System.Drawing.Design.ContentAlignmentEditor.AlignmentUI System.Drawing.Design.ContentAlignmentEditor.AlignmentUI
CS.System.Drawing.Design.ContentAlignmentEditor.AlignmentUI = System.Drawing.Design.ContentAlignmentEditor.AlignmentUI

---@param host System.Drawing.Design.UITypeEditor
---@param service System.Windows.Forms.Design.IWindowsFormsEditorService
---@param value System.Object
---@return System.Drawing.Design.ContentAlignmentEditor.AlignmentUI
function System.Drawing.Design.ContentAlignmentEditor.AlignmentUI.New(host, service, value) end

---@class System.Drawing.Design.CursorEditor : System.Drawing.Design.UITypeEditor
---@field IsDropDownResizable boolean
System.Drawing.Design.CursorEditor = {}
---@alias CS.System.Drawing.Design.CursorEditor System.Drawing.Design.CursorEditor
CS.System.Drawing.Design.CursorEditor = System.Drawing.Design.CursorEditor

---@return System.Drawing.Design.CursorEditor
function System.Drawing.Design.CursorEditor.New() end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param provider System.IServiceProvider
---@param value System.Object
---@return System.Object
function System.Drawing.Design.CursorEditor:EditValue(context, provider, value) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return System.Drawing.Design.UITypeEditorEditStyle
function System.Drawing.Design.CursorEditor:GetEditStyle(context) end

---@class System.Drawing.Design.CursorEditor.CursorUI : System.Windows.Forms.ListBox
---@field Value System.Object
System.Drawing.Design.CursorEditor.CursorUI = {}
---@alias CS.System.Drawing.Design.CursorEditor.CursorUI System.Drawing.Design.CursorEditor.CursorUI
CS.System.Drawing.Design.CursorEditor.CursorUI = System.Drawing.Design.CursorEditor.CursorUI

---@param host System.Drawing.Design.UITypeEditor
---@param service System.Windows.Forms.Design.IWindowsFormsEditorService
---@param value System.Object
---@return System.Drawing.Design.CursorEditor.CursorUI
function System.Drawing.Design.CursorEditor.CursorUI.New(host, service, value) end

---@class System.Drawing.Design.FontEditor : System.Drawing.Design.UITypeEditor
System.Drawing.Design.FontEditor = {}
---@alias CS.System.Drawing.Design.FontEditor System.Drawing.Design.FontEditor
CS.System.Drawing.Design.FontEditor = System.Drawing.Design.FontEditor

---@return System.Drawing.Design.FontEditor
function System.Drawing.Design.FontEditor.New() end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param provider System.IServiceProvider
---@param value System.Object
---@return System.Object
function System.Drawing.Design.FontEditor:EditValue(context, provider, value) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return System.Drawing.Design.UITypeEditorEditStyle
function System.Drawing.Design.FontEditor:GetEditStyle(context) end

---@class System.Drawing.Design.FontNameEditor : System.Drawing.Design.UITypeEditor
System.Drawing.Design.FontNameEditor = {}
---@alias CS.System.Drawing.Design.FontNameEditor System.Drawing.Design.FontNameEditor
CS.System.Drawing.Design.FontNameEditor = System.Drawing.Design.FontNameEditor

---@return System.Drawing.Design.FontNameEditor
function System.Drawing.Design.FontNameEditor.New() end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return boolean
function System.Drawing.Design.FontNameEditor:GetPaintValueSupported(context) end
---@param e System.Drawing.Design.PaintValueEventArgs
function System.Drawing.Design.FontNameEditor:PaintValue(e) end

---@class System.Drawing.Design.IconEditor : System.Drawing.Design.UITypeEditor
System.Drawing.Design.IconEditor = {}
---@alias CS.System.Drawing.Design.IconEditor System.Drawing.Design.IconEditor
CS.System.Drawing.Design.IconEditor = System.Drawing.Design.IconEditor

---@return System.Drawing.Design.IconEditor
function System.Drawing.Design.IconEditor.New() end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param provider System.IServiceProvider
---@param value System.Object
---@return System.Object
function System.Drawing.Design.IconEditor:EditValue(context, provider, value) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return System.Drawing.Design.UITypeEditorEditStyle
function System.Drawing.Design.IconEditor:GetEditStyle(context) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return boolean
function System.Drawing.Design.IconEditor:GetPaintValueSupported(context) end
---@param e System.Drawing.Design.PaintValueEventArgs
function System.Drawing.Design.IconEditor:PaintValue(e) end

---@class System.Drawing.Design.ImageEditor : System.Drawing.Design.UITypeEditor
System.Drawing.Design.ImageEditor = {}
---@alias CS.System.Drawing.Design.ImageEditor System.Drawing.Design.ImageEditor
CS.System.Drawing.Design.ImageEditor = System.Drawing.Design.ImageEditor

---@return System.Drawing.Design.ImageEditor
function System.Drawing.Design.ImageEditor.New() end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param provider System.IServiceProvider
---@param value System.Object
---@return System.Object
function System.Drawing.Design.ImageEditor:EditValue(context, provider, value) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return System.Drawing.Design.UITypeEditorEditStyle
function System.Drawing.Design.ImageEditor:GetEditStyle(context) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return boolean
function System.Drawing.Design.ImageEditor:GetPaintValueSupported(context) end
---@param e System.Drawing.Design.PaintValueEventArgs
function System.Drawing.Design.ImageEditor:PaintValue(e) end

---@class System.Drawing.Design.MetafileEditor : System.Drawing.Design.ImageEditor
System.Drawing.Design.MetafileEditor = {}
---@alias CS.System.Drawing.Design.MetafileEditor System.Drawing.Design.MetafileEditor
CS.System.Drawing.Design.MetafileEditor = System.Drawing.Design.MetafileEditor

---@return System.Drawing.Design.MetafileEditor
function System.Drawing.Design.MetafileEditor.New() end

---@class System.Drawing.Design.ToolboxItemContainer : System.Object
---@field IsCreated boolean
---@field IsTransient boolean
---@field ToolboxData System.Windows.Forms.IDataObject
System.Drawing.Design.ToolboxItemContainer = {}
---@alias CS.System.Drawing.Design.ToolboxItemContainer System.Drawing.Design.ToolboxItemContainer
CS.System.Drawing.Design.ToolboxItemContainer = System.Drawing.Design.ToolboxItemContainer

---@overload fun(data: System.Windows.Forms.IDataObject) : System.Drawing.Design.ToolboxItemContainer
---@param item System.Drawing.Design.ToolboxItem
---@return System.Drawing.Design.ToolboxItemContainer
function System.Drawing.Design.ToolboxItemContainer.New(item) end
---@param obj System.Object
---@return boolean
function System.Drawing.Design.ToolboxItemContainer:Equals(obj) end
---@return number
function System.Drawing.Design.ToolboxItemContainer:GetHashCode() end
---@param creators System.Collections.ICollection
---@return System.Collections.ICollection
function System.Drawing.Design.ToolboxItemContainer:GetFilter(creators) end
---@param creators System.Collections.ICollection
---@return System.Drawing.Design.ToolboxItem
function System.Drawing.Design.ToolboxItemContainer:GetToolboxItem(creators) end
---@param item System.Drawing.Design.ToolboxItem
function System.Drawing.Design.ToolboxItemContainer:UpdateFilter(item) end

---@class System.Drawing.Design.ToolboxItemCreator : System.Object
---@field Format string
System.Drawing.Design.ToolboxItemCreator = {}
---@alias CS.System.Drawing.Design.ToolboxItemCreator System.Drawing.Design.ToolboxItemCreator
CS.System.Drawing.Design.ToolboxItemCreator = System.Drawing.Design.ToolboxItemCreator

---@param data System.Windows.Forms.IDataObject
---@return System.Drawing.Design.ToolboxItem
function System.Drawing.Design.ToolboxItemCreator:Create(data) end

---@class System.Drawing.Design.ToolboxService : System.Object
System.Drawing.Design.ToolboxService = {}
---@alias CS.System.Drawing.Design.ToolboxService System.Drawing.Design.ToolboxService
CS.System.Drawing.Design.ToolboxService = System.Drawing.Design.ToolboxService

function System.Drawing.Design.ToolboxService.UnloadToolboxItems() end
---@overload fun(toolType: System.Type) : System.Drawing.Design.ToolboxItem
---@param toolType System.Type
---@param nonPublic boolean
---@return System.Drawing.Design.ToolboxItem
function System.Drawing.Design.ToolboxService.GetToolboxItem(toolType, nonPublic) end
---@overload fun(an: System.Reflection.AssemblyName) : System.Collections.ICollection
---@overload fun(an: System.Reflection.AssemblyName, throwOnError: boolean) : System.Collections.ICollection
---@overload fun(a: System.Reflection.Assembly, newCodeBase: string) : System.Collections.ICollection
---@param a System.Reflection.Assembly
---@param newCodeBase string
---@param throwOnError boolean
---@return System.Collections.ICollection
function System.Drawing.Design.ToolboxService.GetToolboxItems(a, newCodeBase, throwOnError) end

---@class Consts : System.Object
---@field MonoCorlibVersion string
---@field MonoVersion string
---@field MonoCompany string
---@field MonoProduct string
---@field MonoCopyright string
---@field FxVersion string
---@field FxFileVersion string
---@field EnvironmentVersion string
---@field VsVersion string
---@field VsFileVersion string
---@field AssemblyI18N string
---@field AssemblyMicrosoft_JScript string
---@field AssemblyMicrosoft_VisualStudio string
---@field AssemblyMicrosoft_VisualStudio_Web string
---@field AssemblyMicrosoft_VSDesigner string
---@field AssemblyMono_Http string
---@field AssemblyMono_Posix string
---@field AssemblyMono_Security string
---@field AssemblyMono_Messaging_RabbitMQ string
---@field AssemblyCorlib string
---@field AssemblySystem string
---@field AssemblySystem_Data string
---@field AssemblySystem_Design string
---@field AssemblySystem_DirectoryServices string
---@field AssemblySystem_Drawing string
---@field AssemblySystem_Drawing_Design string
---@field AssemblySystem_Messaging string
---@field AssemblySystem_Security string
---@field AssemblySystem_ServiceProcess string
---@field AssemblySystem_Web string
---@field AssemblySystem_Windows_Forms string
---@field AssemblySystem_2_0 string
---@field AssemblySystemCore_3_5 string
---@field AssemblySystem_Core string
---@field WindowsBase_3_0 string
---@field AssemblyWindowsBase string
---@field AssemblyPresentationCore_3_5 string
---@field AssemblyPresentationCore_4_0 string
---@field AssemblyPresentationFramework_3_5 string
---@field AssemblySystemServiceModel_3_0 string
Consts = {}
---@alias CS.Consts Consts
CS.Consts = Consts



