.class public final Ldth;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldtg;


# static fields
.field public static final a:Lccv;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcct;

    .line 1
    const-string v1, "com.google.android.gms.backup"

    invoke-static {v1}, Lcck;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcct;-><init>(Landroid/net/Uri;)V

    .line 2
    const-string v1, "V25BugfixesFeature__backup_allow_non_user_zero_actions"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcct;->b(Ljava/lang/String;Z)Lccv;

    .line 3
    const-string v1, "V25BugfixesFeature__backup_enable_dark_mode_in_set_backup_account_flow"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcct;->b(Ljava/lang/String;Z)Lccv;

    .line 4
    const-string v1, "V25BugfixesFeature__backup_enable_dark_mode_on_d2d_source"

    invoke-virtual {v0, v1, v3}, Lcct;->b(Ljava/lang/String;Z)Lccv;

    .line 5
    const-string v1, "V25BugfixesFeature__backup_enable_settings_icon_tinting"

    invoke-virtual {v0, v1, v3}, Lcct;->b(Ljava/lang/String;Z)Lccv;

    .line 6
    const-string v1, "V25BugfixesFeature__backup_enable_user_id_logging_for_backup_events"

    invoke-virtual {v0, v1, v2}, Lcct;->b(Ljava/lang/String;Z)Lccv;

    move-result-object v1

    sput-object v1, Ldth;->a:Lccv;

    .line 7
    const-string v1, "V25BugfixesFeature__backup_hide_system_packages_for_work_profile"

    invoke-virtual {v0, v1, v3}, Lcct;->b(Ljava/lang/String;Z)Lccv;

    .line 8
    const-string v1, "V25BugfixesFeature__backup_profile_photo_auth_scope"

    const-string v2, "https://www.googleapis.com/auth/peopleapi.readonly"

    invoke-virtual {v0, v1, v2}, Lcct;->b(Ljava/lang/String;Ljava/lang/String;)Lccv;

    .line 9
    const-string v1, "V25BugfixesFeature__backup_use_android_utils_for_get_android_id"

    invoke-virtual {v0, v1, v3}, Lcct;->b(Ljava/lang/String;Z)Lccv;

    .line 10
    const-string v1, "V25BugfixesFeature__backup_use_gm2_styles_in_source_unplugged_fragment"

    invoke-virtual {v0, v1, v3}, Lcct;->b(Ljava/lang/String;Z)Lccv;

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

    sget-object v0, Ldth;->a:Lccv;

    .line 11
    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
