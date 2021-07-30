.class public final Lefj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldye;

.field final synthetic b:Ldyc;


# direct methods
.method public constructor <init>(Ldyc;Ldye;)V
    .locals 0

    iput-object p1, p0, Lefj;->b:Ldyc;

    iput-object p2, p0, Lefj;->a:Ldye;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget-object v0, p0, Lefj;->a:Ldye;

    iget-object v1, v0, Ldye;->a:Ljava/util/List;

    iget-object v2, p0, Lefj;->b:Ldyc;

    iget-object v2, v2, Ldyc;->c:Lefs;

    iget-object v2, v2, Lefs;->A:Ldvj;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    iget-object v0, v0, Ldye;->b:Ldvb;

    const/4 v6, 0x1

    aput-object v0, v4, v6

    .line 1
    const-string v0, "Resolved address: {0}, config={1}"

    invoke-virtual {v2, v6, v0, v4}, Ldvj;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lefj;->b:Ldyc;

    iget-object v0, v0, Ldyc;->c:Lefs;

    iget v2, v0, Lefs;->H:I

    if-eq v2, v3, :cond_0

    iget-object v0, v0, Lefs;->A:Ldvj;

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v1, v2, v5

    .line 2
    const-string v4, "Address resolved: {0}"

    invoke-virtual {v0, v3, v4, v2}, Ldvj;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lefj;->b:Ldyc;

    iget-object v0, v0, Ldyc;->c:Lefs;

    iput v3, v0, Lefs;->H:I

    :cond_0
    iget-object v0, p0, Lefj;->b:Ldyc;

    iget-object v0, v0, Ldyc;->c:Lefs;

    const/4 v2, 0x0

    iput-object v2, v0, Lefs;->J:Ledb;

    iget-object v4, p0, Lefj;->a:Ldye;

    iget-object v4, v4, Ldye;->c:Ldya;

    if-eqz v4, :cond_1

    iget-object v7, v4, Ldya;->b:Ljava/lang/Object;

    if-eqz v7, :cond_1

    .line 3
    check-cast v7, Lefw;

    goto :goto_0

    .line 6
    :cond_1
    move-object v7, v2

    .line 3
    :goto_0
    if-eqz v4, :cond_2

    iget-object v8, v4, Ldya;->a:Ldyv;

    goto :goto_1

    .line 6
    :cond_2
    move-object v8, v2

    .line 3
    :goto_1
    iget-boolean v9, v0, Lefs;->E:Z

    if-nez v9, :cond_4

    if-eqz v7, :cond_3

    iget-object v0, v0, Lefs;->A:Ldvj;

    .line 4
    const-string v4, "Service config from name resolver discarded by channel settings"

    invoke-virtual {v0, v3, v4}, Ldvj;->a(ILjava/lang/String;)V

    :cond_3
    sget-object v0, Lefs;->e:Lefw;

    goto/16 :goto_5

    .line 41
    :cond_4
    if-eqz v7, :cond_5

    goto :goto_2

    .line 9
    :cond_5
    if-eqz v8, :cond_7

    iget-boolean v7, v0, Lefs;->D:Z

    if-nez v7, :cond_6

    iget-object v0, v0, Lefs;->A:Ldvj;

    .line 5
    const-string v1, "Fallback to error due to invalid first service config without default config"

    invoke-virtual {v0, v3, v1}, Ldvj;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lefj;->b:Ldyc;

    iget-object v1, v4, Ldya;->a:Ldyv;

    .line 6
    invoke-virtual {v0, v1}, Ldyc;->a(Ldyv;)V

    return-void

    :cond_6
    iget-object v7, v0, Lefs;->C:Lefw;

    goto :goto_2

    :cond_7
    sget-object v7, Lefs;->e:Lefw;

    .line 41
    :goto_2
    iget-object v0, p0, Lefj;->b:Ldyc;

    iget-object v0, v0, Ldyc;->c:Lefs;

    iget-object v0, v0, Lefs;->C:Lefw;

    .line 7
    invoke-virtual {v7, v0}, Lefw;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lefj;->b:Ldyc;

    iget-object v0, v0, Ldyc;->c:Lefs;

    iget-object v0, v0, Lefs;->A:Ldvj;

    new-array v4, v6, [Ljava/lang/Object;

    sget-object v8, Lefs;->e:Lefw;

    if-ne v7, v8, :cond_8

    const-string v8, " to empty"

    goto :goto_3

    .line 9
    :cond_8
    const-string v8, ""

    .line 7
    :goto_3
    aput-object v8, v4, v5

    .line 8
    const-string v8, "Service config changed{0}"

    invoke-virtual {v0, v3, v8, v4}, Ldvj;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lefj;->b:Ldyc;

    iget-object v0, v0, Ldyc;->c:Lefs;

    iput-object v7, v0, Lefs;->C:Lefw;

    :cond_9
    :try_start_0
    iget-object v0, p0, Lefj;->b:Ldyc;

    iget-object v0, v0, Ldyc;->c:Lefs;

    .line 9
    invoke-virtual {v0}, Lefs;->h()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 24
    :catch_0
    move-exception v0

    move-object v13, v0

    sget-object v8, Lefs;->a:Ljava/util/logging/Logger;

    .line 10
    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    iget-object v0, p0, Lefj;->b:Ldyc;

    iget-object v0, v0, Ldyc;->c:Lefs;

    iget-object v0, v0, Lefs;->f:Ldwp;

    .line 11
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v10, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x33

    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "["

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] Unexpected exception from parsing service config"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 10
    const-string v10, "io.grpc.internal.ManagedChannelImpl$NameResolverListener$1NamesResolved"

    const-string v11, "run"

    invoke-virtual/range {v8 .. v13}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    :goto_4
    move-object v0, v7

    :goto_5
    iget-object v4, p0, Lefj;->a:Ldye;

    iget-object v4, v4, Ldye;->b:Ldvb;

    iget-object v7, p0, Lefj;->b:Ldyc;

    iget-object v8, v7, Ldyc;->a:Lefh;

    iget-object v7, v7, Ldyc;->c:Lefs;

    iget-object v7, v7, Lefs;->p:Lefh;

    if-ne v8, v7, :cond_12

    iget-object v7, v0, Lefw;->e:Ljava/util/Map;

    if-eqz v7, :cond_a

    .line 12
    invoke-virtual {v4}, Ldvb;->b()Lduz;

    move-result-object v4

    sget-object v8, Ldxf;->b:Ldva;

    .line 13
    invoke-virtual {v4, v8, v7}, Lduz;->a(Ldva;Ljava/lang/Object;)V

    .line 14
    invoke-virtual {v4}, Lduz;->a()Ldvb;

    move-result-object v4

    :cond_a
    iget-object v7, p0, Lefj;->b:Ldyc;

    iget-object v7, v7, Ldyc;->a:Lefh;

    iget-object v7, v7, Lefh;->a:Leah;

    .line 15
    invoke-static {}, Ldxc;->a()Ldxb;

    move-result-object v8

    iput-object v1, v8, Ldxb;->a:Ljava/util/List;

    iput-object v4, v8, Ldxb;->b:Ldvb;

    iget-object v0, v0, Lefw;->d:Ljava/lang/Object;

    iput-object v0, v8, Ldxb;->c:Ljava/lang/Object;

    .line 16
    invoke-virtual {v8}, Ldxb;->a()Ldxc;

    move-result-object v0

    iget-object v1, v0, Ldxc;->a:Ljava/util/List;

    iget-object v4, v0, Ldxc;->b:Ldvb;

    .line 17
    sget-object v8, Ldxf;->a:Ldva;

    invoke-virtual {v4, v8}, Ldvb;->a(Ldva;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_11

    iget-object v8, v0, Ldxc;->c:Ljava/lang/Object;

    .line 18
    check-cast v8, Lehm;

    if-nez v8, :cond_c

    :try_start_1
    iget-object v8, v7, Leah;->d:Leam;

    iget-object v9, v8, Leam;->b:Ljava/lang/String;

    const-string v10, "using default policy"

    iget-object v8, v8, Leam;->a:Ldxj;

    .line 19
    invoke-virtual {v8, v9}, Ldxj;->a(Ljava/lang/String;)Ldxh;

    move-result-object v8
    :try_end_1
    .catch Leal; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v8, :cond_b

    .line 20
    new-instance v9, Lehm;

    .line 25
    invoke-direct {v9, v8, v2, v2}, Lehm;-><init>(Ldxh;Ljava/util/Map;Ljava/lang/Object;)V

    move-object v8, v9

    goto :goto_6

    .line 19
    :cond_b
    :try_start_2
    new-instance v0, Leal;

    .line 20
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x44

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Trying to load \'"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' because "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", but it\'s unavailable"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-direct {v0, v1}, Leal;-><init>(Ljava/lang/String;)V

    .line 20
    throw v0
    :try_end_2
    .catch Leal; {:try_start_2 .. :try_end_2} :catch_1

    .line 45
    :catch_1
    move-exception v0

    .line 22
    sget-object v1, Ldyv;->h:Ldyv;

    invoke-virtual {v0}, Leal;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    move-result-object v0

    iget-object v1, v7, Leah;->a:Ldwy;

    .line 23
    sget-object v3, Ldvx;->c:Ldvx;

    new-instance v4, Leaj;

    invoke-direct {v4, v0}, Leaj;-><init>(Ldyv;)V

    invoke-virtual {v1, v3, v4}, Ldwy;->a(Ldvx;Ldxe;)V

    iget-object v0, v7, Leah;->b:Ldxf;

    .line 24
    invoke-virtual {v0}, Ldxf;->a()V

    iput-object v2, v7, Leah;->c:Ldxh;

    new-instance v0, Leak;

    invoke-direct {v0}, Leak;-><init>()V

    iput-object v0, v7, Leah;->b:Ldxf;

    sget-object v0, Ldyv;->b:Ldyv;

    goto/16 :goto_8

    .line 25
    :cond_c
    :goto_6
    iget-object v2, v7, Leah;->c:Ldxh;

    if-eqz v2, :cond_d

    iget-object v2, v8, Lehm;->a:Ldxh;

    invoke-virtual {v2}, Ldxh;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v9, v7, Leah;->c:Ldxh;

    .line 26
    invoke-virtual {v9}, Ldxh;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    :cond_d
    iget-object v2, v7, Leah;->a:Ldwy;

    .line 27
    sget-object v9, Ldvx;->a:Ldvx;

    new-instance v10, Leai;

    invoke-direct {v10}, Leai;-><init>()V

    invoke-virtual {v2, v9, v10}, Ldwy;->a(Ldvx;Ldxe;)V

    iget-object v2, v7, Leah;->b:Ldxf;

    .line 28
    invoke-virtual {v2}, Ldxf;->a()V

    iget-object v2, v8, Lehm;->a:Ldxh;

    iput-object v2, v7, Leah;->c:Ldxh;

    iget-object v2, v7, Leah;->b:Ldxf;

    iget-object v9, v7, Leah;->c:Ldxh;

    iget-object v10, v7, Leah;->a:Ldwy;

    .line 29
    invoke-virtual {v9, v10}, Ldxh;->a(Ldwy;)Ldxf;

    move-result-object v9

    iput-object v9, v7, Leah;->b:Ldxf;

    iget-object v9, v7, Leah;->a:Ldwy;

    invoke-virtual {v9}, Ldwy;->a()Ldvj;

    move-result-object v9

    new-array v10, v3, [Ljava/lang/Object;

    .line 30
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v5

    iget-object v2, v7, Leah;->b:Ldxf;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v6

    .line 31
    const-string v2, "Load balancer changed from {0} to {1}"

    invoke-virtual {v9, v3, v2, v10}, Ldvj;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    iget-object v2, v8, Lehm;->c:Ljava/lang/Object;

    if-eqz v2, :cond_f

    iget-object v3, v7, Leah;->a:Ldwy;

    invoke-virtual {v3}, Ldwy;->a()Ldvj;

    move-result-object v3

    new-array v9, v6, [Ljava/lang/Object;

    iget-object v10, v8, Lehm;->c:Ljava/lang/Object;

    aput-object v10, v9, v5

    .line 32
    const-string v5, "Load-balancing config: {0}"

    invoke-virtual {v3, v6, v5, v9}, Ldvj;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-virtual {v4}, Ldvb;->b()Lduz;

    move-result-object v3

    sget-object v4, Ldxf;->a:Ldva;

    iget-object v5, v8, Lehm;->b:Ljava/util/Map;

    .line 34
    invoke-virtual {v3, v4, v5}, Lduz;->a(Ldva;Ljava/lang/Object;)V

    .line 35
    invoke-virtual {v3}, Lduz;->a()Ldvb;

    move-result-object v4

    goto :goto_7

    .line 41
    :cond_f
    nop

    .line 35
    :goto_7
    iget-object v3, v7, Leah;->b:Ldxf;

    iget-object v5, v0, Ldxc;->a:Ljava/util/List;

    .line 36
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 37
    sget-object v0, Ldyv;->i:Ldyv;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x37

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "NameResolver returned no usable address. addrs="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", attrs="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    move-result-object v0

    goto :goto_8

    .line 38
    :cond_10
    invoke-static {}, Ldxc;->a()Ldxb;

    move-result-object v1

    iget-object v0, v0, Ldxc;->a:Ljava/util/List;

    iput-object v0, v1, Ldxb;->a:Ljava/util/List;

    iput-object v4, v1, Ldxb;->b:Ldvb;

    iput-object v2, v1, Ldxb;->c:Ljava/lang/Object;

    .line 39
    invoke-virtual {v1}, Ldxb;->a()Ldxc;

    move-result-object v0

    .line 40
    invoke-virtual {v3, v0}, Ldxf;->a(Ldxc;)V

    .line 41
    sget-object v0, Ldyv;->b:Ldyv;

    .line 42
    :goto_8
    invoke-virtual {v0}, Ldyv;->a()Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, p0, Lefj;->b:Ldyc;

    iget-object v2, v1, Ldyc;->b:Ldyg;

    .line 43
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x9

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was used"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ldyv;->b(Ljava/lang/String;)Ldyv;

    move-result-object v0

    .line 44
    invoke-virtual {v1, v0}, Ldyc;->b(Ldyv;)V

    return-void

    .line 6
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ldxf;->a:Ldva;

    .line 45
    invoke-virtual {v4, v1}, Ldvb;->a(Ldva;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x35

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected ATTR_LOAD_BALANCING_CONFIG from upstream: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_12
    return-void
.end method
