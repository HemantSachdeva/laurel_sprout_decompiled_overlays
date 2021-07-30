.class public final Lkl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lld;


# instance fields
.field a:Landroid/content/Context;

.field public b:Landroid/view/LayoutInflater;

.field c:Lkp;

.field public d:Landroid/support/v7/view/menu/ExpandedMenuView;

.field e:I

.field final f:I

.field public g:Llc;

.field public h:Lkk;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0d0010

    iput v0, p0, Lkl;->f:I

    iput-object p1, p0, Lkl;->a:Landroid/content/Context;

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lkl;->b:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lkp;)V
    .locals 1

    iget-object v0, p0, Lkl;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lkl;->a:Landroid/content/Context;

    iget-object v0, p0, Lkl;->b:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lkl;->b:Landroid/view/LayoutInflater;

    :cond_0
    iput-object p2, p0, Lkl;->c:Lkp;

    iget-object p1, p0, Lkl;->h:Lkk;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lkk;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public final a(Lkp;Z)V
    .locals 1

    iget-object v0, p0, Lkl;->g:Llc;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1, p2}, Llc;->a(Lkp;Z)V

    :cond_0
    return-void
.end method

.method public final a(Llc;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lks;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lll;)Z
    .locals 7

    .line 7
    invoke-virtual {p1}, Lkp;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 8
    :cond_0
    new-instance v0, Lkq;

    invoke-direct {v0, p1}, Lkq;-><init>(Lkp;)V

    iget-object v2, v0, Lkq;->a:Lkp;

    iget-object v3, v2, Lkp;->a:Landroid/content/Context;

    .line 9
    invoke-static {v3, v1}, Lia;->a(Landroid/content/Context;I)I

    move-result v1

    new-instance v4, Lhv;

    new-instance v5, Landroid/view/ContextThemeWrapper;

    .line 10
    invoke-static {v3, v1}, Lia;->a(Landroid/content/Context;I)I

    move-result v6

    invoke-direct {v5, v3, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v4, v5}, Lhv;-><init>(Landroid/content/Context;)V

    new-instance v3, Lkl;

    iget-object v5, v4, Lhv;->a:Landroid/content/Context;

    .line 11
    invoke-direct {v3, v5}, Lkl;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lkq;->c:Lkl;

    iget-object v3, v0, Lkq;->c:Lkl;

    iput-object v0, v3, Lkl;->g:Llc;

    iget-object v5, v0, Lkq;->a:Lkp;

    .line 12
    invoke-virtual {v5, v3}, Lkp;->a(Lld;)V

    iget-object v3, v0, Lkq;->c:Lkl;

    .line 13
    invoke-virtual {v3}, Lkl;->c()Landroid/widget/ListAdapter;

    move-result-object v3

    iput-object v3, v4, Lhv;->g:Landroid/widget/ListAdapter;

    iput-object v0, v4, Lhv;->h:Landroid/content/DialogInterface$OnClickListener;

    iget-object v3, v2, Lkp;->g:Landroid/view/View;

    if-eqz v3, :cond_1

    iput-object v3, v4, Lhv;->e:Landroid/view/View;

    goto :goto_0

    .line 19
    :cond_1
    iget-object v3, v2, Lkp;->f:Landroid/graphics/drawable/Drawable;

    iput-object v3, v4, Lhv;->c:Landroid/graphics/drawable/Drawable;

    iget-object v2, v2, Lkp;->e:Ljava/lang/CharSequence;

    iput-object v2, v4, Lhv;->d:Ljava/lang/CharSequence;

    .line 13
    :goto_0
    iput-object v0, v4, Lhv;->f:Landroid/content/DialogInterface$OnKeyListener;

    .line 14
    invoke-static {v4, v1}, Lhz;->a(Lhv;I)Lia;

    move-result-object v1

    iput-object v1, v0, Lkq;->b:Lia;

    iget-object v1, v0, Lkq;->b:Lia;

    .line 15
    invoke-virtual {v1, v0}, Lia;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, v0, Lkq;->b:Lia;

    .line 16
    invoke-virtual {v1}, Lia;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x3eb

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 17
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, v0, Lkq;->b:Lia;

    .line 18
    invoke-virtual {v0}, Lia;->show()V

    iget-object v0, p0, Lkl;->g:Llc;

    if-eqz v0, :cond_2

    .line 19
    invoke-interface {v0, p1}, Llc;->a(Lkp;)Z

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lkl;->h:Lkk;

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v0}, Lkk;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final b(Lks;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final c()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Lkl;->h:Lkk;

    if-nez v0, :cond_0

    new-instance v0, Lkk;

    .line 2
    invoke-direct {v0, p0}, Lkk;-><init>(Lkl;)V

    iput-object v0, p0, Lkl;->h:Lkk;

    :cond_0
    iget-object v0, p0, Lkl;->h:Lkk;

    return-object v0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lkl;->c:Lkp;

    iget-object p2, p0, Lkl;->h:Lkk;

    .line 6
    invoke-virtual {p2, p3}, Lkk;->a(I)Lks;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Lkp;->a(Landroid/view/MenuItem;Lld;I)Z

    return-void
.end method
