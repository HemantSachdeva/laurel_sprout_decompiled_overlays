.class public final Lbid;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final f:Ljava/lang/Object;

.field private static g:Lbid;


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Landroid/content/Context;

.field public final c:Landroid/os/Handler;

.field public final d:Lbjd;

.field public final e:J

.field private final h:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbid;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbid;->a:Ljava/util/HashMap;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lbid;->b:Landroid/content/Context;

    new-instance v0, Lblo;

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    new-instance v1, Lbif;

    .line 11
    invoke-direct {v1, p0}, Lbif;-><init>(Lbid;)V

    .line 10
    invoke-direct {v0, p1, v1}, Lblo;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lbid;->c:Landroid/os/Handler;

    .line 12
    invoke-static {}, Lbjd;->a()Lbjd;

    move-result-object p1

    iput-object p1, p0, Lbid;->d:Lbjd;

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lbid;->h:J

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lbid;->e:J

    return-void
.end method

.method public static a(Landroid/content/Context;)Lbid;
    .locals 2

    sget-object v0, Lbid;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lbid;->g:Lbid;

    if-nez v1, :cond_0

    new-instance v1, Lbid;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lbid;-><init>(Landroid/content/Context;)V

    sput-object v1, Lbid;->g:Lbid;

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lbid;->g:Lbid;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final a(Landroid/content/ComponentName;Landroid/content/ServiceConnection;)V
    .locals 1

    .line 5
    new-instance v0, Lbic;

    .line 6
    invoke-direct {v0, p1}, Lbic;-><init>(Landroid/content/ComponentName;)V

    .line 5
    invoke-virtual {p0, v0, p2}, Lbid;->a(Lbic;Landroid/content/ServiceConnection;)V

    return-void
.end method

.method protected final a(Lbic;Landroid/content/ServiceConnection;)V
    .locals 3

    const-string v0, "ServiceConnection must not be null"

    .line 28
    invoke-static {p2, v0}, Lbir;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lbid;->a:Ljava/util/HashMap;

    .line 29
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbid;->a:Ljava/util/HashMap;

    .line 30
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbie;

    if-eqz v1, :cond_2

    .line 32
    invoke-virtual {v1, p2}, Lbie;->a(Landroid/content/ServiceConnection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    iget-object v2, v1, Lbie;->a:Ljava/util/Map;

    .line 33
    invoke-interface {v2, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-virtual {v1}, Lbie;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lbid;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 35
    invoke-virtual {p2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lbid;->c:Landroid/os/Handler;

    iget-wide v1, p0, Lbid;->h:J

    .line 36
    invoke-virtual {p2, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 37
    :cond_0
    monitor-exit v0

    return-void

    .line 32
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 38
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x4c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Trying to unbind a GmsServiceConnection  that was not bound before.  config="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 30
    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 31
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x32

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Nonexistent connection status for service config: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 37
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/String;Landroid/content/ServiceConnection;Z)V
    .locals 1

    .line 7
    new-instance v0, Lbic;

    invoke-direct {v0, p1, p3}, Lbic;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0, p2}, Lbid;->a(Lbic;Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public final a(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)Z
    .locals 1

    .line 1
    new-instance v0, Lbic;

    .line 2
    invoke-direct {v0, p1}, Lbic;-><init>(Landroid/content/ComponentName;)V

    .line 1
    invoke-virtual {p0, v0, p2, p3}, Lbid;->a(Lbic;Landroid/content/ServiceConnection;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected final a(Lbic;Landroid/content/ServiceConnection;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "ServiceConnection must not be null"

    .line 13
    invoke-static {p2, v0}, Lbir;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lbid;->a:Ljava/util/HashMap;

    .line 14
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbid;->a:Ljava/util/HashMap;

    .line 15
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbie;

    if-nez v1, :cond_0

    new-instance v1, Lbie;

    .line 16
    invoke-direct {v1, p0, p1}, Lbie;-><init>(Lbid;Lbic;)V

    .line 17
    invoke-virtual {v1, p2, p2}, Lbie;->a(Landroid/content/ServiceConnection;Landroid/content/ServiceConnection;)V

    .line 18
    invoke-virtual {v1, p3}, Lbie;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lbid;->a:Ljava/util/HashMap;

    .line 19
    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 26
    :cond_0
    iget-object v2, p0, Lbid;->c:Landroid/os/Handler;

    const/4 v3, 0x0

    .line 20
    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {v1, p2}, Lbie;->a(Landroid/content/ServiceConnection;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 23
    invoke-virtual {v1, p2, p2}, Lbie;->a(Landroid/content/ServiceConnection;Landroid/content/ServiceConnection;)V

    iget p1, v1, Lbie;->b:I

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {v1, p3}, Lbie;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p1, v1, Lbie;->f:Landroid/content/ComponentName;

    iget-object p3, v1, Lbie;->d:Landroid/os/IBinder;

    .line 24
    invoke-interface {p2, p1, p3}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 19
    :goto_0
    iget-boolean p1, v1, Lbie;->c:Z

    .line 26
    monitor-exit v0

    return p1

    .line 21
    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 22
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x51

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Trying to bind a GmsServiceConnection that was already connected before.  config="

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 24
    :catchall_0
    move-exception p1

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
