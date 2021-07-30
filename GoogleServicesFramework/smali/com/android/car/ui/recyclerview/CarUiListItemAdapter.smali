.class public Lcom/android/car/ui/recyclerview/CarUiListItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CarUiListItemAdapter.java"

# interfaces
.implements Lcom/android/car/ui/recyclerview/CarUiRecyclerView$ItemCap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$HeaderViewHolder;,
        Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;",
        "Lcom/android/car/ui/recyclerview/CarUiRecyclerView$ItemCap;"
    }
.end annotation


# instance fields
.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/android/car/ui/recyclerview/CarUiListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxItems:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/car/ui/recyclerview/CarUiListItem;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 56
    iput v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter;->mMaxItems:I

    .line 59
    iput-object p1, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter;->mItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 140
    iget v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter;->mMaxItems:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 141
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget p0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter;->mMaxItems:I

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 95
    :cond_0
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/android/car/ui/recyclerview/CarUiHeaderListItem;

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    .line 99
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unknown view type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 104
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "Incorrect view holder type for list item."

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 120
    instance-of v0, p1, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$HeaderViewHolder;

    if-eqz v0, :cond_1

    .line 124
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/car/ui/recyclerview/CarUiListItem;

    .line 125
    instance-of p2, p0, Lcom/android/car/ui/recyclerview/CarUiHeaderListItem;

    if-eqz p2, :cond_0

    .line 131
    check-cast p1, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$HeaderViewHolder;

    check-cast p0, Lcom/android/car/ui/recyclerview/CarUiHeaderListItem;

    invoke-static {p1, p0}, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$HeaderViewHolder;->access$000(Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$HeaderViewHolder;Lcom/android/car/ui/recyclerview/CarUiHeaderListItem;)V

    goto :goto_0

    .line 126
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Expected item to be bound to viewHolder to be instance of CarUiHeaderListItem."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 121
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 134
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unknown item view type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 106
    :cond_3
    instance-of v0, p1, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;

    if-eqz v0, :cond_5

    .line 110
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/car/ui/recyclerview/CarUiListItem;

    .line 111
    instance-of p2, p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;

    if-eqz p2, :cond_4

    .line 117
    check-cast p1, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;

    check-cast p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;

    invoke-virtual {p1, p0}, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->bind(Lcom/android/car/ui/recyclerview/CarUiContentListItem;)V

    :goto_0
    return-void

    .line 112
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Expected item to be bound to viewHolder to be instance of CarUiContentListItem."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 107
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 66
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 73
    new-instance p2, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$HeaderViewHolder;

    sget v0, Lcom/android/car/ui/R$layout;->car_ui_header_list_item:I

    .line 74
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$HeaderViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 76
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unknown item type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 70
    :cond_1
    new-instance p2, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;

    sget v0, Lcom/android/car/ui/R$layout;->car_ui_list_item:I

    .line 71
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setMaxItems(I)V
    .locals 0

    .line 147
    iput p1, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter;->mMaxItems:I

    return-void
.end method
