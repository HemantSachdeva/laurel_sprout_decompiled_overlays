.class final Ldxi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldyq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ldxh;

    invoke-virtual {p1}, Ldxh;->b()I

    move-result p1

    return p1
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ldxh;

    invoke-virtual {p1}, Ldxh;->a()Z

    move-result p1

    return p1
.end method
