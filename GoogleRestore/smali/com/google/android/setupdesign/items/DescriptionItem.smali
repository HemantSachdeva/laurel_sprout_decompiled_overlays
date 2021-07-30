.class public Lcom/google/android/setupdesign/items/DescriptionItem;
.super Lcom/google/android/setupdesign/items/Item;
.source "PG"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/Item;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/DescriptionItem;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/items/Item;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/setupdesign/items/DescriptionItem;->a:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 3
    invoke-super {p0, p1}, Lcom/google/android/setupdesign/items/Item;->a(Landroid/view/View;)V

    .line 4
    const v0, 0x7f0a0181

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/google/android/setupdesign/items/DescriptionItem;->a:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-static {p1}, Lbwp;->a(Landroid/widget/TextView;)V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/setupdesign/items/DescriptionItem;->a:Z

    .line 6
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/AbstractItem;->c()V

    return-void
.end method
