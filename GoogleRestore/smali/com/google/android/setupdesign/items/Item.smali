.class public Lcom/google/android/setupdesign/items/Item;
.super Lcom/google/android/setupdesign/items/AbstractItem;
.source "PG"


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Ljava/lang/CharSequence;

.field private c:Ljava/lang/CharSequence;

.field private d:I

.field public e:Z

.field public f:I

.field public h:Z

.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/AbstractItem;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/Item;->e:Z

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/Item;->h:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/setupdesign/items/Item;->d:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/google/android/setupdesign/items/Item;->i:I

    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/Item;->a()I

    move-result v0

    iput v0, p0, Lcom/google/android/setupdesign/items/Item;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/items/AbstractItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/Item;->e:Z

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/Item;->h:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/setupdesign/items/Item;->d:I

    const/16 v2, 0x10

    iput v2, p0, Lcom/google/android/setupdesign/items/Item;->i:I

    .line 3
    sget-object v3, Lcmi;->m:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 4
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/setupdesign/items/Item;->e:Z

    .line 5
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/setupdesign/items/Item;->a:Landroid/graphics/drawable/Drawable;

    .line 6
    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/setupdesign/items/Item;->c:Ljava/lang/CharSequence;

    .line 7
    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/setupdesign/items/Item;->b:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/Item;->a()I

    move-result p2

    .line 8
    const/4 v3, 0x2

    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/setupdesign/items/Item;->f:I

    .line 9
    const/4 p2, 0x3

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/setupdesign/items/Item;->h:Z

    .line 10
    const/4 p2, 0x7

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/setupdesign/items/Item;->d:I

    .line 11
    const/4 p2, 0x6

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/setupdesign/items/Item;->i:I

    .line 12
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final X()I
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/setupdesign/items/Item;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Y()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/google/android/setupdesign/items/Item;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected a()I
    .locals 1

    const v0, 0x7f0d00ae

    return v0
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/setupdesign/items/Item;->a:Landroid/graphics/drawable/Drawable;

    .line 34
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/AbstractItem;->c()V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 5

    .line 13
    const v0, 0x7f0a0181

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 14
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/Item;->Y()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    const v0, 0x7f0a017e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/Item;->f()Ljava/lang/CharSequence;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 16
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 32
    :cond_0
    nop

    .line 17
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    :goto_0
    const v0, 0x7f0a017c

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/setupdesign/items/Item;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    const v2, 0x7f0a017b

    .line 21
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v4, 0x0

    .line 22
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 23
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Landroid/widget/ImageView;->setImageState([IZ)V

    .line 24
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 25
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v1, p0, Lcom/google/android/setupdesign/items/Item;->d:I

    if-eqz v1, :cond_1

    .line 26
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_1

    .line 27
    :cond_1
    invoke-virtual {v2}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 28
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 29
    instance-of v2, v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v2, :cond_2

    .line 30
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/google/android/setupdesign/items/Item;->i:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_2
    nop

    .line 31
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 27
    :cond_3
    nop

    .line 32
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 31
    :goto_2
    iget v0, p0, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->g:I

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/setupdesign/items/Item;->b:Ljava/lang/CharSequence;

    .line 36
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/AbstractItem;->c()V

    return-void
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/setupdesign/items/Item;->c:Ljava/lang/CharSequence;

    .line 37
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/AbstractItem;->c()V

    return-void
.end method

.method public final b(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/setupdesign/items/Item;->h:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/setupdesign/items/Item;->h:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 38
    invoke-virtual {p0, v1, v0}, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->b(II)V

    return-void

    :cond_1
    nop

    .line 39
    invoke-virtual {p0, v1, v0}, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->a(II)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/setupdesign/items/Item;->e:Z

    return v0
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/setupdesign/items/Item;->f:I

    .line 35
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/AbstractItem;->c()V

    return-void
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/google/android/setupdesign/items/Item;->f:I

    return v0
.end method

.method public f()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/google/android/setupdesign/items/Item;->b:Ljava/lang/CharSequence;

    return-object v0
.end method
