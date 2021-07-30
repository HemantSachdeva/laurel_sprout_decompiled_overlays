.class public Lcom/google/android/gsf/settings/SettingsTosActivity;
.super Landroid/app/Activity;
.source "SettingsTosActivity.java"


# static fields
.field protected static final LOCAL_LOGV:Z


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field private mHelper:Lcom/google/android/common/GoogleWebContentHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "SettingsTosActivity"

    const/4 v1, 0x2

    .line 61
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gsf/settings/SettingsTosActivity;->LOCAL_LOGV:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/settings/SettingsTosActivity;)Lcom/google/android/common/GoogleWebContentHelper;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/google/android/gsf/settings/SettingsTosActivity;->mHelper:Lcom/google/android/common/GoogleWebContentHelper;

    return-object p0
.end method

.method private getWebView()Landroid/webkit/WebView;
    .locals 4

    .line 263
    iget-object p0, p0, Lcom/google/android/gsf/settings/SettingsTosActivity;->mHelper:Lcom/google/android/common/GoogleWebContentHelper;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 266
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/common/GoogleWebContentHelper;->getLayout()Landroid/view/ViewGroup;

    move-result-object p0

    const/4 v1, 0x0

    .line 267
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 268
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 269
    instance-of v3, v2, Landroid/webkit/WebView;

    if-eqz v3, :cond_1

    .line 270
    check-cast v2, Landroid/webkit/WebView;

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private isBrowserEnabled()Z
    .locals 3

    .line 277
    new-instance v0, Landroid/content/Intent;

    const-string v1, "http://example.com/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 278
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private makeErrorDialog()Landroid/app/Dialog;
    .locals 3

    const v0, 0x7f0f004e

    .line 246
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 247
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f0f004c

    .line 249
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 250
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/google/android/gsf/settings/SettingsTosActivity$3;

    invoke-direct {v2, p0}, Lcom/google/android/gsf/settings/SettingsTosActivity$3;-><init>(Lcom/google/android/gsf/settings/SettingsTosActivity;)V

    .line 251
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 259
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private makeTosDialog()Landroid/app/Dialog;
    .locals 3

    const v0, 0x7f0f004e

    .line 224
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 225
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 227
    iget-object v2, p0, Lcom/google/android/gsf/settings/SettingsTosActivity;->mHelper:Lcom/google/android/common/GoogleWebContentHelper;

    invoke-virtual {v2}, Lcom/google/android/common/GoogleWebContentHelper;->getLayout()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 228
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/google/android/gsf/settings/SettingsTosActivity$2;

    invoke-direct {v2, p0}, Lcom/google/android/gsf/settings/SettingsTosActivity$2;-><init>(Lcom/google/android/gsf/settings/SettingsTosActivity;)V

    .line 229
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/google/android/gsf/settings/SettingsTosActivity$1;

    invoke-direct {v2, p0}, Lcom/google/android/gsf/settings/SettingsTosActivity$1;-><init>(Lcom/google/android/gsf/settings/SettingsTosActivity;)V

    .line 236
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 242
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    new-instance v0, Lcom/google/android/common/GoogleWebContentHelper;

    invoke-direct {v0, p0}, Lcom/google/android/common/GoogleWebContentHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gsf/settings/SettingsTosActivity;->mHelper:Lcom/google/android/common/GoogleWebContentHelper;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const-string v2, "savedWebView"

    .line 75
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/google/android/gsf/settings/SettingsTosActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 78
    invoke-virtual {v2, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 79
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    move v0, v1

    goto/16 :goto_1

    .line 83
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "settings_tos_pretty_url"

    invoke-static {p1, v2}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "settings_tos_url"

    invoke-static {v2, v3}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "SettingsTosActivity"

    if-eqz v3, :cond_2

    .line 89
    sget-boolean v2, Lcom/google/android/gsf/settings/SettingsTosActivity;->LOCAL_LOGV:Z

    if-eqz v2, :cond_1

    const-string v2, "settings_tos_url not in gservices, using fallback: http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v2, "http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html"

    .line 95
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 96
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    const-string v6, "phone"

    .line 103
    invoke-virtual {p0, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    if-eqz v6, :cond_3

    .line 104
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 105
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v5

    .line 107
    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v7, "%m"

    .line 110
    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    const-string v9, "%s"

    if-eqz v8, :cond_5

    if-eqz v6, :cond_4

    .line 113
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    const-string v8, ""

    .line 114
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const/4 v8, 0x3

    .line 117
    :try_start_0
    invoke-virtual {v6, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_4

    .line 119
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v1

    goto :goto_0

    .line 123
    :catch_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bad sim operator string ["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v4, v0

    :goto_0
    if-nez v4, :cond_5

    .line 130
    invoke-virtual {v2, v7, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 134
    :cond_5
    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 135
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v9, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_6
    const-string v4, "%y"

    .line 139
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 140
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_7
    const-string v3, "%z"

    .line 143
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 144
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 147
    :cond_8
    iget-object v3, p0, Lcom/google/android/gsf/settings/SettingsTosActivity;->mHelper:Lcom/google/android/common/GoogleWebContentHelper;

    invoke-virtual {v3, v2, p1}, Lcom/google/android/common/GoogleWebContentHelper;->setUrls(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/common/GoogleWebContentHelper;

    const p1, 0x7f0f004f

    .line 149
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 148
    invoke-virtual {v3, p1}, Lcom/google/android/common/GoogleWebContentHelper;->setUnsuccessfulMessage(Ljava/lang/String;)Lcom/google/android/common/GoogleWebContentHelper;

    .line 154
    invoke-direct {p0}, Lcom/google/android/gsf/settings/SettingsTosActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 156
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    move v0, v1

    .line 160
    :cond_9
    iget-object p1, p0, Lcom/google/android/gsf/settings/SettingsTosActivity;->mHelper:Lcom/google/android/common/GoogleWebContentHelper;

    invoke-virtual {p1}, Lcom/google/android/common/GoogleWebContentHelper;->loadUrl()Lcom/google/android/common/GoogleWebContentHelper;

    .line 163
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 164
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/google/android/gsf/settings/AutoTermsPreferenceActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 166
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 174
    :cond_a
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.google.android.pano.action.VIEW_WEB_INFO"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 175
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 176
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    .line 182
    :catch_1
    :cond_b
    :goto_1
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-direct {p0}, Lcom/google/android/gsf/settings/SettingsTosActivity;->isBrowserEnabled()Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_2

    .line 185
    :cond_c
    invoke-direct {p0}, Lcom/google/android/gsf/settings/SettingsTosActivity;->makeErrorDialog()Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gsf/settings/SettingsTosActivity;->mDialog:Landroid/app/Dialog;

    goto :goto_3

    .line 183
    :cond_d
    :goto_2
    invoke-direct {p0}, Lcom/google/android/gsf/settings/SettingsTosActivity;->makeTosDialog()Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gsf/settings/SettingsTosActivity;->mDialog:Landroid/app/Dialog;

    .line 188
    :goto_3
    iget-object p1, p0, Lcom/google/android/gsf/settings/SettingsTosActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    if-eqz v0, :cond_e

    .line 199
    iget-object p0, p0, Lcom/google/android/gsf/settings/SettingsTosActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const p1, 0x20008

    invoke-virtual {p0, p1}, Landroid/view/Window;->clearFlags(I)V

    :cond_e
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/google/android/gsf/settings/SettingsTosActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/google/android/gsf/settings/SettingsTosActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 220
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 207
    invoke-direct {p0}, Lcom/google/android/gsf/settings/SettingsTosActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const-string v2, "savedWebView"

    .line 209
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 210
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 212
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
