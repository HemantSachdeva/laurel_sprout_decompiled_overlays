.class public final Ldcq;
.super Ldco;
.source "PG"


# instance fields
.field private final d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldcg;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ldco;-><init>(Landroid/content/Context;Ldcg;)V

    iput-boolean p3, p0, Ldcq;->d:Z

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Ldcq;->d:Z

    new-instance v1, Ljava/lang/StringBuilder;

    .line 3
    const/16 v2, 0x1e

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to setAppState to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Ldcw;)V
    .locals 1

    iget-boolean v0, p0, Ldcq;->d:Z

    .line 2
    invoke-virtual {p1, v0}, Ldcw;->a(Z)V

    return-void
.end method
