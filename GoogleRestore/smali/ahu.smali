.class public final Lahu;
.super Laki;
.source "PG"


# static fields
.field private static final ad:Lacw;


# instance fields
.field private ae:I

.field private af:I

.field private ag:Lcom/google/android/setupdesign/items/DescriptionItem;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "AppPickerFragmentV2"

    aput-object v3, v1, v2

    .line 1
    invoke-direct {v0, v1}, Lacw;-><init>([Ljava/lang/String;)V

    sput-object v0, Lahu;->ad:Lacw;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Laki;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    .line 9
    invoke-static {}, Lada;->a()Lada;

    move-result-object v1

    .line 10
    invoke-interface {v1}, Lako;->b()Lcsl;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Laki;->ac:Ljava/util/Map;

    iget v0, p0, Laki;->a:I

    .line 11
    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupdesign/GlifRecyclerLayout;

    iput-object p1, p0, Laki;->d:Lcom/google/android/setupdesign/GlifRecyclerLayout;

    iget-object p1, p0, Laki;->d:Lcom/google/android/setupdesign/GlifRecyclerLayout;

    iget p2, p0, Laki;->b:I

    .line 12
    invoke-virtual {p0, p1, p2}, Lalv;->a(Lcom/google/android/setupdesign/GlifLayout;I)V

    iget-object p1, p0, Laki;->d:Lcom/google/android/setupdesign/GlifRecyclerLayout;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->d()Lqc;

    move-result-object p1

    check-cast p1, Lcmy;

    iput-object p1, p0, Laki;->Z:Lcmy;

    iget-object p1, p0, Laki;->Z:Lcmy;

    iget-object p2, p1, Lcmy;->c:Lcms;

    .line 14
    check-cast p2, Lcom/google/android/setupdesign/items/ItemGroup;

    iput-object p2, p0, Laki;->aa:Lcom/google/android/setupdesign/items/ItemGroup;

    iput-object p0, p1, Lcmy;->e:Lcmw;

    iget-object p1, p0, Laki;->d:Lcom/google/android/setupdesign/GlifRecyclerLayout;

    const-class p2, Lcly;

    .line 15
    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->a(Ljava/lang/Class;)Lcmb;

    move-result-object p1

    check-cast p1, Lcly;

    new-instance p2, Lclz;

    invoke-virtual {p0}, Lba;->p()Landroid/content/Context;

    move-result-object v0

    .line 16
    invoke-direct {p2, v0}, Lclz;-><init>(Landroid/content/Context;)V

    iget v0, p0, Laki;->c:I

    .line 17
    invoke-virtual {p2, v0}, Lclz;->a(I)V

    new-instance v0, Lakc;

    invoke-direct {v0, p0}, Lakc;-><init>(Laki;)V

    iput-object v0, p2, Lclz;->b:Landroid/view/View$OnClickListener;

    const/4 v0, 0x5

    iput v0, p2, Lclz;->c:I

    const v0, 0x7f1201a4

    iput v0, p2, Lclz;->d:I

    .line 18
    invoke-virtual {p2}, Lclz;->a()Lcma;

    move-result-object p2

    .line 19
    invoke-virtual {p1, p2}, Lcly;->a(Lcma;)V

    iget-object p1, p0, Laki;->ac:Ljava/util/Map;

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    .line 20
    sget-object p1, Land;->aa:Lccv;

    invoke-virtual {p1}, Lccv;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance p1, Lakd;

    invoke-virtual {p0}, Lba;->p()Landroid/content/Context;

    move-result-object v0

    .line 23
    invoke-direct {p1, v0}, Lakd;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Laki;->d:Lcom/google/android/setupdesign/GlifRecyclerLayout;

    iget-object v0, v0, Lcom/google/android/setupdesign/GlifRecyclerLayout;->d:Lcnk;

    iget-object v2, v0, Lcnk;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v0, Lcnk;->d:Lcmg;

    .line 24
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->b(Lyj;)V

    iput-object p1, v0, Lcnk;->d:Lcmg;

    iget-object p1, v0, Lcnk;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v0, Lcnk;->d:Lcmg;

    .line 25
    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView;->a(Lyj;)V

    .line 26
    invoke-virtual {v0}, Lcnk;->a()V

    iget-object p1, p0, Laki;->ac:Ljava/util/Map;

    .line 27
    invoke-static {p1}, Laox;->b(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 28
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    .line 29
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lakl;

    invoke-direct {v4}, Lakl;-><init>()V

    invoke-virtual {p0}, Lba;->p()Landroid/content/Context;

    move-result-object v5

    iput-object v5, v4, Lakl;->a:Landroid/content/Context;

    .line 31
    invoke-virtual {p0}, Laki;->e()Lbjg;

    move-result-object v5

    iput-object v5, v4, Lakl;->g:Lbjg;

    iget-object v5, p0, Laki;->ab:Laci;

    iput-object v5, v4, Lakl;->d:Laci;

    iput-object p0, v4, Lakl;->b:Lakm;

    .line 32
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    iput-object v5, v4, Lakl;->c:Ljava/util/Map;

    iput-object v3, v4, Lakl;->e:Ljava/lang/String;

    iget-object v3, p0, Laki;->aa:Lcom/google/android/setupdesign/items/ItemGroup;

    .line 33
    invoke-virtual {v4}, Lakl;->a()Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupItemHierarchy;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/setupdesign/items/ItemGroup;->a(Lcms;)V

    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Laki;->aa:Lcom/google/android/setupdesign/items/ItemGroup;

    new-instance v4, Lcom/google/android/apps/pixelmigrate/common/ui/EmptyItemHierarchy;

    .line 35
    invoke-direct {v4}, Lcom/google/android/apps/pixelmigrate/common/ui/EmptyItemHierarchy;-><init>()V

    invoke-virtual {v3, v4}, Lcom/google/android/setupdesign/items/ItemGroup;->a(Lcms;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Laki;->d:Lcom/google/android/setupdesign/GlifRecyclerLayout;

    .line 36
    invoke-virtual {p1}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->c()Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    new-instance v0, Lake;

    .line 37
    invoke-direct {v0, v2}, Lake;-><init>(I)V

    .line 38
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Lqk;)V

    goto :goto_1

    .line 51
    :cond_2
    new-instance p1, Lakl;

    invoke-direct {p1}, Lakl;-><init>()V

    invoke-virtual {p0}, Lba;->p()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p1, Lakl;->a:Landroid/content/Context;

    .line 21
    invoke-virtual {p0}, Laki;->e()Lbjg;

    move-result-object v0

    iput-object v0, p1, Lakl;->g:Lbjg;

    iget-object v0, p0, Laki;->ab:Laci;

    iput-object v0, p1, Lakl;->d:Laci;

    iput-object p0, p1, Lakl;->b:Lakm;

    iget-object v0, p0, Laki;->ac:Ljava/util/Map;

    iput-object v0, p1, Lakl;->c:Ljava/util/Map;

    iput-boolean p2, p1, Lakl;->f:Z

    iget-object v0, p0, Laki;->aa:Lcom/google/android/setupdesign/items/ItemGroup;

    .line 22
    invoke-virtual {p1}, Lakl;->a()Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupItemHierarchy;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/items/ItemGroup;->a(Lcms;)V

    .line 38
    :cond_3
    :goto_1
    iget-object p1, p0, Laki;->d:Lcom/google/android/setupdesign/GlifRecyclerLayout;

    .line 39
    invoke-virtual {p1}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->c()Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v2, Lakf;

    invoke-direct {v2, p1}, Lakf;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    .line 41
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    sget-object p1, Lahu;->ad:Lacw;

    new-array v0, v1, [Ljava/lang/Object;

    .line 42
    const-string v2, "onCreateView"

    invoke-virtual {p1, v2, v0}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lahu;->aa:Lcom/google/android/setupdesign/items/ItemGroup;

    const v0, 0x7f0a004e

    .line 43
    invoke-virtual {p1, v0}, Lcom/google/android/setupdesign/items/ItemGroup;->b(I)Lcms;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupdesign/items/DescriptionItem;

    iput-object p1, p0, Lahu;->ag:Lcom/google/android/setupdesign/items/DescriptionItem;

    iget-object v0, p0, Lahu;->d:Lcom/google/android/setupdesign/GlifRecyclerLayout;

    iget-boolean v0, v0, Lcom/google/android/setupdesign/GlifLayout;->c:Z

    .line 44
    invoke-virtual {p1, v0}, Lcom/google/android/setupdesign/items/DescriptionItem;->a(Z)V

    iget-object p1, p0, Lba;->k:Landroid/os/Bundle;

    if-eqz p1, :cond_4

    .line 45
    const-string v0, "show_skip"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lahu;->d:Lcom/google/android/setupdesign/GlifRecyclerLayout;

    const-class v0, Lcly;

    .line 46
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->a(Ljava/lang/Class;)Lcmb;

    move-result-object p1

    check-cast p1, Lcly;

    new-instance v0, Lclz;

    invoke-virtual {p0}, Lba;->p()Landroid/content/Context;

    move-result-object v2

    .line 47
    invoke-direct {v0, v2}, Lclz;-><init>(Landroid/content/Context;)V

    const v2, 0x7f11004f

    .line 48
    invoke-virtual {v0, v2}, Lclz;->a(I)V

    new-instance v2, Lahs;

    invoke-direct {v2, p0}, Lahs;-><init>(Lahu;)V

    iput-object v2, v0, Lclz;->b:Landroid/view/View$OnClickListener;

    const/4 v2, 0x7

    iput v2, v0, Lclz;->c:I

    const v2, 0x7f1201a5

    iput v2, v0, Lclz;->d:I

    .line 49
    invoke-virtual {v0}, Lclz;->a()Lcma;

    move-result-object v0

    .line 50
    invoke-virtual {p1, v0}, Lcly;->b(Lcma;)V

    :cond_4
    iget-object p1, p0, Lahu;->ac:Ljava/util/Map;

    if-nez p1, :cond_5

    const/4 p1, 0x0

    goto :goto_2

    .line 51
    :cond_5
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    .line 50
    :goto_2
    if-nez p1, :cond_6

    const/4 v0, 0x0

    goto :goto_3

    .line 55
    :cond_6
    iget-object v0, p0, Lahu;->ac:Ljava/util/Map;

    .line 52
    invoke-static {v0}, Laox;->c(Ljava/util/Map;)I

    move-result v0

    .line 50
    :goto_3
    if-nez p1, :cond_7

    iget p1, p0, Lahu;->ae:I

    .line 53
    invoke-virtual {p0, p1}, Lba;->b(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 56
    :cond_7
    if-eqz v0, :cond_8

    .line 54
    invoke-virtual {p0}, Lba;->s()Landroid/content/res/Resources;

    move-result-object p1

    iget v2, p0, Lahu;->af:I

    new-array p2, p2, [Ljava/lang/Object;

    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p2, v1

    invoke-virtual {p1, v2, v0, p2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 53
    :goto_4
    iget-object p2, p0, Lahu;->ag:Lcom/google/android/setupdesign/items/DescriptionItem;

    .line 56
    invoke-virtual {p2, p1}, Lcom/google/android/setupdesign/items/Item;->b(Ljava/lang/CharSequence;)V

    :cond_8
    iget-object p1, p0, Lahu;->d:Lcom/google/android/setupdesign/GlifRecyclerLayout;

    return-object p1
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    .line 5
    invoke-super {p0, p1}, Laki;->a(Landroid/os/Bundle;)V

    sget-object p1, Lahu;->ad:Lacw;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 6
    const-string v1, "AppPickerFragmentV2 onCreate"

    invoke-virtual {p1, v1, v0}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const p1, 0x7f0d0043

    iput p1, p0, Lahu;->a:I

    const p1, 0x7f110038

    iput p1, p0, Lahu;->b:I

    const p1, 0x7f110037

    iput p1, p0, Lahu;->ae:I

    const p1, 0x7f0f0002

    iput p1, p0, Lahu;->af:I

    iget-object p1, p0, Lba;->k:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    .line 7
    const-string v0, "button_text_resource"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lba;->k:Landroid/os/Bundle;

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    :goto_0
    iput p1, p0, Lahu;->c:I

    return-void

    :cond_0
    const p1, 0x7f11004a

    goto :goto_0
.end method

.method public final d()Lbcs;
    .locals 1

    .line 4
    sget-object v0, Lbcs;->A:Lbcs;

    return-object v0
.end method

.method protected final e()Lbjg;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/ui/CloudAppItem;->a:Lbjg;

    if-nez v0, :cond_0

    new-instance v0, Lbjg;

    invoke-direct {v0}, Lbjg;-><init>()V

    sput-object v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/ui/CloudAppItem;->a:Lbjg;

    :cond_0
    sget-object v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/ui/CloudAppItem;->a:Lbjg;

    return-object v0
.end method

.method public final j()V
    .locals 1

    .line 57
    invoke-super {p0}, Laki;->j()V

    const/4 v0, 0x0

    iput-object v0, p0, Lahu;->d:Lcom/google/android/setupdesign/GlifRecyclerLayout;

    return-void
.end method
