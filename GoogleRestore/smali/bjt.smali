.class public final Lbjt;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.google.android.gms.common.net.SocketFactoryCreatorImpl"

    iput-object v0, p0, Lbjt;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lbjt;->b:Ljava/lang/Object;

    if-nez v0, :cond_3

    .line 1
    invoke-static {p1}, Lbir;->a(Ljava/lang/Object;)V

    .line 2
    invoke-static {p1}, Lbei;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lbjt;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.common.net.ISocketFactoryCreator"

    .line 7
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 8
    instance-of v1, v0, Lbjc;

    if-eqz v1, :cond_1

    .line 9
    move-object p1, v0

    check-cast p1, Lbjc;

    goto :goto_0

    .line 12
    :cond_1
    new-instance v0, Lbjc;

    .line 10
    invoke-direct {v0, p1}, Lbjc;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    .line 6
    :goto_0
    iput-object p1, p0, Lbjt;->b:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 9
    :catch_0
    move-exception p1

    new-instance v0, Lbjs;

    .line 11
    const-string v1, "Could not access creator."

    invoke-direct {v0, v1, p1}, Lbjs;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 13
    :catch_1
    move-exception p1

    new-instance v0, Lbjs;

    .line 12
    const-string v1, "Could not instantiate creator."

    invoke-direct {v0, v1, p1}, Lbjs;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 11
    :catch_2
    move-exception p1

    new-instance v0, Lbjs;

    .line 13
    const-string v1, "Could not load creator class."

    invoke-direct {v0, v1, p1}, Lbjs;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 2
    :cond_2
    new-instance p1, Lbjs;

    .line 3
    invoke-direct {p1}, Lbjs;-><init>()V

    throw p1

    .line 6
    :cond_3
    :goto_1
    iget-object p1, p0, Lbjt;->b:Ljava/lang/Object;

    return-object p1
.end method
