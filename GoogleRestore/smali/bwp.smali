.class public final Lbwp;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static volatile a:I

.field private static volatile b:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-static {}, Lbum;->a()Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "android_id"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ScrollView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    instance-of v0, p1, Lcom/google/android/setupdesign/view/BottomScrollView;

    if-eqz v0, :cond_0

    .line 10
    check-cast p1, Lcom/google/android/setupdesign/view/BottomScrollView;

    return-void

    .line 11
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x27

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Cannot set non-BottomScrollView. Found="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ScrollViewDelegate"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static a(Landroid/app/Application;)I
    .locals 5

    sget v0, Lbwp;->a:I

    if-nez v0, :cond_3

    const-class v0, Lbwp;

    monitor-enter v0

    :try_start_0
    sget v1, Lbwp;->a:I

    if-nez v1, :cond_2

    .line 6
    invoke-static {p0}, Lbwp;->b(Landroid/app/Application;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0xa

    const/16 v2, 0x3c

    if-lt p0, v1, :cond_0

    if-le p0, v2, :cond_1

    const/16 p0, 0x3c

    goto :goto_0

    .line 8
    :cond_0
    const/16 p0, 0x3c

    .line 6
    :cond_1
    :goto_0
    const-wide v1, 0x408f400000000000L    # 1000.0

    int-to-double v3, p0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    .line 7
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p0, v1

    sput p0, Lbwp;->a:I

    .line 8
    :cond_2
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_1
    sget p0, Lbwp;->a:I

    return p0
.end method

.method public static a(Landroid/widget/TextView;)V
    .locals 7

    new-instance v6, Lcnp;

    .line 12
    sget-object v1, Lclu;->G:Lclu;

    sget-object v2, Lclu;->H:Lclu;

    sget-object v3, Lclu;->F:Lclu;

    sget-object v4, Lclu;->I:Lclu;

    .line 13
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbwq;->a(Landroid/content/Context;)I

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcnp;-><init>(Lclu;Lclu;Lclu;Lclu;I)V

    .line 12
    invoke-static {p0, v6}, Lcqd;->a(Landroid/widget/TextView;Lcnp;)V

    return-void
.end method

.method public static b(Landroid/app/Application;)I
    .locals 2

    sget v0, Lbwp;->b:I

    if-nez v0, :cond_1

    const-class v0, Lbwp;

    monitor-enter v0

    :try_start_0
    sget v1, Lbwp;->b:I

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 4
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRefreshRate()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    sput p0, Lbwp;->b:I

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget p0, Lbwp;->b:I

    return p0
.end method
