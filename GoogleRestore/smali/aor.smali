.class final synthetic Laor;
.super Ljava/lang/Object;

# interfaces
.implements Laow;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laor;->a:Landroid/content/Context;

    iput-object p2, p0, Laor;->b:Ljava/lang/String;

    iput-wide p3, p0, Laor;->c:J

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 8

    iget-object v0, p0, Laor;->a:Landroid/content/Context;

    iget-object v1, p0, Laor;->b:Ljava/lang/String;

    iget-wide v2, p0, Laor;->c:J

    new-instance v4, Laox;

    invoke-direct {v4, v0}, Laox;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Laox;->a()Laao;

    move-result-object v0

    sget-object v4, Laox;->a:Lacw;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    const-string v6, "Calling getBackupDocuments from %s for account: %s with androidId: %d"

    invoke-virtual {v4, v6, v5}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2, v3}, Laap;->a(Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
