.class public final Leej;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldyv;

.field final synthetic b:Leel;


# direct methods
.method public constructor <init>(Leel;Ldyv;)V
    .locals 0

    iput-object p1, p0, Leej;->b:Leel;

    iput-object p2, p0, Leej;->a:Ldyv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget-object v0, p0, Leej;->b:Leel;

    iget-object v0, v0, Leel;->c:Leen;

    iget-object v0, v0, Leen;->p:Ldvy;

    iget-object v0, v0, Ldvy;->a:Ldvx;

    sget-object v1, Ldvx;->e:Ldvx;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Leej;->b:Leel;

    iget-object v0, v0, Leel;->c:Leen;

    iget-object v0, v0, Leen;->o:Lefy;

    iget-object v1, p0, Leej;->b:Leel;

    iget-object v2, v1, Leel;->a:Lebm;

    if-ne v0, v2, :cond_1

    iget-object v0, v1, Leel;->c:Leen;

    const/4 v1, 0x0

    iput-object v1, v0, Leen;->o:Lefy;

    iget-object v0, p0, Leej;->b:Leel;

    iget-object v0, v0, Leel;->c:Leen;

    iget-object v0, v0, Leen;->f:Leeh;

    .line 1
    invoke-virtual {v0}, Leeh;->a()V

    iget-object v0, p0, Leej;->b:Leel;

    iget-object v0, v0, Leel;->c:Leen;

    sget-object v1, Ldvx;->d:Ldvx;

    .line 2
    invoke-virtual {v0, v1}, Leen;->a(Ldvx;)V

    return-void

    :cond_1
    iget-object v0, v1, Leel;->c:Leen;

    iget-object v1, v0, Leen;->n:Lebm;

    if-ne v1, v2, :cond_7

    iget-object v0, v0, Leen;->p:Ldvy;

    iget-object v0, v0, Ldvy;->a:Ldvx;

    sget-object v1, Ldvx;->a:Ldvx;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    .line 19
    :cond_2
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Leej;->b:Leel;

    iget-object v1, v1, Leel;->c:Leen;

    iget-object v1, v1, Leen;->p:Ldvy;

    iget-object v1, v1, Ldvy;->a:Ldvx;

    .line 3
    const-string v4, "Expected state is CONNECTING, actual state is %s"

    invoke-static {v0, v4, v1}, Lcrj;->b(ZLjava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Leej;->b:Leel;

    iget-object v0, v0, Leel;->c:Leen;

    iget-object v0, v0, Leen;->f:Leeh;

    iget-object v1, v0, Leeh;->a:Ljava/util/List;

    iget v4, v0, Leeh;->b:I

    .line 4
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldwg;

    iget v4, v0, Leeh;->c:I

    add-int/2addr v4, v3

    iput v4, v0, Leeh;->c:I

    iget-object v1, v1, Ldwg;->b:Ljava/util/List;

    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v4, v1, :cond_3

    iget v1, v0, Leeh;->b:I

    add-int/2addr v1, v3

    iput v1, v0, Leeh;->b:I

    iput v2, v0, Leeh;->c:I

    :cond_3
    iget-object v0, p0, Leej;->b:Leel;

    iget-object v0, v0, Leel;->c:Leen;

    iget-object v0, v0, Leen;->f:Leeh;

    iget v1, v0, Leeh;->b:I

    iget-object v0, v0, Leeh;->a:Ljava/util/List;

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_6

    iget-object v0, p0, Leej;->b:Leel;

    iget-object v0, v0, Leel;->c:Leen;

    .line 7
    invoke-static {v0}, Leen;->a(Leen;)V

    iget-object v0, p0, Leej;->b:Leel;

    iget-object v0, v0, Leel;->c:Leen;

    iget-object v0, v0, Leen;->f:Leeh;

    .line 8
    invoke-virtual {v0}, Leeh;->a()V

    iget-object v0, p0, Leej;->b:Leel;

    iget-object v0, v0, Leel;->c:Leen;

    iget-object v1, p0, Leej;->a:Ldyv;

    iget-object v4, v0, Leen;->e:Ldzb;

    .line 9
    invoke-virtual {v4}, Ldzb;->b()V

    .line 10
    invoke-virtual {v1}, Ldyv;->a()Z

    move-result v4

    xor-int/2addr v4, v3

    const-string v5, "The error status must not be OK"

    invoke-static {v4, v5}, Lcrj;->a(ZLjava/lang/Object;)V

    new-instance v4, Ldvy;

    sget-object v5, Ldvx;->c:Ldvx;

    .line 11
    invoke-direct {v4, v5, v1}, Ldvy;-><init>(Ldvx;Ldyv;)V

    .line 12
    invoke-virtual {v0, v4}, Leen;->a(Ldvy;)V

    iget-object v4, v0, Leen;->r:Ledb;

    if-nez v4, :cond_4

    .line 13
    invoke-static {}, Leda;->a()Ledb;

    move-result-object v4

    iput-object v4, v0, Leen;->r:Ledb;

    :cond_4
    iget-object v4, v0, Leen;->r:Ledb;

    .line 14
    invoke-virtual {v4}, Ledb;->a()J

    move-result-wide v4

    iget-object v6, v0, Leen;->h:Lcrf;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v7}, Lcrf;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    sub-long v10, v4, v6

    iget-object v4, v0, Leen;->d:Ldvj;

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    .line 15
    invoke-static {v1}, Leen;->b(Ldyv;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v3

    .line 16
    const-string v1, "TRANSIENT_FAILURE ({0}). Will reconnect after {1} ns"

    invoke-virtual {v4, v5, v1, v6}, Ldvj;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Leen;->i:Ldza;

    if-nez v1, :cond_5

    const/4 v2, 0x1

    goto :goto_1

    .line 18
    :cond_5
    nop

    .line 16
    :goto_1
    nop

    .line 17
    const-string v1, "previous reconnectTask is not done"

    invoke-static {v2, v1}, Lcrj;->b(ZLjava/lang/Object;)V

    iget-object v8, v0, Leen;->e:Ldzb;

    new-instance v9, Ledw;

    .line 18
    invoke-direct {v9, v0}, Ledw;-><init>(Leen;)V

    sget-object v12, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v13, v0, Leen;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual/range {v8 .. v13}, Ldzb;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Ldza;

    move-result-object v1

    iput-object v1, v0, Leen;->i:Ldza;

    return-void

    :cond_6
    iget-object v0, p0, Leej;->b:Leel;

    iget-object v0, v0, Leel;->c:Leen;

    .line 19
    invoke-virtual {v0}, Leen;->c()V

    :cond_7
    return-void
.end method
