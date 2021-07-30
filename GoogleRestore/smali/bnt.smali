.class public final Lbnt;
.super Lbqb;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbqb;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;Landroid/os/Looper;Lbho;Lbnx;Lbet;Lbeu;)Lboe;
    .locals 7

    if-nez p3, :cond_0

    .line 1
    sget-object p3, Lbnx;->a:Lbnx;

    :cond_0
    new-instance p3, Lboe;

    iget-object v0, p2, Lbho;->f:Ljava/lang/Integer;

    new-instance v4, Landroid/os/Bundle;

    .line 2
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 3
    const-string v1, "com.google.android.gms.signin.internal.clientRequestedAccount"

    const/4 v2, 0x0

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "com.google.android.gms.common.internal.ClientSettings.sessionId"

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    nop

    .line 5
    const-string v0, "com.google.android.gms.signin.internal.offlineAccessRequested"

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    const-string v0, "com.google.android.gms.signin.internal.idTokenRequested"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7
    const-string v0, "com.google.android.gms.signin.internal.serverClientId"

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 8
    const-string v3, "com.google.android.gms.signin.internal.usePromptModeForAuthCode"

    invoke-virtual {v4, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9
    const-string v0, "com.google.android.gms.signin.internal.forceCodeForRefreshToken"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10
    const-string v0, "com.google.android.gms.signin.internal.hostedDomain"

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    const-string v0, "com.google.android.gms.signin.internal.logSessionId"

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    const-string v0, "com.google.android.gms.signin.internal.waitForAccessTokenRefresh"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 13
    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lboe;-><init>(Landroid/content/Context;Landroid/os/Looper;Lbho;Landroid/os/Bundle;Lbet;Lbeu;)V

    return-object p3
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/content/Context;Landroid/os/Looper;Lbho;Lbet;Lbeu;)Lben;
    .locals 6

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lbnt;->a(Landroid/content/Context;Landroid/os/Looper;Lbho;Lbnx;Lbet;Lbeu;)Lboe;

    move-result-object p1

    return-object p1
.end method
