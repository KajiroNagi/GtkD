/*
 * This file is part of dui.
 * 
 * dui is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * dui is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with dui; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

/*
 * - automatically generated by gtk2dui (dAntE)
 * - pos-processed by Antonio Monteiro
 */

module dui.ToggleToolButton;

private import def.Types;
private import def.Constants;

private import dui.ToolButton;
private import dui.ToolItem;

private struct GtkToggleToolButton;


private:
extern(C)
{
	GtkToolItem* gtk_toggle_tool_button_new     ();
	GtkToolItem* gtk_toggle_tool_button_new_from_stock(  gchar *stock_id);
	void        gtk_toggle_tool_button_set_active(GtkToggleToolButton *button,gboolean is_active);
	gboolean    gtk_toggle_tool_button_get_active(GtkToggleToolButton *button);
}

/**
 * A GtkToggleToolButton is a GtkToolItem that contains a toggle button. Use
 * gtk_toggle_tool_button_new() to create a new GtkToggleToolButton. Use
 * gtk_toggle_tool_button_new_from_stock() to create a new GtkToggleToolButton
 * containing a stock item.
 */
public
class ToggleToolButton : ToolButton
{

	protected:

	GtkToggleToolButton* gtkToggleToolButton;

	public:

	/**
	 * Creates a ToggleToolButton from a GtkToggleToolButton
	 * @param *gtkToggleToolButton the gtk struct address pointer
	 * @return 
	 */
    this(GtkToggleToolButton* gtkToggleToolButton)
    {
        super(cast(GtkToolButton*)gtkToggleToolButton);
		this.gtkToggleToolButton = gtkToggleToolButton;
    }


	/**
	 * Returns a new GtkToggleToolButton
	 * @return a newly created GtkToggleToolButton
	 */
	this()
	{
		this(cast(GtkToggleToolButton*)gtk_toggle_tool_button_new());
	}


	/**
	 * Creates a new GtkToggleToolButton containing the image and text from a stock item. Some stock ids have
	 * preprocessor macros like GTK_STOCK_OK and GTK_STOCK_APPLY.<br>
	 * It is an error if stock_id is not a name of a stock item.
	 * @param stock_id\ufffd the name of the stock item
	 * @return A new GtkToggleToolButton
	 */
	this(String  stockID)
	{
		this(cast(GtkToggleToolButton*)gtk_toggle_tool_button_new_from_stock(stockID.toStringz()));
	}


	/**
	 * Sets the status of the toggle tool button. Set to TRUE if you want the GtkToggleButton to be 'pressed in', and
	 * FALSE to raise it. This action causes the toggled signal to be emitted.
	 * @param button\ufffd a GtkToggleToolButton
	 * @param is_active\ufffd whether button should be active
	 */
	void setActive(bit is_active)
	{
		gtk_toggle_tool_button_set_active(gtkToggleToolButton, is_active);
	}


	/**
	 * Queries a GtkToggleToolButton and returns its current state. Returns TRUE if the toggle button is pressed in
	 * and FALSE if it is raised.
	 * @param button\ufffd a GtkToggleToolButton
	 * @return TRUE if the toggle tool button is pressed in, FALSE if not
	 */
	bit getActive()
	{
		return gtk_toggle_tool_button_get_active(gtkToggleToolButton) == 0 ? false : true;
	}


}


/+
gtk_toggle_tool_button_new ()

GtkToolItem* gtk_toggle_tool_button_new     (void);

Returns a new GtkToggleToolButton

Returns\ufffd:	a newly created GtkToggleToolButton

Since 2.4
gtk_toggle_tool_button_new_from_stock ()

GtkToolItem* gtk_toggle_tool_button_new_from_stock
                                            (const gchar *stock_id);

Creates a new GtkToggleToolButton containing the image and text from a stock item. Some stock ids have preprocessor macros like GTK_STOCK_OK and GTK_STOCK_APPLY.

It is an error if stock_id is not a name of a stock item.

stock_id\ufffd:	the name of the stock item
Returns\ufffd:	A new GtkToggleToolButton

Since 2.4
gtk_toggle_tool_button_set_active ()

void        gtk_toggle_tool_button_set_active
                                            (GtkToggleToolButton *button,
                                             gboolean is_active);

Sets the status of the toggle tool button. Set to TRUE if you want the GtkToggleButton to be 'pressed in', and FALSE to raise it. This action causes the toggled signal to be emitted.

button\ufffd:	a GtkToggleToolButton
is_active\ufffd:	whether button should be active

Since 2.4
gtk_toggle_tool_button_get_active ()

gboolean    gtk_toggle_tool_button_get_active
                                            (GtkToggleToolButton *button);

Queries a GtkToggleToolButton and returns its current state. Returns TRUE if the toggle button is pressed in and FALSE if it is raised.

button\ufffd:	a GtkToggleToolButton
Returns\ufffd:	TRUE if the toggle tool button is pressed in, FALSE if not

Since 2.4

+/
