=item C<$DefaultCalendarFormat>

C<$DefaultCalendarFormat> is the default display format for calendar
entries. The first element is displayed on the calendar itself, the
rest is shown only in the popup.

=cut

Set ($DefaultCalendarFormat, qq{
   '<a href="__WebPath__/Ticket/Display.html?id=__id__">__QueueName__ #__id__ __Subject__</a>/TITLE:',
   '__NEWLINE__',
   OwnerName,
   '__Created__',
   '__Starts__',
   '__Started__',
   '__LastUpdated__',
   '__Due__',
   '__Resolved__',
   Status,
   Priority,
   '__Requestors__',
});


1;
