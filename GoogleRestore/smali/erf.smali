.class final Lerf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lerp;


# instance fields
.field final synthetic a:Lorg/chromium/net/UrlResponseInfo;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lerl;


# direct methods
.method public constructor <init>(Lerl;Lorg/chromium/net/UrlResponseInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lerf;->c:Lerl;

    iput-object p2, p0, Lerf;->a:Lorg/chromium/net/UrlResponseInfo;

    iput-object p3, p0, Lerf;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lerf;->c:Lerl;

    iget-object v1, v0, Lerl;->a:Lery;

    iget-object v0, v0, Lerl;->d:Lero;

    iget-object v2, p0, Lerf;->a:Lorg/chromium/net/UrlResponseInfo;

    iget-object v3, p0, Lerf;->b:Ljava/lang/String;

    .line 1
    invoke-virtual {v1, v0, v2, v3}, Lery;->onRedirectReceived(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Ljava/lang/String;)V

    return-void
.end method
