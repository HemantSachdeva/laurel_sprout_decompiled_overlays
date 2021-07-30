.class Lcom/google/android/pano/widget/MetadataView$1;
.super Ljava/lang/Object;
.source "MetadataView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/MetadataView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/pano/widget/MetadataView;


# direct methods
.method constructor <init>(Lcom/google/android/pano/widget/MetadataView;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/google/android/pano/widget/MetadataView$1;->this$0:Lcom/google/android/pano/widget/MetadataView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 81
    iget-object v0, p0, Lcom/google/android/pano/widget/MetadataView$1;->this$0:Lcom/google/android/pano/widget/MetadataView;

    iget-object v1, v0, Lcom/google/android/pano/widget/MetadataView;->mMetadata:Lcom/google/android/pano/widget/MetadataView$MetadataHolder;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/google/android/pano/widget/MetadataView$1;->this$0:Lcom/google/android/pano/widget/MetadataView;

    iget-object v1, v0, Lcom/google/android/pano/widget/MetadataView;->mMetadata:Lcom/google/android/pano/widget/MetadataView$MetadataHolder;

    if-nez v1, :cond_1

    return-void

    .line 85
    :cond_1
    iget-object v0, v0, Lcom/google/android/pano/widget/MetadataView;->mTitle:Landroid/widget/TextView;

    iget-object v1, v1, Lcom/google/android/pano/widget/MetadataView$MetadataHolder;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v3, 0x8

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/google/android/pano/widget/MetadataView$1;->this$0:Lcom/google/android/pano/widget/MetadataView;

    iget-object v1, v0, Lcom/google/android/pano/widget/MetadataView;->mTitle:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/google/android/pano/widget/MetadataView;->mMetadata:Lcom/google/android/pano/widget/MetadataView$MetadataHolder;

    iget-object v0, v0, Lcom/google/android/pano/widget/MetadataView$MetadataHolder;->title:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/google/android/pano/widget/MetadataView$1;->this$0:Lcom/google/android/pano/widget/MetadataView;

    iget-object v1, v0, Lcom/google/android/pano/widget/MetadataView;->mArtist:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/google/android/pano/widget/MetadataView;->mMetadata:Lcom/google/android/pano/widget/MetadataView$MetadataHolder;

    iget-object v0, v0, Lcom/google/android/pano/widget/MetadataView$MetadataHolder;->artist:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v3

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/google/android/pano/widget/MetadataView$1;->this$0:Lcom/google/android/pano/widget/MetadataView;

    iget-object v1, v0, Lcom/google/android/pano/widget/MetadataView;->mArtist:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/google/android/pano/widget/MetadataView;->mMetadata:Lcom/google/android/pano/widget/MetadataView$MetadataHolder;

    iget-object v0, v0, Lcom/google/android/pano/widget/MetadataView$MetadataHolder;->artist:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/google/android/pano/widget/MetadataView$1;->this$0:Lcom/google/android/pano/widget/MetadataView;

    iget-object v1, v0, Lcom/google/android/pano/widget/MetadataView;->mAlbum:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/google/android/pano/widget/MetadataView;->mMetadata:Lcom/google/android/pano/widget/MetadataView$MetadataHolder;

    iget-object v0, v0, Lcom/google/android/pano/widget/MetadataView$MetadataHolder;->album:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v3

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/google/android/pano/widget/MetadataView$1;->this$0:Lcom/google/android/pano/widget/MetadataView;

    iget-object v1, v0, Lcom/google/android/pano/widget/MetadataView;->mAlbum:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/google/android/pano/widget/MetadataView;->mMetadata:Lcom/google/android/pano/widget/MetadataView$MetadataHolder;

    iget-object v0, v0, Lcom/google/android/pano/widget/MetadataView$MetadataHolder;->album:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/google/android/pano/widget/MetadataView$1;->this$0:Lcom/google/android/pano/widget/MetadataView;

    iget-object v1, v0, Lcom/google/android/pano/widget/MetadataView;->mArt:Landroid/widget/ImageView;

    iget-boolean v4, v0, Lcom/google/android/pano/widget/MetadataView;->mUseArt:Z

    if-eqz v4, :cond_5

    iget-object v0, v0, Lcom/google/android/pano/widget/MetadataView;->mMetadata:Lcom/google/android/pano/widget/MetadataView$MetadataHolder;

    iget-object v0, v0, Lcom/google/android/pano/widget/MetadataView$MetadataHolder;->artwork:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    move v2, v3

    :goto_4
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    iget-object p0, p0, Lcom/google/android/pano/widget/MetadataView$1;->this$0:Lcom/google/android/pano/widget/MetadataView;

    iget-object v0, p0, Lcom/google/android/pano/widget/MetadataView;->mArt:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/google/android/pano/widget/MetadataView;->mMetadata:Lcom/google/android/pano/widget/MetadataView$MetadataHolder;

    iget-object p0, p0, Lcom/google/android/pano/widget/MetadataView$MetadataHolder;->artwork:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
