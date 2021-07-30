.class final Lli;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Llk;


# direct methods
.method public constructor <init>(Llk;)V
    .locals 0

    iput-object p1, p0, Lli;->a:Llk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lli;->a:Llk;

    .line 1
    invoke-virtual {v0}, Llk;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lli;->a:Llk;

    iget-object v1, v0, Llk;->a:Lps;

    iget-boolean v1, v1, Lpp;->p:Z

    if-nez v1, :cond_2

    iget-object v0, v0, Llk;->c:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lli;->a:Llk;

    iget-object v0, v0, Llk;->a:Lps;

    .line 4
    invoke-virtual {v0}, Lpp;->S()V

    return-void

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lli;->a:Llk;

    .line 3
    invoke-virtual {v0}, Llk;->d()V

    return-void

    .line 4
    :cond_2
    return-void
.end method
