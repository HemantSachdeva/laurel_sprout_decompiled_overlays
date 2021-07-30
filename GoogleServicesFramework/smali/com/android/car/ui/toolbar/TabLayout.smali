.class public Lcom/android/car/ui/toolbar/TabLayout;
.super Landroid/widget/LinearLayout;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/ui/toolbar/TabLayout$Tab;,
        Lcom/android/car/ui/toolbar/TabLayout$TabAdapter;,
        Lcom/android/car/ui/toolbar/TabLayout$Listener;
    }
.end annotation


# instance fields
.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/car/ui/toolbar/TabLayout$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mTabAdapter:Lcom/android/car/ui/toolbar/TabLayout$TabAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, v0}, Lcom/android/car/ui/toolbar/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, p2, v0}, Lcom/android/car/ui/toolbar/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    iput-object p2, p0, Lcom/android/car/ui/toolbar/TabLayout;->mListeners:Ljava/util/Set;

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 95
    sget p3, Lcom/android/car/ui/R$bool;->car_ui_toolbar_tab_flexible_layout:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 97
    sget p2, Lcom/android/car/ui/R$layout;->car_ui_toolbar_tab_item_layout_flexible:I

    goto :goto_0

    .line 98
    :cond_0
    sget p2, Lcom/android/car/ui/R$layout;->car_ui_toolbar_tab_item_layout:I

    .line 99
    :goto_0
    new-instance p3, Lcom/android/car/ui/toolbar/TabLayout$TabAdapter;

    const/4 v0, 0x0

    invoke-direct {p3, p1, p2, p0, v0}, Lcom/android/car/ui/toolbar/TabLayout$TabAdapter;-><init>(Landroid/content/Context;ILcom/android/car/ui/toolbar/TabLayout;Lcom/android/car/ui/toolbar/TabLayout$1;)V

    iput-object p3, p0, Lcom/android/car/ui/toolbar/TabLayout;->mTabAdapter:Lcom/android/car/ui/toolbar/TabLayout$TabAdapter;

    return-void
.end method

.method static synthetic access$700(Lcom/android/car/ui/toolbar/TabLayout;Lcom/android/car/ui/toolbar/TabLayout$Tab;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/android/car/ui/toolbar/TabLayout;->dispatchOnTabSelected(Lcom/android/car/ui/toolbar/TabLayout$Tab;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/car/ui/toolbar/TabLayout;Lcom/android/car/ui/toolbar/TabLayout$Tab;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/android/car/ui/toolbar/TabLayout;->dispatchOnTabUnselected(Lcom/android/car/ui/toolbar/TabLayout$Tab;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/car/ui/toolbar/TabLayout;Lcom/android/car/ui/toolbar/TabLayout$Tab;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/android/car/ui/toolbar/TabLayout;->dispatchOnTabReselected(Lcom/android/car/ui/toolbar/TabLayout$Tab;)V

    return-void
.end method

.method private dispatchOnTabReselected(Lcom/android/car/ui/toolbar/TabLayout$Tab;)V
    .locals 1

    .line 167
    iget-object p0, p0, Lcom/android/car/ui/toolbar/TabLayout;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/ui/toolbar/TabLayout$Listener;

    .line 168
    invoke-interface {v0, p1}, Lcom/android/car/ui/toolbar/TabLayout$Listener;->onTabReselected(Lcom/android/car/ui/toolbar/TabLayout$Tab;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatchOnTabSelected(Lcom/android/car/ui/toolbar/TabLayout$Tab;)V
    .locals 1

    .line 155
    iget-object p0, p0, Lcom/android/car/ui/toolbar/TabLayout;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/ui/toolbar/TabLayout$Listener;

    .line 156
    invoke-interface {v0, p1}, Lcom/android/car/ui/toolbar/TabLayout$Listener;->onTabSelected(Lcom/android/car/ui/toolbar/TabLayout$Tab;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatchOnTabUnselected(Lcom/android/car/ui/toolbar/TabLayout$Tab;)V
    .locals 1

    .line 161
    iget-object p0, p0, Lcom/android/car/ui/toolbar/TabLayout;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/ui/toolbar/TabLayout$Listener;

    .line 162
    invoke-interface {v0, p1}, Lcom/android/car/ui/toolbar/TabLayout$Listener;->onTabUnselected(Lcom/android/car/ui/toolbar/TabLayout$Tab;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/car/ui/toolbar/TabLayout$Listener;)V
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/android/car/ui/toolbar/TabLayout;->mListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getTabCount()I
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/car/ui/toolbar/TabLayout;->mTabAdapter:Lcom/android/car/ui/toolbar/TabLayout$TabAdapter;

    invoke-virtual {p0}, Lcom/android/car/ui/toolbar/TabLayout$TabAdapter;->getCount()I

    move-result p0

    return p0
.end method
