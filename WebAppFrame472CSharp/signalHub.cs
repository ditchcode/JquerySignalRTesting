using System;
using Microsoft.AspNet.SignalR;

public class IdologyHub : Hub
{

    public static readonly System.Timers.Timer _Timer = new
    System.Timers.Timer();

    static IdologyHub()
    {
        _Timer.Interval = 5000;
        _Timer.Elapsed += TimerElapsed;
        _Timer.Start();
    }

    static void TimerElapsed(object sender, System.Timers.ElapsedEventArgs e)
    {
        var hub = GlobalHost.ConnectionManager.GetHubContext("IdologyHub");
        hub.Clients.All.logMessage(string.Format("{0} - Still running",
        DateTime.UtcNow));
    }
}