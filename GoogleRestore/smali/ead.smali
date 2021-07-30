.class public abstract Lead;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lehu;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ldvv;)V
    .locals 1

    invoke-virtual {p0}, Lead;->e()Ledi;

    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Ledi;->a(Ldvv;)V

    return-void
.end method

.method public final a(Ljava/io/InputStream;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lead;->e()Ledi;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Ledi;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lead;->e()Ledi;

    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Ledi;->a(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_0
    invoke-static {p1}, Ledp;->a(Ljava/io/Closeable;)V

    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    invoke-static {p1}, Ledp;->a(Ljava/io/Closeable;)V

    .line 9
    throw v0
.end method

.method public abstract c()Leac;
.end method

.method protected abstract e()Ledi;
.end method

.method public final g()V
    .locals 2

    invoke-virtual {p0}, Lead;->c()Leac;

    move-result-object v0

    iget-object v1, v0, Leac;->d:Legc;

    iput-object v0, v1, Legc;->a:Lefz;

    iput-object v1, v0, Leac;->a:Lebq;

    return-void
.end method

.method public final h()V
    .locals 1

    invoke-virtual {p0}, Lead;->e()Ledi;

    move-result-object v0

    .line 1
    invoke-interface {v0}, Ledi;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lead;->e()Ledi;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ledi;->a()V

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 2

    invoke-virtual {p0}, Lead;->c()Leac;

    move-result-object v0

    .line 3
    sget v1, Lein;->a:I

    new-instance v1, Leab;

    .line 4
    invoke-direct {v1, v0}, Leab;-><init>(Leac;)V

    invoke-virtual {v0, v1}, Leac;->a(Ljava/lang/Runnable;)V

    return-void
.end method
