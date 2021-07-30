.class public final Lart;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lacw;

.field public static final e:Lart;


# instance fields
.field public b:I

.field public c:I

.field public final d:I

.field private f:Lczu;

.field private final g:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lacw;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "TransportSwitcher"

    aput-object v4, v2, v3

    .line 1
    invoke-direct {v0, v2}, Lacw;-><init>([Ljava/lang/String;)V

    sput-object v0, Lart;->a:Lacw;

    new-instance v0, Lart;

    .line 2
    const/16 v2, 0xa

    invoke-static {v1, v2}, Laqr;->a(II)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    .line 3
    invoke-direct {v0, v1}, Lart;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    sput-object v0, Lart;->e:Lart;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lart;->b:I

    iput v0, p0, Lart;->c:I

    .line 4
    invoke-static {p1}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lart;->g:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    sget-object p1, Land;->D:Lccv;

    invoke-virtual {p1}, Lccv;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lart;->d:I

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "GMS_TRANSPORT"

    return-object p0

    :cond_0
    const-string p0, "UNKNOWN_TRANSPORT"

    return-object p0
.end method

.method static synthetic a(Lart;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lart;->f:Lczu;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)Lczu;
    .locals 10

    monitor-enter p0

    :try_start_0
    const-string v0, "Cannot switch to UNKNOWN_TRANSPORT!"

    .line 6
    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcrj;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lart;->f:Lczu;

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lart;->c:I

    if-ne v0, v1, :cond_0

    sget-object p1, Lart;->a:Lacw;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v1}, Lart;->a(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "Asked to switch to %s but was already switching to that"

    .line 7
    invoke-virtual {p1, v1, v0}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lart;->f:Lczu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    sget-object v0, Lart;->a:Lacw;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1}, Lart;->a(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    iget v5, p0, Lart;->c:I

    invoke-static {v5}, Lart;->a(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "Asked to switch to %s, so cancelled in-progress switch to %s"

    .line 8
    invoke-virtual {v0, v5, v4}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iput v3, p0, Lart;->b:I

    iget-object v0, p0, Lart;->f:Lczu;

    .line 9
    invoke-interface {v0, v1}, Lczu;->cancel(Z)Z

    goto :goto_0

    .line 16
    :cond_1
    iget v0, p0, Lart;->b:I

    if-ne v0, v1, :cond_2

    sget-object p1, Lart;->a:Lacw;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v1}, Lart;->a(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "Asked to switch to %s but that was current transport and no switch in progress."

    .line 17
    invoke-virtual {p1, v1, v0}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 18
    invoke-static {p1}, Ldab;->a(Ljava/lang/Object;)Lczu;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 9
    :cond_2
    :goto_0
    :try_start_2
    sget-object v0, Lart;->a:Lacw;

    new-array v2, v2, [Ljava/lang/Object;

    iget v4, p0, Lart;->b:I

    invoke-static {v4}, Lart;->a(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1}, Lart;->a(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v3, "Starting switch from %s to %s"

    .line 10
    invoke-virtual {v0, v3, v2}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iput v1, p0, Lart;->c:I

    .line 11
    new-instance v0, Laqm;

    new-instance v5, Larq;

    invoke-direct {v5, p1}, Larq;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lart;->g:Ljava/util/concurrent/ScheduledExecutorService;

    iget v7, p0, Lart;->d:I

    new-instance v8, Larr;

    invoke-direct {v8, p0}, Larr;-><init>(Lart;)V

    sget-object p1, Land;->C:Lccv;

    .line 12
    invoke-virtual {p1}, Lccv;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 13
    invoke-static {v1, v2, p1}, Lapa;->a(JLjava/util/concurrent/TimeUnit;)Lapa;

    move-result-object v9

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Laqm;-><init>(Lcrm;Ljava/util/concurrent/ScheduledExecutorService;ILaql;Lapa;)V

    sget-object p1, Land;->E:Lccv;

    .line 14
    invoke-virtual {p1}, Lccv;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lart;->g:Ljava/util/concurrent/ScheduledExecutorService;

    .line 15
    invoke-static {v0, v1, v2, p1, v3}, Ldab;->a(Lczu;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lczu;

    move-result-object p1

    iput-object p1, p0, Lart;->f:Lczu;

    new-instance v0, Lars;

    .line 16
    invoke-direct {v0, p0}, Lars;-><init>(Lart;)V

    iget-object v1, p0, Lart;->g:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {p1, v0, v1}, Ldab;->a(Lczu;Lczm;Ljava/util/concurrent/Executor;)V

    iget-object p1, p0, Lart;->f:Lczu;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 5
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
