.class public final Ldud;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lduc;


# static fields
.field public static final a:Lccv;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcct;

    .line 1
    const-string v1, "com.google.android.apps.pixelmigrate"

    invoke-static {v1}, Lcck;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcct;-><init>(Landroid/net/Uri;)V

    .line 2
    const-string v1, "WifiD2dFeature__backup_target_post_setup_calls_max_retries"

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcct;->b(Ljava/lang/String;J)Lccv;

    .line 3
    const-string v1, "WifiD2dFeature__backup_target_post_setup_calls_timeout_millis"

    const-wide/16 v4, 0x7530

    invoke-virtual {v0, v1, v4, v5}, Lcct;->b(Ljava/lang/String;J)Lccv;

    .line 4
    const-string v1, "WifiD2dFeature__backup_wifi_d2d_bandwidth_upgrade_timeout_millis"

    const-wide/32 v4, 0x15f90

    invoke-virtual {v0, v1, v4, v5}, Lcct;->b(Ljava/lang/String;J)Lccv;

    .line 5
    const-string v1, "WifiD2dFeature__backup_wifi_d2d_target_connection_timeout_millis"

    const-wide/32 v4, 0xea60

    invoke-virtual {v0, v1, v4, v5}, Lcct;->b(Ljava/lang/String;J)Lccv;

    .line 6
    const-string v1, "WifiD2dFeature__backup_wifi_d2d_target_max_connection_retries"

    invoke-virtual {v0, v1, v2, v3}, Lcct;->b(Ljava/lang/String;J)Lccv;

    .line 7
    const-string v1, "WifiD2dFeature__enable_wifi_restore_choice_screen"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcct;->b(Ljava/lang/String;Z)Lccv;

    move-result-object v0

    sput-object v0, Ldud;->a:Lccv;

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

    sget-object v0, Ldud;->a:Lccv;

    .line 8
    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
