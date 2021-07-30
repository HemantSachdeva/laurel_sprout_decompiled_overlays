.class public abstract Lcom/google/android/gsf/settings/common/AutomotiveWebViewClient$AutomotiveWebViewClientCallback;
.super Ljava/lang/Object;
.source "AutomotiveWebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/settings/common/AutomotiveWebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AutomotiveWebViewClientCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onReceivedError(Ljava/lang/String;)V
.end method

.method public abstract onUriBlocked(Landroid/net/Uri;)V
.end method
