.class public Lcom/google/android/pano/widget/MetadataView;
.super Landroid/widget/FrameLayout;
.source "MetadataView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/pano/widget/MetadataView$MetadataHolder;
    }
.end annotation


# instance fields
.field protected mAlbum:Landroid/widget/TextView;

.field protected mArt:Landroid/widget/ImageView;

.field protected mArtist:Landroid/widget/TextView;

.field protected mHandler:Landroid/os/Handler;

.field protected mMetadata:Lcom/google/android/pano/widget/MetadataView$MetadataHolder;

.field protected mMetadataUpdater:Ljava/lang/Runnable;

.field protected mTitle:Landroid/widget/TextView;

.field protected mUseArt:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 101
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/widget/MetadataView;->mHandler:Landroid/os/Handler;

    .line 78
    new-instance v0, Lcom/google/android/pano/widget/MetadataView$1;

    invoke-direct {v0, p0}, Lcom/google/android/pano/widget/MetadataView$1;-><init>(Lcom/google/android/pano/widget/MetadataView;)V

    iput-object v0, p0, Lcom/google/android/pano/widget/MetadataView;->mMetadataUpdater:Ljava/lang/Runnable;

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 103
    invoke-virtual {p0}, Lcom/google/android/pano/widget/MetadataView;->initDefaults()V

    if-eqz p2, :cond_0

    .line 105
    invoke-virtual {p0, p1, p2}, Lcom/google/android/pano/widget/MetadataView;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/pano/widget/MetadataView;->setupViews()V

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 108
    invoke-virtual {p0, p1, p2}, Lcom/google/android/pano/widget/MetadataView;->setMetadata(Lcom/google/android/pano/widget/MetadataView$MetadataHolder;Z)Z

    return-void
.end method


# virtual methods
.method protected initDefaults()V
    .locals 0

    return-void
.end method

.method protected initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    return-void
.end method

.method public setMetadata(Lcom/google/android/pano/widget/MetadataView$MetadataHolder;Z)Z
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/google/android/pano/widget/MetadataView;->mMetadata:Lcom/google/android/pano/widget/MetadataView$MetadataHolder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/android/pano/widget/MetadataView$MetadataHolder;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 120
    :goto_0
    iput-object p1, p0, Lcom/google/android/pano/widget/MetadataView;->mMetadata:Lcom/google/android/pano/widget/MetadataView$MetadataHolder;

    .line 121
    iput-boolean p2, p0, Lcom/google/android/pano/widget/MetadataView;->mUseArt:Z

    .line 122
    iget-object p1, p0, Lcom/google/android/pano/widget/MetadataView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/google/android/pano/widget/MetadataView;->mMetadataUpdater:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v0
.end method

.method protected setupViews()V
    .locals 3

    .line 135
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 136
    sget v1, Lcom/google/android/pano/ui/R$layout;->default_metadata_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 137
    sget v0, Lcom/google/android/pano/ui/R$id;->title:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/pano/widget/MetadataView;->mTitle:Landroid/widget/TextView;

    .line 138
    sget v0, Lcom/google/android/pano/ui/R$id;->album:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/pano/widget/MetadataView;->mAlbum:Landroid/widget/TextView;

    .line 139
    sget v0, Lcom/google/android/pano/ui/R$id;->artist:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/pano/widget/MetadataView;->mArtist:Landroid/widget/TextView;

    .line 140
    sget v0, Lcom/google/android/pano/ui/R$id;->art:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/pano/widget/MetadataView;->mArt:Landroid/widget/ImageView;

    return-void
.end method
