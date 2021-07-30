.class public final Lahc;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lacw;


# instance fields
.field public final b:Lahb;

.field public final c:Lbmy;

.field public final d:Lacy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "CloudRestoreContactsHelper"

    aput-object v3, v1, v2

    .line 1
    invoke-direct {v0, v1}, Lacw;-><init>([Ljava/lang/String;)V

    sput-object v0, Lahc;->a:Lacw;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lahb;Lacy;)V
    .locals 0

    .line 2
    invoke-static {p1}, Lbms;->a(Landroid/content/Context;)Lbmy;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lahc;->b:Lahb;

    iput-object p1, p0, Lahc;->c:Lbmy;

    iput-object p3, p0, Lahc;->d:Lacy;

    return-void
.end method

.method public static a()V
    .locals 3

    sget-object v0, Lahc;->a:Lacw;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    const-string v2, "Triggering Google contacts sync."

    invoke-virtual {v0, v2, v1}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/os/Bundle;

    .line 4
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5
    const-string v1, "expedited"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    const-string v1, "force"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7
    const/4 v1, 0x0

    const-string v2, "com.android.contacts"

    invoke-static {v1, v2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
