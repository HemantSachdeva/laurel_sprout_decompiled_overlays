.class public final Ldtx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldtw;


# static fields
.field public static final a:Lccv;

.field public static final b:Lccv;

.field public static final c:Lccv;

.field public static final d:Lccv;

.field public static final e:Lccv;

.field public static final f:Lccv;

.field public static final g:Lccv;

.field public static final h:Lccv;

.field public static final i:Lccv;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcct;

    .line 1
    const-string v1, "com.google.android.apps.pixelmigrate"

    invoke-static {v1}, Lcck;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcct;-><init>(Landroid/net/Uri;)V

    .line 2
    const-string v1, "GoogleOneRestore__display_mms_restore"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcct;->b(Ljava/lang/String;Z)Lccv;

    move-result-object v1

    sput-object v1, Ldtx;->a:Lccv;

    .line 3
    const-string v1, "GoogleOneRestore__display_notification_download_g1"

    invoke-virtual {v0, v1, v2}, Lcct;->b(Ljava/lang/String;Z)Lccv;

    move-result-object v1

    sput-object v1, Ldtx;->b:Lccv;

    .line 4
    const-string v1, "GoogleOneRestore__display_photos_and_videos_restore"

    invoke-virtual {v0, v1, v2}, Lcct;->b(Ljava/lang/String;Z)Lccv;

    .line 5
    const-string v1, "GoogleOneRestore__enable_mms_restore_minimum_gmscore_version_code"

    const-wide/32 v2, 0xc35000

    invoke-virtual {v0, v1, v2, v3}, Lcct;->b(Ljava/lang/String;J)Lccv;

    move-result-object v1

    sput-object v1, Ldtx;->c:Lccv;

    .line 6
    const-string v1, "GoogleOneRestore__google_one_oauth_scope"

    const-string v2, "https://www.googleapis.com/auth/subscriptions"

    invoke-virtual {v0, v1, v2}, Lcct;->b(Ljava/lang/String;Ljava/lang/String;)Lccv;

    move-result-object v1

    sput-object v1, Ldtx;->d:Lccv;

    .line 7
    const-string v1, "GoogleOneRestore__subscriptions_backup_host"

    const-string v2, "googleonebackup-pa.googleapis.com/"

    invoke-virtual {v0, v1, v2}, Lcct;->b(Ljava/lang/String;Ljava/lang/String;)Lccv;

    move-result-object v1

    sput-object v1, Ldtx;->e:Lccv;

    .line 8
    const-string v1, "GoogleOneRestore__subscriptions_backup_port"

    const-wide/16 v2, 0x1bb

    invoke-virtual {v0, v1, v2, v3}, Lcct;->b(Ljava/lang/String;J)Lccv;

    move-result-object v1

    sput-object v1, Ldtx;->f:Lccv;

    .line 9
    const-string v1, "GoogleOneRestore__subscriptions_settings_host"

    const-string v4, "subscriptionssettings-pa.googleapis.com/"

    invoke-virtual {v0, v1, v4}, Lcct;->b(Ljava/lang/String;Ljava/lang/String;)Lccv;

    move-result-object v1

    sput-object v1, Ldtx;->g:Lccv;

    .line 10
    const-string v1, "GoogleOneRestore__subscriptions_settings_port"

    invoke-virtual {v0, v1, v2, v3}, Lcct;->b(Ljava/lang/String;J)Lccv;

    move-result-object v1

    sput-object v1, Ldtx;->h:Lccv;

    .line 11
    const-string v1, "GoogleOneRestore__timeout_in_secs_for_google_one_rpcs"

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Lcct;->b(Ljava/lang/String;J)Lccv;

    move-result-object v0

    sput-object v0, Ldtx;->i:Lccv;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    sget-object v0, Ldtx;->a:Lccv;

    .line 12
    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1

    sget-object v0, Ldtx;->b:Lccv;

    .line 13
    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final c()J
    .locals 2

    sget-object v0, Ldtx;->c:Lccv;

    .line 14
    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    sget-object v0, Ldtx;->d:Lccv;

    .line 15
    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    sget-object v0, Ldtx;->e:Lccv;

    .line 16
    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final f()J
    .locals 2

    sget-object v0, Ldtx;->f:Lccv;

    .line 17
    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    sget-object v0, Ldtx;->g:Lccv;

    .line 18
    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final h()J
    .locals 2

    sget-object v0, Ldtx;->h:Lccv;

    .line 19
    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final i()J
    .locals 2

    sget-object v0, Ldtx;->i:Lccv;

    .line 20
    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
