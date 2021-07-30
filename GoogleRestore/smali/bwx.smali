.class public final Lbwx;
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

    iput-object p1, p0, Lbwx;->a:Leip;

    iput-object p2, p0, Lbwx;->b:Leip;

    iput-object p3, p0, Lbwx;->c:Leip;

    iput-object p4, p0, Lbwx;->d:Leip;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lbwx;->a:Leip;

    check-cast v0, Lbvs;

    invoke-virtual {v0}, Lbvs;->b()Lbvr;

    move-result-object v2

    iget-object v0, p0, Lbwx;->b:Leip;

    check-cast v0, Ldsu;

    iget-object v0, v0, Ldsu;->a:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/app/Application;

    new-instance v4, Lbwz;

    invoke-direct {v4}, Lbwz;-><init>()V

    iget-object v5, p0, Lbwx;->c:Leip;

    iget-object v0, p0, Lbwx;->d:Leip;

    invoke-interface {v0}, Leip;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lczw;

    new-instance v0, Lbww;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lbww;-><init>(Lbvr;Landroid/app/Application;Lbxb;Leip;Lczw;)V

    return-object v0
.end method
