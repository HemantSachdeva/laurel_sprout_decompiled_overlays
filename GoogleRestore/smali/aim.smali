.class public final Laim;
.super Lalv;
.source "PG"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lahx;


# static fields
.field public static final synthetic ac:I

.field private static final ad:Laqd;


# instance fields
.field public Z:Ljava/util/Map;

.field public a:Lcom/google/android/setupdesign/GlifListLayout;

.field public aa:Ljava/util/Set;

.field ab:Ljava/lang/Long;

.field private ae:Landroid/widget/ProgressBar;

.field private af:Lahz;

.field private ag:Ljava/util/List;

.field private ah:Z

.field private ai:J

.field private aj:Ljava/lang/String;

.field private ak:I

.field b:Landroid/view/View;

.field c:Landroid/widget/TextView;

.field d:Lcma;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "RestoreChoiceFragment"

    aput-object v3, v1, v2

    .line 1
    invoke-direct {v0, v1}, Lacw;-><init>([Ljava/lang/String;)V

    sput-object v0, Laim;->ad:Laqd;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Lalv;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laim;->ai:J

    return-void
.end method

.method private final a(Landroid/view/View$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Laim;->d:Lcma;

    .line 3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcma;->a(Z)V

    iget-object v0, p0, Laim;->d:Lcma;

    iput-object p1, v0, Lcma;->e:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public final O()V
    .locals 3

    iget-boolean v0, p0, Laim;->ah:Z

    if-eqz v0, :cond_0

    new-instance v0, Laif;

    .line 132
    invoke-direct {v0, p0}, Laif;-><init>(Laim;)V

    invoke-direct {p0, v0}, Laim;->a(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Laim;->Z:Ljava/util/Map;

    .line 133
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Laig;

    .line 135
    invoke-direct {v0, p0}, Laig;-><init>(Laim;)V

    invoke-direct {p0, v0}, Laim;->a(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    iget-object v0, p0, Laim;->d:Lcma;

    .line 134
    invoke-virtual {v0, v1}, Lcma;->a(Z)V

    iget-object v0, p0, Laim;->d:Lcma;

    const/4 v1, 0x0

    iput-object v1, v0, Lcma;->e:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final P()Lail;
    .locals 1

    invoke-virtual {p0}, Lba;->r()Lbc;

    move-result-object v0

    .line 5
    check-cast v0, Lail;

    return-object v0
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    sget-object v0, Laim;->ad:Laqd;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    .line 9
    const-string v3, "onCreateView"

    invoke-virtual {v0, v3, v2}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    const v0, 0x7f0d0039

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/setupdesign/GlifListLayout;

    iput-object p2, p0, Laim;->a:Lcom/google/android/setupdesign/GlifListLayout;

    .line 11
    const v0, 0x7f110053

    invoke-virtual {p0, p2, v0}, Lalv;->a(Lcom/google/android/setupdesign/GlifLayout;I)V

    iget-object p2, p0, Laim;->a:Lcom/google/android/setupdesign/GlifListLayout;

    .line 12
    invoke-virtual {p2}, Lcom/google/android/setupdesign/GlifListLayout;->c()Landroid/widget/ListView;

    move-result-object p2

    iget-object v0, p0, Laim;->a:Lcom/google/android/setupdesign/GlifListLayout;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/setupdesign/GlifListLayout;->c()Landroid/widget/ListView;

    move-result-object v0

    const v2, 0x7f0d0027

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Laim;->b:Landroid/view/View;

    .line 14
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-object v0, p0, Laim;->b:Landroid/view/View;

    .line 15
    const v3, 0x7f0a0060

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Laim;->ae:Landroid/widget/ProgressBar;

    .line 16
    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Laim;->b:Landroid/view/View;

    .line 17
    const v3, 0x7f0a0185

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laim;->c:Landroid/widget/TextView;

    iget-object v0, p0, Laim;->b:Landroid/view/View;

    .line 18
    const v3, 0x7f0a0137

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Laim;->a:Lcom/google/android/setupdesign/GlifListLayout;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/setupdesign/GlifListLayout;->c()Landroid/widget/ListView;

    move-result-object v0

    const v4, 0x7f0d0026

    invoke-virtual {p1, v4, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 20
    invoke-virtual {p2, p1, v2, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 21
    invoke-virtual {p2, v1}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 22
    const v0, 0x7f0a012e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 23
    invoke-static {}, Lada;->a()Lada;

    move-result-object v2

    iget-object v2, v2, Lada;->g:Latw;

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    iget v5, v2, Latw;->a:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_0

    iget-wide v5, v2, Latw;->e:J

    .line 24
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    int-to-long v7, v2

    cmp-long v2, v5, v7

    if-lez v2, :cond_0

    const v2, 0x7f11014d

    .line 29
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 75
    :cond_0
    const v2, 0x7f11014e

    .line 25
    invoke-virtual {p0, v2}, Lba;->a(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/CharSequence;

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 26
    invoke-static {v6}, Lcrl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 27
    invoke-static {v2, v5}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 28
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    :goto_0
    const v0, 0x7f0a0135

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-array v0, v4, [Ljava/lang/Object;

    iget-object v2, p0, Laim;->aj:Ljava/lang/String;

    aput-object v2, v0, v1

    const v1, 0x7f11015c

    .line 31
    invoke-virtual {p0, v1, v0}, Lba;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Laim;->a:Lcom/google/android/setupdesign/GlifListLayout;

    const-class v0, Lcly;

    .line 33
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->a(Ljava/lang/Class;)Lcmb;

    move-result-object p1

    check-cast p1, Lcly;

    new-instance v0, Lclz;

    invoke-virtual {p0}, Lba;->p()Landroid/content/Context;

    move-result-object v1

    .line 34
    invoke-direct {v0, v1}, Lclz;-><init>(Landroid/content/Context;)V

    const v1, 0x7f11004c

    .line 35
    invoke-virtual {v0, v1}, Lclz;->a(I)V

    new-instance v1, Laib;

    invoke-direct {v1, p0}, Laib;-><init>(Laim;)V

    iput-object v1, v0, Lclz;->b:Landroid/view/View$OnClickListener;

    const/4 v1, 0x5

    iput v1, v0, Lclz;->c:I

    const v2, 0x7f1201a4

    iput v2, v0, Lclz;->d:I

    .line 36
    invoke-virtual {v0}, Lclz;->a()Lcma;

    move-result-object v0

    .line 37
    invoke-virtual {p1, v0}, Lcly;->a(Lcma;)V

    iget-object v0, p1, Lcly;->c:Lcma;

    iput-object v0, p0, Laim;->d:Lcma;

    new-instance v0, Lclz;

    invoke-virtual {p0}, Lba;->p()Landroid/content/Context;

    move-result-object v2

    .line 38
    invoke-direct {v0, v2}, Lclz;-><init>(Landroid/content/Context;)V

    const v2, 0x7f11002f

    .line 39
    invoke-virtual {v0, v2}, Lclz;->a(I)V

    new-instance v2, Laic;

    invoke-direct {v2, p0}, Laic;-><init>(Laim;)V

    iput-object v2, v0, Lclz;->b:Landroid/view/View$OnClickListener;

    const/4 v2, 0x7

    iput v2, v0, Lclz;->c:I

    const v5, 0x7f1201a5

    iput v5, v0, Lclz;->d:I

    .line 40
    invoke-virtual {v0}, Lclz;->a()Lcma;

    move-result-object v0

    .line 41
    invoke-virtual {p1, v0}, Lcly;->b(Lcma;)V

    new-instance p1, Ljava/util/HashMap;

    .line 42
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Laim;->Z:Ljava/util/Map;

    .line 43
    invoke-virtual {p0}, Laim;->P()Lail;

    move-result-object p1

    invoke-interface {p1}, Lail;->p()Ljava/util/List;

    move-result-object p1

    .line 44
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lahv;

    iget-boolean v6, v5, Lahv;->f:Z

    if-eqz v6, :cond_2

    .line 45
    invoke-virtual {v5}, Lahv;->b()Z

    move-result v6

    invoke-virtual {v5, v6}, Lahv;->a(Z)V

    iget-object v6, p0, Laim;->Z:Ljava/util/Map;

    iget v7, v5, Lahv;->a:I

    .line 46
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5}, Lahv;->b()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget v6, v5, Lahv;->a:I

    if-ne v6, v4, :cond_1

    .line 47
    invoke-static {}, Lada;->a()Lada;

    move-result-object v6

    new-instance v7, Ljava/util/HashSet;

    .line 48
    invoke-virtual {v6}, Lada;->b()Lcsl;

    move-result-object v6

    invoke-virtual {v6}, Lcsl;->c()Lcsn;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 49
    sget-object v6, Laii;->a:Lj$/util/function/Predicate;

    invoke-static {v7, v6}, Lj$/util/Collection$$Dispatch;->removeIf(Ljava/util/Collection;Lj$/util/function/Predicate;)Z

    .line 50
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    iput-boolean v6, v5, Lahv;->i:Z

    goto :goto_1

    .line 51
    :cond_3
    new-instance v0, Lcsj;

    .line 52
    invoke-direct {v0, v3}, Lcsj;-><init>(I)V

    .line 53
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v4}, Lcsj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x3

    .line 54
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcsj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v6, 0x8

    .line 55
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6, v4}, Lcsj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcsj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6, v1}, Lcsj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x6

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcsj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcsj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 60
    invoke-virtual {v0}, Lcsj;->a()Lcsl;

    move-result-object v0

    .line 61
    new-instance v1, Laih;

    invoke-direct {v1, v0}, Laih;-><init>(Ljava/util/Map;)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Ljava/util/ArrayList;

    .line 62
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laim;->ag:Ljava/util/List;

    new-instance v1, Lahw;

    invoke-direct {v1}, Lahw;-><init>()V

    .line 63
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Laim;->ag:Ljava/util/List;

    .line 64
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Laim;->ag:Ljava/util/List;

    new-instance v0, Lahw;

    invoke-direct {v0}, Lahw;-><init>()V

    .line 65
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance p1, Lahz;

    invoke-virtual {p0}, Lba;->r()Lbc;

    move-result-object v0

    new-instance v1, Laid;

    .line 67
    invoke-direct {v1, p0}, Laid;-><init>(Laim;)V

    iget-object v2, p0, Laim;->ag:Ljava/util/List;

    invoke-direct {p1, v0, v1, v2}, Lahz;-><init>(Landroid/content/Context;Lahx;Ljava/util/List;)V

    iput-object p1, p0, Laim;->af:Lahz;

    .line 68
    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 69
    invoke-virtual {p2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 70
    invoke-virtual {p0}, Laim;->e()V

    .line 71
    invoke-virtual {p0}, Laim;->P()Lail;

    move-result-object p1

    invoke-interface {p1}, Lail;->q()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Laim;->aa:Ljava/util/Set;

    .line 72
    sget-object p2, Laie;->a:Lj$/util/function/Predicate;

    invoke-static {p1, p2}, Lj$/util/Collection$$Dispatch;->removeIf(Ljava/util/Collection;Lj$/util/function/Predicate;)Z

    .line 73
    invoke-static {v4}, Laqq;->a(I)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    new-instance p2, Laik;

    .line 74
    invoke-direct {p2, p0}, Laik;-><init>(Laim;)V

    .line 75
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Laim;->a:Lcom/google/android/setupdesign/GlifListLayout;

    return-object p1
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    .line 6
    invoke-super {p0, p1}, Lalv;->a(Landroid/os/Bundle;)V

    iget-object p1, p0, Lba;->k:Landroid/os/Bundle;

    .line 7
    const-string v0, "arg_account_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Laim;->aj:Ljava/lang/String;

    iget-object p1, p0, Lba;->k:Landroid/os/Bundle;

    .line 8
    const-string v0, "arg_num_available_apps"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Laim;->ak:I

    return-void
.end method

.method public final d()Lbcs;
    .locals 1

    .line 4
    sget-object v0, Lbcs;->L:Lbcs;

    return-object v0
.end method

.method public final e()V
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Laim;->af:Lahz;

    .line 87
    invoke-virtual {v3}, Lahz;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Laim;->af:Lahz;

    .line 88
    invoke-virtual {v3, v2}, Lahz;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lahv;

    if-eqz v3, :cond_0

    iget-object v3, p0, Laim;->af:Lahz;

    .line 89
    invoke-virtual {v3, v2}, Lahz;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lahv;

    .line 90
    invoke-virtual {v3}, Lahv;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-wide v3, v3, Lahv;->h:J

    add-long/2addr v0, v3

    goto :goto_1

    :cond_0
    nop

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Laim;->ai:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    iput-wide v0, p0, Laim;->ai:J

    .line 91
    invoke-virtual {p0}, Laim;->k()V

    :cond_2
    return-void
.end method

.method public final j()V
    .locals 1

    .line 76
    invoke-super {p0}, Lalv;->j()V

    const/4 v0, 0x0

    iput-object v0, p0, Laim;->a:Lcom/google/android/setupdesign/GlifListLayout;

    iput-object v0, p0, Laim;->b:Landroid/view/View;

    iput-object v0, p0, Laim;->af:Lahz;

    iput-object v0, p0, Laim;->ae:Landroid/widget/ProgressBar;

    iput-object v0, p0, Laim;->d:Lcma;

    iput-object v0, p0, Laim;->c:Landroid/widget/TextView;

    return-void
.end method

.method final k()V
    .locals 12

    invoke-virtual {p0}, Lba;->v()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Laim;->ad:Laqd;

    new-array v1, v1, [Ljava/lang/Object;

    .line 92
    const-string v2, "CloudRestoreChoiceFragment not attached to activity, won\'t update labels."

    invoke-virtual {v0, v2, v1}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Laim;->a:Lcom/google/android/setupdesign/GlifListLayout;

    if-nez v0, :cond_1

    sget-object v0, Laim;->ad:Laqd;

    new-array v1, v1, [Ljava/lang/Object;

    .line 93
    const-string v2, "Fragment is destroyed, won\'t update labels."

    invoke-virtual {v0, v2, v1}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Laim;->ab:Ljava/lang/Long;

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Laim;->ae:Landroid/widget/ProgressBar;

    .line 94
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v0, p0, Laim;->c:Landroid/widget/TextView;

    .line 95
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_2
    iget-object v0, p0, Laim;->ae:Landroid/widget/ProgressBar;

    .line 96
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v0, p0, Laim;->c:Landroid/widget/TextView;

    .line 97
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lba;->r()Lbc;

    move-result-object v0

    iget-object v4, p0, Laim;->ab:Ljava/lang/Long;

    .line 98
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lba;->r()Lbc;

    move-result-object v4

    iget-wide v5, p0, Laim;->ai:J

    .line 99
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v5, v6}, Ltt;->a(Landroid/content/res/Resources;J)Laqo;

    move-result-object v4

    iget-object v5, v4, Laqo;->a:Ljava/lang/String;

    iget-object v4, v4, Laqo;->b:Ljava/lang/String;

    const v6, 0x7f11017f

    .line 100
    invoke-virtual {p0, v6}, Lba;->a(I)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/CharSequence;

    aput-object v5, v7, v1

    aput-object v4, v7, v3

    const/4 v4, 0x2

    aput-object v0, v7, v4

    .line 101
    invoke-static {v6, v7}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v4, Landroid/text/SpannableString;

    .line 102
    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v0

    const-class v5, Landroid/text/Annotation;

    invoke-virtual {v4, v1, v0, v5}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Annotation;

    new-instance v5, Landroid/text/SpannableStringBuilder;

    .line 104
    invoke-direct {v5, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 105
    array-length v6, v0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_4

    aget-object v8, v0, v7

    .line 106
    invoke-virtual {v8}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v9

    const-string v10, "id"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 107
    invoke-virtual {v8}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 108
    const-string v10, "selected_size"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 109
    new-instance v9, Landroid/text/style/AbsoluteSizeSpan;

    .line 110
    invoke-virtual {p0}, Lba;->s()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0701e6

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    invoke-direct {v9, v10}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    .line 111
    invoke-virtual {v4, v8}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    .line 112
    invoke-virtual {v4, v8}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    .line 113
    invoke-virtual {v4, v9}, Landroid/text/SpannableString;->getSpanFlags(Ljava/lang/Object;)I

    move-result v11

    .line 114
    invoke-virtual {v5, v9, v10, v8, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Laim;->c:Landroid/widget/TextView;

    .line 115
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-wide v4, p0, Laim;->ai:J

    iget-object v0, p0, Laim;->ab:Ljava/lang/Long;

    .line 116
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v0, p0, Laim;->ae:Landroid/widget/ProgressBar;

    const-wide/16 v8, 0x0

    const/16 v10, 0x3e8

    cmp-long v11, v6, v8

    if-nez v11, :cond_5

    const/16 v4, 0x3e8

    goto :goto_1

    .line 130
    :cond_5
    long-to-double v4, v4

    long-to-double v6, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double v4, v4, v6

    double-to-int v4, v4

    .line 117
    :goto_1
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getWidth()I

    move-result v5

    if-lez v5, :cond_6

    .line 118
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getHeight()I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getWidth()I

    move-result v6

    div-int/2addr v5, v6

    if-lez v4, :cond_6

    if-ge v4, v5, :cond_6

    move v4, v5

    .line 119
    :cond_6
    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-wide v4, p0, Laim;->ai:J

    iget-object v0, p0, Laim;->ab:Ljava/lang/Long;

    .line 120
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_7

    goto :goto_2

    .line 130
    :cond_7
    const/4 v3, 0x0

    .line 120
    :goto_2
    iput-boolean v3, p0, Laim;->ah:Z

    const v0, 0x7f0a0137

    if-eqz v3, :cond_8

    iget-object v2, p0, Laim;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lba;->r()Lbc;

    move-result-object v3

    .line 121
    const v4, 0x7f060140

    invoke-static {v3, v4}, Ltt;->b(Landroid/content/Context;I)I

    move-result v3

    .line 122
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Laim;->ae:Landroid/widget/ProgressBar;

    .line 123
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0}, Lba;->r()Lbc;

    move-result-object v3

    .line 124
    invoke-static {v3, v4}, Ltt;->b(Landroid/content/Context;I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 125
    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v2, p0, Laim;->b:Landroid/view/View;

    .line 126
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 131
    :cond_8
    iget-object v1, p0, Laim;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lba;->r()Lbc;

    move-result-object v3

    const v4, 0x7f06032f

    .line 127
    invoke-static {v3, v4}, Ltt;->b(Landroid/content/Context;I)I

    move-result v3

    .line 128
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Laim;->ae:Landroid/widget/ProgressBar;

    .line 129
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    iget-object v1, p0, Laim;->b:Landroid/view/View;

    .line 130
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 131
    :goto_3
    invoke-virtual {p0}, Laim;->O()V

    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    sget-object p4, Laim;->ad:Laqd;

    const/4 p5, 0x1

    new-array v0, p5, [Ljava/lang/Object;

    .line 77
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Detected user click at position # %d"

    invoke-virtual {p4, v1, v0}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    .line 79
    const-string p2, "Received a user click on a null item, ignoring."

    invoke-virtual {p4, p2, p1}, Laqd;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 80
    :cond_0
    instance-of p3, p1, Lahv;

    if-eqz p3, :cond_3

    .line 81
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lahy;

    .line 82
    iget-object p2, p1, Lahy;->d:Lahv;

    iget p3, p2, Lahv;->a:I

    if-ne p3, p5, :cond_1

    iget p1, p0, Laim;->ak:I

    if-lez p1, :cond_2

    .line 83
    invoke-virtual {p0}, Laim;->P()Lail;

    move-result-object p1

    invoke-interface {p1}, Lail;->n()V

    return-void

    :cond_1
    iget-boolean p2, p2, Lahv;->g:Z

    if-eqz p2, :cond_2

    .line 84
    iget-object p1, p1, Lahy;->c:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->toggle()V

    return-void

    .line 83
    :cond_2
    return-void

    .line 84
    :cond_3
    new-array p2, p5, [Ljava/lang/Object;

    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v2

    .line 86
    const-string p1, "Received a user click on a non-actionable item of type %s, ignoring."

    invoke-virtual {p4, p1, p2}, Laqd;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
