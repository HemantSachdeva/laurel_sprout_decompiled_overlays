.class public final Lajy;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lacw;


# instance fields
.field public final b:Lajx;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "DeviceOriginProviderHelper"

    aput-object v3, v1, v2

    .line 1
    invoke-direct {v0, v1}, Lacw;-><init>([Ljava/lang/String;)V

    sput-object v0, Lajy;->a:Lacw;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lajx;Lbej;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lajy;->b:Lajx;

    .line 3
    invoke-static {p3}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lajy;
    .locals 3

    new-instance v0, Lajy;

    new-instance v1, Lajx;

    .line 4
    invoke-direct {v1, p0}, Lajx;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-static {p0}, Lbej;->a(Landroid/content/Context;)Lbej;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lajy;-><init>(Landroid/content/Context;Lajx;Lbej;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lajy;->b:Lajx;

    iget-object v0, v0, Lajx;->a:Landroid/content/Context;

    .line 6
    new-instance v1, Landroid/content/ContentValues;

    .line 7
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "value"

    .line 8
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "type"

    const-string v2, "java.lang.String"

    .line 9
    invoke-virtual {v1, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcnz;->a()Landroid/net/Uri;

    move-result-object p1

    const-string v2, "key"

    const-string v3, "setup_mode"

    .line 11
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 12
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    .line 14
    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "DeviceOrigin"

    const-string v1, "Failed to write value"

    .line 13
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    .line 12
    :catch_1
    move-exception p1

    sget-object v0, Lajy;->a:Lacw;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 14
    const-string v2, "Couldn\'t write setup mode to DeviceOrigin."

    invoke-virtual {v0, v2, p1, v1}, Laqd;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method
