.class final Leet;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic a:Lefs;


# direct methods
.method public constructor <init>(Lefs;)V
    .locals 0

    iput-object p1, p0, Leet;->a:Lefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    sget-object v0, Lefs;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    iget-object p1, p0, Leet;->a:Lefs;

    iget-object p1, p1, Lefs;->f:Ldwp;

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x3b

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "["

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] Uncaught exception in the SynchronizationContext. Panic!"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1
    const-string v2, "io.grpc.internal.ManagedChannelImpl$1"

    const-string v3, "uncaughtException"

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Leet;->a:Lefs;

    iget-boolean v0, p1, Lefs;->r:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lefs;->r:Z

    .line 3
    invoke-virtual {p1, v0}, Lefs;->b(Z)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lefs;->a(Z)V

    new-instance v0, Leew;

    .line 5
    invoke-direct {v0, p2}, Leew;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Lefs;->a(Ldxe;)V

    iget-object p2, p1, Lefs;->A:Ldvj;

    const/4 v0, 0x4

    .line 6
    const-string v1, "PANIC! Entering TRANSIENT_FAILURE"

    invoke-virtual {p2, v0, v1}, Ldvj;->a(ILjava/lang/String;)V

    iget-object p1, p1, Lefs;->n:Lebo;

    .line 7
    sget-object p2, Ldvx;->c:Ldvx;

    invoke-virtual {p1, p2}, Lebo;->a(Ldvx;)V

    return-void
.end method
