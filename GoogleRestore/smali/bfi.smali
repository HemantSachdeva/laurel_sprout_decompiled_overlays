.class public final Lbfi;
.super Lbff;
.source "PG"


# instance fields
.field public final b:Lbgo;


# direct methods
.method public constructor <init>(Lbgo;Lbpl;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lbff;-><init>(Lbpl;)V

    iput-object p1, p0, Lbfi;->b:Lbgo;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lbfx;Z)V
    .locals 0

    return-void
.end method

.method public final a(Lbgf;)[Lbdv;
    .locals 1

    iget-object p1, p1, Lbgf;->e:Ljava/util/Map;

    iget-object v0, p0, Lbfi;->b:Lbgo;

    .line 5
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbgr;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 6
    return-object v0

    :cond_0
    throw v0
.end method

.method public final b(Lbgf;)Z
    .locals 1

    iget-object p1, p1, Lbgf;->e:Ljava/util/Map;

    iget-object v0, p0, Lbfi;->b:Lbgo;

    .line 7
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbgr;

    if-nez p1, :cond_0

    .line 8
    const/4 p1, 0x0

    return p1

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    throw p1
.end method

.method public final d(Lbgf;)V
    .locals 1

    iget-object p1, p1, Lbgf;->e:Ljava/util/Map;

    iget-object v0, p0, Lbfi;->b:Lbgo;

    .line 2
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbgr;

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lbfi;->a:Lbpl;

    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbpl;->b(Ljava/lang/Object;)Z

    return-void

    .line 2
    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method
