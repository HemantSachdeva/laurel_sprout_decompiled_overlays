.class public final Lbyk;
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

    iput-object p1, p0, Lbyk;->a:Leip;

    iput-object p2, p0, Lbyk;->b:Leip;

    iput-object p3, p0, Lbyk;->c:Leip;

    iput-object p4, p0, Lbyk;->d:Leip;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lbyk;->b()Lbyj;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lbyj;
    .locals 5

    iget-object v0, p0, Lbyk;->a:Leip;

    iget-object v1, p0, Lbyk;->b:Leip;

    check-cast v1, Ldsu;

    iget-object v1, v1, Ldsu;->a:Ljava/lang/Object;

    .line 1
    check-cast v1, Landroid/app/Application;

    iget-object v2, p0, Lbyk;->c:Leip;

    iget-object v3, p0, Lbyk;->d:Leip;

    .line 2
    new-instance v4, Lbyj;

    invoke-direct {v4, v0, v1, v2, v3}, Lbyj;-><init>(Leip;Landroid/app/Application;Leip;Leip;)V

    return-object v4
.end method
