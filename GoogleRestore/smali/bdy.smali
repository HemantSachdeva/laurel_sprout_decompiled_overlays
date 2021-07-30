.class public final Lbdy;
.super Lbdz;
.source "PG"


# static fields
.field public static final a:Lbdy;

.field private static final d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbdy;->d:Ljava/lang/Object;

    new-instance v0, Lbdy;

    invoke-direct {v0}, Lbdy;-><init>()V

    sput-object v0, Lbdy;->a:Lbdy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbdz;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;ILbhw;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/util/TypedValue;

    .line 1
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010309

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    .line 4
    const-string v2, "Theme.Dialog.Alert"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 13
    :cond_1
    nop

    .line 5
    :goto_0
    if-nez v0, :cond_2

    .line 6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7
    :cond_2
    invoke-static {p1, p2}, Lbhp;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz p4, :cond_3

    .line 8
    invoke-virtual {v0, p4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 9
    :cond_3
    invoke-static {p1, p2}, Lbhp;->e(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_4

    .line 10
    invoke-virtual {v0, p4, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 11
    :cond_4
    invoke-static {p1, p2}, Lbhp;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 12
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 13
    :cond_5
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 3

    .line 14
    const-string v0, "Cannot display null dialog"

    const/4 v1, 0x0

    :try_start_0
    instance-of v2, p1, Lbc;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    .line 22
    check-cast p1, Lbc;

    .line 23
    invoke-virtual {p1}, Lbc;->aa()Lbx;

    move-result-object p1

    new-instance v2, Lbek;

    .line 24
    invoke-direct {v2}, Lbek;-><init>()V

    .line 25
    invoke-static {p2, v0}, Lbir;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    invoke-virtual {p2, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 27
    invoke-virtual {p2, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iput-object p2, v2, Lbek;->Z:Landroid/app/Dialog;

    if-eqz p4, :cond_0

    iput-object p4, v2, Lbek;->aa:Landroid/content/DialogInterface$OnCancelListener;

    .line 28
    :cond_0
    invoke-virtual {v2, p1, p3}, Lav;->a(Lbx;Ljava/lang/String;)V

    return-void

    .line 21
    :catch_0
    move-exception v2

    .line 15
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    .line 16
    new-instance v2, Lbdu;

    .line 17
    invoke-direct {v2}, Lbdu;-><init>()V

    .line 18
    invoke-static {p2, v0}, Lbir;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    invoke-virtual {p2, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 20
    invoke-virtual {p2, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iput-object p2, v2, Lbdu;->a:Landroid/app/Dialog;

    if-eqz p4, :cond_2

    iput-object p4, v2, Lbdu;->b:Landroid/content/DialogInterface$OnCancelListener;

    .line 21
    :cond_2
    invoke-virtual {v2, p1, p3}, Lbdu;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/content/Context;ILandroid/app/PendingIntent;)V
    .locals 11

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 29
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const/4 v4, 0x0

    aput-object v4, v1, v2

    const-string v5, "GMS core API Availability. ConnectionResult=%s, tag=%s"

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/IllegalArgumentException;

    .line 30
    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    const-string v6, "GoogleApiAvailability"

    invoke-static {v6, v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v1, 0x12

    if-ne p2, v1, :cond_0

    new-instance p2, Lbdx;

    .line 31
    invoke-direct {p2, p0, p1}, Lbdx;-><init>(Lbdy;Landroid/content/Context;)V

    const-wide/32 v0, 0x1d4c0

    .line 32
    invoke-virtual {p2, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_0
    if-nez p3, :cond_2

    const/4 p1, 0x6

    if-ne p2, p1, :cond_1

    const-string p1, "GoogleApiAvailability"

    const-string p2, "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead."

    .line 33
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 34
    :cond_2
    invoke-static {p1, p2}, Lbhp;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-static {p1, p2}, Lbhp;->d(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "notification"

    .line 37
    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    new-instance v8, Ldc;

    .line 38
    move-object v9, v4

    check-cast v9, Ljava/lang/String;

    invoke-direct {v8, p1, v9}, Ldc;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-boolean v2, v8, Ldc;->j:Z

    .line 39
    invoke-virtual {v8}, Ldc;->c()V

    .line 40
    invoke-virtual {v8, v1}, Ldc;->c(Ljava/lang/CharSequence;)V

    new-instance v1, Ldd;

    invoke-direct {v1, v4}, Ldd;-><init>([B)V

    .line 41
    invoke-virtual {v1, v5}, Ldd;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {v8, v1}, Ldc;->a(Ldd;)V

    .line 42
    invoke-static {p1}, Lbjg;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 43
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 44
    invoke-static {v2}, Lbir;->a(Z)V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v8, v1}, Ldc;->a(I)V

    iput v0, v8, Ldc;->h:I

    .line 46
    invoke-static {p1}, Lbjg;->b(Landroid/content/Context;)V

    iput-object p3, v8, Ldc;->g:Landroid/app/PendingIntent;

    goto :goto_0

    .line 63
    :cond_3
    const v1, 0x108008a

    .line 47
    invoke-virtual {v8, v1}, Ldc;->a(I)V

    const v1, 0x7f110042

    .line 48
    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, v8, Ldc;->m:Landroid/app/Notification;

    .line 49
    invoke-static {v1}, Ldc;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v1, v8, Ldc;->m:Landroid/app/Notification;

    iput-wide v9, v1, Landroid/app/Notification;->when:J

    iput-object p3, v8, Ldc;->g:Landroid/app/PendingIntent;

    .line 51
    invoke-virtual {v8, v5}, Ldc;->b(Ljava/lang/CharSequence;)V

    .line 52
    :goto_0
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 53
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 54
    invoke-static {v2}, Lbir;->a(Z)V

    sget-object p3, Lbdy;->d:Ljava/lang/Object;

    .line 55
    monitor-enter p3

    .line 56
    :try_start_0
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p3, "com.google.android.gms.availability"

    .line 58
    invoke-virtual {v7, p3}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v1

    .line 59
    invoke-static {p1}, Lbhp;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_4

    .line 60
    new-instance v1, Landroid/app/NotificationChannel;

    const/4 v4, 0x4

    invoke-direct {v1, p3, p1, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v7, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_1

    .line 61
    :cond_4
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 62
    invoke-virtual {v1, p1}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {v7, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 60
    :cond_5
    :goto_1
    iput-object p3, v8, Ldc;->l:Ljava/lang/String;

    .line 64
    invoke-virtual {v8}, Ldc;->b()Landroid/app/Notification;

    move-result-object p1

    if-eq p2, v2, :cond_6

    if-eq p2, v0, :cond_6

    const/4 p3, 0x3

    if-eq p2, p3, :cond_6

    const p2, 0x9b6d

    goto :goto_2

    .line 65
    :cond_6
    sget-object p2, Lbei;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 p2, 0x28c4

    .line 66
    :goto_2
    invoke-virtual {v7, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    .line 51
    :catchall_0
    move-exception p1

    .line 57
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
