.class final Ldge;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldgi;


# instance fields
.field final a:Lbpl;


# direct methods
.method public constructor <init>(Lbpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldge;->a:Lbpl;

    return-void
.end method


# virtual methods
.method public final a(Ldgn;)Z
    .locals 1

    invoke-virtual {p1}, Ldgn;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ldgn;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ldgn;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    const/4 p1, 0x0

    return p1

    .line 0
    :cond_1
    :goto_0
    iget-object v0, p0, Ldge;->a:Lbpl;

    iget-object p1, p1, Ldgn;->a:Ljava/lang/String;

    .line 1
    invoke-virtual {v0, p1}, Lbpl;->b(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public final a(Ldgn;Ljava/lang/Exception;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
