.class final Llk;
.super Lkz;
.source "PG"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Lld;


# instance fields
.field final a:Lps;

.field final b:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field c:Landroid/view/View;

.field d:Landroid/view/ViewTreeObserver;

.field private final e:Landroid/content/Context;

.field private final f:Lkp;

.field private final h:Lkm;

.field private final i:Z

.field private final j:I

.field private final k:I

.field private final l:Landroid/view/View$OnAttachStateChangeListener;

.field private m:Landroid/widget/PopupWindow$OnDismissListener;

.field private n:Landroid/view/View;

.field private o:Llc;

.field private p:Z

.field private q:Z

.field private r:I

.field private s:I

.field private t:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkp;Landroid/view/View;IZ)V
    .locals 3

    invoke-direct {p0}, Lkz;-><init>()V

    new-instance v0, Lli;

    .line 1
    invoke-direct {v0, p0}, Lli;-><init>(Llk;)V

    iput-object v0, p0, Llk;->b:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 2
    new-instance v0, Llj;

    invoke-direct {v0, p0}, Llj;-><init>(Llk;)V

    iput-object v0, p0, Llk;->l:Landroid/view/View$OnAttachStateChangeListener;

    const/4 v0, 0x0

    iput v0, p0, Llk;->s:I

    iput-object p1, p0, Llk;->e:Landroid/content/Context;

    iput-object p2, p0, Llk;->f:Lkp;

    iput-boolean p5, p0, Llk;->i:Z

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    new-instance v1, Lkm;

    .line 4
    const v2, 0x7f0d0013

    invoke-direct {v1, p2, v0, p5, v2}, Lkm;-><init>(Lkp;Landroid/view/LayoutInflater;ZI)V

    iput-object v1, p0, Llk;->h:Lkm;

    iput p4, p0, Llk;->k:I

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    .line 6
    invoke-virtual {p5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    .line 7
    const v1, 0x7f070017

    invoke-virtual {p5, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    .line 6
    invoke-static {v0, p5}, Ljava/lang/Math;->max(II)I

    move-result p5

    iput p5, p0, Llk;->j:I

    iput-object p3, p0, Llk;->n:Landroid/view/View;

    .line 8
    new-instance p3, Lps;

    invoke-direct {p3, p1, p4}, Lps;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Llk;->a:Lps;

    .line 9
    invoke-virtual {p2, p0, p1}, Lkp;->a(Lld;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final S()V
    .locals 5

    .line 35
    invoke-virtual {p0}, Llk;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Llk;->p:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Llk;->n:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 36
    iput-object v0, p0, Llk;->c:Landroid/view/View;

    iget-object v0, p0, Llk;->a:Lps;

    .line 37
    invoke-virtual {v0, p0}, Lpp;->a(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, p0, Llk;->a:Lps;

    iput-object p0, v0, Lpp;->m:Landroid/widget/AdapterView$OnItemClickListener;

    .line 38
    invoke-virtual {v0}, Lpp;->l()V

    iget-object v0, p0, Llk;->c:Landroid/view/View;

    iget-object v1, p0, Llk;->d:Landroid/view/ViewTreeObserver;

    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iput-object v2, p0, Llk;->d:Landroid/view/ViewTreeObserver;

    if-nez v1, :cond_1

    iget-object v1, p0, Llk;->b:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 40
    invoke-virtual {v2, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    iget-object v1, p0, Llk;->l:Landroid/view/View$OnAttachStateChangeListener;

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v1, p0, Llk;->a:Lps;

    iput-object v0, v1, Lpp;->l:Landroid/view/View;

    iget v0, p0, Llk;->s:I

    iput v0, v1, Lpp;->j:I

    iget-boolean v0, p0, Llk;->q:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Llk;->h:Lkm;

    iget-object v1, p0, Llk;->e:Landroid/content/Context;

    iget v2, p0, Llk;->j:I

    .line 42
    invoke-static {v0, v1, v2}, Llk;->a(Landroid/widget/ListAdapter;Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Llk;->r:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Llk;->q:Z

    :cond_2
    iget-object v0, p0, Llk;->a:Lps;

    iget v1, p0, Llk;->r:I

    .line 43
    invoke-virtual {v0, v1}, Lpp;->d(I)V

    iget-object v0, p0, Llk;->a:Lps;

    .line 44
    invoke-virtual {v0}, Lpp;->k()V

    iget-object v0, p0, Llk;->a:Lps;

    iget-object v1, p0, Lkz;->g:Landroid/graphics/Rect;

    .line 45
    invoke-virtual {v0, v1}, Lpp;->a(Landroid/graphics/Rect;)V

    iget-object v0, p0, Llk;->a:Lps;

    .line 46
    invoke-virtual {v0}, Lpp;->S()V

    iget-object v0, p0, Llk;->a:Lps;

    iget-object v0, v0, Lpp;->e:Lok;

    .line 47
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-boolean v1, p0, Llk;->t:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Llk;->f:Lkp;

    iget-object v1, v1, Lkp;->e:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    iget-object v1, p0, Llk;->e:Landroid/content/Context;

    .line 48
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0012

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const v2, 0x1020016

    .line 49
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-object v4, p0, Llk;->f:Lkp;

    iget-object v4, v4, Lkp;->e:Ljava/lang/CharSequence;

    .line 50
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    nop

    .line 51
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    const/4 v2, 0x0

    .line 52
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_4
    iget-object v0, p0, Llk;->a:Lps;

    iget-object v1, p0, Llk;->h:Lkm;

    .line 53
    invoke-virtual {v0, v1}, Lpp;->a(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Llk;->a:Lps;

    .line 54
    invoke-virtual {v0}, Lpp;->S()V

    return-void

    .line 35
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 36
    const-string v1, "StandardMenuPopup cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final T()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Llk;->a:Lps;

    iget-object v0, v0, Lpp;->e:Lok;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Llk;->s:I

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Llk;->n:Landroid/view/View;

    return-void
.end method

.method public final a(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Llk;->m:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public final a(Lkp;)V
    .locals 0

    return-void
.end method

.method public final a(Lkp;Z)V
    .locals 1

    iget-object v0, p0, Llk;->f:Lkp;

    if-eq p1, v0, :cond_0

    return-void

    .line 13
    :cond_0
    invoke-virtual {p0}, Llk;->d()V

    iget-object v0, p0, Llk;->o:Llc;

    if-eqz v0, :cond_1

    .line 14
    invoke-interface {v0, p1, p2}, Llc;->a(Lkp;Z)V

    :cond_1
    return-void
.end method

.method public final a(Llc;)V
    .locals 0

    iput-object p1, p0, Llk;->o:Llc;

    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Llk;->h:Lkm;

    iput-boolean p1, v0, Lkm;->b:Z

    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lll;)Z
    .locals 8

    .line 22
    invoke-virtual {p1}, Lkp;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    new-instance v0, Llb;

    iget-object v3, p0, Llk;->e:Landroid/content/Context;

    iget-object v5, p0, Llk;->c:Landroid/view/View;

    iget-boolean v6, p0, Llk;->i:Z

    iget v7, p0, Llk;->k:I

    .line 23
    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Llb;-><init>(Landroid/content/Context;Lkp;Landroid/view/View;ZI)V

    iget-object v2, p0, Llk;->o:Llc;

    .line 24
    invoke-virtual {v0, v2}, Llb;->a(Llc;)V

    .line 25
    invoke-static {p1}, Lkz;->b(Lkp;)Z

    move-result v2

    invoke-virtual {v0, v2}, Llb;->a(Z)V

    iget-object v2, p0, Llk;->m:Landroid/widget/PopupWindow$OnDismissListener;

    iput-object v2, v0, Llb;->c:Landroid/widget/PopupWindow$OnDismissListener;

    const/4 v2, 0x0

    iput-object v2, p0, Llk;->m:Landroid/widget/PopupWindow$OnDismissListener;

    iget-object v2, p0, Llk;->f:Lkp;

    .line 26
    invoke-virtual {v2, v1}, Lkp;->a(Z)V

    iget-object v2, p0, Llk;->a:Lps;

    iget v3, v2, Lpp;->g:I

    .line 27
    invoke-virtual {v2}, Lpp;->c()I

    move-result v2

    iget v4, p0, Llk;->s:I

    iget-object v5, p0, Llk;->n:Landroid/view/View;

    .line 28
    invoke-static {v5}, Lge;->g(Landroid/view/View;)I

    move-result v5

    .line 29
    invoke-static {v4, v5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v4

    and-int/lit8 v4, v4, 0x7

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Llk;->n:Landroid/view/View;

    .line 30
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    .line 32
    :cond_0
    nop

    .line 31
    :goto_0
    invoke-virtual {v0}, Llb;->e()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    goto :goto_1

    .line 33
    :cond_1
    iget-object v4, v0, Llb;->a:Landroid/view/View;

    if-nez v4, :cond_2

    goto :goto_2

    .line 32
    :cond_2
    invoke-virtual {v0, v3, v2, v5, v5}, Llb;->a(IIZZ)V

    .line 31
    :goto_1
    iget-object v0, p0, Llk;->o:Llc;

    if-eqz v0, :cond_3

    .line 33
    invoke-interface {v0, p1}, Llc;->a(Lkp;)Z

    :cond_3
    return v5

    :cond_4
    :goto_2
    return v1
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Llk;->q:Z

    iget-object v0, p0, Llk;->h:Lkm;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Lkm;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 1

    iget-object v0, p0, Llk;->a:Lps;

    iput p1, v0, Lpp;->g:I

    return-void
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Llk;->t:Z

    return-void
.end method

.method public final c(I)V
    .locals 1

    iget-object v0, p0, Llk;->a:Lps;

    .line 34
    invoke-virtual {v0, p1}, Lpp;->a(I)V

    return-void
.end method

.method public final d()V
    .locals 1

    .line 10
    invoke-virtual {p0}, Llk;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llk;->a:Lps;

    .line 11
    invoke-virtual {v0}, Lpp;->d()V

    :cond_0
    return-void
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Llk;->p:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Llk;->a:Lps;

    .line 12
    invoke-virtual {v0}, Lpp;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onDismiss()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Llk;->p:Z

    iget-object v0, p0, Llk;->f:Lkp;

    .line 15
    invoke-virtual {v0}, Lkp;->close()V

    iget-object v0, p0, Llk;->d:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Llk;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Llk;->d:Landroid/view/ViewTreeObserver;

    :cond_0
    iget-object v0, p0, Llk;->d:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Llk;->b:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Llk;->d:Landroid/view/ViewTreeObserver;

    :cond_1
    iget-object v0, p0, Llk;->c:Landroid/view/View;

    iget-object v1, p0, Llk;->l:Landroid/view/View$OnAttachStateChangeListener;

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, p0, Llk;->m:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_2

    .line 19
    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_2
    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 20
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    .line 21
    invoke-virtual {p0}, Llk;->d()V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
