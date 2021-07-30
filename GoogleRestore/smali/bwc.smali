.class public final Lbwc;
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

    iput-object p1, p0, Lbwc;->a:Leip;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lbwc;->b()Lbvv;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lbvv;
    .locals 2

    iget-object v0, p0, Lbwc;->a:Leip;

    check-cast v0, Lbri;

    .line 1
    invoke-virtual {v0}, Lbri;->b()Lbti;

    move-result-object v0

    iget-object v0, v0, Lbti;->a:Lbvv;

    .line 2
    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Ldqp;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
