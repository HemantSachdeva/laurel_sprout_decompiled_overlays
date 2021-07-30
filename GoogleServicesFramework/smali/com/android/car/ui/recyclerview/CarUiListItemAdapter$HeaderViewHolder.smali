.class Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$HeaderViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CarUiListItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/ui/recyclerview/CarUiListItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field private final mBody:Landroid/widget/TextView;

.field private final mTitle:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 375
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 376
    sget v0, Lcom/android/car/ui/R$id;->title:I

    invoke-static {p1, v0}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$HeaderViewHolder;->mTitle:Landroid/widget/TextView;

    .line 377
    sget v0, Lcom/android/car/ui/R$id;->body:I

    invoke-static {p1, v0}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$HeaderViewHolder;->mBody:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$000(Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$HeaderViewHolder;Lcom/android/car/ui/recyclerview/CarUiHeaderListItem;)V
    .locals 0

    .line 369
    invoke-direct {p0, p1}, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$HeaderViewHolder;->bind(Lcom/android/car/ui/recyclerview/CarUiHeaderListItem;)V

    return-void
.end method

.method private bind(Lcom/android/car/ui/recyclerview/CarUiHeaderListItem;)V
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$HeaderViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/car/ui/recyclerview/CarUiHeaderListItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    invoke-virtual {p1}, Lcom/android/car/ui/recyclerview/CarUiHeaderListItem;->getBody()Ljava/lang/CharSequence;

    move-result-object p1

    .line 384
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 385
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$HeaderViewHolder;->mBody:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 387
    :cond_0
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$HeaderViewHolder;->mBody:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
