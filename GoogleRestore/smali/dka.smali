.class public final Ldka;
.super Ldjy;
.source "PG"

# interfaces
.implements Ldlk;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Ldil;->a:Ldil;

    const/4 v0, 0x0

    throw v0
.end method

.method public constructor <init>(Ldkb;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ldjy;-><init>(Ldkd;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 6
    invoke-super {p0}, Ldjy;->b()V

    iget-object v0, p0, Ldka;->a:Ldkd;

    .line 7
    check-cast v0, Ldkb;

    iget-object v1, v0, Ldkb;->b:Ldjt;

    invoke-virtual {v1}, Ldjt;->c()Ldjt;

    move-result-object v1

    iput-object v1, v0, Ldkb;->b:Ldjt;

    return-void
.end method

.method public final bridge synthetic e()Ldkd;
    .locals 1

    invoke-virtual {p0}, Ldka;->j()Ldkb;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic g()Ldlj;
    .locals 1

    invoke-virtual {p0}, Ldka;->j()Ldkb;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ldkb;
    .locals 1

    iget-boolean v0, p0, Ldka;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldka;->a:Ldkd;

    .line 3
    check-cast v0, Ldkb;

    return-object v0

    :cond_0
    iget-object v0, p0, Ldka;->a:Ldkd;

    .line 4
    check-cast v0, Ldkb;

    iget-object v0, v0, Ldkb;->b:Ldjt;

    invoke-virtual {v0}, Ldjt;->b()V

    .line 5
    invoke-super {p0}, Ldjy;->e()Ldkd;

    move-result-object v0

    check-cast v0, Ldkb;

    return-object v0
.end method
