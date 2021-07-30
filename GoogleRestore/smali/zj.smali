.class final Lzj;
.super Lyp;
.source "PG"


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lzm;


# direct methods
.method public constructor <init>(Lzm;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lzj;->d:Lzm;

    iput-object p2, p0, Lzj;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lzj;->b:Landroid/view/View;

    iput-object p4, p0, Lzj;->c:Landroid/view/View;

    invoke-direct {p0}, Lyp;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyo;)V
    .locals 3

    iget-object v0, p0, Lzj;->c:Landroid/view/View;

    .line 1
    const v1, 0x7f0a0140

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lzj;->a:Landroid/view/ViewGroup;

    .line 2
    invoke-static {v0}, Lza;->a(Landroid/view/ViewGroup;)Lyz;

    move-result-object v0

    iget-object v1, p0, Lzj;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Lyz;->b(Landroid/view/View;)V

    .line 3
    invoke-virtual {p1, p0}, Lyo;->b(Lyn;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lzj;->a:Landroid/view/ViewGroup;

    .line 4
    invoke-static {v0}, Lza;->a(Landroid/view/ViewGroup;)Lyz;

    move-result-object v0

    iget-object v1, p0, Lzj;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Lyz;->b(Landroid/view/View;)V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lzj;->b:Landroid/view/View;

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lzj;->a:Landroid/view/ViewGroup;

    .line 6
    invoke-static {v0}, Lza;->a(Landroid/view/ViewGroup;)Lyz;

    move-result-object v0

    iget-object v1, p0, Lzj;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Lyz;->a(Landroid/view/View;)V

    return-void

    :cond_0
    iget-object v0, p0, Lzj;->d:Lzm;

    .line 7
    invoke-virtual {v0}, Lyo;->f()V

    return-void
.end method
