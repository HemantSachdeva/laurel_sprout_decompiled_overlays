.class public final Laqg;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lacw;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "PackageUtils"

    aput-object v3, v1, v2

    .line 1
    invoke-direct {v0, v1}, Lacw;-><init>([Ljava/lang/String;)V

    sput-object v0, Laqg;->a:Lacw;

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 2

    .line 4
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v1, Laqg;->a:Lacw;

    .line 6
    invoke-virtual {v1, p0}, Laqd;->a(Ljava/lang/Throwable;)V

    return v0
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "com.google.android.apps.pixelmigrate.util.IsPixelmigrate"

    .line 3
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    :goto_0
    if-eq v0, v1, :cond_0

    const-string v0, "com.google.android.apps.restore"

    return-object v0

    :cond_0
    const-string v0, "com.google.android.apps.pixelmigrate"

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x16

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".ACTION_RESTORE_CHOICE"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
