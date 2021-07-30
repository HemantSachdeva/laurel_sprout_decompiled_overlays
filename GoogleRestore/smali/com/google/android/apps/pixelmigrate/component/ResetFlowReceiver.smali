.class public Lcom/google/android/apps/pixelmigrate/component/ResetFlowReceiver;
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

    const-string v3, "ResetFlowReceiver"

    aput-object v3, v1, v2

    .line 1
    invoke-direct {v0, v1}, Lacw;-><init>([Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/pixelmigrate/component/ResetFlowReceiver;->a:Lacw;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    sget-object p2, Lcom/google/android/apps/pixelmigrate/component/ResetFlowReceiver;->a:Lacw;

    const-string v0, "Resetting d2d flow"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    .line 3
    invoke-virtual {p2, v0, v2}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    sget-object p2, Laqn;->a:Ljava/lang/Object;

    .line 5
    monitor-enter p2

    .line 6
    :try_start_0
    invoke-static {p1}, Laqn;->a(Landroid/content/Context;)J

    .line 4
    sget-wide v2, Laqn;->b:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 10
    :cond_0
    nop

    .line 7
    :goto_0
    invoke-static {v1}, Lcrj;->b(Z)V

    .line 4
    sget-wide v0, Laqn;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Laqn;->b:J

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "usb_migration_expected_version"

    .line 4
    sget-wide v1, Laqn;->b:J

    .line 9
    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 10
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
