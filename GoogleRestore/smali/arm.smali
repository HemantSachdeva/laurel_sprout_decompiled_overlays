.class public final Larm;
.super Lcyr;
.source "PG"


# instance fields
.field public final a:I

.field private final b:Larn;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Lapj;

    invoke-direct {v0, p1}, Lapj;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcyr;-><init>()V

    .line 2
    const/4 p1, 0x1

    const-string v1, "Cannot switch to UNKNOWN_TRANSPORT!"

    invoke-static {p1, v1}, Lcrj;->a(ZLjava/lang/Object;)V

    iput p1, p0, Larm;->a:I

    new-instance p1, Landroid/content/ComponentName;

    .line 3
    const-string v1, "com.google.android.gms"

    const-string v2, "com.google.android.gms.backup.BackupTransportService"

    invoke-direct {p1, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v1, Larp;

    invoke-direct {v1, v0, p0, p1}, Larp;-><init>(Lapj;Larm;Landroid/content/ComponentName;)V

    iput-object v1, p0, Larm;->b:Larn;

    .line 5
    invoke-interface {v1}, Larn;->a()V

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1

    iget-object v0, p0, Larm;->b:Larn;

    .line 6
    invoke-interface {v0}, Larn;->b()V

    .line 7
    invoke-super {p0, p1}, Lcyr;->cancel(Z)Z

    move-result p1

    return p1
.end method
