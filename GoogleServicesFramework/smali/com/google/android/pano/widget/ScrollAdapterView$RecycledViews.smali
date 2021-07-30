.class Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;
.super Ljava/lang/Object;
.source "ScrollAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/ScrollAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecycledViews"
.end annotation


# instance fields
.field mAdapter:Lcom/google/android/pano/widget/ScrollAdapterBase;

.field mMaxRecycledViews:I

.field mViews:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;->mMaxRecycledViews:I

    return-void
.end method


# virtual methods
.method getView(I)Landroid/view/View;
    .locals 2

    .line 218
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;->mViews:[Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    array-length v1, p0

    if-ge p1, v1, :cond_0

    .line 219
    aget-object p0, p0, p1

    .line 220
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/view/View;

    :cond_0
    return-object v0
.end method

.method recycleView(Landroid/view/View;I)V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapterBase;

    if-eqz v0, :cond_0

    .line 209
    invoke-interface {v0, p1}, Lcom/google/android/pano/widget/ScrollAdapterBase;->viewRemoved(Landroid/view/View;)V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;->mViews:[Ljava/util/List;

    if-eqz v0, :cond_1

    if-ltz p2, :cond_1

    array-length v1, v0

    if-ge p2, v1, :cond_1

    aget-object v0, v0, p2

    .line 212
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;->mMaxRecycledViews:I

    if-ge v0, v1, :cond_1

    .line 213
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;->mViews:[Ljava/util/List;

    aget-object p0, p0, p2

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method updateAdapter(Lcom/google/android/pano/widget/ScrollAdapterBase;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 196
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    .line 197
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;->mViews:[Ljava/util/List;

    if-eqz v1, :cond_0

    array-length v1, v1

    if-eq v0, v1, :cond_1

    .line 198
    :cond_0
    new-array v1, v0, [Ljava/util/List;

    iput-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;->mViews:[Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 200
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;->mViews:[Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    :cond_1
    iput-object p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapterBase;

    return-void
.end method
