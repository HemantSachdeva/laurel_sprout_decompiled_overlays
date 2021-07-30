.class public Lib;
.super Lbc;
.source "PG"

# interfaces
.implements Lic;
.implements Ldk;


# instance fields
.field private j:Lid;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lbc;-><init>()V

    return-void
.end method

.method private final i()V
    .locals 1

    .line 93
    invoke-virtual {p0}, Lib;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Ley;->a(Landroid/view/View;Ll;)V

    .line 94
    invoke-virtual {p0}, Lib;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Ley;->a(Landroid/view/View;Lak;)V

    .line 95
    invoke-virtual {p0}, Lib;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Lyj;->a(Landroid/view/View;Lxa;)V

    return-void
.end method


# virtual methods
.method public final Z()V
    .locals 1

    .line 168
    invoke-virtual {p0}, Lib;->g()Lid;

    move-result-object v0

    invoke-virtual {v0}, Lid;->c()V

    return-void
.end method

.method public final a()Landroid/content/Intent;
    .locals 1

    .line 92
    invoke-static {p0}, Lec;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public final addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lib;->i()V

    .line 3
    invoke-virtual {p0}, Lib;->g()Lid;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lid;->b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected final attachBaseContext(Landroid/content/Context;)V
    .locals 6

    .line 4
    invoke-virtual {p0}, Lib;->g()Lid;

    move-result-object v0

    check-cast v0, Liv;

    const/4 v1, 0x1

    iput-boolean v1, v0, Liv;->B:Z

    invoke-virtual {v0}, Liv;->m()I

    move-result v1

    .line 5
    invoke-virtual {v0, p1, v1}, Liv;->a(Landroid/content/Context;I)I

    move-result v0

    sget-boolean v1, Liv;->e:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 6
    instance-of v1, p1, Landroid/view/ContextThemeWrapper;

    if-eqz v1, :cond_0

    .line 7
    invoke-static {p1, v0, v2}, Liv;->a(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v1

    .line 8
    :try_start_0
    move-object v3, p1

    check-cast v3, Landroid/view/ContextThemeWrapper;

    .line 9
    invoke-virtual {v3, v1}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 69
    :catch_0
    move-exception v1

    .line 10
    :cond_0
    instance-of v1, p1, Ljp;

    if-eqz v1, :cond_1

    .line 11
    invoke-static {p1, v0, v2}, Liv;->a(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v1

    .line 12
    :try_start_1
    move-object v3, p1

    check-cast v3, Ljp;

    invoke-virtual {v3, v1}, Ljp;->a(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 69
    :catch_1
    move-exception v1

    .line 12
    :cond_1
    sget-boolean v1, Liv;->d:Z

    if-eqz v1, :cond_1b

    .line 13
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 13
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 17
    invoke-virtual {v1, v3}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v4

    if-nez v4, :cond_18

    new-instance v2, Landroid/content/res/Configuration;

    .line 18
    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    const/4 v4, 0x0

    iput v4, v2, Landroid/content/res/Configuration;->fontScale:F

    if-eqz v3, :cond_18

    .line 19
    invoke-virtual {v1, v3}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_0

    .line 20
    :cond_2
    iget v4, v1, Landroid/content/res/Configuration;->fontScale:F

    iget v5, v3, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_3

    .line 21
    iget v4, v3, Landroid/content/res/Configuration;->fontScale:F

    iput v4, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 22
    :cond_3
    iget v4, v1, Landroid/content/res/Configuration;->mcc:I

    iget v5, v3, Landroid/content/res/Configuration;->mcc:I

    if-eq v4, v5, :cond_4

    .line 23
    iget v4, v3, Landroid/content/res/Configuration;->mcc:I

    iput v4, v2, Landroid/content/res/Configuration;->mcc:I

    .line 24
    :cond_4
    iget v4, v1, Landroid/content/res/Configuration;->mnc:I

    iget v5, v3, Landroid/content/res/Configuration;->mnc:I

    if-eq v4, v5, :cond_5

    .line 25
    iget v4, v3, Landroid/content/res/Configuration;->mnc:I

    iput v4, v2, Landroid/content/res/Configuration;->mnc:I

    .line 26
    :cond_5
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 27
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v4

    .line 28
    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v5

    .line 29
    invoke-virtual {v4, v5}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 30
    invoke-virtual {v2, v5}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 31
    iget-object v4, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v4, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 32
    :cond_6
    iget v4, v1, Landroid/content/res/Configuration;->touchscreen:I

    iget v5, v3, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v4, v5, :cond_7

    .line 33
    iget v4, v3, Landroid/content/res/Configuration;->touchscreen:I

    iput v4, v2, Landroid/content/res/Configuration;->touchscreen:I

    .line 34
    :cond_7
    iget v4, v1, Landroid/content/res/Configuration;->keyboard:I

    iget v5, v3, Landroid/content/res/Configuration;->keyboard:I

    if-eq v4, v5, :cond_8

    .line 35
    iget v4, v3, Landroid/content/res/Configuration;->keyboard:I

    iput v4, v2, Landroid/content/res/Configuration;->keyboard:I

    .line 36
    :cond_8
    iget v4, v1, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v5, v3, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v4, v5, :cond_9

    .line 37
    iget v4, v3, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v4, v2, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 38
    :cond_9
    iget v4, v1, Landroid/content/res/Configuration;->navigation:I

    iget v5, v3, Landroid/content/res/Configuration;->navigation:I

    if-eq v4, v5, :cond_a

    .line 39
    iget v4, v3, Landroid/content/res/Configuration;->navigation:I

    iput v4, v2, Landroid/content/res/Configuration;->navigation:I

    .line 40
    :cond_a
    iget v4, v1, Landroid/content/res/Configuration;->navigationHidden:I

    iget v5, v3, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v4, v5, :cond_b

    .line 41
    iget v4, v3, Landroid/content/res/Configuration;->navigationHidden:I

    iput v4, v2, Landroid/content/res/Configuration;->navigationHidden:I

    .line 42
    :cond_b
    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    iget v5, v3, Landroid/content/res/Configuration;->orientation:I

    if-eq v4, v5, :cond_c

    .line 43
    iget v4, v3, Landroid/content/res/Configuration;->orientation:I

    iput v4, v2, Landroid/content/res/Configuration;->orientation:I

    .line 44
    :cond_c
    iget v4, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    iget v5, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v5, v5, 0xf

    if-eq v4, v5, :cond_d

    .line 45
    iget v4, v2, Landroid/content/res/Configuration;->screenLayout:I

    iget v5, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v4, v5

    iput v4, v2, Landroid/content/res/Configuration;->screenLayout:I

    .line 46
    :cond_d
    iget v4, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v4, v4, 0xc0

    iget v5, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v5, v5, 0xc0

    if-eq v4, v5, :cond_e

    .line 47
    iget v4, v2, Landroid/content/res/Configuration;->screenLayout:I

    iget v5, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v5, v5, 0xc0

    or-int/2addr v4, v5

    iput v4, v2, Landroid/content/res/Configuration;->screenLayout:I

    .line 48
    :cond_e
    iget v4, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0x30

    iget v5, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v5, v5, 0x30

    if-eq v4, v5, :cond_f

    .line 49
    iget v4, v2, Landroid/content/res/Configuration;->screenLayout:I

    iget v5, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v5, v5, 0x30

    or-int/2addr v4, v5

    iput v4, v2, Landroid/content/res/Configuration;->screenLayout:I

    .line 50
    :cond_f
    iget v4, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v4, v4, 0x300

    iget v5, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v5, v5, 0x300

    if-eq v4, v5, :cond_10

    .line 51
    iget v4, v2, Landroid/content/res/Configuration;->screenLayout:I

    iget v5, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v5, v5, 0x300

    or-int/2addr v4, v5

    iput v4, v2, Landroid/content/res/Configuration;->screenLayout:I

    .line 52
    :cond_10
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 53
    iget v4, v1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v4, v4, 0x3

    iget v5, v3, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v5, v5, 0x3

    if-eq v4, v5, :cond_11

    .line 54
    iget v4, v2, Landroid/content/res/Configuration;->colorMode:I

    iget v5, v3, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v5, v5, 0x3

    or-int/2addr v4, v5

    iput v4, v2, Landroid/content/res/Configuration;->colorMode:I

    .line 55
    :cond_11
    iget v4, v1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v4, v4, 0xc

    iget v5, v3, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v5, v5, 0xc

    if-eq v4, v5, :cond_12

    .line 56
    iget v4, v2, Landroid/content/res/Configuration;->colorMode:I

    iget v5, v3, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v5, v5, 0xc

    or-int/2addr v4, v5

    iput v4, v2, Landroid/content/res/Configuration;->colorMode:I

    .line 57
    :cond_12
    iget v4, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0xf

    iget v5, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v5, v5, 0xf

    if-eq v4, v5, :cond_13

    .line 58
    iget v4, v2, Landroid/content/res/Configuration;->uiMode:I

    iget v5, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v4, v5

    iput v4, v2, Landroid/content/res/Configuration;->uiMode:I

    .line 59
    :cond_13
    iget v4, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0x30

    iget v5, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v5, v5, 0x30

    if-eq v4, v5, :cond_14

    .line 60
    iget v4, v2, Landroid/content/res/Configuration;->uiMode:I

    iget v5, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v5, v5, 0x30

    or-int/2addr v4, v5

    iput v4, v2, Landroid/content/res/Configuration;->uiMode:I

    .line 61
    :cond_14
    iget v4, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v5, v3, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v4, v5, :cond_15

    .line 62
    iget v4, v3, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v4, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 63
    :cond_15
    iget v4, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v5, v3, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v4, v5, :cond_16

    .line 64
    iget v4, v3, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v4, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 65
    :cond_16
    iget v4, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v5, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v4, v5, :cond_17

    .line 66
    iget v4, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v4, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 67
    :cond_17
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 68
    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    iget v4, v3, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v1, v4, :cond_18

    .line 69
    iget v1, v3, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, v2, Landroid/content/res/Configuration;->densityDpi:I

    goto :goto_0

    :cond_18
    nop

    .line 70
    :goto_0
    invoke-static {p1, v0, v2}, Liv;->a(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v0

    new-instance v1, Ljp;

    const v2, 0x7f12025b

    .line 71
    invoke-direct {v1, p1, v2}, Ljp;-><init>(Landroid/content/Context;I)V

    .line 72
    invoke-virtual {v1, v0}, Ljp;->a(Landroid/content/res/Configuration;)V

    .line 73
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz p1, :cond_1a

    .line 74
    invoke-virtual {v1}, Ljp;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_19

    .line 76
    invoke-static {p1}, Ldx;->a(Landroid/content/res/Resources$Theme;)V

    goto :goto_1

    .line 77
    :cond_19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 78
    invoke-static {p1}, Ldw;->a(Landroid/content/res/Resources$Theme;)V

    goto :goto_1

    :cond_1a
    goto :goto_1

    .line 15
    :catch_2
    move-exception p1

    .line 4
    :goto_1
    move-object p1, v1

    goto :goto_2

    .line 69
    :catch_3
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    .line 15
    const-string v1, "Application failed to obtain resources from itself"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 4
    :cond_1b
    :goto_2
    invoke-super {p0, p1}, Lbc;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public final closeOptionsMenu()V
    .locals 2

    .line 79
    invoke-virtual {p0}, Lib;->f()Lhs;

    .line 80
    invoke-virtual {p0}, Lib;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-super {p0}, Lbc;->closeOptionsMenu()V

    :cond_0
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 82
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 83
    invoke-virtual {p0}, Lib;->f()Lhs;

    .line 84
    invoke-super {p0, p1}, Lbc;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final f()Lhs;
    .locals 1

    .line 91
    invoke-virtual {p0}, Lib;->g()Lid;

    move-result-object v0

    invoke-virtual {v0}, Lid;->a()Lhs;

    move-result-object v0

    return-object v0
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 1

    .line 85
    invoke-virtual {p0}, Lib;->g()Lid;

    move-result-object v0

    invoke-virtual {v0, p1}, Lid;->a(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final g()Lid;
    .locals 1

    iget-object v0, p0, Lib;->j:Lid;

    if-nez v0, :cond_0

    .line 86
    invoke-static {p0, p0}, Lid;->a(Landroid/app/Activity;Lic;)Lid;

    move-result-object v0

    iput-object v0, p0, Lib;->j:Lid;

    :cond_0
    iget-object v0, p0, Lib;->j:Lid;

    return-object v0
.end method

.method public final getMenuInflater()Landroid/view/MenuInflater;
    .locals 3

    .line 87
    invoke-virtual {p0}, Lib;->g()Lid;

    move-result-object v0

    check-cast v0, Liv;

    iget-object v1, v0, Liv;->k:Landroid/view/MenuInflater;

    if-nez v1, :cond_1

    .line 88
    invoke-virtual {v0}, Liv;->h()V

    .line 89
    new-instance v1, Ljv;

    .line 87
    iget-object v2, v0, Liv;->j:Lhs;

    if-eqz v2, :cond_0

    .line 90
    invoke-virtual {v2}, Lhs;->b()Landroid/content/Context;

    move-result-object v2

    goto :goto_0

    .line 87
    :cond_0
    iget-object v2, v0, Liv;->g:Landroid/content/Context;

    .line 90
    :goto_0
    invoke-direct {v1, v2}, Ljv;-><init>(Landroid/content/Context;)V

    .line 87
    iput-object v1, v0, Liv;->k:Landroid/view/MenuInflater;

    :cond_1
    iget-object v0, v0, Liv;->k:Landroid/view/MenuInflater;

    return-object v0
.end method

.method public final h()Ljo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final invalidateOptionsMenu()V
    .locals 1

    .line 96
    invoke-virtual {p0}, Lib;->g()Lid;

    move-result-object v0

    invoke-virtual {v0}, Lid;->c()V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 97
    invoke-super {p0, p1}, Lbc;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 98
    invoke-virtual {p0}, Lib;->g()Lid;

    move-result-object p1

    check-cast p1, Liv;

    iget-boolean v0, p1, Liv;->v:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Liv;->s:Z

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p1}, Liv;->a()Lhs;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljg;

    iget-object v1, v0, Ljg;->a:Landroid/content/Context;

    .line 100
    invoke-static {v1}, Ljm;->a(Landroid/content/Context;)Ljm;

    move-result-object v1

    invoke-virtual {v1}, Ljm;->b()Z

    move-result v1

    .line 99
    nop

    .line 100
    invoke-virtual {v0, v1}, Ljg;->d(Z)V

    .line 101
    :cond_0
    invoke-static {}, Lmq;->b()Lmq;

    move-result-object v0

    .line 98
    iget-object v1, p1, Liv;->g:Landroid/content/Context;

    .line 101
    invoke-virtual {v0, v1}, Lmq;->a(Landroid/content/Context;)V

    .line 98
    const/4 v0, 0x0

    .line 102
    invoke-virtual {p1, v0}, Liv;->a(Z)V

    return-void
.end method

.method public final onContentChanged()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 103
    invoke-virtual {p0}, Lib;->g()Lid;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lid;->e()V

    .line 105
    invoke-virtual {v0}, Lid;->f()V

    .line 106
    invoke-super {p0, p1}, Lbc;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected final onDestroy()V
    .locals 1

    .line 107
    invoke-super {p0}, Lbc;->onDestroy()V

    .line 108
    invoke-virtual {p0}, Lib;->g()Lid;

    move-result-object v0

    invoke-virtual {v0}, Lid;->d()V

    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 109
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 110
    invoke-super {p0, p1, p2}, Lbc;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 5

    .line 111
    invoke-super {p0, p1, p2}, Lbc;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 112
    :cond_0
    invoke-virtual {p0}, Lib;->f()Lhs;

    move-result-object p1

    .line 113
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const v1, 0x102002c

    const/4 v2, 0x0

    if-ne p2, v1, :cond_8

    if-eqz p1, :cond_8

    .line 114
    invoke-virtual {p1}, Lhs;->a()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_8

    .line 115
    invoke-static {p0}, Lec;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 116
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 117
    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_6

    new-instance p1, Ldl;

    .line 120
    invoke-direct {p1, p0}, Ldl;-><init>(Landroid/content/Context;)V

    .line 121
    invoke-interface {p0}, Ldk;->a()Landroid/content/Intent;

    move-result-object p2

    if-nez p2, :cond_1

    .line 122
    invoke-static {p0}, Lec;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object p2

    :cond_1
    if-eqz p2, :cond_4

    .line 123
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p1, Ldl;->b:Landroid/content/Context;

    .line 124
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    :cond_2
    iget-object v3, p1, Ldl;->a:Ljava/util/ArrayList;

    .line 125
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :try_start_0
    iget-object v4, p1, Ldl;->b:Landroid/content/Context;

    .line 126
    invoke-static {v4, v1}, Lec;->a(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    iget-object v4, p1, Ldl;->a:Ljava/util/ArrayList;

    .line 127
    invoke-virtual {v4, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v4, p1, Ldl;->b:Landroid/content/Context;

    .line 128
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v4, v1}, Lec;->a(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    iget-object v1, p1, Ldl;->a:Ljava/util/ArrayList;

    .line 129
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 119
    :catch_0
    move-exception p1

    .line 139
    const-string p2, "TaskStackBuilder"

    const-string v0, "Bad ComponentName while traversing activity parent metadata"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 140
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 129
    :cond_4
    :goto_1
    iget-object p2, p1, Ldl;->a:Ljava/util/ArrayList;

    .line 130
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    .line 131
    iget-object p2, p1, Ldl;->a:Ljava/util/ArrayList;

    .line 132
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/Intent;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    .line 133
    aget-object v3, p2, v2

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v3, 0x1000c000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    aput-object v1, p2, v2

    iget-object p1, p1, Ldl;->b:Landroid/content/Context;

    .line 134
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    .line 135
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 136
    :try_start_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 137
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 138
    :catch_1
    move-exception p1

    invoke-virtual {p0}, Lib;->finish()V

    goto :goto_2

    .line 130
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 131
    const-string p2, "No intents added to TaskStackBuilder; cannot startActivities"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 118
    :cond_6
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 119
    invoke-virtual {p0, p1}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    .line 137
    :goto_2
    return v0

    .line 119
    :cond_8
    return v2
.end method

.method protected final onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 141
    invoke-super {p0, p1}, Lbc;->onPostCreate(Landroid/os/Bundle;)V

    .line 142
    invoke-virtual {p0}, Lib;->g()Lid;

    move-result-object p1

    check-cast p1, Liv;

    .line 143
    invoke-virtual {p1}, Liv;->j()V

    return-void
.end method

.method protected final onPostResume()V
    .locals 2

    .line 144
    invoke-super {p0}, Lbc;->onPostResume()V

    .line 145
    invoke-virtual {p0}, Lib;->g()Lid;

    move-result-object v0

    check-cast v0, Liv;

    .line 146
    invoke-virtual {v0}, Liv;->a()Lhs;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 147
    invoke-virtual {v0, v1}, Lhs;->b(Z)V

    :cond_0
    return-void
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 148
    invoke-super {p0, p1}, Lbc;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 149
    invoke-virtual {p0}, Lib;->g()Lid;

    return-void
.end method

.method protected final onStart()V
    .locals 2

    .line 150
    invoke-super {p0}, Lbc;->onStart()V

    .line 151
    invoke-virtual {p0}, Lib;->g()Lid;

    move-result-object v0

    check-cast v0, Liv;

    const/4 v1, 0x1

    iput-boolean v1, v0, Liv;->C:Z

    .line 152
    invoke-virtual {v0}, Liv;->n()V

    return-void
.end method

.method protected final onStop()V
    .locals 1

    .line 153
    invoke-super {p0}, Lbc;->onStop()V

    .line 154
    invoke-virtual {p0}, Lib;->g()Lid;

    move-result-object v0

    invoke-virtual {v0}, Lid;->b()V

    return-void
.end method

.method protected final onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 155
    invoke-super {p0, p1, p2}, Lbc;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 156
    invoke-virtual {p0}, Lib;->g()Lid;

    move-result-object p2

    invoke-virtual {p2, p1}, Lid;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final openOptionsMenu()V
    .locals 2

    .line 157
    invoke-virtual {p0}, Lib;->f()Lhs;

    .line 158
    invoke-virtual {p0}, Lib;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-super {p0}, Lbc;->openOptionsMenu()V

    :cond_0
    return-void
.end method

.method public final setContentView(I)V
    .locals 1

    .line 160
    invoke-direct {p0}, Lib;->i()V

    .line 161
    invoke-virtual {p0}, Lib;->g()Lid;

    move-result-object v0

    invoke-virtual {v0, p1}, Lid;->b(I)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 1

    .line 162
    invoke-direct {p0}, Lib;->i()V

    .line 163
    invoke-virtual {p0}, Lib;->g()Lid;

    move-result-object v0

    invoke-virtual {v0, p1}, Lid;->a(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 164
    invoke-direct {p0}, Lib;->i()V

    .line 165
    invoke-virtual {p0}, Lib;->g()Lid;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lid;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setTheme(I)V
    .locals 1

    .line 166
    invoke-super {p0, p1}, Lbc;->setTheme(I)V

    .line 167
    invoke-virtual {p0}, Lib;->g()Lid;

    move-result-object v0

    check-cast v0, Liv;

    iput p1, v0, Liv;->E:I

    return-void
.end method
