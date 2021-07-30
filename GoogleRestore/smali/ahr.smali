.class final Lahr;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lacw;


# instance fields
.field public final b:Landroid/app/backup/BackupManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "SystemRestoreHelper"

    aput-object v3, v1, v2

    .line 1
    invoke-direct {v0, v1}, Lacw;-><init>([Ljava/lang/String;)V

    sput-object v0, Lahr;->a:Lacw;

    return-void
.end method

.method public constructor <init>(Landroid/app/backup/BackupManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lahr;->b:Landroid/app/backup/BackupManager;

    return-void
.end method
