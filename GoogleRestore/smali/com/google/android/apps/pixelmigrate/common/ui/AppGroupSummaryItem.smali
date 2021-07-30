.class public Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupSummaryItem;
.super Lcom/google/android/apps/pixelmigrate/common/ui/CompoundButtonItem;
.source "PG"


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/apps/pixelmigrate/common/ui/CompoundButtonItem;-><init>()V

    .line 2
    const v0, 0x7f08025e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/items/Item;->a(Landroid/graphics/drawable/Drawable;)V

    .line 3
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/pixelmigrate/common/ui/CompoundButtonItem;->a(Z)V

    .line 4
    const p1, 0x7f0d0022

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/items/Item;->d(I)V

    .line 5
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p1

    iput p1, p0, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->g:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 3

    .line 6
    invoke-super {p0, p1}, Lcom/google/android/apps/pixelmigrate/common/ui/CompoundButtonItem;->a(Landroid/view/View;)V

    iget-boolean v0, p0, Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupSummaryItem;->a:Z

    const v1, 0x7f0a0179

    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 9
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    const/4 v2, 0x4

    .line 10
    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setVisibility(I)V

    :cond_0
    nop

    .line 11
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/Item;->Y()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
