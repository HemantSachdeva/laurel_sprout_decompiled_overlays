.class public abstract Laki;
.super Lalv;
.source "PG"

# interfaces
.implements Lcmw;
.implements Lakm;


# static fields
.field private static final ad:Lacw;


# instance fields
.field protected Z:Lcmy;

.field protected a:I

.field protected aa:Lcom/google/android/setupdesign/items/ItemGroup;

.field public ab:Laci;

.field public ac:Ljava/util/Map;

.field protected b:I

.field protected c:I

.field protected d:Lcom/google/android/setupdesign/GlifRecyclerLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "AbstractAppPicker"

    aput-object v3, v1, v2

    .line 1
    invoke-direct {v0, v1}, Lacw;-><init>([Ljava/lang/String;)V

    sput-object v0, Laki;->ad:Lacw;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lalv;-><init>()V

    return-void
.end method


# virtual methods
.method public final O()V
    .locals 5

    invoke-virtual {p0}, Lba;->r()Lbc;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lakn;

    if-eqz v1, :cond_0

    sget-object v1, Laki;->ad:Lacw;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Sending user selection of apps to %s"

    invoke-virtual {v1, v3, v2}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    check-cast v0, Lakn;

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Laki;->ac:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, v1}, Lakn;->a(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 7

    .line 6
    invoke-super {p0, p1}, Lalv;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lba;->r()Lbc;

    move-result-object p1

    new-instance v0, Laci;

    .line 7
    const/4 v1, 0x0

    check-cast v1, Lbjf;

    if-nez v1, :cond_0

    .line 8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    new-instance v1, Labv;

    invoke-direct {v1}, Labv;-><init>()V

    goto :goto_0

    .line 10
    :cond_0
    new-instance v1, Labv;

    invoke-direct {v1}, Labv;-><init>()V

    .line 11
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v2, Lacn;

    .line 12
    invoke-direct {v2, p1}, Lacn;-><init>(Landroid/content/Context;)V

    new-instance p1, Labm;

    new-instance v3, Laca;

    .line 13
    invoke-direct {v3, v2}, Laca;-><init>(Lacn;)V

    invoke-direct {p1, v3, v1}, Labm;-><init>(Laas;Labc;)V

    iget-object v1, p1, Labm;->h:Laav;

    if-eqz v1, :cond_1

    .line 14
    invoke-virtual {v1}, Laav;->a()V

    :cond_1
    iget-object v1, p1, Labm;->g:[Labd;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_3

    .line 15
    aget-object v5, v1, v4

    if-eqz v5, :cond_2

    const/4 v6, 0x1

    iput-boolean v6, v5, Labd;->a:Z

    .line 16
    invoke-virtual {v5}, Labd;->interrupt()V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 17
    :cond_3
    new-instance v1, Laav;

    iget-object v2, p1, Labm;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v4, p1, Labm;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v5, p1, Labm;->e:Laas;

    iget-object v6, p1, Labm;->j:Laba;

    invoke-direct {v1, v2, v4, v5, v6}, Laav;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Laas;Laba;)V

    iput-object v1, p1, Labm;->h:Laav;

    iget-object v1, p1, Labm;->h:Laav;

    .line 18
    invoke-virtual {v1}, Laav;->start()V

    :goto_2
    iget-object v1, p1, Labm;->g:[Labd;

    array-length v1, v1

    if-ge v3, v1, :cond_4

    new-instance v1, Labd;

    iget-object v2, p1, Labm;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v4, p1, Labm;->f:Labc;

    iget-object v5, p1, Labm;->e:Laas;

    iget-object v6, p1, Labm;->j:Laba;

    .line 19
    invoke-direct {v1, v2, v4, v5, v6}, Labd;-><init>(Ljava/util/concurrent/BlockingQueue;Labc;Laas;Laba;)V

    iget-object v2, p1, Labm;->g:[Labd;

    .line 20
    aput-object v1, v2, v3

    .line 21
    invoke-virtual {v1}, Labd;->start()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    new-instance v1, Lakh;

    .line 22
    invoke-direct {v1}, Lakh;-><init>()V

    invoke-direct {v0, p1, v1}, Laci;-><init>(Labm;Lakh;)V

    iput-object v0, p0, Laki;->ab:Laci;

    const p1, 0x7f11004a

    iput p1, p0, Laki;->c:I

    const p1, 0x7f0d0043

    iput p1, p0, Laki;->a:I

    const p1, 0x7f110038

    iput p1, p0, Laki;->b:I

    return-void
.end method

.method public final a(Lcmo;)V
    .locals 2

    .line 23
    instance-of v0, p1, Lcom/google/android/apps/pixelmigrate/common/ui/CompoundButtonItem;

    if-eqz v0, :cond_0

    .line 24
    check-cast p1, Lcom/google/android/apps/pixelmigrate/common/ui/CompoundButtonItem;

    iget-object v0, p0, Laki;->d:Lcom/google/android/setupdesign/GlifRecyclerLayout;

    iget v1, p1, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->g:I

    .line 25
    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p1, Lcom/google/android/apps/pixelmigrate/common/ui/CompoundButtonItem;->c:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p1, Lcom/google/android/apps/pixelmigrate/common/ui/CompoundButtonItem;->c:Z

    const v1, 0x7f0a0179

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iget-boolean p1, p1, Lcom/google/android/apps/pixelmigrate/common/ui/CompoundButtonItem;->c:Z

    .line 27
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method protected abstract e()Lbjg;
.end method

.method public final k()V
    .locals 5

    invoke-virtual {p0}, Lba;->r()Lbc;

    move-result-object v0

    .line 28
    instance-of v1, v0, Lakn;

    if-eqz v1, :cond_0

    sget-object v1, Laki;->ad:Lacw;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Updating user selection of apps to %s"

    invoke-virtual {v1, v3, v2}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    check-cast v0, Lakn;

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Laki;->ac:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, v1}, Lakn;->b(Ljava/util/Map;)V

    :cond_0
    return-void
.end method
