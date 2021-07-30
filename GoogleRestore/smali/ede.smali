.class abstract Lede;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lebc;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ldvb;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final a(I)V
    .locals 1

    invoke-virtual {p0}, Lede;->b()Lebc;

    move-result-object v0

    .line 11
    invoke-interface {v0, p1}, Lebc;->a(I)V

    return-void
.end method

.method public final a(Ldvv;)V
    .locals 1

    invoke-virtual {p0}, Lede;->b()Lebc;

    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lebc;->a(Ldvv;)V

    return-void
.end method

.method public final a(Ldwc;)V
    .locals 1

    invoke-virtual {p0}, Lede;->b()Lebc;

    move-result-object v0

    .line 8
    invoke-interface {v0, p1}, Lebc;->a(Ldwc;)V

    return-void
.end method

.method public final a(Ldwf;)V
    .locals 1

    invoke-virtual {p0}, Lede;->b()Lebc;

    move-result-object v0

    .line 9
    invoke-interface {v0, p1}, Lebc;->a(Ldwf;)V

    return-void
.end method

.method public a(Lebe;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final a(Ledu;)V
    .locals 1

    invoke-virtual {p0}, Lede;->b()Lebc;

    move-result-object v0

    .line 1
    invoke-interface {v0, p1}, Lebc;->a(Ledu;)V

    return-void
.end method

.method public final a(Ljava/io/InputStream;)V
    .locals 1

    invoke-virtual {p0}, Lede;->b()Lebc;

    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lebc;->a(Ljava/io/InputStream;)V

    return-void
.end method

.method protected abstract b()Lebc;
.end method

.method public final b(I)V
    .locals 1

    invoke-virtual {p0}, Lede;->b()Lebc;

    move-result-object v0

    .line 10
    invoke-interface {v0, p1}, Lebc;->b(I)V

    return-void
.end method

.method public final b(Ldyv;)V
    .locals 1

    invoke-virtual {p0}, Lede;->b()Lebc;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1}, Lebc;->b(Ldyv;)V

    return-void
.end method

.method public final f()V
    .locals 1

    invoke-virtual {p0}, Lede;->b()Lebc;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lebc;->f()V

    return-void
.end method

.method public final g()V
    .locals 1

    invoke-virtual {p0}, Lede;->b()Lebc;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Lebc;->g()V

    return-void
.end method

.method public final h()V
    .locals 1

    invoke-virtual {p0}, Lede;->b()Lebc;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lebc;->h()V

    return-void
.end method

.method public final i()V
    .locals 1

    invoke-virtual {p0}, Lede;->b()Lebc;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Lebc;->i()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 12
    invoke-static {p0}, Lcqt;->a(Ljava/lang/Object;)Lcqs;

    move-result-object v0

    invoke-virtual {p0}, Lede;->b()Lebc;

    move-result-object v1

    .line 13
    const-string v2, "delegate"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v0}, Lcqs;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
