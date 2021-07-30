.class Lcom/android/car/ui/toolbar/TabLayout$TabAdapter;
.super Landroid/widget/BaseAdapter;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/ui/toolbar/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TabAdapter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mTabItemLayoutRes:I

.field private final mTabLayout:Lcom/android/car/ui/toolbar/TabLayout;

.field private final mTabList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/car/ui/toolbar/TabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;ILcom/android/car/ui/toolbar/TabLayout;)V
    .locals 1

    .line 183
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/ui/toolbar/TabLayout$TabAdapter;->mTabList:Ljava/util/List;

    .line 185
    iput-object p1, p0, Lcom/android/car/ui/toolbar/TabLayout$TabAdapter;->mContext:Landroid/content/Context;

    .line 186
    iput p2, p0, Lcom/android/car/ui/toolbar/TabLayout$TabAdapter;->mTabItemLayoutRes:I

    .line 187
    iput-object p3, p0, Lcom/android/car/ui/toolbar/TabLayout$TabAdapter;->mTabLayout:Lcom/android/car/ui/toolbar/TabLayout;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;ILcom/android/car/ui/toolbar/TabLayout;Lcom/android/car/ui/toolbar/TabLayout$1;)V
    .locals 0

    .line 176
    invoke-direct {p0, p1, p2, p3}, Lcom/android/car/ui/toolbar/TabLayout$TabAdapter;-><init>(Landroid/content/Context;ILcom/android/car/ui/toolbar/TabLayout;)V

    return-void
.end method

.method private getPosition(Lcom/android/car/ui/toolbar/TabLayout$Tab;)I
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/android/car/ui/toolbar/TabLayout$TabAdapter;->mTabList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$presentTabItemView$0(Lcom/android/car/ui/toolbar/TabLayout$Tab;Landroid/view/View;)V
    .locals 0

    .line 272
    invoke-direct {p0, p1}, Lcom/android/car/ui/toolbar/TabLayout$TabAdapter;->selectTab(Lcom/android/car/ui/toolbar/TabLayout$Tab;)V

    return-void
.end method

.method private notifyItemChanged(I)V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/android/car/ui/toolbar/TabLayout$TabAdapter;->mTabLayout:Lcom/android/car/ui/toolbar/TabLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 258
    invoke-direct {p0, p1, v0}, Lcom/android/car/ui/toolbar/TabLayout$TabAdapter;->presentTabItemView(ILandroid/view/View;)V

    return-void
.end method

.method private presentTabItemView(ILandroid/view/View;)V
    .locals 3

    .line 267
    iget-object v0, p0, Lcom/android/car/ui/toolbar/TabLayout$TabAdapter;->mTabList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/car/ui/toolbar/TabLayout$Tab;

    .line 269
    sget v0, Lcom/android/car/ui/R$id;->car_ui_toolbar_tab_item_icon:I

    invoke-static {p2, v0}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 270
    sget v1, Lcom/android/car/ui/R$id;->car_ui_toolbar_tab_item_text:I

    invoke-static {p2, v1}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 272
    new-instance v2, Lcom/android/car/ui/toolbar/-$$Lambda$TabLayout$TabAdapter$0Vjm7Veshp6Oh0zTkPnpEz-k18k;

    invoke-direct {v2, p0, p1}, Lcom/android/car/ui/toolbar/-$$Lambda$TabLayout$TabAdapter$0Vjm7Veshp6Oh0zTkPnpEz-k18k;-><init>(Lcom/android/car/ui/toolbar/TabLayout$TabAdapter;Lcom/android/car/ui/toolbar/TabLayout$Tab;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    invoke-virtual {p1, v1}, Lcom/android/car/ui/toolbar/TabLayout$Tab;->bindText(Landroid/widget/TextView;)V

    .line 274
    invoke-virtual {p1, v0}, Lcom/android/car/ui/toolbar/TabLayout$Tab;->bindIcon(Landroid/widget/ImageView;)V

    .line 275
    invoke-static {p1}, Lcom/android/car/ui/toolbar/TabLayout$Tab;->access$600(Lcom/android/car/ui/toolbar/TabLayout$Tab;)Z

    move-result p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setActivated(Z)V

    .line 276
    invoke-static {p1}, Lcom/android/car/ui/toolbar/TabLayout$Tab;->access$600(Lcom/android/car/ui/toolbar/TabLayout$Tab;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 277
    sget p0, Lcom/android/car/ui/R$style;->TextAppearance_CarUi_Widget_Toolbar_Tab_Selected:I

    goto :goto_0

    .line 278
    :cond_0
    sget p0, Lcom/android/car/ui/R$style;->TextAppearance_CarUi_Widget_Toolbar_Tab:I

    .line 276
    :goto_0
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setTextAppearance(I)V

    return-void
.end method

.method private selectTab(I)V
    .locals 5

    if-ltz p1, :cond_5

    .line 234
    invoke-virtual {p0}, Lcom/android/car/ui/toolbar/TabLayout$TabAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_5

    const/4 v0, 0x0

    move v1, v0

    .line 238
    :goto_0
    invoke-virtual {p0}, Lcom/android/car/ui/toolbar/TabLayout$TabAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 239
    iget-object v2, p0, Lcom/android/car/ui/toolbar/TabLayout$TabAdapter;->mTabList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/ui/toolbar/TabLayout$Tab;

    if-ne p1, v1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v0

    .line 241
    :goto_1
    invoke-static {v2}, Lcom/android/car/ui/toolbar/TabLayout$Tab;->access$600(Lcom/android/car/ui/toolbar/TabLayout$Tab;)Z

    move-result v4

    if-eq v4, v3, :cond_2

    .line 242
    invoke-static {v2, v3}, Lcom/android/car/ui/toolbar/TabLayout$Tab;->access$602(Lcom/android/car/ui/toolbar/TabLayout$Tab;Z)Z

    .line 243
    invoke-direct {p0, v1}, Lcom/android/car/ui/toolbar/TabLayout$TabAdapter;->notifyItemChanged(I)V

    .line 244
    invoke-static {v2}, Lcom/android/car/ui/toolbar/TabLayout$Tab;->access$600(Lcom/android/car/ui/toolbar/TabLayout$Tab;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 245
    iget-object v3, p0, Lcom/android/car/ui/toolbar/TabLayout$TabAdapter;->mTabLayout:Lcom/android/car/ui/toolbar/TabLayout;

    invoke-static {v3, v2}, Lcom/android/car/ui/toolbar/TabLayout;->access$700(Lcom/android/car/ui/toolbar/TabLayout;Lcom/android/car/ui/toolbar/TabLayout$Tab;)V

    goto :goto_2

    .line 247
    :cond_1
    iget-object v3, p0, Lcom/android/car/ui/toolbar/TabLayout$TabAdapter;->mTabLayout:Lcom/android/car/ui/toolbar/TabLayout;

    invoke-static {v3, v2}, Lcom/android/car/ui/toolbar/TabLayout;->access$800(Lcom/android/car/ui/toolbar/TabLayout;Lcom/android/car/ui/toolbar/TabLayout$Tab;)V

    goto :goto_2

    .line 249
    :cond_2
    invoke-static {v2}, Lcom/android/car/ui/toolbar/TabLayout$Tab;->access$600(Lcom/android/car/ui/toolbar/TabLayout$Tab;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 250
    iget-object v3, p0, Lcom/android/car/ui/toolbar/TabLayout$TabAdapter;->mTabLayout:Lcom/android/car/ui/toolbar/TabLayout;

    invoke-static {v3, v2}, Lcom/android/car/ui/toolbar/TabLayout;->access$900(Lcom/android/car/ui/toolbar/TabLayout;Lcom/android/car/ui/toolbar/TabLayout$Tab;)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void

    .line 235
    :cond_5
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Invalid position"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private selectTab(Lcom/android/car/ui/toolbar/TabLayout$Tab;)V
    .locals 0

    .line 230
    invoke-direct {p0, p1}, Lcom/android/car/ui/toolbar/TabLayout$TabAdapter;->getPosition(Lcom/android/car/ui/toolbar/TabLayout$Tab;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/car/ui/toolbar/TabLayout$TabAdapter;->selectTab(I)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/android/car/ui/toolbar/TabLayout$TabAdapter;->mTabList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Lcom/android/car/ui/toolbar/TabLayout$Tab;
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/android/car/ui/toolbar/TabLayout$TabAdapter;->mTabList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/car/ui/toolbar/TabLayout$Tab;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 176
    invoke-virtual {p0, p1}, Lcom/android/car/ui/toolbar/TabLayout$TabAdapter;->getItem(I)Lcom/android/car/ui/toolbar/TabLayout$Tab;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 222
    iget-object p2, p0, Lcom/android/car/ui/toolbar/TabLayout$TabAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcom/android/car/ui/toolbar/TabLayout$TabAdapter;->mTabItemLayoutRes:I

    const/4 v1, 0x0

    .line 223
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 225
    invoke-direct {p0, p1, p2}, Lcom/android/car/ui/toolbar/TabLayout$TabAdapter;->presentTabItemView(ILandroid/view/View;)V

    return-object p2
.end method

.method public synthetic lambda$presentTabItemView$0$TabLayout$TabAdapter(Lcom/android/car/ui/toolbar/TabLayout$Tab;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/car/ui/toolbar/TabLayout$TabAdapter;->lambda$presentTabItemView$0(Lcom/android/car/ui/toolbar/TabLayout$Tab;Landroid/view/View;)V

    return-void
.end method
