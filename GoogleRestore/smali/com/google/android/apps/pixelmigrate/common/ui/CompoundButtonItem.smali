.class public Lcom/google/android/apps/pixelmigrate/common/ui/CompoundButtonItem;
.super Lcom/google/android/setupdesign/items/Item;
.source "PG"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public c:Z

.field public d:Lalc;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/Item;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/items/Item;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    sget-object v0, Lacx;->a:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 4
    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/apps/pixelmigrate/common/ui/CompoundButtonItem;->c:Z

    .line 5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f0d00b2

    return v0
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .line 6
    invoke-super {p0, p1}, Lcom/google/android/setupdesign/items/Item;->a(Landroid/view/View;)V

    .line 7
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 9
    const v0, 0x7f0a0179

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CompoundButton;

    .line 10
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 11
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-boolean v0, p0, Lcom/google/android/apps/pixelmigrate/common/ui/CompoundButtonItem;->c:Z

    .line 12
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 13
    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/Item;->b()Z

    move-result v0

    .line 14
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/apps/pixelmigrate/common/ui/CompoundButtonItem;->c:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/apps/pixelmigrate/common/ui/CompoundButtonItem;->c:Z

    .line 16
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/AbstractItem;->c()V

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/common/ui/CompoundButtonItem;->d:Lalc;

    if-eqz v0, :cond_0

    .line 17
    invoke-interface {v0, p0, p1}, Lalc;->a(Lcom/google/android/apps/pixelmigrate/common/ui/CompoundButtonItem;Z)V

    :cond_0
    return-void
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iput-boolean p2, p0, Lcom/google/android/apps/pixelmigrate/common/ui/CompoundButtonItem;->c:Z

    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/common/ui/CompoundButtonItem;->d:Lalc;

    if-eqz p1, :cond_0

    .line 15
    invoke-interface {p1, p0, p2}, Lalc;->a(Lcom/google/android/apps/pixelmigrate/common/ui/CompoundButtonItem;Z)V

    :cond_0
    return-void
.end method
