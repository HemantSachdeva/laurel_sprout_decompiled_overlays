.class public final Lwh;
.super Lv;
.source "PG"

# interfaces
.implements Lwp;


# instance fields
.field public final j:Landroid/os/Bundle;

.field public final k:Lwq;

.field public l:Lwi;

.field private m:Ll;

.field private n:Lwq;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Lwq;Lwq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lv;-><init>()V

    iput-object p1, p0, Lwh;->j:Landroid/os/Bundle;

    iput-object p2, p0, Lwh;->k:Lwq;

    iput-object p3, p0, Lwh;->n:Lwq;

    iget-object p1, p2, Lwq;->d:Lwp;

    if-nez p1, :cond_0

    .line 2
    iput-object p0, p2, Lwq;->d:Lwp;

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 2
    const-string p2, "There is already a listener registered"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Z)Lwq;
    .locals 4

    const/4 v0, 0x3

    invoke-static {v0}, Lwg;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Destroying: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lwh;->k:Lwq;

    .line 4
    invoke-virtual {v0}, Lwq;->e()V

    iget-object v0, p0, Lwh;->k:Lwq;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lwq;->g:Z

    iget-object v0, p0, Lwh;->l:Lwi;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0, v0}, Ls;->b(Lw;)V

    if-eqz p1, :cond_2

    iget-boolean v2, v0, Lwi;->c:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    invoke-static {v2}, Lwg;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Resetting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lwi;->a:Lwq;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LoaderManager"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, v0, Lwi;->b:Lwf;

    check-cast v2, Lbua;

    iget-object v3, v2, Lbua;->Z:Lbuc;

    .line 7
    invoke-virtual {v3, v1}, Lbuc;->a(Landroid/database/Cursor;)V

    iget-object v2, v2, Lbua;->d:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v3, 0x0

    .line 8
    invoke-virtual {v2, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->a(Z)V

    :cond_2
    iget-object v2, p0, Lwh;->k:Lwq;

    iget-object v3, v2, Lwq;->d:Lwp;

    if-eqz v3, :cond_7

    .line 9
    if-ne v3, p0, :cond_6

    .line 10
    iput-object v1, v2, Lwq;->d:Lwp;

    if-eqz v0, :cond_3

    iget-boolean v0, v0, Lwi;->c:Z

    if-eqz v0, :cond_4

    :cond_3
    if-eqz p1, :cond_5

    .line 11
    :cond_4
    invoke-virtual {v2}, Lwq;->h()V

    iget-object p1, p0, Lwh;->n:Lwq;

    return-object p1

    :cond_5
    return-object v2

    .line 9
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 10
    const-string v0, "Attempting to unregister the wrong listener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 9
    const-string v0, "No listener register"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lv;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lwh;->n:Lwq;

    if-eqz p1, :cond_0

    .line 24
    invoke-virtual {p1}, Lwq;->h()V

    const/4 p1, 0x0

    iput-object p1, p0, Lwh;->n:Lwq;

    :cond_0
    return-void
.end method

.method public final a(Ll;Lwf;)V
    .locals 2

    new-instance v0, Lwi;

    iget-object v1, p0, Lwh;->k:Lwq;

    .line 20
    invoke-direct {v0, v1, p2}, Lwi;-><init>(Lwq;Lwf;)V

    .line 21
    invoke-virtual {p0, p1, v0}, Ls;->a(Ll;Lw;)V

    iget-object p2, p0, Lwh;->l:Lwi;

    if-eqz p2, :cond_0

    .line 22
    invoke-virtual {p0, p2}, Ls;->b(Lw;)V

    :cond_0
    iput-object p1, p0, Lwh;->m:Ll;

    iput-object v0, p0, Lwh;->l:Lwi;

    return-void
.end method

.method protected final b()V
    .locals 4

    const/4 v0, 0x2

    invoke-static {v0}, Lwg;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Starting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lwh;->k:Lwq;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lwq;->f:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lwq;->h:Z

    iput-boolean v1, v0, Lwq;->g:Z

    move-object v2, v0

    check-cast v2, Lwn;

    iget-object v3, v2, Lwn;->c:Landroid/database/Cursor;

    if-eqz v3, :cond_1

    .line 15
    invoke-virtual {v2, v3}, Lwn;->a(Landroid/database/Cursor;)V

    :cond_1
    iget-boolean v3, v0, Lwq;->i:Z

    iput-boolean v1, v0, Lwq;->i:Z

    iget-boolean v1, v0, Lwq;->j:Z

    or-int/2addr v1, v3

    iput-boolean v1, v0, Lwq;->j:Z

    if-nez v3, :cond_3

    iget-object v1, v2, Lwn;->c:Landroid/database/Cursor;

    if-nez v1, :cond_2

    goto :goto_0

    .line 16
    :cond_2
    return-void

    :cond_3
    :goto_0
    invoke-virtual {v0}, Lwq;->a()V

    return-void
.end method

.method public final b(Lw;)V
    .locals 0

    .line 19
    invoke-super {p0, p1}, Lv;->b(Lw;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lwh;->m:Ll;

    iput-object p1, p0, Lwh;->l:Lwi;

    return-void
.end method

.method protected final c()V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Lwg;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Stopping: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lwh;->k:Lwq;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lwq;->f:Z

    .line 18
    invoke-virtual {v0}, Lwq;->e()V

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lwh;->m:Ll;

    iget-object v1, p0, Lwh;->l:Lwi;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 12
    invoke-super {p0, v1}, Lv;->b(Lw;)V

    .line 13
    invoke-virtual {p0, v0, v1}, Ls;->a(Ll;Lw;)V

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 26
    const-string v1, "LoaderInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    const-string v1, " #0 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lwh;->k:Lwq;

    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 30
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lwh;->k:Lwq;

    .line 32
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
