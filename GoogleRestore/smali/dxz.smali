.class public final Ldxz;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:I

.field public final b:Ldyn;

.field public final c:Ldzb;

.field public final d:Ldyf;

.field public final e:Ljava/util/concurrent/Executor;

.field private final f:Ljava/util/concurrent/ScheduledExecutorService;

.field private final g:Ldvj;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ldyn;Ldzb;Ldyf;Ljava/util/concurrent/ScheduledExecutorService;Ldvj;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    const-string v0, "defaultPort not set"

    invoke-static {p1, v0}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Ldxz;->a:I

    .line 2
    const-string p1, "proxyDetector not set"

    invoke-static {p2, p1}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Ldxz;->b:Ldyn;

    .line 3
    const-string p1, "syncContext not set"

    invoke-static {p3, p1}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p3, p0, Ldxz;->c:Ldzb;

    .line 4
    const-string p1, "serviceConfigParser not set"

    invoke-static {p4, p1}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p4, p0, Ldxz;->d:Ldyf;

    iput-object p5, p0, Ldxz;->f:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p6, p0, Ldxz;->g:Ldvj;

    iput-object p7, p0, Ldxz;->e:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 5
    invoke-static {p0}, Lcqt;->a(Ljava/lang/Object;)Lcqs;

    move-result-object v0

    iget v1, p0, Ldxz;->a:I

    .line 6
    const-string v2, "defaultPort"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;I)V

    iget-object v1, p0, Ldxz;->b:Ldyn;

    .line 7
    const-string v2, "proxyDetector"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Ldxz;->c:Ldzb;

    .line 8
    const-string v2, "syncContext"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Ldxz;->d:Ldyf;

    .line 9
    const-string v2, "serviceConfigParser"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Ldxz;->f:Ljava/util/concurrent/ScheduledExecutorService;

    .line 10
    const-string v2, "scheduledExecutorService"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Ldxz;->g:Ldvj;

    .line 11
    const-string v2, "channelLogger"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Ldxz;->e:Ljava/util/concurrent/Executor;

    .line 12
    const-string v2, "executor"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v0}, Lcqs;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
