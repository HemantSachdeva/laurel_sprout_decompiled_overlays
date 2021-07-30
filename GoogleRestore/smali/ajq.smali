.class public final Lajq;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lacw;

.field public final b:Landroid/app/Activity;

.field public final c:Landroid/accounts/Account;

.field public final d:Larf;

.field public final e:Lapi;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/accounts/Account;Larf;Lapi;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "KeyRecoveryHelper"

    aput-object v3, v1, v2

    .line 1
    invoke-direct {v0, v1}, Lacw;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lajq;->a:Lacw;

    iput-object p1, p0, Lajq;->b:Landroid/app/Activity;

    iput-object p2, p0, Lajq;->c:Landroid/accounts/Account;

    iput-object p3, p0, Lajq;->d:Larf;

    iput-object p4, p0, Lajq;->e:Lapi;

    return-void
.end method
