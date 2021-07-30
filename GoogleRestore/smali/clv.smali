.class public final Lclv;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final c:Ljava/lang/String;

.field private static d:Lclv;


# instance fields
.field public a:Landroid/os/Bundle;

.field public final b:Ljava/util/EnumMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lclv;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lclv;->c:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lclv;->d:Lclv;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    const-string v0, "getOverlayConfig"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lclv;->a:Landroid/os/Bundle;

    new-instance v2, Ljava/util/EnumMap;

    const-class v3, Lclu;

    .line 2
    invoke-direct {v2, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v2, p0, Lclv;->b:Ljava/util/EnumMap;

    iget-object v3, p0, Lclv;->a:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    .line 3
    invoke-virtual {v3}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    return-void

    .line 3
    :cond_1
    :goto_0
    :try_start_0
    new-instance v3, Landroid/net/Uri$Builder;

    .line 4
    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "content"

    .line 5
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "com.google.android.setupwizard.partner"

    .line 6
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 7
    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 8
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 10
    invoke-virtual {p1, v3, v0, v1, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lclv;->a:Landroid/os/Bundle;

    .line 11
    invoke-virtual {v2}, Ljava/util/EnumMap;->clear()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    sget-object p1, Lclv;->c:Ljava/lang/String;

    .line 12
    const-string v0, "Fail to get config from suw provider"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static final a(Landroid/content/Context;Landroid/util/TypedValue;)F
    .locals 0

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 43
    invoke-virtual {p1, p0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lclv;
    .locals 2

    const-class v0, Lclv;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lclv;->d:Lclv;

    if-nez v1, :cond_0

    new-instance v1, Lclv;

    .line 13
    invoke-direct {v1, p0}, Lclv;-><init>(Landroid/content/Context;)V

    sput-object v1, Lclv;->d:Lclv;

    :cond_0
    sget-object p0, Lclv;->d:Lclv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 13
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lclu;)I
    .locals 2

    iget v0, p2, Lclu;->U:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 20
    iget-object v0, p0, Lclv;->b:Ljava/util/EnumMap;

    .line 21
    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p2, Lclu;->T:Ljava/lang/String;

    .line 22
    invoke-virtual {p0, p1, v0}, Lclv;->a(Landroid/content/Context;Ljava/lang/String;)Lclw;

    move-result-object p1

    iget-object v0, p1, Lclw;->c:Landroid/content/res/Resources;

    iget p1, p1, Lclw;->b:I

    .line 23
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lclv;->b:Ljava/util/EnumMap;

    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 26
    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p1

    const/4 p1, 0x0

    .line 25
    :goto_0
    return p1

    :cond_0
    iget-object p1, p0, Lclv;->b:Ljava/util/EnumMap;

    .line 26
    invoke-virtual {p1, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 0
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    const-string p2, "Not a color resource"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)Lclw;
    .locals 3

    iget-object v0, p0, Lclv;->a:Landroid/os/Bundle;

    .line 60
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lclv;->a:Landroid/os/Bundle;

    .line 61
    const-string v2, "fallbackConfig"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {v1, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 63
    :cond_0
    invoke-static {p1, v0}, Lclw;->a(Landroid/content/Context;Landroid/os/Bundle;)Lclw;

    move-result-object p1

    return-object p1
.end method

.method public final b(Landroid/content/Context;Lclu;)Landroid/graphics/drawable/Drawable;
    .locals 5

    iget v0, p2, Lclu;->U:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 44
    iget-object v0, p0, Lclv;->b:Ljava/util/EnumMap;

    .line 45
    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p2, Lclu;->T:Ljava/lang/String;

    .line 46
    invoke-virtual {p0, p1, v1}, Lclv;->a(Landroid/content/Context;Ljava/lang/String;)Lclw;

    move-result-object p1

    iget-object v1, p1, Lclw;->c:Landroid/content/res/Resources;

    iget p1, p1, Lclw;->b:I

    new-instance v2, Landroid/util/TypedValue;

    .line 47
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 48
    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 49
    iget v4, v2, Landroid/util/TypedValue;->type:I

    if-ne v4, v3, :cond_1

    iget v2, v2, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    return-object v0

    .line 50
    :cond_1
    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 51
    invoke-virtual {v1, p1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object p1, p0, Lclv;->b:Ljava/util/EnumMap;

    .line 52
    invoke-virtual {p1, p2, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 53
    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 52
    :goto_1
    return-object v0

    :cond_2
    iget-object p1, p0, Lclv;->b:Ljava/util/EnumMap;

    .line 53
    invoke-virtual {p1, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    return-object p1

    .line 0
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 44
    const-string p2, "Not a drawable resource"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Landroid/content/Context;Lclu;)Ljava/lang/String;
    .locals 2

    iget v0, p2, Lclu;->U:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 64
    iget-object v0, p0, Lclv;->b:Ljava/util/EnumMap;

    .line 65
    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p2, Lclu;->T:Ljava/lang/String;

    .line 66
    invoke-virtual {p0, p1, v0}, Lclv;->a(Landroid/content/Context;Ljava/lang/String;)Lclw;

    move-result-object p1

    iget-object v0, p1, Lclw;->c:Landroid/content/res/Resources;

    iget p1, p1, Lclw;->b:I

    .line 67
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lclv;->b:Ljava/util/EnumMap;

    .line 68
    invoke-virtual {v0, p2, p1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p1

    const/4 p1, 0x0

    .line 68
    :goto_0
    return-object p1

    :cond_0
    iget-object p1, p0, Lclv;->b:Ljava/util/EnumMap;

    .line 69
    invoke-virtual {p1, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 0
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 64
    const-string p2, "Not a string resource"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(Landroid/content/Context;Lclu;)Z
    .locals 2

    iget v0, p2, Lclu;->U:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 14
    iget-object v0, p0, Lclv;->b:Ljava/util/EnumMap;

    .line 15
    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p2, Lclu;->T:Ljava/lang/String;

    .line 16
    invoke-virtual {p0, p1, v0}, Lclv;->a(Landroid/content/Context;Ljava/lang/String;)Lclw;

    move-result-object p1

    iget-object v0, p1, Lclw;->c:Landroid/content/res/Resources;

    iget p1, p1, Lclw;->b:I

    .line 17
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lclv;->b:Ljava/util/EnumMap;

    .line 18
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 19
    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p1

    const/4 p1, 0x0

    .line 18
    :goto_0
    return p1

    :cond_0
    iget-object p1, p0, Lclv;->b:Ljava/util/EnumMap;

    .line 19
    invoke-virtual {p1, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 0
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    const-string p2, "Not a bool resource"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(Landroid/content/Context;Lclu;)F
    .locals 5

    iget v0, p2, Lclu;->U:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 27
    iget-object v0, p0, Lclv;->b:Ljava/util/EnumMap;

    .line 28
    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p2, Lclu;->T:Ljava/lang/String;

    .line 29
    invoke-virtual {p0, p1, v0}, Lclv;->a(Landroid/content/Context;Ljava/lang/String;)Lclw;

    move-result-object v0

    iget-object v1, v0, Lclw;->c:Landroid/content/res/Resources;

    iget v0, v0, Lclw;->b:I

    .line 30
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v3, Landroid/util/TypedValue;

    .line 31
    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    const/4 v4, 0x1

    .line 32
    invoke-virtual {v1, v0, v3, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 33
    iget v1, v3, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x5

    if-ne v1, v4, :cond_0

    .line 36
    iget-object v0, p0, Lclv;->b:Ljava/util/EnumMap;

    .line 37
    invoke-virtual {v0, p2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lclv;->b:Ljava/util/EnumMap;

    .line 38
    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/TypedValue;

    .line 39
    invoke-static {p1, p2}, Lclv;->a(Landroid/content/Context;Landroid/util/TypedValue;)F

    move-result v2

    goto :goto_0

    .line 34
    :cond_0
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    iget v0, v3, Landroid/util/TypedValue;->type:I

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x25

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Resource ID #0x"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " type #0x"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not valid"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 41
    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    const/4 v2, 0x0

    .line 39
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lclv;->b:Ljava/util/EnumMap;

    .line 40
    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/TypedValue;

    .line 41
    invoke-static {p1, p2}, Lclv;->a(Landroid/content/Context;Landroid/util/TypedValue;)F

    move-result p1

    return p1

    .line 0
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 27
    const-string p2, "Not a dimension resource"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(Landroid/content/Context;Lclu;)F
    .locals 2

    iget v0, p2, Lclu;->U:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 54
    iget-object v0, p0, Lclv;->b:Ljava/util/EnumMap;

    .line 55
    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p2, Lclu;->T:Ljava/lang/String;

    .line 56
    invoke-virtual {p0, p1, v0}, Lclv;->a(Landroid/content/Context;Ljava/lang/String;)Lclw;

    move-result-object p1

    iget-object v0, p1, Lclw;->c:Landroid/content/res/Resources;

    iget p1, p1, Lclw;->b:I

    .line 57
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lclv;->b:Ljava/util/EnumMap;

    .line 58
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 59
    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p1

    const/4 p1, 0x0

    .line 58
    :goto_0
    return p1

    :cond_0
    iget-object p1, p0, Lclv;->b:Ljava/util/EnumMap;

    .line 59
    invoke-virtual {p1, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    .line 0
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 54
    const-string p2, "Not a fraction resource"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
