=item C<$CalendarDisplayOwner>

You can show the owner in each day box by adding this line to your
etc/RT_SiteConfig.pm :
=cut

#Set($CalendarDisplayOwner, 1);



=item C<$DefaultCalendarBoxFormat>

C<$DefaultCalendarBoxFormat> is the default display format for the
calendar boxes. It's just like a search format, but it's only a single
element.

=cut

Set($DefaultCalendarBoxFormat, '__QueueName__ #__id__ __Subject__');


=item C<$DefaultCalendarFormat>

C<$DefaultCalendarFormat> is the default display format for calendar
popups. The date fields present also determine whether a ticket will
be displayed on a given day.

=cut

Set($DefaultCalendarFormat, qq{
   '<a href="__WebPath__/Ticket/Display.html?id=__id__"><strong>__QueueName__ #__id__ :</strong> __Subject__</a>/TITLE:',
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
