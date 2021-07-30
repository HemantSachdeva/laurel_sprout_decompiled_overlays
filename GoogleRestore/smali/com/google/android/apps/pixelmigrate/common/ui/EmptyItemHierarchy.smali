.class public Lcom/google/android/apps/pixelmigrate/common/ui/EmptyItemHierarchy;
.super Lcom/google/android/setupdesign/items/AbstractItemHierarchy;
.source "PG"


# instance fields
.field private final a:Lcom/google/android/setupdesign/items/Item;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;-><init>()V

    new-instance v0, Lcom/google/android/setupdesign/items/Item;

    .line 2
    invoke-direct {v0}, Lcom/google/android/setupdesign/items/Item;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/pixelmigrate/common/ui/EmptyItemHierarchy;->a:Lcom/google/android/setupdesign/items/Item;

    .line 3
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    iput v1, p0, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->g:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/setupdesign/items/Item;->e:Z

    .line 4
    invoke-virtual {v0}, Lcom/google/android/setupdesign/items/AbstractItem;->c()V

    return-void
.end method


# virtual methods
.method public final X()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(I)Lcmo;
    .locals 0

    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/common/ui/EmptyItemHierarchy;->a:Lcom/google/android/setupdesign/items/Item;

    return-object p1
.end method

.method public final b(I)Lcms;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
