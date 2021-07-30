.class public final Ldld;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ldlc;


# direct methods
.method public constructor <init>(Ldmz;Ljava/lang/Object;Ldmz;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ldlc;

    .line 1
    invoke-direct {v0, p1, p2, p3, p4}, Ldlc;-><init>(Ldmz;Ljava/lang/Object;Ldmz;Ljava/lang/Object;)V

    iput-object v0, p0, Ldld;->a:Ldlc;

    return-void
.end method

.method static a(Ldlc;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Ldlc;->a:Ldmz;

    .line 2
    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Ldjt;->a(Ldmz;ILjava/lang/Object;)I

    move-result p1

    iget-object p0, p0, Ldlc;->c:Ldmz;

    .line 3
    const/4 v0, 0x2

    invoke-static {p0, v0, p2}, Ldjt;->a(Ldmz;ILjava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method static a(Ldij;Ldlc;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p1, Ldlc;->a:Ldmz;

    .line 4
    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p2}, Ldjt;->a(Ldij;Ldmz;ILjava/lang/Object;)V

    iget-object p1, p1, Ldlc;->c:Ldmz;

    .line 5
    const/4 p2, 0x2

    invoke-static {p0, p1, p2, p3}, Ldjt;->a(Ldij;Ldmz;ILjava/lang/Object;)V

    return-void
.end method
