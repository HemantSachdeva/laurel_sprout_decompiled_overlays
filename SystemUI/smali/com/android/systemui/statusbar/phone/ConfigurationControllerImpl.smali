.class public final Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;
.super Ljava/lang/Object;
.source "ConfigurationControllerImpl.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConfigurationControllerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConfigurationControllerImpl.kt\ncom/android/systemui/statusbar/phone/ConfigurationControllerImpl\n+ 2 ConfigurationControllerImpl.kt\ncom/android/systemui/statusbar/phone/ConfigurationControllerImplKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,121:1\n115#2:122\n116#2,4:124\n120#2:129\n115#2:130\n116#2,4:132\n120#2:137\n115#2:138\n116#2,4:140\n120#2:145\n115#2:146\n116#2,4:148\n120#2:153\n115#2:154\n116#2,4:156\n120#2:161\n115#2:162\n116#2,4:164\n120#2:169\n1591#3:123\n1592#3:128\n1591#3:131\n1592#3:136\n1591#3:139\n1592#3:144\n1591#3:147\n1592#3:152\n1591#3:155\n1592#3:160\n1591#3:163\n1592#3:168\n*E\n*S KotlinDebug\n*F\n+ 1 ConfigurationControllerImpl.kt\ncom/android/systemui/statusbar/phone/ConfigurationControllerImpl\n*L\n50#1:122\n50#1,4:124\n50#1:129\n59#1:130\n59#1,4:132\n59#1:137\n68#1:138\n68#1,4:140\n68#1:145\n78#1:146\n78#1,4:148\n78#1:153\n89#1:154\n89#1,4:156\n89#1:161\n95#1:162\n95#1,4:164\n95#1:169\n50#1:123\n50#1:128\n59#1:131\n59#1:136\n68#1:139\n68#1:144\n78#1:147\n78#1:152\n89#1:155\n89#1:160\n95#1:163\n95#1:168\n*E\n"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private density:I

.field private fontScale:F

.field private final inCarMode:Z

.field private final lastConfig:Landroid/content/res/Configuration;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;",
            ">;"
        }
    .end annotation
.end field

.field private localeList:Landroid/os/LocaleList;

.field private uiMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    .line 28
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->lastConfig:Landroid/content/res/Configuration;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "context.resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 38
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->context:Landroid/content/Context;

    .line 39
    iget p1, v0, Landroid/content/res/Configuration;->fontScale:F

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->fontScale:F

    .line 40
    iget p1, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->density:I

    .line 41
    iget p1, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0xf

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->inCarMode:Z

    .line 43
    iget p1, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->uiMode:I

    const-string p1, "currentConfig"

    .line 44
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->localeList:Landroid/os/LocaleList;

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onDensityOrFontScaleChanged()V

    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;)V

    return-void
.end method

.method public notifyThemeChanged()V
    .locals 3

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1591
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 116
    check-cast v1, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 50
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onThemeChanged()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1591
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 116
    check-cast v2, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 59
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    invoke-interface {v2, p1}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onConfigChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 62
    :cond_1
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 63
    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 64
    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0x30

    .line 65
    iget v4, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->uiMode:I

    const/4 v5, 0x1

    if-eq v3, v4, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 67
    :goto_1
    iget v6, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->density:I

    if-ne v2, v6, :cond_3

    iget v6, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->fontScale:F

    cmpg-float v6, v1, v6

    if-nez v6, :cond_3

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->inCarMode:Z

    if-eqz v6, :cond_6

    if-eqz v4, :cond_6

    .line 1591
    :cond_3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 116
    check-cast v7, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 68
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 69
    invoke-interface {v7}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onDensityOrFontScaleChanged()V

    goto :goto_2

    .line 71
    :cond_5
    iput v2, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->density:I

    .line 72
    iput v1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->fontScale:F

    .line 75
    :cond_6
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    .line 76
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->localeList:Landroid/os/LocaleList;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v5

    if-eqz v2, :cond_8

    .line 77
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->localeList:Landroid/os/LocaleList;

    .line 1591
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 116
    check-cast v2, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 78
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 79
    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onLocaleListChanged()V

    goto :goto_3

    :cond_8
    if-eqz v4, :cond_a

    .line 86
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getThemeResId()I

    move-result v2

    invoke-virtual {v1, v2, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 88
    iput v3, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->uiMode:I

    .line 1591
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 116
    check-cast v2, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 89
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 90
    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onUiModeChanged()V

    goto :goto_4

    .line 94
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->lastConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result p1

    const/high16 v1, -0x80000000

    and-int/2addr p1, v1

    if-eqz p1, :cond_c

    .line 1591
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 116
    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 95
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 96
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onOverlayChanged()V

    goto :goto_5

    :cond_c
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;)V

    return-void
.end method
