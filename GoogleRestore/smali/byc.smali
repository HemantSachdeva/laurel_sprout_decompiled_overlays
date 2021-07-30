.class public final Lbyc;
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


# direct methods
.method public constructor <init>(Leip;Leip;Leip;Leip;Leip;Leip;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbyc;->a:Leip;

    iput-object p2, p0, Lbyc;->b:Leip;

    iput-object p3, p0, Lbyc;->c:Leip;

    iput-object p4, p0, Lbyc;->d:Leip;

    iput-object p5, p0, Lbyc;->e:Leip;

    iput-object p6, p0, Lbyc;->f:Leip;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lbyc;->a:Leip;

    check-cast v0, Lbvs;

    invoke-virtual {v0}, Lbvs;->b()Lbvr;

    move-result-object v2

    invoke-static {}, Lbqd;->b()Lbqc;

    iget-object v0, p0, Lbyc;->b:Leip;

    check-cast v0, Ldsu;

    iget-object v0, v0, Ldsu;->a:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/app/Application;

    iget-object v0, p0, Lbyc;->c:Leip;

    invoke-interface {v0}, Leip;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lczw;

    iget-object v5, p0, Lbyc;->d:Leip;

    iget-object v0, p0, Lbyc;->e:Leip;

    check-cast v0, Lbyk;

    invoke-virtual {v0}, Lbyk;->b()Lbyj;

    move-result-object v6

    iget-object v0, p0, Lbyc;->f:Leip;

    invoke-interface {v0}, Leip;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbtr;

    new-instance v0, Lbyb;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lbyb;-><init>(Lbvr;Landroid/app/Application;Lczw;Leip;Lbyj;)V

    return-object v0
.end method
