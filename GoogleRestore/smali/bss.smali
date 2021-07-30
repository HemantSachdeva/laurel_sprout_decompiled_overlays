.class public final Lbss;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldst;


# instance fields
.field private final a:Leip;

.field private final b:Leip;

.field private final c:Leip;

.field private final d:Leip;

.field private final e:Leip;

.field private final f:Leip;

.field private final g:Leip;

.field private final h:Leip;

.field private final i:Leip;

.field private final j:Leip;


# direct methods
.method public constructor <init>(Leip;Leip;Leip;Leip;Leip;Leip;Leip;Leip;Leip;Leip;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbss;->a:Leip;

    iput-object p2, p0, Lbss;->b:Leip;

    iput-object p3, p0, Lbss;->c:Leip;

    iput-object p4, p0, Lbss;->d:Leip;

    iput-object p5, p0, Lbss;->e:Leip;

    iput-object p6, p0, Lbss;->f:Leip;

    iput-object p7, p0, Lbss;->g:Leip;

    iput-object p8, p0, Lbss;->h:Leip;

    iput-object p9, p0, Lbss;->i:Leip;

    iput-object p10, p0, Lbss;->j:Leip;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lbss;->b()Lbsr;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lbsr;
    .locals 13

    iget-object v0, p0, Lbss;->a:Leip;

    check-cast v0, Ldsu;

    iget-object v0, v0, Ldsu;->a:Ljava/lang/Object;

    .line 1
    move-object v2, v0

    check-cast v2, Landroid/app/Application;

    iget-object v3, p0, Lbss;->b:Leip;

    iget-object v4, p0, Lbss;->c:Leip;

    iget-object v5, p0, Lbss;->d:Leip;

    iget-object v6, p0, Lbss;->e:Leip;

    iget-object v7, p0, Lbss;->f:Leip;

    iget-object v0, p0, Lbss;->g:Leip;

    invoke-interface {v0}, Leip;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lbtp;

    iget-object v9, p0, Lbss;->h:Leip;

    iget-object v0, p0, Lbss;->i:Leip;

    invoke-interface {v0}, Leip;->a()Ljava/lang/Object;

    move-result-object v0

    iget-object v11, p0, Lbss;->j:Leip;

    .line 2
    new-instance v12, Lbsr;

    move-object v10, v0

    check-cast v10, Lbse;

    move-object v1, v12

    invoke-direct/range {v1 .. v11}, Lbsr;-><init>(Landroid/app/Application;Leip;Leip;Leip;Leip;Leip;Lbtp;Leip;Lbse;Leip;)V

    return-object v12
.end method
