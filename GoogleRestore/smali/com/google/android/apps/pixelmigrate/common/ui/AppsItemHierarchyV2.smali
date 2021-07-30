.class public Lcom/google/android/apps/pixelmigrate/common/ui/AppsItemHierarchyV2;
.super Lcom/google/android/setupdesign/items/AbstractItemHierarchy;
.source "PG"


# instance fields
.field public a:Lalc;

.field public final b:Ljava/util/List;

.field public c:Z

.field public d:Laci;

.field public final e:Lapr;

.field public f:Lbjg;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/pixelmigrate/common/ui/AppsItemHierarchyV2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p1

    iput p1, p0, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Ljava/util/ArrayList;

    .line 4
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/google/android/apps/pixelmigrate/common/ui/AppsItemHierarchyV2;->b:Ljava/util/List;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/apps/pixelmigrate/common/ui/AppsItemHierarchyV2;->c:Z

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070051

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    new-instance p2, Lapr;

    .line 6
    invoke-direct {p2}, Lapr;-><init>()V

    iput-object p2, p0, Lcom/google/android/apps/pixelmigrate/common/ui/AppsItemHierarchyV2;->e:Lapr;

    iget-object v0, p2, Lapr;->a:Larl;

    iput p1, v0, Larl;->b:I

    iput p1, v0, Larl;->a:I

    .line 7
    sget-object p1, Land;->m:Lccv;

    invoke-virtual {p1}, Lccv;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p2, Lapr;->b:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final X()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/common/ui/AppsItemHierarchyV2;->b:Ljava/util/List;

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final a(I)Lcmo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/common/ui/AppsItemHierarchyV2;->b:Ljava/util/List;

    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcmo;

    return-object p1
.end method

.method public final b(I)Lcms;
    .locals 1

    iget v0, p0, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->g:I

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
