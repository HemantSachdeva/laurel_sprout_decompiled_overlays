.class public final Ldzd;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final synthetic a:Ldve;

.field final synthetic b:Ldzg;


# direct methods
.method public constructor <init>(Ldzg;Ldve;)V
    .locals 0

    iput-object p1, p0, Ldzd;->b:Ldzg;

    iput-object p2, p0, Ldzd;->a:Ldve;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Ldzd;->b:Ldzg;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v1, p0, Ldzd;->b:Ldzg;

    iget-object v2, v1, Ldzg;->e:Ljava/util/Map;

    if-eqz v2, :cond_0

    if-eq v2, p1, :cond_4

    .line 1
    :cond_0
    new-instance v2, Ldxt;

    invoke-direct {v2}, Ldxt;-><init>()V

    if-eqz p1, :cond_3

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "-bin"

    .line 3
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Ldxt;->e:Lees;

    .line 4
    invoke-static {v4, v5}, Ldxp;->a(Ljava/lang/String;Lees;)Ldxp;

    move-result-object v5

    .line 5
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 6
    sget-object v7, Lcxd;->e:Lcxd;

    invoke-virtual {v7, v6}, Lcxd;->b(Ljava/lang/CharSequence;)[B

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ldxt;->a(Ldxp;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    sget-object v5, Ldxt;->a:Ldxn;

    .line 7
    invoke-static {v4, v5}, Ldxp;->a(Ljava/lang/String;Ldxn;)Ldxp;

    move-result-object v5

    .line 8
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 9
    invoke-virtual {v2, v5, v6}, Ldxt;->a(Ldxp;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iput-object v2, v1, Ldzg;->d:Ldxt;

    iget-object v1, p0, Ldzd;->b:Ldzg;

    iput-object p1, v1, Ldzg;->e:Ljava/util/Map;

    :cond_4
    iget-object p1, p0, Ldzd;->b:Ldzg;

    iget-object p1, p1, Ldzg;->d:Ldxt;

    .line 10
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Ldzd;->a:Ldve;

    iget-object v0, v0, Ldve;->a:Ldvc;

    move-object v1, v0

    check-cast v1, Legh;

    iget-boolean v2, v1, Legh;->h:Z

    xor-int/lit8 v2, v2, 0x1

    const-string v3, "apply() or fail() already called"

    .line 11
    invoke-static {v2, v3}, Lcrj;->b(ZLjava/lang/Object;)V

    const-string v2, "headers"

    .line 12
    invoke-static {p1, v2}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v1, Legh;->c:Ldxt;

    .line 13
    invoke-virtual {p1}, Ldxt;->c()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    .line 22
    :cond_5
    invoke-virtual {v2}, Ldxt;->a()I

    move-result v3

    invoke-virtual {v2}, Ldxt;->b()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2}, Ldxt;->c()Z

    move-result v4

    if-nez v4, :cond_6

    .line 14
    invoke-virtual {p1}, Ldxt;->b()I

    move-result v4

    if-ge v3, v4, :cond_7

    :cond_6
    invoke-virtual {v2}, Ldxt;->b()I

    move-result v3

    .line 15
    invoke-virtual {p1}, Ldxt;->b()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ldxt;->c(I)V

    .line 16
    :cond_7
    iget-object v3, p1, Ldxt;->c:[Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v2, Ldxt;->c:[Ljava/lang/Object;

    invoke-virtual {v2}, Ldxt;->b()I

    move-result v6

    invoke-virtual {p1}, Ldxt;->b()I

    move-result v7

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, v2, Ldxt;->d:I

    .line 17
    iget p1, p1, Ldxt;->d:I

    add-int/2addr v3, p1

    iput v3, v2, Ldxt;->d:I

    .line 13
    :goto_2
    iget-object p1, v1, Legh;->e:Ldwb;

    .line 18
    invoke-virtual {p1}, Ldwb;->b()Ldwb;

    move-result-object p1

    :try_start_2
    move-object v2, v0

    check-cast v2, Legh;

    iget-object v2, v2, Legh;->a:Lebf;

    move-object v3, v0

    check-cast v3, Legh;

    iget-object v3, v3, Legh;->b:Ldxx;

    move-object v4, v0

    check-cast v4, Legh;

    iget-object v4, v4, Legh;->c:Ldxt;

    check-cast v0, Legh;

    iget-object v0, v0, Legh;->d:Ldvh;

    .line 19
    invoke-interface {v2, v3, v4, v0}, Lebf;->a(Ldxx;Ldxt;Ldvh;)Lebc;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v2, v1, Legh;->e:Ldwb;

    .line 20
    invoke-virtual {v2, p1}, Ldwb;->a(Ldwb;)V

    .line 22
    invoke-virtual {v1, v0}, Legh;->a(Lebc;)V

    return-void

    .line 10
    :catchall_0
    move-exception v0

    iget-object v1, v1, Legh;->e:Ldwb;

    .line 20
    invoke-virtual {v1, p1}, Ldwb;->a(Ldwb;)V

    .line 21
    throw v0

    .line 23
    :catchall_1
    move-exception p1

    .line 10
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 17
    :catchall_2
    move-exception p1

    iget-object v0, p0, Ldzd;->a:Ldve;

    .line 23
    sget-object v1, Ldyv;->f:Ldyv;

    const-string v2, "Failed to convert credential metadata"

    .line 24
    invoke-virtual {v1, v2}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    move-result-object v1

    .line 25
    invoke-virtual {v1, p1}, Ldyv;->b(Ljava/lang/Throwable;)Ldyv;

    move-result-object p1

    .line 23
    invoke-virtual {v0, p1}, Ldve;->a(Ldyv;)V

    return-void
.end method
