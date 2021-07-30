.class public final Lqr;
.super Lvt;
.source "PG"


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lqr;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Lvt;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lqr;->a:Landroid/support/v7/widget/RecyclerView;

    .line 1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lqr;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lqx;->f:Z

    .line 2
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->c(Z)V

    iget-object v0, p0, Lqr;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->c:Lmi;

    .line 3
    invoke-virtual {v0}, Lmi;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lqr;->a:Landroid/support/v7/widget/RecyclerView;

    .line 4
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 4

    iget-object v0, p0, Lqr;->a:Landroid/support/v7/widget/RecyclerView;

    .line 5
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lqr;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->c:Lmi;

    iget-object v1, v0, Lmi;->a:Ljava/util/ArrayList;

    .line 6
    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p1, v3}, Lmi;->a(III)Lmh;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, v0, Lmi;->c:I

    or-int/2addr p1, v2

    iput p1, v0, Lmi;->c:I

    iget-object p1, v0, Lmi;->a:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v3, :cond_0

    .line 8
    invoke-virtual {p0}, Lqr;->b()V

    :cond_0
    return-void
.end method

.method public final a(II)V
    .locals 3

    iget-object v0, p0, Lqr;->a:Landroid/support/v7/widget/RecyclerView;

    .line 9
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lqr;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->c:Lmi;

    iget-object v1, v0, Lmi;->a:Ljava/util/ArrayList;

    .line 10
    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, p2}, Lmi;->a(III)Lmh;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, v0, Lmi;->c:I

    or-int/2addr p1, v2

    iput p1, v0, Lmi;->c:I

    iget-object p1, v0, Lmi;->a:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v2, :cond_0

    .line 12
    invoke-virtual {p0}, Lqr;->b()V

    :cond_0
    return-void
.end method

.method final b()V
    .locals 2

    .line 17
    sget v0, Landroid/support/v7/widget/RecyclerView;->O:I

    iget-object v0, p0, Lqr;->a:Landroid/support/v7/widget/RecyclerView;

    iget-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->p:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->o:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->g:Ljava/lang/Runnable;

    .line 19
    invoke-static {v0, v1}, Lge;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->t:Z

    .line 18
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public final b(II)V
    .locals 3

    iget-object v0, p0, Lqr;->a:Landroid/support/v7/widget/RecyclerView;

    .line 13
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lqr;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->c:Lmi;

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lmi;->a:Ljava/util/ArrayList;

    .line 14
    const/4 v2, 0x2

    invoke-virtual {v0, v2, p1, p2}, Lmi;->a(III)Lmh;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, v0, Lmi;->c:I

    or-int/2addr p1, v2

    iput p1, v0, Lmi;->c:I

    iget-object p1, v0, Lmi;->a:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 16
    invoke-virtual {p0}, Lqr;->b()V

    return-void

    .line 13
    :cond_1
    :goto_0
    return-void
.end method
