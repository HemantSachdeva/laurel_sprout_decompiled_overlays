.class public final Lbgj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final a:Lcom/google/android/gms/common/api/Status;

.field public static final b:Lcom/google/android/gms/common/api/Status;

.field public static final f:Ljava/lang/Object;

.field private static p:Lbgj;


# instance fields
.field public final c:J

.field public final d:J

.field public e:J

.field public final g:Landroid/content/Context;

.field public final h:Lbdy;

.field public final i:Lbij;

.field public final j:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final k:Ljava/util/Map;

.field public l:Lbfy;

.field public final m:Ljava/util/Set;

.field public final n:Landroid/os/Handler;

.field public volatile o:Z

.field private final q:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final r:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x4

    const-string v2, "Sign-out occurred while this API call was in progress."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lbgj;->a:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 2
    const-string v2, "The user must be signed in to make this API call."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lbgj;->b:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbgj;->f:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lbdy;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lbgj;->c:J

    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lbgj;->d:J

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lbgj;->e:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lbgj;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lbgj;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v3, 0x5

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-direct {v0, v3, v4, v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lbgj;->k:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lbgj;->l:Lbfy;

    .line 6
    new-instance v0, Ltj;

    invoke-direct {v0}, Ltj;-><init>()V

    iput-object v0, p0, Lbgj;->m:Ljava/util/Set;

    new-instance v0, Ltj;

    .line 7
    invoke-direct {v0}, Ltj;-><init>()V

    iput-object v0, p0, Lbgj;->r:Ljava/util/Set;

    iput-boolean v1, p0, Lbgj;->o:Z

    iput-object p1, p0, Lbgj;->g:Landroid/content/Context;

    new-instance v0, Lblo;

    .line 8
    invoke-direct {v0, p2, p0}, Lblo;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lbgj;->n:Landroid/os/Handler;

    iput-object p3, p0, Lbgj;->h:Lbdy;

    new-instance p2, Lbij;

    .line 9
    invoke-direct {p2, p3}, Lbij;-><init>(Lbdz;)V

    iput-object p2, p0, Lbgj;->i:Lbij;

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    sget-object p2, Lbjg;->b:Ljava/lang/Boolean;

    if-nez p2, :cond_0

    .line 11
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    const-string p2, "android.hardware.type.automotive"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lbjg;->b:Ljava/lang/Boolean;

    :cond_0
    sget-object p1, Lbjg;->b:Ljava/lang/Boolean;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v2, p0, Lbgj;->o:Z

    :cond_1
    const/4 p1, 0x6

    .line 14
    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Lbgj;
    .locals 4

    sget-object v0, Lbgj;->f:Ljava/lang/Object;

    .line 15
    monitor-enter v0

    :try_start_0
    sget-object v1, Lbgj;->p:Lbgj;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "GoogleApiHandler"

    const/16 v3, 0x9

    .line 16
    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 17
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 18
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lbgj;

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v3, Lbdy;->a:Lbdy;

    invoke-direct {v2, p0, v1, v3}, Lbgj;-><init>(Landroid/content/Context;Landroid/os/Looper;Lbdy;)V

    sput-object v2, Lbgj;->p:Lbgj;

    :cond_0
    sget-object p0, Lbgj;->p:Lbgj;

    .line 20
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a(Lbfk;Lbds;)Lcom/google/android/gms/common/api/Status;
    .locals 7

    .line 142
    new-instance v6, Lcom/google/android/gms/common/api/Status;

    iget-object p0, p0, Lbfk;->a:Lbeo;

    iget-object p0, p0, Lbeo;->a:Ljava/lang/String;

    .line 143
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x3f

    add-int/2addr v1, v2

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "API: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not available on this device. Connection failed with: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lbds;->d:Landroid/app/PendingIntent;

    .line 144
    const/4 v1, 0x1

    const/16 v2, 0x11

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/api/Status;-><init>(IILjava/lang/String;Landroid/app/PendingIntent;Lbds;)V

    return-object v6
.end method

.method private final b(Lbes;)Lbgf;
    .locals 2

    iget-object v0, p1, Lbes;->d:Lbfk;

    iget-object v1, p0, Lbgj;->k:Ljava/util/Map;

    .line 127
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbgf;

    if-nez v1, :cond_0

    new-instance v1, Lbgf;

    .line 128
    invoke-direct {v1, p0, p1}, Lbgf;-><init>(Lbgj;Lbes;)V

    iget-object p1, p0, Lbgj;->k:Ljava/util/Map;

    .line 129
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 132
    :cond_0
    nop

    .line 130
    :goto_0
    invoke-virtual {v1}, Lbgf;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lbgj;->r:Ljava/util/Set;

    .line 131
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_1
    invoke-virtual {v1}, Lbgf;->h()V

    return-object v1
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lbgj;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 22
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method public final a(Lbes;)V
    .locals 2

    iget-object v0, p0, Lbgj;->n:Landroid/os/Handler;

    .line 126
    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a(Lbfy;)V
    .locals 2

    sget-object v0, Lbgj;->f:Ljava/lang/Object;

    .line 133
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbgj;->l:Lbfy;

    if-eq v1, p1, :cond_0

    iput-object p1, p0, Lbgj;->l:Lbfy;

    iget-object v1, p0, Lbgj;->m:Ljava/util/Set;

    .line 134
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    :cond_0
    iget-object v1, p0, Lbgj;->m:Ljava/util/Set;

    iget-object p1, p1, Lbfy;->e:Ltj;

    .line 135
    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 136
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final a(Lbds;I)Z
    .locals 5

    iget-object v0, p0, Lbgj;->h:Lbdy;

    iget-object v1, p0, Lbgj;->g:Landroid/content/Context;

    .line 137
    invoke-virtual {p1}, Lbds;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lbds;->d:Landroid/app/PendingIntent;

    goto :goto_0

    .line 141
    :cond_0
    iget v2, p1, Lbds;->c:I

    const/4 v3, 0x0

    .line 138
    invoke-virtual {v0, v1, v2, v3}, Lbdz;->b(Landroid/content/Context;ILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 137
    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget p1, p1, Lbds;->c:I

    .line 139
    const/4 v4, 0x1

    invoke-static {v1, v2, p2, v4}, Lcom/google/android/gms/common/api/GoogleApiActivity;->a(Landroid/content/Context;Landroid/app/PendingIntent;IZ)Landroid/content/Intent;

    move-result-object p2

    const/high16 v2, 0x8000000

    .line 140
    invoke-static {v1, v3, p2, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 141
    invoke-virtual {v0, v1, p1, p2}, Lbdy;->a(Landroid/content/Context;ILandroid/app/PendingIntent;)V

    return v4

    :cond_1
    return v3
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lbgj;->n:Landroid/os/Handler;

    .line 125
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final b(Lbds;I)V
    .locals 3

    .line 122
    invoke-virtual {p0, p1, p2}, Lbgj;->a(Lbds;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbgj;->n:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 123
    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 124
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 10

    .line 23
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/32 v1, 0x493e0

    const-string v3, "GoogleApiManager"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    .line 121
    iget p1, p1, Landroid/os/Message;->what:I

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1f

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown message id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 43
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lbgg;

    iget-object v0, p0, Lbgj;->k:Ljava/util/Map;

    .line 44
    iget-object v1, p1, Lbgg;->a:Lbfk;

    .line 45
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lbgj;->k:Ljava/util/Map;

    .line 46
    iget-object v1, p1, Lbgg;->a:Lbfk;

    .line 47
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbgf;

    iget-object v1, v0, Lbgf;->h:Ljava/util/List;

    .line 48
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v0, Lbgf;->i:Lbgj;

    .line 49
    iget-object v1, v1, Lbgj;->n:Landroid/os/Handler;

    const/16 v2, 0xf

    .line 50
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v1, v0, Lbgf;->i:Lbgj;

    .line 51
    iget-object v1, v1, Lbgj;->n:Landroid/os/Handler;

    const/16 v2, 0x10

    .line 52
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 53
    iget-object p1, p1, Lbgg;->b:Lbdv;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lbgf;->a:Ljava/util/Queue;

    .line 54
    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, v0, Lbgf;->a:Ljava/util/Queue;

    .line 55
    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbfj;

    .line 56
    instance-of v5, v3, Lbfe;

    if-eqz v5, :cond_0

    .line 57
    move-object v5, v3

    check-cast v5, Lbfe;

    invoke-virtual {v5, v0}, Lbfe;->a(Lbgf;)[Lbdv;

    move-result-object v5

    if-eqz v5, :cond_0

    array-length v7, v5

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_0

    .line 58
    aget-object v9, v5, v8

    invoke-static {v9, p1}, Lbir;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    if-ltz v8, :cond_0

    .line 59
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    :goto_2
    if-ge v4, v2, :cond_11

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 60
    check-cast v3, Lbfj;

    iget-object v5, v0, Lbgf;->a:Ljava/util/Queue;

    .line 61
    invoke-interface {v5, v3}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    new-instance v5, Lbfd;

    .line 62
    invoke-direct {v5, p1}, Lbfd;-><init>(Lbdv;)V

    invoke-virtual {v3, v5}, Lbfj;->a(Ljava/lang/Exception;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 63
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lbgg;

    iget-object v0, p0, Lbgj;->k:Ljava/util/Map;

    .line 64
    iget-object v1, p1, Lbgg;->a:Lbfk;

    .line 65
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lbgj;->k:Ljava/util/Map;

    .line 66
    iget-object v1, p1, Lbgg;->a:Lbfk;

    .line 67
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbgf;

    iget-object v1, v0, Lbgf;->h:Ljava/util/List;

    .line 68
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-boolean p1, v0, Lbgf;->g:Z

    if-nez p1, :cond_11

    iget-object p1, v0, Lbgf;->b:Lben;

    .line 69
    invoke-interface {p1}, Lben;->f()Z

    move-result p1

    if-nez p1, :cond_3

    .line 70
    invoke-virtual {v0}, Lbgf;->h()V

    goto/16 :goto_a

    .line 71
    :cond_3
    invoke-virtual {v0}, Lbgf;->c()V

    goto/16 :goto_a

    .line 72
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lbqb;

    throw v5

    .line 71
    :pswitch_3
    iget-object v0, p0, Lbgj;->k:Ljava/util/Map;

    .line 73
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lbgj;->k:Ljava/util/Map;

    .line 74
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbgf;

    iget-object v0, p1, Lbgf;->i:Lbgj;

    .line 75
    iget-object v0, v0, Lbgj;->n:Landroid/os/Handler;

    .line 76
    invoke-static {v0}, Lbir;->a(Landroid/os/Handler;)V

    iget-object v0, p1, Lbgf;->b:Lben;

    .line 77
    invoke-interface {v0}, Lben;->f()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p1, Lbgf;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p1, Lbgf;->d:Lbfx;

    iget-object v1, v0, Lbfx;->a:Ljava/util/Map;

    .line 78
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, v0, Lbfx;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    .line 79
    :cond_4
    iget-object p1, p1, Lbgf;->b:Lben;

    .line 80
    const-string v0, "Timing out service connection."

    invoke-interface {p1, v0}, Lben;->a(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 79
    :cond_5
    :goto_3
    invoke-virtual {p1}, Lbgf;->g()V

    goto/16 :goto_a

    .line 80
    :pswitch_4
    iget-object v0, p0, Lbgj;->k:Ljava/util/Map;

    .line 81
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lbgj;->k:Ljava/util/Map;

    .line 82
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbgf;

    iget-object v0, p1, Lbgf;->i:Lbgj;

    .line 83
    iget-object v0, v0, Lbgj;->n:Landroid/os/Handler;

    .line 84
    invoke-static {v0}, Lbir;->a(Landroid/os/Handler;)V

    iget-boolean v0, p1, Lbgf;->g:Z

    if-eqz v0, :cond_11

    .line 85
    invoke-virtual {p1}, Lbgf;->f()V

    iget-object v0, p1, Lbgf;->i:Lbgj;

    .line 86
    iget-object v1, v0, Lbgj;->h:Lbdy;

    .line 87
    iget-object v0, v0, Lbgj;->g:Landroid/content/Context;

    .line 88
    invoke-virtual {v1, v0}, Lbdz;->a(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_6

    .line 89
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x15

    const-string v2, "Connection timed out waiting for Google Play services update to complete."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_4

    .line 90
    :cond_6
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x16

    const-string v2, "API failed to connect while resuming due to an unknown error."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 91
    :goto_4
    invoke-virtual {p1, v0}, Lbgf;->a(Lcom/google/android/gms/common/api/Status;)V

    iget-object p1, p1, Lbgf;->b:Lben;

    .line 92
    const-string v0, "Timing out connection while resuming."

    invoke-interface {p1, v0}, Lben;->a(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 38
    :pswitch_5
    iget-object p1, p0, Lbgj;->r:Ljava/util/Set;

    .line 39
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfk;

    iget-object v1, p0, Lbgj;->k:Ljava/util/Map;

    .line 40
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbgf;

    if-eqz v0, :cond_7

    .line 41
    invoke-virtual {v0}, Lbgf;->d()V

    goto :goto_5

    :cond_8
    iget-object p1, p0, Lbgj;->r:Ljava/util/Set;

    .line 42
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    goto/16 :goto_a

    .line 90
    :pswitch_6
    iget-object v0, p0, Lbgj;->k:Ljava/util/Map;

    .line 93
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lbgj;->k:Ljava/util/Map;

    .line 94
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbgf;

    iget-object v0, p1, Lbgf;->i:Lbgj;

    .line 95
    iget-object v0, v0, Lbgj;->n:Landroid/os/Handler;

    .line 96
    invoke-static {v0}, Lbir;->a(Landroid/os/Handler;)V

    iget-boolean v0, p1, Lbgf;->g:Z

    if-eqz v0, :cond_11

    .line 97
    invoke-virtual {p1}, Lbgf;->h()V

    goto/16 :goto_a

    .line 98
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lbes;

    invoke-direct {p0, p1}, Lbgj;->b(Lbes;)Lbgf;

    goto/16 :goto_a

    .line 26
    :pswitch_8
    iget-object p1, p0, Lbgj;->g:Landroid/content/Context;

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_11

    iget-object p1, p0, Lbgj;->g:Landroid/content/Context;

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    .line 29
    invoke-static {p1}, Lbfm;->a(Landroid/app/Application;)V

    sget-object p1, Lbfm;->a:Lbfm;

    new-instance v0, Lbga;

    .line 30
    invoke-direct {v0, p0}, Lbga;-><init>(Lbgj;)V

    .line 31
    invoke-virtual {p1, v0}, Lbfm;->a(Lbfl;)V

    sget-object p1, Lbfm;->a:Lbfm;

    iget-object v0, p1, Lbfm;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_9

    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 34
    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 35
    invoke-static {v0}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    iget-object v3, p1, Lbfm;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v3

    if-nez v3, :cond_9

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v3, 0x64

    if-le v0, v3, :cond_9

    iget-object v0, p1, Lbfm;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 38
    :cond_9
    invoke-virtual {p1}, Lbfm;->a()Z

    move-result p1

    if-nez p1, :cond_11

    iput-wide v1, p0, Lbgj;->e:J

    goto/16 :goto_a

    .line 99
    :pswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lbds;

    iget-object v1, p0, Lbgj;->k:Ljava/util/Map;

    .line 100
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbgf;

    iget v4, v2, Lbgf;->f:I

    if-ne v4, v0, :cond_a

    move-object v5, v2

    goto :goto_6

    .line 107
    :cond_b
    nop

    .line 100
    :goto_6
    if-eqz v5, :cond_d

    iget v0, p1, Lbds;->c:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_c

    .line 103
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 104
    invoke-static {}, Lbei;->a()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lbds;->e:Ljava/lang/String;

    .line 105
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x45

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Error resolution was canceled by the user, original error message: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x11

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 106
    invoke-virtual {v5, v0}, Lbgf;->a(Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_a

    :cond_c
    iget-object v0, v5, Lbgf;->c:Lbfk;

    .line 101
    invoke-static {v0, p1}, Lbgj;->a(Lbfk;Lbds;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 102
    invoke-virtual {v5, p1}, Lbgf;->a(Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_a

    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v1, 0x4c

    .line 107
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Could not find API instance "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " while trying to fail enqueued calls."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-static {v3, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a

    .line 108
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lbgq;

    iget-object v0, p0, Lbgj;->k:Ljava/util/Map;

    .line 109
    iget-object v1, p1, Lbgq;->c:Lbes;

    iget-object v1, v1, Lbes;->d:Lbfk;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbgf;

    if-nez v0, :cond_e

    .line 110
    iget-object v0, p1, Lbgq;->c:Lbes;

    invoke-direct {p0, v0}, Lbgj;->b(Lbes;)Lbgf;

    move-result-object v0

    .line 111
    :cond_e
    invoke-virtual {v0}, Lbgf;->i()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lbgj;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p1, Lbgq;->b:I

    if-eq v1, v2, :cond_f

    .line 113
    iget-object p1, p1, Lbgq;->a:Lbfj;

    sget-object v1, Lbgj;->a:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1, v1}, Lbfj;->a(Lcom/google/android/gms/common/api/Status;)V

    .line 114
    invoke-virtual {v0}, Lbgf;->d()V

    goto :goto_a

    .line 112
    :cond_f
    iget-object p1, p1, Lbgq;->a:Lbfj;

    invoke-virtual {v0, p1}, Lbgf;->a(Lbfj;)V

    goto :goto_a

    .line 23
    :pswitch_b
    iget-object p1, p0, Lbgj;->k:Ljava/util/Map;

    .line 24
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbgf;

    .line 25
    invoke-virtual {v0}, Lbgf;->e()V

    .line 26
    invoke-virtual {v0}, Lbgf;->h()V

    goto :goto_7

    .line 115
    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lbms;

    throw v5

    .line 112
    :pswitch_d
    nop

    .line 116
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eq v6, p1, :cond_10

    goto :goto_8

    .line 120
    :cond_10
    const-wide/16 v1, 0x2710

    .line 116
    :goto_8
    iput-wide v1, p0, Lbgj;->e:J

    iget-object p1, p0, Lbgj;->n:Landroid/os/Handler;

    .line 117
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lbgj;->k:Ljava/util/Map;

    .line 118
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbfk;

    iget-object v2, p0, Lbgj;->n:Landroid/os/Handler;

    .line 119
    invoke-virtual {v2, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-wide v3, p0, Lbgj;->e:J

    .line 120
    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_9

    .line 26
    :cond_11
    :goto_a
    return v6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
