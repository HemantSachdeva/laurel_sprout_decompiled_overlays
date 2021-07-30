.class public Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;
.super Lcde;
.source "PG"


# instance fields
.field public a:I

.field private c:I

.field private d:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcde;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcde;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private static final a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V
    .locals 5

    .line 8
    sget-object v0, Lgw;->a:Lgw;

    invoke-virtual {v0}, Lgw;->a()I

    move-result v0

    invoke-static {p0, v0}, Lge;->b(Landroid/view/View;I)V

    sget-object v0, Lgw;->b:Lgw;

    .line 9
    invoke-virtual {v0}, Lgw;->a()I

    move-result v0

    invoke-static {p0, v0}, Lge;->b(Landroid/view/View;I)V

    .line 10
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_1

    .line 11
    invoke-virtual {p0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 12
    instance-of v4, v3, Lfp;

    if-nez v4, :cond_2

    instance-of v4, v3, Landroid/widget/ListView;

    if-nez v4, :cond_2

    instance-of v4, v3, Landroid/widget/ScrollView;

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v3, v2

    :cond_2
    :goto_1
    if-nez v3, :cond_3

    return-void

    :cond_3
    goto :goto_3

    :goto_2
    throw v2

    :goto_3
    goto :goto_2
.end method

.method private static final a(Lcdc;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcdc;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 7
    return-void

    .line 3
    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcdc;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcdb;

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 0

    check-cast p1, Lcdc;

    instance-of p1, p2, Lcda;

    if-eqz p1, :cond_0

    check-cast p2, Lcda;

    :cond_0
    return-void
.end method

.method public final bridge synthetic a(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    check-cast p1, Lcdc;

    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->c:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->d:Ljava/lang/ref/WeakReference;

    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->a(Lcdc;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final bridge synthetic a(Landroid/view/View;Landroid/view/View;I[II)V
    .locals 0

    check-cast p1, Lcdc;

    const/4 p1, 0x0

    throw p1
.end method

.method public final bridge synthetic a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III[I)V
    .locals 0

    check-cast p2, Lcdc;

    if-ltz p5, :cond_1

    if-nez p5, :cond_0

    invoke-static {p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    throw p1
.end method

.method public final bridge synthetic a(Landroid/view/View;II)Z
    .locals 0

    check-cast p1, Lcdc;

    and-int/lit8 p1, p2, 0x2

    const/4 p2, 0x0

    if-nez p1, :cond_0

    iput-object p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->d:Ljava/lang/ref/WeakReference;

    iput p3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->c:I

    const/4 p1, 0x0

    return p1

    :cond_0
    throw p2
.end method

.method public final bridge synthetic a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0

    check-cast p2, Lcdc;

    invoke-super {p0, p1, p2, p3}, Lcde;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z

    const/4 p1, 0x0

    throw p1
.end method

.method public final bridge synthetic a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)Z
    .locals 2

    check-cast p2, Lcdc;

    invoke-virtual {p2}, Lcdc;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    check-cast p5, Ltw;

    iget p5, p5, Ltw;->height:I

    const/4 v0, 0x0

    const/4 v1, -0x2

    if-ne p5, v1, :cond_0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p5

    invoke-virtual {p1, p2, p3, p4, p5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/view/View;III)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final b()I
    .locals 1

    invoke-virtual {p0}, Lcdh;->c()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic b(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)V
    .locals 0

    check-cast p2, Lcdc;

    invoke-virtual {p0}, Lcdh;->c()I

    move-result p2

    if-eqz p4, :cond_1

    if-lt p2, p4, :cond_1

    if-gt p2, p5, :cond_1

    invoke-static {p3, p4, p5}, Lvt;->a(III)I

    move-result p3

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    const/4 p2, 0x0

    iput p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->a:I

    :goto_0
    invoke-static {p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    return-void
.end method

.method public final bridge synthetic d(Landroid/view/View;)Landroid/os/Parcelable;
    .locals 7

    check-cast p1, Lcdc;

    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    invoke-virtual {p0}, Lcdh;->c()I

    move-result v1

    invoke-virtual {p1}, Lcdc;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {p1, v3}, Lcdc;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    add-int/2addr v6, v1

    if-gtz v6, :cond_1

    if-gez v5, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Lcda;

    invoke-direct {p1, v0}, Lcda;-><init>(Landroid/os/Parcelable;)V

    iput v3, p1, Lcda;->a:I

    invoke-static {v4}, Lge;->k(Landroid/view/View;)I

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final bridge synthetic e(Landroid/view/View;)I
    .locals 0

    check-cast p1, Lcdc;

    const/4 p1, 0x0

    throw p1
.end method

.method public final bridge synthetic f(Landroid/view/View;)I
    .locals 0

    check-cast p1, Lcdc;

    const/4 p1, 0x0

    throw p1
.end method

.method public final bridge synthetic g(Landroid/view/View;)Z
    .locals 3

    check-cast p1, Lcdc;

    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->d:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :cond_2
    return v0
.end method

.method public final bridge synthetic h(Landroid/view/View;)V
    .locals 0

    check-cast p1, Lcdc;

    invoke-static {p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->a(Lcdc;)V

    const/4 p1, 0x0

    throw p1
.end method
