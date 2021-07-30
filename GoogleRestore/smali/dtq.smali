.class public final Ldtq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldtp;


# static fields
.field public static final a:Lccv;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcct;

    .line 1
    const-string v1, "com.google.android.apps.pixelmigrate"

    invoke-static {v1}, Lcck;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcct;-><init>(Landroid/net/Uri;)V

    .line 2
    const-string v1, "Eu7__backup_idevice_min_hardware_version_requiring_udid_reformat"

    const-wide/16 v2, 0xb

    invoke-virtual {v0, v1, v2, v3}, Lcct;->b(Ljava/lang/String;J)Lccv;

    .line 3
    const-string v1, "Eu7__backup_max_contact_photo_fetch_concurrency"

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lcct;->b(Ljava/lang/String;J)Lccv;

    .line 4
    const-string v1, "Eu7__backup_max_contact_photo_saving_timeout_ms"

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcct;->b(Ljava/lang/String;J)Lccv;

    .line 5
    const-string v1, "Eu7__backup_max_devices_get_devices"

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcct;->b(Ljava/lang/String;J)Lccv;

    move-result-object v1

    sput-object v1, Ldtq;->a:Lccv;

    .line 6
    const-string v1, "Eu7__backup_position_of_udid_dash_for_udid_reformat"

    const-wide/16 v2, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lcct;->b(Ljava/lang/String;J)Lccv;

    .line 7
    const-string v1, "Eu7__backup_position_of_udid_end_for_udid_reformat"

    const-wide/16 v2, 0x18

    invoke-virtual {v0, v1, v2, v3}, Lcct;->b(Ljava/lang/String;J)Lccv;

    .line 8
    const-string v1, "Eu7__backup_should_quit_flow_if_device_management_setup"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcct;->b(Ljava/lang/String;Z)Lccv;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    sget-object v0, Ldtq;->a:Lccv;

    .line 9
    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
