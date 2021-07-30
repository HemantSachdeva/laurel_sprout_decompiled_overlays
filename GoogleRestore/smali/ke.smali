.class final Lke;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lkj;


# direct methods
.method public constructor <init>(Lkj;)V
    .locals 0

    iput-object p1, p0, Lke;->a:Lkj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 4

    iget-object v0, p0, Lke;->a:Lkj;

    .line 1
    invoke-virtual {v0}, Lkj;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lke;->a:Lkj;

    iget-object v0, v0, Lkj;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lke;->a:Lkj;

    iget-object v0, v0, Lkj;->b:Ljava/util/List;

    .line 2
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lki;

    iget-object v0, v0, Lki;->a:Lps;

    iget-boolean v0, v0, Lpp;->p:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lke;->a:Lkj;

    iget-object v0, v0, Lkj;->d:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lke;->a:Lkj;

    iget-object v0, v0, Lkj;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 5
    check-cast v3, Lki;

    .line 6
    iget-object v3, v3, Lki;->a:Lps;

    invoke-virtual {v3}, Lpp;->S()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_1
    :goto_1
    iget-object v0, p0, Lke;->a:Lkj;

    .line 4
    invoke-virtual {v0}, Lkj;->d()V

    return-void

    .line 6
    :cond_2
    return-void
.end method
