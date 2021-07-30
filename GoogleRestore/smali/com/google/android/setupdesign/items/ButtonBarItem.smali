.class public Lcom/google/android/setupdesign/items/ButtonBarItem;
.super Lcom/google/android/setupdesign/items/AbstractItem;
.source "PG"

# interfaces
.implements Lcmt;


# instance fields
.field private final a:Ljava/util/ArrayList;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/AbstractItem;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/setupdesign/items/ButtonBarItem;->a:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/ButtonBarItem;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/items/AbstractItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    .line 4
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupdesign/items/ButtonBarItem;->a:Ljava/util/ArrayList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/setupdesign/items/ButtonBarItem;->b:Z

    return-void
.end method


# virtual methods
.method public final X()I
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/setupdesign/items/ButtonBarItem;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Landroid/view/View;)V
    .locals 9

    .line 10
    move-object v0, p1

    check-cast v0, Landroid/widget/LinearLayout;

    .line 11
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v1, p0, Lcom/google/android/setupdesign/items/ButtonBarItem;->a:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 12
    check-cast v5, Lcom/google/android/setupdesign/items/ButtonItem;

    iget-object v6, v5, Lcom/google/android/setupdesign/items/ButtonItem;->d:Landroid/widget/Button;

    if-nez v6, :cond_1

    .line 13
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, v5, Lcom/google/android/setupdesign/items/ButtonItem;->c:I

    if-eqz v7, :cond_0

    new-instance v8, Landroid/view/ContextThemeWrapper;

    .line 14
    invoke-direct {v8, v6, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v6, v8

    .line 15
    :cond_0
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0d0097

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, v5, Lcom/google/android/setupdesign/items/ButtonItem;->d:Landroid/widget/Button;

    iget-object v6, v5, Lcom/google/android/setupdesign/items/ButtonItem;->d:Landroid/widget/Button;

    .line 16
    invoke-virtual {v6, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {v6}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_2

    iget-object v6, v5, Lcom/google/android/setupdesign/items/ButtonItem;->d:Landroid/widget/Button;

    .line 18
    invoke-virtual {v6}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iget-object v7, v5, Lcom/google/android/setupdesign/items/ButtonItem;->d:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 16
    :cond_2
    :goto_1
    iget-object v6, v5, Lcom/google/android/setupdesign/items/ButtonItem;->d:Landroid/widget/Button;

    iget-boolean v7, v5, Lcom/google/android/setupdesign/items/ButtonItem;->a:Z

    .line 19
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v6, v5, Lcom/google/android/setupdesign/items/ButtonItem;->d:Landroid/widget/Button;

    iget-object v7, v5, Lcom/google/android/setupdesign/items/ButtonItem;->b:Ljava/lang/CharSequence;

    .line 20
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, v5, Lcom/google/android/setupdesign/items/ButtonItem;->d:Landroid/widget/Button;

    iget v7, v5, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->g:I

    .line 21
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setId(I)V

    iget-object v5, v5, Lcom/google/android/setupdesign/items/ButtonItem;->d:Landroid/widget/Button;

    .line 22
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 18
    :cond_3
    iget v0, p0, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->g:I

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    return-void
.end method

.method public final a(Lcms;)V
    .locals 1

    .line 5
    instance-of v0, p1, Lcom/google/android/setupdesign/items/ButtonItem;

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/google/android/setupdesign/items/ButtonBarItem;->a:Ljava/util/ArrayList;

    .line 6
    check-cast p1, Lcom/google/android/setupdesign/items/ButtonItem;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 7
    const-string v0, "Cannot add non-button item to Button Bar"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(I)Lcms;
    .locals 4

    iget v0, p0, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->g:I

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/setupdesign/items/ButtonBarItem;->a:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_1
    if-ge v2, v1, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 8
    check-cast v3, Lcom/google/android/setupdesign/items/ButtonItem;

    .line 9
    invoke-virtual {v3, p1}, Lcom/google/android/setupdesign/items/AbstractItem;->b(I)Lcms;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    if-eqz v3, :cond_1

    return-object v3

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()I
    .locals 1

    const v0, 0x7f0d00ad

    return v0
.end method
