.class public final Lcnu;
.super Lqc;
.source "PG"


# instance fields
.field public final c:Lqc;

.field public d:Landroid/view/View;

.field private final e:Lvt;


# direct methods
.method public constructor <init>(Lqc;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lqc;-><init>()V

    new-instance v0, Lcnt;

    .line 2
    invoke-direct {v0, p0}, Lcnt;-><init>(Lcnu;)V

    iput-object v0, p0, Lcnu;->e:Lvt;

    iput-object p1, p0, Lcnu;->c:Lqc;

    .line 3
    invoke-virtual {p1, v0}, Lqc;->a(Lvt;)V

    iget-boolean p1, p1, Lqc;->b:Z

    .line 4
    invoke-virtual {p0, p1}, Lqc;->a(Z)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget-object v0, p0, Lcnu;->c:Lqc;

    .line 5
    invoke-virtual {v0}, Lqc;->a()I

    move-result v0

    iget-object v1, p0, Lcnu;->d:Landroid/view/View;

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public final a(I)I
    .locals 1

    iget-object v0, p0, Lcnu;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    if-gez p1, :cond_1

    const p1, 0x7fffffff

    return p1

    :cond_1
    iget-object v0, p0, Lcnu;->c:Lqc;

    .line 7
    invoke-virtual {v0, p1}, Lqc;->a(I)I

    move-result p1

    return p1
.end method

.method public final a(Landroid/view/ViewGroup;I)Lqz;
    .locals 2

    const v0, 0x7fffffff

    if-ne p2, v0, :cond_0

    new-instance p2, Landroid/widget/FrameLayout;

    .line 15
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 16
    invoke-direct {p1, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 17
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    new-instance p1, Lcnv;

    invoke-direct {p1, p2}, Lcnv;-><init>(Landroid/view/View;)V

    return-object p1

    :cond_0
    iget-object v0, p0, Lcnu;->c:Lqc;

    .line 19
    invoke-virtual {v0, p1, p2}, Lqc;->a(Landroid/view/ViewGroup;I)Lqz;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lqz;I)V
    .locals 2

    iget-object v0, p0, Lcnu;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, -0x1

    .line 8
    :cond_0
    instance-of v1, p1, Lcnv;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcnu;->d:Landroid/view/View;

    .line 11
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcnu;->d:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 12
    :cond_1
    iget-object p1, p1, Lqz;->a:Landroid/view/View;

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcnu;->d:Landroid/view/View;

    .line 13
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 9
    const-string p2, "HeaderViewHolder cannot find mHeader"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_3
    iget-object v0, p0, Lcnu;->c:Lqc;

    .line 14
    invoke-virtual {v0, p1, p2}, Lqc;->a(Lqz;I)V

    return-void
.end method

.method public final b(I)J
    .locals 2

    iget-object v0, p0, Lcnu;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    if-gez p1, :cond_1

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    :cond_1
    iget-object v0, p0, Lcnu;->c:Lqc;

    .line 6
    invoke-virtual {v0, p1}, Lqc;->b(I)J

    move-result-wide v0

    return-wide v0
.end method
