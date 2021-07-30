.class final Lefq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Leae;


# direct methods
.method public constructor <init>(Leae;)V
    .locals 0

    iput-object p1, p0, Lefq;->a:Leae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lefq;->a:Leae;

    iget-object v1, v0, Leae;->i:Lefs;

    .line 1
    iget-object v1, v1, Lefs;->k:Ldzb;

    invoke-virtual {v1}, Ldzb;->b()V

    iget-object v1, v0, Leae;->e:Leen;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iput-boolean v2, v0, Leae;->g:Z

    return-void

    :cond_0
    iget-boolean v1, v0, Leae;->g:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Leae;->i:Lefs;

    .line 2
    iget-boolean v1, v1, Lefs;->w:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Leae;->h:Ldza;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Ldza;->a()V

    const/4 v1, 0x0

    iput-object v1, v0, Leae;->h:Ldza;

    goto :goto_0

    .line 8
    :cond_1
    return-void

    :cond_2
    iput-boolean v2, v0, Leae;->g:Z

    .line 3
    :goto_0
    iget-object v1, v0, Leae;->i:Lefs;

    .line 4
    iget-boolean v1, v1, Lefs;->w:Z

    if-nez v1, :cond_3

    iget-object v1, v0, Leae;->i:Lefs;

    .line 5
    iget-object v2, v1, Lefs;->k:Ldzb;

    new-instance v3, Leeq;

    new-instance v1, Lefo;

    invoke-direct {v1, v0}, Lefo;-><init>(Leae;)V

    invoke-direct {v3, v1}, Leeq;-><init>(Ljava/lang/Runnable;)V

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, v0, Leae;->i:Lefs;

    .line 6
    iget-object v1, v1, Lefs;->g:Lebh;

    .line 7
    invoke-interface {v1}, Lebh;->a()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v7

    .line 5
    invoke-virtual/range {v2 .. v7}, Ldzb;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Ldza;

    move-result-object v1

    iput-object v1, v0, Leae;->h:Ldza;

    return-void

    :cond_3
    iget-object v0, v0, Leae;->e:Leen;

    sget-object v1, Lefs;->c:Ldyv;

    .line 8
    invoke-virtual {v0, v1}, Leen;->a(Ldyv;)V

    return-void
.end method
