.class final Lcom/google/android/pano/widget/ScrollAdapterView$ExpandableChildStates;
.super Lcom/google/android/pano/widget/ViewsStateBundle;
.source "ScrollAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/ScrollAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ExpandableChildStates"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/pano/widget/ScrollAdapterView;


# direct methods
.method constructor <init>(Lcom/google/android/pano/widget/ScrollAdapterView;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandableChildStates;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    const/4 p1, 0x0

    .line 266
    invoke-direct {p0, p1, p1}, Lcom/google/android/pano/widget/ViewsStateBundle;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected saveVisibleViewsUnchecked()V
    .locals 4

    .line 270
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandableChildStates;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-virtual {v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandableChildStates;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-virtual {v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 271
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandableChildStates;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-virtual {v2, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandableChildStates;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-static {v3, v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$000(Lcom/google/android/pano/widget/ScrollAdapterView;I)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/pano/widget/ViewsStateBundle;->saveViewUnchecked(Landroid/view/View;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
