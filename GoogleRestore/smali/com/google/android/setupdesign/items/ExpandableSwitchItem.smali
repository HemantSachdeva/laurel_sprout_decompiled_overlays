.class public Lcom/google/android/setupdesign/items/ExpandableSwitchItem;
.super Lcom/google/android/setupdesign/items/SwitchItem;
.source "PG"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public a:Z

.field private b:Ljava/lang/CharSequence;

.field private c:Ljava/lang/CharSequence;

.field private final d:Lfl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/SwitchItem;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->a:Z

    .line 2
    new-instance v0, Lcmn;

    invoke-direct {v0, p0}, Lcmn;-><init>(Lcom/google/android/setupdesign/items/ExpandableSwitchItem;)V

    iput-object v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->d:Lfl;

    const/16 v0, 0x30

    iput v0, p0, Lcom/google/android/setupdesign/items/Item;->i:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/items/SwitchItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->a:Z

    .line 4
    new-instance v1, Lcmn;

    invoke-direct {v1, p0}, Lcmn;-><init>(Lcom/google/android/setupdesign/items/ExpandableSwitchItem;)V

    iput-object v1, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->d:Lfl;

    .line 5
    sget-object v1, Lcmi;->e:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->b:Ljava/lang/CharSequence;

    .line 7
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->c:Ljava/lang/CharSequence;

    .line 8
    const/4 p2, 0x6

    const/16 v0, 0x30

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/setupdesign/items/Item;->i:I

    .line 9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f0d00b0

    return v0
.end method

.method public final a(Landroid/view/View;)V
    .locals 9

    .line 10
    invoke-super {p0, p1}, Lcom/google/android/setupdesign/items/SwitchItem;->a(Landroid/view/View;)V

    .line 11
    const v0, 0x7f0a017a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 12
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    instance-of v1, v0, Lcom/google/android/setupdesign/view/CheckableLinearLayout;

    if-eqz v1, :cond_0

    .line 14
    check-cast v0, Lcom/google/android/setupdesign/view/CheckableLinearLayout;

    iget-boolean v1, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->a:Z

    .line 15
    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/view/CheckableLinearLayout;->setChecked(Z)V

    iget-boolean v1, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->a:Z

    .line 16
    invoke-static {v0, v1}, Lge;->c(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->d:Lfl;

    .line 17
    invoke-static {v0, v1}, Lge;->a(Landroid/view/View;Lfl;)V

    .line 18
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x1010036

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 19
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 20
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v1, :cond_4

    const v0, 0x7f0a0181

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 22
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v2, v5

    if-eqz v6, :cond_1

    .line 23
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 24
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 25
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    array-length v2, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_4

    aget-object v5, v0, v4

    if-eqz v5, :cond_3

    .line 26
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    nop

    .line 27
    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->a:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->a:Z

    .line 29
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/AbstractItem;->c()V

    return-void
.end method

.method public final f()Ljava/lang/CharSequence;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->c:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->b:Ljava/lang/CharSequence;

    :goto_0
    return-object v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-boolean p1, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->a:Z

    xor-int/lit8 p1, p1, 0x1

    .line 28
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->a(Z)V

    return-void
.end method
