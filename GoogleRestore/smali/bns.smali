.class public final Lbns;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static b:Lbns;


# instance fields
.field a:Lbjc;

.field private final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbns;->c:Ljava/lang/Object;

    return-void
.end method

.method public static a()Lbns;
    .locals 1

    sget-object v0, Lbns;->b:Lbns;

    if-nez v0, :cond_0

    new-instance v0, Lbns;

    .line 1
    invoke-direct {v0}, Lbns;-><init>()V

    sput-object v0, Lbns;->b:Lbns;

    :cond_0
    sget-object v0, Lbns;->b:Lbns;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;[Ljavax/net/ssl/TrustManager;Z)Ljavax/net/ssl/SSLSocketFactory;
    .locals 5

    :try_start_0
    iget-object v0, p0, Lbns;->c:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lbjs; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v1, p0, Lbns;->a:Lbjc;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const-string v1, "Context must not be null"

    .line 2
    invoke-static {p1, v1}, Lbir;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    :try_start_2
    sget-object v1, Lbkg;->b:Lbkf;

    const-string v3, "providerinstaller"

    .line 4
    invoke-static {p1, v1, v3}, Lbkg;->a(Landroid/content/Context;Lbkf;Ljava/lang/String;)Lbkg;

    move-result-object v1

    const-string v3, "com.google.android.gms.common.net.SocketFactoryCreatorImplV2"

    .line 5
    invoke-virtual {v1, v3}, Lbkg;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v3, v2

    goto :goto_0

    .line 27
    :cond_0
    const-string v3, "com.google.android.gms.common.net.ISocketFactoryCreator"

    .line 6
    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    .line 7
    instance-of v4, v3, Lbjc;

    if-eqz v4, :cond_1

    .line 8
    check-cast v3, Lbjc;

    goto :goto_0

    :cond_1
    new-instance v3, Lbjc;

    .line 9
    invoke-direct {v3, v1}, Lbjc;-><init>(Landroid/os/IBinder;)V

    .line 5
    :goto_0
    iput-object v3, p0, Lbns;->a:Lbjc;
    :try_end_2
    .catch Lbkc; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 13
    :catch_0
    move-exception v1

    :try_start_3
    new-instance v1, Lbjt;

    .line 10
    invoke-direct {v1}, Lbjt;-><init>()V

    .line 11
    invoke-virtual {v1, p1}, Lbjt;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbjc;

    iput-object v1, p0, Lbns;->a:Lbjc;

    .line 5
    :cond_2
    :goto_1
    iget-object v1, p0, Lbns;->a:Lbjc;

    .line 12
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 14
    :try_start_4
    invoke-static {p1}, Lbjq;->a(Ljava/lang/Object;)Lbjr;

    move-result-object p1

    .line 15
    invoke-static {v2}, Lbjq;->a(Ljava/lang/Object;)Lbjr;

    move-result-object v0

    .line 16
    invoke-static {p2}, Lbjq;->a(Ljava/lang/Object;)Lbjr;

    move-result-object p2

    .line 17
    invoke-virtual {v1}, Lact;->h()Landroid/os/Parcel;

    move-result-object v3

    .line 18
    invoke-static {v3, p1}, Lacv;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 19
    invoke-static {v3, v0}, Lacv;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 20
    invoke-static {v3, p2}, Lacv;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 21
    invoke-static {v3, p3}, Lacv;->a(Landroid/os/Parcel;Z)V

    const/4 p1, 0x1

    .line 22
    invoke-virtual {v1, p1, v3}, Lact;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_3

    goto :goto_2

    .line 29
    :cond_3
    const-string p3, "com.google.android.gms.dynamic.IObjectWrapper"

    .line 24
    invoke-interface {p2, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    .line 25
    instance-of v0, p3, Lbjr;

    if-eqz v0, :cond_4

    .line 26
    move-object v2, p3

    check-cast v2, Lbjr;

    goto :goto_2

    :cond_4
    new-instance v2, Lbjp;

    .line 27
    invoke-direct {v2, p2}, Lbjp;-><init>(Landroid/os/IBinder;)V

    .line 28
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 29
    invoke-static {v2}, Lbjq;->a(Lbjr;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/SSLSocketFactory;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lbjs; {:try_start_4 .. :try_end_4} :catch_1

    return-object p1

    .line 30
    :catchall_0
    move-exception p1

    .line 13
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lbjs; {:try_start_6 .. :try_end_6} :catch_1

    .line 9
    :catch_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    :goto_3
    new-instance p2, Ljava/lang/RuntimeException;

    .line 30
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
