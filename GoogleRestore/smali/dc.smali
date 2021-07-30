.class public final Ldc;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field final d:Ljava/util/ArrayList;

.field e:Ljava/lang/CharSequence;

.field f:Ljava/lang/CharSequence;

.field public g:Landroid/app/PendingIntent;

.field public h:I

.field i:Ldd;

.field public j:Z

.field public k:Landroid/os/Bundle;

.field public l:Ljava/lang/String;

.field public final m:Landroid/app/Notification;

.field public final n:Ljava/util/ArrayList;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldc;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldc;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldc;->d:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldc;->j:Z

    .line 4
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, p0, Ldc;->m:Landroid/app/Notification;

    iput-object p1, p0, Ldc;->a:Landroid/content/Context;

    iput-object p2, p0, Ldc;->l:Ljava/lang/String;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v1, Landroid/app/Notification;->when:J

    const/4 p1, -0x1

    iput p1, v1, Landroid/app/Notification;->audioStreamType:I

    iput v0, p0, Ldc;->h:I

    new-instance p1, Ljava/util/ArrayList;

    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ldc;->n:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 106
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x1400

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 107
    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Ldc;->k:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    .line 105
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Ldc;->k:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Ldc;->k:Landroid/os/Bundle;

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Ldc;->m:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    return-void
.end method

.method public final a(Ldd;)V
    .locals 1

    iget-object v0, p0, Ldc;->i:Ldd;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Ldc;->i:Ldd;

    if-eqz p1, :cond_0

    iget-object v0, p1, Ldd;->a:Ldc;

    if-eq v0, p0, :cond_0

    iput-object p0, p1, Ldd;->a:Ldc;

    iget-object v0, p1, Ldd;->a:Ldc;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0, p1}, Ldc;->a(Ldd;)V

    :cond_0
    return-void
.end method

.method public final b()Landroid/app/Notification;
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    .line 8
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Ldc;->a:Landroid/content/Context;

    iget-object v3, p0, Ldc;->l:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Ldc;->m:Landroid/app/Notification;

    .line 11
    iget-wide v3, v2, Landroid/app/Notification;->when:J

    invoke-virtual {v1, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v2, Landroid/app/Notification;->icon:I

    iget v5, v2, Landroid/app/Notification;->iconLevel:I

    .line 12
    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 13
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 14
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, v2, Landroid/app/Notification;->vibrate:[J

    .line 15
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v2, Landroid/app/Notification;->ledARGB:I

    iget v6, v2, Landroid/app/Notification;->ledOnMS:I

    iget v7, v2, Landroid/app/Notification;->ledOffMS:I

    .line 16
    invoke-virtual {v3, v4, v6, v7}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    .line 104
    :cond_0
    const/4 v4, 0x0

    .line 17
    :goto_0
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    .line 103
    :cond_1
    const/4 v4, 0x0

    .line 18
    :goto_1
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    .line 103
    :cond_2
    const/4 v4, 0x0

    .line 19
    :goto_2
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v2, Landroid/app/Notification;->defaults:I

    .line 20
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Ldc;->e:Ljava/lang/CharSequence;

    .line 21
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Ldc;->f:Ljava/lang/CharSequence;

    .line 22
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 23
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Ldc;->g:Landroid/app/PendingIntent;

    .line 24
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 25
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v2, Landroid/app/Notification;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    .line 103
    :cond_3
    const/4 v4, 0x0

    .line 25
    :goto_3
    nop

    .line 26
    invoke-virtual {v3, v5, v4}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 27
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 28
    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 29
    invoke-virtual {v3, v7, v7, v7}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 30
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 31
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 32
    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 33
    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, p0, Ldc;->h:I

    .line 34
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    iget-object v3, p0, Ldc;->b:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_e

    .line 36
    iget-object v3, p0, Ldc;->k:Landroid/os/Bundle;

    if-eqz v3, :cond_4

    .line 37
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 38
    :cond_4
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 39
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 40
    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 41
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 42
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 43
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-boolean v3, p0, Ldc;->j:Z

    .line 44
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 45
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 46
    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 47
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 48
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 49
    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 50
    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 51
    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 52
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget-object v2, v2, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 53
    invoke-virtual {v3, v4, v2}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 54
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v2, p0, Ldc;->n:Ljava/util/ArrayList;

    .line 55
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v3, :cond_5

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 56
    check-cast v8, Ljava/lang/String;

    .line 57
    invoke-virtual {v1, v8}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    iget-object v2, p0, Ldc;->d:Ljava/util/ArrayList;

    .line 58
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 59
    invoke-virtual {p0}, Ldc;->a()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.car.EXTENSIONS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_6

    new-instance v2, Landroid/os/Bundle;

    .line 60
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :cond_6
    new-instance v4, Landroid/os/Bundle;

    .line 61
    invoke-direct {v4, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    new-instance v8, Landroid/os/Bundle;

    .line 62
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    iget-object v9, p0, Ldc;->d:Ljava/util/ArrayList;

    .line 63
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gtz v9, :cond_7

    .line 66
    nop

    .line 67
    const-string v9, "invisible_actions"

    invoke-virtual {v2, v9, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {v4, v9, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Ldc;->a()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v8, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_5

    .line 64
    :cond_7
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    iget-object v0, p0, Ldc;->d:Ljava/util/ArrayList;

    .line 65
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lec;

    new-instance v0, Landroid/os/Bundle;

    .line 66
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    throw v5

    .line 71
    :cond_8
    :goto_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v0, p0, Ldc;->k:Landroid/os/Bundle;

    .line 73
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 74
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 76
    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setBadgeIconType(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 77
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setSettingsText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 78
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setShortcutId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-wide/16 v2, 0x0

    .line 79
    invoke-virtual {v0, v2, v3}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 80
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    iget-object v0, p0, Ldc;->l:Ljava/lang/String;

    .line 81
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 82
    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 83
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 84
    invoke-virtual {v0, v7, v7, v7}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 85
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 86
    :cond_9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v0, p0, Ldc;->c:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_d

    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_a

    .line 88
    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setAllowSystemGeneratedContextualActions(Z)Landroid/app/Notification$Builder;

    .line 89
    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setBubbleMetadata(Landroid/app/Notification$BubbleMetadata;)Landroid/app/Notification$Builder;

    :cond_a
    iget-object v0, p0, Ldc;->i:Ldd;

    if-eqz v0, :cond_b

    .line 90
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 91
    new-instance v2, Landroid/app/Notification$BigTextStyle;

    .line 92
    invoke-direct {v2, v1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 93
    invoke-virtual {v2, v5}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v2

    iget-object v3, v0, Ldd;->b:Ljava/lang/CharSequence;

    .line 94
    invoke-virtual {v2, v3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 95
    :cond_b
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 96
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 97
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 98
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 99
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eqz v0, :cond_c

    .line 100
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 101
    iget-object v2, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_c

    .line 102
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.support.v4.app.extra.COMPAT_TEMPLATE"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Ldd;->b:Ljava/lang/CharSequence;

    .line 103
    const-string v3, "android.bigText"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_c
    return-object v1

    :cond_d
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 104
    check-cast v0, Laqq;

    throw v5

    .line 34
    :cond_e
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 35
    check-cast v0, Lec;

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    goto :goto_7

    :goto_6
    throw v5

    :goto_7
    goto :goto_6
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .locals 0

    .line 109
    invoke-static {p1}, Ldc;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Ldc;->f:Ljava/lang/CharSequence;

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Ldc;->m:Landroid/app/Notification;

    .line 108
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    return-void
.end method

.method public final c(Ljava/lang/CharSequence;)V
    .locals 0

    .line 110
    invoke-static {p1}, Ldc;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Ldc;->e:Ljava/lang/CharSequence;

    return-void
.end method
