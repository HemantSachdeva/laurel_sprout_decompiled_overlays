.class public final Ldte;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldtd;


# static fields
.field public static final a:Lccv;

.field public static final b:Lccv;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcct;

    .line 1
    const-string v1, "com.google.android.gms.backup"

    invoke-static {v1}, Lcck;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcct;-><init>(Landroid/net/Uri;)V

    .line 2
    const-string v1, "GmscoreModulesBackupFeature__backup_enable_new_contacts_item_in_device_backup"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcct;->b(Ljava/lang/String;Z)Lccv;

    .line 3
    const-string v1, "GmscoreModulesBackupFeature__backup_gms_backup_modules_whitelist"

    const-string v3, "com.google.android.gms.romanesco,com.google.android.gms.backup_base"

    invoke-virtual {v0, v1, v3}, Lcct;->b(Ljava/lang/String;Ljava/lang/String;)Lccv;

    .line 4
    const-string v1, "GmscoreModulesBackupFeature__backup_gms_restore_return_callback_after_restore_complete"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcct;->b(Ljava/lang/String;Z)Lccv;

    .line 5
    const-string v1, "GmscoreModulesBackupFeature__backup_max_devices_get_devices"

    const-wide/16 v4, 0xa

    invoke-virtual {v0, v1, v4, v5}, Lcct;->b(Ljava/lang/String;J)Lccv;

    .line 6
    const-string v1, "GmscoreModulesBackupFeature__backup_min_pixelmigrate_version_for_launching_key_recovery_activity"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v4, v5}, Lcct;->b(Ljava/lang/String;J)Lccv;

    .line 7
    const-string v1, "GmscoreModulesBackupFeature__backup_min_sdk_to_enable_gms_backup_agent"

    const-wide/16 v4, 0x270f

    invoke-virtual {v0, v1, v4, v5}, Lcct;->b(Ljava/lang/String;J)Lccv;

    .line 8
    const-string v1, "GmscoreModulesBackupFeature__backup_restore_contacts_from_gms_in_cloud_suw"

    invoke-virtual {v0, v1, v2}, Lcct;->b(Ljava/lang/String;Z)Lccv;

    move-result-object v1

    sput-object v1, Ldte;->a:Lccv;

    .line 9
    const-string v1, "GmscoreModulesBackupFeature__backup_timeout_for_gms_package_restore_ms"

    const-wide/32 v4, 0x493e0

    invoke-virtual {v0, v1, v4, v5}, Lcct;->b(Ljava/lang/String;J)Lccv;

    .line 10
    const-string v1, "GmscoreModulesBackupFeature__backup_timeout_to_get_gms_restore_sets_ms"

    invoke-virtual {v0, v1, v4, v5}, Lcct;->b(Ljava/lang/String;J)Lccv;

    .line 11
    const-string v1, "GmscoreModulesBackupFeature__backup_use_device_to_create_key_recovery_activity"

    invoke-virtual {v0, v1, v3}, Lcct;->b(Ljava/lang/String;Z)Lccv;

    move-result-object v0

    sput-object v0, Ldte;->b:Lccv;

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

    sget-object v0, Ldte;->a:Lccv;

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

    sget-object v0, Ldte;->b:Lccv;

    .line 13
    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
