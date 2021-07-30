.class public final Lbvk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldst;


# instance fields
.field private final a:Leip;


# direct methods
.method public constructor <init>(Leip;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbvk;->a:Leip;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lbvk;->b()Lbvj;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lbvj;
    .locals 2

    iget-object v0, p0, Lbvk;->a:Leip;

    check-cast v0, Lcbc;

    .line 1
    invoke-virtual {v0}, Lcbc;->b()Lcbb;

    move-result-object v0

    new-instance v1, Lbvj;

    .line 2
    invoke-direct {v1, v0}, Lbvj;-><init>(Lcbb;)V

    return-object v1
.end method
