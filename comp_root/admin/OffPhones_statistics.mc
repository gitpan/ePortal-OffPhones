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
<& /admin/statistics.htm:show_stat,
  OffPhones_dept=> {
    app => 'OffPhones',
    title => pick_lang(rus => "������������� �����", eng => "Departments count"),
    sql_1 => "SELECT count(*) FROM Department",
  } &>
<& /admin/statistics.htm:show_stat,
  OffPhones_client=> {
    app => 'OffPhones',
    title => pick_lang(rus => "����� � �����������", eng => "Entries count"),
    sql_1 => "SELECT count(*) FROM Client",
  } &>
<& /admin/statistics.htm:show_stat,
  OffPhones_phones=> {
    app => 'OffPhones',
    title => pick_lang(rus => "��������� �����", eng => "Phones count"),
    sql_1 => "SELECT count(*) FROM Phone",
  } &>

