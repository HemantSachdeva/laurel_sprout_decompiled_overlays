.class public abstract Lcom/google/android/pano/widget/ViewsStateBundle;
.super Ljava/lang/Object;
.source "ViewsStateBundle.java"


# instance fields
.field private final childStates:Landroid/os/Bundle;

.field private limitNumber:I

.field private savePolicy:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/google/android/pano/widget/ViewsStateBundle;->savePolicy:I

    .line 48
    iput p2, p0, Lcom/google/android/pano/widget/ViewsStateBundle;->limitNumber:I

    .line 49
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/google/android/pano/widget/ViewsStateBundle;->childStates:Landroid/os/Bundle;

    return-void
.end method

.method static getSaveStatesKey(I)Ljava/lang/String;
    .locals 0

    .line 169
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/google/android/pano/widget/ViewsStateBundle;->childStates:Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/os/Bundle;->clear()V

    return-void
.end method

.method public final getChildStates()Landroid/os/Bundle;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/google/android/pano/widget/ViewsStateBundle;->childStates:Landroid/os/Bundle;

    return-object p0
.end method

.method public final loadView(Landroid/view/View;I)V
    .locals 0

    .line 100
    invoke-static {p2}, Lcom/google/android/pano/widget/ViewsStateBundle;->getSaveStatesKey(I)Ljava/lang/String;

    move-result-object p2

    .line 101
    iget-object p0, p0, Lcom/google/android/pano/widget/ViewsStateBundle;->childStates:Landroid/os/Bundle;

    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 103
    invoke-virtual {p1, p0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_0
    return-void
.end method

.method public final saveInvisibleView(Landroid/view/View;I)V
    .locals 2

    .line 154
    iget v0, p0, Lcom/google/android/pano/widget/ViewsStateBundle;->savePolicy:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/google/android/pano/widget/ViewsStateBundle;->childStates:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    .line 161
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/pano/widget/ViewsStateBundle;->saveViewUnchecked(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method protected final saveViewUnchecked(Landroid/view/View;I)V
    .locals 1

    .line 114
    invoke-static {p2}, Lcom/google/android/pano/widget/ViewsStateBundle;->getSaveStatesKey(I)Ljava/lang/String;

    move-result-object p2

    .line 115
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 116
    invoke-virtual {p1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 117
    iget-object p0, p0, Lcom/google/android/pano/widget/ViewsStateBundle;->childStates:Landroid/os/Bundle;

    invoke-virtual {p0, p2, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-void
.end method

.method public final saveVisibleViews()V
    .locals 1

    .line 136
    iget v0, p0, Lcom/google/android/pano/widget/ViewsStateBundle;->savePolicy:I

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ViewsStateBundle;->saveVisibleViewsUnchecked()V

    :cond_0
    return-void
.end method

.method protected abstract saveVisibleViewsUnchecked()V
.end method
