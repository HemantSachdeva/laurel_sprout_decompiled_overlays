.class public Lcom/google/android/apps/pixelmigrate/common/ui/ViewCallbackItem;
.super Lcom/google/android/setupdesign/items/DescriptionItem;
.source "PG"


# instance fields
.field public c:Lj$/util/function/Consumer;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/DescriptionItem;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/items/DescriptionItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    .line 3
    invoke-super {p0, p1}, Lcom/google/android/setupdesign/items/DescriptionItem;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/common/ui/ViewCallbackItem;->c:Lj$/util/function/Consumer;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
