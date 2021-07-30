.class public final Lbvz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldst;


# instance fields
.field private final a:Leip;

.field private final b:Leip;


# direct methods
.method public constructor <init>(Leip;Leip;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbvz;->a:Leip;

    iput-object p2, p0, Lbvz;->b:Leip;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lbvz;->b()Lbwp;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lbwp;
    .locals 2

    .line 1
    invoke-static {}, Lbqd;->b()Lbqc;

    iget-object v0, p0, Lbvz;->b:Leip;

    check-cast v0, Ldsu;

    iget-object v0, v0, Ldsu;->a:Ljava/lang/Object;

    .line 2
    check-cast v0, Landroid/app/Application;

    new-instance v1, Lbwp;

    .line 3
    invoke-direct {v1, v0}, Lbwp;-><init>(Landroid/app/Application;)V

    return-object v1
.end method
