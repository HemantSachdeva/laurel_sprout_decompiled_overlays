.class final Laro;
.super Landroid/app/backup/SelectBackupTransportCallback;
.source "PG"


# instance fields
.field final synthetic a:Larp;


# direct methods
.method public constructor <init>(Larp;)V
    .locals 0

    iput-object p1, p0, Laro;->a:Larp;

    .line 1
    invoke-direct {p0}, Landroid/app/backup/SelectBackupTransportCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(I)V
    .locals 4

    .line 2
    sget-object v0, Larp;->a:Laqd;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Laro;->a:Larp;

    .line 3
    iget-object v2, v2, Larp;->b:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "Failed to select %s. Reason: %d"

    invoke-virtual {v0, p1, v1}, Laqd;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Laro;->a:Larp;

    .line 4
    invoke-virtual {p1}, Larp;->c()V

    return-void
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .locals 3

    .line 5
    sget-object v0, Larp;->a:Laqd;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Successfully selected transport: %s"

    invoke-virtual {v0, p1, v1}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Laro;->a:Larp;

    .line 6
    invoke-virtual {p1}, Larp;->c()V

    return-void
.end method
