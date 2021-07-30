.class public Lcom/google/android/apps/pixelmigrate/component/LauncherRestoreFinishReceiver;
.super Landroid/content/BroadcastReceiver;
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

    const-string v3, "LauncherRestoreFinishReceiver"

    aput-object v3, v1, v2

    .line 1
    invoke-direct {v0, v1}, Lacw;-><init>([Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/pixelmigrate/component/LauncherRestoreFinishReceiver;->a:Lacw;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/google/android/apps/pixelmigrate/component/StubLauncherActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    const/4 p0, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p1, Lcom/google/android/apps/pixelmigrate/component/LauncherRestoreFinishReceiver;->a:Lacw;

    new-array p2, v1, [Ljava/lang/Object;

    .line 6
    const-string v0, "Action is null"

    invoke-virtual {p1, v0, p2}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 7
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BROADCAST_LAUCHER_RESTORE_FINISH"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lcom/google/android/apps/pixelmigrate/component/LauncherRestoreFinishReceiver;->a:Lacw;

    new-array v0, v1, [Ljava/lang/Object;

    .line 8
    const-string v1, "Launcher restore has finished - disabling stub"

    invoke-virtual {p2, v1, v0}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    invoke-static {p1}, Lcom/google/android/apps/pixelmigrate/component/LauncherRestoreFinishReceiver;->a(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
