.class public Lcdh;
.super Ltt;
.source "PG"


# instance fields
.field private a:Lcdi;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ltt;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ltt;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 1

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcdh;->b(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    iget-object p1, p0, Lcdh;->a:Lcdi;

    if-nez p1, :cond_0

    new-instance p1, Lcdi;

    .line 3
    invoke-direct {p1, p2}, Lcdi;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcdh;->a:Lcdi;

    :cond_0
    iget-object p1, p0, Lcdh;->a:Lcdi;

    iget-object p2, p1, Lcdi;->a:Landroid/view/View;

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    iput p2, p1, Lcdi;->b:I

    iget-object p2, p1, Lcdi;->a:Landroid/view/View;

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    iput p2, p1, Lcdi;->c:I

    iget-object p1, p0, Lcdh;->a:Lcdi;

    iget-object p2, p1, Lcdi;->a:Landroid/view/View;

    .line 6
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    iget v0, p1, Lcdi;->b:I

    sub-int/2addr p3, v0

    neg-int p3, p3

    invoke-static {p2, p3}, Lge;->d(Landroid/view/View;I)V

    iget-object p2, p1, Lcdi;->a:Landroid/view/View;

    .line 7
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p3

    iget p1, p1, Lcdi;->c:I

    sub-int/2addr p3, p1

    neg-int p1, p3

    invoke-static {p2, p1}, Lge;->e(Landroid/view/View;I)V

    const/4 p1, 0x1

    return p1
.end method

.method protected b(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->b(Landroid/view/View;I)V

    return-void
.end method

.method public final c()I
    .locals 2

    iget-object v0, p0, Lcdh;->a:Lcdi;

    const/4 v1, 0x0

    return v1
.end method
