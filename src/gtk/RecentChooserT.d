/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = GtkRecentChooser.html
 * outPack = gtk
 * outFile = RecentChooserT
 * strct   = GtkRecentChooser
 * realStrct=
 * ctorStrct=
 * clss    = RecentChooserT
 * interf  = 
 * class Code: Yes
 * interface Code: Yes
 * template for:
 * 	- TStruct
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_recent_chooser_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * 	- item-activated
 * 	- selection-changed
 * imports:
 * 	- glib.Str
 * 	- gtk.RecentInfo
 * 	- gtk.RecentFilter
 * 	- glib.ListG
 * structWrap:
 * 	- GList* -> ListG
 * 	- GtkRecentFilter* -> RecentFilter
 * 	- GtkRecentInfo* -> RecentInfo
 * module aliases:
 * local aliases:
 */

module gtk.RecentChooserT;

public  import gtkc.gtktypes;

private import gtkc.gtk;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import gtk.RecentInfo;
private import gtk.RecentFilter;
private import glib.ListG;




/**
 * Description
 * GtkRecentChooser is an interface that can be implemented by widgets
 * displaying the list of recently used files. In GTK+, the main objects
 * that implement this interface are GtkRecentChooserWidget,
 * GtkRecentChooserDialog and GtkRecentChooserMenu.
 * Recently used files are supported since GTK+ 2.10.
 */
public template RecentChooserT(TStruct)
{
	
	/** the main Gtk struct */
	protected GtkRecentChooser* gtkRecentChooser;
	
	
	public GtkRecentChooser* getRecentChooserTStruct()
	{
		return cast(GtkRecentChooser*)getStruct();
	}
	
	
	/** */
	int[char[]] connectedSignals;
	
	public struct UserData
	{
		RecentChooserIF recentChooser;
		void delegate(RecentChooserIF)[] listeners;
	}
	
	UserData* itemActivatedData;
	void delegate(RecentChooserIF)[] onItemActivatedListeners;
	/**
	 * This signal is emitted when the user "activates" a recent item
	 * in the recent chooser. This can happen by double-clicking on an item
	 * in the recently used resources list, or by pressing
	 * Enter.
	 * Since 2.10
	 */
	void addOnItemActivated(void delegate(RecentChooserIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onItemActivatedListeners ~= dlg;
		
		if(itemActivatedData is null)
		itemActivatedData = new UserData;
		
		itemActivatedData.recentChooser = this;
		itemActivatedData.listeners = onItemActivatedListeners;
		
		if ( !("item-activated" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"item-activated",
			cast(GCallback)&callBackItemActivated,
			cast(void*)itemActivatedData,
			null,
			connectFlags);
			connectedSignals["item-activated"] = 1;
		}
	}
	extern(C) static void callBackItemActivated(GtkRecentChooser* chooserStruct, UserData* data)
	{
		bool consumed = false;
		
		foreach ( void delegate(RecentChooserIF) dlg ; data.listeners )
		{
			dlg(data.recentChooser);
		}
		
		return consumed;
	}
	
	UserData* selectionChangedData;
	void delegate(RecentChooserIF)[] onSelectionChangedListeners;
	/**
	 * This signal is emitted when there is a change in the set of
	 * selected recently used resources. This can happen when a user
	 * modifies the selection with the mouse or the keyboard, or when
	 * explicitely calling functions to change the selection.
	 * Since 2.10
	 * See Also
	 * GtkRecentManager, GtkRecentChooserDialog, GtkRecentChooserWidget,
	 * GtkRecentChooserMenu
	 */
	void addOnSelectionChanged(void delegate(RecentChooserIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onSelectionChangedListeners ~= dlg;
		
		if(selectionChangedData is null)
		selectionChangedData = new UserData;
		
		selectionChangedData.recentChooser = this;
		selectionChangedData.listeners = onSelectionChangedListeners;
		
		if ( !("selection-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"selection-changed",
			cast(GCallback)&callBackSelectionChanged,
			cast(void*)selectionChangedData,
			null,
			connectFlags);
			connectedSignals["selection-changed"] = 1;
		}
	}
	extern(C) static void callBackSelectionChanged(GtkRecentChooser* chooserStruct, UserData* data)
	{
		bool consumed = false;
		
		foreach ( void delegate(RecentChooserIF) dlg ; data.listeners )
		{
			dlg(data.recentChooser);
		}
		
		return consumed;
	}
	
	/**
	 */
	
	/**
	 * Whether to show recently used resources marked registered as private.
	 * Since 2.10
	 * Params:
	 * showPrivate =  TRUE to show private items, FALSE otherwise
	 */
	public void setShowPrivate(int showPrivate)
	{
		// void gtk_recent_chooser_set_show_private (GtkRecentChooser *chooser,  gboolean show_private);
		gtk_recent_chooser_set_show_private(getRecentChooserTStruct(), showPrivate);
	}
	
	/**
	 * Returns whether chooser should display recently used resources
	 * registered as private.
	 * Since 2.10
	 * Returns: TRUE if the recent chooser should show private items, FALSE otherwise.
	 */
	public int getShowPrivate()
	{
		// gboolean gtk_recent_chooser_get_show_private (GtkRecentChooser *chooser);
		return gtk_recent_chooser_get_show_private(getRecentChooserTStruct());
	}
	
	/**
	 * Sets whether chooser should display the recently used resources that
	 * it didn't find. This only applies to local resources.
	 * Since 2.10
	 * Params:
	 * showNotFound =  whether to show the local items we didn't find
	 */
	public void setShowNotFound(int showNotFound)
	{
		// void gtk_recent_chooser_set_show_not_found  (GtkRecentChooser *chooser,  gboolean show_not_found);
		gtk_recent_chooser_set_show_not_found(getRecentChooserTStruct(), showNotFound);
	}
	
	/**
	 * Retrieves whether chooser should show the recently used resources that
	 * were not found.
	 * Since 2.10
	 * Returns: TRUE if the resources not found should be displayed, and FALSE otheriwse.
	 */
	public int getShowNotFound()
	{
		// gboolean gtk_recent_chooser_get_show_not_found  (GtkRecentChooser *chooser);
		return gtk_recent_chooser_get_show_not_found(getRecentChooserTStruct());
	}
	
	/**
	 * Sets whether chooser should show an icon near the resource when
	 * displaying it.
	 * Since 2.10
	 * Params:
	 * showIcons =  whether to show an icon near the resource
	 */
	public void setShowIcons(int showIcons)
	{
		// void gtk_recent_chooser_set_show_icons (GtkRecentChooser *chooser,  gboolean show_icons);
		gtk_recent_chooser_set_show_icons(getRecentChooserTStruct(), showIcons);
	}
	
	/**
	 * Retrieves whether chooser should show an icon near the resource.
	 * Since 2.10
	 * Returns: TRUE if the icons should be displayed, FALSE otherwise.
	 */
	public int getShowIcons()
	{
		// gboolean gtk_recent_chooser_get_show_icons (GtkRecentChooser *chooser);
		return gtk_recent_chooser_get_show_icons(getRecentChooserTStruct());
	}
	
	/**
	 * Sets whether chooser can select multiple items.
	 * Since 2.10
	 * Params:
	 * selectMultiple =  TRUE if chooser can select more than one item
	 */
	public void setSelectMultiple(int selectMultiple)
	{
		// void gtk_recent_chooser_set_select_multiple  (GtkRecentChooser *chooser,  gboolean select_multiple);
		gtk_recent_chooser_set_select_multiple(getRecentChooserTStruct(), selectMultiple);
	}
	
	/**
	 * Gets whether chooser can select multiple items.
	 * Since 2.10
	 * Returns: TRUE if chooser can select more than one item.
	 */
	public int getSelectMultiple()
	{
		// gboolean gtk_recent_chooser_get_select_multiple  (GtkRecentChooser *chooser);
		return gtk_recent_chooser_get_select_multiple(getRecentChooserTStruct());
	}
	
	/**
	 * Sets whether only local resources, that is resources using the file:// URI
	 * scheme, should be shown in the recently used resources selector. If
	 * local_only is TRUE (the default) then the shown resources are guaranteed
	 * to be accessible through the operating system native file system.
	 * Since 2.10
	 * Params:
	 * localOnly =  TRUE if only local files can be shown
	 */
	public void setLocalOnly(int localOnly)
	{
		// void gtk_recent_chooser_set_local_only (GtkRecentChooser *chooser,  gboolean local_only);
		gtk_recent_chooser_set_local_only(getRecentChooserTStruct(), localOnly);
	}
	
	/**
	 * Gets whether only local resources should be shown in the recently used
	 * resources selector. See gtk_recent_chooser_set_local_only()
	 * Since 2.10
	 * Returns: TRUE if only local resources should be shown.
	 */
	public int getLocalOnly()
	{
		// gboolean gtk_recent_chooser_get_local_only (GtkRecentChooser *chooser);
		return gtk_recent_chooser_get_local_only(getRecentChooserTStruct());
	}
	
	/**
	 * Sets the number of items that should be returned by
	 * gtk_recent_chooser_get_items() and gtk_recent_chooser_get_uris().
	 * Since 2.10
	 * Params:
	 * limit =  a positive integer, or -1 for all items
	 */
	public void setLimit(int limit)
	{
		// void gtk_recent_chooser_set_limit (GtkRecentChooser *chooser,  gint limit);
		gtk_recent_chooser_set_limit(getRecentChooserTStruct(), limit);
	}
	
	/**
	 * Gets the number of items returned by gtk_recent_chooser_get_items()
	 * and gtk_recent_chooser_get_uris().
	 * Since 2.10
	 * Returns: A positive integer, or -1 meaning that all items are returned.
	 */
	public int getLimit()
	{
		// gint gtk_recent_chooser_get_limit (GtkRecentChooser *chooser);
		return gtk_recent_chooser_get_limit(getRecentChooserTStruct());
	}
	
	/**
	 * Sets whether to show a tooltips containing the full path of each
	 * recently used resource in a GtkRecentChooser widget.
	 * Since 2.10
	 * Params:
	 * showTips =  TRUE if tooltips should be shown
	 */
	public void setShowTips(int showTips)
	{
		// void gtk_recent_chooser_set_show_tips (GtkRecentChooser *chooser,  gboolean show_tips);
		gtk_recent_chooser_set_show_tips(getRecentChooserTStruct(), showTips);
	}
	
	/**
	 * Gets whether chooser should display tooltips containing the full path
	 * of a recently user resource.
	 * Since 2.10
	 * Returns: TRUE if the recent chooser should show tooltips, FALSE otherwise.
	 */
	public int getShowTips()
	{
		// gboolean gtk_recent_chooser_get_show_tips (GtkRecentChooser *chooser);
		return gtk_recent_chooser_get_show_tips(getRecentChooserTStruct());
	}
	
	/**
	 * Warning
	 * gtk_recent_chooser_set_show_numbers has been deprecated since version 2.12 and should not be used in newly-written code. Use gtk_recent_chooser_menu_set_show_numbers() instead.
	 * Whether to show recently used resources prepended by a unique number.
	 * Since 2.10
	 * Params:
	 * showNumbers =  TRUE to show numbers, FALSE otherwise
	 */
	public void setShowNumbers(int showNumbers)
	{
		// void gtk_recent_chooser_set_show_numbers (GtkRecentChooser *chooser,  gboolean show_numbers);
		gtk_recent_chooser_set_show_numbers(getRecentChooserTStruct(), showNumbers);
	}
	
	/**
	 * Warning
	 * gtk_recent_chooser_get_show_numbers has been deprecated since version 2.12 and should not be used in newly-written code. use gtk_recent_chooser_menu_get_show_numbers() instead.
	 * Returns whether chooser should display recently used resources
	 * prepended by a unique number.
	 * Since 2.10
	 * Returns: TRUE if the recent chooser should show display numbers, FALSE otherwise.
	 */
	public int getShowNumbers()
	{
		// gboolean gtk_recent_chooser_get_show_numbers (GtkRecentChooser *chooser);
		return gtk_recent_chooser_get_show_numbers(getRecentChooserTStruct());
	}
	
	/**
	 * Changes the sorting order of the recently used resources list displayed by
	 * chooser.
	 * Since 2.10
	 * Params:
	 * sortType =  sort order that the chooser should use
	 */
	public void setSortType(GtkRecentSortType sortType)
	{
		// void gtk_recent_chooser_set_sort_type (GtkRecentChooser *chooser,  GtkRecentSortType sort_type);
		gtk_recent_chooser_set_sort_type(getRecentChooserTStruct(), sortType);
	}
	
	/**
	 * Gets the value set by gtk_recent_chooser_set_sort_type().
	 * Since 2.10
	 * Returns: the sorting order of the chooser.
	 */
	public GtkRecentSortType getSortType()
	{
		// GtkRecentSortType gtk_recent_chooser_get_sort_type (GtkRecentChooser *chooser);
		return gtk_recent_chooser_get_sort_type(getRecentChooserTStruct());
	}
	
	/**
	 * Sets the comparison function used when sorting to be sort_func. If
	 * the chooser has the sort type set to GTK_RECENT_SORT_CUSTOM then
	 * the chooser will sort using this function.
	 * To the comparison function will be passed two GtkRecentInfo structs and
	 * sort_data; sort_func should return a positive integer if the first
	 * item comes before the second, zero if the two items are equal and
	 * a negative integer if the first item comes after the second.
	 * Since 2.10
	 * Params:
	 * sortFunc =  the comparison function
	 * sortData =  user data to pass to sort_func, or NULL
	 * dataDestroy =  destroy notifier for sort_data, or NULL
	 */
	public void setSortFunc(GtkRecentSortFunc sortFunc, void* sortData, GDestroyNotify dataDestroy)
	{
		// void gtk_recent_chooser_set_sort_func (GtkRecentChooser *chooser,  GtkRecentSortFunc sort_func,  gpointer sort_data,  GDestroyNotify data_destroy);
		gtk_recent_chooser_set_sort_func(getRecentChooserTStruct(), sortFunc, sortData, dataDestroy);
	}
	
	/**
	 * Sets uri as the current URI for chooser.
	 * Since 2.10
	 * Params:
	 * uri =  a URI
	 * error =  return location for a GError, or NULL
	 * Returns: TRUE if the URI was found.
	 */
	public int setCurrentUri(char[] uri, GError** error)
	{
		// gboolean gtk_recent_chooser_set_current_uri (GtkRecentChooser *chooser,  const gchar *uri,  GError **error);
		return gtk_recent_chooser_set_current_uri(getRecentChooserTStruct(), Str.toStringz(uri), error);
	}
	
	/**
	 * Gets the URI currently selected by chooser.
	 * Since 2.10
	 * Returns: a newly allocated string holding a URI.
	 */
	public char[] getCurrentUri()
	{
		// gchar* gtk_recent_chooser_get_current_uri (GtkRecentChooser *chooser);
		return Str.toString(gtk_recent_chooser_get_current_uri(getRecentChooserTStruct())).dup;
	}
	
	/**
	 * Gets the GtkRecentInfo currently selected by chooser.
	 * Since 2.10
	 * Returns: a GtkRecentInfo. Use gtk_recent_info_unref() when when you have finished using it.
	 */
	public RecentInfo getCurrentItem()
	{
		// GtkRecentInfo* gtk_recent_chooser_get_current_item (GtkRecentChooser *chooser);
		auto p = gtk_recent_chooser_get_current_item(getRecentChooserTStruct());
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new RecentInfo(cast(GtkRecentInfo*) p);
	}
	
	/**
	 * Selects uri inside chooser.
	 * Since 2.10
	 * Params:
	 * uri =  a URI
	 * error =  return location for a GError, or NULL
	 * Returns: TRUE if uri was found.
	 */
	public int selectUri(char[] uri, GError** error)
	{
		// gboolean gtk_recent_chooser_select_uri (GtkRecentChooser *chooser,  const gchar *uri,  GError **error);
		return gtk_recent_chooser_select_uri(getRecentChooserTStruct(), Str.toStringz(uri), error);
	}
	
	/**
	 * Unselects uri inside chooser.
	 * Since 2.10
	 * Params:
	 * uri =  a URI
	 */
	public void unselectUri(char[] uri)
	{
		// void gtk_recent_chooser_unselect_uri (GtkRecentChooser *chooser,  const gchar *uri);
		gtk_recent_chooser_unselect_uri(getRecentChooserTStruct(), Str.toStringz(uri));
	}
	
	/**
	 * Selects all the items inside chooser, if the chooser supports
	 * multiple selection.
	 * Since 2.10
	 */
	public void selectAll()
	{
		// void gtk_recent_chooser_select_all (GtkRecentChooser *chooser);
		gtk_recent_chooser_select_all(getRecentChooserTStruct());
	}
	
	/**
	 * Unselects all the items inside chooser.
	 * Since 2.10
	 */
	public void unselectAll()
	{
		// void gtk_recent_chooser_unselect_all (GtkRecentChooser *chooser);
		gtk_recent_chooser_unselect_all(getRecentChooserTStruct());
	}
	
	/**
	 * Gets the list of recently used resources in form of GtkRecentInfo objects.
	 * The return value of this function is affected by the "sort-type" and
	 * "limit" properties of chooser.
	 * Since 2.10
	 * Returns: A newly allocated list of GtkRecentInfo objects. You should use gtk_recent_info_unref() on every item of the list, and then free the list itself using g_list_free().
	 */
	public ListG getItems()
	{
		// GList* gtk_recent_chooser_get_items (GtkRecentChooser *chooser);
		auto p = gtk_recent_chooser_get_items(getRecentChooserTStruct());
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new ListG(cast(GList*) p);
	}
	
	/**
	 * Gets the URI of the recently used resources.
	 * The return value of this function is affected by the "sort-type" and "limit"
	 * properties of chooser.
	 * Since the returned array is NULL terminated, length may be NULL.
	 * Since 2.10
	 * Params:
	 * length =  return location for a the length of the URI list, or NULL
	 * Returns: A newly allocated, NULL terminated array of strings. Use g_strfreev() to free it.
	 */
	public char** getUris(uint* length)
	{
		// gchar** gtk_recent_chooser_get_uris (GtkRecentChooser *chooser,  gsize *length);
		return gtk_recent_chooser_get_uris(getRecentChooserTStruct(), length);
	}
	
	/**
	 * Adds filter to the list of GtkRecentFilter objects held by chooser.
	 * If no previous filter objects were defined, this function will call
	 * gtk_recent_chooser_set_filter().
	 * Since 2.10
	 * Params:
	 * filter =  a GtkRecentFilter
	 */
	public void addFilter(RecentFilter filter)
	{
		// void gtk_recent_chooser_add_filter (GtkRecentChooser *chooser,  GtkRecentFilter *filter);
		gtk_recent_chooser_add_filter(getRecentChooserTStruct(), (filter is null) ? null : filter.getRecentFilterStruct());
	}
	
	/**
	 * Removes filter from the list of GtkRecentFilter objects held by chooser.
	 * Since 2.10
	 * Params:
	 * filter =  a GtkRecentFilter
	 */
	public void removeFilter(RecentFilter filter)
	{
		// void gtk_recent_chooser_remove_filter (GtkRecentChooser *chooser,  GtkRecentFilter *filter);
		gtk_recent_chooser_remove_filter(getRecentChooserTStruct(), (filter is null) ? null : filter.getRecentFilterStruct());
	}
	
	/**
	 * Gets the GtkRecentFilter objects held by chooser.
	 * Since 2.10
	 * Returns: A singly linked list of GtkRecentFilter objects. You should just free the returned list using g_slist_free().
	 */
	public GSList* listFilters()
	{
		// GSList* gtk_recent_chooser_list_filters (GtkRecentChooser *chooser);
		return gtk_recent_chooser_list_filters(getRecentChooserTStruct());
	}
	
	/**
	 * Sets filter as the current GtkRecentFilter object used by chooser
	 * to affect the displayed recently used resources.
	 * Since 2.10
	 * Params:
	 * filter =  a GtkRecentFilter
	 */
	public void setFilter(RecentFilter filter)
	{
		// void gtk_recent_chooser_set_filter (GtkRecentChooser *chooser,  GtkRecentFilter *filter);
		gtk_recent_chooser_set_filter(getRecentChooserTStruct(), (filter is null) ? null : filter.getRecentFilterStruct());
	}
	
	/**
	 * Gets the GtkRecentFilter object currently used by chooser to affect
	 * the display of the recently used resources.
	 * Since 2.10
	 * Returns: a GtkRecentFilter object.
	 */
	public RecentFilter getFilter()
	{
		// GtkRecentFilter* gtk_recent_chooser_get_filter (GtkRecentChooser *chooser);
		auto p = gtk_recent_chooser_get_filter(getRecentChooserTStruct());
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new RecentFilter(cast(GtkRecentFilter*) p);
	}
}