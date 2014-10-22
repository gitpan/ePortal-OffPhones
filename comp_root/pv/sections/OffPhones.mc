%#============================================================================
%# ePortal - WEB Based daily organizer
%# Author - S.Rusakov <rusakov_sa@users.sourceforge.net>
%#
%# Copyright (c) 2000-2003 Sergey Rusakov.  All rights reserved.
%# This program is free software; you can redistribute it
%# and/or modify it under the same terms as Perl itself.
%#
%#
%#----------------------------------------------------------------------------

% my $app = $ePortal->Application('OffPhones');
% if (! $app) {
    <& /message.mc, ErrorMessage => pick_lang(
      rus => "���������� OffPhones �� �����������",
      eng => "OffPhones application is not installed") &>
%    return;
% }
<form name="pv_ph_off" action="/app/OffPhones/index.htm" method="GET">

<span class="smallfont"><b><% pick_lang(rus => "�������", eng => "Name") %>:</b></span><br>
<input type="text" class="dlgfield" name="name" width="16" maxlength="50" value=""><br>
<input name="submit" class="button" type="submit" value="<% pick_lang(rus => "������", eng => "Search") %>"><br>

% if ( $app->xacl_check_update ) {
  <span class="smallfont"><A href="/app/OffPhones/memo_list.htm">
		<% pick_lang(rus => "��������� �������������", eng => "Users criticism") %>: <% ePortal::App::OffPhones::UserMemoCount() %>
	</A></span>
% }

</form>

%#=== @metags attr =========================================================
<%attr>
def_title => { rus => '�������� �����������', eng => 'Phones directory' }
def_width => 'N'
def_url   => '/app/OffPhones/index.htm'
</%attr>


