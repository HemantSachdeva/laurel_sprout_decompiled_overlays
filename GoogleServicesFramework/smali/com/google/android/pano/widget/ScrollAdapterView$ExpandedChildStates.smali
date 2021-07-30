.class final Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedChildStates;
.super Lcom/google/android/pano/widget/ViewsStateBundle;
.source "ScrollAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/ScrollAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ExpandedChildStates"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/pano/widget/ScrollAdapterView;


# direct methods
.method constructor <init>(Lcom/google/android/pano/widget/ScrollAdapterView;)V
    .locals 1

    .line 276
    iput-object p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedChildStates;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    const/4 p1, 0x2

    const/16 v0, 0x64

    .line 277
    invoke-direct {p0, p1, v0}, Lcom/google/android/pano/widget/ViewsStateBundle;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected saveVisibleViewsUnchecked()V
    .locals 4

    .line 281
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedChildStates;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-static {v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$100(Lcom/google/android/pano/widget/ScrollAdapterView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 282
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedChildStates;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-static {v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$100(Lcom/google/android/pano/widget/ScrollAdapterView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;

    .line 283
    iget-object v3, v2, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    iget v2, v2, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->index:I

    invoke-virtual {p0, v3, v2}, Lcom/google/android/pano/widget/ViewsStateBundle;->saveViewUnchecked(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
