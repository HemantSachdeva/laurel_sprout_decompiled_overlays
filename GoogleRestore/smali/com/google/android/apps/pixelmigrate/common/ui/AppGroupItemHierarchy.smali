.class public Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupItemHierarchy;
.super Lcom/google/android/setupdesign/items/AbstractItemHierarchy;
.source "PG"

# interfaces
.implements Lalc;


# static fields
.field private static final a:Laqd;


# instance fields
.field private final b:Lakm;

.field private final c:Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupSummaryItem;

.field private final d:Lcom/google/android/apps/pixelmigrate/common/ui/AppsItemHierarchyV2;

.field private final e:Ljava/util/HashMap;

.field private final f:Landroid/content/Context;

.field private final h:Ljava/lang/String;

.field private final i:Z

.field private final j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "AppGroupHierarchy"

    aput-object v3, v1, v2

    .line 1
    invoke-direct {v0, v1}, Lacw;-><init>([Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupItemHierarchy;->a:Laqd;

    return-void
.end method

.method public constructor <init>(Lakl;)V
    .locals 10

    .line 2
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;-><init>()V

    .line 3
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    iput v0, p0, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->g:I

    iget-object v0, p1, Lakl;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupItemHierarchy;->f:Landroid/content/Context;

    .line 4
    new-instance v1, Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupSummaryItem;

    invoke-direct {v1, v0}, Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupSummaryItem;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupItemHierarchy;->c:Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupSummaryItem;

    new-instance v2, Lcom/google/android/apps/pixelmigrate/common/ui/AppsItemHierarchyV2;

    .line 5
    invoke-direct {v2, v0}, Lcom/google/android/apps/pixelmigrate/common/ui/AppsItemHierarchyV2;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupItemHierarchy;->d:Lcom/google/android/apps/pixelmigrate/common/ui/AppsItemHierarchyV2;

    iput-object p0, v1, Lcom/google/android/apps/pixelmigrate/common/ui/CompoundButtonItem;->d:Lalc;

    iput-object p0, v2, Lcom/google/android/apps/pixelmigrate/common/ui/AppsItemHierarchyV2;->a:Lalc;

    iget-object v0, v2, Lcom/google/android/apps/pixelmigrate/common/ui/AppsItemHierarchyV2;->a:Lalc;

    iget-object v1, v2, Lcom/google/android/apps/pixelmigrate/common/ui/AppsItemHierarchyV2;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 6
    check-cast v5, Lcom/google/android/apps/pixelmigrate/common/ui/AbstractAppItem;

    iput-object v0, v5, Lcom/google/android/apps/pixelmigrate/common/ui/CompoundButtonItem;->d:Lalc;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupItemHierarchy;->d:Lcom/google/android/apps/pixelmigrate/common/ui/AppsItemHierarchyV2;

    iput-boolean v3, v0, Lcom/google/android/apps/pixelmigrate/common/ui/AppsItemHierarchyV2;->c:Z

    iget-object v1, p1, Lakl;->d:Laci;

    iput-object v1, v0, Lcom/google/android/apps/pixelmigrate/common/ui/AppsItemHierarchyV2;->d:Laci;

    iget-object v1, p1, Lakl;->g:Lbjg;

    iput-object v1, v0, Lcom/google/android/apps/pixelmigrate/common/ui/AppsItemHierarchyV2;->f:Lbjg;

    iget-object v0, p1, Lakl;->b:Lakm;

    iput-object v0, p0, Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupItemHierarchy;->b:Lakm;

    iget-object v0, p1, Lakl;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupItemHierarchy;->f:Landroid/content/Context;

    const v1, 0x7f11001f

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupItemHierarchy;->h:Ljava/lang/String;

    iget-boolean v0, p1, Lakl;->f:Z

    iput-boolean v0, p0, Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupItemHierarchy;->i:Z

    new-instance v0, Ljava/util/HashMap;

    iget-object p1, p1, Lakl;->c:Ljava/util/Map;

    .line 8
    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupItemHierarchy;->e:Ljava/util/HashMap;

    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupItemHierarchy;->d:Lcom/google/android/apps/pixelmigrate/common/ui/AppsItemHierarchyV2;

    iget-object v1, p1, Lcom/google/android/apps/pixelmigrate/common/ui/AppsItemHierarchyV2;->b:Ljava/util/List;

    .line 9
    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v1, Ljava/util/ArrayList;

    .line 10
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 11
    sget-object v2, Laop;->a:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_3

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 12
    check-cast v5, Laop;

    iget-boolean v6, v5, Laop;->l:Z

    if-eqz v6, :cond_2

    iget-object v6, p1, Lcom/google/android/apps/pixelmigrate/common/ui/AppsItemHierarchyV2;->d:Laci;

    iget-object v7, p1, Lcom/google/android/apps/pixelmigrate/common/ui/AppsItemHierarchyV2;->e:Lapr;

    new-instance v8, Lcom/google/android/apps/pixelmigrate/cloudrestore/ui/RequiredCloudAppItem;

    .line 13
    invoke-direct {v8, v5, v6, v7}, Lcom/google/android/apps/pixelmigrate/cloudrestore/ui/RequiredCloudAppItem;-><init>(Laop;Laci;Lapr;)V

    goto :goto_2

    .line 14
    :cond_2
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget-object v7, p1, Lcom/google/android/apps/pixelmigrate/common/ui/AppsItemHierarchyV2;->d:Laci;

    iget-object v8, p1, Lcom/google/android/apps/pixelmigrate/common/ui/AppsItemHierarchyV2;->e:Lapr;

    new-instance v9, Lcom/google/android/apps/pixelmigrate/cloudrestore/ui/CloudAppItem;

    .line 15
    invoke-direct {v9, v5, v6, v7, v8}, Lcom/google/android/apps/pixelmigrate/cloudrestore/ui/CloudAppItem;-><init>(Laop;ZLaci;Lapr;)V

    iget-object v5, p1, Lcom/google/android/apps/pixelmigrate/common/ui/AppsItemHierarchyV2;->a:Lalc;

    iput-object v5, v9, Lcom/google/android/apps/pixelmigrate/common/ui/CompoundButtonItem;->d:Lalc;

    move-object v8, v9

    .line 13
    :goto_2
    iget-object v5, p1, Lcom/google/android/apps/pixelmigrate/common/ui/AppsItemHierarchyV2;->b:Ljava/util/List;

    .line 16
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 15
    :cond_3
    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupItemHierarchy;->e:Ljava/util/HashMap;

    .line 17
    invoke-static {p1}, Laox;->c(Ljava/util/Map;)I

    move-result p1

    if-nez p1, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    .line 18
    :cond_4
    nop

    .line 17
    :goto_3
    iput-boolean v3, p0, Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupItemHierarchy;->j:Z

    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupItemHierarchy;->c:Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupSummaryItem;

    iput-boolean v3, p1, Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupSummaryItem;->a:Z

    .line 18
    invoke-direct {p0}, Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupItemHierarchy;->b()V

    return-void
.end method

.method private final b()V
    .locals 7

    iget-boolean v0, p0, Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupItemHierarchy;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupItemHierarchy;->e:Ljava/util/HashMap;

    .line 34
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupItemHierarchy;->e:Ljava/util/HashMap;

    .line 35
    invoke-static {v0}, Laox;->d(Ljava/util/Map;)I

    move-result v0

    .line 34
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupItemHierarchy;->i:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupItemHierarchy;->e:Ljava/util/HashMap;

    .line 36
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupItemHierarchy;->f:Landroid/content/Context;

    const v4, 0x7f110023

    .line 37
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupItemHierarchy;->f:Landroid/content/Context;

    .line 38
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const v5, 0x7f0f0001

    .line 40
    invoke-virtual {v1, v5, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupItemHierarchy;->f:Landroid/content/Context;

    .line 41
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const/high16 v6, 0x7f0f0000

    invoke-virtual {v4, v6, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 37
    :goto_1
    iget-object v4, p0, Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupItemHierarchy;->c:Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupSummaryItem;

    .line 43
    invoke-virtual {v4, v1}, Lcom/google/android/setupdesign/items/Item;->b(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 42
    :cond_3
    iget-boolean v1, p0, Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupItemHierarchy;->j:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupItemHierarchy;->c:Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupSummaryItem;

    iget-object v4, p0, Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupItemHierarchy;->h:Ljava/lang/String;

    .line 44
    invoke-virtual {v1, v4}, Lcom/google/android/setupdesign/items/Item;->b(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupItemHierarchy;->c:Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupSummaryItem;

    iget-object v4, p0, Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupItemHierarchy;->f:Landroid/content/Context;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupItemHierarchy;->h:Ljava/lang/String;

    aput-object v6, v5, v3

    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const v6, 0x7f110020

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 46
    invoke-virtual {v1, v4}, Lcom/google/android/setupdesign/items/Item;->b(Ljava/lang/CharSequence;)V

    .line 43
    :goto_2
    if-lez v0, :cond_5

    goto :goto_3

    .line 48
    :cond_5
    const/4 v2, 0x0

    .line 43
    :goto_3
    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupItemHierarchy;->c:Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupSummaryItem;

    iget-boolean v1, v0, Lcom/google/android/apps/pixelmigrate/common/ui/CompoundButtonItem;->c:Z

    if-eq v2, v1, :cond_6

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/apps/pixelmigrate/common/ui/CompoundButtonItem;->d:Lalc;

    .line 47
    invoke-virtual {v0, v2}, Lcom/google/android/apps/pixelmigrate/common/ui/CompoundButtonItem;->a(Z)V

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupItemHierarchy;->c:Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupSummaryItem;

    iput-object p0, v0, Lcom/google/android/apps/pixelmigrate/common/ui/CompoundButtonItem;->d:Lalc;

    .line 48
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->d()V

    return-void
.end method


# virtual methods
.method public final X()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupItemHierarchy;->d:Lcom/google/android/apps/pixelmigrate/common/ui/AppsItemHierarchyV2;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/apps/pixelmigrate/common/ui/AppsItemHierarchyV2;->X()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final a(I)Lcmo;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupItemHierarchy;->c:Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupSummaryItem;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupItemHierarchy;->d:Lcom/google/android/apps/pixelmigrate/common/ui/AppsItemHierarchyV2;

    add-int/lit8 p1, p1, -0x1

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/android/apps/pixelmigrate/common/ui/AppsItemHierarchyV2;->a(I)Lcmo;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/android/apps/pixelmigrate/common/ui/CompoundButtonItem;Z)V
    .locals 4

    .line 21
    instance-of v0, p1, Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupSummaryItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupItemHierarchy;->d:Lcom/google/android/apps/pixelmigrate/common/ui/AppsItemHierarchyV2;

    iget-object p1, p1, Lcom/google/android/apps/pixelmigrate/common/ui/AppsItemHierarchyV2;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 22
    check-cast v2, Lcom/google/android/apps/pixelmigrate/common/ui/AbstractAppItem;

    .line 23
    invoke-virtual {v2, p2}, Lcom/google/android/apps/pixelmigrate/common/ui/CompoundButtonItem;->a(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->d()V

    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupItemHierarchy;->b:Lakm;

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupItemHierarchy;->e:Ljava/util/HashMap;

    check-cast p1, Laki;

    iget-object v0, p1, Laki;->ac:Ljava/util/Map;

    .line 25
    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 26
    invoke-virtual {p1}, Laki;->k()V

    goto :goto_1

    .line 27
    :cond_1
    instance-of v0, p1, Lcom/google/android/apps/pixelmigrate/common/ui/AbstractAppItem;

    if-eqz v0, :cond_3

    .line 28
    check-cast p1, Lcom/google/android/apps/pixelmigrate/common/ui/AbstractAppItem;

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupItemHierarchy;->b:Lakm;

    if-eqz v0, :cond_2

    iget-object v1, p1, Lcom/google/android/apps/pixelmigrate/common/ui/AbstractAppItem;->b:Laop;

    check-cast v0, Laki;

    iget-object v2, v0, Laki;->ac:Ljava/util/Map;

    .line 29
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-virtual {v0}, Laki;->k()V

    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupItemHierarchy;->e:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/google/android/apps/pixelmigrate/common/ui/AbstractAppItem;->b:Laop;

    .line 31
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupItemHierarchy;->a:Laqd;

    new-array p2, v1, [Ljava/lang/Object;

    .line 32
    const-string v0, "Unexpected SwitchItem."

    invoke-virtual {p1, v0, p2}, Laqd;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupItemHierarchy;->b()V

    return-void
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
