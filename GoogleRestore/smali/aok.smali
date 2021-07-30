.class public final Laok;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final synthetic a:I

.field private static final b:Laqd;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "AccountsUtils"

    aput-object v3, v1, v2

    .line 1
    invoke-direct {v0, v1}, Lacw;-><init>([Ljava/lang/String;)V

    sput-object v0, Laok;->b:Laqd;

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/accounts/Account;)Lczu;
    .locals 8

    .line 5
    invoke-static {}, Ldac;->b()Ldac;

    move-result-object v0

    .line 6
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    new-instance v6, Laoj;

    invoke-direct {v6, v0}, Laoj;-><init>(Ldac;)V

    .line 7
    const-string v3, "android"

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v5, p0

    invoke-virtual/range {v1 .. v7}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 2

    .line 2
    sget-object v0, Land;->an:Lccv;

    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "android"

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0, p1, v1}, Larz;->a(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v1, v0}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final synthetic a(Ldac;Landroid/accounts/AccountManagerFuture;)V
    .locals 3

    sget-object v0, Laok;->b:Laqd;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Got auth token."

    invoke-virtual {v0, v2, v1}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "authtoken"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ldac;->a(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    :goto_0
    new-instance p1, Lapb;

    invoke-direct {p1}, Lapb;-><init>()V

    invoke-virtual {p0, p1}, Ldac;->a(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public static a(Landroid/content/Context;)[Landroid/accounts/Account;
    .locals 6

    .line 9
    invoke-static {p0}, Laok;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 10
    sget-object v1, Land;->am:Lccv;

    invoke-virtual {v1}, Lccv;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Lbir;->b(Ljava/lang/String;)V

    .line 12
    sget v2, Lbdz;->b:I

    const v2, 0x802c80

    .line 13
    invoke-static {p0, v2}, Lbei;->b(Landroid/content/Context;I)V

    .line 14
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    invoke-static {p0}, Lbir;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "com.google.android.gms.auth.accounts"

    .line 16
    invoke-virtual {p0, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lbeh; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lbeg; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p0, :cond_2

    .line 18
    :try_start_1
    new-instance v2, Landroid/os/Bundle;

    .line 19
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "get_accounts"

    invoke-virtual {p0, v3, v0, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "accounts"

    .line 20
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 21
    array-length v2, v0

    new-array v2, v2, [Landroid/accounts/Account;

    const/4 v3, 0x0

    .line 22
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 23
    aget-object v4, v0, v3

    check-cast v4, Landroid/accounts/Account;

    aput-object v4, v2, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 26
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lbeh; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lbeg; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 25
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 28
    :catch_0
    move-exception v0

    .line 18
    :try_start_3
    sget-object v2, Larz;->d:Lbjb;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Error when getting accounts"

    aput-object v4, v3, v1

    const/4 v4, 0x1

    aput-object v0, v3, v4

    iget-object v4, v2, Lbjb;->a:Ljava/lang/String;

    const-string v5, "GoogleAuthUtil"

    .line 24
    invoke-virtual {v2, v5, v3}, Lbjb;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Accounts ContentProvider failed: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 18
    :cond_1
    new-instance v0, Ljava/lang/String;

    .line 25
    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v2, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 26
    :goto_2
    :try_start_4
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    .line 27
    throw v0

    .line 17
    :cond_2
    new-instance p0, Landroid/os/RemoteException;

    const-string v0, "The com.google.android.gms.auth.accounts provider is not available."

    invoke-direct {p0, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lbeh; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lbeg; {:try_start_4 .. :try_end_4} :catch_1

    .line 30
    :catch_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    goto :goto_3

    :catch_3
    move-exception p0

    :goto_3
    sget-object v0, Laok;->b:Laqd;

    new-array v2, v1, [Ljava/lang/Object;

    .line 28
    const-string v3, "Unable to get accounts on the device."

    invoke-virtual {v0, v3, p0, v2}, Laqd;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    new-array v2, v1, [Landroid/accounts/Account;

    goto :goto_4

    .line 26
    :cond_3
    const-class v1, Landroid/accounts/AccountManager;

    .line 29
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/accounts/AccountManager;

    .line 30
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 26
    :goto_4
    return-object v2
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 3

    .line 31
    invoke-static {p0}, Laok;->a(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object p0

    array-length p0, p0

    const/4 v0, 0x0

    if-lez p0, :cond_0

    sget-object p0, Laok;->b:Laqd;

    new-array v0, v0, [Ljava/lang/Object;

    .line 32
    const-string v1, "There is at least 1 Google account present on the device."

    invoke-virtual {p0, v1, v0}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-object p0, Laok;->b:Laqd;

    new-array v1, v0, [Ljava/lang/Object;

    .line 33
    const-string v2, "No Google account is found on the device."

    invoke-virtual {p0, v2, v1}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "cn.google"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    const/4 v1, 0x1

    if-eq v1, p0, :cond_0

    const-string p0, "com.google"

    return-object p0

    :cond_0
    return-object v0
.end method
