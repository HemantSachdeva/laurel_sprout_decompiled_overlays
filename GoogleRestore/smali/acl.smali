.class public final Lacl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Labn;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/android/volley/toolbox/NetworkImageView;


# direct methods
.method public constructor <init>(Lcom/android/volley/toolbox/NetworkImageView;Z)V
    .locals 0

    iput-object p1, p0, Lacl;->b:Lcom/android/volley/toolbox/NetworkImageView;

    iput-boolean p2, p0, Lacl;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lach;Z)V
    .locals 1

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lacl;->a:Z

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p2, p0, Lacl;->b:Lcom/android/volley/toolbox/NetworkImageView;

    new-instance v0, Lack;

    .line 2
    invoke-direct {v0, p0, p1}, Lack;-><init>(Lacl;Lach;)V

    invoke-virtual {p2, v0}, Lcom/android/volley/toolbox/NetworkImageView;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 0
    :cond_1
    :goto_0
    iget-object p1, p1, Lach;->a:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lacl;->b:Lcom/android/volley/toolbox/NetworkImageView;

    .line 1
    invoke-virtual {p2, p1}, Lcom/android/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    return-void
.end method
