.class public final Lcom/google/android/gsf/settings/common/AutomotiveWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "AutomotiveWebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/settings/common/AutomotiveWebViewClient$AutomotiveWebViewClientCallback;
    }
.end annotation


# static fields
.field private static final GOOGLE_RESOURCE_HOST_PATTERNS:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final automotiveWebViewClientCallback:Lcom/google/android/gsf/settings/common/AutomotiveWebViewClient$AutomotiveWebViewClientCallback;

.field private final googleResourcePatternList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private resourcePatternWhitelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private validateGoogleResourceHosts:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "(ad|ae|as|at|ba|be|bf|bg|bi|bj|bs|bt|by|ca|cat|cd|cf|cg|ch|ci|cl|cm|cn|co\\.ao|co\\.bw|co\\.ck|co\\.cr|co\\.id|co\\.in|co\\.il|co\\.je|co\\.jp|co\\.kr|co\\.ls|co\\.mz|co\\.nz|co\\.th|co\\.tz|co\\.ug|co\\.uk|co\\.ve|co\\.vi|co\\.za|co\\.zm|co\\.zw|com|com\\.ag|com\\.ai|com\\.ar|com\\.au|com\\.bd|com\\.bh|com\\.bn|com\\.bo|com\\.br|com\\.bz|ccom\\.co|com\\.cu|com\\.do|com\\.ec|com\\.eg|com\\.et|com\\.fj|com\\.gh|com\\.gi|com\\.gt|com\\.hk|com\\.iq|com\\.jm|com\\.kh|com\\.kw|com\\.lb|com\\.ly|com\\.mm|com\\.mt|com\\.mx|com\\.my|com\\.na|com\\.ng|com\\.ni|com\\.np|com\\.om|com\\.pa|com\\.pe|com\\.pg|com\\.ph|com\\.pr|com\\.py|com\\.qa|com\\.sa|com\\.sb|com\\.sg|com\\.sl|com\\.sv|com\\.tr|com\\.tw|com\\.ua|com\\.uy|com\\.vc|cv|cz|de|dj|dk|dm|dz|ec|ee|es|fi|fm|fr|ga|ge|gg|gl|gm|gp|gr|gy|hk|hn|hr|ht|hu|ie|im|is|it|it\\.ao|iq|je|jo|jp|kg|ki|kz|la|li|lk|lt|lu|lv|mg|mk|ml|mn|ms|mu|mv|mw|ne|nf|ng|nl|no|nr|nu|pl|pn|pt|ro|rs|ru|rw|sc|se|sh|si|sk|sm|sn|so|st|td|tg|tk|tl|tn|to|tt|uz|vg|vu|ws)"

    aput-object v2, v0, v1

    const-string v1, "^(policies|play|www)*\\.google\\.%s"

    .line 60
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".*\\.googleapis\\.com$"

    const-string v2, ".*\\.gstatic\\.com$"

    const-string v3, ".*\\.googleusercontent\\.com$"

    const-string v4, ".*\\.google-analytics\\.com$"

    .line 56
    invoke-static {v1, v2, v3, v0, v4}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/settings/common/AutomotiveWebViewClient;->GOOGLE_RESOURCE_HOST_PATTERNS:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gsf/settings/common/AutomotiveWebViewClient$AutomotiveWebViewClientCallback;)V
    .locals 3

    .line 69
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/settings/common/AutomotiveWebViewClient;->googleResourcePatternList:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/settings/common/AutomotiveWebViewClient;->resourcePatternWhitelist:Ljava/util/List;

    .line 70
    iput-object p1, p0, Lcom/google/android/gsf/settings/common/AutomotiveWebViewClient;->automotiveWebViewClientCallback:Lcom/google/android/gsf/settings/common/AutomotiveWebViewClient$AutomotiveWebViewClientCallback;

    .line 71
    sget-object p1, Lcom/google/android/gsf/settings/common/AutomotiveWebViewClient;->GOOGLE_RESOURCE_HOST_PATTERNS:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/settings/common/AutomotiveWebViewClient;->googleResourcePatternList:Ljava/util/List;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Invalid Google host pattern %s"

    .line 75
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutomotiveWebViewClient"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method getGoogleResourcePatternList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation

    .line 155
    iget-object p0, p0, Lcom/google/android/gsf/settings/common/AutomotiveWebViewClient;->googleResourcePatternList:Ljava/util/List;

    return-object p0
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    .line 128
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result p1

    const/4 p3, -0x6

    if-eq p1, p3, :cond_0

    const/4 p3, -0x7

    if-eq p1, p3, :cond_0

    const/4 p3, -0x8

    if-eq p1, p3, :cond_0

    const/4 p3, -0x2

    if-ne p1, p3, :cond_1

    .line 133
    :cond_0
    iget-object p0, p0, Lcom/google/android/gsf/settings/common/AutomotiveWebViewClient;->automotiveWebViewClientCallback:Lcom/google/android/gsf/settings/common/AutomotiveWebViewClient$AutomotiveWebViewClientCallback;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gsf/settings/common/AutomotiveWebViewClient$AutomotiveWebViewClientCallback;->onReceivedError(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setResourcePatternWhitelist(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/regex/Pattern;",
            ">;)V"
        }
    .end annotation

    .line 142
    iput-object p1, p0, Lcom/google/android/gsf/settings/common/AutomotiveWebViewClient;->resourcePatternWhitelist:Ljava/util/List;

    return-void
.end method

.method public setValidateGoogleResourceHosts(Z)V
    .locals 0

    .line 150
    iput-boolean p1, p0, Lcom/google/android/gsf/settings/common/AutomotiveWebViewClient;->validateGoogleResourceHosts:Z

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 3

    .line 111
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 112
    iget-boolean v1, p0, Lcom/google/android/gsf/settings/common/AutomotiveWebViewClient;->validateGoogleResourceHosts:Z

    if-eqz v1, :cond_2

    .line 113
    iget-object v1, p0, Lcom/google/android/gsf/settings/common/AutomotiveWebViewClient;->googleResourcePatternList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/regex/Pattern;

    .line 114
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p0

    return-object p0

    .line 118
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Host not found in allowed list "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AutomotiveWebViewClient"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance p0, Landroid/webkit/WebResourceResponse;

    new-instance p1, Ljava/io/ByteArrayInputStream;

    const/4 p2, 0x0

    new-array p2, p2, [B

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string p2, "text/plain"

    const-string v0, "UTF-8"

    invoke-direct {p0, p2, v0, p1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p0

    .line 123
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p0

    return-object p0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 5

    .line 82
    invoke-virtual {p1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 83
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "about:blank"

    .line 86
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/settings/common/AutomotiveWebViewClient;->resourcePatternWhitelist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/regex/Pattern;

    .line 91
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    .line 95
    :cond_2
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isRedirect()Z

    move-result v0

    const-string v1, "AutomotiveWebViewClient"

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    const-string p0, "Redirect detected, not following"

    .line 96
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 100
    :cond_3
    iget-object p0, p0, Lcom/google/android/gsf/settings/common/AutomotiveWebViewClient;->automotiveWebViewClientCallback:Lcom/google/android/gsf/settings/common/AutomotiveWebViewClient$AutomotiveWebViewClientCallback;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/settings/common/AutomotiveWebViewClient$AutomotiveWebViewClientCallback;->onUriBlocked(Landroid/net/Uri;)V

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    .line 104
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    aput-object p2, p0, v2

    aput-object p1, p0, v3

    const-string p1, "Navigation prevented to %s original is %s"

    .line 103
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 101
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_4
    :goto_0
    return v2
.end method
