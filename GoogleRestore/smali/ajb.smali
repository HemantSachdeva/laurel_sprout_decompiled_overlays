.class public final Lajb;
.super Lalv;
.source "PG"

# interfaces
.implements Lcmw;


# static fields
.field public static final synthetic a:I

.field private static final b:Laqd;


# instance fields
.field private final c:Lj$/util/function/Supplier;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "DevicePickerFragment"

    aput-object v3, v1, v2

    .line 1
    invoke-direct {v0, v1}, Lacw;-><init>([Ljava/lang/String;)V

    sput-object v0, Lajb;->b:Laqd;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Lalv;-><init>()V

    .line 3
    new-instance v0, Lair;

    invoke-direct {v0, p0}, Lair;-><init>(Lajb;)V

    iput-object v0, p0, Lajb;->c:Lj$/util/function/Supplier;

    return-void
.end method

.method public static a(Lagf;)Lajb;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    .line 7
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lagf;->a:Landroid/accounts/Account;

    .line 8
    const-string v2, "restore_account"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-boolean p0, p0, Lagf;->g:Z

    .line 9
    const-string v1, "is_work_profile_apps_only"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p0, Lajb;

    .line 10
    invoke-direct {p0}, Lajb;-><init>()V

    .line 11
    invoke-virtual {p0, v0}, Lba;->d(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 12
    const v0, 0x7f0d0046

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupdesign/GlifRecyclerLayout;

    iget-object p2, p0, Lajb;->c:Lj$/util/function/Supplier;

    .line 13
    invoke-interface {p2}, Lj$/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ls;

    if-eqz p2, :cond_0

    .line 14
    invoke-virtual {p2}, Ls;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lajb;->b:Laqd;

    new-array v1, v1, [Ljava/lang/Object;

    .line 15
    const-string v2, "Devices have not been fetched when DevicePickerFragment is shown!"

    invoke-virtual {v0, v2, v1}, Laqd;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    invoke-static {}, Lcsi;->f()Lcsi;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lajb;->a(Lcom/google/android/setupdesign/GlifRecyclerLayout;Lcsi;)V

    :cond_1
    if-eqz p2, :cond_2

    new-instance v0, Lais;

    .line 17
    invoke-direct {v0, p0, p1}, Lais;-><init>(Lajb;Lcom/google/android/setupdesign/GlifRecyclerLayout;)V

    invoke-virtual {p2, p0, v0}, Ls;->a(Ll;Lw;)V

    :cond_2
    return-object p1
.end method

.method public final a(Lcmo;)V
    .locals 3

    .line 18
    instance-of v0, p1, Laiz;

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {p0}, Lajb;->k()Laja;

    move-result-object v0

    check-cast p1, Laiz;

    iget-object p1, p1, Laiz;->a:Latw;

    invoke-interface {v0, p1}, Laja;->a(Latw;)V

    return-void

    :cond_0
    sget-object v0, Lajb;->b:Laqd;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Unknown item in the devices list, type: %s."

    invoke-virtual {v0, p1, v1}, Laqd;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/google/android/setupdesign/GlifRecyclerLayout;Lcsi;)V
    .locals 10

    .line 21
    invoke-virtual {p1}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->d()Lqc;

    move-result-object v0

    check-cast v0, Lcmy;

    iput-object p0, v0, Lcmy;->e:Lcmw;

    .line 22
    const v1, 0x7f0a0083

    invoke-virtual {v0, v1}, Lcmy;->e(I)Lcms;

    move-result-object v1

    check-cast v1, Lcom/google/android/setupdesign/items/DescriptionItem;

    iget-boolean v2, p1, Lcom/google/android/setupdesign/GlifLayout;->c:Z

    .line 23
    invoke-virtual {v1, v2}, Lcom/google/android/setupdesign/items/DescriptionItem;->a(Z)V

    .line 24
    const v2, 0x7f0a0084

    invoke-virtual {v0, v2}, Lcmy;->e(I)Lcms;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/items/ItemGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    sget-object p1, Lajb;->b:Laqd;

    new-array p2, v2, [Ljava/lang/Object;

    .line 25
    const-string v0, "Device list is null"

    invoke-virtual {p1, v0, p2}, Laqd;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-class v3, Lcly;

    .line 26
    invoke-virtual {p1, v3}, Lcom/google/android/setupcompat/internal/TemplateLayout;->a(Ljava/lang/Class;)Lcmb;

    move-result-object v3

    check-cast v3, Lcly;

    iget-object v4, v0, Lcom/google/android/setupdesign/items/ItemGroup;->a:Ljava/util/List;

    .line 27
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/setupdesign/items/ItemGroup;->X()I

    move-result v4

    iget-object v6, v0, Lcom/google/android/setupdesign/items/ItemGroup;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_2

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 29
    check-cast v9, Lcms;

    .line 30
    invoke-interface {v9, v0}, Lcms;->b(Lcmr;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v5, v0, Lcom/google/android/setupdesign/items/ItemGroup;->b:Z

    iget-object v6, v0, Lcom/google/android/setupdesign/items/ItemGroup;->a:Ljava/util/List;

    .line 31
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 32
    invoke-virtual {v0, v2, v4}, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->b(II)V

    .line 33
    :goto_1
    invoke-virtual {p2}, Lcsi;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    const v0, 0x7f110070

    .line 34
    invoke-virtual {p0, p1, v0}, Lalv;->a(Lcom/google/android/setupdesign/GlifLayout;I)V

    iget-object v0, p0, Lba;->k:Landroid/os/Bundle;

    .line 35
    const-string v4, "restore_account"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    if-eqz v0, :cond_3

    new-array v4, v5, [Ljava/lang/Object;

    .line 36
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v4, v2

    const v0, 0x7f11006f

    invoke-virtual {p0, v0, v4}, Lba;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/setupdesign/items/Item;->b(Ljava/lang/CharSequence;)V

    :cond_3
    new-instance v0, Lclz;

    invoke-virtual {p0}, Lba;->p()Landroid/content/Context;

    move-result-object v2

    .line 37
    invoke-direct {v0, v2}, Lclz;-><init>(Landroid/content/Context;)V

    const v2, 0x7f110194

    .line 38
    invoke-virtual {v0, v2}, Lclz;->a(I)V

    new-instance v2, Laiv;

    invoke-direct {v2, p0}, Laiv;-><init>(Lajb;)V

    iput-object v2, v0, Lclz;->b:Landroid/view/View$OnClickListener;

    const/4 v2, 0x5

    iput v2, v0, Lclz;->c:I

    const v2, 0x7f1201a4

    iput v2, v0, Lclz;->d:I

    .line 39
    invoke-virtual {v0}, Lclz;->a()Lcma;

    move-result-object v0

    .line 40
    invoke-virtual {v3, v0}, Lcly;->a(Lcma;)V

    goto :goto_6

    .line 41
    :cond_4
    invoke-virtual {p0}, Lajb;->e()Z

    move-result v2

    if-eqz v2, :cond_5

    const v4, 0x7f110075

    goto :goto_2

    .line 44
    :cond_5
    const v4, 0x7f110074

    .line 42
    :goto_2
    invoke-virtual {p0, p1, v4}, Lalv;->a(Lcom/google/android/setupdesign/GlifLayout;I)V

    if-eqz v2, :cond_6

    const v4, 0x7f110073

    .line 43
    invoke-virtual {p0, v4}, Lba;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/setupdesign/items/Item;->b(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 52
    :cond_6
    const v4, 0x7f110072

    .line 44
    invoke-virtual {p0, v4}, Lba;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/setupdesign/items/Item;->b(Ljava/lang/CharSequence;)V

    .line 45
    :goto_3
    invoke-virtual {p2}, Lcsi;->g()Lctw;

    move-result-object v4

    .line 46
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Latw;

    new-instance v7, Laiz;

    .line 47
    invoke-direct {v7, p0, v6}, Laiz;-><init>(Lajb;Latw;)V

    .line 48
    invoke-virtual {v0, v7}, Lcom/google/android/setupdesign/items/ItemGroup;->a(Lcms;)V

    goto :goto_4

    :cond_7
    if-eq v5, v2, :cond_8

    const v0, 0x7f11002f

    goto :goto_5

    .line 52
    :cond_8
    const v0, 0x7f110030

    .line 48
    :goto_5
    new-instance v2, Lclz;

    invoke-virtual {p0}, Lba;->p()Landroid/content/Context;

    move-result-object v4

    .line 49
    invoke-direct {v2, v4}, Lclz;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-virtual {v2, v0}, Lclz;->a(I)V

    new-instance v0, Laiw;

    invoke-direct {v0, p0}, Laiw;-><init>(Lajb;)V

    iput-object v0, v2, Lclz;->b:Landroid/view/View$OnClickListener;

    const/4 v0, 0x7

    iput v0, v2, Lclz;->c:I

    const v0, 0x7f1201a5

    iput v0, v2, Lclz;->d:I

    .line 51
    invoke-virtual {v2}, Lclz;->a()Lcma;

    move-result-object v0

    .line 52
    invoke-virtual {v3, v0}, Lcly;->b(Lcma;)V

    .line 53
    :goto_6
    invoke-virtual {p1}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->c()Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    .line 54
    new-instance v0, Laix;

    invoke-direct {v0, p1, v1, p2}, Laix;-><init>(Landroid/support/v7/widget/RecyclerView;Lcom/google/android/setupdesign/items/DescriptionItem;Lcsi;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Lrb;)V

    return-void
.end method

.method public final d()Lbcs;
    .locals 1

    .line 4
    sget-object v0, Lbcs;->K:Lbcs;

    return-object v0
.end method

.method public final e()Z
    .locals 2

    iget-object v0, p0, Lba;->k:Landroid/os/Bundle;

    .line 6
    const-string v1, "is_work_profile_apps_only"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final k()Laja;
    .locals 1

    invoke-virtual {p0}, Lba;->r()Lbc;

    move-result-object v0

    .line 5
    check-cast v0, Laja;

    return-object v0
.end method
