.class public final Lean;
.super Ledg;
.source "PG"


# instance fields
.field public final a:Lebm;

.field public final b:Ljava/lang/String;

.field final synthetic c:Leao;


# direct methods
.method public constructor <init>(Leao;Lebm;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lean;->c:Leao;

    invoke-direct {p0}, Ledg;-><init>()V

    .line 1
    const-string p1, "delegate"

    invoke-static {p2, p1}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Lean;->a:Lebm;

    .line 2
    const-string p1, "authority"

    invoke-static {p3, p1}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p3, p0, Lean;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ldxx;Ldxt;Ldvh;)Lebc;
    .locals 4

    iget-object v0, p3, Ldvh;->h:Ldvo;

    if-eqz v0, :cond_2

    new-instance v1, Legh;

    iget-object v2, p0, Lean;->a:Lebm;

    .line 3
    invoke-direct {v1, v2, p1, p2, p3}, Legh;-><init>(Lebf;Ldxx;Ldxt;Ldvh;)V

    new-instance p2, Ldvd;

    .line 4
    invoke-direct {p2, p0, p1}, Ldvd;-><init>(Lean;Ldxx;)V

    :try_start_0
    iget-object p1, p3, Ldvh;->c:Ljava/util/concurrent/Executor;

    iget-object p3, p0, Lean;->c:Leao;

    iget-object p3, p3, Leao;->b:Ljava/util/concurrent/Executor;

    .line 5
    invoke-static {p1, p3}, Lcqt;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    new-instance p3, Ldve;

    .line 6
    invoke-direct {p3, v1}, Ldve;-><init>(Ldvc;)V

    iget-object v2, p2, Ldvd;->b:Lean;

    iget-object v2, v2, Lean;->a:Lebm;

    invoke-interface {v2}, Lebm;->a()Ldvb;

    move-result-object v2

    .line 7
    sget-object v3, Ledj;->a:Ldva;

    invoke-virtual {v2, v3}, Ldvb;->a(Ldva;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldyo;

    sget-object v3, Ldyo;->a:Ldyo;

    .line 8
    invoke-static {v2, v3}, Lcqt;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldyo;

    move-object v3, v0

    check-cast v3, Ldzg;

    iget-boolean v3, v3, Ldzg;->b:Z

    if-eqz v3, :cond_0

    sget-object v3, Ldyo;->c:Ldyo;

    if-eq v2, v3, :cond_0

    .line 9
    sget-object p1, Ldyv;->f:Ldyv;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x60

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Credentials require channel with PRIVACY_AND_INTEGRITY security level. Observed security level: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 10
    invoke-virtual {p1, p2}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    move-result-object p1

    .line 9
    invoke-virtual {p3, p1}, Ldve;->a(Ldyv;)V

    goto :goto_0

    .line 20
    :cond_0
    const/4 v2, 0x0

    iget-object v3, p2, Ldvd;->b:Lean;

    iget-object v3, v3, Lean;->b:Ljava/lang/String;

    .line 11
    invoke-static {v2, v3}, Lcqt;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p2, p2, Ldvd;->a:Ldxx;

    .line 12
    invoke-static {v2, p2}, Ldzg;->a(Ljava/lang/String;Ldxx;)Ljava/net/URI;
    :try_end_1
    .catch Ldyw; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    move-object p2, v0

    check-cast p2, Ldzg;

    iget-object p2, p2, Ldzg;->c:Lcpv;

    new-instance v2, Ldzd;

    check-cast v0, Ldzg;

    .line 14
    invoke-direct {v2, v0, p3}, Ldzd;-><init>(Ldzg;Ldve;)V

    invoke-virtual {p2, p1, v2}, Lcpv;->a(Ljava/util/concurrent/Executor;Ldzd;)V

    goto :goto_0

    .line 21
    :catch_0
    move-exception p1

    iget-object p1, p1, Ldyw;->a:Ldyv;

    .line 13
    invoke-virtual {p3, p1}, Ldve;->a(Ldyv;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 15
    sget-object p2, Ldyv;->f:Ldyv;

    const-string p3, "Credentials should use fail() instead of throwing exceptions"

    .line 16
    invoke-virtual {p2, p3}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    move-result-object p2

    .line 17
    invoke-virtual {p2, p1}, Ldyv;->b(Ljava/lang/Throwable;)Ldyv;

    move-result-object p1

    .line 15
    invoke-virtual {v1, p1}, Legh;->a(Ldyv;)V

    .line 9
    :goto_0
    iget-object v0, v1, Legh;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object p1, v1, Legh;->g:Lebc;

    if-nez p1, :cond_1

    new-instance p1, Lecq;

    .line 18
    invoke-direct {p1}, Lecq;-><init>()V

    iput-object p1, v1, Legh;->i:Lecq;

    iget-object p1, v1, Legh;->i:Lecq;

    iput-object p1, v1, Legh;->g:Lebc;

    .line 19
    monitor-exit v0

    goto :goto_1

    .line 20
    :cond_1
    monitor-exit v0

    .line 19
    :goto_1
    return-object p1

    .line 15
    :catchall_1
    move-exception p1

    .line 21
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 14
    :cond_2
    iget-object v0, p0, Lean;->a:Lebm;

    .line 22
    invoke-interface {v0, p1, p2, p3}, Lebm;->a(Ldxx;Ldxt;Ldvh;)Lebc;

    move-result-object p1

    return-object p1
.end method

.method protected final c()Lebm;
    .locals 1

    iget-object v0, p0, Lean;->a:Lebm;

    return-object v0
.end method
