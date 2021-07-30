.class public final Lanc;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lccv;

.field public static final b:Lccv;

.field public static final c:Lccv;

.field private static final d:Lcct;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcct;

    .line 1
    invoke-static {}, Laqg;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcck;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcct;-><init>(Landroid/net/Uri;)V

    sput-object v0, Lanc;->d:Lcct;

    .line 2
    const-string v1, "backup_should_set_secondary_key_version_in_restore_requests"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    move-result-object v1

    sput-object v1, Lanc;->a:Lccv;

    .line 3
    const-string v1, "backup_skip_cloud_restore_if_crashed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    move-result-object v1

    sput-object v1, Lanc;->b:Lccv;

    .line 4
    const-string v1, "backup_skip_cloud_restore_crashes_threshold"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcct;->a(Ljava/lang/String;I)Lccv;

    move-result-object v0

    sput-object v0, Lanc;->c:Lccv;

    return-void
.end method
