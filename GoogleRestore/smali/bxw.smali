.class final Lbxw;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcua;


# instance fields
.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public c:Ljava/util/concurrent/ScheduledFuture;

.field public d:Ljava/util/concurrent/ScheduledFuture;

.field public final e:Lczw;

.field public final f:Lbqy;

.field public final g:Lbqu;

.field public final h:Lbqv;

.field public final i:Lbxz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/libraries/performance/primes/metrics/memory/MemoryMetricMonitor"

    invoke-static {v0}, Lcua;->a(Ljava/lang/String;)Lcua;

    move-result-object v0

    sput-object v0, Lbxw;->a:Lcua;

    return-void
.end method

.method public constructor <init>(Lbxz;Landroid/app/Application;Lczw;)V
    .locals 2

    .line 1
    invoke-static {p2}, Lbqy;->a(Landroid/app/Application;)Lbqy;

    move-result-object p2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lbxw;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lbxt;

    .line 3
    invoke-direct {v0, p0}, Lbxt;-><init>(Lbxw;)V

    iput-object v0, p0, Lbxw;->g:Lbqu;

    new-instance v0, Lbxv;

    .line 4
    invoke-direct {v0, p0}, Lbxv;-><init>(Lbxw;)V

    iput-object v0, p0, Lbxw;->h:Lbqv;

    iput-object p1, p0, Lbxw;->i:Lbxz;

    iput-object p3, p0, Lbxw;->e:Lczw;

    iput-object p2, p0, Lbxw;->f:Lbqy;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lbxw;->c:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    iput-object v1, p0, Lbxw;->c:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    iget-object v0, p0, Lbxw;->d:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    iput-object v1, p0, Lbxw;->d:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    return-void
.end method
