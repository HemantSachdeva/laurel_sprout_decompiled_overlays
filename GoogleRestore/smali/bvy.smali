.class final Lbvy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbtm;
.implements Lbvt;


# static fields
.field public static final a:Lcua;


# instance fields
.field public final b:Lczw;

.field public final c:Leip;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/libraries/performance/primes/metrics/cpuprofiling/CpuProfilingService"

    invoke-static {v0}, Lcua;->a(Ljava/lang/String;)Lcua;

    move-result-object v0

    sput-object v0, Lbvy;->a:Lcua;

    return-void
.end method

.method public constructor <init>(Lbvr;Landroid/app/Application;Lczw;Leip;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcbh;->a()Lcbh;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lbvr;->a(Ljava/util/concurrent/Executor;Lcbh;)Lbvq;

    iput-object p3, p0, Lbvy;->b:Lczw;

    iput-object p4, p0, Lbvy;->c:Leip;

    new-instance p1, Lbvw;

    .line 4
    invoke-direct {p1, p0, p2}, Lbvw;-><init>(Lbvy;Landroid/app/Application;)V

    .line 5
    invoke-static {p1}, Lcrq;->a(Lcrm;)Lcrm;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 2

    new-instance v0, Lbvx;

    .line 6
    invoke-direct {v0, p0}, Lbvx;-><init>(Lbvy;)V

    iget-object v1, p0, Lbvy;->b:Lczw;

    .line 7
    invoke-static {v0, v1}, Ldab;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lczu;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lbte;->a(Lczu;)V

    return-void
.end method

.method public final declared-synchronized d()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbvy;->c:Leip;

    check-cast v0, Lbwc;

    .line 8
    invoke-virtual {v0}, Lbwc;->b()Lbvv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 8
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
