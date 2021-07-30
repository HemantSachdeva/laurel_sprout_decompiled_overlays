.class public final Laqf;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcsn;

.field public static final b:Lcsn;

.field public static final c:Lcsn;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    sget v0, Lcsn;->a:I

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "com.android.calllogbackup"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v4, "com.android.providers.blockednumber"

    aput-object v4, v1, v2

    .line 2
    invoke-static {v0, v1}, Lcsn;->a(I[Ljava/lang/Object;)Lcsn;

    move-result-object v0

    sput-object v0, Laqf;->a:Lcsn;

    new-array v10, v3, [Ljava/lang/String;

    .line 3
    const-string v4, "com.android.providers.settings"

    const-string v5, "android"

    const-string v6, "com.android.wallpaperbackup"

    const-string v7, "com.google.android.apps.nexuslauncher"

    const-string v8, "com.google.android.googlequicksearchbox"

    const-string v9, "com.google.android.launcher"

    invoke-static/range {v4 .. v10}, Lcsn;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcsn;

    move-result-object v0

    sput-object v0, Laqf;->b:Lcsn;

    .line 4
    const-string v0, "com.android.providers.telephony"

    invoke-static {v0}, Lcsn;->a(Ljava/lang/Object;)Lcsn;

    move-result-object v0

    sput-object v0, Laqf;->c:Lcsn;

    return-void
.end method
