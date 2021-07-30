.class final Lbq;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final b:Lbx;


# direct methods
.method public constructor <init>(Lbx;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lbq;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p1, p0, Lbq;->b:Lbx;

    return-void
.end method


# virtual methods
.method final a(Lba;Landroid/os/Bundle;Z)V
    .locals 2

    iget-object v0, p0, Lbq;->b:Lbx;

    iget-object v0, v0, Lbx;->l:Lba;

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0}, Lba;->t()Lbx;

    move-result-object v0

    iget-object v0, v0, Lbx;->h:Lbq;

    const/4 v1, 0x1

    .line 38
    invoke-virtual {v0, p1, p2, v1}, Lbq;->a(Lba;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object p1, p0, Lbq;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 39
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lbp;

    if-eqz p3, :cond_1

    .line 40
    iget-boolean p2, p2, Lbp;->a:Z

    goto :goto_0

    .line 41
    :cond_1
    iget-object p1, p2, Lbp;->b:Lec;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method final a(Lba;Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 2

    iget-object v0, p0, Lbq;->b:Lbx;

    iget-object v0, v0, Lbx;->l:Lba;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Lba;->t()Lbx;

    move-result-object v0

    iget-object v0, v0, Lbx;->h:Lbq;

    const/4 v1, 0x1

    .line 63
    invoke-virtual {v0, p1, p2, p3, v1}, Lbq;->a(Lba;Landroid/view/View;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object p1, p0, Lbq;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 64
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lbp;

    if-eqz p4, :cond_1

    .line 65
    iget-boolean p2, p2, Lbp;->a:Z

    goto :goto_0

    .line 66
    :cond_1
    iget-object p1, p2, Lbp;->b:Lec;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method final a(Lba;Z)V
    .locals 2

    iget-object v0, p0, Lbq;->b:Lbx;

    iget-object v0, v0, Lbx;->l:Lba;

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0}, Lba;->t()Lbx;

    move-result-object v0

    iget-object v0, v0, Lbx;->h:Lbq;

    const/4 v1, 0x1

    .line 33
    invoke-virtual {v0, p1, v1}, Lbq;->a(Lba;Z)V

    :cond_0
    iget-object p1, p0, Lbq;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 34
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbp;

    if-eqz p2, :cond_1

    .line 35
    iget-boolean v0, v0, Lbp;->a:Z

    goto :goto_0

    .line 36
    :cond_1
    iget-object p1, v0, Lbp;->b:Lec;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method final b(Lba;Landroid/os/Bundle;Z)V
    .locals 2

    iget-object v0, p0, Lbq;->b:Lbx;

    iget-object v0, v0, Lbx;->l:Lba;

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0}, Lba;->t()Lbx;

    move-result-object v0

    iget-object v0, v0, Lbx;->h:Lbq;

    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, p1, p2, v1}, Lbq;->b(Lba;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object p1, p0, Lbq;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 14
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lbp;

    if-eqz p3, :cond_1

    .line 15
    iget-boolean p2, p2, Lbp;->a:Z

    goto :goto_0

    .line 16
    :cond_1
    iget-object p1, p2, Lbp;->b:Lec;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method final b(Lba;Z)V
    .locals 2

    iget-object v0, p0, Lbq;->b:Lbx;

    iget-object v0, v0, Lbx;->l:Lba;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lba;->t()Lbx;

    move-result-object v0

    iget-object v0, v0, Lbx;->h:Lbq;

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, p1, v1}, Lbq;->b(Lba;Z)V

    :cond_0
    iget-object p1, p0, Lbq;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbp;

    if-eqz p2, :cond_1

    .line 10
    iget-boolean v0, v0, Lbp;->a:Z

    goto :goto_0

    .line 11
    :cond_1
    iget-object p1, v0, Lbp;->b:Lec;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method final c(Lba;Landroid/os/Bundle;Z)V
    .locals 2

    iget-object v0, p0, Lbq;->b:Lbx;

    iget-object v0, v0, Lbx;->l:Lba;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lba;->t()Lbx;

    move-result-object v0

    iget-object v0, v0, Lbx;->h:Lbq;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, p1, p2, v1}, Lbq;->c(Lba;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object p1, p0, Lbq;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lbp;

    if-eqz p3, :cond_1

    .line 5
    iget-boolean p2, p2, Lbp;->a:Z

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p2, Lbp;->b:Lec;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method final c(Lba;Z)V
    .locals 2

    iget-object v0, p0, Lbq;->b:Lbx;

    iget-object v0, v0, Lbx;->l:Lba;

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Lba;->t()Lbx;

    move-result-object v0

    iget-object v0, v0, Lbx;->h:Lbq;

    const/4 v1, 0x1

    .line 53
    invoke-virtual {v0, p1, v1}, Lbq;->c(Lba;Z)V

    :cond_0
    iget-object p1, p0, Lbq;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 54
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbp;

    if-eqz p2, :cond_1

    .line 55
    iget-boolean v0, v0, Lbp;->a:Z

    goto :goto_0

    .line 56
    :cond_1
    iget-object p1, v0, Lbp;->b:Lec;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method final d(Lba;Landroid/os/Bundle;Z)V
    .locals 2

    iget-object v0, p0, Lbq;->b:Lbx;

    iget-object v0, v0, Lbx;->l:Lba;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Lba;->t()Lbx;

    move-result-object v0

    iget-object v0, v0, Lbx;->h:Lbq;

    const/4 v1, 0x1

    .line 48
    invoke-virtual {v0, p1, p2, v1}, Lbq;->d(Lba;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object p1, p0, Lbq;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 49
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lbp;

    if-eqz p3, :cond_1

    .line 50
    iget-boolean p2, p2, Lbp;->a:Z

    goto :goto_0

    .line 51
    :cond_1
    iget-object p1, p2, Lbp;->b:Lec;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method final d(Lba;Z)V
    .locals 2

    iget-object v0, p0, Lbq;->b:Lbx;

    iget-object v0, v0, Lbx;->l:Lba;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Lba;->t()Lbx;

    move-result-object v0

    iget-object v0, v0, Lbx;->h:Lbq;

    const/4 v1, 0x1

    .line 43
    invoke-virtual {v0, p1, v1}, Lbq;->d(Lba;Z)V

    :cond_0
    iget-object p1, p0, Lbq;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 44
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbp;

    if-eqz p2, :cond_1

    .line 45
    iget-boolean v0, v0, Lbp;->a:Z

    goto :goto_0

    .line 46
    :cond_1
    iget-object p1, v0, Lbp;->b:Lec;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method final e(Lba;Z)V
    .locals 2

    iget-object v0, p0, Lbq;->b:Lbx;

    iget-object v0, v0, Lbx;->l:Lba;

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0}, Lba;->t()Lbx;

    move-result-object v0

    iget-object v0, v0, Lbx;->h:Lbq;

    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, p1, v1}, Lbq;->e(Lba;Z)V

    :cond_0
    iget-object p1, p0, Lbq;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 29
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbp;

    if-eqz p2, :cond_1

    .line 30
    iget-boolean v0, v0, Lbp;->a:Z

    goto :goto_0

    .line 31
    :cond_1
    iget-object p1, v0, Lbp;->b:Lec;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method final f(Lba;Z)V
    .locals 2

    iget-object v0, p0, Lbq;->b:Lbx;

    iget-object v0, v0, Lbx;->l:Lba;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Lba;->t()Lbx;

    move-result-object v0

    iget-object v0, v0, Lbx;->h:Lbq;

    const/4 v1, 0x1

    .line 58
    invoke-virtual {v0, p1, v1}, Lbq;->f(Lba;Z)V

    :cond_0
    iget-object p1, p0, Lbq;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 59
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbp;

    if-eqz p2, :cond_1

    .line 60
    iget-boolean v0, v0, Lbp;->a:Z

    goto :goto_0

    .line 61
    :cond_1
    iget-object p1, v0, Lbp;->b:Lec;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method final g(Lba;Z)V
    .locals 2

    iget-object v0, p0, Lbq;->b:Lbx;

    iget-object v0, v0, Lbx;->l:Lba;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Lba;->t()Lbx;

    move-result-object v0

    iget-object v0, v0, Lbx;->h:Lbq;

    const/4 v1, 0x1

    .line 68
    invoke-virtual {v0, p1, v1}, Lbq;->g(Lba;Z)V

    :cond_0
    iget-object p1, p0, Lbq;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 69
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbp;

    if-eqz p2, :cond_1

    .line 70
    iget-boolean v0, v0, Lbp;->a:Z

    goto :goto_0

    .line 71
    :cond_1
    iget-object p1, v0, Lbp;->b:Lec;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method final h(Lba;Z)V
    .locals 2

    iget-object v0, p0, Lbq;->b:Lbx;

    iget-object v0, v0, Lbx;->l:Lba;

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {v0}, Lba;->t()Lbx;

    move-result-object v0

    iget-object v0, v0, Lbx;->h:Lbq;

    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, p1, v1}, Lbq;->h(Lba;Z)V

    :cond_0
    iget-object p1, p0, Lbq;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbp;

    if-eqz p2, :cond_1

    .line 20
    iget-boolean v0, v0, Lbp;->a:Z

    goto :goto_0

    .line 21
    :cond_1
    iget-object p1, v0, Lbp;->b:Lec;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method final i(Lba;Z)V
    .locals 2

    iget-object v0, p0, Lbq;->b:Lbx;

    iget-object v0, v0, Lbx;->l:Lba;

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v0}, Lba;->t()Lbx;

    move-result-object v0

    iget-object v0, v0, Lbx;->h:Lbq;

    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, p1, v1}, Lbq;->i(Lba;Z)V

    :cond_0
    iget-object p1, p0, Lbq;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 24
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbp;

    if-eqz p2, :cond_1

    .line 25
    iget-boolean v0, v0, Lbp;->a:Z

    goto :goto_0

    .line 26
    :cond_1
    iget-object p1, v0, Lbp;->b:Lec;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method
