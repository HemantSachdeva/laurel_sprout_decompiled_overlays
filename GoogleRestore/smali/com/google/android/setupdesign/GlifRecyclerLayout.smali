.class public Lcom/google/android/setupdesign/GlifRecyclerLayout;
.super Lcom/google/android/setupdesign/GlifLayout;
.source "PG"


# instance fields
.field public d:Lcnk;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/setupdesign/GlifRecyclerLayout;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/setupdesign/GlifRecyclerLayout;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupdesign/GlifLayout;-><init>(Landroid/content/Context;II)V

    .line 4
    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/GlifLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupdesign/GlifLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    invoke-direct {p0, p2, p3}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final b(Landroid/util/AttributeSet;I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout;->d:Lcnk;

    iget-object v1, v0, Lcnk;->a:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 15
    sget-object v2, Lcmi;->p:[I

    .line 16
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 17
    invoke-virtual {p1, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_1

    .line 18
    new-instance v2, Lcmz;

    invoke-direct {v2, v1}, Lcmz;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p2}, Lcna;->a(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcms;

    iget-object v1, v0, Lcnk;->a:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 19
    instance-of v2, v1, Lcom/google/android/setupdesign/GlifLayout;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/google/android/setupdesign/GlifLayout;

    iget-boolean v1, v1, Lcom/google/android/setupdesign/GlifLayout;->c:Z

    goto :goto_0

    .line 27
    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    new-instance v2, Lcmy;

    .line 20
    invoke-direct {v2, p2, v1}, Lcmy;-><init>(Lcms;Z)V

    const/4 p2, 0x4

    .line 21
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {v2, p2}, Lqc;->a(Z)V

    iget-object p2, v0, Lcnk;->b:Landroid/support/v7/widget/RecyclerView;

    .line 22
    invoke-virtual {p2, v2}, Landroid/support/v7/widget/RecyclerView;->a(Lqc;)V

    :cond_1
    const/4 p2, 0x1

    .line 23
    const/4 v1, -0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    if-eq p2, v1, :cond_2

    .line 24
    invoke-virtual {v0, p2, v3}, Lcnk;->a(II)V

    goto :goto_1

    .line 30
    :cond_2
    const/4 p2, 0x3

    .line 25
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    const/4 v1, 0x2

    .line 26
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 27
    invoke-virtual {v0, p2, v1}, Lcnk;->a(II)V

    .line 28
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const-class p1, Lcnk;

    iget-object p2, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout;->d:Lcnk;

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->a(Ljava/lang/Class;Lcmb;)V

    const-class p1, Lcnm;

    .line 30
    invoke-virtual {p0, p1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->a(Ljava/lang/Class;)Lcmb;

    move-result-object p1

    check-cast p1, Lcnm;

    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 0

    if-nez p2, :cond_0

    const p2, 0x7f0d00a5

    .line 31
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/setupdesign/GlifLayout;->a(Landroid/view/LayoutInflater;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected final a(I)Landroid/view/ViewGroup;
    .locals 0

    if-nez p1, :cond_0

    const p1, 0x7f0a018f

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/setupdesign/GlifLayout;->a(I)Landroid/view/ViewGroup;

    move-result-object p1

    return-object p1
.end method

.method public final b(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout;->d:Lcnk;

    iget-object v0, v0, Lcnk;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 11
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/setupdesign/GlifLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected final b()V
    .locals 2

    .line 34
    const v0, 0x7f0a018f

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 35
    instance-of v1, v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    .line 37
    new-instance v1, Lcnk;

    .line 36
    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-direct {v1, p0, v0}, Lcnk;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/support/v7/widget/RecyclerView;)V

    iput-object v1, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout;->d:Lcnk;

    return-void

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 37
    const-string v1, "GlifRecyclerLayout should use a template with recycler view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout;->d:Lcnk;

    iget-object v0, v0, Lcnk;->b:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public final d()Lqc;
    .locals 2

    iget-object v0, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout;->d:Lcnk;

    iget-object v0, v0, Lcnk;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->j:Lqc;

    .line 12
    instance-of v1, v0, Lcnu;

    if-eqz v1, :cond_0

    .line 13
    check-cast v0, Lcnu;

    iget-object v0, v0, Lcnu;->c:Lqc;

    :cond_0
    return-object v0
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    .line 32
    invoke-super/range {p0 .. p5}, Lcom/google/android/setupdesign/GlifLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout;->d:Lcnk;

    iget-object p2, p1, Lcnk;->e:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_0

    .line 33
    invoke-virtual {p1}, Lcnk;->a()V

    :cond_0
    return-void
.end method
