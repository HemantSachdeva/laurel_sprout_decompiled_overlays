.class final Leaz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lebe;


# instance fields
.field public final a:Ldvk;

.field public b:Ldyv;

.field final synthetic c:Lebb;


# direct methods
.method public constructor <init>(Lebb;Ldvk;)V
    .locals 0

    iput-object p1, p0, Leaz;->c:Lebb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Leaz;->a:Ldvk;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Leaz;->c:Lebb;

    iget-object v0, v0, Lebb;->b:Ldxx;

    iget-object v0, v0, Ldxx;->a:Ldxw;

    sget-object v1, Ldxw;->a:Ldxw;

    if-eq v0, v1, :cond_1

    sget-object v1, Ldxw;->c:Ldxw;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    sget v0, Lein;->a:I

    :try_start_0
    iget-object v0, p0, Leaz;->c:Lebb;

    iget-object v0, v0, Lebb;->c:Ljava/util/concurrent/Executor;

    .line 19
    new-instance v1, Leay;

    .line 18
    invoke-direct {v1, p0}, Leay;-><init>(Leaz;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 17
    :catchall_0
    move-exception v0

    .line 19
    throw v0

    .line 0
    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Ldxt;)V
    .locals 1

    .line 11
    sget p1, Lein;->a:I

    :try_start_0
    iget-object p1, p0, Leaz;->c:Lebb;

    iget-object p1, p1, Lebb;->c:Ljava/util/concurrent/Executor;

    .line 13
    new-instance v0, Leav;

    .line 12
    invoke-direct {v0, p0}, Leav;-><init>(Leaz;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 13
    throw p1
.end method

.method public final a(Ldyv;Ldxt;)V
    .locals 1

    .line 1
    sget-object v0, Lebd;->a:Lebd;

    invoke-virtual {p0, p1, v0, p2}, Leaz;->a(Ldyv;Lebd;Ldxt;)V

    return-void
.end method

.method public final a(Ldyv;Lebd;Ldxt;)V
    .locals 2

    .line 2
    sget p2, Lein;->a:I

    :try_start_0
    iget-object p2, p0, Leaz;->c:Lebb;

    invoke-virtual {p2}, Lebb;->d()Ldwc;

    move-result-object p2

    iget-object v0, p1, Ldyv;->l:Ldys;

    .line 3
    sget-object v1, Ldys;->b:Ldys;

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p2}, Ldwc;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p1, Ledu;

    .line 5
    invoke-direct {p1}, Ledu;-><init>()V

    iget-object p2, p0, Leaz;->c:Lebb;

    iget-object p2, p2, Lebb;->f:Lebc;

    .line 6
    invoke-interface {p2, p1}, Lebc;->a(Ledu;)V

    sget-object p2, Ldyv;->e:Ldyv;

    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "ClientCall was cancelled at or after deadline. "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ldyv;->b(Ljava/lang/String;)Ldyv;

    move-result-object p1

    .line 8
    new-instance p3, Ldxt;

    invoke-direct {p3}, Ldxt;-><init>()V

    goto :goto_0

    .line 9
    :cond_0
    goto :goto_0

    .line 10
    :cond_1
    nop

    .line 8
    :goto_0
    iget-object p2, p0, Leaz;->c:Lebb;

    iget-object p2, p2, Lebb;->c:Ljava/util/concurrent/Executor;

    new-instance v0, Leax;

    .line 9
    invoke-direct {v0, p0, p1, p3}, Leax;-><init>(Leaz;Ldyv;Ldxt;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 10
    throw p1
.end method

.method public final a(Lega;)V
    .locals 2

    .line 14
    sget v0, Lein;->a:I

    :try_start_0
    iget-object v0, p0, Leaz;->c:Lebb;

    iget-object v0, v0, Lebb;->c:Ljava/util/concurrent/Executor;

    .line 16
    new-instance v1, Leaw;

    .line 15
    invoke-direct {v1, p0, p1}, Leaw;-><init>(Leaz;Lega;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 14
    :catchall_0
    move-exception p1

    .line 16
    throw p1
.end method
