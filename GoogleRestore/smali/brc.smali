.class public final Lbrc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldst;


# instance fields
.field private final a:Leip;

.field private final b:Leip;

.field private final c:Leip;

.field private final d:Leip;


# direct methods
.method public constructor <init>(Leip;Leip;Leip;Leip;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbrc;->a:Leip;

    iput-object p2, p0, Lbrc;->b:Leip;

    iput-object p3, p0, Lbrc;->c:Leip;

    iput-object p4, p0, Lbrc;->d:Leip;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lbrc;->a:Leip;

    invoke-interface {v0}, Leip;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsy;

    iget-object v0, p0, Lbrc;->b:Leip;

    invoke-interface {v0}, Leip;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbtr;

    iget-object v1, p0, Lbrc;->c:Leip;

    iget-object v2, p0, Lbrc;->d:Leip;

    new-instance v3, Lbrb;

    invoke-direct {v3, v0, v1, v2}, Lbrb;-><init>(Lbtr;Leip;Leip;)V

    return-object v3
.end method
