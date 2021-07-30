.class final Ledz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Leen;


# direct methods
.method public constructor <init>(Leen;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Ledz;->b:Leen;

    iput-object p2, p0, Ledz;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ledz;->a:Ljava/util/List;

    .line 1
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Ledz;->b:Leen;

    iget-object v1, v1, Leen;->f:Leeh;

    .line 3
    invoke-virtual {v1}, Leeh;->b()Ljava/net/SocketAddress;

    move-result-object v1

    iget-object v2, p0, Ledz;->b:Leen;

    iget-object v2, v2, Leen;->f:Leeh;

    iput-object v0, v2, Leeh;->a:Ljava/util/List;

    .line 4
    invoke-virtual {v2}, Leeh;->a()V

    iget-object v2, p0, Ledz;->b:Leen;

    iput-object v0, v2, Leen;->g:Ljava/util/List;

    iget-object v0, p0, Ledz;->b:Leen;

    iget-object v0, v0, Leen;->p:Ldvy;

    iget-object v0, v0, Ldvy;->a:Ldvx;

    sget-object v2, Ldvx;->b:Ldvx;

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Ledz;->b:Leen;

    iget-object v0, v0, Leen;->p:Ldvy;

    iget-object v0, v0, Ldvy;->a:Ldvx;

    sget-object v2, Ldvx;->a:Ldvx;

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 14
    :cond_0
    nop

    :goto_0
    move-object v0, v3

    goto :goto_3

    .line 4
    :cond_1
    :goto_1
    iget-object v0, p0, Ledz;->b:Leen;

    iget-object v0, v0, Leen;->f:Leeh;

    const/4 v2, 0x0

    :goto_2
    iget-object v4, v0, Leeh;->a:Ljava/util/List;

    .line 5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    iget-object v4, v0, Leeh;->a:Ljava/util/List;

    .line 6
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldwg;

    iget-object v4, v4, Ldwg;->b:Ljava/util/List;

    .line 7
    invoke-interface {v4, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iput v2, v0, Leeh;->b:I

    iput v4, v0, Leeh;->c:I

    move-object v0, v3

    goto :goto_3

    .line 18
    :cond_3
    iget-object v0, p0, Ledz;->b:Leen;

    iget-object v0, v0, Leen;->p:Ldvy;

    iget-object v0, v0, Ldvy;->a:Ldvx;

    sget-object v1, Ldvx;->b:Ldvx;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Ledz;->b:Leen;

    iget-object v0, v0, Leen;->o:Lefy;

    iget-object v1, p0, Ledz;->b:Leen;

    iput-object v3, v1, Leen;->o:Lefy;

    iget-object v1, p0, Ledz;->b:Leen;

    iget-object v1, v1, Leen;->f:Leeh;

    .line 8
    invoke-virtual {v1}, Leeh;->a()V

    iget-object v1, p0, Ledz;->b:Leen;

    sget-object v2, Ldvx;->d:Ldvx;

    .line 9
    invoke-virtual {v1, v2}, Leen;->a(Ldvx;)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Ledz;->b:Leen;

    iget-object v0, v0, Leen;->n:Lebm;

    .line 10
    sget-object v1, Ldyv;->i:Ldyv;

    .line 11
    const-string v2, "InternalSubchannel closed pending transport due to address change"

    invoke-virtual {v1, v2}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    move-result-object v1

    .line 10
    invoke-interface {v0, v1}, Lebm;->a(Ldyv;)V

    iget-object v0, p0, Ledz;->b:Leen;

    .line 12
    invoke-static {v0}, Leen;->a(Leen;)V

    iget-object v0, p0, Ledz;->b:Leen;

    iget-object v0, v0, Leen;->f:Leeh;

    .line 13
    invoke-virtual {v0}, Leeh;->a()V

    iget-object v0, p0, Ledz;->b:Leen;

    .line 14
    invoke-virtual {v0}, Leen;->c()V

    goto :goto_0

    .line 7
    :goto_3
    if-eqz v0, :cond_6

    iget-object v1, p0, Ledz;->b:Leen;

    iget-object v2, v1, Leen;->j:Ldza;

    if-eqz v2, :cond_5

    iget-object v1, v1, Leen;->k:Lefy;

    .line 15
    sget-object v2, Ldyv;->i:Ldyv;

    .line 16
    const-string v4, "InternalSubchannel closed transport early due to address change"

    invoke-virtual {v2, v4}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    move-result-object v2

    .line 15
    invoke-interface {v1, v2}, Lefy;->a(Ldyv;)V

    iget-object v1, p0, Ledz;->b:Leen;

    iget-object v1, v1, Leen;->j:Ldza;

    .line 17
    invoke-virtual {v1}, Ldza;->a()V

    iget-object v1, p0, Ledz;->b:Leen;

    iput-object v3, v1, Leen;->j:Ldza;

    iput-object v3, v1, Leen;->k:Lefy;

    :cond_5
    iget-object v1, p0, Ledz;->b:Leen;

    iput-object v0, v1, Leen;->k:Lefy;

    iget-object v2, v1, Leen;->e:Ldzb;

    new-instance v3, Ledy;

    .line 18
    invoke-direct {v3, p0}, Ledy;-><init>(Ledz;)V

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v0, p0, Ledz;->b:Leen;

    iget-object v7, v0, Leen;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual/range {v2 .. v7}, Ldzb;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Ldza;

    move-result-object v0

    iput-object v0, v1, Leen;->j:Ldza;

    :cond_6
    return-void
.end method
