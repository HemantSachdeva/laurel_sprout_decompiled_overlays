.class public final Lbyp;
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

    iput-object p1, p0, Lbyp;->a:Leip;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lbyp;->b()Lbyo;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lbyo;
    .locals 2

    iget-object v0, p0, Lbyp;->a:Leip;

    .line 1
    new-instance v1, Lbyo;

    invoke-direct {v1, v0}, Lbyo;-><init>(Leip;)V

    return-object v1
.end method
