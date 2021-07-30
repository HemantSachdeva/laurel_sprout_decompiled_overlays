.class public Lcom/google/android/gsf/settings/common/AutomotiveWebViewActivity;
.super Landroid/app/Activity;
.source "AutomotiveWebViewActivity.java"


# instance fields
.field private webView:Landroid/webkit/WebView;

.field private final webViewClientCallback:Lcom/google/android/gsf/settings/common/AutomotiveWebViewClient$AutomotiveWebViewClientCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/google/android/gsf/settings/common/AutomotiveWebViewActivity;->webView:Landroid/webkit/WebView;

    .line 45
    new-instance v0, Lcom/google/android/gsf/settings/common/AutomotiveWebViewActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/settings/common/AutomotiveWebViewActivity$1;-><init>(Lcom/google/android/gsf/settings/common/AutomotiveWebViewActivity;)V

    iput-object v0, p0, Lcom/google/android/gsf/settings/common/AutomotiveWebViewActivity;->webViewClientCallback:Lcom/google/android/gsf/settings/common/AutomotiveWebViewClient$AutomotiveWebViewClientCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/settings/common/AutomotiveWebViewActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/android/gsf/settings/common/AutomotiveWebViewActivity;->webView:Landroid/webkit/WebView;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0090

    .line 73
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "whitelist"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const v2, 0x7f0901c1

    .line 79
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/car/ui/toolbar/Toolbar;

    .line 80
    invoke-virtual {v2, p1}, Lcom/android/car/ui/toolbar/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    sget-object p1, Lcom/android/car/ui/toolbar/Toolbar$State;->SUBPAGE:Lcom/android/car/ui/toolbar/Toolbar$State;

    invoke-virtual {v2, p1}, Lcom/android/car/ui/toolbar/Toolbar;->setState(Lcom/android/car/ui/toolbar/Toolbar$State;)V

    .line 83
    new-instance p1, Lcom/google/android/gsf/settings/common/AutomotiveWebViewClient;

    iget-object v2, p0, Lcom/google/android/gsf/settings/common/AutomotiveWebViewActivity;->webViewClientCallback:Lcom/google/android/gsf/settings/common/AutomotiveWebViewClient$AutomotiveWebViewClientCallback;

    invoke-direct {p1, v2}, Lcom/google/android/gsf/settings/common/AutomotiveWebViewClient;-><init>(Lcom/google/android/gsf/settings/common/AutomotiveWebViewClient$AutomotiveWebViewClientCallback;)V

    const/4 v2, 0x1

    .line 84
    invoke-virtual {p1, v2}, Lcom/google/android/gsf/settings/common/AutomotiveWebViewClient;->setValidateGoogleResourceHosts(Z)V

    .line 86
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 87
    invoke-virtual {p1, v1}, Lcom/google/android/gsf/settings/common/AutomotiveWebViewClient;->setResourcePatternWhitelist(Ljava/util/ArrayList;)V

    :cond_0
    const v1, 0x7f0901d4

    .line 90
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/google/android/gsf/settings/common/AutomotiveWebViewActivity;->webView:Landroid/webkit/WebView;

    .line 91
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 92
    iget-object v1, p0, Lcom/google/android/gsf/settings/common/AutomotiveWebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 95
    iget-object p1, p0, Lcom/google/android/gsf/settings/common/AutomotiveWebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v1, 0x0

    .line 96
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 98
    iget-object p0, p0, Lcom/google/android/gsf/settings/common/AutomotiveWebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
