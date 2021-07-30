.class public final Lcct;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 2

    .line 1
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v0, v1}, Lcct;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcct;->a:Landroid/net/Uri;

    iput-object p2, p0, Lcct;->b:Ljava/lang/String;

    iput-object p3, p0, Lcct;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcct;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcct;
    .locals 4

    iget-boolean v0, p0, Lcct;->d:Z

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Lcct;

    iget-object v1, p0, Lcct;->a:Landroid/net/Uri;

    iget-object v2, p0, Lcct;->c:Ljava/lang/String;

    const/4 v3, 0x0

    .line 13
    invoke-direct {v0, v1, p1, v2, v3}, Lcct;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0

    .line 0
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 12
    const-string v0, "Cannot set GServices prefix and skip GServices"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/lang/String;I)Lccv;
    .locals 1

    .line 2
    new-instance v0, Lccn;

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lccn;-><init>(Lcct;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;J)Lccv;
    .locals 1

    .line 4
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lccv;->a(Lcct;Ljava/lang/String;JZ)Lccv;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;Lccs;)Lccv;
    .locals 1

    .line 9
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lccv;->a(Lcct;Ljava/lang/String;Ljava/lang/Object;Lccs;Z)Lccv;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lccv;
    .locals 1

    .line 5
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lccv;->a(Lcct;Ljava/lang/String;Ljava/lang/String;Z)Lccv;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Z)Lccv;
    .locals 1

    .line 6
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lccv;->a(Lcct;Ljava/lang/String;ZZ)Lccv;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;D)V
    .locals 1

    .line 7
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lccv;->a(Lcct;Ljava/lang/String;DZ)V

    return-void
.end method

.method public final b(Ljava/lang/String;J)Lccv;
    .locals 1

    .line 8
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lccv;->a(Lcct;Ljava/lang/String;JZ)Lccv;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lccv;
    .locals 1

    .line 10
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lccv;->a(Lcct;Ljava/lang/String;Ljava/lang/String;Z)Lccv;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;Z)Lccv;
    .locals 1

    .line 11
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lccv;->a(Lcct;Ljava/lang/String;ZZ)Lccv;

    move-result-object p1

    return-object p1
.end method
