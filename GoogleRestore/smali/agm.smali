.class public final Lagm;
.super Lafy;
.source "PG"


# instance fields
.field public final k:Lbmy;

.field public final l:Lanp;

.field public final m:Lacy;

.field public final n:Ljava/lang/String;

.field public final o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lbmy;Lanp;Ljava/lang/String;JLacy;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 1
    invoke-direct {p0, p7}, Lafy;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object p1, p0, Lagm;->k:Lbmy;

    iput-object p2, p0, Lagm;->l:Lanp;

    .line 2
    invoke-static {p3}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lagm;->n:Ljava/lang/String;

    .line 3
    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lapn;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lagm;->o:Ljava/lang/String;

    .line 4
    invoke-static {p6}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p6, p0, Lagm;->m:Lacy;

    return-void
.end method


# virtual methods
.method public final bridge synthetic e()Ljava/lang/Object;
    .locals 4

    const-string v0, "Failed to fetch contacts backup info."

    iget-object v1, p0, Lagm;->m:Lacy;

    sget-object v2, Laxj;->b:Laxj;

    sget-object v3, Laxl;->c:Laxl;

    invoke-virtual {v1, v2, v3}, Lacy;->a(Laxj;Laxl;)V

    invoke-static {}, Ldac;->b()Ldac;

    move-result-object v1

    new-instance v2, Lagh;

    invoke-direct {v2, p0}, Lagh;-><init>(Lagm;)V

    invoke-static {v2}, Lajw;->a(Lj$/util/function/Supplier;)Lajw;

    move-result-object v2

    sget-object v3, Land;->x:Lccv;

    invoke-virtual {v3}, Lccv;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lajw;->a:I

    new-instance v3, Lagi;

    invoke-direct {v3, p0, v1}, Lagi;-><init>(Lagm;Ldac;)V

    iput-object v3, v2, Lajw;->b:Lajv;

    new-instance v3, Lagj;

    invoke-direct {v3, p0}, Lagj;-><init>(Lagm;)V

    iput-object v3, v2, Lajw;->d:Lbpa;

    new-instance v3, Lagk;

    invoke-direct {v3, p0, v1}, Lagk;-><init>(Lagm;Ldac;)V

    iput-object v3, v2, Lajw;->c:Lbpa;

    invoke-virtual {v2}, Lajw;->a()V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1}, Ldac;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lahe;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    iget-object v3, p0, Lagm;->j:Lacw;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v1, v2}, Laqd;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    iget-object v3, p0, Lagm;->j:Lacw;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v1, v2}, Laqd;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0}, Lagm;->f()Lahe;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public final f()Lahe;
    .locals 3

    new-instance v0, Lahe;

    iget-object v1, p0, Lagm;->n:Ljava/lang/String;

    iget-object v2, p0, Lagm;->o:Ljava/lang/String;

    .line 5
    invoke-direct {v0, v1, v2}, Lahe;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
