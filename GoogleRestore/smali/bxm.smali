.class public final Lbxm;
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

    iput-object p1, p0, Lbxm;->a:Leip;

    iput-object p2, p0, Lbxm;->b:Leip;

    iput-object p3, p0, Lbxm;->c:Leip;

    iput-object p4, p0, Lbxm;->d:Leip;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lbxm;->a:Leip;

    check-cast v0, Lbvs;

    invoke-virtual {v0}, Lbvs;->b()Lbvr;

    move-result-object v0

    iget-object v1, p0, Lbxm;->b:Leip;

    check-cast v1, Ldsu;

    iget-object v1, v1, Ldsu;->a:Ljava/lang/Object;

    check-cast v1, Landroid/app/Application;

    iget-object v2, p0, Lbxm;->c:Leip;

    invoke-interface {v2}, Leip;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lczw;

    iget-object v3, p0, Lbxm;->d:Leip;

    new-instance v4, Lbxf;

    invoke-direct {v4, v0, v1, v2, v3}, Lbxf;-><init>(Lbvr;Landroid/app/Application;Lczw;Leip;)V

    return-object v4
.end method
