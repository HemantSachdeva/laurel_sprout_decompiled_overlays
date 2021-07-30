.class public abstract Lcom/google/android/pano/widget/AbsControlsView;
.super Landroid/widget/FrameLayout;
.source "AbsControlsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/pano/widget/AbsControlsView$Listener;
    }
.end annotation


# instance fields
.field protected mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/pano/widget/AbsControlsView$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-virtual {p0}, Lcom/google/android/pano/widget/AbsControlsView;->initDefaults()V

    if-eqz p2, :cond_0

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/google/android/pano/widget/AbsControlsView;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/pano/widget/AbsControlsView;->mListeners:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected abstract initDefaults()V
.end method

.method protected abstract initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end method

.method protected sendOnActiveChange(Z)V
    .locals 1

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/google/android/pano/widget/AbsControlsView;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 124
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/pano/widget/AbsControlsView$Listener;

    .line 125
    invoke-interface {v0, p1}, Lcom/google/android/pano/widget/AbsControlsView$Listener;->onActiveChange(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected sendOnClick(I)V
    .locals 1

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/google/android/pano/widget/AbsControlsView;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 117
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/pano/widget/AbsControlsView$Listener;

    .line 118
    invoke-interface {v0, p1}, Lcom/google/android/pano/widget/AbsControlsView$Listener;->onClick(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
