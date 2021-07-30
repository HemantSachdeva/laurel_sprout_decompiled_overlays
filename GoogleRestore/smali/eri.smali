.class final Leri;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/chromium/net/UrlResponseInfo;

.field final synthetic b:Lerl;


# direct methods
.method public constructor <init>(Lerl;Lorg/chromium/net/UrlResponseInfo;)V
    .locals 0

    iput-object p1, p0, Leri;->b:Lerl;

    iput-object p2, p0, Leri;->a:Lorg/chromium/net/UrlResponseInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Leri;->b:Lerl;

    iget-object v1, v0, Lerl;->a:Lery;

    iget-object v0, v0, Lerl;->d:Lero;

    iget-object v2, p0, Leri;->a:Lorg/chromium/net/UrlResponseInfo;

    .line 1
    invoke-virtual {v1, v0, v2}, Lorg/chromium/net/UrlRequest$Callback;->onCanceled(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    sget-object v1, Lero;->a:Ljava/lang/String;

    const-string v2, "Exception in onCanceled method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
